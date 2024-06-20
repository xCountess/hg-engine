.include "asm/include/battle_commands.inc"

.data

_000:
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_SEMI_INVULNERABLE, _051
    CheckSubstitute BATTLER_CATEGORY_DEFENDER, _051
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_DEFENDER, BMON_DATA_STATUS2, STATUS2_CURSE, _051
    Call BATTLE_SUBSCRIPT_ATTACK_MESSAGE_AND_ANIMATION
    UpdateMonData OPCODE_FLAG_ON, BATTLER_CATEGORY_DEFENDER, BMON_DATA_STATUS2, STATUS2_CURSE
    UpdateMonDataFromVar OPCODE_GET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_MAXHP, BSCRIPT_VAR_HP_CALC
    UpdateVar OPCODE_MUL, BSCRIPT_VAR_HP_CALC, -1
    DivideVarByValue BSCRIPT_VAR_HP_CALC, 2
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_NO_BLINK
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_MSG_BATTLER_TEMP, BSCRIPT_VAR_BATTLER_ATTACKER
    Call BATTLE_SUBSCRIPT_UPDATE_HP
    // {0} cut its own HP and laid a curse on {1}!
    PrintMessage 417, TAG_NICKNAME_NICKNAME, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_DEFENDER
    Wait 
    WaitButtonABTime 30
    End 

_051:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 
