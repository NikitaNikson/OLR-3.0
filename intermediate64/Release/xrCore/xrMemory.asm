; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

include listing.inc

INCLUDELIB OLDNAMES

PUBLIC	??$xr_new@Vstr_container@@@@YAPEAVstr_container@@XZ ; xr_new<str_container>
PUBLIC	??$xr_new@Vsmem_container@@@@YAPEAVsmem_container@@XZ ; xr_new<smem_container>
PUBLIC	??_Gsmem_container@@QEAAPEAXI@Z			; smem_container::`scalar deleting destructor'
PUBLIC	??R?$xr_special_free@$0A@Vsmem_container@@@@QEAAXAEAPEAVsmem_container@@@Z ; xr_special_free<0,smem_container>::operator()
PUBLIC	??$xr_delete@Vsmem_container@@@@YAXAEAPEAVsmem_container@@@Z ; xr_delete<smem_container>
PUBLIC	??_Gstr_container@@QEAAPEAXI@Z			; str_container::`scalar deleting destructor'
PUBLIC	??R?$xr_special_free@$0A@Vstr_container@@@@QEAAXAEAPEAVstr_container@@@Z ; xr_special_free<0,str_container>::operator()
PUBLIC	??$xr_delete@Vstr_container@@@@YAXAEAPEAVstr_container@@@Z ; xr_delete<str_container>
PUBLIC	?_abs@@YA_J_J@Z					; _abs
PUBLIC	?mem_initialized@@3HA				; mem_initialized
PUBLIC	?shared_str_initialized@@3_NA			; shared_str_initialized
PUBLIC	??_C@_0M@JMPEJJAK@?9pure_alloc?$AA@		; `string'
PUBLIC	??_C@_0BB@MJKEHMDJ@?9swap_on_compact?$AA@	; `string'
EXTRN	__imp_HeapCompact:PROC
EXTRN	__imp_GetProcessHeap:PROC
EXTRN	__imp_SetProcessWorkingSetSize:PROC
EXTRN	__imp_RegFlushKey:PROC
EXTRN	__imp__heapmin:PROC
?mem_initialized@@3HA DD 01H DUP (?)			; mem_initialized
?shared_str_initialized@@3_NA DB 01H DUP (?)		; shared_str_initialized
;	COMDAT ??_C@_0BB@MJKEHMDJ@?9swap_on_compact?$AA@
CONST	SEGMENT
??_C@_0BB@MJKEHMDJ@?9swap_on_compact?$AA@ DB '-swap_on_compact', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0M@JMPEJJAK@?9pure_alloc?$AA@
CONST	SEGMENT
??_C@_0M@JMPEJJAK@?9pure_alloc?$AA@ DB '-pure_alloc', 00H ; `string'
; Function compile flags: /Ogtpy
; File c:\users\nummer\documents\github\olr-3.0\src\xray\xrcore\_std_extensions.h
;	COMDAT ?_abs@@YA_J_J@Z
_TEXT	SEGMENT
x$ = 8
?_abs@@YA_J_J@Z PROC					; _abs, COMDAT

; 162  : IC s64		_abs	(s64 x)			{ return (x>=0)? x : s64(-x); }

	mov	rax, rcx
	cdq
	xor	rax, rdx
	sub	rax, rdx
	ret	0
?_abs@@YA_J_J@Z ENDP					; _abs
_TEXT	ENDS
PUBLIC	?is_stack_ptr@@YAHPEAX@Z			; is_stack_ptr
; Function compile flags: /Ogtpy
; File c:\users\nummer\documents\github\olr-3.0\src\xray\xrcore\xrmemory.cpp
_TEXT	SEGMENT
local_value$ = 8
_ptr$ = 8
?is_stack_ptr@@YAHPEAX@Z PROC				; is_stack_ptr

; 278  : 	int			local_value		= 0;
; 279  : 	void*		ptr_refsound	= _ptr;
; 280  : 	void*		ptr_local		= &local_value;
; 281  : 	ptrdiff_t	difference		= (ptrdiff_t)_abs(s64(ptrdiff_t(ptr_local) - ptrdiff_t(ptr_refsound)));

	lea	rax, QWORD PTR local_value$[rsp]
	sub	rax, rcx
	cdq
	mov	rcx, rax

; 282  : 	return		(difference < (512*1024));

	xor	eax, eax
	xor	rcx, rdx
	sub	rcx, rdx
	cmp	rcx, 524288				; 00080000H
	setl	al

; 283  : }

	ret	0
?is_stack_ptr@@YAHPEAX@Z ENDP				; is_stack_ptr
_TEXT	ENDS
PUBLIC	??0xrMemory@@QEAA@XZ				; xrMemory::xrMemory
; Function compile flags: /Ogtpy
_TEXT	SEGMENT
this$ = 8
??0xrMemory@@QEAA@XZ PROC				; xrMemory::xrMemory

; 41   : #ifdef DEBUG_MEMORY_MANAGER
; 42   : 
; 43   : 	debug_mode	= FALSE;
; 44   : 
; 45   : #endif // DEBUG_MEMORY_MANAGER
; 46   : 	mem_copy	= xrMemCopy_x86;

	lea	rax, OFFSET FLAT:?xrMemCopy_x86@@YAXPEAXPEBXI@Z ; xrMemCopy_x86
	mov	QWORD PTR [rcx+8], rax

; 47   : 	mem_fill	= xrMemFill_x86;

	lea	rax, OFFSET FLAT:?xrMemFill_x86@@YAXPEAXHI@Z ; xrMemFill_x86
	mov	QWORD PTR [rcx+16], rax

; 48   : 	mem_fill32	= xrMemFill32_x86;

	lea	rax, OFFSET FLAT:?xrMemFill32_x86@@YAXPEAXII@Z ; xrMemFill32_x86
	mov	QWORD PTR [rcx+24], rax

; 49   : }

	mov	rax, rcx
	ret	0
??0xrMemory@@QEAA@XZ ENDP				; xrMemory::xrMemory
;	COMDAT pdata
pdata	SEGMENT
$pdata$??_Gsmem_container@@QEAAPEAXI@Z DD imagerel $LN23
	DD	imagerel $LN23+78
	DD	imagerel $unwind$??_Gsmem_container@@QEAAPEAXI@Z
pdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$??_Gsmem_container@@QEAAPEAXI@Z DD 020601H
	DD	030023206H
; Function compile flags: /Ogtpy
xdata	ENDS
;	COMDAT ??_Gsmem_container@@QEAAPEAXI@Z
_TEXT	SEGMENT
$T246591 = 48
this$ = 48
??_Gsmem_container@@QEAAPEAXI@Z PROC			; smem_container::`scalar deleting destructor', COMDAT
$LN23:
	push	rbx
	sub	rsp, 32					; 00000020H
	mov	rbx, rcx
	call	?clean@smem_container@@QEAAXXZ		; smem_container::clean
	mov	rax, QWORD PTR [rbx+8]
	test	rax, rax
	je	SHORT $LN15@scalar@25
	lea	rcx, QWORD PTR $T246591[rsp]
	mov	QWORD PTR $T246591[rsp], rax
	call	??$xr_free@PEAUsmem_value@@@@YAXAEAPEAPEAUsmem_value@@@Z ; xr_free<smem_value * __ptr64>
