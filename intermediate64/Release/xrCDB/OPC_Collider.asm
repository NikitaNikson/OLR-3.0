; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

include listing.inc

INCLUDELIB OLDNAMES

PUBLIC	??_R4Collider@Opcode@@6B@			; Opcode::Collider::`RTTI Complete Object Locator'
PUBLIC	??_GCollider@Opcode@@UEAAPEAXI@Z		; Opcode::Collider::`scalar deleting destructor'
PUBLIC	??_7Collider@Opcode@@6B@			; Opcode::Collider::`vftable'
EXTRN	_purecall:PROC
EXTRN	__imp__purecall:PROC
EXTRN	??_ECollider@Opcode@@UEAAPEAXI@Z:PROC		; Opcode::Collider::`vector deleting destructor'
;	COMDAT ??_7Collider@Opcode@@6B@
CONST	SEGMENT
??_7Collider@Opcode@@6B@ DQ FLAT:??_R4Collider@Opcode@@6B@ ; Opcode::Collider::`vftable'
	DQ	FLAT:??_ECollider@Opcode@@UEAAPEAXI@Z
	DQ	FLAT:_purecall
	DQ	FLAT:?InitQueryEx@Collider@Opcode@@MEAAXXZ
CONST	ENDS
;	COMDAT ??_R4Collider@Opcode@@6B@
rdata$r	SEGMENT
??_R4Collider@Opcode@@6B@ DD 01H			; Opcode::Collider::`RTTI Complete Object Locator'
	DD	00H
	DD	00H
	DD	imagerel ??_R0?AVCollider@Opcode@@@8
	DD	imagerel ??_R3Collider@Opcode@@8
	DD	imagerel ??_R4Collider@Opcode@@6B@
PUBLIC	??1Collider@Opcode@@UEAA@XZ			; Opcode::Collider::~Collider
; Function compile flags: /Ogtpy
; File c:\users\nummer\documents\github\olr-3.0\src\xray\xrcdb\opc_collider.cpp
_TEXT	SEGMENT
this$ = 8
??1Collider@Opcode@@UEAA@XZ PROC			; Opcode::Collider::~Collider

; 51   : {

	lea	rax, OFFSET FLAT:??_7Collider@Opcode@@6B@
	mov	QWORD PTR [rcx], rax

; 52   : }

	ret	0
??1Collider@Opcode@@UEAA@XZ ENDP			; Opcode::Collider::~Collider
;	COMDAT pdata
pdata	SEGMENT
$pdata$??_GCollider@Opcode@@UEAAPEAXI@Z DD imagerel $LN12
	DD	imagerel $LN12+49
	DD	imagerel $unwind$??_GCollider@Opcode@@UEAAPEAXI@Z
pdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$??_GCollider@Opcode@@UEAAPEAXI@Z DD 020601H
	DD	030023206H
; Function compile flags: /Ogtpy
xdata	ENDS
;	COMDAT ??_GCollider@Opcode@@UEAAPEAXI@Z
_TEXT	SEGMENT
this$ = 48
__flags$ = 56
??_GCollider@Opcode@@UEAAPEAXI@Z PROC			; Opcode::Collider::`scalar deleting destructor', COMDAT
$LN12:
	push	rbx
	sub	rsp, 32					; 00000020H
	lea	rax, OFFSET FLAT:??_7Collider@Opcode@@6B@
	mov	rbx, rcx
	mov	QWORD PTR [rcx], rax
	test	dl, 1
	je	SHORT $LN11@scalar@10
	mov	rdx, rcx
	mov	rcx, QWORD PTR __imp_?Memory@@3VxrMemory@@A
	call	QWORD PTR __imp_?mem_free@xrMemory@@QEAAXPEAX@Z
$LN11@scalar@10:
	mov	rax, rbx
	add	rsp, 32					; 00000020H
	pop	rbx
	ret	0
??_GCollider@Opcode@@UEAAPEAXI@Z ENDP			; Opcode::Collider::`scalar deleting destructor'
END