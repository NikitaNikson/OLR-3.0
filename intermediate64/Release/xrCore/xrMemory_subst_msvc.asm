; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

include listing.inc

INCLUDELIB OLDNAMES

PUBLIC	?create@MEMPOOL@@QEAAPEAXXZ			; MEMPOOL::create
PUBLIC	?destroy@MEMPOOL@@QEAAXAEAPEAX@Z		; MEMPOOL::destroy
PUBLIC	?get_element@MEMPOOL@@QEAAIXZ			; MEMPOOL::get_element
PUBLIC	?acc_header@@YAPEAEPEAX@Z			; acc_header
PUBLIC	?get_header@@YAIPEAX@Z				; get_header
PUBLIC	?get_pool@@YAI_K@Z				; get_pool
PUBLIC	??$_min@I@@YAIII@Z				; _min<unsigned int>
PUBLIC	??0MEMPOOL@@QEAA@XZ				; MEMPOOL::MEMPOOL
PUBLIC	??1MEMPOOL@@QEAA@XZ				; MEMPOOL::~MEMPOOL
PUBLIC	??_C@_0BE@LHNBCIB@xrMemory?3?3mem_alloc?$AA@	; `string'
PUBLIC	??_C@_0BI@MKKJNCPP@xrMemory_subst_msvc?4cpp?$AA@ ; `string'
PUBLIC	??_C@_0BC@KHLAADNE@size?5?$DM?50x7fffFFFF?$AA@	; `string'
PUBLIC	??_C@_0BG@BIILGNAF@xrMemory?3?3mem_realloc?$AA@	; `string'
PUBLIC	??_C@_0BC@MAGELDOC@Memory?5corruption?$AA@	; `string'
PUBLIC	??_C@_0BK@CPGKHBFC@p_current?$DMmem_pools_count?$AA@ ; `string'
;	COMDAT ?ignore_always@?3??mem_alloc@xrMemory@@QEAAPEAX_K@Z@4_NA
_BSS	SEGMENT
?ignore_always@?3??mem_alloc@xrMemory@@QEAAPEAX_K@Z@4_NA DB 01H DUP (?) ; `xrMemory::mem_alloc'::`4'::ignore_always
_BSS	ENDS
;	COMDAT ?ignore_always@?BF@??mem_realloc@xrMemory@@QEAAPEAXPEAX_K@Z@4_NA
_BSS	SEGMENT
?ignore_always@?BF@??mem_realloc@xrMemory@@QEAAPEAXPEAX_K@Z@4_NA DB 01H DUP (?) ; `xrMemory::mem_realloc'::`21'::ignore_always
;	COMDAT ??_C@_0BK@CPGKHBFC@p_current?$DMmem_pools_count?$AA@
CONST	SEGMENT
??_C@_0BK@CPGKHBFC@p_current?$DMmem_pools_count?$AA@ DB 'p_current<mem_po'
	DB	'ols_count', 00H				; `string'
CONST	ENDS
;	COMDAT ??_C@_0BC@MAGELDOC@Memory?5corruption?$AA@
CONST	SEGMENT
??_C@_0BC@MAGELDOC@Memory?5corruption?$AA@ DB 'Memory corruption', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0BG@BIILGNAF@xrMemory?3?3mem_realloc?$AA@
CONST	SEGMENT
??_C@_0BG@BIILGNAF@xrMemory?3?3mem_realloc?$AA@ DB 'xrMemory::mem_realloc'
	DB	00H						; `string'
CONST	ENDS
;	COMDAT ??_C@_0BC@KHLAADNE@size?5?$DM?50x7fffFFFF?$AA@
CONST	SEGMENT
??_C@_0BC@KHLAADNE@size?5?$DM?50x7fffFFFF?$AA@ DB 'size < 0x7fffFFFF', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0BI@MKKJNCPP@xrMemory_subst_msvc?4cpp?$AA@
CONST	SEGMENT
??_C@_0BI@MKKJNCPP@xrMemory_subst_msvc?4cpp?$AA@ DB 'xrMemory_subst_msvc.'
	DB	'cpp', 00H					; `string'
CONST	ENDS
;	COMDAT ??_C@_0BE@LHNBCIB@xrMemory?3?3mem_alloc?$AA@
CONST	SEGMENT
??_C@_0BE@LHNBCIB@xrMemory?3?3mem_alloc?$AA@ DB 'xrMemory::mem_alloc', 00H ; `string'
PUBLIC	?mem_alloc@xrMemory@@QEAAPEAX_K@Z		; xrMemory::mem_alloc
; Function compile flags: /Ogtpy
; File c:\users\nummer\documents\github\olr-3.0\src\xray\xrcore\xrmemory_pool.h
;	COMDAT ?get_element@MEMPOOL@@QEAAIXZ
_TEXT	SEGMENT
this$ = 8
?get_element@MEMPOOL@@QEAAIXZ PROC			; MEMPOOL::get_element, COMDAT

; 31   : 	ICF u32				get_element		()	{ return s_element; }

	mov	eax, DWORD PTR [rcx+12]
	ret	0
?get_element@MEMPOOL@@QEAAIXZ ENDP			; MEMPOOL::get_element
; Function compile flags: /Ogtpy
; File c:\users\nummer\documents\github\olr-3.0\src\xray\xrcore\_std_extensions.h
_TEXT	ENDS
;	COMDAT ??$_min@I@@YAIII@Z
_TEXT	SEGMENT
a$ = 8
b$ = 16
??$_min@I@@YAIII@Z PROC					; _min<unsigned int>, COMDAT

; 93   : template <class T>	IC T		_min	(T a, T b)	{ return a<b?a:b;	}

	cmp	ecx, edx
	cmovb	edx, ecx
	mov	eax, edx
	ret	0
??$_min@I@@YAIII@Z ENDP					; _min<unsigned int>
; Function compile flags: /Ogtpy
; File c:\users\nummer\documents\github\olr-3.0\src\xray\xrcore\xrmemory_subst_msvc.cpp
_TEXT	ENDS
;	COMDAT ?get_pool@@YAI_K@Z
_TEXT	SEGMENT
size$ = 8
?get_pool@@YAI_K@Z PROC					; get_pool, COMDAT

