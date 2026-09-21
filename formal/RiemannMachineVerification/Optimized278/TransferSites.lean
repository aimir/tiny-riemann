import RiemannMachineVerification.Optimized278.TransferSite
import RiemannMachineVerification.Optimized278.RegisterProgram

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false

namespace RiemannMachineVerification.Optimized278

theorem transfer_instruction_24 : primitiveProgram ⟨24, by decide⟩ =
    .decrement ⟨0, by decide⟩ ⟨25, by decide⟩ ⟨26, by decide⟩ := rfl

theorem transfer_instruction_25 : primitiveProgram ⟨25, by decide⟩ =
    .jump ⟨29, by decide⟩ := rfl

theorem transfer_instruction_26 : primitiveProgram ⟨26, by decide⟩ =
    .increment ⟨4, by decide⟩ ⟨27, by decide⟩ := rfl

theorem transfer_instruction_27 : primitiveProgram ⟨27, by decide⟩ =
    .increment ⟨6, by decide⟩ ⟨28, by decide⟩ := rfl

theorem transfer_instruction_28 : primitiveProgram ⟨28, by decide⟩ =
    .jump ⟨24, by decide⟩ := rfl

theorem transfer_instruction_29 : primitiveProgram ⟨29, by decide⟩ =
    .jump ⟨30, by decide⟩ := rfl

theorem transfer_instruction_30 : primitiveProgram ⟨30, by decide⟩ =
    .jump ⟨32, by decide⟩ := rfl

theorem transfer_instruction_32 : primitiveProgram ⟨32, by decide⟩ =
    .decrement ⟨6, by decide⟩ ⟨33, by decide⟩ ⟨34, by decide⟩ := rfl

theorem transfer_instruction_33 : primitiveProgram ⟨33, by decide⟩ =
    .jump ⟨36, by decide⟩ := rfl

theorem transfer_instruction_34 : primitiveProgram ⟨34, by decide⟩ =
    .increment ⟨0, by decide⟩ ⟨35, by decide⟩ := rfl

theorem transfer_instruction_35 : primitiveProgram ⟨35, by decide⟩ =
    .jump ⟨32, by decide⟩ := rfl

theorem transfer_instruction_40 : primitiveProgram ⟨40, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨41, by decide⟩ ⟨42, by decide⟩ := rfl

theorem transfer_instruction_41 : primitiveProgram ⟨41, by decide⟩ =
    .jump ⟨43, by decide⟩ := rfl

theorem transfer_instruction_42 : primitiveProgram ⟨42, by decide⟩ =
    .jump ⟨40, by decide⟩ := rfl

theorem transfer_instruction_43 : primitiveProgram ⟨43, by decide⟩ =
    .jump ⟨44, by decide⟩ := rfl

theorem transfer_instruction_48 : primitiveProgram ⟨48, by decide⟩ =
    .decrement ⟨1, by decide⟩ ⟨49, by decide⟩ ⟨50, by decide⟩ := rfl

theorem transfer_instruction_49 : primitiveProgram ⟨49, by decide⟩ =
    .jump ⟨53, by decide⟩ := rfl

theorem transfer_instruction_50 : primitiveProgram ⟨50, by decide⟩ =
    .increment ⟨2, by decide⟩ ⟨51, by decide⟩ := rfl

theorem transfer_instruction_51 : primitiveProgram ⟨51, by decide⟩ =
    .increment ⟨6, by decide⟩ ⟨52, by decide⟩ := rfl

theorem transfer_instruction_52 : primitiveProgram ⟨52, by decide⟩ =
    .jump ⟨48, by decide⟩ := rfl

theorem transfer_instruction_53 : primitiveProgram ⟨53, by decide⟩ =
    .jump ⟨54, by decide⟩ := rfl

theorem transfer_instruction_54 : primitiveProgram ⟨54, by decide⟩ =
    .jump ⟨56, by decide⟩ := rfl

theorem transfer_instruction_56 : primitiveProgram ⟨56, by decide⟩ =
    .decrement ⟨6, by decide⟩ ⟨57, by decide⟩ ⟨58, by decide⟩ := rfl

theorem transfer_instruction_57 : primitiveProgram ⟨57, by decide⟩ =
    .jump ⟨60, by decide⟩ := rfl

theorem transfer_instruction_58 : primitiveProgram ⟨58, by decide⟩ =
    .increment ⟨1, by decide⟩ ⟨59, by decide⟩ := rfl

theorem transfer_instruction_59 : primitiveProgram ⟨59, by decide⟩ =
    .jump ⟨56, by decide⟩ := rfl

theorem transfer_instruction_72 : primitiveProgram ⟨72, by decide⟩ =
    .decrement ⟨4, by decide⟩ ⟨73, by decide⟩ ⟨74, by decide⟩ := rfl

theorem transfer_instruction_73 : primitiveProgram ⟨73, by decide⟩ =
    .jump ⟨77, by decide⟩ := rfl

theorem transfer_instruction_74 : primitiveProgram ⟨74, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨75, by decide⟩ := rfl

theorem transfer_instruction_75 : primitiveProgram ⟨75, by decide⟩ =
    .increment ⟨6, by decide⟩ ⟨76, by decide⟩ := rfl

theorem transfer_instruction_76 : primitiveProgram ⟨76, by decide⟩ =
    .jump ⟨72, by decide⟩ := rfl

theorem transfer_instruction_77 : primitiveProgram ⟨77, by decide⟩ =
    .jump ⟨78, by decide⟩ := rfl

theorem transfer_instruction_78 : primitiveProgram ⟨78, by decide⟩ =
    .jump ⟨80, by decide⟩ := rfl

theorem transfer_instruction_80 : primitiveProgram ⟨80, by decide⟩ =
    .decrement ⟨6, by decide⟩ ⟨81, by decide⟩ ⟨82, by decide⟩ := rfl

theorem transfer_instruction_81 : primitiveProgram ⟨81, by decide⟩ =
    .jump ⟨84, by decide⟩ := rfl

theorem transfer_instruction_82 : primitiveProgram ⟨82, by decide⟩ =
    .increment ⟨4, by decide⟩ ⟨83, by decide⟩ := rfl

theorem transfer_instruction_83 : primitiveProgram ⟨83, by decide⟩ =
    .jump ⟨80, by decide⟩ := rfl

theorem transfer_instruction_92 : primitiveProgram ⟨92, by decide⟩ =
    .decrement ⟨4, by decide⟩ ⟨93, by decide⟩ ⟨94, by decide⟩ := rfl

theorem transfer_instruction_93 : primitiveProgram ⟨93, by decide⟩ =
    .jump ⟨95, by decide⟩ := rfl

theorem transfer_instruction_94 : primitiveProgram ⟨94, by decide⟩ =
    .jump ⟨92, by decide⟩ := rfl

theorem transfer_instruction_95 : primitiveProgram ⟨95, by decide⟩ =
    .jump ⟨96, by decide⟩ := rfl

theorem transfer_instruction_96 : primitiveProgram ⟨96, by decide⟩ =
    .decrement ⟨0, by decide⟩ ⟨97, by decide⟩ ⟨98, by decide⟩ := rfl

theorem transfer_instruction_97 : primitiveProgram ⟨97, by decide⟩ =
    .jump ⟨101, by decide⟩ := rfl

theorem transfer_instruction_98 : primitiveProgram ⟨98, by decide⟩ =
    .increment ⟨4, by decide⟩ ⟨99, by decide⟩ := rfl

theorem transfer_instruction_99 : primitiveProgram ⟨99, by decide⟩ =
    .increment ⟨6, by decide⟩ ⟨100, by decide⟩ := rfl

theorem transfer_instruction_100 : primitiveProgram ⟨100, by decide⟩ =
    .jump ⟨96, by decide⟩ := rfl

theorem transfer_instruction_101 : primitiveProgram ⟨101, by decide⟩ =
    .jump ⟨102, by decide⟩ := rfl

theorem transfer_instruction_102 : primitiveProgram ⟨102, by decide⟩ =
    .jump ⟨104, by decide⟩ := rfl

theorem transfer_instruction_104 : primitiveProgram ⟨104, by decide⟩ =
    .decrement ⟨6, by decide⟩ ⟨105, by decide⟩ ⟨106, by decide⟩ := rfl

theorem transfer_instruction_105 : primitiveProgram ⟨105, by decide⟩ =
    .jump ⟨108, by decide⟩ := rfl

theorem transfer_instruction_106 : primitiveProgram ⟨106, by decide⟩ =
    .increment ⟨0, by decide⟩ ⟨107, by decide⟩ := rfl

theorem transfer_instruction_107 : primitiveProgram ⟨107, by decide⟩ =
    .jump ⟨104, by decide⟩ := rfl

theorem transfer_instruction_116 : primitiveProgram ⟨116, by decide⟩ =
    .decrement ⟨1, by decide⟩ ⟨117, by decide⟩ ⟨118, by decide⟩ := rfl

theorem transfer_instruction_117 : primitiveProgram ⟨117, by decide⟩ =
    .jump ⟨120, by decide⟩ := rfl

theorem transfer_instruction_118 : primitiveProgram ⟨118, by decide⟩ =
    .increment ⟨4, by decide⟩ ⟨119, by decide⟩ := rfl

theorem transfer_instruction_119 : primitiveProgram ⟨119, by decide⟩ =
    .jump ⟨116, by decide⟩ := rfl

theorem transfer_instruction_128 : primitiveProgram ⟨128, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨129, by decide⟩ ⟨130, by decide⟩ := rfl

theorem transfer_instruction_129 : primitiveProgram ⟨129, by decide⟩ =
    .jump ⟨131, by decide⟩ := rfl

theorem transfer_instruction_130 : primitiveProgram ⟨130, by decide⟩ =
    .jump ⟨128, by decide⟩ := rfl

theorem transfer_instruction_131 : primitiveProgram ⟨131, by decide⟩ =
    .jump ⟨132, by decide⟩ := rfl

theorem transfer_instruction_136 : primitiveProgram ⟨136, by decide⟩ =
    .decrement ⟨4, by decide⟩ ⟨137, by decide⟩ ⟨138, by decide⟩ := rfl

theorem transfer_instruction_137 : primitiveProgram ⟨137, by decide⟩ =
    .jump ⟨141, by decide⟩ := rfl

theorem transfer_instruction_138 : primitiveProgram ⟨138, by decide⟩ =
    .increment ⟨7, by decide⟩ ⟨139, by decide⟩ := rfl

theorem transfer_instruction_139 : primitiveProgram ⟨139, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨140, by decide⟩ := rfl

theorem transfer_instruction_140 : primitiveProgram ⟨140, by decide⟩ =
    .jump ⟨136, by decide⟩ := rfl

theorem transfer_instruction_141 : primitiveProgram ⟨141, by decide⟩ =
    .jump ⟨142, by decide⟩ := rfl

theorem transfer_instruction_142 : primitiveProgram ⟨142, by decide⟩ =
    .jump ⟨144, by decide⟩ := rfl

theorem transfer_instruction_144 : primitiveProgram ⟨144, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨145, by decide⟩ ⟨146, by decide⟩ := rfl

theorem transfer_instruction_145 : primitiveProgram ⟨145, by decide⟩ =
    .jump ⟨148, by decide⟩ := rfl