$LN15@scalar@25:
	xor	eax, eax
	mov	QWORD PTR [rbx+8], rax
	mov	QWORD PTR [rbx+16], rax
	mov	QWORD PTR [rbx+24], rax
	mov	rcx, QWORD PTR [rbx]
	call	QWORD PTR __imp_DeleteCriticalSection
	mov	rcx, rbx
	call	??$xr_free@X@@YAXAEAPEAX@Z		; xr_free<void>
	mov	rax, rbx
	add	rsp, 32					; 00000020H
	pop	rbx
	ret	0
??_Gsmem_container@@QEAAPEAXI@Z ENDP			; smem_container::`scalar deleting destructor'
_TEXT	ENDS
;	COMDAT pdata
; File c:\users\nummer\documents\github\olr-3.0\src\xray\xrcore\xrsyncronize.cpp
pdata	SEGMENT
$pdata$??R?$xr_special_free@$0A@Vsmem_container@@@@QEAAXAEAPEAVsmem_container@@@Z DD imagerel $LN50
	DD	imagerel $LN50+139
	DD	imagerel $unwind$??R?$xr_special_free@$0A@Vsmem_container@@@@QEAAXAEAPEAVsmem_container@@@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$0$??R?$xr_special_free@$0A@Vsmem_container@@@@QEAAXAEAPEAVsmem_container@@@Z DD imagerel $LN50+139
	DD	imagerel $LN50+189
	DD	imagerel $chain$0$??R?$xr_special_free@$0A@Vsmem_container@@@@QEAAXAEAPEAVsmem_container@@@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$1$??R?$xr_special_free@$0A@Vsmem_container@@@@QEAAXAEAPEAVsmem_container@@@Z DD imagerel $LN50+189
	DD	imagerel $LN50+200
	DD	imagerel $chain$1$??R?$xr_special_free@$0A@Vsmem_container@@@@QEAAXAEAPEAVsmem_container@@@Z
pdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$chain$1$??R?$xr_special_free@$0A@Vsmem_container@@@@QEAAXAEAPEAVsmem_container@@@Z DD 021H
	DD	imagerel $LN50
	DD	imagerel $LN50+139
	DD	imagerel $unwind$??R?$xr_special_free@$0A@Vsmem_container@@@@QEAAXAEAPEAVsmem_container@@@Z
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$chain$0$??R?$xr_special_free@$0A@Vsmem_container@@@@QEAAXAEAPEAVsmem_container@@@Z DD 020521H
	DD	076405H
	DD	imagerel $LN50
	DD	imagerel $LN50+139
	DD	imagerel $unwind$??R?$xr_special_free@$0A@Vsmem_container@@@@QEAAXAEAPEAVsmem_container@@@Z
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$??R?$xr_special_free@$0A@Vsmem_container@@@@QEAAXAEAPEAVsmem_container@@@Z DD 040a01H
	DD	08340aH
	DD	07006320aH
; Function compile flags: /Ogtpy
; File c:\users\nummer\documents\github\olr-3.0\src\xray\xrcore\xrmemory_subst_msvc.h
xdata	ENDS
;	COMDAT ??R?$xr_special_free@$0A@Vsmem_container@@@@QEAAXAEAPEAVsmem_container@@@Z
_TEXT	SEGMENT
$T246675 = 48
??R?$xr_special_free@$0A@Vsmem_container@@@@QEAAXAEAPEAVsmem_container@@@Z PROC ; xr_special_free<0,smem_container>::operator(), COMDAT

; 142  : 	{

$LN50:
	mov	QWORD PTR [rsp+24], rbx
	push	rdi
	sub	rsp, 32					; 00000020H

; 143  : 		ptr->~T			();

	mov	rbx, QWORD PTR ?g_pSharedMemoryContainer@@3PEAVsmem_container@@EA ; g_pSharedMemoryContainer
	mov	rcx, rbx
	call	?clean@smem_container@@QEAAXXZ		; smem_container::clean
	mov	rax, QWORD PTR [rbx+8]
	test	rax, rax
	je	SHORT $LN17@operator@55
	lea	rcx, QWORD PTR $T246675[rsp]
	mov	QWORD PTR $T246675[rsp], rax
	call	??$xr_free@PEAUsmem_value@@@@YAXAEAPEAPEAUsmem_value@@@Z ; xr_free<smem_value * __ptr64>
$LN17@operator@55:
	xor	eax, eax
	mov	QWORD PTR [rbx+8], rax
	mov	QWORD PTR [rbx+16], rax
	mov	QWORD PTR [rbx+24], rax
	mov	rcx, QWORD PTR [rbx]
	call	QWORD PTR __imp_DeleteCriticalSection
	mov	rcx, rbx
	call	??$xr_free@X@@YAXAEAPEAX@Z		; xr_free<void>

; 144  : 		Memory.mem_free	(ptr);

	inc	DWORD PTR ?Memory@@3VxrMemory@@A
	mov	rdi, QWORD PTR ?g_pSharedMemoryContainer@@3PEAVsmem_container@@EA ; g_pSharedMemoryContainer
	movzx	eax, BYTE PTR [rdi-1]
	dec	rdi
	cmp	eax, 55					; 00000037H
	jne	SHORT $LN27@operator@55
	test	rdi, rdi
	je	SHORT $LN48@operator@55
	and	rdi, -8
	mov	rcx, QWORD PTR [rdi-8]

; 145  : 	}

	mov	rbx, QWORD PTR [rsp+64]
	add	rsp, 32					; 00000020H
	pop	rdi
	rex_jmp	QWORD PTR __imp_free

; 144  : 		Memory.mem_free	(ptr);

$LN27@operator@55:
	lea	rbx, QWORD PTR [rax+rax*4]
	mov	QWORD PTR [rsp+56], rsi
	lea	rsi, OFFSET FLAT:?mem_pools@@3PAVMEMPOOL@@A ; mem_pools
	mov	rcx, QWORD PTR [rsi+rbx*8]
	call	QWORD PTR __imp_EnterCriticalSection
	mov	rax, QWORD PTR [rsi+rbx*8+32]
	mov	QWORD PTR [rdi], rax
	mov	rcx, QWORD PTR [rsi+rbx*8]
	mov	QWORD PTR [rsi+rbx*8+32], rdi
	call	QWORD PTR __imp_LeaveCriticalSection
	mov	rsi, QWORD PTR [rsp+56]
$LN48@operator@55:

; 145  : 	}

	mov	rbx, QWORD PTR [rsp+64]
	add	rsp, 32					; 00000020H
	pop	rdi
	ret	0
??R?$xr_special_free@$0A@Vsmem_container@@@@QEAAXAEAPEAVsmem_container@@@Z ENDP ; xr_special_free<0,smem_container>::operator()
_TEXT	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$??$xr_delete@Vsmem_container@@@@YAXAEAPEAVsmem_container@@@Z DD imagerel $LN4
	DD	imagerel $LN4+35
	DD	imagerel $unwind$??$xr_delete@Vsmem_container@@@@YAXAEAPEAVsmem_container@@@Z
pdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$??$xr_delete@Vsmem_container@@@@YAXAEAPEAVsmem_container@@@Z DD 010401H
	DD	04204H
; Function compile flags: /Ogtpy
xdata	ENDS
;	COMDAT ??$xr_delete@Vsmem_container@@@@YAXAEAPEAVsmem_container@@@Z
_TEXT	SEGMENT
??$xr_delete@Vsmem_container@@@@YAXAEAPEAVsmem_container@@@Z PROC ; xr_delete<smem_container>, COMDAT

; 150  : {

$LN4:
	sub	rsp, 40					; 00000028H

; 151  : 	if (ptr) 

	cmp	QWORD PTR ?g_pSharedMemoryContainer@@3PEAVsmem_container@@EA, 0 ; g_pSharedMemoryContainer
	je	SHORT $LN1@xr_delete@8

; 152  : 	{
; 153  : 		xr_special_free<xrcore::is_polymorphic<T>::result,T>()(ptr);

	call	??R?$xr_special_free@$0A@Vsmem_container@@@@QEAAXAEAPEAVsmem_container@@@Z ; xr_special_free<0,smem_container>::operator()

; 154  : 		ptr = NULL;

	mov	QWORD PTR ?g_pSharedMemoryContainer@@3PEAVsmem_container@@EA, 0 ; g_pSharedMemoryContainer
$LN1@xr_delete@8:

; 155  : 	}
; 156  : }

	add	rsp, 40					; 00000028H
	ret	0
??$xr_delete@Vsmem_container@@@@YAXAEAPEAVsmem_container@@@Z ENDP ; xr_delete<smem_container>
PUBLIC	?mem_compact@xrMemory@@QEAAXXZ			; xrMemory::mem_compact
pdata	SEGMENT
$pdata$?mem_compact@xrMemory@@QEAAXXZ DD imagerel $LN8
	DD	imagerel $LN8+139
	DD	imagerel $unwind$?mem_compact@xrMemory@@QEAAXXZ
pdata	ENDS
xdata	SEGMENT
$unwind$?mem_compact@xrMemory@@QEAAXXZ DD 010401H
	DD	04204H
; Function compile flags: /Ogtpy
; File c:\users\nummer\documents\github\olr-3.0\src\xray\xrcore\xrmemory.cpp
xdata	ENDS
_TEXT	SEGMENT
this$ = 48
?mem_compact@xrMemory@@QEAAXXZ PROC			; xrMemory::mem_compact

; 141  : {

$LN8:
	sub	rsp, 40					; 00000028H

; 142  : 	RegFlushKey						( HKEY_CLASSES_ROOT );

	mov	rcx, -2147483648			; ffffffff80000000H
	call	QWORD PTR __imp_RegFlushKey

; 143  : 	RegFlushKey						( HKEY_CURRENT_USER );

	mov	rcx, -2147483647			; ffffffff80000001H
	call	QWORD PTR __imp_RegFlushKey

; 144  : 	_heapmin						( );

	call	QWORD PTR __imp__heapmin

; 145  : 	HeapCompact						(GetProcessHeap(),0);

	call	QWORD PTR __imp_GetProcessHeap
	mov	rcx, rax
	xor	edx, edx
	call	QWORD PTR __imp_HeapCompact

; 146  : 	if (g_pStringContainer)			g_pStringContainer->clean		();

	mov	rcx, QWORD PTR ?g_pStringContainer@@3PEAVstr_container@@EA ; g_pStringContainer
	test	rcx, rcx
	je	SHORT $LN3@mem_compac
	call	?clean@str_container@@QEAAXXZ		; str_container::clean
$LN3@mem_compac:

; 147  : 	if (g_pSharedMemoryContainer)	g_pSharedMemoryContainer->clean	();

	mov	rcx, QWORD PTR ?g_pSharedMemoryContainer@@3PEAVsmem_container@@EA ; g_pSharedMemoryContainer
	test	rcx, rcx
	je	SHORT $LN2@mem_compac
	call	?clean@smem_container@@QEAAXXZ		; smem_container::clean
$LN2@mem_compac:

; 148  : 	if (strstr(Core.Params,"-swap_on_compact"))

	lea	rdx, OFFSET FLAT:??_C@_0BB@MJKEHMDJ@?9swap_on_compact?$AA@
	lea	rcx, OFFSET FLAT:?Core@@3VxrCore@@A+1232
	call	QWORD PTR __imp_strstr
	test	rax, rax
	je	SHORT $LN1@mem_compac

; 149  : 		SetProcessWorkingSetSize	(GetCurrentProcess(),size_t(-1),size_t(-1));

	call	QWORD PTR __imp_GetCurrentProcess
	or	r8, -1
	mov	rcx, rax
	or	rdx, r8
	call	QWORD PTR __imp_SetProcessWorkingSetSize
$LN1@mem_compac:

; 150  : }

	add	rsp, 40					; 00000028H
	ret	0
?mem_compact@xrMemory@@QEAAXXZ ENDP			; xrMemory::mem_compact
;	COMDAT pdata
pdata	SEGMENT
$pdata$??_Gstr_container@@QEAAPEAXI@Z DD imagerel $LN42
	DD	imagerel $LN42+92
	DD	imagerel $unwind$??_Gstr_container@@QEAAPEAXI@Z
pdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$??_Gstr_container@@QEAAPEAXI@Z DD 040a01H
	DD	07340aH
	DD	07006320aH
; Function compile flags: /Ogtpy
xdata	ENDS
;	COMDAT ??_Gstr_container@@QEAAPEAXI@Z
_TEXT	SEGMENT
$T275046 = 48
$T275163 = 48
this$ = 48
??_Gstr_container@@QEAAPEAXI@Z PROC			; str_container::`scalar deleting destructor', COMDAT
$LN42:
	mov	QWORD PTR [rsp+16], rbx
	push	rdi
	sub	rsp, 32					; 00000020H
	mov	rdi, rcx
	call	?clean@str_container@@QEAAXXZ		; str_container::clean
	mov	r8, QWORD PTR [rdi+16]
	mov	r9, r8
	mov	r8, QWORD PTR [r8]
	lea	rdx, QWORD PTR $T275163[rsp]
	lea	rcx, QWORD PTR [rdi+8]
	call	?erase@?$_Tree@V?$_Tset_traits@PEAUstr_value@@Ustr_value_cmp@@V?$xalloc@PEAUstr_value@@@@$00@std@@@std@@QEAA?AV?$_Tree_const_iterator@V?$_Tree_val@V?$_Tset_traits@PEAUstr_value@@Ustr_value_cmp@@V?$xalloc@PEAUstr_value@@@@$00@std@@@std@@@2@V32@0@Z ; std::_Tree<std::_Tset_traits<str_value * __ptr64,str_value_cmp,xalloc<str_value * __ptr64>,1> >::erase
	mov	r11, QWORD PTR [rdi+16]
	lea	rcx, QWORD PTR $T275046[rsp]
	mov	QWORD PTR $T275046[rsp], r11
	call	??$xr_free@U_Node@?$_Tree_nod@V?$_Tset_traits@PEAUstr_value@@Ustr_value_cmp@@V?$xalloc@PEAUstr_value@@@@$00@std@@@std@@@@YAXAEAPEAU_Node@?$_Tree_nod@V?$_Tset_traits@PEAUstr_value@@Ustr_value_cmp@@V?$xalloc@PEAUstr_value@@@@$00@std@@@std@@@Z ; xr_free<std::_Tree_nod<std::_Tset_traits<str_value * __ptr64,str_value_cmp,xalloc<str_value * __ptr64>,1> >::_Node>
	mov	rcx, QWORD PTR [rdi]
	call	QWORD PTR __imp_DeleteCriticalSection
	mov	rcx, rdi
	call	??$xr_free@X@@YAXAEAPEAX@Z		; xr_free<void>
	mov	rbx, QWORD PTR [rsp+56]
	mov	rax, rdi
	add	rsp, 32					; 00000020H
	pop	rdi
	ret	0
