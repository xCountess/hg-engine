.include "asm/include/battle_commands.inc"

.data

_000:
    TryPerishSong _045
    Call BATTLE_SUBSCRIPT_ATTACK_MESSAGE_AND_ANIMATION
    // All Pokémon hearing the song will faint in three turns!
    PrintMessage 822, TAG_NONE
    Wait 
    WaitButtonABTime 30
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MSG_MOVE_TEMP, MOVE_PERISH_SONG
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MSG_ABILITY_TEMP, ABILITY_SOUNDPROOF
    UpdateVar OPCODE_SET, BSCRIPT_VAR_BATTLER_SPEED_TEMP, 0

_021:
    GetMonBySpeedOrder BSCRIPT_VAR_MSG_BATTLER_TEMP
    CheckIgnorableAbility CHECK_OPCODE_NOT_HAVE, BATTLER_CATEGORY_MSG_TEMP, ABILITY_SOUNDPROOF, _037
    // {0}’s {1} blocks {2}!
    PrintMessage 689, TAG_NICKNAME_ABILITY_MOVE, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30

_037:
    UpdateVar OPCODE_ADD, BSCRIPT_VAR_BATTLER_SPEED_TEMP, 1
    GoToIfValidMon BSCRIPT_VAR_BATTLER_SPEED_TEMP, _021
    End 

_045:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 
