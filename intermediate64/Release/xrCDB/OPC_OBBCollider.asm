; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

include listing.inc

INCLUDELIB OLDNAMES

PUBLIC	?ValidateSettings@OBBCollider@Opcode@@UEAAPEBDXZ ; Opcode::OBBCollider::ValidateSettings
PUBLIC	??_R4OBBCollider@Opcode@@6B@			; Opcode::OBBCollider::`RTTI Complete Object Locator'
PUBLIC	??_R3OBBCollider@Opcode@@8			; Opcode::OBBCollider::`RTTI Class Hierarchy Descriptor'
PUBLIC	??_R2OBBCollider@Opcode@@8			; Opcode::OBBCollider::`RTTI Base Class Array'
PUBLIC	??_R1A@?0A@EA@OBBCollider@Opcode@@8		; Opcode::OBBCollider::`RTTI Base Class Descriptor at (0,-1,0,64)'
PUBLIC	??_R0?AVOBBCollider@Opcode@@@8			; Opcode::OBBCollider `RTTI Type Descriptor'
PUBLIC	??0Matrix3x3@IceMaths@@QEAA@XZ			; IceMaths::Matrix3x3::Matrix3x3
PUBLIC	??_GOBBCollider@Opcode@@UEAAPEAXI@Z		; Opcode::OBBCollider::`scalar deleting destructor'
PUBLIC	??DicePoint@IceMaths@@QEBA?AV01@AEBVMatrix4x4@1@@Z ; IceMaths::icePoint::operator*
PUBLIC	??0Matrix3x3@IceMaths@@QEAA@AEBV01@@Z		; IceMaths::Matrix3x3::Matrix3x3
PUBLIC	??DMatrix3x3@IceMaths@@QEBA?AV01@AEBV01@@Z	; IceMaths::Matrix3x3::operator*
PUBLIC	??0Matrix4x4@IceMaths@@QEAA@AEBV01@@Z		; IceMaths::Matrix4x4::Matrix4x4
PUBLIC	?GetTrans@Matrix4x4@IceMaths@@QEBAXAEAVicePoint@2@@Z ; IceMaths::Matrix4x4::GetTrans
PUBLIC	?SetTrans@Matrix4x4@IceMaths@@QEAAXAEBVicePoint@2@@Z ; IceMaths::Matrix4x4::SetTrans
PUBLIC	?TransformPoint@Opcode@@YAXAEAVicePoint@IceMaths@@AEBV23@AEBVMatrix3x3@3@1@Z ; Opcode::TransformPoint
PUBLIC	?OBBContainsBox@OBBCollider@Opcode@@IEAAHAEBVicePoint@IceMaths@@0@Z ; Opcode::OBBCollider::OBBContainsBox
PUBLIC	?BoxBoxOverlap@OBBCollider@Opcode@@IEAAHAEBVicePoint@IceMaths@@0@Z ; Opcode::OBBCollider::BoxBoxOverlap
PUBLIC	?TriBoxOverlap@OBBCollider@Opcode@@IEAAHXZ	; Opcode::OBBCollider::TriBoxOverlap
PUBLIC	??_C@_0DH@CENBPGJM@Temporal?5coherence?5only?5works?5wi@ ; `string'
PUBLIC	??_7OBBCollider@Opcode@@6B@			; Opcode::OBBCollider::`vftable'
EXTRN	??_EOBBCollider@Opcode@@UEAAPEAXI@Z:PROC	; Opcode::OBBCollider::`vector deleting destructor'
;	COMDAT ??_7OBBCollider@Opcode@@6B@
CONST	SEGMENT
??_7OBBCollider@Opcode@@6B@ DQ FLAT:??_R4OBBCollider@Opcode@@6B@ ; Opcode::OBBCollider::`vftable'
	DQ	FLAT:??_EOBBCollider@Opcode@@UEAAPEAXI@Z
	DQ	FLAT:?ValidateSettings@OBBCollider@Opcode@@UEAAPEBDXZ
	DQ	FLAT:?InitQueryEx@VolumeCollider@Opcode@@MEAAXXZ
CONST	ENDS
;	COMDAT ??_R4OBBCollider@Opcode@@6B@
rdata$r	SEGMENT
??_R4OBBCollider@Opcode@@6B@ DD 01H			; Opcode::OBBCollider::`RTTI Complete Object Locator'
	DD	00H
	DD	00H
	DD	imagerel ??_R0?AVOBBCollider@Opcode@@@8
	DD	imagerel ??_R3OBBCollider@Opcode@@8
	DD	imagerel ??_R4OBBCollider@Opcode@@6B@
rdata$r	ENDS
;	COMDAT ??_R3OBBCollider@Opcode@@8
rdata$r	SEGMENT
??_R3OBBCollider@Opcode@@8 DD 00H			; Opcode::OBBCollider::`RTTI Class Hierarchy Descriptor'
	DD	00H
	DD	03H
	DD	imagerel ??_R2OBBCollider@Opcode@@8
