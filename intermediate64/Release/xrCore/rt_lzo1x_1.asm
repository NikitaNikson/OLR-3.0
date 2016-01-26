; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

include listing.inc

INCLUDELIB OLDNAMES

pdata	SEGMENT
$pdata$?do_compress@@YA_KPEBE_KPEAEPEA_KPEAX@Z DD imagerel ?do_compress@@YA_KPEBE_KPEAEPEA_KPEAX@Z
	DD	imagerel ?do_compress@@YA_KPEBE_KPEAEPEA_KPEAX@Z+911
	DD	imagerel $unwind$?do_compress@@YA_KPEBE_KPEAEPEA_KPEAX@Z
pdata	ENDS
xdata	SEGMENT
$unwind$?do_compress@@YA_KPEBE_KPEAEPEA_KPEAX@Z DD 0a3401H
	DD	055434H
	DD	0f01a521eH
	DD	0d016e018H
	DD	07012c014H
	DD	030106011H
; Function compile flags: /Ogtpy
; File c:\users\nummer\documents\github\olr-3.0\src\xray\xrcore\rt_lzo1x_c.ch
xdata	ENDS
_TEXT	SEGMENT
in$ = 112
tv599 = 120
in_len$ = 120
out$ = 128
out_len$ = 136
wrkmem$ = 144
?do_compress@@YA_KPEBE_KPEAEPEA_KPEAX@Z PROC		; do_compress

; 46   : {

	mov	QWORD PTR [rsp+32], r9
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+8], rcx
	push	rbx
	push	rsi
	push	rdi
	push	r12
	push	r13
	push	r14
	push	r15
	sub	rsp, 48					; 00000030H

; 47   :     register const lzo_bytep ip;
; 48   :     lzo_bytep op;
; 49   :     const lzo_bytep const in_end = in + in_len;

	lea	r15, QWORD PTR [rcx+rdx]
	mov	rbx, rcx

; 50   :     const lzo_bytep const ip_end = in + in_len - M2_MAX_LEN - 5;
; 51   :     const lzo_bytep ii;
; 52   :     lzo_dict_p const dict = (lzo_dict_p) wrkmem;
; 53   : 
; 54   :     op = out;

	mov	rsi, r8

; 55   :     ip = in;
; 56   :     ii = ip;

	mov	r13, rcx

; 57   : 
; 58   :     ip += 4;

	lea	rdi, QWORD PTR [rcx+4]
	mov	QWORD PTR [rsp+40], rbp
	lea	r14, QWORD PTR [r15-13]
$LN91@do_compres:
	mov	r11, QWORD PTR wrkmem$[rsp]
$LL50@do_compres:

