; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

include listing.inc

INCLUDELIB OLDNAMES

PUBLIC	_tcsncpy
PUBLIC	??_C@_0N@NHGLKGEC@KERNEL32?4DLL?$AA@		; `string'
PUBLIC	??_C@_0BJ@JEFKDHMD@CreateToolhelp32Snapshot?$AA@ ; `string'
PUBLIC	??_C@_0O@CNMFJJGO@Module32First?$AA@		; `string'
PUBLIC	??_C@_0N@KIGOLBLC@Module32Next?$AA@		; `string'
PUBLIC	??_C@_0P@ILGHDLOE@Process32First?$AA@		; `string'
PUBLIC	??_C@_0O@LGJLFMBH@Process32Next?$AA@		; `string'
PUBLIC	??_C@_0O@DHAEEPDO@Thread32First?$AA@		; `string'
PUBLIC	??_C@_0N@LDGMJMKG@Thread32Next?$AA@		; `string'
PUBLIC	??_C@_0CI@COOMGIIK@Unable?5to?5get?5module?5snapshot?5fo@ ; `string'
EXTRN	__imp__mbsnbcpy:PROC
g_bInitialized DD 01H DUP (?)
	ALIGN	8

g_pCreateToolhelp32Snapshot DQ 01H DUP (?)
g_pModule32First DQ 01H DUP (?)
g_pModule32Next DQ 01H DUP (?)
g_pProcess32First DQ 01H DUP (?)
g_pProcess32Next DQ 01H DUP (?)
g_pThread32First DQ 01H DUP (?)
g_pThread32Next DQ 01H DUP (?)
;	COMDAT ??_C@_0CI@COOMGIIK@Unable?5to?5get?5module?5snapshot?5fo@
CONST	SEGMENT
??_C@_0CI@COOMGIIK@Unable?5to?5get?5module?5snapshot?5fo@ DB 'Unable to g'
	DB	'et module snapshot for %08X', 0aH, 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_0N@LDGMJMKG@Thread32Next?$AA@
CONST	SEGMENT
??_C@_0N@LDGMJMKG@Thread32Next?$AA@ DB 'Thread32Next', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0O@DHAEEPDO@Thread32First?$AA@
CONST	SEGMENT
??_C@_0O@DHAEEPDO@Thread32First?$AA@ DB 'Thread32First', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0O@LGJLFMBH@Process32Next?$AA@
CONST	SEGMENT
??_C@_0O@LGJLFMBH@Process32Next?$AA@ DB 'Process32Next', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0P@ILGHDLOE@Process32First?$AA@
CONST	SEGMENT
??_C@_0P@ILGHDLOE@Process32First?$AA@ DB 'Process32First', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0N@KIGOLBLC@Module32Next?$AA@
CONST	SEGMENT
??_C@_0N@KIGOLBLC@Module32Next?$AA@ DB 'Module32Next', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0O@CNMFJJGO@Module32First?$AA@
CONST	SEGMENT
??_C@_0O@CNMFJJGO@Module32First?$AA@ DB 'Module32First', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0BJ@JEFKDHMD@CreateToolhelp32Snapshot?$AA@
CONST	SEGMENT
??_C@_0BJ@JEFKDHMD@CreateToolhelp32Snapshot?$AA@ DB 'CreateToolhelp32Snap'
	DB	'shot', 00H					; `string'
