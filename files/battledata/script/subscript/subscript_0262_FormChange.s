    .include "macros/btlcmd.inc"

    .data

_000:
    CompareMonDataToValue OPCODE_FLAG_NOT, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_STATUS2, STATUS2_SUBSTITUTE, _016
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_SUB_OUT
    Wait 
    RestoreSprite BATTLER_CATEGORY_MSG_TEMP
    Wait 
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_SUB_IN
    Wait 

_016:
    PlaySound BATTLER_CATEGORY_MSG_TEMP, SEQ_SE_DP_W100
    SetMosaic BATTLER_CATEGORY_MSG_TEMP, 8, 1
    Wait 
    ChangeForm BATTLER_CATEGORY_MSG_TEMP
    PlaySound BATTLER_CATEGORY_MSG_TEMP, SEQ_SE_DP_W107
    SetMosaic BATTLER_CATEGORY_MSG_TEMP, 0, 1
    Wait 
    // {0} transformed!
    PrintMessage msg_0197_00721, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    CompareMonDataToValue OPCODE_FLAG_NOT, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_STATUS2, STATUS2_SUBSTITUTE, _058
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_SUB_OUT
    Wait 
    RefreshSprite BATTLER_CATEGORY_MSG_TEMP
    Wait 
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_SUB_IN
    Wait 

_058:
    End 