theorem transfer_instruction_146 : primitiveProgram ⟨146, by decide⟩ =
    .increment ⟨4, by decide⟩ ⟨147, by decide⟩ := rfl

theorem transfer_instruction_147 : primitiveProgram ⟨147, by decide⟩ =
    .jump ⟨144, by decide⟩ := rfl

theorem transfer_instruction_152 : primitiveProgram ⟨152, by decide⟩ =
    .decrement ⟨2, by decide⟩ ⟨153, by decide⟩ ⟨154, by decide⟩ := rfl

theorem transfer_instruction_153 : primitiveProgram ⟨153, by decide⟩ =
    .jump ⟨157, by decide⟩ := rfl

theorem transfer_instruction_154 : primitiveProgram ⟨154, by decide⟩ =
    .increment ⟨6, by decide⟩ ⟨155, by decide⟩ := rfl

theorem transfer_instruction_155 : primitiveProgram ⟨155, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨156, by decide⟩ := rfl

theorem transfer_instruction_156 : primitiveProgram ⟨156, by decide⟩ =
    .jump ⟨152, by decide⟩ := rfl

theorem transfer_instruction_157 : primitiveProgram ⟨157, by decide⟩ =
    .jump ⟨158, by decide⟩ := rfl

theorem transfer_instruction_158 : primitiveProgram ⟨158, by decide⟩ =
    .jump ⟨160, by decide⟩ := rfl

theorem transfer_instruction_160 : primitiveProgram ⟨160, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨161, by decide⟩ ⟨162, by decide⟩ := rfl

theorem transfer_instruction_161 : primitiveProgram ⟨161, by decide⟩ =
    .jump ⟨164, by decide⟩ := rfl

theorem transfer_instruction_162 : primitiveProgram ⟨162, by decide⟩ =
    .increment ⟨2, by decide⟩ ⟨163, by decide⟩ := rfl

theorem transfer_instruction_163 : primitiveProgram ⟨163, by decide⟩ =
    .jump ⟨160, by decide⟩ := rfl

theorem transfer_instruction_168 : primitiveProgram ⟨168, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨169, by decide⟩ ⟨170, by decide⟩ := rfl

theorem transfer_instruction_169 : primitiveProgram ⟨169, by decide⟩ =
    .jump ⟨173, by decide⟩ := rfl

theorem transfer_instruction_170 : primitiveProgram ⟨170, by decide⟩ =
    .increment ⟨6, by decide⟩ ⟨171, by decide⟩ := rfl

theorem transfer_instruction_171 : primitiveProgram ⟨171, by decide⟩ =
    .increment ⟨7, by decide⟩ ⟨172, by decide⟩ := rfl

theorem transfer_instruction_172 : primitiveProgram ⟨172, by decide⟩ =
    .jump ⟨168, by decide⟩ := rfl

theorem transfer_instruction_173 : primitiveProgram ⟨173, by decide⟩ =
    .jump ⟨174, by decide⟩ := rfl

theorem transfer_instruction_174 : primitiveProgram ⟨174, by decide⟩ =
    .jump ⟨176, by decide⟩ := rfl

theorem transfer_instruction_176 : primitiveProgram ⟨176, by decide⟩ =
    .decrement ⟨7, by decide⟩ ⟨177, by decide⟩ ⟨178, by decide⟩ := rfl

theorem transfer_instruction_177 : primitiveProgram ⟨177, by decide⟩ =
    .jump ⟨180, by decide⟩ := rfl

theorem transfer_instruction_178 : primitiveProgram ⟨178, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨179, by decide⟩ := rfl

theorem transfer_instruction_179 : primitiveProgram ⟨179, by decide⟩ =
    .jump ⟨176, by decide⟩ := rfl

theorem transfer_instruction_180 : primitiveProgram ⟨180, by decide⟩ =
    .decrement ⟨2, by decide⟩ ⟨181, by decide⟩ ⟨182, by decide⟩ := rfl

theorem transfer_instruction_181 : primitiveProgram ⟨181, by decide⟩ =
    .jump ⟨183, by decide⟩ := rfl

theorem transfer_instruction_182 : primitiveProgram ⟨182, by decide⟩ =
    .jump ⟨180, by decide⟩ := rfl

theorem transfer_instruction_183 : primitiveProgram ⟨183, by decide⟩ =
    .jump ⟨184, by decide⟩ := rfl

theorem transfer_instruction_184 : primitiveProgram ⟨184, by decide⟩ =
    .decrement ⟨6, by decide⟩ ⟨185, by decide⟩ ⟨186, by decide⟩ := rfl

theorem transfer_instruction_185 : primitiveProgram ⟨185, by decide⟩ =
    .jump ⟨188, by decide⟩ := rfl

theorem transfer_instruction_186 : primitiveProgram ⟨186, by decide⟩ =
    .increment ⟨2, by decide⟩ ⟨187, by decide⟩ := rfl

theorem transfer_instruction_187 : primitiveProgram ⟨187, by decide⟩ =
    .jump ⟨184, by decide⟩ := rfl

theorem transfer_instruction_192 : primitiveProgram ⟨192, by decide⟩ =
    .decrement ⟨4, by decide⟩ ⟨193, by decide⟩ ⟨194, by decide⟩ := rfl

theorem transfer_instruction_193 : primitiveProgram ⟨193, by decide⟩ =
    .jump ⟨197, by decide⟩ := rfl

theorem transfer_instruction_194 : primitiveProgram ⟨194, by decide⟩ =
    .increment ⟨7, by decide⟩ ⟨195, by decide⟩ := rfl

theorem transfer_instruction_195 : primitiveProgram ⟨195, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨196, by decide⟩ := rfl

theorem transfer_instruction_196 : primitiveProgram ⟨196, by decide⟩ =
    .jump ⟨192, by decide⟩ := rfl

theorem transfer_instruction_197 : primitiveProgram ⟨197, by decide⟩ =
    .jump ⟨198, by decide⟩ := rfl

theorem transfer_instruction_198 : primitiveProgram ⟨198, by decide⟩ =
    .jump ⟨200, by decide⟩ := rfl

theorem transfer_instruction_200 : primitiveProgram ⟨200, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨201, by decide⟩ ⟨202, by decide⟩ := rfl

theorem transfer_instruction_201 : primitiveProgram ⟨201, by decide⟩ =
    .jump ⟨204, by decide⟩ := rfl

theorem transfer_instruction_202 : primitiveProgram ⟨202, by decide⟩ =
    .increment ⟨4, by decide⟩ ⟨203, by decide⟩ := rfl

theorem transfer_instruction_203 : primitiveProgram ⟨203, by decide⟩ =
    .jump ⟨200, by decide⟩ := rfl

theorem transfer_instruction_208 : primitiveProgram ⟨208, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨209, by decide⟩ ⟨210, by decide⟩ := rfl

theorem transfer_instruction_209 : primitiveProgram ⟨209, by decide⟩ =
    .jump ⟨213, by decide⟩ := rfl

theorem transfer_instruction_210 : primitiveProgram ⟨210, by decide⟩ =
    .increment ⟨6, by decide⟩ ⟨211, by decide⟩ := rfl

theorem transfer_instruction_211 : primitiveProgram ⟨211, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨212, by decide⟩ := rfl

theorem transfer_instruction_212 : primitiveProgram ⟨212, by decide⟩ =
    .jump ⟨208, by decide⟩ := rfl

theorem transfer_instruction_213 : primitiveProgram ⟨213, by decide⟩ =
    .jump ⟨214, by decide⟩ := rfl

theorem transfer_instruction_214 : primitiveProgram ⟨214, by decide⟩ =
    .jump ⟨216, by decide⟩ := rfl

theorem transfer_instruction_216 : primitiveProgram ⟨216, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨217, by decide⟩ ⟨218, by decide⟩ := rfl

theorem transfer_instruction_217 : primitiveProgram ⟨217, by decide⟩ =
    .jump ⟨220, by decide⟩ := rfl

theorem transfer_instruction_218 : primitiveProgram ⟨218, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨219, by decide⟩ := rfl

theorem transfer_instruction_219 : primitiveProgram ⟨219, by decide⟩ =
    .jump ⟨216, by decide⟩ := rfl

theorem transfer_instruction_224 : primitiveProgram ⟨224, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨225, by decide⟩ ⟨226, by decide⟩ := rfl

theorem transfer_instruction_225 : primitiveProgram ⟨225, by decide⟩ =
    .jump ⟨227, by decide⟩ := rfl

theorem transfer_instruction_226 : primitiveProgram ⟨226, by decide⟩ =
    .jump ⟨224, by decide⟩ := rfl

theorem transfer_instruction_227 : primitiveProgram ⟨227, by decide⟩ =
    .jump ⟨228, by decide⟩ := rfl

theorem transfer_instruction_228 : primitiveProgram ⟨228, by decide⟩ =
    .decrement ⟨6, by decide⟩ ⟨229, by decide⟩ ⟨230, by decide⟩ := rfl

theorem transfer_instruction_229 : primitiveProgram ⟨229, by decide⟩ =
    .jump ⟨232, by decide⟩ := rfl

theorem transfer_instruction_230 : primitiveProgram ⟨230, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨231, by decide⟩ := rfl

theorem transfer_instruction_231 : primitiveProgram ⟨231, by decide⟩ =
    .jump ⟨228, by decide⟩ := rfl

theorem transfer_instruction_256 : primitiveProgram ⟨256, by decide⟩ =
    .decrement ⟨0, by decide⟩ ⟨257, by decide⟩ ⟨258, by decide⟩ := rfl

theorem transfer_instruction_257 : primitiveProgram ⟨257, by decide⟩ =
    .jump ⟨261, by decide⟩ := rfl

theorem transfer_instruction_258 : primitiveProgram ⟨258, by decide⟩ =
    .increment ⟨4, by decide⟩ ⟨259, by decide⟩ := rfl

theorem transfer_instruction_259 : primitiveProgram ⟨259, by decide⟩ =
    .increment ⟨6, by decide⟩ ⟨260, by decide⟩ := rfl

theorem transfer_instruction_260 : primitiveProgram ⟨260, by decide⟩ =
    .jump ⟨256, by decide⟩ := rfl

theorem transfer_instruction_261 : primitiveProgram ⟨261, by decide⟩ =
    .jump ⟨262, by decide⟩ := rfl

theorem transfer_instruction_262 : primitiveProgram ⟨262, by decide⟩ =
    .jump ⟨264, by decide⟩ := rfl

theorem transfer_instruction_264 : primitiveProgram ⟨264, by decide⟩ =
    .decrement ⟨6, by decide⟩ ⟨265, by decide⟩ ⟨266, by decide⟩ := rfl

theorem transfer_instruction_265 : primitiveProgram ⟨265, by decide⟩ =
    .jump ⟨268, by decide⟩ := rfl

theorem transfer_instruction_266 : primitiveProgram ⟨266, by decide⟩ =
    .increment ⟨0, by decide⟩ ⟨267, by decide⟩ := rfl

theorem transfer_instruction_267 : primitiveProgram ⟨267, by decide⟩ =
    .jump ⟨264, by decide⟩ := rfl

theorem transfer_instruction_272 : primitiveProgram ⟨272, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨273, by decide⟩ ⟨274, by decide⟩ := rfl