??_Gstr_container@@QEAAPEAXI@Z ENDP			; str_container::`scalar deleting destructor'
_TEXT	ENDS
;	COMDAT pdata
; File c:\users\nummer\documents\github\olr-3.0\src\xray\xrcore\xrsyncronize.cpp
pdata	SEGMENT
$pdata$??R?$xr_special_free@$0A@Vstr_container@@@@QEAAXAEAPEAVstr_container@@@Z DD imagerel $LN69
	DD	imagerel $LN69+144
	DD	imagerel $unwind$??R?$xr_special_free@$0A@Vstr_container@@@@QEAAXAEAPEAVstr_container@@@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$0$??R?$xr_special_free@$0A@Vstr_container@@@@QEAAXAEAPEAVstr_container@@@Z DD imagerel $LN69+144
	DD	imagerel $LN69+194
	DD	imagerel $chain$0$??R?$xr_special_free@$0A@Vstr_container@@@@QEAAXAEAPEAVstr_container@@@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$1$??R?$xr_special_free@$0A@Vstr_container@@@@QEAAXAEAPEAVstr_container@@@Z DD imagerel $LN69+194
	DD	imagerel $LN69+205
	DD	imagerel $chain$1$??R?$xr_special_free@$0A@Vstr_container@@@@QEAAXAEAPEAVstr_container@@@Z
pdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$chain$1$??R?$xr_special_free@$0A@Vstr_container@@@@QEAAXAEAPEAVstr_container@@@Z DD 021H
	DD	imagerel $LN69
	DD	imagerel $LN69+144
	DD	imagerel $unwind$??R?$xr_special_free@$0A@Vstr_container@@@@QEAAXAEAPEAVstr_container@@@Z
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$chain$0$??R?$xr_special_free@$0A@Vstr_container@@@@QEAAXAEAPEAVstr_container@@@Z DD 020521H
	DD	076405H
	DD	imagerel $LN69
	DD	imagerel $LN69+144
	DD	imagerel $unwind$??R?$xr_special_free@$0A@Vstr_container@@@@QEAAXAEAPEAVstr_container@@@Z
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$??R?$xr_special_free@$0A@Vstr_container@@@@QEAAXAEAPEAVstr_container@@@Z DD 040a01H
	DD	08340aH
	DD	07006320aH
; Function compile flags: /Ogtpy
; File c:\users\nummer\documents\github\olr-3.0\src\xray\xrcore\xrmemory_subst_msvc.h
xdata	ENDS
;	COMDAT ??R?$xr_special_free@$0A@Vstr_container@@@@QEAAXAEAPEAVstr_container@@@Z
_TEXT	SEGMENT
$T275312 = 48
$T275481 = 48
??R?$xr_special_free@$0A@Vstr_container@@@@QEAAXAEAPEAVstr_container@@@Z PROC ; xr_special_free<0,str_container>::operator(), COMDAT

; 142  : 	{

$LN69:
	mov	QWORD PTR [rsp+24], rbx
	push	rdi
	sub	rsp, 32					; 00000020H

; 143  : 		ptr->~T			();

	mov	rdi, QWORD PTR ?g_pStringContainer@@3PEAVstr_container@@EA ; g_pStringContainer
	mov	rcx, rdi
	call	?clean@str_container@@QEAAXXZ		; str_container::clean
	mov	r8, QWORD PTR [rdi+16]
	lea	rdx, QWORD PTR $T275481[rsp]
	mov	r9, r8
	mov	r8, QWORD PTR [r8]
	lea	rcx, QWORD PTR [rdi+8]
	call	?erase@?$_Tree@V?$_Tset_traits@PEAUstr_value@@Ustr_value_cmp@@V?$xalloc@PEAUstr_value@@@@$00@std@@@std@@QEAA?AV?$_Tree_const_iterator@V?$_Tree_val@V?$_Tset_traits@PEAUstr_value@@Ustr_value_cmp@@V?$xalloc@PEAUstr_value@@@@$00@std@@@std@@@2@V32@0@Z ; std::_Tree<std::_Tset_traits<str_value * __ptr64,str_value_cmp,xalloc<str_value * __ptr64>,1> >::erase
	mov	r11, QWORD PTR [rdi+16]
	lea	rcx, QWORD PTR $T275312[rsp]
	mov	QWORD PTR $T275312[rsp], r11
	call	??$xr_free@U_Node@?$_Tree_nod@V?$_Tset_traits@PEAUstr_value@@Ustr_value_cmp@@V?$xalloc@PEAUstr_value@@@@$00@std@@@std@@@@YAXAEAPEAU_Node@?$_Tree_nod@V?$_Tset_traits@PEAUstr_value@@Ustr_value_cmp@@V?$xalloc@PEAUstr_value@@@@$00@std@@@std@@@Z ; xr_free<std::_Tree_nod<std::_Tset_traits<str_value * __ptr64,str_value_cmp,xalloc<str_value * __ptr64>,1> >::_Node>
	mov	rcx, QWORD PTR [rdi]
	call	QWORD PTR __imp_DeleteCriticalSection
	mov	rcx, rdi
	call	??$xr_free@X@@YAXAEAPEAX@Z		; xr_free<void>

; 144  : 		Memory.mem_free	(ptr);

	inc	DWORD PTR ?Memory@@3VxrMemory@@A
	mov	rdi, QWORD PTR ?g_pStringContainer@@3PEAVstr_container@@EA ; g_pStringContainer
	movzx	eax, BYTE PTR [rdi-1]
	dec	rdi
	cmp	eax, 55					; 00000037H
	jne	SHORT $LN46@operator@61
	test	rdi, rdi
	je	SHORT $LN67@operator@61
	and	rdi, -8
	mov	rcx, QWORD PTR [rdi-8]

; 145  : 	}

	mov	rbx, QWORD PTR [rsp+64]
	add	rsp, 32					; 00000020H
	pop	rdi
	rex_jmp	QWORD PTR __imp_free

; 144  : 		Memory.mem_free	(ptr);

$LN46@operator@61:
	lea	rbx, QWORD PTR [rax+rax*4]
	mov	QWORD PTR [rsp+56], rsi
	lea	rsi, OFFSET FLAT:?mem_pools@@3PAVMEMPOOL@@A ; mem_pools
	mov	rcx, QWORD PTR [rsi+rbx*8]
	call	QWORD PTR __imp_EnterCriticalSection
	mov	rax, QWORD PTR [rsi+rbx*8+32]
	mov	QWORD PTR [rdi], rax
	mov	rcx, QWORD PTR [rsi+rbx*8]
	mov	QWORD PTR [rsi+rbx*8+32], rdi
	call	QWORD PTR __imp_LeaveCriticalSection
	mov	rsi, QWORD PTR [rsp+56]
$LN67@operator@61:

; 145  : 	}

	mov	rbx, QWORD PTR [rsp+64]
	add	rsp, 32					; 00000020H
	pop	rdi
	ret	0
??R?$xr_special_free@$0A@Vstr_container@@@@QEAAXAEAPEAVstr_container@@@Z ENDP ; xr_special_free<0,str_container>::operator()
_TEXT	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$??$xr_delete@Vstr_container@@@@YAXAEAPEAVstr_container@@@Z DD imagerel $LN4
	DD	imagerel $LN4+35
	DD	imagerel $unwind$??$xr_delete@Vstr_container@@@@YAXAEAPEAVstr_container@@@Z
pdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$??$xr_delete@Vstr_container@@@@YAXAEAPEAVstr_container@@@Z DD 010401H
	DD	04204H
; Function compile flags: /Ogtpy
xdata	ENDS
;	COMDAT ??$xr_delete@Vstr_container@@@@YAXAEAPEAVstr_container@@@Z
_TEXT	SEGMENT
??$xr_delete@Vstr_container@@@@YAXAEAPEAVstr_container@@@Z PROC ; xr_delete<str_container>, COMDAT

; 150  : {

$LN4:
	sub	rsp, 40					; 00000028H

; 151  : 	if (ptr) 

	cmp	QWORD PTR ?g_pStringContainer@@3PEAVstr_container@@EA, 0 ; g_pStringContainer
	je	SHORT $LN1@xr_delete@12

; 152  : 	{
; 153  : 		xr_special_free<xrcore::is_polymorphic<T>::result,T>()(ptr);

	call	??R?$xr_special_free@$0A@Vstr_container@@@@QEAAXAEAPEAVstr_container@@@Z ; xr_special_free<0,str_container>::operator()

; 154  : 		ptr = NULL;

	mov	QWORD PTR ?g_pStringContainer@@3PEAVstr_container@@EA, 0 ; g_pStringContainer
$LN1@xr_delete@12:

; 155  : 	}
; 156  : }

	add	rsp, 40					; 00000028H
	ret	0
??$xr_delete@Vstr_container@@@@YAXAEAPEAVstr_container@@@Z ENDP ; xr_delete<str_container>
_TEXT	ENDS
PUBLIC	?_destroy@xrMemory@@QEAAXXZ			; xrMemory::_destroy
pdata	SEGMENT
$pdata$?_destroy@xrMemory@@QEAAXXZ DD imagerel $LN10
	DD	imagerel $LN10+74
	DD	imagerel $unwind$?_destroy@xrMemory@@QEAAXXZ
pdata	ENDS
xdata	SEGMENT
$unwind$?_destroy@xrMemory@@QEAAXXZ DD 020601H
	DD	030023206H
; Function compile flags: /Ogtpy
; File c:\users\nummer\documents\github\olr-3.0\src\xray\xrcore\xrmemory.cpp
xdata	ENDS
_TEXT	SEGMENT
this$ = 48
?_destroy@xrMemory@@QEAAXXZ PROC			; xrMemory::_destroy

; 111  : {

$LN10:
	push	rbx
	sub	rsp, 32					; 00000020H

; 112  : #ifdef DEBUG_MEMORY_MANAGER
; 113  : 	mem_alloc_gather_stats		(false);
; 114  : 	mem_alloc_show_stats		();
; 115  : 	mem_alloc_clear_stats		();
; 116  : #endif // DEBUG
; 117  : 
; 118  : #ifdef DEBUG_MEMORY_MANAGER
; 119  : 	if (debug_mode)				dbg_dump_str_leaks	();
; 120  : #endif // DEBUG_MEMORY_MANAGER
; 121  : 
; 122  : 	extern str_container				verbosity_filters;
; 123  : 	verbosity_filters.clean();

	lea	rcx, OFFSET FLAT:?verbosity_filters@@3Vstr_container@@A ; verbosity_filters
	call	?clean@str_container@@QEAAXXZ		; str_container::clean

; 124  : 
; 125  : 	xr_delete					(g_pSharedMemoryContainer);

	xor	ebx, ebx
	cmp	QWORD PTR ?g_pSharedMemoryContainer@@3PEAVsmem_container@@EA, rbx ; g_pSharedMemoryContainer
	je	SHORT $LN3@destroy@8
	call	??R?$xr_special_free@$0A@Vsmem_container@@@@QEAAXAEAPEAVsmem_container@@@Z ; xr_special_free<0,smem_container>::operator()
	mov	QWORD PTR ?g_pSharedMemoryContainer@@3PEAVsmem_container@@EA, rbx ; g_pSharedMemoryContainer
$LN3@destroy@8:

; 126  : 	xr_delete					(g_pStringContainer);

	cmp	QWORD PTR ?g_pStringContainer@@3PEAVstr_container@@EA, rbx ; g_pStringContainer
	je	SHORT $LN9@destroy@8
	call	??R?$xr_special_free@$0A@Vstr_container@@@@QEAAXAEAPEAVstr_container@@@Z ; xr_special_free<0,str_container>::operator()
	mov	QWORD PTR ?g_pStringContainer@@3PEAVstr_container@@EA, rbx ; g_pStringContainer
$LN9@destroy@8:

; 127  : 
; 128  : #ifndef M_BORLAND
; 129  : #	ifdef DEBUG_MEMORY_MANAGER
; 130  : 		if (debug_mode)				dbg_dump_leaks	();
; 131  : #	endif // DEBUG_MEMORY_MANAGER
; 132  : #endif // M_BORLAND
; 133  : 
; 134  : 	mem_initialized				= FALSE;

	mov	DWORD PTR ?mem_initialized@@3HA, ebx	; mem_initialized

; 135  : #ifdef DEBUG_MEMORY_MANAGER
; 136  : 	debug_mode					= FALSE;
; 137  : #endif // DEBUG_MEMORY_MANAGER
; 138  : }

	add	rsp, 32					; 00000020H
	pop	rbx
	ret	0
?_destroy@xrMemory@@QEAAXXZ ENDP			; xrMemory::_destroy
;	COMDAT pdata
; File c:\users\nummer\documents\github\olr-3.0\src\xray\xrcore\_stl_extensions.h
pdata	SEGMENT
$pdata$??$xr_new@Vsmem_container@@@@YAPEAVsmem_container@@XZ DD imagerel $LN23
	DD	imagerel $LN23+89
	DD	imagerel $unwind$??$xr_new@Vsmem_container@@@@YAPEAVsmem_container@@XZ
pdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$??$xr_new@Vsmem_container@@@@YAPEAVsmem_container@@XZ DD 020601H
	DD	030023206H
; Function compile flags: /Ogtpy
; File c:\users\nummer\documents\github\olr-3.0\src\xray\xrcore\xrmemory_subst_msvc.h
xdata	ENDS
;	COMDAT ??$xr_new@Vsmem_container@@@@YAPEAVsmem_container@@XZ
_TEXT	SEGMENT
??$xr_new@Vsmem_container@@@@YAPEAVsmem_container@@XZ PROC ; xr_new<smem_container>, COMDAT

; 67   : {

$LN23:
	push	rbx
	sub	rsp, 32					; 00000020H

; 68   : 	T* ptr	= (T*)Memory.mem_alloc(sizeof(T));

	lea	rcx, OFFSET FLAT:?Memory@@3VxrMemory@@A	; Memory
	mov	edx, 40					; 00000028H
	call	?mem_alloc@xrMemory@@QEAAPEAX_K@Z	; xrMemory::mem_alloc
	mov	rbx, rax

; 69   : 	return new (ptr) T();

	test	rax, rax
	je	SHORT $LN3@xr_new
	lea	rcx, OFFSET FLAT:?Memory@@3VxrMemory@@A	; Memory
	mov	edx, 40					; 00000028H
	call	?mem_alloc@xrMemory@@QEAAPEAX_K@Z	; xrMemory::mem_alloc
	mov	rcx, rax
	mov	QWORD PTR [rbx], rax
	call	QWORD PTR __imp_InitializeCriticalSection
	xor	eax, eax
	mov	QWORD PTR [rbx+8], rax
	mov	QWORD PTR [rbx+16], rax
	mov	QWORD PTR [rbx+24], rax
	mov	rax, rbx

; 70   : }

	add	rsp, 32					; 00000020H
	pop	rbx
	ret	0
$LN3@xr_new:
	add	rsp, 32					; 00000020H
	pop	rbx
	ret	0
??$xr_new@Vsmem_container@@@@YAPEAVsmem_container@@XZ ENDP ; xr_new<smem_container>
_TEXT	ENDS
;	COMDAT pdata
; File c:\program files (x86)\microsoft visual studio 10.0\vc\include\new
pdata	SEGMENT
$pdata$??$xr_new@Vstr_container@@@@YAPEAVstr_container@@XZ DD imagerel $LN7
	DD	imagerel $LN7+43
	DD	imagerel $unwind$??$xr_new@Vstr_container@@@@YAPEAVstr_container@@XZ
pdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$??$xr_new@Vstr_container@@@@YAPEAVstr_container@@XZ DD 010401H
	DD	04204H
; Function compile flags: /Ogtpy
; File c:\users\nummer\documents\github\olr-3.0\src\xray\xrcore\xrmemory_subst_msvc.h
xdata	ENDS
;	COMDAT ??$xr_new@Vstr_container@@@@YAPEAVstr_container@@XZ
_TEXT	SEGMENT
??$xr_new@Vstr_container@@@@YAPEAVstr_container@@XZ PROC ; xr_new<str_container>, COMDAT

; 67   : {

$LN7:
	sub	rsp, 40					; 00000028H

; 68   : 	T* ptr	= (T*)Memory.mem_alloc(sizeof(T));

	lea	rcx, OFFSET FLAT:?Memory@@3VxrMemory@@A	; Memory
	mov	edx, 40					; 00000028H
	call	?mem_alloc@xrMemory@@QEAAPEAX_K@Z	; xrMemory::mem_alloc

; 69   : 	return new (ptr) T();

	test	rax, rax
	je	SHORT $LN3@xr_new@2
	mov	rcx, rax

; 70   : }

	add	rsp, 40					; 00000028H
	jmp	??0str_container@@QEAA@XZ
$LN3@xr_new@2:
	add	rsp, 40					; 00000028H
	ret	0
??$xr_new@Vstr_container@@@@YAPEAVstr_container@@XZ ENDP ; xr_new<str_container>
_TEXT	ENDS
PUBLIC	?xr_strdup@@YAPEADPEBD@Z			; xr_strdup
pdata	SEGMENT
$pdata$?xr_strdup@@YAPEADPEBD@Z DD imagerel $LN8
	DD	imagerel $LN8+86
	DD	imagerel $unwind$?xr_strdup@@YAPEADPEBD@Z
pdata	ENDS
xdata	SEGMENT
$unwind$?xr_strdup@@YAPEADPEBD@Z DD 060f01H
	DD	07640fH
	DD	06340fH
	DD	0700b320fH
; Function compile flags: /Ogtpy
; File c:\users\nummer\documents\github\olr-3.0\src\xray\xrcore\xrmemory.cpp
xdata	ENDS
_TEXT	SEGMENT
string$ = 48
?xr_strdup@@YAPEADPEBD@Z PROC				; xr_strdup

; 264  : {	

$LN8:
	mov	QWORD PTR [rsp+8], rbx
	mov	QWORD PTR [rsp+16], rsi
	push	rdi
	sub	rsp, 32					; 00000020H
	mov	rsi, rcx

; 265  : 	VERIFY	(string);
; 266  : 	u32		len			= u32(xr_strlen(string))+1	;

	or	rcx, -1
	xor	eax, eax
	mov	rdi, rsi
	repne scasb
	not	rcx
	and	ecx, ecx

; 267  : 	char *	memory		= (char*)	Memory.mem_alloc( len
; 268  : #ifdef DEBUG_MEMORY_NAME
; 269  : 		, "strdup"
; 270  : #endif // DEBUG_MEMORY_NAME
; 271  : 	);

	mov	edi, ecx
	mov	edx, ecx
	lea	rcx, OFFSET FLAT:?Memory@@3VxrMemory@@A	; Memory
	call	?mem_alloc@xrMemory@@QEAAPEAX_K@Z	; xrMemory::mem_alloc

; 272  : 	CopyMemory		(memory,string,len);

	mov	r8d, edi
	mov	rdx, rsi
	mov	rcx, rax
	mov	rbx, rax
	call	memcpy

; 273  : 	return	memory;
; 274  : }

	mov	rsi, QWORD PTR [rsp+56]
	mov	rax, rbx
	mov	rbx, QWORD PTR [rsp+48]
	add	rsp, 32					; 00000020H
	pop	rdi
	ret	0
?xr_strdup@@YAPEADPEBD@Z ENDP				; xr_strdup
_TEXT	ENDS
PUBLIC	?_initialize@xrMemory@@QEAAXH@Z			; xrMemory::_initialize
pdata	SEGMENT
$pdata$?_initialize@xrMemory@@QEAAXH@Z DD imagerel $LN76
	DD	imagerel $LN76+120
	DD	imagerel $unwind$?_initialize@xrMemory@@QEAAXH@Z
$pdata$1$?_initialize@xrMemory@@QEAAXH@Z DD imagerel $LN76+120
	DD	imagerel $LN76+177
	DD	imagerel $chain$1$?_initialize@xrMemory@@QEAAXH@Z
$pdata$2$?_initialize@xrMemory@@QEAAXH@Z DD imagerel $LN76+177
	DD	imagerel $LN76+426
	DD	imagerel $chain$2$?_initialize@xrMemory@@QEAAXH@Z
pdata	ENDS
xdata	SEGMENT
$unwind$?_initialize@xrMemory@@QEAAXH@Z DD 040a01H
	DD	08340aH
	DD	05006320aH
$chain$1$?_initialize@xrMemory@@QEAAXH@Z DD 040a21H
	DD	07740aH
	DD	066405H
	DD	imagerel $LN76
	DD	imagerel $LN76+120
	DD	imagerel $unwind$?_initialize@xrMemory@@QEAAXH@Z
$chain$2$?_initialize@xrMemory@@QEAAXH@Z DD 021H
	DD	imagerel $LN76
	DD	imagerel $LN76+120
	DD	imagerel $unwind$?_initialize@xrMemory@@QEAAXH@Z
; Function compile flags: /Ogtpy
xdata	ENDS
_TEXT	SEGMENT
this$ = 48
bDebug$ = 56
?_initialize@xrMemory@@QEAAXH@Z PROC			; xrMemory::_initialize

; 56   : {

$LN76:
	mov	QWORD PTR [rsp+24], rbx
	push	rbp
	sub	rsp, 32					; 00000020H

; 57   : #ifdef DEBUG_MEMORY_MANAGER
; 58   : 	debug_mode				= bDebug;
; 59   : 	debug_info_update		= 0;
; 60   : #endif // DEBUG_MEMORY_MANAGER
; 61   : 
; 62   : 	stat_calls				= 0;

	xor	ebp, ebp
	mov	QWORD PTR [rcx], rbp

; 63   : 	stat_counter			= 0;
; 64   : 
; 65   : 	u32	features		= CPU::ID.feature & CPU::ID.os_support;
; 66   : 	if (features & _CPU_FEATURE_MMX)

	mov	eax, DWORD PTR ?ID@CPU@@3U_processor_info@@A+112
	and	eax, DWORD PTR ?ID@CPU@@3U_processor_info@@A+108
	test	al, 2
	je	SHORT $LN6@initialize@4

; 67   : 	{
; 68   : 		mem_copy	= xrMemCopy_MMX;

	lea	rax, OFFSET FLAT:?xrMemCopy_MMX@@YAXPEAXPEBXI@Z ; xrMemCopy_MMX
	mov	QWORD PTR [rcx+8], rax

; 69   : 		mem_fill	= xrMemFill_x86;

	lea	rax, OFFSET FLAT:?xrMemFill_x86@@YAXPEAXHI@Z ; xrMemFill_x86
	mov	QWORD PTR [rcx+16], rax

; 70   : 		mem_fill32	= xrMemFill32_MMX;

	lea	rax, OFFSET FLAT:?xrMemFill32_MMX@@YAXPEAXII@Z ; xrMemFill32_MMX

; 71   : 	} else {

	jmp	SHORT $LN75@initialize@4
$LN6@initialize@4:

; 72   : 		mem_copy	= xrMemCopy_x86;

	lea	rax, OFFSET FLAT:?xrMemCopy_x86@@YAXPEAXPEBXI@Z ; xrMemCopy_x86
	mov	QWORD PTR [rcx+8], rax

; 73   : 		mem_fill	= xrMemFill_x86;

	lea	rax, OFFSET FLAT:?xrMemFill_x86@@YAXPEAXHI@Z ; xrMemFill_x86
	mov	QWORD PTR [rcx+16], rax

; 74   : 		mem_fill32	= xrMemFill32_x86;

	lea	rax, OFFSET FLAT:?xrMemFill32_x86@@YAXPEAXII@Z ; xrMemFill32_x86
$LN75@initialize@4:
	mov	QWORD PTR [rcx+24], rax

; 75   : 	}
; 76   : 
; 77   : #ifndef M_BORLAND
; 78   : 	if (!strstr(Core.Params,"-pure_alloc")) {

	lea	rdx, OFFSET FLAT:??_C@_0M@JMPEJJAK@?9pure_alloc?$AA@
	lea	rcx, OFFSET FLAT:?Core@@3VxrCore@@A+1232
	call	QWORD PTR __imp_strstr
	test	rax, rax
	jne	SHORT $LN1@initialize@4

; 79   : 		// initialize POOLs
; 80   : 		u32	element		= mem_pools_ebase;

	mov	QWORD PTR [rsp+48], rsi
	mov	QWORD PTR [rsp+56], rdi
	mov	ebx, 16
	lea	rdi, OFFSET FLAT:?mem_pools@@3PAVMEMPOOL@@A ; mem_pools
	lea	esi, QWORD PTR [rax+54]
$LL3@initialize@4:

; 81   : 		u32 sector		= mem_pools_ebase*1024;
; 82   : 		for (u32 pid=0; pid<mem_pools_count; pid++)
; 83   : 		{
; 84   : 			mem_pools[pid]._initialize(element,sector,0x1);

	mov	edx, ebx
	mov	rcx, rdi
	call	?_initialize@MEMPOOL@@QEAAXIII@Z	; MEMPOOL::_initialize

; 85   : 			element		+=	mem_pools_ebase;

	add	ebx, 16
	add	rdi, 40					; 00000028H
	dec	rsi
	jne	SHORT $LL3@initialize@4
	mov	rdi, QWORD PTR [rsp+56]
	mov	rsi, QWORD PTR [rsp+48]
$LN1@initialize@4:

; 86   : 		}
; 87   : 	}
; 88   : #endif // M_BORLAND
; 89   : 
; 90   : #ifdef DEBUG_MEMORY_MANAGER
; 91   : 	if (0==strstr(Core.Params,"-memo"))	mem_initialized				= TRUE;
; 92   : 	else								g_bMEMO						= TRUE;
; 93   : #else // DEBUG_MEMORY_MANAGER
; 94   : 	mem_initialized				= TRUE;
; 95   : #endif // DEBUG_MEMORY_MANAGER
; 96   : 
; 97   : //	DUMP_PHASE;
; 98   : 	g_pStringContainer			= xr_new<str_container>		();

	lea	rcx, OFFSET FLAT:?Memory@@3VxrMemory@@A	; Memory
	mov	edx, 40					; 00000028H
	mov	DWORD PTR ?mem_initialized@@3HA, 1	; mem_initialized
	call	?mem_alloc@xrMemory@@QEAAPEAX_K@Z	; xrMemory::mem_alloc
	mov	rbx, rax
	test	rax, rax
	je	SHORT $LN13@initialize@4
	lea	rcx, OFFSET FLAT:?Memory@@3VxrMemory@@A	; Memory
	mov	edx, 40					; 00000028H
	call	?mem_alloc@xrMemory@@QEAAPEAX_K@Z	; xrMemory::mem_alloc
	mov	rcx, rax
	mov	QWORD PTR [rbx], rax
	call	QWORD PTR __imp_InitializeCriticalSection
	lea	rcx, OFFSET FLAT:?Memory@@3VxrMemory@@A	; Memory
	mov	edx, 40					; 00000028H
	mov	QWORD PTR [rbx+24], rbp
	call	?mem_alloc@xrMemory@@QEAAPEAX_K@Z	; xrMemory::mem_alloc
	mov	QWORD PTR [rbx+16], rax
	mov	QWORD PTR [rax], rax
	mov	rax, QWORD PTR [rbx+16]
	mov	QWORD PTR [rax+8], rax
	mov	rax, QWORD PTR [rbx+16]
	mov	QWORD PTR [rax+16], rax
	mov	rax, QWORD PTR [rbx+16]
	mov	BYTE PTR [rax+32], 1
	mov	rax, QWORD PTR [rbx+16]
	mov	BYTE PTR [rax+33], 1
	mov	QWORD PTR ?g_pStringContainer@@3PEAVstr_container@@EA, rbx ; g_pStringContainer
	jmp	SHORT $LN14@initialize@4
$LN13@initialize@4:
	mov	QWORD PTR ?g_pStringContainer@@3PEAVstr_container@@EA, rbp ; g_pStringContainer
$LN14@initialize@4:

; 99   : 	shared_str_initialized		= true;
; 100  : //	DUMP_PHASE;
; 101  : 	g_pSharedMemoryContainer	= xr_new<smem_container>	();

	lea	rcx, OFFSET FLAT:?Memory@@3VxrMemory@@A	; Memory
	mov	edx, 40					; 00000028H
	mov	BYTE PTR ?shared_str_initialized@@3_NA, 1 ; shared_str_initialized
	call	?mem_alloc@xrMemory@@QEAAPEAX_K@Z	; xrMemory::mem_alloc
	mov	rbx, rax
	test	rax, rax
	je	SHORT $LN53@initialize@4
	lea	rcx, OFFSET FLAT:?Memory@@3VxrMemory@@A	; Memory
	mov	edx, 40					; 00000028H
	call	?mem_alloc@xrMemory@@QEAAPEAX_K@Z	; xrMemory::mem_alloc
	mov	rcx, rax
	mov	QWORD PTR [rbx], rax
	call	QWORD PTR __imp_InitializeCriticalSection
	mov	QWORD PTR [rbx+8], rbp
	mov	QWORD PTR [rbx+16], rbp
	mov	QWORD PTR [rbx+24], rbp
	mov	QWORD PTR ?g_pSharedMemoryContainer@@3PEAVsmem_container@@EA, rbx ; g_pSharedMemoryContainer

; 102  : //	DUMP_PHASE;
; 103  : }

	mov	rbx, QWORD PTR [rsp+64]
	add	rsp, 32					; 00000020H
	pop	rbp
	ret	0

; 99   : 	shared_str_initialized		= true;
; 100  : //	DUMP_PHASE;
; 101  : 	g_pSharedMemoryContainer	= xr_new<smem_container>	();

$LN53@initialize@4:
	mov	QWORD PTR ?g_pSharedMemoryContainer@@3PEAVsmem_container@@EA, rbp ; g_pSharedMemoryContainer

; 102  : //	DUMP_PHASE;
; 103  : }

	mov	rbx, QWORD PTR [rsp+64]
	add	rsp, 32					; 00000020H
	pop	rbp
	ret	0
?_initialize@xrMemory@@QEAAXH@Z ENDP			; xrMemory::_initialize
PUBLIC	?Memory@@3VxrMemory@@A				; Memory
?Memory@@3VxrMemory@@A DB 08H DUP (?)
	DQ	FLAT:?xrMemCopy_x86@@YAXPEAXPEBXI@Z	; Memory
	DQ	FLAT:?xrMemFill_x86@@YAXPEAXHI@Z
	DQ	FLAT:?xrMemFill32_x86@@YAXPEAXII@Z
END