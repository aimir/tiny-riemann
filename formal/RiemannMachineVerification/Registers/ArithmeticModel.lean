import RiemannMachineVerification.Registers.Transfers

namespace RiemannMachineVerification

abbrev RegisterIndex := RegisterModel.RegisterIndex
abbrev ProgramCounter := Fin 2048
abbrev RegisterInstruction := RegisterModel.RegisterInstruction 2048
abbrev RegisterConfiguration := RegisterModel.RegisterConfiguration 2048

export RegisterModel (transferValues registerStep initialRegisterConfiguration RegisterHalts registerStep_halted RExec registerConfiguration_ext addTargets transferRound addTargets_apply transferValues_apply transferRound_source transferValues_zero transferValues_round TransferSite)
namespace RExec
export RegisterModel.RExec (refl trans prepend single)
end RExec
namespace TransferSite
export RegisterModel.TransferSite (correct)
end TransferSite

end RiemannMachineVerification
