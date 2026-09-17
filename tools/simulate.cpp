// Concrete, lockstep simulation of two two-symbol, one-tape machines.
#include <array>
#include <cstdint>
#include <fstream>
#include <iostream>
#include <map>
#include <sstream>
#include <stdexcept>
#include <string>
#include <vector>

struct Edge { int write, move, next; };
struct TM { std::vector<std::array<Edge,2>> edges; std::map<std::string,int> ids; };
TM load(const char* path) {
    std::ifstream input(path);
    if (!input) throw std::runtime_error("Cannot open transition table");
    std::vector<std::array<std::string,8>> lines;
    std::string line;
    TM tm; tm.ids["HALT"]=-1;
    while(std::getline(input,line)) {
        std::istringstream row(line); std::array<std::string,8> words;
        for(auto& w: words) if(!(row>>w)) throw std::runtime_error("Malformed table");
        if(words[1]!="=" || tm.ids.count(words[0])) throw std::runtime_error("Duplicate or malformed state");
        tm.ids[words[0]]=int(lines.size());lines.push_back(words);
    }
    for(auto& row: lines) {
        std::array<Edge,2> edges;
        for(int b=0;b<2;b++) {
            int i=2+3*b;
            if((row[i]!="0" && row[i]!="1") || (row[i+1]!="L" && row[i+1]!="R")) throw std::runtime_error("Invalid action");
            edges[b]={std::stoi(row[i]),row[i+1]=="R"?1:-1,tm.ids.at(row[i+2])};
        }
        tm.edges.push_back(edges);
    }
    return tm;
}
int main(int argc,char** argv) {
    try {
        if(argc!=6 && argc!=8) throw std::runtime_error("Usage: simulate original.tm reduced.tm pc_bits steps checkpoints [macro_lengths.tsv state_map.tsv]");
        TM a=load(argv[1]),b=load(argv[2]);
        int qa=a.ids.at("!ENTRY"),qb=b.ids.at("!ENTRY"),pcbits=std::stoi(argv[3]);
        uint64_t limit=std::stoull(argv[4]);int stop=std::stoi(argv[5]),checkpoints=0;
        std::vector<std::array<int,2>> lengths(a.edges.size(),{1,1});
        std::vector<int> mapping(a.edges.size(),-2);
        if(argc==8) {
            std::ifstream macros(argv[6]),maps(argv[7]);
            std::string q,r;int bit,length;
            while(macros>>q>>bit>>length)lengths.at(a.ids.at(q)).at(bit)=length;
            while(maps>>q>>r)if(q!="HALT")mapping.at(a.ids.at(q))=b.ids.at(r);
        }
        std::vector<uint8_t> tape(4096,0);long head=2048;
        uint64_t original_steps=0,reduced_steps=0;
        bool stop_requested=false;
        auto checkpoint=[&]() {
            if(qa!=a.ids.at("!ENTRY"))return;
            int pc=0;for(int j=1;j<=pcbits;j++)pc=2*pc+tape[head+j];
            if(pc!=0)return;
            std::cout<<"checkpoint "<<checkpoints<<" original_step "<<original_steps<<" registers";
            long j=head+pcbits+3;
            while(j<long(tape.size()) && tape[j]) {
                uint64_t value=0;
                while(j<long(tape.size()) && tape[j]) {value++;j++;}
                std::cout<<" "<<(value-1);j++;
            }
            std::cout<<std::endl;
            if(++checkpoints>=stop)stop_requested=true;
        };
        while(original_steps<limit) {
            if(head<32) {tape.insert(tape.begin(),tape.size(),0);head+=long(tape.size()/2);}
            if(head+64>=long(tape.size()))tape.resize(tape.size()*2,0);
            if(argc==8 && mapping.at(qa)!=qb)throw std::runtime_error("State correspondence mismatch");
            long initial_head=head;
            std::array<uint8_t,15> before;
            for(int j=-7;j<=7;j++)before[j+7]=tape[head+j];
            int read=tape[head];Edge y=b.edges[qb][read];
            int count=argc==8?lengths[qa][read]:1;
            for(int micro=0;micro<count;micro++) {
                if(qa<0)throw std::runtime_error("Halt inside a replacement path");
                checkpoint();
                Edge x=a.edges[qa][tape[head]];
                tape[head]=uint8_t(x.write);head+=x.move;qa=x.next;original_steps++;
            }
            if(head!=initial_head+y.move || tape[initial_head]!=y.write || ((qa<0)!=(y.next<0)))throw std::runtime_error("Concrete simulation mismatch at original step "+std::to_string(original_steps));
            for(int j=-7;j<=7;j++)if(j && tape[initial_head+j]!=before[j+7])throw std::runtime_error("Unexpected change outside the starting cell");
            qb=y.next;reduced_steps++;
            if(qa<0) {std::cout<<"Both machines halted after "<<original_steps<<" original steps\n";return 0;}
            if(stop_requested) {
                std::cout<<"PASS: "<<original_steps<<" original steps match "<<reduced_steps<<" reduced steps; checkpoints="<<checkpoints<<std::endl;
                return 0;
            }
        }
        std::cout<<"PASS through step limit: "<<original_steps<<" original steps, "<<reduced_steps<<" reduced steps; checkpoints="<<checkpoints<<std::endl;
    } catch(const std::exception& error) {std::cerr<<error.what()<<std::endl;return 1;}
}