; 28   : 	u32		pid					= u32(size/mem_pools_ebase);

	shr	rcx, 4

; 29   : 	if (pid>=mem_pools_count)	return mem_generic;

	mov	eax, 55					; 00000037H
	cmp	ecx, 54					; 00000036H
	cmovae	ecx, eax
	mov	eax, ecx

; 30   : 	else						return pid;
; 31   : }

	ret	0
?get_pool@@YAI_K@Z ENDP					; get_pool
; Function compile flags: /Ogtpy
_TEXT	ENDS
;	COMDAT ?acc_header@@YAPEAEPEAX@Z
_TEXT	SEGMENT
P$ = 8
?acc_header@@YAPEAEPEAX@Z PROC				; acc_header, COMDAT

; 24   : ICF	u8*		acc_header			(void* P)	{	u8*		_P		= (u8*)P;	return	_P-1;	}

	lea	rax, QWORD PTR [rcx-1]
	ret	0
?acc_header@@YAPEAEPEAX@Z ENDP				; acc_header
_TEXT	ENDS
PUBLIC	??_H@YAXPEAX_KHP6APEAX0@Z@Z			; `vector constructor iterator'
;	COMDAT pdata
pdata	SEGMENT
$pdata$??_H@YAXPEAX_KHP6APEAX0@Z@Z DD imagerel $LN76
	DD	imagerel $LN76+80
	DD	imagerel $unwind$??_H@YAXPEAX_KHP6APEAX0@Z@Z
pdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$??_H@YAXPEAX_KHP6APEAX0@Z@Z DD 040a01H
	DD	06340aH
	DD	07006320aH
; Function compile flags: /Ogtpy
xdata	ENDS
;	COMDAT ??_H@YAXPEAX_KHP6APEAX0@Z@Z
_TEXT	SEGMENT
??_H@YAXPEAX_KHP6APEAX0@Z@Z PROC			; `vector constructor iterator', COMDAT
$LN76:
	mov	QWORD PTR [rsp+8], rbx
	push	rdi
	sub	rsp, 32					; 00000020H
	lea	rbx, OFFSET FLAT:?mem_pools@@3PAVMEMPOOL@@A ; mem_pools
	mov	edi, 53					; 00000035H
	npad	10
$LL2@vector:
	lea	rcx, OFFSET FLAT:?Memory@@3VxrMemory@@A	; Memory
	mov	edx, 40					; 00000028H
	call	?mem_alloc@xrMemory@@QEAAPEAX_K@Z	; xrMemory::mem_alloc
	mov	rcx, rax
	mov	QWORD PTR [rbx], rax
	call	QWORD PTR __imp_InitializeCriticalSection
	add	rbx, 40					; 00000028H
	dec	edi
	jns	SHORT $LL2@vector
	mov	rbx, QWORD PTR [rsp+48]
	add	rsp, 32					; 00000020H
	pop	rdi
	ret	0