theorem transfer_instruction_273 : primitiveProgram ⟨273, by decide⟩ =
    .jump ⟨277, by decide⟩ := rfl

theorem transfer_instruction_274 : primitiveProgram ⟨274, by decide⟩ =
    .increment ⟨5, by decide⟩ ⟨275, by decide⟩ := rfl

theorem transfer_instruction_275 : primitiveProgram ⟨275, by decide⟩ =
    .increment ⟨6, by decide⟩ ⟨276, by decide⟩ := rfl

theorem transfer_instruction_276 : primitiveProgram ⟨276, by decide⟩ =
    .jump ⟨272, by decide⟩ := rfl

theorem transfer_instruction_277 : primitiveProgram ⟨277, by decide⟩ =
    .jump ⟨278, by decide⟩ := rfl

theorem transfer_instruction_278 : primitiveProgram ⟨278, by decide⟩ =
    .jump ⟨280, by decide⟩ := rfl

theorem transfer_instruction_280 : primitiveProgram ⟨280, by decide⟩ =
    .decrement ⟨6, by decide⟩ ⟨281, by decide⟩ ⟨282, by decide⟩ := rfl

theorem transfer_instruction_281 : primitiveProgram ⟨281, by decide⟩ =
    .jump ⟨284, by decide⟩ := rfl

theorem transfer_instruction_282 : primitiveProgram ⟨282, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨283, by decide⟩ := rfl

theorem transfer_instruction_283 : primitiveProgram ⟨283, by decide⟩ =
    .jump ⟨280, by decide⟩ := rfl

theorem transfer_instruction_284 : primitiveProgram ⟨284, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨285, by decide⟩ ⟨286, by decide⟩ := rfl

theorem transfer_instruction_285 : primitiveProgram ⟨285, by decide⟩ =
    .jump ⟨288, by decide⟩ := rfl

theorem transfer_instruction_286 : primitiveProgram ⟨286, by decide⟩ =
    .increment ⟨7, by decide⟩ ⟨287, by decide⟩ := rfl

theorem transfer_instruction_287 : primitiveProgram ⟨287, by decide⟩ =
    .jump ⟨284, by decide⟩ := rfl

theorem transfer_instruction_296 : primitiveProgram ⟨296, by decide⟩ =
    .decrement ⟨0, by decide⟩ ⟨297, by decide⟩ ⟨298, by decide⟩ := rfl

theorem transfer_instruction_297 : primitiveProgram ⟨297, by decide⟩ =
    .jump ⟨301, by decide⟩ := rfl

theorem transfer_instruction_298 : primitiveProgram ⟨298, by decide⟩ =
    .increment ⟨6, by decide⟩ ⟨299, by decide⟩ := rfl

theorem transfer_instruction_299 : primitiveProgram ⟨299, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨300, by decide⟩ := rfl

theorem transfer_instruction_300 : primitiveProgram ⟨300, by decide⟩ =
    .jump ⟨296, by decide⟩ := rfl

theorem transfer_instruction_301 : primitiveProgram ⟨301, by decide⟩ =
    .jump ⟨302, by decide⟩ := rfl

theorem transfer_instruction_302 : primitiveProgram ⟨302, by decide⟩ =
    .jump ⟨304, by decide⟩ := rfl

theorem transfer_instruction_304 : primitiveProgram ⟨304, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨305, by decide⟩ ⟨306, by decide⟩ := rfl

theorem transfer_instruction_305 : primitiveProgram ⟨305, by decide⟩ =
    .jump ⟨308, by decide⟩ := rfl

theorem transfer_instruction_306 : primitiveProgram ⟨306, by decide⟩ =
    .increment ⟨0, by decide⟩ ⟨307, by decide⟩ := rfl

theorem transfer_instruction_307 : primitiveProgram ⟨307, by decide⟩ =
    .jump ⟨304, by decide⟩ := rfl

theorem transfer_instruction_316 : primitiveProgram ⟨316, by decide⟩ =
    .decrement ⟨2, by decide⟩ ⟨317, by decide⟩ ⟨318, by decide⟩ := rfl

theorem transfer_instruction_317 : primitiveProgram ⟨317, by decide⟩ =
    .jump ⟨320, by decide⟩ := rfl

theorem transfer_instruction_318 : primitiveProgram ⟨318, by decide⟩ =
    .increment ⟨1, by decide⟩ ⟨319, by decide⟩ := rfl

theorem transfer_instruction_319 : primitiveProgram ⟨319, by decide⟩ =
    .jump ⟨316, by decide⟩ := rfl

theorem transfer_instruction_384 : primitiveProgram ⟨384, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨385, by decide⟩ ⟨386, by decide⟩ := rfl

theorem transfer_instruction_385 : primitiveProgram ⟨385, by decide⟩ =
    .jump ⟨387, by decide⟩ := rfl

theorem transfer_instruction_386 : primitiveProgram ⟨386, by decide⟩ =
    .jump ⟨384, by decide⟩ := rfl

theorem transfer_instruction_387 : primitiveProgram ⟨387, by decide⟩ =
    .jump ⟨388, by decide⟩ := rfl

theorem transfer_instruction_392 : primitiveProgram ⟨392, by decide⟩ =
    .decrement ⟨4, by decide⟩ ⟨393, by decide⟩ ⟨394, by decide⟩ := rfl

theorem transfer_instruction_393 : primitiveProgram ⟨393, by decide⟩ =
    .jump ⟨397, by decide⟩ := rfl

theorem transfer_instruction_394 : primitiveProgram ⟨394, by decide⟩ =
    .increment ⟨7, by decide⟩ ⟨395, by decide⟩ := rfl

theorem transfer_instruction_395 : primitiveProgram ⟨395, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨396, by decide⟩ := rfl

theorem transfer_instruction_396 : primitiveProgram ⟨396, by decide⟩ =
    .jump ⟨392, by decide⟩ := rfl

theorem transfer_instruction_397 : primitiveProgram ⟨397, by decide⟩ =
    .jump ⟨398, by decide⟩ := rfl

theorem transfer_instruction_398 : primitiveProgram ⟨398, by decide⟩ =
    .jump ⟨400, by decide⟩ := rfl

theorem transfer_instruction_400 : primitiveProgram ⟨400, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨401, by decide⟩ ⟨402, by decide⟩ := rfl

theorem transfer_instruction_401 : primitiveProgram ⟨401, by decide⟩ =
    .jump ⟨404, by decide⟩ := rfl

theorem transfer_instruction_402 : primitiveProgram ⟨402, by decide⟩ =
    .increment ⟨4, by decide⟩ ⟨403, by decide⟩ := rfl

theorem transfer_instruction_403 : primitiveProgram ⟨403, by decide⟩ =
    .jump ⟨400, by decide⟩ := rfl

theorem transfer_instruction_408 : primitiveProgram ⟨408, by decide⟩ =
    .decrement ⟨2, by decide⟩ ⟨409, by decide⟩ ⟨410, by decide⟩ := rfl

theorem transfer_instruction_409 : primitiveProgram ⟨409, by decide⟩ =
    .jump ⟨413, by decide⟩ := rfl

theorem transfer_instruction_410 : primitiveProgram ⟨410, by decide⟩ =
    .increment ⟨6, by decide⟩ ⟨411, by decide⟩ := rfl

theorem transfer_instruction_411 : primitiveProgram ⟨411, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨412, by decide⟩ := rfl

theorem transfer_instruction_412 : primitiveProgram ⟨412, by decide⟩ =
    .jump ⟨408, by decide⟩ := rfl

theorem transfer_instruction_413 : primitiveProgram ⟨413, by decide⟩ =
    .jump ⟨414, by decide⟩ := rfl

theorem transfer_instruction_414 : primitiveProgram ⟨414, by decide⟩ =
    .jump ⟨416, by decide⟩ := rfl

theorem transfer_instruction_416 : primitiveProgram ⟨416, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨417, by decide⟩ ⟨418, by decide⟩ := rfl

theorem transfer_instruction_417 : primitiveProgram ⟨417, by decide⟩ =
    .jump ⟨420, by decide⟩ := rfl

theorem transfer_instruction_418 : primitiveProgram ⟨418, by decide⟩ =
    .increment ⟨2, by decide⟩ ⟨419, by decide⟩ := rfl

theorem transfer_instruction_419 : primitiveProgram ⟨419, by decide⟩ =
    .jump ⟨416, by decide⟩ := rfl

theorem transfer_instruction_424 : primitiveProgram ⟨424, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨425, by decide⟩ ⟨426, by decide⟩ := rfl

theorem transfer_instruction_425 : primitiveProgram ⟨425, by decide⟩ =
    .jump ⟨429, by decide⟩ := rfl

theorem transfer_instruction_426 : primitiveProgram ⟨426, by decide⟩ =
    .increment ⟨6, by decide⟩ ⟨427, by decide⟩ := rfl

theorem transfer_instruction_427 : primitiveProgram ⟨427, by decide⟩ =
    .increment ⟨7, by decide⟩ ⟨428, by decide⟩ := rfl

theorem transfer_instruction_428 : primitiveProgram ⟨428, by decide⟩ =
    .jump ⟨424, by decide⟩ := rfl

theorem transfer_instruction_429 : primitiveProgram ⟨429, by decide⟩ =
    .jump ⟨430, by decide⟩ := rfl

theorem transfer_instruction_430 : primitiveProgram ⟨430, by decide⟩ =
    .jump ⟨432, by decide⟩ := rfl

theorem transfer_instruction_432 : primitiveProgram ⟨432, by decide⟩ =
    .decrement ⟨7, by decide⟩ ⟨433, by decide⟩ ⟨434, by decide⟩ := rfl

theorem transfer_instruction_433 : primitiveProgram ⟨433, by decide⟩ =
    .jump ⟨436, by decide⟩ := rfl

theorem transfer_instruction_434 : primitiveProgram ⟨434, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨435, by decide⟩ := rfl

theorem transfer_instruction_435 : primitiveProgram ⟨435, by decide⟩ =
    .jump ⟨432, by decide⟩ := rfl

theorem transfer_instruction_436 : primitiveProgram ⟨436, by decide⟩ =
    .decrement ⟨2, by decide⟩ ⟨437, by decide⟩ ⟨438, by decide⟩ := rfl

theorem transfer_instruction_437 : primitiveProgram ⟨437, by decide⟩ =
    .jump ⟨439, by decide⟩ := rfl

theorem transfer_instruction_438 : primitiveProgram ⟨438, by decide⟩ =
    .jump ⟨436, by decide⟩ := rfl

theorem transfer_instruction_439 : primitiveProgram ⟨439, by decide⟩ =
    .jump ⟨440, by decide⟩ := rfl

theorem transfer_instruction_440 : primitiveProgram ⟨440, by decide⟩ =
    .decrement ⟨6, by decide⟩ ⟨441, by decide⟩ ⟨442, by decide⟩ := rfl

theorem transfer_instruction_441 : primitiveProgram ⟨441, by decide⟩ =
    .jump ⟨444, by decide⟩ := rfl

theorem transfer_instruction_442 : primitiveProgram ⟨442, by decide⟩ =
    .increment ⟨2, by decide⟩ ⟨443, by decide⟩ := rfl

theorem transfer_instruction_443 : primitiveProgram ⟨443, by decide⟩ =
    .jump ⟨440, by decide⟩ := rfl

