; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

include listing.inc

INCLUDELIB OLDNAMES

PUBLIC	?ValidateSettings@RayCollider@Opcode@@UEAAPEBDXZ ; Opcode::RayCollider::ValidateSettings
PUBLIC	??_R4RayCollider@Opcode@@6B@			; Opcode::RayCollider::`RTTI Complete Object Locator'
PUBLIC	??_R3RayCollider@Opcode@@8			; Opcode::RayCollider::`RTTI Class Hierarchy Descriptor'
PUBLIC	??_R2RayCollider@Opcode@@8			; Opcode::RayCollider::`RTTI Base Class Array'
PUBLIC	??_R1A@?0A@EA@RayCollider@Opcode@@8		; Opcode::RayCollider::`RTTI Base Class Descriptor at (0,-1,0,64)'
PUBLIC	??_R0?AVRayCollider@Opcode@@@8			; Opcode::RayCollider `RTTI Type Descriptor'
PUBLIC	??0CollisionFace@Opcode@@QEAA@XZ		; Opcode::CollisionFace::CollisionFace
PUBLIC	??1CollisionFace@Opcode@@QEAA@XZ		; Opcode::CollisionFace::~CollisionFace
PUBLIC	??_GRayCollider@Opcode@@UEAAPEAXI@Z		; Opcode::RayCollider::`scalar deleting destructor'
PUBLIC	??DMatrix3x3@IceMaths@@QEBA?AVicePoint@1@AEBV21@@Z ; IceMaths::Matrix3x3::operator*
PUBLIC	?Reset@CollisionFaces@Opcode@@QEAAXXZ		; Opcode::CollisionFaces::Reset
PUBLIC	?SegmentAABBOverlap@RayCollider@Opcode@@IEAAHAEBVicePoint@IceMaths@@0@Z ; Opcode::RayCollider::SegmentAABBOverlap
PUBLIC	?GetNbFaces@CollisionFaces@Opcode@@QEBAIXZ	; Opcode::CollisionFaces::GetNbFaces
PUBLIC	?GetEntries@Container@IceCore@@QEBAPEAIXZ	; IceCore::Container::GetEntries
PUBLIC	?GetFaces@CollisionFaces@Opcode@@QEBAPEBVCollisionFace@2@XZ ; Opcode::CollisionFaces::GetFaces
PUBLIC	?Add@Container@IceCore@@QEAAAEAV12@M@Z		; IceCore::Container::Add
PUBLIC	?AddFace@CollisionFaces@Opcode@@QEAAXAEBVCollisionFace@2@@Z ; Opcode::CollisionFaces::AddFace
PUBLIC	?RayTriOverlap@RayCollider@Opcode@@IEAAHAEBVicePoint@IceMaths@@00@Z ; Opcode::RayCollider::RayTriOverlap
PUBLIC	?RayAABBOverlap@RayCollider@Opcode@@IEAAHAEBVicePoint@IceMaths@@0@Z ; Opcode::RayCollider::RayAABBOverlap
PUBLIC	??_C@_0DG@GPJAOPIP@Object?5pointers?5must?5be?5defined?$CB@ ; `string'
PUBLIC	??_C@_0CI@CJMDIHCG@Higher?5distance?5bound?5must?5be?5po@ ; `string'
PUBLIC	??_C@_0DC@IMFKDDOD@Closest?5hit?5doesn?8t?5work?5with?5Fi@ ; `string'
PUBLIC	??_7RayCollider@Opcode@@6B@			; Opcode::RayCollider::`vftable'
EXTRN	??_ERayCollider@Opcode@@UEAAPEAXI@Z:PROC	; Opcode::RayCollider::`vector deleting destructor'
;	COMDAT ??_7RayCollider@Opcode@@6B@
CONST	SEGMENT
??_7RayCollider@Opcode@@6B@ DQ FLAT:??_R4RayCollider@Opcode@@6B@ ; Opcode::RayCollider::`vftable'
	DQ	FLAT:??_ERayCollider@Opcode@@UEAAPEAXI@Z
	DQ	FLAT:?ValidateSettings@RayCollider@Opcode@@UEAAPEBDXZ
	DQ	FLAT:?InitQueryEx@Collider@Opcode@@MEAAXXZ