; 59   :     for (;;)
; 60   :     {
; 61   :         register const lzo_bytep m_pos;
; 62   :         lzo_uint m_off;
; 63   :         lzo_uint m_len;
; 64   :         lzo_uint dindex;
; 65   : 
; 66   :         DINDEX1(dindex,ip);

	movzx	eax, BYTE PTR [rdi+1]
	movzx	edx, BYTE PTR [rdi+3]
	movzx	r9d, BYTE PTR [rdi+2]
	lea	r10, QWORD PTR [rdi+3]
	mov	ecx, edx
	lea	r8, QWORD PTR [rdi+1]
	shl	rcx, 6
	mov	QWORD PTR tv599[rsp], r10
	xor	rcx, r9
	shl	rcx, 5
	xor	rcx, rax
	movzx	eax, BYTE PTR [rdi]
	shl	rcx, 5
	xor	rcx, rax
	imul	rcx, 33					; 00000021H
	shr	rcx, 5
	and	ecx, 16383				; 00003fffH

; 67   :         GINDEX(m_pos,m_off,dict,dindex,in);

	mov	r12, QWORD PTR [r11+rcx*8]

; 68   :         if (LZO_CHECK_MPOS_NON_DET(m_pos,m_off,in,ip,M4_MAX_OFFSET))

	cmp	r12, rbx
	jb	$literal$97213
	mov	rbp, rdi
	sub	rbp, r12
	lea	rax, QWORD PTR [rbp-1]
	cmp	rax, 49150				; 0000bffeH
	ja	$literal$97213

; 69   :             goto literal;
; 70   : #if 1
; 71   :         if (m_off <= M2_MAX_OFFSET || m_pos[3] == ip[3])

	cmp	rbp, 2048				; 00000800H
	jbe	SHORT $try_match$97217
	cmp	BYTE PTR [r12+3], dl
	je	SHORT $try_match$97217

; 72   :             goto try_match;
; 73   :         DINDEX2(dindex,ip);

	and	ecx, 2047				; 000007ffH
	xor	rcx, 8223				; 0000201fH

; 74   : #endif
; 75   :         GINDEX(m_pos,m_off,dict,dindex,in);

	mov	r12, QWORD PTR [r11+rcx*8]

; 76   :         if (LZO_CHECK_MPOS_NON_DET(m_pos,m_off,in,ip,M4_MAX_OFFSET))

	cmp	r12, rbx
	jb	$literal$97213
	mov	rbp, rdi
	sub	rbp, r12
	lea	rax, QWORD PTR [rbp-1]
	cmp	rax, 49150				; 0000bffeH
	ja	$literal$97213

; 77   :             goto literal;
; 78   :         if (m_off <= M2_MAX_OFFSET || m_pos[3] == ip[3])

	cmp	rbp, 2048				; 00000800H
	jbe	SHORT $try_match$97217
	cmp	BYTE PTR [r12+3], dl
	jne	$literal$97213
$try_match$97217:

; 79   :             goto try_match;
; 80   :         goto literal;
; 81   : 
; 82   : 
; 83   : try_match:
; 84   : #if 1 && defined(LZO_UNALIGNED_OK_2)
; 85   :         if (* (const lzo_ushortp) m_pos != * (const lzo_ushortp) ip)

	movzx	eax, WORD PTR [rdi]
	cmp	WORD PTR [r12], ax
	jne	$literal$97213

; 86   : #else
; 87   :         if (m_pos[0] != ip[0] || m_pos[1] != ip[1])
; 88   : #endif
; 89   :         {
; 90   :         }
; 91   :         else
; 92   :         {
; 93   :             if __lzo_likely(m_pos[2] == ip[2])

	cmp	BYTE PTR [r12+2], r9b
	jne	$literal$97213

; 143  :             break;
; 144  :         continue;
; 145  : 
; 146  : 
; 147  :     /* a match */
; 148  : match:
; 149  :         UPDATE_I(dict,0,dindex,ip,in);

	mov	QWORD PTR [r11+rcx*8], rdi

; 150  :         /* store current literal run */
; 151  :         if (pd(ip,ii) > 0)

	sub	rdi, r13
$match$97238:
	je	$LN22@do_compres

; 152  :         {
; 153  :             register lzo_uint t = pd(ip,ii);
; 154  : 
; 155  :             if (t <= 3)

	cmp	rdi, 3
	ja	SHORT $LN30@do_compres

; 156  :             {
; 157  :                 assert(op - 2 > out);
; 158  :                 op[-2] |= LZO_BYTE(t);

	or	BYTE PTR [rsi-2], dil
	jmp	SHORT $LL24@do_compres
$LN30@do_compres:

; 159  :             }
; 160  :             else if (t <= 18)

	cmp	rdi, 18
	ja	SHORT $LN28@do_compres

; 161  :                 *op++ = LZO_BYTE(t - 3);

	lea	eax, DWORD PTR [rdi-3]
	mov	BYTE PTR [rsi], al

; 162  :             else

	jmp	SHORT $LN86@do_compres
$LN28@do_compres:

; 163  :             {
; 164  :                 register lzo_uint tt = t - 18;

	lea	r14, QWORD PTR [rdi-18]

; 165  : 
; 166  :                 *op++ = 0;

	mov	BYTE PTR [rsi], 0
	inc	rsi

; 167  :                 while (tt > 255)

	cmp	r14, 255				; 000000ffH
	jbe	SHORT $LN26@do_compres

; 163  :             {
; 164  :                 register lzo_uint tt = t - 18;

	lea	rcx, QWORD PTR [r14-256]
	mov	rax, -9187201950435737471		; 8080808080808081H
	mul	rcx
	mov	rcx, rsi
	mov	rbx, rdx
	xor	edx, edx
	shr	rbx, 7
	inc	rbx
	mov	r8, rbx
	call	memset
	mov	r10, QWORD PTR tv599[rsp]

; 167  :                 while (tt > 255)

	add	rsi, rbx
	imul	rbx, -255				; ffffffffffffff01H
	add	r14, rbx
$LN26@do_compres:

; 168  :                 {
; 169  :                     tt -= 255;
; 170  :                     *op++ = 0;
; 171  :                 }
; 172  :                 assert(tt > 0);
; 173  :                 *op++ = LZO_BYTE(tt);

	mov	BYTE PTR [rsi], r14b
	lea	r14, QWORD PTR [r15-13]
$LN86@do_compres:
	inc	rsi
$LL24@do_compres:

; 174  :             }
; 175  :             do *op++ = *ii++; while (--t > 0);

	movzx	eax, BYTE PTR [r13]
	inc	rsi
	inc	r13
	dec	rdi
	mov	BYTE PTR [rsi-1], al
	jne	SHORT $LL24@do_compres
$LN22@do_compres:

; 176  :         }
; 177  : 
; 178  :         /* code the match */
; 179  :         assert(ii == ip);
; 180  :         ip += 3;
; 181  :         if (m_pos[3] != *ip++ || m_pos[4] != *ip++ || m_pos[5] != *ip++ ||
; 182  :             m_pos[6] != *ip++ || m_pos[7] != *ip++ || m_pos[8] != *ip++
; 183  : #ifdef LZO1Y
; 184  :             || m_pos[ 9] != *ip++ || m_pos[10] != *ip++ || m_pos[11] != *ip++
; 185  :             || m_pos[12] != *ip++ || m_pos[13] != *ip++ || m_pos[14] != *ip++
; 186  : #endif
; 187  :            )

	movzx	eax, BYTE PTR [r10]
	lea	rdi, QWORD PTR [r10+1]
	cmp	BYTE PTR [r12+3], al
	jne	$LN20@do_compres
	movzx	eax, BYTE PTR [rdi]
	inc	rdi
	cmp	BYTE PTR [r12+4], al
	jne	$LN20@do_compres
	movzx	eax, BYTE PTR [rdi]
	inc	rdi
	cmp	BYTE PTR [r12+5], al
	jne	$LN20@do_compres
	movzx	eax, BYTE PTR [rdi]
	inc	rdi
	cmp	BYTE PTR [r12+6], al
	jne	$LN20@do_compres
	movzx	eax, BYTE PTR [rdi]
	inc	rdi
	cmp	BYTE PTR [r12+7], al
	jne	$LN20@do_compres
	movzx	eax, BYTE PTR [rdi]
	inc	rdi
	cmp	BYTE PTR [r12+8], al
	jne	$LN20@do_compres

; 224  :         {
; 225  :             {
; 226  :                 const lzo_bytep end = in_end;
; 227  :                 const lzo_bytep m = m_pos + M2_MAX_LEN + 1;

	lea	rcx, QWORD PTR [r12+9]

; 228  :                 while (ip < end && *m == *ip)

	cmp	rdi, r15
	jae	SHORT $LN83@do_compres
$LL12@do_compres:
	movzx	eax, BYTE PTR [rdi]
	cmp	BYTE PTR [rcx], al
	jne	SHORT $LN83@do_compres

; 229  :                     m++, ip++;

	inc	rdi
	inc	rcx
	cmp	rdi, r15
	jb	SHORT $LL12@do_compres
$LN83@do_compres:

; 230  :                 m_len = pd(ip, ii);

	mov	r12, rdi
	sub	r12, r13

; 231  :             }
; 232  :             assert(m_len > M2_MAX_LEN);
; 233  : 
; 234  :             if (m_off <= M3_MAX_OFFSET)

	cmp	rbp, 16384				; 00004000H
	ja	SHORT $LN10@do_compres

; 235  :             {
; 236  :                 m_off -= 1;

	dec	rbp

; 237  :                 if (m_len <= 33)

	cmp	r12, 33					; 00000021H
	ja	SHORT $LN9@do_compres

; 238  :                     *op++ = LZO_BYTE(M3_MARKER | (m_len - 2));

	sub	r12b, 2
	or	r12b, 32				; 00000020H
	mov	BYTE PTR [rsi], r12b

; 244  :                 }
; 245  :             }
; 246  :             else

	jmp	$LN87@do_compres
$LN9@do_compres:

; 239  :                 else
; 240  :                 {
; 241  :                     m_len -= 33;

	sub	r12, 33					; 00000021H

; 242  :                     *op++ = M3_MARKER | 0;

	mov	BYTE PTR [rsi], 32			; 00000020H

; 243  :                     goto m3_m4_len;

	jmp	SHORT $LN88@do_compres
$LN10@do_compres:

; 247  :             {
; 248  : #if defined(LZO1Y)
; 249  : m4_match:
; 250  : #endif
; 251  :                 m_off -= 0x4000;

	sub	rbp, 16384				; 00004000H

; 252  :                 assert(m_off > 0); assert(m_off <= 0x7fff);
; 253  :                 if (m_len <= M4_MAX_LEN)
; 254  :                     *op++ = LZO_BYTE(M4_MARKER |
; 255  :                                      ((m_off & 0x4000) >> 11) | (m_len - 2));

	mov	rax, rbp
	shr	rax, 11
	and	al, 8
	cmp	r12, 9
	ja	SHORT $LN5@do_compres
	sub	r12b, 2
	or	al, r12b

; 256  :                 else

	jmp	$LN89@do_compres
$LN5@do_compres:

; 257  :                 {
; 258  :                     m_len -= M4_MAX_LEN;

	sub	r12, 9

; 259  :                     *op++ = LZO_BYTE(M4_MARKER | ((m_off & 0x4000) >> 11));

	or	al, 16
	mov	BYTE PTR [rsi], al
$LN88@do_compres:
	inc	rsi
$m3_m4_len$97293:

; 260  : m3_m4_len:
; 261  :                     while (m_len > 255)

	cmp	r12, 255				; 000000ffH
	jbe	SHORT $LN3@do_compres
	lea	rcx, QWORD PTR [r12-256]
	mov	rax, -9187201950435737471		; 8080808080808081H
	mul	rcx
	mov	rcx, rsi
	mov	rbx, rdx
	xor	edx, edx
	shr	rbx, 7
	inc	rbx
	mov	r8, rbx
	call	memset
	add	rsi, rbx
	imul	rbx, -255				; ffffffffffffff01H
	add	r12, rbx
$LN3@do_compres:

; 262  :                     {
; 263  :                         m_len -= 255;
; 264  :                         *op++ = 0;
; 265  :                     }
; 266  :                     assert(m_len > 0);
; 267  :                     *op++ = LZO_BYTE(m_len);

	mov	BYTE PTR [rsi], r12b

; 268  :                 }
; 269  :             }
; 270  : 
; 271  : m3_m4_offset:

	jmp	SHORT $LN87@do_compres
$LN20@do_compres:

; 188  :         {
; 189  :             --ip;

	dec	rdi

; 190  :             m_len = pd(ip, ii);

	mov	rcx, rdi
	sub	rcx, r13

; 191  :             assert(m_len >= 3); assert(m_len <= M2_MAX_LEN);
; 192  : 
; 193  :             if (m_off <= M2_MAX_OFFSET)

	cmp	rbp, 2048				; 00000800H
	ja	SHORT $LN19@do_compres

; 194  :             {
; 195  :                 m_off -= 1;
; 196  : #if defined(LZO1X)
; 197  :                 *op++ = LZO_BYTE(((m_len - 1) << 5) | ((m_off & 7) << 2));

	dec	cl
	dec	rbp
	shl	cl, 3
	movzx	eax, bpl
	and	al, 7
	or	cl, al
	shl	cl, 2

; 198  :                 *op++ = LZO_BYTE(m_off >> 3);

	shr	rbp, 3
	mov	BYTE PTR [rsi], cl

; 217  :                 goto m3_m4_offset;
; 218  :             }
; 219  : #elif defined(LZO1Y)
; 220  :                 goto m4_match;
; 221  : #endif
; 222  :         }
; 223  :         else

	jmp	SHORT $LN90@do_compres
$LN19@do_compres:

; 199  : #elif defined(LZO1Y)
; 200  :                 *op++ = LZO_BYTE(((m_len + 1) << 4) | ((m_off & 3) << 2));
; 201  :                 *op++ = LZO_BYTE(m_off >> 2);
; 202  : #endif
; 203  :             }
; 204  :             else if (m_off <= M3_MAX_OFFSET)
; 205  :             {
; 206  :                 m_off -= 1;
; 207  :                 *op++ = LZO_BYTE(M3_MARKER | (m_len - 2));

	sub	cl, 2
	cmp	rbp, 16384				; 00004000H
	ja	SHORT $LN17@do_compres
	dec	rbp
	or	cl, 32					; 00000020H
	mov	BYTE PTR [rsi], cl

; 208  :                 goto m3_m4_offset;

	jmp	SHORT $LN87@do_compres
$LN17@do_compres:

; 209  :             }
; 210  :             else
; 211  : #if defined(LZO1X)
; 212  :             {
; 213  :                 m_off -= 0x4000;

	sub	rbp, 16384				; 00004000H

; 214  :                 assert(m_off > 0); assert(m_off <= 0x7fff);
; 215  :                 *op++ = LZO_BYTE(M4_MARKER |
; 216  :                                  ((m_off & 0x4000) >> 11) | (m_len - 2));

	mov	rax, rbp
	shr	rax, 11
	and	al, 8
	or	al, cl
$LN89@do_compres:
	or	al, 16
	mov	BYTE PTR [rsi], al
$LN87@do_compres:

; 272  :             *op++ = LZO_BYTE((m_off & 63) << 2);

	movzx	eax, bpl
	inc	rsi
$m3_m4_offset$97274:
	shl	al, 2

; 273  :             *op++ = LZO_BYTE(m_off >> 6);

	shr	rbp, 6
	mov	BYTE PTR [rsi], al
$LN90@do_compres:
	mov	BYTE PTR [rsi+1], bpl
	add	rsi, 2

; 274  :         }
; 275  : 
; 276  : #if 0
; 277  : match_done:
; 278  : #endif
; 279  :         ii = ip;

	mov	r13, rdi

; 280  :         if __lzo_unlikely(ip >= ip_end)

	cmp	rdi, r14
	jae	SHORT $LN64@do_compres

; 281  :             break;
; 282  :     }

	mov	rbx, QWORD PTR in$[rsp]
	jmp	$LN91@do_compres
$literal$97213:

; 94   :             {
; 95   : #if 0
; 96   :                 if (m_off <= M2_MAX_OFFSET)
; 97   :                     goto match;
; 98   :                 if (lit <= 3)
; 99   :                     goto match;
; 100  :                 if (lit == 3)           /* better compression, but slower */
; 101  :                 {
; 102  :                     assert(op - 2 > out); op[-2] |= LZO_BYTE(3);
; 103  :                     *op++ = *ii++; *op++ = *ii++; *op++ = *ii++;
; 104  :                     goto code_match;
; 105  :                 }
; 106  :                 if (m_pos[3] == ip[3])
; 107  : #endif
; 108  :                     goto match;
; 109  :             }
; 110  :             else
; 111  :             {
; 112  :                 /* still need a better way for finding M1 matches */
; 113  : #if 0
; 114  :                 /* a M1 match */
; 115  : #if 0
; 116  :                 if (m_off <= M1_MAX_OFFSET && lit > 0 && lit <= 3)
; 117  : #else
; 118  :                 if (m_off <= M1_MAX_OFFSET && lit == 3)
; 119  : #endif
; 120  :                 {
; 121  :                     register lzo_uint t;
; 122  : 
; 123  :                     t = lit;
; 124  :                     assert(op - 2 > out); op[-2] |= LZO_BYTE(t);
; 125  :                     do *op++ = *ii++; while (--t > 0);
; 126  :                     assert(ii == ip);
; 127  :                     m_off -= 1;
; 128  :                     *op++ = LZO_BYTE(M1_MARKER | ((m_off & 3) << 2));
; 129  :                     *op++ = LZO_BYTE(m_off >> 2);
; 130  :                     ip += 2;
; 131  :                     goto match_done;
; 132  :                 }
; 133  : #endif
; 134  :             }
; 135  :         }
; 136  : 
; 137  : 
; 138  :     /* a literal */
; 139  : literal:
; 140  :         UPDATE_I(dict,0,dindex,ip,in);

	mov	QWORD PTR [r11+rcx*8], rdi

; 141  :         ++ip;

	mov	rdi, r8

; 142  :         if __lzo_unlikely(ip >= ip_end)

	cmp	r8, r14
	jb	$LL50@do_compres
$LN64@do_compres:

; 283  : 
; 284  :     *out_len = pd(op, out);

	mov	rax, QWORD PTR out_len$[rsp]
	sub	rsi, QWORD PTR out$[rsp]
	mov	rbp, QWORD PTR [rsp+40]

; 285  :     return pd(in_end,ii);

	sub	r15, r13
	mov	QWORD PTR [rax], rsi
	mov	rax, r15

; 286  : }

	add	rsp, 48					; 00000030H
	pop	r15
	pop	r14
	pop	r13
	pop	r12
	pop	rdi
	pop	rsi
	pop	rbx
	ret	0
