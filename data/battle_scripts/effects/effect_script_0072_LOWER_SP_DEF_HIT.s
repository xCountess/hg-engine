.include "asm/include/battle_commands.inc"

.data

_000:
    CalcCrit 
    CalcDamage 
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_TO_DEFENDER|MOVE_SUBSCRIPT_PTR_SP_DEFENSE_DOWN_1_STAGE
    End 