CONST	ENDS
;	COMDAT ??_C@_0N@NHGLKGEC@KERNEL32?4DLL?$AA@
CONST	SEGMENT
??_C@_0N@NHGLKGEC@KERNEL32?4DLL?$AA@ DB 'KERNEL32.DLL', 00H ; `string'
PI_MUL_2 DD	040c90fdbr			; 6.28319
pdata	SEGMENT
$pdata$?InitTOOLHELP32@@YAHXZ DD imagerel ?InitTOOLHELP32@@YAHXZ
	DD	imagerel ?InitTOOLHELP32@@YAHXZ+30
	DD	imagerel $unwind$?InitTOOLHELP32@@YAHXZ
$pdata$0$?InitTOOLHELP32@@YAHXZ DD imagerel ?InitTOOLHELP32@@YAHXZ+30
	DD	imagerel ?InitTOOLHELP32@@YAHXZ+300
	DD	imagerel $chain$0$?InitTOOLHELP32@@YAHXZ
$pdata$2$?InitTOOLHELP32@@YAHXZ DD imagerel ?InitTOOLHELP32@@YAHXZ+300
	DD	imagerel ?InitTOOLHELP32@@YAHXZ+328
	DD	imagerel $chain$2$?InitTOOLHELP32@@YAHXZ
pdata	ENDS
xdata	SEGMENT
$unwind$?InitTOOLHELP32@@YAHXZ DD 010401H
	DD	04204H
$chain$0$?InitTOOLHELP32@@YAHXZ DD 020521H
	DD	043405H
	DD	imagerel ?InitTOOLHELP32@@YAHXZ
	DD	imagerel ?InitTOOLHELP32@@YAHXZ+30
	DD	imagerel $unwind$?InitTOOLHELP32@@YAHXZ
$chain$2$?InitTOOLHELP32@@YAHXZ DD 020021H
	DD	043400H
	DD	imagerel ?InitTOOLHELP32@@YAHXZ
	DD	imagerel ?InitTOOLHELP32@@YAHXZ+30
	DD	imagerel $unwind$?InitTOOLHELP32@@YAHXZ
; Function compile flags: /Ogtpy
; File c:\users\nummer\documents\github\olr-3.0\src\xray\xrcore\blackbox\tlhelpprocessinfo.cpp
xdata	ENDS
_TEXT	SEGMENT
?InitTOOLHELP32@@YAHXZ PROC				; InitTOOLHELP32

; 54   : {

	sub	rsp, 40					; 00000028H

; 55   :     if ( TRUE == g_bInitialized )

	cmp	DWORD PTR g_bInitialized, 1
	jne	SHORT $LN4@InitTOOLHE

; 56   :     {
; 57   :         return ( TRUE ) ;

	mov	eax, 1

; 128  :     }
; 129  :     return ( bRet ) ;
; 130  : }

	add	rsp, 40					; 00000028H
	ret	0
$LN4@InitTOOLHE:

; 58   :     }
; 59   : 
; 60   :     BOOL      bRet    = FALSE ;
; 61   :     HINSTANCE hKernel = NULL  ;
; 62   : 
; 63   :     // Obtain the module handle of the kernel to retrieve addresses of
; 64   :     // the tool helper functions.
; 65   :     hKernel = GetModuleHandleA ( "KERNEL32.DLL" ) ;

	lea	rcx, OFFSET FLAT:??_C@_0N@NHGLKGEC@KERNEL32?4DLL?$AA@
	mov	QWORD PTR [rsp+32], rbx
	call	QWORD PTR __imp_GetModuleHandleA
	mov	rbx, rax

; 66   :     ASSERT ( NULL != hKernel ) ;
; 67   : 
; 68   :     if ( NULL != hKernel )

	test	rax, rax
	je	$LN3@InitTOOLHE

; 69   :     {
; 70   :         g_pCreateToolhelp32Snapshot =
; 71   :            (CREATESNAPSHOT)GetProcAddress ( hKernel ,
; 72   :                                             "CreateToolhelp32Snapshot");

	lea	rdx, OFFSET FLAT:??_C@_0BJ@JEFKDHMD@CreateToolhelp32Snapshot?$AA@
	mov	rcx, rax
	call	QWORD PTR __imp_GetProcAddress

; 73   :         ASSERT ( NULL != g_pCreateToolhelp32Snapshot ) ;
; 74   : 
; 75   :         g_pModule32First = (MODULEWALK)GetProcAddress (hKernel ,
; 76   :                                                        "Module32First");

	lea	rdx, OFFSET FLAT:??_C@_0O@CNMFJJGO@Module32First?$AA@
	mov	rcx, rbx
	mov	QWORD PTR g_pCreateToolhelp32Snapshot, rax
	call	QWORD PTR __imp_GetProcAddress

; 77   :         ASSERT ( NULL != g_pModule32First ) ;
; 78   : 
; 79   :         g_pModule32Next = (MODULEWALK)GetProcAddress (hKernel        ,
; 80   :                                                       "Module32Next"  );

	lea	rdx, OFFSET FLAT:??_C@_0N@KIGOLBLC@Module32Next?$AA@
	mov	rcx, rbx
	mov	QWORD PTR g_pModule32First, rax
	call	QWORD PTR __imp_GetProcAddress

; 81   :         ASSERT ( NULL != g_pModule32Next ) ;
; 82   : 
; 83   :         g_pProcess32First =
; 84   :                 (PROCESSWALK)GetProcAddress ( hKernel          ,
; 85   :                                               "Process32First"  ) ;

	lea	rdx, OFFSET FLAT:??_C@_0P@ILGHDLOE@Process32First?$AA@
	mov	rcx, rbx
	mov	QWORD PTR g_pModule32Next, rax
	call	QWORD PTR __imp_GetProcAddress

; 86   :         ASSERT ( NULL != g_pProcess32First ) ;
; 87   : 
; 88   :         g_pProcess32Next =
; 89   :                 (PROCESSWALK)GetProcAddress ( hKernel         ,
; 90   :                                               "Process32Next" ) ;

	lea	rdx, OFFSET FLAT:??_C@_0O@LGJLFMBH@Process32Next?$AA@
	mov	rcx, rbx
	mov	QWORD PTR g_pProcess32First, rax
	call	QWORD PTR __imp_GetProcAddress

; 91   :         ASSERT ( NULL != g_pProcess32Next ) ;
; 92   : 
; 93   :         g_pThread32First =
; 94   :                 (THREADWALK)GetProcAddress ( hKernel         ,
; 95   :                                              "Thread32First"  ) ;

	lea	rdx, OFFSET FLAT:??_C@_0O@DHAEEPDO@Thread32First?$AA@
	mov	rcx, rbx
	mov	QWORD PTR g_pProcess32Next, rax
	call	QWORD PTR __imp_GetProcAddress

; 96   :         ASSERT ( NULL != g_pThread32First ) ;
; 97   : 
; 98   :         g_pThread32Next =
; 99   :                 (THREADWALK)GetProcAddress ( hKernel        ,
; 100  :                                              "Thread32Next"  ) ;

	lea	rdx, OFFSET FLAT:??_C@_0N@LDGMJMKG@Thread32Next?$AA@
	mov	rcx, rbx
	mov	QWORD PTR g_pThread32First, rax
	call	QWORD PTR __imp_GetProcAddress

; 101  :         ASSERT ( NULL != g_pThread32Next ) ;
; 102  : 
; 103  :         // All addresses must be non-NULL to be successful.  If one of
; 104  :         // these addresses is NULL, one of the needed lists cannot be
; 105  :         // walked.
; 106  : 
; 107  :         bRet =  g_pModule32First            &&
; 108  :                 g_pModule32Next             &&
; 109  :                 g_pProcess32First           &&
; 110  :                 g_pProcess32Next            &&
; 111  :                 g_pThread32First            &&
; 112  :                 g_pThread32Next             &&
; 113  :                 g_pCreateToolhelp32Snapshot    ;

	cmp	QWORD PTR g_pModule32First, 0
	mov	QWORD PTR g_pThread32Next, rax
	je	SHORT $LN7@InitTOOLHE
	cmp	QWORD PTR g_pModule32Next, 0
	je	SHORT $LN7@InitTOOLHE
	cmp	QWORD PTR g_pProcess32First, 0
	je	SHORT $LN7@InitTOOLHE
	cmp	QWORD PTR g_pProcess32Next, 0
	je	SHORT $LN7@InitTOOLHE
	cmp	QWORD PTR g_pThread32First, 0
	je	SHORT $LN7@InitTOOLHE
	test	rax, rax
	je	SHORT $LN7@InitTOOLHE
	cmp	QWORD PTR g_pCreateToolhelp32Snapshot, 0
	je	SHORT $LN7@InitTOOLHE
	mov	rbx, QWORD PTR [rsp+32]
	mov	eax, 1

; 120  :     }
; 121  : 
; 122  :     ASSERT ( TRUE == bRet ) ;
; 123  : 
; 124  :     if ( TRUE == bRet )
; 125  :     {
; 126  :         // All OK, Jumpmaster!
; 127  :         g_bInitialized = TRUE ;

	mov	DWORD PTR g_bInitialized, eax

; 128  :     }
; 129  :     return ( bRet ) ;
; 130  : }

	add	rsp, 40					; 00000028H
	ret	0
$LN3@InitTOOLHE:

; 114  :     }
; 115  :     else
; 116  :     {
; 117  :         // Could not get the module handle of kernel.
; 118  :         SetLastErrorEx ( ERROR_DLL_INIT_FAILED , SLE_ERROR ) ;

	mov	edx, 1
	mov	ecx, 1114				; 0000045aH
	call	QWORD PTR __imp_SetLastErrorEx
$LN7@InitTOOLHE:

; 119  :         bRet = FALSE ;

	xor	eax, eax
	mov	rbx, QWORD PTR [rsp+32]

; 128  :     }
; 129  :     return ( bRet ) ;
; 130  : }

	add	rsp, 40					; 00000028H
	ret	0
?InitTOOLHELP32@@YAHXZ ENDP				; InitTOOLHELP32
PUBLIC	?TLHELPGetLoadedModules@@YAHKIPEAPEAUHINSTANCE__@@PEAK@Z ; TLHELPGetLoadedModules
pdata	SEGMENT
$pdata$?TLHELPGetLoadedModules@@YAHKIPEAPEAUHINSTANCE__@@PEAK@Z DD imagerel $LN21
	DD	imagerel $LN21+75
	DD	imagerel $unwind$?TLHELPGetLoadedModules@@YAHKIPEAPEAUHINSTANCE__@@PEAK@Z
$pdata$0$?TLHELPGetLoadedModules@@YAHKIPEAPEAUHINSTANCE__@@PEAK@Z DD imagerel $LN21+75
	DD	imagerel $LN21+278
	DD	imagerel $chain$0$?TLHELPGetLoadedModules@@YAHKIPEAPEAUHINSTANCE__@@PEAK@Z
$pdata$1$?TLHELPGetLoadedModules@@YAHKIPEAPEAUHINSTANCE__@@PEAK@Z DD imagerel $LN21+278
	DD	imagerel $LN21+303
	DD	imagerel $chain$1$?TLHELPGetLoadedModules@@YAHKIPEAPEAUHINSTANCE__@@PEAK@Z
pdata	ENDS
xdata	SEGMENT
$unwind$?TLHELPGetLoadedModules@@YAHKIPEAPEAUHINSTANCE__@@PEAK@Z DD 091601H
	DD	0525416H
	DD	0513416H
	DD	04c0116H
	DD	0c00dd00fH
	DD	0700bH
$chain$0$?TLHELPGetLoadedModules@@YAHKIPEAPEAUHINSTANCE__@@PEAK@Z DD 020821H
	DD	0506408H
	DD	imagerel $LN21
	DD	imagerel $LN21+75
	DD	imagerel $unwind$?TLHELPGetLoadedModules@@YAHKIPEAPEAUHINSTANCE__@@PEAK@Z
$chain$1$?TLHELPGetLoadedModules@@YAHKIPEAPEAUHINSTANCE__@@PEAK@Z DD 021H
	DD	imagerel $LN21
	DD	imagerel $LN21+75
	DD	imagerel $unwind$?TLHELPGetLoadedModules@@YAHKIPEAPEAUHINSTANCE__@@PEAK@Z
; Function compile flags: /Ogtpy
xdata	ENDS
_TEXT	SEGMENT
stME32$ = 32
dwPID$ = 640
uiCount$ = 648
paModArray$ = 656
pdwRealCount$ = 664
?TLHELPGetLoadedModules@@YAHKIPEAPEAUHINSTANCE__@@PEAK@Z PROC ; TLHELPGetLoadedModules

; 158  : {

$LN21:
	mov	QWORD PTR [rsp+16], rbx
	mov	QWORD PTR [rsp+24], rbp
	push	rdi
	push	r12
	push	r13
	sub	rsp, 608				; 00000260H

; 159  : 
; 160  :     // Always set pdwRealCount to a know value before anything else.
; 161  :     *pdwRealCount = 0 ;

	xor	r13d, r13d
	mov	rbx, r9
	mov	r12, r8
	mov	edi, edx
	mov	ebp, ecx
	mov	DWORD PTR [r9], r13d

; 162  : 
; 163  :     if ( FALSE == InitTOOLHELP32 ( ) )

	call	?InitTOOLHELP32@@YAHXZ			; InitTOOLHELP32
	test	eax, eax
	jne	SHORT $LN12@TLHELPGetL

; 164  :     {
; 165  :         ASSERT ( !"InitTOOLHELP32 failed" ) ;
; 166  :         SetLastErrorEx ( ERROR_DLL_INIT_FAILED , SLE_ERROR ) ;

	lea	edx, QWORD PTR [rax+1]
	mov	ecx, 1114				; 0000045aH
	call	QWORD PTR __imp_SetLastErrorEx

; 167  :         return ( FALSE ) ;

	xor	eax, eax
	jmp	$LN13@TLHELPGetL
$LN12@TLHELPGetL:

; 168  :     }
; 169  : 
; 170  :     // The snapshot handle.
; 171  :     HANDLE        hModSnap     = NULL ;
; 172  :     // The module structure.
; 173  :     MODULEENTRY32 stME32              ;
; 174  :     // A flag kept to report if the buffer was too small.
; 175  :     BOOL          bBuffToSmall = FALSE ;
; 176  : 
; 177  : 
; 178  :     // Get the snapshot for the specified process.
; 179  :     hModSnap = g_pCreateToolhelp32Snapshot ( TH32CS_SNAPMODULE ,
; 180  :                                              dwPID              ) ;

	mov	edx, ebp
	mov	ecx, 8
	mov	QWORD PTR [rsp+640], rsi
	call	QWORD PTR g_pCreateToolhelp32Snapshot
	mov	rsi, rax

; 181  :     ASSERT ( INVALID_HANDLE_VALUE != hModSnap ) ;
; 182  :     if ( INVALID_HANDLE_VALUE == hModSnap )

	cmp	rax, -1
	jne	SHORT $LN11@TLHELPGetL

; 183  :     {
; 184  :         TRACE1 ( "Unable to get module snapshot for %08X\n" , dwPID ) ;

	lea	rcx, OFFSET FLAT:??_C@_0CI@COOMGIIK@Unable?5to?5get?5module?5snapshot?5fo@
	mov	edx, ebp
	call	?Msg@@YAXPEBDZZ				; Msg

; 185  :         return ( FALSE ) ;

	jmp	$LN19@TLHELPGetL
$LN11@TLHELPGetL:

; 186  :     }
; 187  : 
; 188  :     FillMemory ( &stME32 , sizeof ( MODULEENTRY32 ), NULL ) ;

	lea	rcx, QWORD PTR stME32$[rsp]
	xor	edx, edx
	mov	r8d, 568				; 00000238H
	call	QWORD PTR ?Memory@@3VxrMemory@@A+16

; 189  :     stME32.dwSize = sizeof ( MODULEENTRY32 ) ;
; 190  : 
; 191  :     // Start getting the module values.
; 192  :     if ( TRUE == g_pModule32First ( hModSnap , &stME32 ) )

	lea	rdx, QWORD PTR stME32$[rsp]
	mov	rcx, rsi
	mov	DWORD PTR stME32$[rsp], 568		; 00000238H
	call	QWORD PTR g_pModule32First
	cmp	eax, 1
	jne	SHORT $LN10@TLHELPGetL
$LL9@TLHELPGetL:

; 193  :     {
; 194  :         do
; 195  :         {
; 196  :             // If uiCount is not zero, copy values.
; 197  :             if ( 0 != uiCount )

	test	edi, edi
	je	SHORT $LN3@TLHELPGetL

; 198  :             {
; 199  :                 // If the passed in buffer is to small, set the flag.
; 200  :                 // This is so we match the functionality of the NT4
; 201  :                 // version of this function which will return the
; 202  :                 // correct total needed.
; 203  :                 if ( ( TRUE == bBuffToSmall     ) ||
; 204  :                      ( *pdwRealCount == uiCount )   )

	mov	eax, DWORD PTR [rbx]
	cmp	eax, edi
	je	SHORT $LN16@TLHELPGetL

; 207  :                     break ;
; 208  :                 }
; 209  :                 else
; 210  :                 {
; 211  :                     // Copy this value in.
; 212  :                     paModArray[ *pdwRealCount ] =
; 213  :                                          (HINSTANCE)stME32.modBaseAddr ;

	mov	ecx, eax
	mov	rax, QWORD PTR stME32$[rsp+24]
	mov	QWORD PTR [r12+rcx*8], rax
$LN3@TLHELPGetL:

; 214  :                 }
; 215  :             }
; 216  :             // Bump up the real total count.
; 217  :             *pdwRealCount += 1 ;

	inc	DWORD PTR [rbx]

; 218  :         }
; 219  :         while ( ( TRUE == g_pModule32Next ( hModSnap , &stME32 ) ) ) ;

	lea	rdx, QWORD PTR stME32$[rsp]
	mov	rcx, rsi
	call	QWORD PTR g_pModule32Next
	cmp	eax, 1
	je	SHORT $LL9@TLHELPGetL
	jmp	SHORT $LN7@TLHELPGetL
$LN16@TLHELPGetL:

; 205  :                 {
; 206  :                     bBuffToSmall = TRUE ;

	mov	r13d, 1
$LN7@TLHELPGetL:

; 227  :     }
; 228  : 
; 229  :     // Close the snapshot handle.
; 230  :     VERIFY ( CloseHandle ( hModSnap ) ) ;

	mov	rcx, rsi
	call	QWORD PTR __imp_CloseHandle

; 231  : 
; 232  :     // Check if the buffer was too small.
; 233  :     if ( TRUE == bBuffToSmall )

	cmp	r13d, 1
	jne	SHORT $LN1@TLHELPGetL

; 234  :     {
; 235  :         ASSERT ( !"Buffer to small in TLHELPGetLoadedModules\n" ) ;
; 236  :         SetLastErrorEx ( ERROR_INSUFFICIENT_BUFFER , SLE_ERROR ) ;

	lea	ecx, QWORD PTR [r13+121]

; 237  :         return ( FALSE ) ;

	jmp	SHORT $LN20@TLHELPGetL
$LN1@TLHELPGetL:

; 238  :     }
; 239  : 
; 240  :     // All OK, Jumpmaster!
; 241  :     SetLastError ( ERROR_SUCCESS ) ;

	xor	ecx, ecx
	call	QWORD PTR __imp_SetLastError

; 242  :     return ( TRUE ) ;

	mov	eax, 1
	jmp	SHORT $LN18@TLHELPGetL
$LN10@TLHELPGetL:

; 220  :     }
; 221  :     else
; 222  :     {
; 223  :         DWORD dwLastErr = GetLastError ( ) ;

	call	QWORD PTR __imp_GetLastError

; 224  :         ASSERT ( !"Failed to get first module!\n" ) ;
; 225  :         SetLastErrorEx ( dwLastErr , SLE_ERROR ) ;

	mov	ecx, eax
$LN20@TLHELPGetL:
	mov	edx, 1
	call	QWORD PTR __imp_SetLastErrorEx
$LN19@TLHELPGetL:

; 226  :         return ( FALSE ) ;

	xor	eax, eax
$LN18@TLHELPGetL:
	mov	rsi, QWORD PTR [rsp+640]
$LN13@TLHELPGetL:

; 243  : }

	lea	r11, QWORD PTR [rsp+608]
	mov	rbx, QWORD PTR [r11+40]
	mov	rbp, QWORD PTR [r11+48]
	mov	rsp, r11
	pop	r13
	pop	r12
	pop	rdi
	ret	0
?TLHELPGetLoadedModules@@YAHKIPEAPEAUHINSTANCE__@@PEAK@Z ENDP ; TLHELPGetLoadedModules
END