CONST	ENDS
;	COMDAT ??_R4RayCollider@Opcode@@6B@
rdata$r	SEGMENT
??_R4RayCollider@Opcode@@6B@ DD 01H			; Opcode::RayCollider::`RTTI Complete Object Locator'
	DD	00H
	DD	00H
	DD	imagerel ??_R0?AVRayCollider@Opcode@@@8
	DD	imagerel ??_R3RayCollider@Opcode@@8
	DD	imagerel ??_R4RayCollider@Opcode@@6B@
rdata$r	ENDS
;	COMDAT ??_R3RayCollider@Opcode@@8
rdata$r	SEGMENT
??_R3RayCollider@Opcode@@8 DD 00H			; Opcode::RayCollider::`RTTI Class Hierarchy Descriptor'
	DD	00H
	DD	02H
	DD	imagerel ??_R2RayCollider@Opcode@@8
rdata$r	ENDS
;	COMDAT ??_R2RayCollider@Opcode@@8
rdata$r	SEGMENT
??_R2RayCollider@Opcode@@8 DD imagerel ??_R1A@?0A@EA@RayCollider@Opcode@@8 ; Opcode::RayCollider::`RTTI Base Class Array'
	DD	imagerel ??_R1A@?0A@EA@Collider@Opcode@@8
	ORG $+3
rdata$r	ENDS
;	COMDAT ??_R1A@?0A@EA@RayCollider@Opcode@@8
rdata$r	SEGMENT
??_R1A@?0A@EA@RayCollider@Opcode@@8 DD imagerel ??_R0?AVRayCollider@Opcode@@@8 ; Opcode::RayCollider::`RTTI Base Class Descriptor at (0,-1,0,64)'
	DD	01H
	DD	00H
	DD	0ffffffffH
	DD	00H
	DD	040H
	DD	imagerel ??_R3RayCollider@Opcode@@8
rdata$r	ENDS
;	COMDAT ??_R0?AVRayCollider@Opcode@@@8
_DATA	SEGMENT
??_R0?AVRayCollider@Opcode@@@8 DQ FLAT:??_7type_info@@6B@ ; Opcode::RayCollider `RTTI Type Descriptor'
	DQ	0000000000000000H
	DB	'.?AVRayCollider@Opcode@@', 00H
_DATA	ENDS
;	COMDAT ??_C@_0DC@IMFKDDOD@Closest?5hit?5doesn?8t?5work?5with?5Fi@
CONST	SEGMENT
??_C@_0DC@IMFKDDOD@Closest?5hit?5doesn?8t?5work?5with?5Fi@ DB 'Closest hi'
	DB	't doesn''t work with First contact mode!', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0CI@CJMDIHCG@Higher?5distance?5bound?5must?5be?5po@
CONST	SEGMENT
??_C@_0CI@CJMDIHCG@Higher?5distance?5bound?5must?5be?5po@ DB 'Higher dist'
	DB	'ance bound must be positive!', 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_0DG@GPJAOPIP@Object?5pointers?5must?5be?5defined?$CB@
CONST	SEGMENT
??_C@_0DG@GPJAOPIP@Object?5pointers?5must?5be?5defined?$CB@ DB 'Object po'
	DB	'inters must be defined! Call: SetPointers().', 00H ; `string'
; Function compile flags: /Ogtpy
; File c:\users\nummer\documents\github\olr-3.0\src\xray\xrcdb\opc_common.h
;	COMDAT ??1CollisionFace@Opcode@@QEAA@XZ
_TEXT	SEGMENT
??1CollisionFace@Opcode@@QEAA@XZ PROC			; Opcode::CollisionFace::~CollisionFace, COMDAT

; 100  : 		inline_				~CollisionFace()		{}

	ret	0
??1CollisionFace@Opcode@@QEAA@XZ ENDP			; Opcode::CollisionFace::~CollisionFace
; Function compile flags: /Ogtpy
; File c:\users\nummer\documents\github\olr-3.0\src\xray\xrcdb\opc_raycollider.cpp
_TEXT	SEGMENT
this$ = 8
?ValidateSettings@RayCollider@Opcode@@UEAAPEBDXZ PROC	; Opcode::RayCollider::ValidateSettings

; 236  : #ifdef OPC_USE_CALLBACKS
; 237  : 	if(!mObjCallback)											return "Object callback must be defined! Call: SetCallback().";
; 238  : #else
; 239  : 	if(!mFaces || !mVerts)										return "Object pointers must be defined! Call: SetPointers().";

	cmp	QWORD PTR [rcx+104], 0
	je	SHORT $LN4@ValidateSe@5
	cmp	QWORD PTR [rcx+112], 0
	je	SHORT $LN4@ValidateSe@5