??_H@YAXPEAX_KHP6APEAX0@Z@Z ENDP			; `vector constructor iterator'
;	COMDAT pdata
; File c:\users\nummer\documents\github\olr-3.0\src\xray\xrcore\xrsyncronize.cpp
pdata	SEGMENT
$pdata$?destroy@MEMPOOL@@QEAAXAEAPEAX@Z DD imagerel $LN9
	DD	imagerel $LN9+59
	DD	imagerel $unwind$?destroy@MEMPOOL@@QEAAXAEAPEAX@Z
pdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?destroy@MEMPOOL@@QEAAXAEAPEAX@Z DD 040a01H
	DD	06340aH
	DD	07006320aH
; Function compile flags: /Ogtpy
; File c:\users\nummer\documents\github\olr-3.0\src\xray\xrcore\xrmemory_pool.h
xdata	ENDS
;	COMDAT ?destroy@MEMPOOL@@QEAAXAEAPEAX@Z
_TEXT	SEGMENT
this$ = 48
P$ = 56
?destroy@MEMPOOL@@QEAAXAEAPEAX@Z PROC			; MEMPOOL::destroy, COMDAT

; 44   : 	{

$LN9:
	mov	QWORD PTR [rsp+8], rbx
	push	rdi
	sub	rsp, 32					; 00000020H
	mov	rdi, rcx

; 45   : 		cs.Enter		();

	mov	rcx, QWORD PTR [rcx]
	mov	rbx, rdx
	call	QWORD PTR __imp_EnterCriticalSection

; 46   : 		*access(P)		= list;

	mov	rdx, QWORD PTR [rbx]
	mov	rax, QWORD PTR [rdi+32]
	mov	QWORD PTR [rdx], rax

; 47   : 		list			= (u8*)P;
; 48   : 		cs.Leave		();

	mov	rcx, QWORD PTR [rdi]
	mov	QWORD PTR [rdi+32], rdx

; 49   : 	}

	mov	rbx, QWORD PTR [rsp+48]
	add	rsp, 32					; 00000020H
	pop	rdi
	rex_jmp	QWORD PTR __imp_LeaveCriticalSection
?destroy@MEMPOOL@@QEAAXAEAPEAX@Z ENDP			; MEMPOOL::destroy
; Function compile flags: /Ogtpy
; File c:\users\nummer\documents\github\olr-3.0\src\xray\xrcore\xrmemory_subst_msvc.cpp
_TEXT	ENDS
;	COMDAT ?get_header@@YAIPEAX@Z
_TEXT	SEGMENT
P$ = 8
?get_header@@YAIPEAX@Z PROC				; get_header, COMDAT

; 25   : ICF	u32		get_header			(void* P)	{	return	(u32)*acc_header(P);				}

	movzx	eax, BYTE PTR [rcx-1]
	ret	0
?get_header@@YAIPEAX@Z ENDP				; get_header
PUBLIC	?mem_free@xrMemory@@QEAAXPEAX@Z			; xrMemory::mem_free
pdata	SEGMENT
$pdata$?mem_free@xrMemory@@QEAAXPEAX@Z DD imagerel $LN26
	DD	imagerel $LN26+46
	DD	imagerel $unwind$?mem_free@xrMemory@@QEAAXPEAX@Z
$pdata$1$?mem_free@xrMemory@@QEAAXPEAX@Z DD imagerel $LN26+46
	DD	imagerel $LN26+110
	DD	imagerel $chain$1$?mem_free@xrMemory@@QEAAXPEAX@Z
$pdata$2$?mem_free@xrMemory@@QEAAXPEAX@Z DD imagerel $LN26+110
	DD	imagerel $LN26+116
	DD	imagerel $chain$2$?mem_free@xrMemory@@QEAAXPEAX@Z
pdata	ENDS
xdata	SEGMENT
$unwind$?mem_free@xrMemory@@QEAAXPEAX@Z DD 020601H
	DD	070023206H
$chain$1$?mem_free@xrMemory@@QEAAXPEAX@Z DD 040e21H
	DD	07640eH
	DD	063405H
	DD	imagerel $LN26
	DD	imagerel $LN26+46
	DD	imagerel $unwind$?mem_free@xrMemory@@QEAAXPEAX@Z
$chain$2$?mem_free@xrMemory@@QEAAXPEAX@Z DD 021H
	DD	imagerel $LN26
	DD	imagerel $LN26+46
	DD	imagerel $unwind$?mem_free@xrMemory@@QEAAXPEAX@Z
; Function compile flags: /Ogtpy
xdata	ENDS
_TEXT	SEGMENT
this$ = 48
P$ = 56
?mem_free@xrMemory@@QEAAXPEAX@Z PROC			; xrMemory::mem_free

; 129  : {

$LN26:
	push	rdi
	sub	rsp, 32					; 00000020H

; 130  : 	stat_calls++;

	inc	DWORD PTR [rcx]

; 131  : #ifdef USE_MEMORY_MONITOR
; 132  : 	memory_monitor::monitor_free(P);
; 133  : #endif // USE_MEMORY_MONITOR
; 134  : 
; 135  : #ifdef PURE_ALLOC
; 136  : 	if (g_use_pure_alloc) {
; 137  : 		free					(P);
; 138  : 		return;
; 139  : 	}
; 140  : #endif // PURE_ALLOC
; 141  : 
; 142  : #ifdef DEBUG_MEMORY_MANAGER
; 143  : 	if(g_globalCheckAddr==P)
; 144  : 		__asm int 3;
; 145  : #endif // DEBUG_MEMORY_MANAGER
; 146  : 
; 147  : #ifdef DEBUG_MEMORY_MANAGER
; 148  : 	if (mem_initialized)		debug_cs.Enter		();
; 149  : #endif // DEBUG_MEMORY_MANAGER
; 150  : 	if		(debug_mode)		dbg_unregister	(P);
; 151  : 	u32	pool					= get_header	(P);

	movzx	eax, BYTE PTR [rdx-1]
	lea	rdi, QWORD PTR [rdx-1]

; 152  : 	void* _real					= (void*)(((u8*)P)-1);
; 153  : 	if (mem_generic==pool)		

	cmp	eax, 55					; 00000037H
	jne	SHORT $LN3@mem_free

; 154  : 	{
; 155  : 		// generic
; 156  : 		xr_aligned_free			(_real);

	test	rdi, rdi
	je	SHORT $LN24@mem_free
	and	rdi, -8
	mov	rcx, QWORD PTR [rdi-8]

; 161  : 	}
; 162  : #ifdef DEBUG_MEMORY_MANAGER
; 163  : 	if (mem_initialized)		debug_cs.Leave	();
; 164  : #endif // DEBUG_MEMORY_MANAGER
; 165  : }

	add	rsp, 32					; 00000020H
	pop	rdi
	rex_jmp	QWORD PTR __imp_free
$LN3@mem_free:
	mov	QWORD PTR [rsp+48], rbx

; 157  : 	} else {
; 158  : 		// pooled
; 159  : 		VERIFY2					(pool<mem_pools_count,"Memory corruption");
; 160  : 		mem_pools[pool].destroy	(_real);

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
	mov	rbx, QWORD PTR [rsp+48]
$LN24@mem_free:

; 161  : 	}
; 162  : #ifdef DEBUG_MEMORY_MANAGER
; 163  : 	if (mem_initialized)		debug_cs.Leave	();
; 164  : #endif // DEBUG_MEMORY_MANAGER
; 165  : }

	add	rsp, 32					; 00000020H
	pop	rdi
	ret	0
?mem_free@xrMemory@@QEAAXPEAX@Z ENDP			; xrMemory::mem_free
;	COMDAT pdata
pdata	SEGMENT
$pdata$??1MEMPOOL@@QEAA@XZ DD imagerel $LN5
	DD	imagerel $LN5+31
	DD	imagerel $unwind$??1MEMPOOL@@QEAA@XZ
pdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$??1MEMPOOL@@QEAA@XZ DD 020601H
	DD	030023206H
; Function compile flags: /Ogtpy
xdata	ENDS
;	COMDAT ??1MEMPOOL@@QEAA@XZ
_TEXT	SEGMENT
this$ = 48
??1MEMPOOL@@QEAA@XZ PROC				; MEMPOOL::~MEMPOOL, COMDAT
$LN5:
	push	rbx
	sub	rsp, 32					; 00000020H
	mov	rbx, rcx
	mov	rcx, QWORD PTR [rcx]
	call	QWORD PTR __imp_DeleteCriticalSection
	mov	rcx, rbx
	add	rsp, 32					; 00000020H
	pop	rbx
	jmp	??$xr_free@X@@YAXAEAPEAX@Z		; xr_free<void>
??1MEMPOOL@@QEAA@XZ ENDP				; MEMPOOL::~MEMPOOL
_TEXT	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$??0MEMPOOL@@QEAA@XZ DD imagerel $LN66
	DD	imagerel $LN66+47
	DD	imagerel $unwind$??0MEMPOOL@@QEAA@XZ
pdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$??0MEMPOOL@@QEAA@XZ DD 020601H
	DD	030023206H
; Function compile flags: /Ogtpy
xdata	ENDS
;	COMDAT ??0MEMPOOL@@QEAA@XZ
_TEXT	SEGMENT
this$ = 48
??0MEMPOOL@@QEAA@XZ PROC				; MEMPOOL::MEMPOOL, COMDAT
$LN66:
	push	rbx
	sub	rsp, 32					; 00000020H
	mov	rbx, rcx
	lea	rcx, OFFSET FLAT:?Memory@@3VxrMemory@@A	; Memory
	mov	edx, 40					; 00000028H
	call	?mem_alloc@xrMemory@@QEAAPEAX_K@Z	; xrMemory::mem_alloc
	mov	rcx, rax
	mov	QWORD PTR [rbx], rax
	call	QWORD PTR __imp_InitializeCriticalSection
	mov	rax, rbx
	add	rsp, 32					; 00000020H
	pop	rbx
	ret	0
??0MEMPOOL@@QEAA@XZ ENDP				; MEMPOOL::MEMPOOL
;	COMDAT pdata
; File c:\users\nummer\documents\github\olr-3.0\src\xray\xrcore\xrsyncronize.cpp
pdata	SEGMENT
$pdata$?create@MEMPOOL@@QEAAPEAXXZ DD imagerel $LN10
	DD	imagerel $LN10+71
	DD	imagerel $unwind$?create@MEMPOOL@@QEAAPEAXXZ
pdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?create@MEMPOOL@@QEAAPEAXXZ DD 040a01H
	DD	06340aH
	DD	07006320aH
; Function compile flags: /Ogtpy
; File c:\users\nummer\documents\github\olr-3.0\src\xray\xrcore\xrmemory_pool.h
xdata	ENDS
;	COMDAT ?create@MEMPOOL@@QEAAPEAXXZ
_TEXT	SEGMENT
this$ = 48
?create@MEMPOOL@@QEAAPEAXXZ PROC			; MEMPOOL::create, COMDAT

; 34   : 	{

$LN10:
	mov	QWORD PTR [rsp+8], rbx
	push	rdi
	sub	rsp, 32					; 00000020H
	mov	rdi, rcx

; 35   : 		cs.Enter		();

	mov	rcx, QWORD PTR [rcx]
	call	QWORD PTR __imp_EnterCriticalSection

; 36   : 		if (0==list)	block_create();

	cmp	QWORD PTR [rdi+32], 0
	jne	SHORT $LN1@create
	mov	rcx, rdi
	call	?block_create@MEMPOOL@@AEAAXXZ		; MEMPOOL::block_create
$LN1@create:

; 37   : 
; 38   : 		void* E			= list;

	mov	rbx, QWORD PTR [rdi+32]

; 39   : 		list			= (u8*)*access(list);
; 40   : 		cs.Leave		();

	mov	rcx, QWORD PTR [rdi]
	mov	rdx, QWORD PTR [rbx]
	mov	QWORD PTR [rdi+32], rdx
	call	QWORD PTR __imp_LeaveCriticalSection

; 41   : 		return			E;

	mov	rax, rbx

; 42   : 	}

	mov	rbx, QWORD PTR [rsp+48]
	add	rsp, 32					; 00000020H
	pop	rdi
	ret	0
?create@MEMPOOL@@QEAAPEAXXZ ENDP			; MEMPOOL::create
_TEXT	ENDS
pdata	SEGMENT
$pdata$?mem_alloc@xrMemory@@QEAAPEAX_K@Z DD imagerel $LN45
	DD	imagerel $LN45+143
	DD	imagerel $unwind$?mem_alloc@xrMemory@@QEAAPEAX_K@Z
$pdata$0$?mem_alloc@xrMemory@@QEAAPEAX_K@Z DD imagerel $LN45+143
	DD	imagerel $LN45+231
	DD	imagerel $chain$0$?mem_alloc@xrMemory@@QEAAPEAX_K@Z
$pdata$1$?mem_alloc@xrMemory@@QEAAPEAX_K@Z DD imagerel $LN45+231
	DD	imagerel $LN45+293
	DD	imagerel $chain$1$?mem_alloc@xrMemory@@QEAAPEAX_K@Z
pdata	ENDS
xdata	SEGMENT
$unwind$?mem_alloc@xrMemory@@QEAAPEAX_K@Z DD 040a01H
	DD	0d340aH
	DD	07006920aH
$chain$0$?mem_alloc@xrMemory@@QEAAPEAX_K@Z DD 020521H
	DD	0c6405H
	DD	imagerel $LN45
	DD	imagerel $LN45+143
	DD	imagerel $unwind$?mem_alloc@xrMemory@@QEAAPEAX_K@Z
$chain$1$?mem_alloc@xrMemory@@QEAAPEAX_K@Z DD 021H
	DD	imagerel $LN45
	DD	imagerel $LN45+143
	DD	imagerel $unwind$?mem_alloc@xrMemory@@QEAAPEAX_K@Z
; Function compile flags: /Ogtpy
; File c:\users\nummer\documents\github\olr-3.0\src\xray\xrcore\xrmemory_subst_msvc.cpp
xdata	ENDS
_TEXT	SEGMENT
this$ = 96
size$ = 104
?mem_alloc@xrMemory@@QEAAPEAX_K@Z PROC			; xrMemory::mem_alloc

; 42   : {

$LN45:
	mov	QWORD PTR [rsp+16], rbx
	push	rdi
	sub	rsp, 80					; 00000050H

; 43   : 	stat_calls++;

	inc	DWORD PTR [rcx]

; 44   : 	_ASSERT (size > 0);
; 45   : 	R_ASSERT (size < 0x7fffFFFF);

	xor	ebx, ebx
	mov	rdi, rdx
	cmp	BYTE PTR ?ignore_always@?3??mem_alloc@xrMemory@@QEAAPEAX_K@Z@4_NA, bl
	jne	SHORT $LN7@mem_alloc
	cmp	rdx, 2147483647				; 7fffffffH
	jb	SHORT $LN7@mem_alloc
	lea	rax, OFFSET FLAT:?ignore_always@?3??mem_alloc@xrMemory@@QEAAPEAX_K@Z@4_NA
	lea	r8, OFFSET FLAT:??_C@_0BC@KHLAADNE@size?5?$DM?50x7fffFFFF?$AA@
	lea	rdx, OFFSET FLAT:??_C@_0BB@DBHFCHNO@assertion?5failed?$AA@
	mov	QWORD PTR [rsp+64], rax
	lea	rax, OFFSET FLAT:??_C@_0BE@LHNBCIB@xrMemory?3?3mem_alloc?$AA@
	lea	rcx, OFFSET FLAT:?Debug@@3VxrDebug@@A	; Debug
	mov	QWORD PTR [rsp+56], rax
	lea	rax, OFFSET FLAT:??_C@_0BI@MKKJNCPP@xrMemory_subst_msvc?4cpp?$AA@
	mov	DWORD PTR [rsp+48], 45			; 0000002dH
	mov	QWORD PTR [rsp+40], rax
	xor	r9d, r9d
	mov	QWORD PTR [rsp+32], rbx
	call	?backend@xrDebug@@QEAAXPEBD0000H0AEA_N@Z ; xrDebug::backend
$LN7@mem_alloc:

; 46   : 
; 47   : #ifdef PURE_ALLOC
; 48   : 	static bool g_use_pure_alloc_initialized = false;
; 49   : 	if (!g_use_pure_alloc_initialized) {
; 50   : 		g_use_pure_alloc_initialized	= true;
; 51   : 		g_use_pure_alloc				= 
; 52   : #	ifdef XRCORE_STATIC
; 53   : 			true
; 54   : #	else // XRCORE_STATIC
; 55   : 			!!strstr(GetCommandLine(),"-pure_alloc")
; 56   : #	endif // XRCORE_STATIC
; 57   : 			;
; 58   : 	}
; 59   : 
; 60   : 	if (g_use_pure_alloc) {
; 61   : 		void							*result = malloc(size);
; 62   : #ifdef USE_MEMORY_MONITOR
; 63   : 		memory_monitor::monitor_alloc	(result,size,_name);
; 64   : #endif // USE_MEMORY_MONITOR
; 65   : 		return							(result);
; 66   : 	}
; 67   : #endif // PURE_ALLOC
; 68   : 
; 69   : #ifdef DEBUG_MEMORY_MANAGER
; 70   : 	if (mem_initialized)		debug_cs.Enter		();
; 71   : #endif // DEBUG_MEMORY_MANAGER
; 72   : 
; 73   : 	u32		_footer				=	debug_mode?4:0;
; 74   : 	void*	_ptr				=	0;
; 75   : 
; 76   : 	//
; 77   : 	if (!mem_initialized /*|| debug_mode*/)		

	cmp	DWORD PTR ?mem_initialized@@3HA, ebx	; mem_initialized

; 78   : 	{
; 79   : 		// generic
; 80   : 		//	Igor: Reserve 1 byte for xrMemory header
; 81   : 		void*	_real			=	xr_aligned_offset_malloc	(1 + size + _footer, 16, 0x1);

	lea	rcx, QWORD PTR [rdi+1]

; 82   : 		//void*	_real			=	xr_aligned_offset_malloc	(size + _footer, 16, 0x1);
; 83   : 		_ptr					=	(void*)(((u8*)_real)+1);
; 84   : 		*acc_header(_ptr)		=	mem_generic;
; 85   : 	} else {

	je	SHORT $LN42@mem_alloc

; 86   : #ifdef DEBUG_MEMORY_MANAGER
; 87   : 		save_stack_trace		();
; 88   : #endif // DEBUG
; 89   : 		//	accelerated
; 90   : 		//	Igor: Reserve 1 byte for xrMemory header
; 91   : 		u32	pool				=	get_pool	(1+size+_footer);

	mov	rdi, rcx
	shr	rdi, 4
	cmp	edi, 54					; 00000036H
	jae	SHORT $LN42@mem_alloc

; 92   : 		//u32	pool				=	get_pool	(size+_footer);
; 93   : 		if (mem_generic==pool)	

	cmp	edi, 55					; 00000037H
	je	SHORT $LN42@mem_alloc

; 100  : 			*acc_header(_ptr)	=	mem_generic;
; 101  : 		} else {
; 102  : 			// pooled
; 103  : 			//	Igor: Reserve 1 byte for xrMemory header
; 104  : 			//	Already reserved when getting pool id
; 105  : 			void*	_real		=	mem_pools[pool].create();

	mov	eax, edi
	mov	QWORD PTR [rsp+96], rsi
	lea	rcx, QWORD PTR [rax+rax*4]
	lea	rax, OFFSET FLAT:?mem_pools@@3PAVMEMPOOL@@A ; mem_pools
	lea	rsi, QWORD PTR [rax+rcx*8]
	mov	rcx, QWORD PTR [rax+rcx*8]
	call	QWORD PTR __imp_EnterCriticalSection
	cmp	QWORD PTR [rsi+32], rbx
	jne	SHORT $LN31@mem_alloc
	mov	rcx, rsi
	call	?block_create@MEMPOOL@@AEAAXXZ		; MEMPOOL::block_create
$LN31@mem_alloc:
	mov	rbx, QWORD PTR [rsi+32]
	mov	rcx, QWORD PTR [rsi]
	mov	rax, QWORD PTR [rbx]
	mov	QWORD PTR [rsi+32], rax
	call	QWORD PTR __imp_LeaveCriticalSection
	mov	rsi, QWORD PTR [rsp+96]

; 106  : 			_ptr				=	(void*)(((u8*)_real)+1);

	lea	rax, QWORD PTR [rbx+1]

; 107  : 			*acc_header(_ptr)	=	(u8)pool;

	mov	BYTE PTR [rax-1], dil

; 108  : 		}
; 109  : 	}
; 110  : 
; 111  : #ifdef DEBUG_MEMORY_MANAGER
; 112  : 	if		(debug_mode)		dbg_register		(_ptr,size,_name);
; 113  : 	if (mem_initialized)		debug_cs.Leave		();
; 114  : 	//if(g_globalCheckAddr==_ptr){
; 115  : 	//	__asm int 3;
; 116  : 	//}
; 117  : 	//if (_name && (0==strcmp(_name,"class ISpatial *")) && (size==376))
; 118  : 	//{
; 119  : 	//	__asm int 3;
; 120  : 	//}
; 121  : #endif // DEBUG_MEMORY_MANAGER
; 122  : #ifdef USE_MEMORY_MONITOR
; 123  : 	memory_monitor::monitor_alloc	(_ptr,size,_name);
; 124  : #endif // USE_MEMORY_MONITOR	
; 125  : 	return	_ptr;
; 126  : }

	mov	rbx, QWORD PTR [rsp+104]
	add	rsp, 80					; 00000050H
	pop	rdi
	ret	0
$LN42@mem_alloc:

; 94   : 		{
; 95   : 			// generic
; 96   : 			//	Igor: Reserve 1 byte for xrMemory header
; 97   : 			void*	_real		=	xr_aligned_offset_malloc	(1 + size + _footer,16,0x1);

	cmp	rcx, 1
	mov	eax, 2
	cmovbe	rcx, rax
	add	rcx, 30
	call	QWORD PTR __imp_malloc
	test	rax, rax
	je	SHORT $LN27@mem_alloc
	lea	rbx, QWORD PTR [rax+31]
	and	rbx, -16
	dec	rbx
	mov	QWORD PTR [rbx-15], rax
$LN27@mem_alloc:

; 98   : 			//void*	_real		=	xr_aligned_offset_malloc	(size + _footer,16,0x1);
; 99   : 			_ptr				=	(void*)(((u8*)_real)+1);

	lea	rax, QWORD PTR [rbx+1]

; 108  : 		}
; 109  : 	}
; 110  : 
; 111  : #ifdef DEBUG_MEMORY_MANAGER
; 112  : 	if		(debug_mode)		dbg_register		(_ptr,size,_name);
; 113  : 	if (mem_initialized)		debug_cs.Leave		();
; 114  : 	//if(g_globalCheckAddr==_ptr){
; 115  : 	//	__asm int 3;
; 116  : 	//}
; 117  : 	//if (_name && (0==strcmp(_name,"class ISpatial *")) && (size==376))
; 118  : 	//{
; 119  : 	//	__asm int 3;
; 120  : 	//}
; 121  : #endif // DEBUG_MEMORY_MANAGER
; 122  : #ifdef USE_MEMORY_MONITOR
; 123  : 	memory_monitor::monitor_alloc	(_ptr,size,_name);
; 124  : #endif // USE_MEMORY_MONITOR	
; 125  : 	return	_ptr;
; 126  : }

	mov	rbx, QWORD PTR [rsp+104]
	mov	BYTE PTR [rax-1], 55			; 00000037H
	add	rsp, 80					; 00000050H
	pop	rdi
	ret	0
?mem_alloc@xrMemory@@QEAAPEAX_K@Z ENDP			; xrMemory::mem_alloc
PUBLIC	?mem_realloc@xrMemory@@QEAAPEAXPEAX_K@Z		; xrMemory::mem_realloc
pdata	SEGMENT
$pdata$?mem_realloc@xrMemory@@QEAAPEAXPEAX_K@Z DD imagerel $LN34
	DD	imagerel $LN34+354
	DD	imagerel $unwind$?mem_realloc@xrMemory@@QEAAPEAXPEAX_K@Z
pdata	ENDS
xdata	SEGMENT
$unwind$?mem_realloc@xrMemory@@QEAAPEAXPEAX_K@Z DD 0a5a01H
	DD	0d745aH
	DD	0c3445H
	DD	0f6410H
	DD	0e5410H
	DD	0c00c9210H
; Function compile flags: /Ogtpy
xdata	ENDS
_TEXT	SEGMENT
this$ = 96
P$ = 104
size$ = 112
?mem_realloc@xrMemory@@QEAAPEAXPEAX_K@Z PROC		; xrMemory::mem_realloc

; 174  : {

$LN34:
	mov	QWORD PTR [rsp+24], rbp
	mov	QWORD PTR [rsp+32], rsi
	push	r12
	sub	rsp, 80					; 00000050H

; 175  : 	stat_calls++;

	inc	DWORD PTR [rcx]
	mov	rbp, r8
	mov	r12, rdx
	mov	rsi, rcx

; 176  : #ifdef PURE_ALLOC
; 177  : 	if (g_use_pure_alloc) {
; 178  : 		void							*result = realloc(P,size);
; 179  : #	ifdef USE_MEMORY_MONITOR
; 180  : 		memory_monitor::monitor_free	(P);
; 181  : 		memory_monitor::monitor_alloc	(result,size,_name);
; 182  : #	endif // USE_MEMORY_MONITOR
; 183  : 		return							(result);
; 184  : 	}
; 185  : #endif // PURE_ALLOC
; 186  : 	if (0==P) {

	test	rdx, rdx
	jne	SHORT $LN14@mem_reallo

; 187  : 		return mem_alloc	(size
; 188  : #	ifdef DEBUG_MEMORY_NAME
; 189  : 		,_name
; 190  : #	endif // DEBUG_MEMORY_NAME
; 191  : 		);

	mov	rdx, r8

; 265  : 		_ptr					= p_new;
; 266  : 	}
; 267  : 
; 268  : #ifdef DEBUG_MEMORY_MANAGER
; 269  : 	if (mem_initialized)		debug_cs.Leave	();
; 270  : 
; 271  : 	if(g_globalCheckAddr==_ptr)
; 272  : 		__asm int 3;
; 273  : #endif // DEBUG_MEMORY_MANAGER
; 274  : 
; 275  : 	return	_ptr;
; 276  : }

	mov	rbp, QWORD PTR [rsp+112]
	mov	rsi, QWORD PTR [rsp+120]
	add	rsp, 80					; 00000050H
	pop	r12
	jmp	?mem_alloc@xrMemory@@QEAAPEAX_K@Z	; xrMemory::mem_alloc
$LN14@mem_reallo:

; 192  : 	}
; 193  : 
; 194  : #ifdef DEBUG_MEMORY_MANAGER
; 195  : 	if(g_globalCheckAddr==P)
; 196  : 		__asm int 3;
; 197  : #endif // DEBUG_MEMORY_MANAGER
; 198  : 
; 199  : #ifdef DEBUG_MEMORY_MANAGER
; 200  : 	if (mem_initialized)		debug_cs.Enter		();
; 201  : #endif // DEBUG_MEMORY_MANAGER
; 202  : 	u32		p_current			= get_header(P);

	lea	rcx, QWORD PTR [rdx-1]

; 203  : 	//	Igor: Reserve 1 byte for xrMemory header
; 204  : 	u32		p_new				= get_pool	(1+size+(debug_mode?4:0));

	lea	rdx, QWORD PTR [r8+1]
	mov	QWORD PTR [rsp+96], rbx
	movzx	ebx, BYTE PTR [rcx]
	mov	r8d, 55					; 00000037H
	mov	rax, rdx
	shr	rax, 4
	mov	QWORD PTR [rsp+104], rdi
	cmp	eax, 54					; 00000036H
	cmovae	eax, r8d

; 205  : 	//u32		p_new				= get_pool	(size+(debug_mode?4:0));
; 206  : 	u32		p_mode				;
; 207  : 
; 208  : 	if (mem_generic==p_current)	{

	cmp	ebx, r8d
	jne	SHORT $LN13@mem_reallo

; 209  : 		if (p_new<p_current)		p_mode	= 2	;

	cmp	eax, r8d
	sbb	eax, eax
	and	eax, 2

; 210  : 		else						p_mode	= 0	;

	jmp	SHORT $LN10@mem_reallo
$LN13@mem_reallo:

; 211  : 	} else 							p_mode	= 1	;

	mov	eax, 1
$LN10@mem_reallo:

; 212  : 
; 213  : 	void*	_real				= (void*)(((u8*)P)-1);
; 214  : 	void*	_ptr				= NULL;

	xor	edi, edi

; 215  : 	if		(0==p_mode)

	test	eax, eax
	jne	SHORT $LN9@mem_reallo

; 216  : 	{
; 217  : 		u32		_footer			=	debug_mode?4:0;
; 218  : #ifdef DEBUG_MEMORY_MANAGER
; 219  : 		if		(debug_mode)	{
; 220  : 			g_bDbgFillMemory	= false;
; 221  : 			dbg_unregister		(P);
; 222  : 			g_bDbgFillMemory	= true;
; 223  : 		}
; 224  : #endif // DEBUG_MEMORY_MANAGER
; 225  : 		//	Igor: Reserve 1 byte for xrMemory header
; 226  : 		void*	_real2			=	xr_aligned_offset_realloc	(_real,1+size+_footer,16,0x1);

	call	?xr_aligned_offset_realloc@@YAPEAXPEAX_K11@Z ; xr_aligned_offset_realloc

; 227  : 		//void*	_real2			=	xr_aligned_offset_realloc	(_real,size+_footer,16,0x1);
; 228  : 		_ptr					= (void*)(((u8*)_real2)+1);
; 229  : 		*acc_header(_ptr)		= mem_generic;

	mov	BYTE PTR [rax], 55			; 00000037H
	lea	rdi, QWORD PTR [rax+1]
	jmp	$LN1@mem_reallo
$LN9@mem_reallo:

; 230  : #ifdef DEBUG_MEMORY_MANAGER
; 231  : 		if		(debug_mode)	dbg_register	(_ptr,size,_name);
; 232  : #endif // DEBUG_MEMORY_MANAGER
; 233  : #ifdef USE_MEMORY_MONITOR
; 234  : 		memory_monitor::monitor_free	(P);
; 235  : 		memory_monitor::monitor_alloc	(_ptr,size,_name);
; 236  : #endif // USE_MEMORY_MONITOR
; 237  : 	} else if (1==p_mode)		{

	cmp	eax, 1
	jne	$LN7@mem_reallo

; 238  : 		// pooled realloc
; 239  : 		R_ASSERT2				(p_current<mem_pools_count,"Memory corruption");

	cmp	BYTE PTR ?ignore_always@?BF@??mem_realloc@xrMemory@@QEAAPEAXPEAX_K@Z@4_NA, dil
	jne	SHORT $LN5@mem_reallo
	cmp	ebx, 54					; 00000036H
	jb	SHORT $LN5@mem_reallo
	lea	rax, OFFSET FLAT:?ignore_always@?BF@??mem_realloc@xrMemory@@QEAAPEAXPEAX_K@Z@4_NA
	lea	r8, OFFSET FLAT:??_C@_0BC@MAGELDOC@Memory?5corruption?$AA@
	lea	rdx, OFFSET FLAT:??_C@_0BK@CPGKHBFC@p_current?$DMmem_pools_count?$AA@
	mov	QWORD PTR [rsp+64], rax
	lea	rax, OFFSET FLAT:??_C@_0BG@BIILGNAF@xrMemory?3?3mem_realloc?$AA@
	lea	rcx, OFFSET FLAT:?Debug@@3VxrDebug@@A	; Debug
	mov	QWORD PTR [rsp+56], rax
	lea	rax, OFFSET FLAT:??_C@_0BI@MKKJNCPP@xrMemory_subst_msvc?4cpp?$AA@
	mov	DWORD PTR [rsp+48], 239			; 000000efH
	mov	QWORD PTR [rsp+40], rax
	xor	r9d, r9d
	mov	QWORD PTR [rsp+32], rdi
	call	?backend@xrDebug@@QEAAXPEBD0000H0AEA_N@Z ; xrDebug::backend
$LN5@mem_reallo:

; 240  : 		u32		s_current		= mem_pools[p_current].get_element();

	lea	rcx, QWORD PTR [rbx+rbx*4]
	lea	rax, OFFSET FLAT:?mem_pools@@3PAVMEMPOOL@@A+12

; 241  : 		u32		s_dest			= (u32)size;
; 242  : 		void*	p_old			= P;
; 243  : 
; 244  : 		void*	p_new			= mem_alloc(size
; 245  : #ifdef DEBUG_MEMORY_NAME
; 246  : 			,_name
; 247  : #endif // DEBUG_MEMORY_NAME
; 248  : 		);

	mov	rdx, rbp
	mov	ebx, DWORD PTR [rax+rcx*8]
	mov	rcx, rsi
	call	?mem_alloc@xrMemory@@QEAAPEAX_K@Z	; xrMemory::mem_alloc
	mov	rdi, rax

; 249  : 		//	Igor: Reserve 1 byte for xrMemory header
; 250  : 		//	Don't bother in this case?
; 251  : 		mem_copy				(p_new,p_old,_min(s_current-1,s_dest));

	lea	eax, DWORD PTR [rbx-1]
	cmp	eax, ebp
	mov	rcx, rdi
	cmovb	ebp, eax

; 252  : 		//mem_copy				(p_new,p_old,_min(s_current,s_dest));
; 253  : 		mem_free				(p_old);
; 254  : 		_ptr					= p_new;

	jmp	SHORT $LN33@mem_reallo
$LN7@mem_reallo:

; 255  : 	} else if (2==p_mode)		{

	cmp	eax, 2
	jne	SHORT $LN1@mem_reallo

; 256  : 		// relocate into another mmgr(pooled) from real
; 257  : 		void*	p_old			= P;
; 258  : 		void*	p_new			= mem_alloc(size
; 259  : #	ifdef DEBUG_MEMORY_NAME
; 260  : 			,_name
; 261  : #	endif // DEBUG_MEMORY_NAME
; 262  : 		);

	mov	rdx, rbp
	mov	rcx, rsi
	call	?mem_alloc@xrMemory@@QEAAPEAX_K@Z	; xrMemory::mem_alloc
	mov	rdi, rax

; 263  : 		mem_copy				(p_new,p_old,(u32)size);

	mov	rcx, rax
$LN33@mem_reallo:
	mov	r8d, ebp
	mov	rdx, r12
	call	QWORD PTR [rsi+8]

; 264  : 		mem_free				(p_old);

	mov	rdx, r12
	mov	rcx, rsi
	call	?mem_free@xrMemory@@QEAAXPEAX@Z		; xrMemory::mem_free
$LN1@mem_reallo:

; 265  : 		_ptr					= p_new;
; 266  : 	}
; 267  : 
; 268  : #ifdef DEBUG_MEMORY_MANAGER
; 269  : 	if (mem_initialized)		debug_cs.Leave	();
; 270  : 
; 271  : 	if(g_globalCheckAddr==_ptr)
; 272  : 		__asm int 3;
; 273  : #endif // DEBUG_MEMORY_MANAGER
; 274  : 
; 275  : 	return	_ptr;
; 276  : }

	mov	rbx, QWORD PTR [rsp+96]
	mov	rbp, QWORD PTR [rsp+112]
	mov	rsi, QWORD PTR [rsp+120]
	mov	rax, rdi
	mov	rdi, QWORD PTR [rsp+104]
	add	rsp, 80					; 00000050H
	pop	r12
	ret	0
?mem_realloc@xrMemory@@QEAAPEAXPEAX_K@Z ENDP		; xrMemory::mem_realloc
;	COMDAT pdata
; File c:\users\nummer\documents\github\olr-3.0\src\xray\xrcore\xrmemory.h
pdata	SEGMENT
$pdata$??__Emem_pools@@YAXXZ DD imagerel ??__Emem_pools@@YAXXZ
	DD	imagerel ??__Emem_pools@@YAXXZ+91
	DD	imagerel $unwind$??__Emem_pools@@YAXXZ
pdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$??__Emem_pools@@YAXXZ DD 040a01H
	DD	06340aH
	DD	07006320aH
; Function compile flags: /Ogtpy
; File c:\users\nummer\documents\github\olr-3.0\src\xray\xrcore\xrmemory_subst_msvc.cpp
xdata	ENDS
;	COMDAT ??__Emem_pools@@YAXXZ
text$yc	SEGMENT
??__Emem_pools@@YAXXZ PROC				; `dynamic initializer for 'mem_pools'', COMDAT