?do_compress@@YA_KPEBE_KPEAEPEA_KPEAX@Z ENDP		; do_compress
PUBLIC	lzo1x_1_compress
pdata	SEGMENT
$pdata$lzo1x_1_compress DD imagerel $LN26
	DD	imagerel $LN26+137
	DD	imagerel $unwind$lzo1x_1_compress
$pdata$0$lzo1x_1_compress DD imagerel $LN26+137
	DD	imagerel $LN26+226
	DD	imagerel $chain$0$lzo1x_1_compress
$pdata$1$lzo1x_1_compress DD imagerel $LN26+226
	DD	imagerel $LN26+306
	DD	imagerel $chain$1$lzo1x_1_compress
pdata	ENDS
xdata	SEGMENT
$unwind$lzo1x_1_compress DD 0a1801H
	DD	0d6418H
	DD	0c5418H
	DD	0b3418H
	DD	0e0145218H
	DD	07010d012H
$chain$0$lzo1x_1_compress DD 020521H
	DD	0ac405H
	DD	imagerel $LN26
	DD	imagerel $LN26+137
	DD	imagerel $unwind$lzo1x_1_compress
$chain$1$lzo1x_1_compress DD 021H
	DD	imagerel $LN26
	DD	imagerel $LN26+137
	DD	imagerel $unwind$lzo1x_1_compress