theorem transfer_instruction_448 : primitiveProgram ⟨448, by decide⟩ =
    .decrement ⟨4, by decide⟩ ⟨449, by decide⟩ ⟨450, by decide⟩ := rfl

theorem transfer_instruction_449 : primitiveProgram ⟨449, by decide⟩ =
    .jump ⟨453, by decide⟩ := rfl

theorem transfer_instruction_450 : primitiveProgram ⟨450, by decide⟩ =
    .increment ⟨7, by decide⟩ ⟨451, by decide⟩ := rfl

theorem transfer_instruction_451 : primitiveProgram ⟨451, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨452, by decide⟩ := rfl

theorem transfer_instruction_452 : primitiveProgram ⟨452, by decide⟩ =
    .jump ⟨448, by decide⟩ := rfl

theorem transfer_instruction_453 : primitiveProgram ⟨453, by decide⟩ =
    .jump ⟨454, by decide⟩ := rfl

theorem transfer_instruction_454 : primitiveProgram ⟨454, by decide⟩ =
    .jump ⟨456, by decide⟩ := rfl

theorem transfer_instruction_456 : primitiveProgram ⟨456, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨457, by decide⟩ ⟨458, by decide⟩ := rfl

theorem transfer_instruction_457 : primitiveProgram ⟨457, by decide⟩ =
    .jump ⟨460, by decide⟩ := rfl

theorem transfer_instruction_458 : primitiveProgram ⟨458, by decide⟩ =
    .increment ⟨4, by decide⟩ ⟨459, by decide⟩ := rfl

theorem transfer_instruction_459 : primitiveProgram ⟨459, by decide⟩ =
    .jump ⟨456, by decide⟩ := rfl

theorem transfer_instruction_464 : primitiveProgram ⟨464, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨465, by decide⟩ ⟨466, by decide⟩ := rfl

theorem transfer_instruction_465 : primitiveProgram ⟨465, by decide⟩ =
    .jump ⟨469, by decide⟩ := rfl

theorem transfer_instruction_466 : primitiveProgram ⟨466, by decide⟩ =
    .increment ⟨6, by decide⟩ ⟨467, by decide⟩ := rfl

theorem transfer_instruction_467 : primitiveProgram ⟨467, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨468, by decide⟩ := rfl

theorem transfer_instruction_468 : primitiveProgram ⟨468, by decide⟩ =
    .jump ⟨464, by decide⟩ := rfl

theorem transfer_instruction_469 : primitiveProgram ⟨469, by decide⟩ =
    .jump ⟨470, by decide⟩ := rfl

theorem transfer_instruction_470 : primitiveProgram ⟨470, by decide⟩ =
    .jump ⟨472, by decide⟩ := rfl

theorem transfer_instruction_472 : primitiveProgram ⟨472, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨473, by decide⟩ ⟨474, by decide⟩ := rfl

theorem transfer_instruction_473 : primitiveProgram ⟨473, by decide⟩ =
    .jump ⟨476, by decide⟩ := rfl

theorem transfer_instruction_474 : primitiveProgram ⟨474, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨475, by decide⟩ := rfl

theorem transfer_instruction_475 : primitiveProgram ⟨475, by decide⟩ =
    .jump ⟨472, by decide⟩ := rfl

theorem transfer_instruction_480 : primitiveProgram ⟨480, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨481, by decide⟩ ⟨482, by decide⟩ := rfl

theorem transfer_instruction_481 : primitiveProgram ⟨481, by decide⟩ =
    .jump ⟨483, by decide⟩ := rfl

theorem transfer_instruction_482 : primitiveProgram ⟨482, by decide⟩ =
    .jump ⟨480, by decide⟩ := rfl

theorem transfer_instruction_483 : primitiveProgram ⟨483, by decide⟩ =
    .jump ⟨484, by decide⟩ := rfl

theorem transfer_instruction_484 : primitiveProgram ⟨484, by decide⟩ =
    .decrement ⟨6, by decide⟩ ⟨485, by decide⟩ ⟨486, by decide⟩ := rfl

theorem transfer_instruction_485 : primitiveProgram ⟨485, by decide⟩ =
    .jump ⟨488, by decide⟩ := rfl

theorem transfer_instruction_486 : primitiveProgram ⟨486, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨487, by decide⟩ := rfl

theorem transfer_instruction_487 : primitiveProgram ⟨487, by decide⟩ =
    .jump ⟨484, by decide⟩ := rfl

theorem transfer_instruction_512 : primitiveProgram ⟨512, by decide⟩ =
    .decrement ⟨2, by decide⟩ ⟨513, by decide⟩ ⟨514, by decide⟩ := rfl

theorem transfer_instruction_513 : primitiveProgram ⟨513, by decide⟩ =
    .jump ⟨517, by decide⟩ := rfl

theorem transfer_instruction_514 : primitiveProgram ⟨514, by decide⟩ =
    .increment ⟨7, by decide⟩ ⟨515, by decide⟩ := rfl

theorem transfer_instruction_515 : primitiveProgram ⟨515, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨516, by decide⟩ := rfl

theorem transfer_instruction_516 : primitiveProgram ⟨516, by decide⟩ =
    .jump ⟨512, by decide⟩ := rfl

theorem transfer_instruction_517 : primitiveProgram ⟨517, by decide⟩ =
    .jump ⟨518, by decide⟩ := rfl

theorem transfer_instruction_518 : primitiveProgram ⟨518, by decide⟩ =
    .jump ⟨520, by decide⟩ := rfl

theorem transfer_instruction_520 : primitiveProgram ⟨520, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨521, by decide⟩ ⟨522, by decide⟩ := rfl

theorem transfer_instruction_521 : primitiveProgram ⟨521, by decide⟩ =
    .jump ⟨524, by decide⟩ := rfl

theorem transfer_instruction_522 : primitiveProgram ⟨522, by decide⟩ =
    .increment ⟨2, by decide⟩ ⟨523, by decide⟩ := rfl

theorem transfer_instruction_523 : primitiveProgram ⟨523, by decide⟩ =
    .jump ⟨520, by decide⟩ := rfl

theorem transfer_instruction_528 : primitiveProgram ⟨528, by decide⟩ =
    .decrement ⟨2, by decide⟩ ⟨529, by decide⟩ ⟨530, by decide⟩ := rfl

theorem transfer_instruction_529 : primitiveProgram ⟨529, by decide⟩ =
    .jump ⟨533, by decide⟩ := rfl

theorem transfer_instruction_530 : primitiveProgram ⟨530, by decide⟩ =
    .increment ⟨6, by decide⟩ ⟨531, by decide⟩ := rfl

theorem transfer_instruction_531 : primitiveProgram ⟨531, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨532, by decide⟩ := rfl

theorem transfer_instruction_532 : primitiveProgram ⟨532, by decide⟩ =
    .jump ⟨528, by decide⟩ := rfl

theorem transfer_instruction_533 : primitiveProgram ⟨533, by decide⟩ =
    .jump ⟨534, by decide⟩ := rfl

theorem transfer_instruction_534 : primitiveProgram ⟨534, by decide⟩ =
    .jump ⟨536, by decide⟩ := rfl

theorem transfer_instruction_536 : primitiveProgram ⟨536, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨537, by decide⟩ ⟨538, by decide⟩ := rfl

theorem transfer_instruction_537 : primitiveProgram ⟨537, by decide⟩ =
    .jump ⟨540, by decide⟩ := rfl

theorem transfer_instruction_538 : primitiveProgram ⟨538, by decide⟩ =
    .increment ⟨2, by decide⟩ ⟨539, by decide⟩ := rfl

theorem transfer_instruction_539 : primitiveProgram ⟨539, by decide⟩ =
    .jump ⟨536, by decide⟩ := rfl

theorem transfer_instruction_544 : primitiveProgram ⟨544, by decide⟩ =
    .decrement ⟨2, by decide⟩ ⟨545, by decide⟩ ⟨546, by decide⟩ := rfl

theorem transfer_instruction_545 : primitiveProgram ⟨545, by decide⟩ =
    .jump ⟨547, by decide⟩ := rfl

theorem transfer_instruction_546 : primitiveProgram ⟨546, by decide⟩ =
    .jump ⟨544, by decide⟩ := rfl

theorem transfer_instruction_547 : primitiveProgram ⟨547, by decide⟩ =
    .jump ⟨548, by decide⟩ := rfl

theorem transfer_instruction_548 : primitiveProgram ⟨548, by decide⟩ =
    .decrement ⟨6, by decide⟩ ⟨549, by decide⟩ ⟨550, by decide⟩ := rfl

theorem transfer_instruction_549 : primitiveProgram ⟨549, by decide⟩ =
    .jump ⟨552, by decide⟩ := rfl

theorem transfer_instruction_550 : primitiveProgram ⟨550, by decide⟩ =
    .increment ⟨2, by decide⟩ ⟨551, by decide⟩ := rfl

theorem transfer_instruction_551 : primitiveProgram ⟨551, by decide⟩ =
    .jump ⟨548, by decide⟩ := rfl

theorem transfer_instruction_552 : primitiveProgram ⟨552, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨553, by decide⟩ ⟨554, by decide⟩ := rfl

theorem transfer_instruction_553 : primitiveProgram ⟨553, by decide⟩ =
    .jump ⟨557, by decide⟩ := rfl

theorem transfer_instruction_554 : primitiveProgram ⟨554, by decide⟩ =
    .increment ⟨7, by decide⟩ ⟨555, by decide⟩ := rfl

theorem transfer_instruction_555 : primitiveProgram ⟨555, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨556, by decide⟩ := rfl

theorem transfer_instruction_556 : primitiveProgram ⟨556, by decide⟩ =
    .jump ⟨552, by decide⟩ := rfl

theorem transfer_instruction_557 : primitiveProgram ⟨557, by decide⟩ =
    .jump ⟨558, by decide⟩ := rfl

theorem transfer_instruction_558 : primitiveProgram ⟨558, by decide⟩ =
    .jump ⟨560, by decide⟩ := rfl

theorem transfer_instruction_560 : primitiveProgram ⟨560, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨561, by decide⟩ ⟨562, by decide⟩ := rfl

theorem transfer_instruction_561 : primitiveProgram ⟨561, by decide⟩ =
    .jump ⟨564, by decide⟩ := rfl

theorem transfer_instruction_562 : primitiveProgram ⟨562, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨563, by decide⟩ := rfl

theorem transfer_instruction_563 : primitiveProgram ⟨563, by decide⟩ =
    .jump ⟨560, by decide⟩ := rfl

theorem transfer_instruction_568 : primitiveProgram ⟨568, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨569, by decide⟩ ⟨570, by decide⟩ := rfl

theorem transfer_instruction_569 : primitiveProgram ⟨569, by decide⟩ =
    .jump ⟨573, by decide⟩ := rfl

theorem transfer_instruction_570 : primitiveProgram ⟨570, by decide⟩ =
    .increment ⟨6, by decide⟩ ⟨571, by decide⟩ := rfl

theorem transfer_instruction_571 : primitiveProgram ⟨571, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨572, by decide⟩ := rfl

theorem transfer_instruction_572 : primitiveProgram ⟨572, by decide⟩ =
    .jump ⟨568, by decide⟩ := rfl

