import RiemannMachineVerification.Registers.Transfers

namespace RiemannMachineVerification.Implementation

abbrev RegisterIndex := RegisterModel.RegisterIndex
abbrev ProgramCounter := Fin 1024
abbrev RegisterInstruction := RegisterModel.RegisterInstruction 1024
abbrev RegisterConfiguration := RegisterModel.RegisterConfiguration 1024

export RegisterModel (transferValues registerStep initialRegisterConfiguration RegisterHalts registerStep_halted RExec registerConfiguration_ext addTargets transferRound addTargets_apply transferValues_apply transferRound_source transferValues_zero transferValues_round TransferSite)
namespace RExec
export RegisterModel.RExec (refl trans prepend single)
end RExec
namespace TransferSite
export RegisterModel.TransferSite (correct)
end TransferSite

end RiemannMachineVerification.Implementation