; 240  : #endif
; 241  : 	if(mMaxDist<0.0f)											return "Higher distance bound must be positive!";

	xorps	xmm0, xmm0
	comiss	xmm0, DWORD PTR [rcx+156]
	jbe	SHORT $LN3@ValidateSe@5
	lea	rax, OFFSET FLAT:??_C@_0CI@CJMDIHCG@Higher?5distance?5bound?5must?5be?5po@

; 245  : }

	ret	0
$LN3@ValidateSe@5:

; 242  : 	if(TemporalCoherenceEnabled() && !FirstContactEnabled())	return "Temporal coherence only works with ""First contact"" mode!";

	mov	eax, DWORD PTR [rcx+8]
	test	al, 2
	je	SHORT $LN2@ValidateSe@5
	test	al, 1
	jne	SHORT $LN2@ValidateSe@5
	lea	rax, OFFSET FLAT:??_C@_0DH@CENBPGJM@Temporal?5coherence?5only?5works?5wi@

; 245  : }

	ret	0
$LN2@ValidateSe@5:

; 243  : 	if(mClosestHit && FirstContactEnabled())					return "Closest hit doesn't work with ""First contact"" mode!";

	cmp	BYTE PTR [rcx+160], 0
	je	SHORT $LN1@ValidateSe@5
	test	al, 1
	je	SHORT $LN1@ValidateSe@5
	lea	rax, OFFSET FLAT:??_C@_0DC@IMFKDDOD@Closest?5hit?5doesn?8t?5work?5with?5Fi@

; 245  : }

	ret	0
$LN1@ValidateSe@5:

; 244  : 	return null;

	xor	eax, eax

; 245  : }

	ret	0
$LN4@ValidateSe@5:

; 236  : #ifdef OPC_USE_CALLBACKS
; 237  : 	if(!mObjCallback)											return "Object callback must be defined! Call: SetCallback().";
; 238  : #else
; 239  : 	if(!mFaces || !mVerts)										return "Object pointers must be defined! Call: SetPointers().";

	lea	rax, OFFSET FLAT:??_C@_0DG@GPJAOPIP@Object?5pointers?5must?5be?5defined?$CB@

; 245  : }

	ret	0
?ValidateSettings@RayCollider@Opcode@@UEAAPEBDXZ ENDP	; Opcode::RayCollider::ValidateSettings
_TEXT	ENDS
PUBLIC	??1RayCollider@Opcode@@UEAA@XZ			; Opcode::RayCollider::~RayCollider
; Function compile flags: /Ogtpy
_TEXT	SEGMENT
this$ = 8
??1RayCollider@Opcode@@UEAA@XZ PROC			; Opcode::RayCollider::~RayCollider

; 226  : }

	lea	rax, OFFSET FLAT:??_7Collider@Opcode@@6B@
	mov	QWORD PTR [rcx], rax
	ret	0
??1RayCollider@Opcode@@UEAA@XZ ENDP			; Opcode::RayCollider::~RayCollider
_TEXT	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$??_GRayCollider@Opcode@@UEAAPEAXI@Z DD imagerel $LN30
	DD	imagerel $LN30+49
	DD	imagerel $unwind$??_GRayCollider@Opcode@@UEAAPEAXI@Z
pdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$??_GRayCollider@Opcode@@UEAAPEAXI@Z DD 020601H
	DD	030023206H
; Function compile flags: /Ogtpy
xdata	ENDS
;	COMDAT ??_GRayCollider@Opcode@@UEAAPEAXI@Z
_TEXT	SEGMENT
this$ = 48
__flags$ = 56
??_GRayCollider@Opcode@@UEAAPEAXI@Z PROC		; Opcode::RayCollider::`scalar deleting destructor', COMDAT
$LN30:
	push	rbx
	sub	rsp, 32					; 00000020H
	lea	rax, OFFSET FLAT:??_7Collider@Opcode@@6B@
	mov	rbx, rcx
	mov	QWORD PTR [rcx], rax
	test	dl, 1
	je	SHORT $LN29@scalar@2
	mov	rdx, rcx
	mov	rcx, QWORD PTR __imp_?Memory@@3VxrMemory@@A
	call	QWORD PTR __imp_?mem_free@xrMemory@@QEAAXPEAX@Z
$LN29@scalar@2:
	mov	rax, rbx
	add	rsp, 32					; 00000020H
	pop	rbx
	ret	0
??_GRayCollider@Opcode@@UEAAPEAXI@Z ENDP		; Opcode::RayCollider::`scalar deleting destructor'
END