theorem transfer_instruction_573 : primitiveProgram ⟨573, by decide⟩ =
    .jump ⟨574, by decide⟩ := rfl

theorem transfer_instruction_574 : primitiveProgram ⟨574, by decide⟩ =
    .jump ⟨576, by decide⟩ := rfl

theorem transfer_instruction_576 : primitiveProgram ⟨576, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨577, by decide⟩ ⟨578, by decide⟩ := rfl

theorem transfer_instruction_577 : primitiveProgram ⟨577, by decide⟩ =
    .jump ⟨580, by decide⟩ := rfl

theorem transfer_instruction_578 : primitiveProgram ⟨578, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨579, by decide⟩ := rfl

theorem transfer_instruction_579 : primitiveProgram ⟨579, by decide⟩ =
    .jump ⟨576, by decide⟩ := rfl

theorem transfer_instruction_584 : primitiveProgram ⟨584, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨585, by decide⟩ ⟨586, by decide⟩ := rfl

theorem transfer_instruction_585 : primitiveProgram ⟨585, by decide⟩ =
    .jump ⟨587, by decide⟩ := rfl

theorem transfer_instruction_586 : primitiveProgram ⟨586, by decide⟩ =
    .jump ⟨584, by decide⟩ := rfl

theorem transfer_instruction_587 : primitiveProgram ⟨587, by decide⟩ =
    .jump ⟨588, by decide⟩ := rfl

theorem transfer_instruction_588 : primitiveProgram ⟨588, by decide⟩ =
    .decrement ⟨6, by decide⟩ ⟨589, by decide⟩ ⟨590, by decide⟩ := rfl

theorem transfer_instruction_589 : primitiveProgram ⟨589, by decide⟩ =
    .jump ⟨592, by decide⟩ := rfl

theorem transfer_instruction_590 : primitiveProgram ⟨590, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨591, by decide⟩ := rfl

theorem transfer_instruction_591 : primitiveProgram ⟨591, by decide⟩ =
    .jump ⟨588, by decide⟩ := rfl

theorem transfer_instruction_592 : primitiveProgram ⟨592, by decide⟩ =
    .decrement ⟨5, by decide⟩ ⟨593, by decide⟩ ⟨594, by decide⟩ := rfl

theorem transfer_instruction_593 : primitiveProgram ⟨593, by decide⟩ =
    .jump ⟨596, by decide⟩ := rfl

theorem transfer_instruction_594 : primitiveProgram ⟨594, by decide⟩ =
    .increment ⟨7, by decide⟩ ⟨595, by decide⟩ := rfl

theorem transfer_instruction_595 : primitiveProgram ⟨595, by decide⟩ =
    .jump ⟨592, by decide⟩ := rfl

theorem transfer_instruction_600 : primitiveProgram ⟨600, by decide⟩ =
    .decrement ⟨2, by decide⟩ ⟨601, by decide⟩ ⟨602, by decide⟩ := rfl

theorem transfer_instruction_601 : primitiveProgram ⟨601, by decide⟩ =
    .jump ⟨605, by decide⟩ := rfl

theorem transfer_instruction_602 : primitiveProgram ⟨602, by decide⟩ =
    .increment ⟨6, by decide⟩ ⟨603, by decide⟩ := rfl

theorem transfer_instruction_603 : primitiveProgram ⟨603, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨604, by decide⟩ := rfl

theorem transfer_instruction_604 : primitiveProgram ⟨604, by decide⟩ =
    .jump ⟨600, by decide⟩ := rfl

theorem transfer_instruction_605 : primitiveProgram ⟨605, by decide⟩ =
    .jump ⟨606, by decide⟩ := rfl

theorem transfer_instruction_606 : primitiveProgram ⟨606, by decide⟩ =
    .jump ⟨608, by decide⟩ := rfl

theorem transfer_instruction_608 : primitiveProgram ⟨608, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨609, by decide⟩ ⟨610, by decide⟩ := rfl

theorem transfer_instruction_609 : primitiveProgram ⟨609, by decide⟩ =
    .jump ⟨612, by decide⟩ := rfl

theorem transfer_instruction_610 : primitiveProgram ⟨610, by decide⟩ =
    .increment ⟨2, by decide⟩ ⟨611, by decide⟩ := rfl

theorem transfer_instruction_611 : primitiveProgram ⟨611, by decide⟩ =
    .jump ⟨608, by decide⟩ := rfl

theorem transfer_instruction_616 : primitiveProgram ⟨616, by decide⟩ =
    .decrement ⟨2, by decide⟩ ⟨617, by decide⟩ ⟨618, by decide⟩ := rfl

theorem transfer_instruction_617 : primitiveProgram ⟨617, by decide⟩ =
    .jump ⟨619, by decide⟩ := rfl

theorem transfer_instruction_618 : primitiveProgram ⟨618, by decide⟩ =
    .jump ⟨616, by decide⟩ := rfl

theorem transfer_instruction_619 : primitiveProgram ⟨619, by decide⟩ =
    .jump ⟨620, by decide⟩ := rfl

theorem transfer_instruction_620 : primitiveProgram ⟨620, by decide⟩ =
    .decrement ⟨6, by decide⟩ ⟨621, by decide⟩ ⟨622, by decide⟩ := rfl

theorem transfer_instruction_621 : primitiveProgram ⟨621, by decide⟩ =
    .jump ⟨624, by decide⟩ := rfl

theorem transfer_instruction_622 : primitiveProgram ⟨622, by decide⟩ =
    .increment ⟨2, by decide⟩ ⟨623, by decide⟩ := rfl

theorem transfer_instruction_623 : primitiveProgram ⟨623, by decide⟩ =
    .jump ⟨620, by decide⟩ := rfl

theorem transfer_instruction_624 : primitiveProgram ⟨624, by decide⟩ =
    .decrement ⟨1, by decide⟩ ⟨625, by decide⟩ ⟨626, by decide⟩ := rfl

theorem transfer_instruction_625 : primitiveProgram ⟨625, by decide⟩ =
    .jump ⟨628, by decide⟩ := rfl

theorem transfer_instruction_626 : primitiveProgram ⟨626, by decide⟩ =
    .increment ⟨7, by decide⟩ ⟨627, by decide⟩ := rfl

theorem transfer_instruction_627 : primitiveProgram ⟨627, by decide⟩ =
    .jump ⟨624, by decide⟩ := rfl

theorem transfer_instruction_632 : primitiveProgram ⟨632, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨633, by decide⟩ ⟨634, by decide⟩ := rfl

theorem transfer_instruction_633 : primitiveProgram ⟨633, by decide⟩ =
    .jump ⟨637, by decide⟩ := rfl

theorem transfer_instruction_634 : primitiveProgram ⟨634, by decide⟩ =
    .increment ⟨6, by decide⟩ ⟨635, by decide⟩ := rfl

theorem transfer_instruction_635 : primitiveProgram ⟨635, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨636, by decide⟩ := rfl

theorem transfer_instruction_636 : primitiveProgram ⟨636, by decide⟩ =
    .jump ⟨632, by decide⟩ := rfl

theorem transfer_instruction_637 : primitiveProgram ⟨637, by decide⟩ =
    .jump ⟨638, by decide⟩ := rfl

theorem transfer_instruction_638 : primitiveProgram ⟨638, by decide⟩ =
    .jump ⟨640, by decide⟩ := rfl

theorem transfer_instruction_640 : primitiveProgram ⟨640, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨641, by decide⟩ ⟨642, by decide⟩ := rfl

theorem transfer_instruction_641 : primitiveProgram ⟨641, by decide⟩ =
    .jump ⟨644, by decide⟩ := rfl

theorem transfer_instruction_642 : primitiveProgram ⟨642, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨643, by decide⟩ := rfl

theorem transfer_instruction_643 : primitiveProgram ⟨643, by decide⟩ =
    .jump ⟨640, by decide⟩ := rfl

theorem transfer_instruction_648 : primitiveProgram ⟨648, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨649, by decide⟩ ⟨650, by decide⟩ := rfl

theorem transfer_instruction_649 : primitiveProgram ⟨649, by decide⟩ =
    .jump ⟨651, by decide⟩ := rfl

theorem transfer_instruction_650 : primitiveProgram ⟨650, by decide⟩ =
    .jump ⟨648, by decide⟩ := rfl

theorem transfer_instruction_651 : primitiveProgram ⟨651, by decide⟩ =
    .jump ⟨652, by decide⟩ := rfl

theorem transfer_instruction_652 : primitiveProgram ⟨652, by decide⟩ =
    .decrement ⟨6, by decide⟩ ⟨653, by decide⟩ ⟨654, by decide⟩ := rfl

theorem transfer_instruction_653 : primitiveProgram ⟨653, by decide⟩ =
    .jump ⟨656, by decide⟩ := rfl

theorem transfer_instruction_654 : primitiveProgram ⟨654, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨655, by decide⟩ := rfl

theorem transfer_instruction_655 : primitiveProgram ⟨655, by decide⟩ =
    .jump ⟨652, by decide⟩ := rfl

theorem transfer_instruction_656 : primitiveProgram ⟨656, by decide⟩ =
    .decrement ⟨2, by decide⟩ ⟨657, by decide⟩ ⟨658, by decide⟩ := rfl

theorem transfer_instruction_657 : primitiveProgram ⟨657, by decide⟩ =
    .jump ⟨661, by decide⟩ := rfl

theorem transfer_instruction_658 : primitiveProgram ⟨658, by decide⟩ =
    .increment ⟨7, by decide⟩ ⟨659, by decide⟩ := rfl

theorem transfer_instruction_659 : primitiveProgram ⟨659, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨660, by decide⟩ := rfl

theorem transfer_instruction_660 : primitiveProgram ⟨660, by decide⟩ =
    .jump ⟨656, by decide⟩ := rfl

theorem transfer_instruction_661 : primitiveProgram ⟨661, by decide⟩ =
    .jump ⟨662, by decide⟩ := rfl

theorem transfer_instruction_662 : primitiveProgram ⟨662, by decide⟩ =
    .jump ⟨664, by decide⟩ := rfl

theorem transfer_instruction_664 : primitiveProgram ⟨664, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨665, by decide⟩ ⟨666, by decide⟩ := rfl

theorem transfer_instruction_665 : primitiveProgram ⟨665, by decide⟩ =
    .jump ⟨668, by decide⟩ := rfl

theorem transfer_instruction_666 : primitiveProgram ⟨666, by decide⟩ =
    .increment ⟨2, by decide⟩ ⟨667, by decide⟩ := rfl

theorem transfer_instruction_667 : primitiveProgram ⟨667, by decide⟩ =
    .jump ⟨664, by decide⟩ := rfl

theorem transfer_instruction_672 : primitiveProgram ⟨672, by decide⟩ =
    .decrement ⟨2, by decide⟩ ⟨673, by decide⟩ ⟨674, by decide⟩ := rfl

theorem transfer_instruction_673 : primitiveProgram ⟨673, by decide⟩ =
    .jump ⟨677, by decide⟩ := rfl

theorem transfer_instruction_674 : primitiveProgram ⟨674, by decide⟩ =
    .increment ⟨6, by decide⟩ ⟨675, by decide⟩ := rfl

theorem transfer_instruction_675 : primitiveProgram ⟨675, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨676, by decide⟩ := rfl