rdata$r	ENDS
;	COMDAT ??_R2OBBCollider@Opcode@@8
rdata$r	SEGMENT
??_R2OBBCollider@Opcode@@8 DD imagerel ??_R1A@?0A@EA@OBBCollider@Opcode@@8 ; Opcode::OBBCollider::`RTTI Base Class Array'
	DD	imagerel ??_R1A@?0A@EA@VolumeCollider@Opcode@@8
	DD	imagerel ??_R1A@?0A@EA@Collider@Opcode@@8
	ORG $+3
rdata$r	ENDS
;	COMDAT ??_R1A@?0A@EA@OBBCollider@Opcode@@8
rdata$r	SEGMENT
??_R1A@?0A@EA@OBBCollider@Opcode@@8 DD imagerel ??_R0?AVOBBCollider@Opcode@@@8 ; Opcode::OBBCollider::`RTTI Base Class Descriptor at (0,-1,0,64)'
	DD	02H
	DD	00H
	DD	0ffffffffH
	DD	00H
	DD	040H
	DD	imagerel ??_R3OBBCollider@Opcode@@8
rdata$r	ENDS
;	COMDAT ??_R0?AVOBBCollider@Opcode@@@8
_DATA	SEGMENT
??_R0?AVOBBCollider@Opcode@@@8 DQ FLAT:??_7type_info@@6B@ ; Opcode::OBBCollider `RTTI Type Descriptor'
	DQ	0000000000000000H
	DB	'.?AVOBBCollider@Opcode@@', 00H
_DATA	ENDS
;	COMDAT ??_C@_0DH@CENBPGJM@Temporal?5coherence?5only?5works?5wi@
CONST	SEGMENT
??_C@_0DH@CENBPGJM@Temporal?5coherence?5only?5works?5wi@ DB 'Temporal coh'
	DB	'erence only works with First contact mode!', 00H ; `string'
; Function compile flags: /Ogtpy
; File c:\users\nummer\documents\github\olr-3.0\src\xray\xrcdb\opc_obbcollider.cpp
_TEXT	SEGMENT
this$ = 8
?ValidateSettings@OBBCollider@Opcode@@UEAAPEBDXZ PROC	; Opcode::OBBCollider::ValidateSettings

; 98   : 	if(TemporalCoherenceEnabled() && !FirstContactEnabled())	return "Temporal coherence only works with ""First contact"" mode!";

	mov	eax, DWORD PTR [rcx+8]
	test	al, 2
	je	SHORT $LN1@ValidateSe@7
	test	al, 1
	jne	SHORT $LN1@ValidateSe@7
	lea	rax, OFFSET FLAT:??_C@_0DH@CENBPGJM@Temporal?5coherence?5only?5works?5wi@

; 101  : }

	ret	0
$LN1@ValidateSe@7:

; 99   : 
; 100  : 	return VolumeCollider::ValidateSettings();

	cmp	QWORD PTR [rcx+24], 0
	je	SHORT $LN8@ValidateSe@7
	cmp	QWORD PTR [rcx+32], 0
	je	SHORT $LN8@ValidateSe@7
	xor	eax, eax

; 101  : }

	ret	0

; 99   : 
; 100  : 	return VolumeCollider::ValidateSettings();

$LN8@ValidateSe@7:
	lea	rax, OFFSET FLAT:??_C@_0DG@GPJAOPIP@Object?5pointers?5must?5be?5defined?$CB@

; 101  : }

	ret	0
?ValidateSettings@OBBCollider@Opcode@@UEAAPEBDXZ ENDP	; Opcode::OBBCollider::ValidateSettings
_TEXT	ENDS
PUBLIC	??1OBBCollider@Opcode@@UEAA@XZ			; Opcode::OBBCollider::~OBBCollider
; Function compile flags: /Ogtpy
_TEXT	SEGMENT
this$ = 8
??1OBBCollider@Opcode@@UEAA@XZ PROC			; Opcode::OBBCollider::~OBBCollider

; 88   : }

	lea	rax, OFFSET FLAT:??_7Collider@Opcode@@6B@
	mov	QWORD PTR [rcx+16], 0
	mov	QWORD PTR [rcx], rax
	ret	0
??1OBBCollider@Opcode@@UEAA@XZ ENDP			; Opcode::OBBCollider::~OBBCollider
_TEXT	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$??_GOBBCollider@Opcode@@UEAAPEAXI@Z DD imagerel $LN44
	DD	imagerel $LN44+57
	DD	imagerel $unwind$??_GOBBCollider@Opcode@@UEAAPEAXI@Z
pdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$??_GOBBCollider@Opcode@@UEAAPEAXI@Z DD 020601H
	DD	030023206H
; Function compile flags: /Ogtpy
xdata	ENDS
;	COMDAT ??_GOBBCollider@Opcode@@UEAAPEAXI@Z
_TEXT	SEGMENT
this$ = 48
__flags$ = 56
??_GOBBCollider@Opcode@@UEAAPEAXI@Z PROC		; Opcode::OBBCollider::`scalar deleting destructor', COMDAT
$LN44:
	push	rbx
	sub	rsp, 32					; 00000020H
	lea	rax, OFFSET FLAT:??_7Collider@Opcode@@6B@
	mov	rbx, rcx
	mov	QWORD PTR [rcx+16], 0
	mov	QWORD PTR [rcx], rax
	test	dl, 1
	je	SHORT $LN43@scalar@9
	mov	rdx, rcx
	mov	rcx, QWORD PTR __imp_?Memory@@3VxrMemory@@A
	call	QWORD PTR __imp_?mem_free@xrMemory@@QEAAXPEAX@Z
$LN43@scalar@9:
	mov	rax, rbx
	add	rsp, 32					; 00000020H
	pop	rbx
	ret	0
??_GOBBCollider@Opcode@@UEAAPEAXI@Z ENDP		; Opcode::OBBCollider::`scalar deleting destructor'
END
