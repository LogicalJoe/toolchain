; C Functions present in the CE OS and Bootcode

; --- External Definitions -------------------
	.assume ADL=1
	.def _boot_GetBootMajorVer
	.def _boot_GetHardwareVer
	.def _boot_GetBootMinorVer
	.def _boot_DebugPrintf
	.def _boot_ClearVRAM
	.def _boot_TurnOff
	.def _boot_NewLine
	.def _boot_Set6MHzMode
	.def _boot_Set48MHzMode
	.def _boot_Set6MHzModeI
	.def _boot_Set48MHzModeI
	.def _boot_GetBatteryStatus
	.def _boot_WaitShort
	.def _boot_CheckOnPressed
	.def _boot_SetDate
	.def _boot_GetDate
	.def _boot_GetTime
	.def _boot_SetTime
	.def _boot_IsAfterNoon
	
	.def _os_PushErrorHandler
	.def _os_PopErrorHandler
	.def _os_ThrowError
	.def _os_RealCopy
	.def _os_RealAsinRad
	.def _os_RealAcosRad
	.def _os_RealAtanRad
	.def _os_RealAdd
	.def _os_CplxSquare
	.def _os_RealCompare
	.def _os_RealCosRad
	.def _os_RealRadToDeg
	.def _os_RealDiv
	.def _os_RealExp
	.def _os_RealFloor
	.def _os_RealToStr
	.def _os_RealFrac
	.def _os_RealGcd
	.def _os_RealRoundInt
	.def _os_RealLcm
	.def _os_RealLog
	.def _os_RealMax
	.def _os_RealMin
	.def _os_RealMul
	.def _os_RealNcr
	.def _os_RealNeg
	.def _os_RealNpr
	.def _os_RealPow
	.def _os_RealDegToRad
	.def _os_RealRandInt
	.def _os_RealInv
	.def _os_RealMod
	.def _os_RealRound
	.def _os_RealSinRad
	.def _os_RealSqrt
	.def _os_RealSub
	.def _os_RealTanRad
	.def _os_StrToReal
	.def _os_RealInt
	.def _os_SetFlagBits
	.def _os_ResetFlagBits
	.def _os_TestFlagBits
	.def _os_SetFlagByte
	.def _os_GetFlagByte
	.def _os_GetCursorPos
	.def _os_PutStrFull
	.def _os_PutStrLine
	.def _os_SetCursorPos
	.def _os_AppInit
	.def _os_GetKey
	.def _os_GetCSC
	.def _os_DisableCursor
	.def _os_EnableCursor
	.def _os_FontDrawText
	.def _os_FontGetHeight
	.def _os_FontGetWidth
	.def _os_InitDrawing
	.def _os_SetDrawBGColor
	.def _os_SetDrawFGColor
	.def _os_FontSelect
	.def _os_SetTimer1
	.def _os_DisableTimer1
	.def _os_GetSystemStats
	.def _os_GetDrawBGColor
	.def _os_GetDrawFGColor
	.def _os_FontGetID
	.def _os_RealToInt24
	.def _os_Int24ToReal
	.def _os_ForceCmdNoChar
	.def _os_GetSymTablePtr
	.def _os_NextSymEntry
	.def _os_ChkFindSym
	.def _os_MemChk
	.def _os_SetTimer2
	.def _os_DisableTimer2
	.def _os_FloatToReal
	.def _os_RealToFloat
	.def _os_FontDrawTransText
	.def _os_CreateAppVar
	.def _asm_MoveDown
	.def _asm_MoveUp
	.def _asm_HomeUp
	.def _asm_RunIndicOn
	.def _asm_RunIndicOff
	.def _asm_DisableAPD
	.def _asm_EnableAPD
	.def _asm_ArcChk
; --------------------------------------------

; --- Location Equates -----------------------
_boot_GetBootMajorVer           equ 000080h
_boot_GetHardwareVer            equ 000084h
_boot_GetBootMinorVer           equ 00008Ch
_boot_DebugPrintf               equ 0000B4h
_boot_ClearVRAM                 equ 000374h
_boot_TurnOff                   equ 000388h
_boot_NewLine                   equ 000390h
_boot_Set6MHzMode               equ 00039Ch
_boot_Set48MHzMode              equ 0003A0h
_boot_Set6MHzModeI              equ 0003A4h
_boot_Set48MHzModeI             equ 0003A8h
_boot_GetBatteryStatus          equ 0003B0h
_boot_WaitShort                 equ 0003B4h
_boot_CheckOnPressed            equ 00057Ch
_boot_SetDate                   equ 000598h
_boot_GetDate                   equ 0005A8h
_boot_GetTime                   equ 0005B0h
_boot_SetTime                   equ 0005B4h
_boot_IsAfterNoon               equ 0005C8h