theorem transfer_instruction_676 : primitiveProgram ⟨676, by decide⟩ =
    .jump ⟨672, by decide⟩ := rfl

theorem transfer_instruction_677 : primitiveProgram ⟨677, by decide⟩ =
    .jump ⟨678, by decide⟩ := rfl

theorem transfer_instruction_678 : primitiveProgram ⟨678, by decide⟩ =
    .jump ⟨680, by decide⟩ := rfl

theorem transfer_instruction_680 : primitiveProgram ⟨680, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨681, by decide⟩ ⟨682, by decide⟩ := rfl

theorem transfer_instruction_681 : primitiveProgram ⟨681, by decide⟩ =
    .jump ⟨684, by decide⟩ := rfl

theorem transfer_instruction_682 : primitiveProgram ⟨682, by decide⟩ =
    .increment ⟨2, by decide⟩ ⟨683, by decide⟩ := rfl

theorem transfer_instruction_683 : primitiveProgram ⟨683, by decide⟩ =
    .jump ⟨680, by decide⟩ := rfl

theorem transfer_instruction_688 : primitiveProgram ⟨688, by decide⟩ =
    .decrement ⟨2, by decide⟩ ⟨689, by decide⟩ ⟨690, by decide⟩ := rfl

theorem transfer_instruction_689 : primitiveProgram ⟨689, by decide⟩ =
    .jump ⟨691, by decide⟩ := rfl

theorem transfer_instruction_690 : primitiveProgram ⟨690, by decide⟩ =
    .jump ⟨688, by decide⟩ := rfl

theorem transfer_instruction_691 : primitiveProgram ⟨691, by decide⟩ =
    .jump ⟨692, by decide⟩ := rfl

theorem transfer_instruction_692 : primitiveProgram ⟨692, by decide⟩ =
    .decrement ⟨6, by decide⟩ ⟨693, by decide⟩ ⟨694, by decide⟩ := rfl

theorem transfer_instruction_693 : primitiveProgram ⟨693, by decide⟩ =
    .jump ⟨696, by decide⟩ := rfl

theorem transfer_instruction_694 : primitiveProgram ⟨694, by decide⟩ =
    .increment ⟨2, by decide⟩ ⟨695, by decide⟩ := rfl

theorem transfer_instruction_695 : primitiveProgram ⟨695, by decide⟩ =
    .jump ⟨692, by decide⟩ := rfl

theorem transfer_instruction_696 : primitiveProgram ⟨696, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨697, by decide⟩ ⟨698, by decide⟩ := rfl

theorem transfer_instruction_697 : primitiveProgram ⟨697, by decide⟩ =
    .jump ⟨701, by decide⟩ := rfl

theorem transfer_instruction_698 : primitiveProgram ⟨698, by decide⟩ =
    .increment ⟨7, by decide⟩ ⟨699, by decide⟩ := rfl

theorem transfer_instruction_699 : primitiveProgram ⟨699, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨700, by decide⟩ := rfl

theorem transfer_instruction_700 : primitiveProgram ⟨700, by decide⟩ =
    .jump ⟨696, by decide⟩ := rfl

theorem transfer_instruction_701 : primitiveProgram ⟨701, by decide⟩ =
    .jump ⟨702, by decide⟩ := rfl

theorem transfer_instruction_702 : primitiveProgram ⟨702, by decide⟩ =
    .jump ⟨704, by decide⟩ := rfl

theorem transfer_instruction_704 : primitiveProgram ⟨704, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨705, by decide⟩ ⟨706, by decide⟩ := rfl

theorem transfer_instruction_705 : primitiveProgram ⟨705, by decide⟩ =
    .jump ⟨708, by decide⟩ := rfl

theorem transfer_instruction_706 : primitiveProgram ⟨706, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨707, by decide⟩ := rfl

theorem transfer_instruction_707 : primitiveProgram ⟨707, by decide⟩ =
    .jump ⟨704, by decide⟩ := rfl

theorem transfer_instruction_712 : primitiveProgram ⟨712, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨713, by decide⟩ ⟨714, by decide⟩ := rfl

theorem transfer_instruction_713 : primitiveProgram ⟨713, by decide⟩ =
    .jump ⟨717, by decide⟩ := rfl

theorem transfer_instruction_714 : primitiveProgram ⟨714, by decide⟩ =
    .increment ⟨6, by decide⟩ ⟨715, by decide⟩ := rfl

theorem transfer_instruction_715 : primitiveProgram ⟨715, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨716, by decide⟩ := rfl

theorem transfer_instruction_716 : primitiveProgram ⟨716, by decide⟩ =
    .jump ⟨712, by decide⟩ := rfl

theorem transfer_instruction_717 : primitiveProgram ⟨717, by decide⟩ =
    .jump ⟨718, by decide⟩ := rfl

theorem transfer_instruction_718 : primitiveProgram ⟨718, by decide⟩ =
    .jump ⟨720, by decide⟩ := rfl

theorem transfer_instruction_720 : primitiveProgram ⟨720, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨721, by decide⟩ ⟨722, by decide⟩ := rfl

theorem transfer_instruction_721 : primitiveProgram ⟨721, by decide⟩ =
    .jump ⟨724, by decide⟩ := rfl

theorem transfer_instruction_722 : primitiveProgram ⟨722, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨723, by decide⟩ := rfl

theorem transfer_instruction_723 : primitiveProgram ⟨723, by decide⟩ =
    .jump ⟨720, by decide⟩ := rfl

theorem transfer_instruction_728 : primitiveProgram ⟨728, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨729, by decide⟩ ⟨730, by decide⟩ := rfl

theorem transfer_instruction_729 : primitiveProgram ⟨729, by decide⟩ =
    .jump ⟨731, by decide⟩ := rfl

theorem transfer_instruction_730 : primitiveProgram ⟨730, by decide⟩ =
    .jump ⟨728, by decide⟩ := rfl

theorem transfer_instruction_731 : primitiveProgram ⟨731, by decide⟩ =
    .jump ⟨732, by decide⟩ := rfl

theorem transfer_instruction_732 : primitiveProgram ⟨732, by decide⟩ =
    .decrement ⟨6, by decide⟩ ⟨733, by decide⟩ ⟨734, by decide⟩ := rfl

theorem transfer_instruction_733 : primitiveProgram ⟨733, by decide⟩ =
    .jump ⟨736, by decide⟩ := rfl

theorem transfer_instruction_734 : primitiveProgram ⟨734, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨735, by decide⟩ := rfl

theorem transfer_instruction_735 : primitiveProgram ⟨735, by decide⟩ =
    .jump ⟨732, by decide⟩ := rfl

theorem transfer_instruction_736 : primitiveProgram ⟨736, by decide⟩ =
    .decrement ⟨2, by decide⟩ ⟨737, by decide⟩ ⟨738, by decide⟩ := rfl

theorem transfer_instruction_737 : primitiveProgram ⟨737, by decide⟩ =
    .jump ⟨740, by decide⟩ := rfl

theorem transfer_instruction_738 : primitiveProgram ⟨738, by decide⟩ =
    .increment ⟨7, by decide⟩ ⟨739, by decide⟩ := rfl

theorem transfer_instruction_739 : primitiveProgram ⟨739, by decide⟩ =
    .jump ⟨736, by decide⟩ := rfl

theorem transfer_instruction_744 : primitiveProgram ⟨744, by decide⟩ =
    .decrement ⟨0, by decide⟩ ⟨745, by decide⟩ ⟨746, by decide⟩ := rfl

theorem transfer_instruction_745 : primitiveProgram ⟨745, by decide⟩ =
    .jump ⟨749, by decide⟩ := rfl

theorem transfer_instruction_746 : primitiveProgram ⟨746, by decide⟩ =
    .increment ⟨6, by decide⟩ ⟨747, by decide⟩ := rfl

theorem transfer_instruction_747 : primitiveProgram ⟨747, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨748, by decide⟩ := rfl

theorem transfer_instruction_748 : primitiveProgram ⟨748, by decide⟩ =
    .jump ⟨744, by decide⟩ := rfl

theorem transfer_instruction_749 : primitiveProgram ⟨749, by decide⟩ =
    .jump ⟨750, by decide⟩ := rfl

theorem transfer_instruction_750 : primitiveProgram ⟨750, by decide⟩ =
    .jump ⟨752, by decide⟩ := rfl

theorem transfer_instruction_752 : primitiveProgram ⟨752, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨753, by decide⟩ ⟨754, by decide⟩ := rfl

theorem transfer_instruction_753 : primitiveProgram ⟨753, by decide⟩ =
    .jump ⟨756, by decide⟩ := rfl

theorem transfer_instruction_754 : primitiveProgram ⟨754, by decide⟩ =
    .increment ⟨0, by decide⟩ ⟨755, by decide⟩ := rfl

theorem transfer_instruction_755 : primitiveProgram ⟨755, by decide⟩ =
    .jump ⟨752, by decide⟩ := rfl