; Function compile flags: /Ogtpy
xdata	ENDS
_TEXT	SEGMENT
in$ = 80
in_len$ = 88
out$ = 96
out_len$ = 104
wrkmem$ = 112
lzo1x_1_compress PROC

; 297  : {

$LN26:
	mov	QWORD PTR [rsp+16], rbx
	mov	QWORD PTR [rsp+24], rbp
	mov	QWORD PTR [rsp+32], rsi
	push	rdi
	push	r13
	push	r14
	sub	rsp, 48					; 00000030H
	mov	r14, r9
	mov	r13, r8
	mov	rbx, rdx
	mov	rbp, rcx

; 298  :     lzo_bytep op = out;

	mov	rdi, r8

; 299  :     lzo_uint t;
; 300  : 
; 301  :     if __lzo_unlikely(in_len <= M2_MAX_LEN + 5)

	cmp	rdx, 13
	ja	SHORT $LN14@lzo1x_1_co

; 302  :         t = in_len;

	mov	rsi, rdx

; 303  :     else

	jmp	SHORT $LN13@lzo1x_1_co
$LN14@lzo1x_1_co:

; 304  :     {
; 305  :         t = do_compress(in,in_len,op,out_len,wrkmem);

	mov	rax, QWORD PTR wrkmem$[rsp]
	mov	QWORD PTR [rsp+32], rax
	call	?do_compress@@YA_KPEBE_KPEAEPEA_KPEAX@Z	; do_compress

; 306  :         op += *out_len;

	mov	rcx, QWORD PTR [r14]
	lea	rdi, QWORD PTR [r13+rcx]
	mov	rsi, rax
$LN13@lzo1x_1_co:

; 307  :     }
; 308  : 
; 309  :     if (t > 0)

	test	rsi, rsi
	je	$LN1@lzo1x_1_co

; 310  :     {
; 311  :         const lzo_bytep ii = in + in_len - t;

	sub	rbp, rsi
	add	rbp, rbx

; 312  : 
; 313  :         if (op == out && t <= 238)

	cmp	rdi, r13
	jne	SHORT $LN11@lzo1x_1_co
	cmp	rsi, 238				; 000000eeH
	ja	SHORT $LN11@lzo1x_1_co

; 314  :             *op++ = LZO_BYTE(17 + t);

	lea	eax, DWORD PTR [rsi+17]
	mov	BYTE PTR [rdi], al
	jmp	SHORT $LN25@lzo1x_1_co
$LN11@lzo1x_1_co:

; 315  :         else if (t <= 3)

	cmp	rsi, 3
	ja	SHORT $LN9@lzo1x_1_co

; 316  :             op[-2] |= LZO_BYTE(t);

	or	BYTE PTR [rdi-2], sil
	jmp	SHORT $LL3@lzo1x_1_co
$LN9@lzo1x_1_co:

; 317  :         else if (t <= 18)

	cmp	rsi, 18
	ja	SHORT $LN7@lzo1x_1_co

; 318  :             *op++ = LZO_BYTE(t - 3);

	lea	eax, DWORD PTR [rsi-3]
	mov	BYTE PTR [rdi], al

; 319  :         else

	jmp	SHORT $LN25@lzo1x_1_co
$LN7@lzo1x_1_co:
	mov	QWORD PTR [rsp+80], r12

; 320  :         {
; 321  :             lzo_uint tt = t - 18;

	lea	r12, QWORD PTR [rsi-18]

; 322  : 
; 323  :             *op++ = 0;

	mov	BYTE PTR [rdi], 0
	inc	rdi

; 324  :             while (tt > 255)

	cmp	r12, 255				; 000000ffH
	jbe	SHORT $LN5@lzo1x_1_co

; 320  :         {
; 321  :             lzo_uint tt = t - 18;

	lea	rcx, QWORD PTR [r12-256]
	mov	rax, -9187201950435737471		; 8080808080808081H
	mul	rcx
	mov	rcx, rdi
	mov	rbx, rdx
	xor	edx, edx
	shr	rbx, 7
	inc	rbx
	mov	r8, rbx
	call	memset

; 324  :             while (tt > 255)

	add	rdi, rbx
	imul	rbx, -255				; ffffffffffffff01H
	add	r12, rbx
$LN5@lzo1x_1_co:

; 325  :             {
; 326  :                 tt -= 255;
; 327  :                 *op++ = 0;
; 328  :             }
; 329  :             assert(tt > 0);
; 330  :             *op++ = LZO_BYTE(tt);

	mov	BYTE PTR [rdi], r12b
	mov	r12, QWORD PTR [rsp+80]
$LN25@lzo1x_1_co:
	inc	rdi
	npad	11
$LL3@lzo1x_1_co:

; 331  :         }
; 332  :         do *op++ = *ii++; while (--t > 0);

	movzx	eax, BYTE PTR [rbp]
	inc	rdi
	inc	rbp
	dec	rsi
	mov	BYTE PTR [rdi-1], al
	jne	SHORT $LL3@lzo1x_1_co
$LN1@lzo1x_1_co:

; 333  :     }
; 334  : 
; 335  :     *op++ = M4_MARKER | 1;
; 336  :     *op++ = 0;
; 337  :     *op++ = 0;
; 338  : 
; 339  :     *out_len = pd(op, out);
; 340  :     return LZO_E_OK;
; 341  : }

	mov	rbx, QWORD PTR [rsp+88]
	mov	rbp, QWORD PTR [rsp+96]
	mov	rsi, QWORD PTR [rsp+104]
	mov	WORD PTR [rdi], 17
	add	rdi, 2
	mov	BYTE PTR [rdi], 0
	sub	rdi, r13
	inc	rdi
	xor	eax, eax
	mov	QWORD PTR [r14], rdi
	add	rsp, 48					; 00000030H
	pop	r14
	pop	r13
	pop	rdi
	ret	0
lzo1x_1_compress ENDP
END