_os_PushErrorHandler            equ 021C78h
_os_PopErrorHandler             equ 021C7Ch
_os_ThrowError                  equ 021C80h
_os_RealCopy                    equ 021C84h
_os_RealAsinRad                 equ 021C88h
_os_RealAcosRad                 equ 021C8Ch
_os_RealAtanRad                 equ 021C90h
_os_RealAdd                     equ 021C94h
_os_CplxSquare                  equ 021C98h
_os_RealCompare                 equ 021C9Ch
_os_RealCosRad                  equ 021CA0h
_os_RealRadToDeg                equ 021CA4h
_os_RealDiv                     equ 021CA8h
_os_RealExp                     equ 021CACh
_os_RealFloor                   equ 021CB0h
_os_RealToStr                   equ 021CB4h
_os_RealFrac                    equ 021CB8h
_os_RealGcd                     equ 021CBCh
_os_RealRoundInt                equ 021CC0h
_os_RealLcm                     equ 021CC4h
_os_RealLog                     equ 021CC8h
_os_RealMax                     equ 021CCCh
_os_RealMin                     equ 021CD0h
_os_RealMul                     equ 021CD4h
_os_RealNcr                     equ 021CD8h
_os_RealNeg                     equ 021CDCh
_os_RealNpr                     equ 021CE0h
_os_RealPow                     equ 021CE4h
_os_RealDegToRad                equ 021CE8h
_os_RealRandInt                 equ 021CECh
_os_RealInv                     equ 021CF0h
_os_RealMod                     equ 021CF4h
_os_RealRound                   equ 021CF8h
_os_RealSinRad                  equ 021CFCh
_os_RealSqrt                    equ 021D00h
_os_RealSub                     equ 021D04h
_os_RealTanRad                  equ 021D08h
_os_StrToReal                   equ 021D0Ch
_os_RealInt                     equ 021D10h
_os_SetFlagBits                 equ 021D14h
_os_ResetFlagBits               equ 021D18h
_os_TestFlagBits                equ 021D1Ch
_os_SetFlagByte                 equ 021D20h
_os_GetFlagByte                 equ 021D24h
_os_GetCursorPos                equ 021D28h
_os_PutStrFull                  equ 021D2Ch
_os_PutStrLine                  equ 021D30h
_os_SetCursorPos                equ 021D34h
_os_AppInit                     equ 021D40h
_os_GetKey                      equ 021D38h
_os_GetCSC                      equ 021D3Ch
_os_DisableCursor               equ 021DE4h
_os_EnableCursor                equ 021DE8h
_os_FontDrawText                equ 021E00h
_os_FontGetHeight               equ 021E14h
_os_FontGetWidth                equ 021E18h
_os_InitDrawing                 equ 021E1Ch
_os_SetDrawBGColor              equ 021E20h
_os_SetDrawFGColor              equ 021E24h
_os_FontSelect                  equ 021E28h
_os_SetTimer1                   equ 021EC8h
_os_DisableTimer1               equ 021ECCh
_os_GetSystemStats              equ 021ED4h
_os_GetDrawBGColor              equ 021EE4h
_os_GetDrawFGColor              equ 021EE8h
_os_FontGetID                   equ 021EECh
_os_RealToInt24                 equ 021EF4h
_os_Int24ToReal                 equ 021EF8h
_os_ForceCmdNoChar              equ 021FA8h
_os_GetSymTablePtr              equ 021FB0h
_os_NextSymEntry                equ 021FB4h
_os_ChkFindSym                  equ 021FB8h
_os_MemChk                      equ 021FF0h
_os_SetTimer2                   equ 022080h
_os_DisableTimer2               equ 022084h
_os_FloatToReal                 equ 022170h
_os_RealToFloat                 equ 022174h
_os_FontDrawTransText           equ 022178h
_os_CreateAppVar                equ 022184h

; Directly callable asm functions

_asm_MoveDown                   equ 0207F4h
_asm_MoveUp                     equ 020800h
_asm_HomeUp                     equ 020828h
_asm_RunIndicOn                 equ 020844h
_asm_RunIndicOff                equ 020848h
_asm_DisableAPD                 equ 021134h
_asm_EnableAPD                  equ 021138h
_asm_ArcChk                     equ 022040h
; --------------------------------------------

	end