; 21   : MEMPOOL		mem_pools			[mem_pools_count];

	mov	QWORD PTR [rsp+8], rbx
	push	rdi
	sub	rsp, 32					; 00000020H
	lea	rbx, OFFSET FLAT:?mem_pools@@3PAVMEMPOOL@@A ; mem_pools
	mov	edi, 53					; 00000035H
	npad	10
$LL4@dynamic:
	lea	rcx, OFFSET FLAT:?Memory@@3VxrMemory@@A	; Memory
	mov	edx, 40					; 00000028H
	call	?mem_alloc@xrMemory@@QEAAPEAX_K@Z	; xrMemory::mem_alloc
	mov	rcx, rax
	mov	QWORD PTR [rbx], rax
	call	QWORD PTR __imp_InitializeCriticalSection
	add	rbx, 40					; 00000028H
	dec	edi
	jns	SHORT $LL4@dynamic
	lea	rcx, OFFSET FLAT:??__Fmem_pools@@YAXXZ	; `dynamic atexit destructor for 'mem_pools''
	mov	rbx, QWORD PTR [rsp+48]
	add	rsp, 32					; 00000020H
	pop	rdi
	jmp	atexit
??__Emem_pools@@YAXXZ ENDP				; `dynamic initializer for 'mem_pools''
;	COMDAT pdata
pdata	SEGMENT
$pdata$??__Fmem_pools@@YAXXZ DD imagerel ??__Fmem_pools@@YAXXZ
	DD	imagerel ??__Fmem_pools@@YAXXZ+69
	DD	imagerel $unwind$??__Fmem_pools@@YAXXZ
pdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$??__Fmem_pools@@YAXXZ DD 040a01H
	DD	06340aH
	DD	07006320aH
; Function compile flags: /Ogtpy
xdata	ENDS
;	COMDAT ??__Fmem_pools@@YAXXZ
text$yd	SEGMENT
??__Fmem_pools@@YAXXZ PROC				; `dynamic atexit destructor for 'mem_pools'', COMDAT
	mov	QWORD PTR [rsp+8], rbx
	push	rdi
	sub	rsp, 32					; 00000020H
	lea	rbx, OFFSET FLAT:?mem_pools@@3PAVMEMPOOL@@A+2160
	mov	edi, 53					; 00000035H
	npad	10
$LL4@dynamic@3:
	mov	rcx, QWORD PTR [rbx-40]
	sub	rbx, 40					; 00000028H
	call	QWORD PTR __imp_DeleteCriticalSection
	mov	rcx, rbx
	call	??$xr_free@X@@YAXAEAPEAX@Z		; xr_free<void>
	dec	edi
	jns	SHORT $LL4@dynamic@3
	mov	rbx, QWORD PTR [rsp+48]
	add	rsp, 32					; 00000020H
	pop	rdi
	ret	0
??__Fmem_pools@@YAXXZ ENDP				; `dynamic atexit destructor for 'mem_pools''
PUBLIC	?mem_pools@@3PAVMEMPOOL@@A			; mem_pools
?mem_pools@@3PAVMEMPOOL@@A DB 0870H DUP (?)		; mem_pools
mem_pools$initializer$ DQ FLAT:??__Emem_pools@@YAXXZ
END
