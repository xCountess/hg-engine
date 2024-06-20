.include "asm/include/battle_commands.inc"

.data

_000:
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_EXTREMELY_HARSH_SUNLIGHT, _030
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_HEAVY_RAIN, _030
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_STRONG_WINDS, _030
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_SUN_ALL, _029
    PlayBattleAnimation BATTLER_CATEGORY_PLAYER, BATTLE_ANIMATION_WEATHER_SUN
    Wait 
    Call BATTLE_SUBSCRIPT_HANDLE_SUN_TEMPORARY

_029:
    End 

_030:
    Call BATTLE_SUBSCRIPT_PREVENT_CHANGING_WEATHER
    End 