theorem transfer_site_24 :
    TransferSite primitiveProgram ⟨24, by decide⟩ ⟨32, by decide⟩ ⟨0, by decide⟩ [⟨4, by decide⟩, ⟨6, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨0, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨0, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_24, transfer_instruction_25, transfer_instruction_29, transfer_instruction_30,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_24, transfer_instruction_26, transfer_instruction_27, transfer_instruction_28,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_32 :
    TransferSite primitiveProgram ⟨32, by decide⟩ ⟨36, by decide⟩ ⟨6, by decide⟩ [⟨0, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨6, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨6, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_32, transfer_instruction_33,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_32, transfer_instruction_34, transfer_instruction_35,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_40 :
    TransferSite primitiveProgram ⟨40, by decide⟩ ⟨44, by decide⟩ ⟨3, by decide⟩ [] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨3, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨3, by decide⟩ values
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_40, transfer_instruction_41, transfer_instruction_43,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_40, transfer_instruction_42,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_48 :
    TransferSite primitiveProgram ⟨48, by decide⟩ ⟨56, by decide⟩ ⟨1, by decide⟩ [⟨2, by decide⟩, ⟨6, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨1, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨1, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_48, transfer_instruction_49, transfer_instruction_53, transfer_instruction_54,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_48, transfer_instruction_50, transfer_instruction_51, transfer_instruction_52,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_56 :
    TransferSite primitiveProgram ⟨56, by decide⟩ ⟨60, by decide⟩ ⟨6, by decide⟩ [⟨1, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨6, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨6, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_56, transfer_instruction_57,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_56, transfer_instruction_58, transfer_instruction_59,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_72 :
    TransferSite primitiveProgram ⟨72, by decide⟩ ⟨80, by decide⟩ ⟨4, by decide⟩ [⟨3, by decide⟩, ⟨6, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨4, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨4, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_72, transfer_instruction_73, transfer_instruction_77, transfer_instruction_78,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_72, transfer_instruction_74, transfer_instruction_75, transfer_instruction_76,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_80 :
    TransferSite primitiveProgram ⟨80, by decide⟩ ⟨84, by decide⟩ ⟨6, by decide⟩ [⟨4, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨6, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨6, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_80, transfer_instruction_81,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_80, transfer_instruction_82, transfer_instruction_83,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_92 :
    TransferSite primitiveProgram ⟨92, by decide⟩ ⟨96, by decide⟩ ⟨4, by decide⟩ [] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨4, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨4, by decide⟩ values
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_92, transfer_instruction_93, transfer_instruction_95,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_92, transfer_instruction_94,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_96 :
    TransferSite primitiveProgram ⟨96, by decide⟩ ⟨104, by decide⟩ ⟨0, by decide⟩ [⟨4, by decide⟩, ⟨6, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨0, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨0, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_96, transfer_instruction_97, transfer_instruction_101, transfer_instruction_102,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_96, transfer_instruction_98, transfer_instruction_99, transfer_instruction_100,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_104 :
    TransferSite primitiveProgram ⟨104, by decide⟩ ⟨108, by decide⟩ ⟨6, by decide⟩ [⟨0, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨6, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨6, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_104, transfer_instruction_105,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_104, transfer_instruction_106, transfer_instruction_107,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_116 :
    TransferSite primitiveProgram ⟨116, by decide⟩ ⟨120, by decide⟩ ⟨1, by decide⟩ [⟨4, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨1, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨1, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_116, transfer_instruction_117,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_116, transfer_instruction_118, transfer_instruction_119,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_128 :
    TransferSite primitiveProgram ⟨128, by decide⟩ ⟨132, by decide⟩ ⟨3, by decide⟩ [] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨3, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨3, by decide⟩ values
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_128, transfer_instruction_129, transfer_instruction_131,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_128, transfer_instruction_130,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_136 :
    TransferSite primitiveProgram ⟨136, by decide⟩ ⟨144, by decide⟩ ⟨4, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨4, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨4, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_136, transfer_instruction_137, transfer_instruction_141, transfer_instruction_142,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_136, transfer_instruction_138, transfer_instruction_139, transfer_instruction_140,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_144 :
    TransferSite primitiveProgram ⟨144, by decide⟩ ⟨148, by decide⟩ ⟨8, by decide⟩ [⟨4, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_144, transfer_instruction_145,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_144, transfer_instruction_146, transfer_instruction_147,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_152 :
    TransferSite primitiveProgram ⟨152, by decide⟩ ⟨160, by decide⟩ ⟨2, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨2, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨2, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_152, transfer_instruction_153, transfer_instruction_157, transfer_instruction_158,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_152, transfer_instruction_154, transfer_instruction_155, transfer_instruction_156,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_160 :
    TransferSite primitiveProgram ⟨160, by decide⟩ ⟨164, by decide⟩ ⟨8, by decide⟩ [⟨2, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_160, transfer_instruction_161,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_160, transfer_instruction_162, transfer_instruction_163,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_168 :
    TransferSite primitiveProgram ⟨168, by decide⟩ ⟨176, by decide⟩ ⟨3, by decide⟩ [⟨6, by decide⟩, ⟨7, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨3, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨3, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_168, transfer_instruction_169, transfer_instruction_173, transfer_instruction_174,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_168, transfer_instruction_170, transfer_instruction_171, transfer_instruction_172,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_176 :
    TransferSite primitiveProgram ⟨176, by decide⟩ ⟨180, by decide⟩ ⟨7, by decide⟩ [⟨3, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨7, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨7, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_176, transfer_instruction_177,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_176, transfer_instruction_178, transfer_instruction_179,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_180 :
    TransferSite primitiveProgram ⟨180, by decide⟩ ⟨184, by decide⟩ ⟨2, by decide⟩ [] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨2, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨2, by decide⟩ values
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_180, transfer_instruction_181, transfer_instruction_183,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_180, transfer_instruction_182,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_184 :
    TransferSite primitiveProgram ⟨184, by decide⟩ ⟨188, by decide⟩ ⟨6, by decide⟩ [⟨2, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨6, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨6, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_184, transfer_instruction_185,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_184, transfer_instruction_186, transfer_instruction_187,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_192 :
    TransferSite primitiveProgram ⟨192, by decide⟩ ⟨200, by decide⟩ ⟨4, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨4, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨4, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_192, transfer_instruction_193, transfer_instruction_197, transfer_instruction_198,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_192, transfer_instruction_194, transfer_instruction_195, transfer_instruction_196,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_200 :
    TransferSite primitiveProgram ⟨200, by decide⟩ ⟨204, by decide⟩ ⟨8, by decide⟩ [⟨4, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_200, transfer_instruction_201,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_200, transfer_instruction_202, transfer_instruction_203,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_208 :
    TransferSite primitiveProgram ⟨208, by decide⟩ ⟨216, by decide⟩ ⟨3, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨3, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨3, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_208, transfer_instruction_209, transfer_instruction_213, transfer_instruction_214,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_208, transfer_instruction_210, transfer_instruction_211, transfer_instruction_212,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_216 :
    TransferSite primitiveProgram ⟨216, by decide⟩ ⟨220, by decide⟩ ⟨8, by decide⟩ [⟨3, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_216, transfer_instruction_217,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_216, transfer_instruction_218, transfer_instruction_219,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_224 :
    TransferSite primitiveProgram ⟨224, by decide⟩ ⟨228, by decide⟩ ⟨3, by decide⟩ [] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨3, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨3, by decide⟩ values
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_224, transfer_instruction_225, transfer_instruction_227,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_224, transfer_instruction_226,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_228 :
    TransferSite primitiveProgram ⟨228, by decide⟩ ⟨232, by decide⟩ ⟨6, by decide⟩ [⟨3, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨6, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨6, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_228, transfer_instruction_229,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_228, transfer_instruction_230, transfer_instruction_231,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_256 :
    TransferSite primitiveProgram ⟨256, by decide⟩ ⟨264, by decide⟩ ⟨0, by decide⟩ [⟨4, by decide⟩, ⟨6, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨0, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨0, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_256, transfer_instruction_257, transfer_instruction_261, transfer_instruction_262,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_256, transfer_instruction_258, transfer_instruction_259, transfer_instruction_260,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_264 :
    TransferSite primitiveProgram ⟨264, by decide⟩ ⟨268, by decide⟩ ⟨6, by decide⟩ [⟨0, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨6, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨6, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_264, transfer_instruction_265,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_264, transfer_instruction_266, transfer_instruction_267,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_272 :
    TransferSite primitiveProgram ⟨272, by decide⟩ ⟨280, by decide⟩ ⟨3, by decide⟩ [⟨5, by decide⟩, ⟨6, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨3, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨3, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_272, transfer_instruction_273, transfer_instruction_277, transfer_instruction_278,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_272, transfer_instruction_274, transfer_instruction_275, transfer_instruction_276,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_280 :
    TransferSite primitiveProgram ⟨280, by decide⟩ ⟨284, by decide⟩ ⟨6, by decide⟩ [⟨3, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨6, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨6, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_280, transfer_instruction_281,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_280, transfer_instruction_282, transfer_instruction_283,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_284 :
    TransferSite primitiveProgram ⟨284, by decide⟩ ⟨288, by decide⟩ ⟨3, by decide⟩ [⟨7, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨3, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨3, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_284, transfer_instruction_285,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_284, transfer_instruction_286, transfer_instruction_287,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_296 :
    TransferSite primitiveProgram ⟨296, by decide⟩ ⟨304, by decide⟩ ⟨0, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨0, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨0, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_296, transfer_instruction_297, transfer_instruction_301, transfer_instruction_302,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_296, transfer_instruction_298, transfer_instruction_299, transfer_instruction_300,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_304 :
    TransferSite primitiveProgram ⟨304, by decide⟩ ⟨308, by decide⟩ ⟨8, by decide⟩ [⟨0, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_304, transfer_instruction_305,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_304, transfer_instruction_306, transfer_instruction_307,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_316 :
    TransferSite primitiveProgram ⟨316, by decide⟩ ⟨320, by decide⟩ ⟨2, by decide⟩ [⟨1, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨2, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨2, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_316, transfer_instruction_317,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_316, transfer_instruction_318, transfer_instruction_319,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_384 :
    TransferSite primitiveProgram ⟨384, by decide⟩ ⟨388, by decide⟩ ⟨3, by decide⟩ [] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨3, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨3, by decide⟩ values
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_384, transfer_instruction_385, transfer_instruction_387,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_384, transfer_instruction_386,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_392 :
    TransferSite primitiveProgram ⟨392, by decide⟩ ⟨400, by decide⟩ ⟨4, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨4, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨4, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_392, transfer_instruction_393, transfer_instruction_397, transfer_instruction_398,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_392, transfer_instruction_394, transfer_instruction_395, transfer_instruction_396,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_400 :
    TransferSite primitiveProgram ⟨400, by decide⟩ ⟨404, by decide⟩ ⟨8, by decide⟩ [⟨4, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_400, transfer_instruction_401,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_400, transfer_instruction_402, transfer_instruction_403,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_408 :
    TransferSite primitiveProgram ⟨408, by decide⟩ ⟨416, by decide⟩ ⟨2, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨2, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨2, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_408, transfer_instruction_409, transfer_instruction_413, transfer_instruction_414,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_408, transfer_instruction_410, transfer_instruction_411, transfer_instruction_412,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_416 :
    TransferSite primitiveProgram ⟨416, by decide⟩ ⟨420, by decide⟩ ⟨8, by decide⟩ [⟨2, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_416, transfer_instruction_417,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_416, transfer_instruction_418, transfer_instruction_419,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_424 :
    TransferSite primitiveProgram ⟨424, by decide⟩ ⟨432, by decide⟩ ⟨3, by decide⟩ [⟨6, by decide⟩, ⟨7, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨3, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨3, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_424, transfer_instruction_425, transfer_instruction_429, transfer_instruction_430,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_424, transfer_instruction_426, transfer_instruction_427, transfer_instruction_428,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_432 :
    TransferSite primitiveProgram ⟨432, by decide⟩ ⟨436, by decide⟩ ⟨7, by decide⟩ [⟨3, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨7, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨7, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_432, transfer_instruction_433,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_432, transfer_instruction_434, transfer_instruction_435,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_436 :
    TransferSite primitiveProgram ⟨436, by decide⟩ ⟨440, by decide⟩ ⟨2, by decide⟩ [] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨2, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨2, by decide⟩ values
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_436, transfer_instruction_437, transfer_instruction_439,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_436, transfer_instruction_438,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_440 :
    TransferSite primitiveProgram ⟨440, by decide⟩ ⟨444, by decide⟩ ⟨6, by decide⟩ [⟨2, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨6, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨6, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_440, transfer_instruction_441,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_440, transfer_instruction_442, transfer_instruction_443,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_448 :
    TransferSite primitiveProgram ⟨448, by decide⟩ ⟨456, by decide⟩ ⟨4, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨4, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨4, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_448, transfer_instruction_449, transfer_instruction_453, transfer_instruction_454,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_448, transfer_instruction_450, transfer_instruction_451, transfer_instruction_452,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_456 :
    TransferSite primitiveProgram ⟨456, by decide⟩ ⟨460, by decide⟩ ⟨8, by decide⟩ [⟨4, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_456, transfer_instruction_457,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_456, transfer_instruction_458, transfer_instruction_459,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_464 :
    TransferSite primitiveProgram ⟨464, by decide⟩ ⟨472, by decide⟩ ⟨3, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨3, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨3, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_464, transfer_instruction_465, transfer_instruction_469, transfer_instruction_470,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_464, transfer_instruction_466, transfer_instruction_467, transfer_instruction_468,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_472 :
    TransferSite primitiveProgram ⟨472, by decide⟩ ⟨476, by decide⟩ ⟨8, by decide⟩ [⟨3, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_472, transfer_instruction_473,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_472, transfer_instruction_474, transfer_instruction_475,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_480 :
    TransferSite primitiveProgram ⟨480, by decide⟩ ⟨484, by decide⟩ ⟨3, by decide⟩ [] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨3, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨3, by decide⟩ values
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_480, transfer_instruction_481, transfer_instruction_483,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_480, transfer_instruction_482,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_484 :
    TransferSite primitiveProgram ⟨484, by decide⟩ ⟨488, by decide⟩ ⟨6, by decide⟩ [⟨3, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨6, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨6, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_484, transfer_instruction_485,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_484, transfer_instruction_486, transfer_instruction_487,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_512 :
    TransferSite primitiveProgram ⟨512, by decide⟩ ⟨520, by decide⟩ ⟨2, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨2, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨2, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_512, transfer_instruction_513, transfer_instruction_517, transfer_instruction_518,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_512, transfer_instruction_514, transfer_instruction_515, transfer_instruction_516,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_520 :
    TransferSite primitiveProgram ⟨520, by decide⟩ ⟨524, by decide⟩ ⟨8, by decide⟩ [⟨2, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_520, transfer_instruction_521,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_520, transfer_instruction_522, transfer_instruction_523,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_528 :
    TransferSite primitiveProgram ⟨528, by decide⟩ ⟨536, by decide⟩ ⟨2, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨2, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨2, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_528, transfer_instruction_529, transfer_instruction_533, transfer_instruction_534,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_528, transfer_instruction_530, transfer_instruction_531, transfer_instruction_532,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_536 :
    TransferSite primitiveProgram ⟨536, by decide⟩ ⟨540, by decide⟩ ⟨8, by decide⟩ [⟨2, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_536, transfer_instruction_537,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_536, transfer_instruction_538, transfer_instruction_539,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_544 :
    TransferSite primitiveProgram ⟨544, by decide⟩ ⟨548, by decide⟩ ⟨2, by decide⟩ [] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨2, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨2, by decide⟩ values
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_544, transfer_instruction_545, transfer_instruction_547,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_544, transfer_instruction_546,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_548 :
    TransferSite primitiveProgram ⟨548, by decide⟩ ⟨552, by decide⟩ ⟨6, by decide⟩ [⟨2, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨6, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨6, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_548, transfer_instruction_549,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_548, transfer_instruction_550, transfer_instruction_551,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_552 :
    TransferSite primitiveProgram ⟨552, by decide⟩ ⟨560, by decide⟩ ⟨3, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨3, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨3, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_552, transfer_instruction_553, transfer_instruction_557, transfer_instruction_558,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_552, transfer_instruction_554, transfer_instruction_555, transfer_instruction_556,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_560 :
    TransferSite primitiveProgram ⟨560, by decide⟩ ⟨564, by decide⟩ ⟨8, by decide⟩ [⟨3, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_560, transfer_instruction_561,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_560, transfer_instruction_562, transfer_instruction_563,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_568 :
    TransferSite primitiveProgram ⟨568, by decide⟩ ⟨576, by decide⟩ ⟨3, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨3, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨3, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_568, transfer_instruction_569, transfer_instruction_573, transfer_instruction_574,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_568, transfer_instruction_570, transfer_instruction_571, transfer_instruction_572,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_576 :
    TransferSite primitiveProgram ⟨576, by decide⟩ ⟨580, by decide⟩ ⟨8, by decide⟩ [⟨3, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_576, transfer_instruction_577,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_576, transfer_instruction_578, transfer_instruction_579,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_584 :
    TransferSite primitiveProgram ⟨584, by decide⟩ ⟨588, by decide⟩ ⟨3, by decide⟩ [] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨3, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨3, by decide⟩ values
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_584, transfer_instruction_585, transfer_instruction_587,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_584, transfer_instruction_586,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_588 :
    TransferSite primitiveProgram ⟨588, by decide⟩ ⟨592, by decide⟩ ⟨6, by decide⟩ [⟨3, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨6, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨6, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_588, transfer_instruction_589,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_588, transfer_instruction_590, transfer_instruction_591,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_592 :
    TransferSite primitiveProgram ⟨592, by decide⟩ ⟨596, by decide⟩ ⟨5, by decide⟩ [⟨7, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨5, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨5, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_592, transfer_instruction_593,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_592, transfer_instruction_594, transfer_instruction_595,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_600 :
    TransferSite primitiveProgram ⟨600, by decide⟩ ⟨608, by decide⟩ ⟨2, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨2, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨2, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_600, transfer_instruction_601, transfer_instruction_605, transfer_instruction_606,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_600, transfer_instruction_602, transfer_instruction_603, transfer_instruction_604,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_608 :
    TransferSite primitiveProgram ⟨608, by decide⟩ ⟨612, by decide⟩ ⟨8, by decide⟩ [⟨2, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_608, transfer_instruction_609,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_608, transfer_instruction_610, transfer_instruction_611,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_616 :
    TransferSite primitiveProgram ⟨616, by decide⟩ ⟨620, by decide⟩ ⟨2, by decide⟩ [] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨2, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨2, by decide⟩ values
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_616, transfer_instruction_617, transfer_instruction_619,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_616, transfer_instruction_618,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_620 :
    TransferSite primitiveProgram ⟨620, by decide⟩ ⟨624, by decide⟩ ⟨6, by decide⟩ [⟨2, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨6, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨6, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_620, transfer_instruction_621,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_620, transfer_instruction_622, transfer_instruction_623,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_624 :
    TransferSite primitiveProgram ⟨624, by decide⟩ ⟨628, by decide⟩ ⟨1, by decide⟩ [⟨7, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨1, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨1, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_624, transfer_instruction_625,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_624, transfer_instruction_626, transfer_instruction_627,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_632 :
    TransferSite primitiveProgram ⟨632, by decide⟩ ⟨640, by decide⟩ ⟨3, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨3, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨3, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_632, transfer_instruction_633, transfer_instruction_637, transfer_instruction_638,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_632, transfer_instruction_634, transfer_instruction_635, transfer_instruction_636,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_640 :
    TransferSite primitiveProgram ⟨640, by decide⟩ ⟨644, by decide⟩ ⟨8, by decide⟩ [⟨3, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_640, transfer_instruction_641,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_640, transfer_instruction_642, transfer_instruction_643,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_648 :
    TransferSite primitiveProgram ⟨648, by decide⟩ ⟨652, by decide⟩ ⟨3, by decide⟩ [] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨3, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨3, by decide⟩ values
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_648, transfer_instruction_649, transfer_instruction_651,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_648, transfer_instruction_650,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_652 :
    TransferSite primitiveProgram ⟨652, by decide⟩ ⟨656, by decide⟩ ⟨6, by decide⟩ [⟨3, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨6, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨6, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_652, transfer_instruction_653,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_652, transfer_instruction_654, transfer_instruction_655,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_656 :
    TransferSite primitiveProgram ⟨656, by decide⟩ ⟨664, by decide⟩ ⟨2, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨2, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨2, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_656, transfer_instruction_657, transfer_instruction_661, transfer_instruction_662,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_656, transfer_instruction_658, transfer_instruction_659, transfer_instruction_660,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_664 :
    TransferSite primitiveProgram ⟨664, by decide⟩ ⟨668, by decide⟩ ⟨8, by decide⟩ [⟨2, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_664, transfer_instruction_665,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_664, transfer_instruction_666, transfer_instruction_667,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_672 :
    TransferSite primitiveProgram ⟨672, by decide⟩ ⟨680, by decide⟩ ⟨2, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨2, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨2, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_672, transfer_instruction_673, transfer_instruction_677, transfer_instruction_678,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_672, transfer_instruction_674, transfer_instruction_675, transfer_instruction_676,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_680 :
    TransferSite primitiveProgram ⟨680, by decide⟩ ⟨684, by decide⟩ ⟨8, by decide⟩ [⟨2, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_680, transfer_instruction_681,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_680, transfer_instruction_682, transfer_instruction_683,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_688 :
    TransferSite primitiveProgram ⟨688, by decide⟩ ⟨692, by decide⟩ ⟨2, by decide⟩ [] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨2, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨2, by decide⟩ values
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_688, transfer_instruction_689, transfer_instruction_691,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_688, transfer_instruction_690,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_692 :
    TransferSite primitiveProgram ⟨692, by decide⟩ ⟨696, by decide⟩ ⟨6, by decide⟩ [⟨2, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨6, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨6, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_692, transfer_instruction_693,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_692, transfer_instruction_694, transfer_instruction_695,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_696 :
    TransferSite primitiveProgram ⟨696, by decide⟩ ⟨704, by decide⟩ ⟨3, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨3, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨3, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_696, transfer_instruction_697, transfer_instruction_701, transfer_instruction_702,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_696, transfer_instruction_698, transfer_instruction_699, transfer_instruction_700,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_704 :
    TransferSite primitiveProgram ⟨704, by decide⟩ ⟨708, by decide⟩ ⟨8, by decide⟩ [⟨3, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_704, transfer_instruction_705,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_704, transfer_instruction_706, transfer_instruction_707,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_712 :
    TransferSite primitiveProgram ⟨712, by decide⟩ ⟨720, by decide⟩ ⟨3, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨3, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨3, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_712, transfer_instruction_713, transfer_instruction_717, transfer_instruction_718,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_712, transfer_instruction_714, transfer_instruction_715, transfer_instruction_716,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_720 :
    TransferSite primitiveProgram ⟨720, by decide⟩ ⟨724, by decide⟩ ⟨8, by decide⟩ [⟨3, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_720, transfer_instruction_721,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_720, transfer_instruction_722, transfer_instruction_723,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_728 :
    TransferSite primitiveProgram ⟨728, by decide⟩ ⟨732, by decide⟩ ⟨3, by decide⟩ [] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨3, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨3, by decide⟩ values
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_728, transfer_instruction_729, transfer_instruction_731,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_728, transfer_instruction_730,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_732 :
    TransferSite primitiveProgram ⟨732, by decide⟩ ⟨736, by decide⟩ ⟨6, by decide⟩ [⟨3, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨6, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨6, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_732, transfer_instruction_733,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_732, transfer_instruction_734, transfer_instruction_735,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_736 :
    TransferSite primitiveProgram ⟨736, by decide⟩ ⟨740, by decide⟩ ⟨2, by decide⟩ [⟨7, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨2, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨2, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_736, transfer_instruction_737,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_736, transfer_instruction_738, transfer_instruction_739,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_744 :
    TransferSite primitiveProgram ⟨744, by decide⟩ ⟨752, by decide⟩ ⟨0, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨0, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨0, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_744, transfer_instruction_745, transfer_instruction_749, transfer_instruction_750,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_744, transfer_instruction_746, transfer_instruction_747, transfer_instruction_748,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

theorem transfer_site_752 :
    TransferSite primitiveProgram ⟨752, by decide⟩ ⟨756, by decide⟩ ⟨8, by decide⟩ [⟨0, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_752, transfer_instruction_753,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_752, transfer_instruction_754, transfer_instruction_755,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

end RiemannMachineVerification.Optimized278
