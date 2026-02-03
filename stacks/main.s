	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 26, 0	sdk_version 26, 2
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ; -- Begin function main
lCPI0_0:
	.long	1                               ; 0x1
	.long	2                               ; 0x2
lCPI0_1:
	.long	3                               ; 0x3
	.long	4                               ; 0x4
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	2
_main:                                  ; @main
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
; %bb.0:
	sub	sp, sp, #80
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	w0, #16                         ; =0x10
	bl	__Znwm
	mov	w8, #1                          ; =0x1
	str	w8, [x0]
	mov	x20, x0
	str	xzr, [x0, #8]
	str	w8, [sp, #24]
Ltmp0:
	mov	w0, #16                         ; =0x10
	bl	__Znwm
Ltmp1:
; %bb.1:
	mov	x19, x0
	mov	w8, #2                          ; =0x2
	str	w8, [x0]
	str	x20, [x0, #8]
	str	w8, [sp, #24]
Ltmp3:
	mov	w0, #16                         ; =0x10
	bl	__Znwm
Ltmp4:
; %bb.2:
	mov	w8, #3                          ; =0x3
	str	w8, [x0]
	str	x19, [x0, #8]
	str	x0, [sp, #32]
	str	w8, [sp, #24]
Ltmp6:
	add	x0, sp, #24
	bl	__ZN6mentor5StackIiE4peekEv
Ltmp7:
; %bb.3:
Ltmp8:
Lloh0:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh1:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh2:
	adrp	x1, l_.str@PAGE
Lloh3:
	add	x1, x1, l_.str@PAGEOFF
	mov	w2, #19                         ; =0x13
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp9:
; %bb.4:
	ldr	w1, [sp, #24]
Ltmp10:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp11:
; %bb.5:
	mov	x19, x0
	ldr	x8, [x0]
	ldur	x9, [x8, #-24]
Ltmp12:
	add	x8, sp, #8
	add	x0, x0, x9
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp13:
; %bb.6:
Ltmp14:
Lloh4:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh5:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #8
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp15:
; %bb.7:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp16:
	mov	w1, #10                         ; =0xa
	blr	x8
Ltmp17:
; %bb.8:
	mov	x20, x0
	add	x0, sp, #8
	bl	__ZNSt3__16localeD1Ev
Ltmp19:
	mov	x0, x19
	mov	x1, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp20:
; %bb.9:
Ltmp21:
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
Ltmp22:
; %bb.10:
Ltmp23:
Lloh6:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh7:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	add	x1, sp, #24
	bl	__ZN6mentorlsERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS_5StackIiEE
Ltmp24:
; %bb.11:
	mov	x19, x0
	ldr	x8, [x0]
	ldur	x9, [x8, #-24]
Ltmp25:
	add	x8, sp, #8
	add	x0, x0, x9
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp26:
; %bb.12:
Ltmp27:
Lloh8:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh9:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #8
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp28:
; %bb.13:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp29:
	mov	w1, #10                         ; =0xa
	blr	x8
Ltmp30:
; %bb.14:
	mov	x20, x0
	add	x0, sp, #8
	bl	__ZNSt3__16localeD1Ev
Ltmp32:
	mov	x0, x19
	mov	x1, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp33:
; %bb.15:
Ltmp34:
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
Ltmp35:
; %bb.16:
Ltmp36:
	add	x0, sp, #24
	bl	__ZN6mentor5StackIiE3popEv
Ltmp37:
; %bb.17:
Ltmp38:
Lloh10:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh11:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh12:
	adrp	x1, l_.str@PAGE
Lloh13:
	add	x1, x1, l_.str@PAGEOFF
	mov	w2, #19                         ; =0x13
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp39:
; %bb.18:
	ldr	w1, [sp, #24]
Ltmp40:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp41:
; %bb.19:
	mov	x19, x0
	ldr	x8, [x0]
	ldur	x9, [x8, #-24]
Ltmp42:
	add	x8, sp, #8
	add	x0, x0, x9
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp43:
; %bb.20:
Ltmp44:
Lloh14:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh15:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #8
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp45:
; %bb.21:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp46:
	mov	w1, #10                         ; =0xa
	blr	x8
Ltmp47:
; %bb.22:
	mov	x20, x0
	add	x0, sp, #8
	bl	__ZNSt3__16localeD1Ev
Ltmp49:
	mov	x0, x19
	mov	x1, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp50:
; %bb.23:
Ltmp51:
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
Ltmp52:
; %bb.24:
Ltmp53:
Lloh16:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh17:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	add	x1, sp, #24
	bl	__ZN6mentorlsERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS_5StackIiEE
Ltmp54:
; %bb.25:
	mov	x19, x0
	ldr	x8, [x0]
	ldur	x9, [x8, #-24]
Ltmp55:
	add	x8, sp, #8
	add	x0, x0, x9
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp56:
; %bb.26:
Ltmp57:
Lloh18:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh19:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #8
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp58:
; %bb.27:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp59:
	mov	w1, #10                         ; =0xa
	blr	x8
Ltmp60:
; %bb.28:
	mov	x20, x0
	add	x0, sp, #8
	bl	__ZNSt3__16localeD1Ev
Ltmp62:
	mov	x0, x19
	mov	x1, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp63:
; %bb.29:
Ltmp64:
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
Ltmp65:
; %bb.30:
Ltmp66:
Lloh20:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh21:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh22:
	adrp	x1, l_.str.1@PAGE
Lloh23:
	add	x1, x1, l_.str.1@PAGEOFF
	mov	w2, #21                         ; =0x15
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp67:
; %bb.31:
	ldr	w8, [sp, #24]
	cmp	w8, #0
	cset	w1, eq
Ltmp68:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEb
Ltmp69:
; %bb.32:
	mov	x19, x0
	ldr	x8, [x0]
	ldur	x9, [x8, #-24]
Ltmp70:
	add	x8, sp, #8
	add	x0, x0, x9
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp71:
; %bb.33:
Ltmp72:
Lloh24:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh25:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #8
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp73:
; %bb.34:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp74:
	mov	w1, #10                         ; =0xa
	blr	x8
Ltmp75:
; %bb.35:
	mov	x20, x0
	add	x0, sp, #8
	bl	__ZNSt3__16localeD1Ev
Ltmp77:
	mov	x0, x19
	mov	x1, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp78:
; %bb.36:
Ltmp79:
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
Ltmp80:
; %bb.37:
Ltmp81:
	add	x0, sp, #24
	bl	__ZN6mentor5StackIiE3popEv
Ltmp82:
; %bb.38:
Ltmp83:
	add	x0, sp, #24
	bl	__ZN6mentor5StackIiE3popEv
Ltmp84:
; %bb.39:
Ltmp85:
Lloh26:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh27:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh28:
	adrp	x1, l_.str@PAGE
Lloh29:
	add	x1, x1, l_.str@PAGEOFF
	mov	w2, #19                         ; =0x13
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp86:
; %bb.40:
	ldr	w1, [sp, #24]
Ltmp87:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp88:
; %bb.41:
	mov	x19, x0
	ldr	x8, [x0]
	ldur	x9, [x8, #-24]
Ltmp89:
	add	x8, sp, #8
	add	x0, x0, x9
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp90:
; %bb.42:
Ltmp91:
Lloh30:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh31:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #8
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp92:
; %bb.43:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp93:
	mov	w1, #10                         ; =0xa
	blr	x8
Ltmp94:
; %bb.44:
	mov	x20, x0
	add	x0, sp, #8
	bl	__ZNSt3__16localeD1Ev
Ltmp96:
	mov	x0, x19
	mov	x1, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp97:
; %bb.45:
Ltmp98:
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
Ltmp99:
; %bb.46:
Ltmp100:
Lloh32:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh33:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	add	x1, sp, #24
	bl	__ZN6mentorlsERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS_5StackIiEE
Ltmp101:
; %bb.47:
	mov	x19, x0
	ldr	x8, [x0]
	ldur	x9, [x8, #-24]
Ltmp102:
	add	x8, sp, #8
	add	x0, x0, x9
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp103:
; %bb.48:
Ltmp104:
Lloh34:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh35:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #8
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp105:
; %bb.49:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp106:
	mov	w1, #10                         ; =0xa
	blr	x8
Ltmp107:
; %bb.50:
	mov	x20, x0
	add	x0, sp, #8
	bl	__ZNSt3__16localeD1Ev
Ltmp109:
	mov	x0, x19
	mov	x1, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp110:
; %bb.51:
Ltmp111:
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
Ltmp112:
; %bb.52:
Ltmp113:
Lloh36:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh37:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh38:
	adrp	x1, l_.str.1@PAGE
Lloh39:
	add	x1, x1, l_.str.1@PAGEOFF
	mov	w2, #21                         ; =0x15
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp114:
; %bb.53:
	ldr	w8, [sp, #24]
	cmp	w8, #0
	cset	w1, eq
Ltmp115:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEb
Ltmp116:
; %bb.54:
	mov	x19, x0
	ldr	x8, [x0]
	ldur	x9, [x8, #-24]
Ltmp117:
	add	x8, sp, #8
	add	x0, x0, x9
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp118:
; %bb.55:
Ltmp119:
Lloh40:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh41:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #8
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp120:
; %bb.56:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp121:
	mov	w1, #10                         ; =0xa
	blr	x8
Ltmp122:
; %bb.57:
	mov	x20, x0
	add	x0, sp, #8
	bl	__ZNSt3__16localeD1Ev
Ltmp124:
	mov	x0, x19
	mov	x1, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp125:
; %bb.58:
Ltmp126:
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
Ltmp127:
; %bb.59:
	str	wzr, [sp, #8]
	str	xzr, [sp, #16]
Ltmp129:
	mov	w0, #16                         ; =0x10
	bl	__Znwm
Ltmp130:
; %bb.60:
	mov	x19, x0
Lloh42:
	adrp	x8, lCPI0_0@PAGE
Lloh43:
	ldr	d0, [x8, lCPI0_0@PAGEOFF]
	str	d0, [x0]
	str	xzr, [x0, #8]
	str	x0, [sp, #16]
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #8]
Ltmp131:
	mov	w0, #16                         ; =0x10
	bl	__Znwm
Ltmp132:
; %bb.61:
Lloh44:
	adrp	x8, lCPI0_1@PAGE
Lloh45:
	ldr	d0, [x8, lCPI0_1@PAGEOFF]
	str	d0, [x0]
	str	x19, [x0, #8]
	str	x0, [sp, #16]
	mov	w8, #2                          ; =0x2
	str	w8, [sp, #8]
Ltmp133:
Lloh46:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh47:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	add	x1, sp, #8
	bl	__ZN6mentorlsERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS_5StackINS0_4pairIiiEEEE
Ltmp134:
; %bb.62:
	mov	x19, x0
	ldr	x8, [x0]
	ldur	x9, [x8, #-24]
Ltmp135:
	sub	x8, x29, #24
	add	x0, x0, x9
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp136:
; %bb.63:
Ltmp137:
Lloh48:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh49:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	sub	x0, x29, #24
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp138:
; %bb.64:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp139:
	mov	w1, #10                         ; =0xa
	blr	x8
Ltmp140:
; %bb.65:
	mov	x20, x0
	sub	x0, x29, #24
	bl	__ZNSt3__16localeD1Ev
Ltmp142:
	mov	x0, x19
	mov	x1, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp143:
; %bb.66:
Ltmp144:
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
Ltmp145:
; %bb.67:
Ltmp146:
	add	x0, sp, #8
	bl	__ZN6mentor5StackINSt3__14pairIiiEEE3popEv
Ltmp147:
; %bb.68:
Ltmp148:
Lloh50:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh51:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	add	x1, sp, #8
	bl	__ZN6mentorlsERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS_5StackINS0_4pairIiiEEEE
Ltmp149:
; %bb.69:
	mov	x19, x0
	ldr	x8, [x0]
	ldur	x9, [x8, #-24]
Ltmp150:
	sub	x8, x29, #24
	add	x0, x0, x9
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp151:
; %bb.70:
Ltmp152:
Lloh52:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh53:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	sub	x0, x29, #24
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp153:
; %bb.71:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp154:
	mov	w1, #10                         ; =0xa
	blr	x8
Ltmp155:
; %bb.72:
	mov	x20, x0
	sub	x0, x29, #24
	bl	__ZNSt3__16localeD1Ev
Ltmp157:
	mov	x0, x19
	mov	x1, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp158:
; %bb.73:
Ltmp159:
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
Ltmp160:
	b	LBB0_75
LBB0_74:                                ;   in Loop: Header=BB0_75 Depth=1
	ldr	x8, [x0, #8]
	str	x8, [sp, #16]
	bl	__ZdlPv
LBB0_75:                                ; =>This Inner Loop Header: Depth=1
	ldr	x0, [sp, #16]
	cbnz	x0, LBB0_74
	b	LBB0_77
LBB0_76:                                ;   in Loop: Header=BB0_77 Depth=1
	ldr	x8, [x0, #8]
	str	x8, [sp, #32]
	bl	__ZdlPv
LBB0_77:                                ; =>This Inner Loop Header: Depth=1
	ldr	x0, [sp, #32]
	cbnz	x0, LBB0_76
; %bb.78:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB0_79:
Ltmp5:
	mov	x20, x19
	mov	x19, x0
	b	LBB0_98
LBB0_80:
Ltmp2:
	mov	x19, x0
	b	LBB0_98
LBB0_81:
Ltmp156:
	b	LBB0_83
LBB0_82:
Ltmp141:
LBB0_83:
	mov	x19, x0
	sub	x0, x29, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB0_95
LBB0_84:
Ltmp123:
	b	LBB0_92
LBB0_85:
Ltmp108:
	b	LBB0_92
LBB0_86:
Ltmp95:
	b	LBB0_92
LBB0_87:
Ltmp76:
	b	LBB0_92
LBB0_88:
Ltmp61:
	b	LBB0_92
LBB0_89:
Ltmp48:
	b	LBB0_92
LBB0_90:
Ltmp31:
	b	LBB0_92
LBB0_91:
Ltmp18:
LBB0_92:
	mov	x19, x0
	add	x0, sp, #8
	bl	__ZNSt3__16localeD1Ev
	b	LBB0_97
LBB0_93:
Ltmp161:
	mov	x19, x0
	b	LBB0_95
LBB0_94:                                ;   in Loop: Header=BB0_95 Depth=1
	ldr	x8, [x0, #8]
	str	x8, [sp, #16]
	bl	__ZdlPv
LBB0_95:                                ; =>This Inner Loop Header: Depth=1
	ldr	x0, [sp, #16]
	cbnz	x0, LBB0_94
	b	LBB0_97
LBB0_96:
Ltmp128:
	mov	x19, x0
LBB0_97:
	ldr	x8, [sp, #32]
	mov	x20, x8
	cbz	x8, LBB0_100
LBB0_98:
	mov	x0, x20
LBB0_99:                                ; =>This Inner Loop Header: Depth=1
	ldr	x8, [x0, #8]
	str	x8, [sp, #32]
	bl	__ZdlPv
	ldr	x0, [sp, #32]
	cbnz	x0, LBB0_99
LBB0_100:
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpLdrGot	Lloh0, Lloh1
	.loh AdrpLdrGot	Lloh4, Lloh5
	.loh AdrpLdrGot	Lloh6, Lloh7
	.loh AdrpLdrGot	Lloh8, Lloh9
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpLdrGot	Lloh10, Lloh11
	.loh AdrpLdrGot	Lloh14, Lloh15
	.loh AdrpLdrGot	Lloh16, Lloh17
	.loh AdrpLdrGot	Lloh18, Lloh19
	.loh AdrpAdd	Lloh22, Lloh23
	.loh AdrpLdrGot	Lloh20, Lloh21
	.loh AdrpLdrGot	Lloh24, Lloh25
	.loh AdrpAdd	Lloh28, Lloh29
	.loh AdrpLdrGot	Lloh26, Lloh27
	.loh AdrpLdrGot	Lloh30, Lloh31
	.loh AdrpLdrGot	Lloh32, Lloh33
	.loh AdrpLdrGot	Lloh34, Lloh35
	.loh AdrpAdd	Lloh38, Lloh39
	.loh AdrpLdrGot	Lloh36, Lloh37
	.loh AdrpLdrGot	Lloh40, Lloh41
	.loh AdrpLdr	Lloh42, Lloh43
	.loh AdrpLdrGot	Lloh46, Lloh47
	.loh AdrpLdr	Lloh44, Lloh45
	.loh AdrpLdrGot	Lloh48, Lloh49
	.loh AdrpLdrGot	Lloh50, Lloh51
	.loh AdrpLdrGot	Lloh52, Lloh53
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table0:
Lexception0:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Lfunc_begin0-Lfunc_begin0      ; >> Call Site 1 <<
	.uleb128 Ltmp0-Lfunc_begin0             ;   Call between Lfunc_begin0 and Ltmp0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp0-Lfunc_begin0             ; >> Call Site 2 <<
	.uleb128 Ltmp1-Ltmp0                    ;   Call between Ltmp0 and Ltmp1
	.uleb128 Ltmp2-Lfunc_begin0             ;     jumps to Ltmp2
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp3-Lfunc_begin0             ; >> Call Site 3 <<
	.uleb128 Ltmp4-Ltmp3                    ;   Call between Ltmp3 and Ltmp4
	.uleb128 Ltmp5-Lfunc_begin0             ;     jumps to Ltmp5
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp6-Lfunc_begin0             ; >> Call Site 4 <<
	.uleb128 Ltmp13-Ltmp6                   ;   Call between Ltmp6 and Ltmp13
	.uleb128 Ltmp128-Lfunc_begin0           ;     jumps to Ltmp128
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp14-Lfunc_begin0            ; >> Call Site 5 <<
	.uleb128 Ltmp17-Ltmp14                  ;   Call between Ltmp14 and Ltmp17
	.uleb128 Ltmp18-Lfunc_begin0            ;     jumps to Ltmp18
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp19-Lfunc_begin0            ; >> Call Site 6 <<
	.uleb128 Ltmp26-Ltmp19                  ;   Call between Ltmp19 and Ltmp26
	.uleb128 Ltmp128-Lfunc_begin0           ;     jumps to Ltmp128
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp27-Lfunc_begin0            ; >> Call Site 7 <<
	.uleb128 Ltmp30-Ltmp27                  ;   Call between Ltmp27 and Ltmp30
	.uleb128 Ltmp31-Lfunc_begin0            ;     jumps to Ltmp31
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp32-Lfunc_begin0            ; >> Call Site 8 <<
	.uleb128 Ltmp43-Ltmp32                  ;   Call between Ltmp32 and Ltmp43
	.uleb128 Ltmp128-Lfunc_begin0           ;     jumps to Ltmp128
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp44-Lfunc_begin0            ; >> Call Site 9 <<
	.uleb128 Ltmp47-Ltmp44                  ;   Call between Ltmp44 and Ltmp47
	.uleb128 Ltmp48-Lfunc_begin0            ;     jumps to Ltmp48
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp49-Lfunc_begin0            ; >> Call Site 10 <<
	.uleb128 Ltmp56-Ltmp49                  ;   Call between Ltmp49 and Ltmp56
	.uleb128 Ltmp128-Lfunc_begin0           ;     jumps to Ltmp128
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp57-Lfunc_begin0            ; >> Call Site 11 <<
	.uleb128 Ltmp60-Ltmp57                  ;   Call between Ltmp57 and Ltmp60
	.uleb128 Ltmp61-Lfunc_begin0            ;     jumps to Ltmp61
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp62-Lfunc_begin0            ; >> Call Site 12 <<
	.uleb128 Ltmp71-Ltmp62                  ;   Call between Ltmp62 and Ltmp71
	.uleb128 Ltmp128-Lfunc_begin0           ;     jumps to Ltmp128
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp72-Lfunc_begin0            ; >> Call Site 13 <<
	.uleb128 Ltmp75-Ltmp72                  ;   Call between Ltmp72 and Ltmp75
	.uleb128 Ltmp76-Lfunc_begin0            ;     jumps to Ltmp76
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp77-Lfunc_begin0            ; >> Call Site 14 <<
	.uleb128 Ltmp90-Ltmp77                  ;   Call between Ltmp77 and Ltmp90
	.uleb128 Ltmp128-Lfunc_begin0           ;     jumps to Ltmp128
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp91-Lfunc_begin0            ; >> Call Site 15 <<
	.uleb128 Ltmp94-Ltmp91                  ;   Call between Ltmp91 and Ltmp94
	.uleb128 Ltmp95-Lfunc_begin0            ;     jumps to Ltmp95
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp96-Lfunc_begin0            ; >> Call Site 16 <<
	.uleb128 Ltmp103-Ltmp96                 ;   Call between Ltmp96 and Ltmp103
	.uleb128 Ltmp128-Lfunc_begin0           ;     jumps to Ltmp128
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp104-Lfunc_begin0           ; >> Call Site 17 <<
	.uleb128 Ltmp107-Ltmp104                ;   Call between Ltmp104 and Ltmp107
	.uleb128 Ltmp108-Lfunc_begin0           ;     jumps to Ltmp108
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp109-Lfunc_begin0           ; >> Call Site 18 <<
	.uleb128 Ltmp118-Ltmp109                ;   Call between Ltmp109 and Ltmp118
	.uleb128 Ltmp128-Lfunc_begin0           ;     jumps to Ltmp128
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp119-Lfunc_begin0           ; >> Call Site 19 <<
	.uleb128 Ltmp122-Ltmp119                ;   Call between Ltmp119 and Ltmp122
	.uleb128 Ltmp123-Lfunc_begin0           ;     jumps to Ltmp123
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp124-Lfunc_begin0           ; >> Call Site 20 <<
	.uleb128 Ltmp127-Ltmp124                ;   Call between Ltmp124 and Ltmp127
	.uleb128 Ltmp128-Lfunc_begin0           ;     jumps to Ltmp128
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp129-Lfunc_begin0           ; >> Call Site 21 <<
	.uleb128 Ltmp136-Ltmp129                ;   Call between Ltmp129 and Ltmp136
	.uleb128 Ltmp161-Lfunc_begin0           ;     jumps to Ltmp161
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp137-Lfunc_begin0           ; >> Call Site 22 <<
	.uleb128 Ltmp140-Ltmp137                ;   Call between Ltmp137 and Ltmp140
	.uleb128 Ltmp141-Lfunc_begin0           ;     jumps to Ltmp141
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp142-Lfunc_begin0           ; >> Call Site 23 <<
	.uleb128 Ltmp151-Ltmp142                ;   Call between Ltmp142 and Ltmp151
	.uleb128 Ltmp161-Lfunc_begin0           ;     jumps to Ltmp161
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp152-Lfunc_begin0           ; >> Call Site 24 <<
	.uleb128 Ltmp155-Ltmp152                ;   Call between Ltmp152 and Ltmp155
	.uleb128 Ltmp156-Lfunc_begin0           ;     jumps to Ltmp156
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp157-Lfunc_begin0           ; >> Call Site 25 <<
	.uleb128 Ltmp160-Ltmp157                ;   Call between Ltmp157 and Ltmp160
	.uleb128 Ltmp161-Lfunc_begin0           ;     jumps to Ltmp161
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp160-Lfunc_begin0           ; >> Call Site 26 <<
	.uleb128 Lfunc_end0-Ltmp160             ;   Call between Ltmp160 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN6mentor5StackIiE4peekEv     ; -- Begin function _ZN6mentor5StackIiE4peekEv
	.weak_def_can_be_hidden	__ZN6mentor5StackIiE4peekEv
	.p2align	2
__ZN6mentor5StackIiE4peekEv:            ; @_ZN6mentor5StackIiE4peekEv
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
; %bb.0:
	sub	sp, sp, #48
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x20, x0
Lloh54:
	adrp	x19, __ZNSt3__14coutE@GOTPAGE
Lloh55:
	ldr	x19, [x19, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh56:
	adrp	x1, l_.str.2@PAGE
Lloh57:
	add	x1, x1, l_.str.2@PAGEOFF
	mov	x0, x19
	mov	w2, #6                          ; =0x6
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x8, [x20, #8]
	cbz	x8, LBB1_3
; %bb.1:
	ldr	w1, [x8]
Lloh58:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh59:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	mov	x19, x0
	ldr	x8, [x0]
	ldur	x9, [x8, #-24]
	add	x8, sp, #8
	add	x0, x0, x9
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp162:
Lloh60:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh61:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #8
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp163:
; %bb.2:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp164:
	mov	w1, #10                         ; =0xa
	blr	x8
Ltmp165:
	b	LBB1_5
LBB1_3:
	ldr	x8, [x19]
	ldur	x9, [x8, #-24]
	add	x8, sp, #8
	add	x0, x19, x9
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp167:
Lloh62:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh63:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #8
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp168:
; %bb.4:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp169:
	mov	w1, #10                         ; =0xa
	blr	x8
Ltmp170:
LBB1_5:
	mov	x20, x0
	add	x0, sp, #8
	bl	__ZNSt3__16localeD1Ev
	mov	x0, x19
	mov	x1, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB1_6:
Ltmp171:
	b	LBB1_8
LBB1_7:
Ltmp166:
LBB1_8:
	mov	x19, x0
	add	x0, sp, #8
	bl	__ZNSt3__16localeD1Ev
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh56, Lloh57
	.loh AdrpLdrGot	Lloh54, Lloh55
	.loh AdrpLdrGot	Lloh60, Lloh61
	.loh AdrpLdrGot	Lloh58, Lloh59
	.loh AdrpLdrGot	Lloh62, Lloh63
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table1:
Lexception1:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Lfunc_begin1-Lfunc_begin1      ; >> Call Site 1 <<
	.uleb128 Ltmp162-Lfunc_begin1           ;   Call between Lfunc_begin1 and Ltmp162
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp162-Lfunc_begin1           ; >> Call Site 2 <<
	.uleb128 Ltmp165-Ltmp162                ;   Call between Ltmp162 and Ltmp165
	.uleb128 Ltmp166-Lfunc_begin1           ;     jumps to Ltmp166
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp165-Lfunc_begin1           ; >> Call Site 3 <<
	.uleb128 Ltmp167-Ltmp165                ;   Call between Ltmp165 and Ltmp167
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp167-Lfunc_begin1           ; >> Call Site 4 <<
	.uleb128 Ltmp170-Ltmp167                ;   Call between Ltmp167 and Ltmp170
	.uleb128 Ltmp171-Lfunc_begin1           ;     jumps to Ltmp171
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp170-Lfunc_begin1           ; >> Call Site 5 <<
	.uleb128 Lfunc_end1-Ltmp170             ;   Call between Ltmp170 and Lfunc_end1
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end1:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN6mentorlsERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS_5StackIiEE ; -- Begin function _ZN6mentorlsERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS_5StackIiEE
	.weak_def_can_be_hidden	__ZN6mentorlsERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS_5StackIiEE
	.p2align	2
__ZN6mentorlsERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS_5StackIiEE: ; @_ZN6mentorlsERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS_5StackIiEE
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
; %bb.0:
	sub	sp, sp, #80
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	mov	x19, x0
	ldr	x23, [x1, #8]
Lloh64:
	adrp	x1, l_.str.4@PAGE
Lloh65:
	add	x1, x1, l_.str.4@PAGEOFF
	mov	w2, #26                         ; =0x1a
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x20, x0
	ldr	x8, [x0]
	ldur	x9, [x8, #-24]
	add	x8, sp, #8
	add	x0, x0, x9
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp172:
Lloh66:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh67:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #8
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp173:
; %bb.1:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp174:
	mov	w1, #10                         ; =0xa
	blr	x8
Ltmp175:
; %bb.2:
	mov	x21, x0
	add	x0, sp, #8
	bl	__ZNSt3__16localeD1Ev
	mov	x0, x20
	mov	x1, x21
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	mov	x0, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	cbz	x23, LBB2_7
; %bb.3:
Lloh68:
	adrp	x20, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh69:
	ldr	x20, [x20, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
LBB2_4:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w1, [x23]
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	mov	x21, x0
	ldr	x8, [x0]
	ldur	x9, [x8, #-24]
	add	x8, sp, #8
	add	x0, x0, x9
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp177:
	add	x0, sp, #8
	mov	x1, x20
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp178:
; %bb.5:                                ;   in Loop: Header=BB2_4 Depth=1
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp179:
	mov	w1, #10                         ; =0xa
	blr	x8
Ltmp180:
; %bb.6:                                ;   in Loop: Header=BB2_4 Depth=1
	mov	x22, x0
	add	x0, sp, #8
	bl	__ZNSt3__16localeD1Ev
	mov	x0, x21
	mov	x1, x22
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	mov	x0, x21
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	ldr	x23, [x23, #8]
	cbnz	x23, LBB2_4
LBB2_7:
	mov	x0, x19
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB2_8:
Ltmp176:
	b	LBB2_10
LBB2_9:
Ltmp181:
LBB2_10:
	mov	x19, x0
	add	x0, sp, #8
	bl	__ZNSt3__16localeD1Ev
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh66, Lloh67
	.loh AdrpAdd	Lloh64, Lloh65
	.loh AdrpLdrGot	Lloh68, Lloh69
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table2:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Lfunc_begin2-Lfunc_begin2      ; >> Call Site 1 <<
	.uleb128 Ltmp172-Lfunc_begin2           ;   Call between Lfunc_begin2 and Ltmp172
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp172-Lfunc_begin2           ; >> Call Site 2 <<
	.uleb128 Ltmp175-Ltmp172                ;   Call between Ltmp172 and Ltmp175
	.uleb128 Ltmp176-Lfunc_begin2           ;     jumps to Ltmp176
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp175-Lfunc_begin2           ; >> Call Site 3 <<
	.uleb128 Ltmp177-Ltmp175                ;   Call between Ltmp175 and Ltmp177
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp177-Lfunc_begin2           ; >> Call Site 4 <<
	.uleb128 Ltmp180-Ltmp177                ;   Call between Ltmp177 and Ltmp180
	.uleb128 Ltmp181-Lfunc_begin2           ;     jumps to Ltmp181
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp180-Lfunc_begin2           ; >> Call Site 5 <<
	.uleb128 Lfunc_end2-Ltmp180             ;   Call between Ltmp180 and Lfunc_end2
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end2:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN6mentor5StackIiE3popEv      ; -- Begin function _ZN6mentor5StackIiE3popEv
	.weak_def_can_be_hidden	__ZN6mentor5StackIiE3popEv
	.p2align	2
__ZN6mentor5StackIiE3popEv:             ; @_ZN6mentor5StackIiE3popEv
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
; %bb.0:
	sub	sp, sp, #48
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	ldr	w8, [x0]
	cbz	w8, LBB3_3
; %bb.1:
	ldr	x8, [x0, #8]
	ldr	w19, [x8]
	ldr	x9, [x8, #8]
	str	x9, [x0, #8]
	mov	x20, x0
	mov	x0, x8
	bl	__ZdlPv
	ldr	w8, [x20]
	sub	w8, w8, #1
	str	w8, [x20]
Lloh70:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh71:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh72:
	adrp	x1, l_.str.5@PAGE
Lloh73:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	w2, #8                          ; =0x8
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	mov	x19, x0
	ldr	x8, [x0]
	ldur	x9, [x8, #-24]
	add	x8, sp, #8
	add	x0, x0, x9
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp182:
Lloh74:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh75:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #8
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp183:
; %bb.2:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp184:
	mov	w1, #10                         ; =0xa
	blr	x8
Ltmp185:
	b	LBB3_5
LBB3_3:
Lloh76:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh77:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh78:
	adrp	x1, l_.str.5@PAGE
Lloh79:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	w2, #8                          ; =0x8
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x19, x0
	ldr	x8, [x0]
	ldur	x9, [x8, #-24]
	add	x8, sp, #8
	add	x0, x0, x9
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp187:
Lloh80:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh81:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #8
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp188:
; %bb.4:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp189:
	mov	w1, #10                         ; =0xa
	blr	x8
Ltmp190:
LBB3_5:
	mov	x20, x0
	add	x0, sp, #8
	bl	__ZNSt3__16localeD1Ev
	mov	x0, x19
	mov	x1, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB3_6:
Ltmp191:
	b	LBB3_8
LBB3_7:
Ltmp186:
LBB3_8:
	mov	x19, x0
	add	x0, sp, #8
	bl	__ZNSt3__16localeD1Ev
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh74, Lloh75
	.loh AdrpAdd	Lloh72, Lloh73
	.loh AdrpLdrGot	Lloh70, Lloh71
	.loh AdrpLdrGot	Lloh80, Lloh81
	.loh AdrpAdd	Lloh78, Lloh79
	.loh AdrpLdrGot	Lloh76, Lloh77
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table3:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Lfunc_begin3-Lfunc_begin3      ; >> Call Site 1 <<
	.uleb128 Ltmp182-Lfunc_begin3           ;   Call between Lfunc_begin3 and Ltmp182
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp182-Lfunc_begin3           ; >> Call Site 2 <<
	.uleb128 Ltmp185-Ltmp182                ;   Call between Ltmp182 and Ltmp185
	.uleb128 Ltmp186-Lfunc_begin3           ;     jumps to Ltmp186
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp185-Lfunc_begin3           ; >> Call Site 3 <<
	.uleb128 Ltmp187-Ltmp185                ;   Call between Ltmp185 and Ltmp187
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp187-Lfunc_begin3           ; >> Call Site 4 <<
	.uleb128 Ltmp190-Ltmp187                ;   Call between Ltmp187 and Ltmp190
	.uleb128 Ltmp191-Lfunc_begin3           ;     jumps to Ltmp191
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp190-Lfunc_begin3           ; >> Call Site 5 <<
	.uleb128 Lfunc_end3-Ltmp190             ;   Call between Ltmp190 and Lfunc_end3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end3:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN6mentorlsERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS_5StackINS0_4pairIiiEEEE ; -- Begin function _ZN6mentorlsERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS_5StackINS0_4pairIiiEEEE
	.weak_def_can_be_hidden	__ZN6mentorlsERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS_5StackINS0_4pairIiiEEEE
	.p2align	2
__ZN6mentorlsERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS_5StackINS0_4pairIiiEEEE: ; @_ZN6mentorlsERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS_5StackINS0_4pairIiiEEEE
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
; %bb.0:
	sub	sp, sp, #96
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x19, x0
	ldr	x26, [x1, #8]
Lloh82:
	adrp	x1, l_.str.4@PAGE
Lloh83:
	add	x1, x1, l_.str.4@PAGEOFF
	mov	w2, #26                         ; =0x1a
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x20, x0
	ldr	x8, [x0]
	ldur	x9, [x8, #-24]
	add	x8, sp, #8
	add	x0, x0, x9
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp192:
Lloh84:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh85:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #8
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp193:
; %bb.1:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp194:
	mov	w1, #10                         ; =0xa
	blr	x8
Ltmp195:
; %bb.2:
	mov	x21, x0
	add	x0, sp, #8
	bl	__ZNSt3__16localeD1Ev
	mov	x0, x20
	mov	x1, x21
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	mov	x0, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	cbz	x26, LBB4_7
; %bb.3:
Lloh86:
	adrp	x20, l_.str.6@PAGE
Lloh87:
	add	x20, x20, l_.str.6@PAGEOFF
Lloh88:
	adrp	x21, l_.str.7@PAGE
Lloh89:
	add	x21, x21, l_.str.7@PAGEOFF
Lloh90:
	adrp	x22, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh91:
	ldr	x22, [x22, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
Lloh92:
	adrp	x23, l_.str.8@PAGE
Lloh93:
	add	x23, x23, l_.str.8@PAGEOFF
LBB4_4:                                 ; =>This Inner Loop Header: Depth=1
	mov	x0, x19
	mov	x1, x20
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	w1, [x26]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	mov	x1, x21
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	w1, [x26, #4]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	mov	x1, x23
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x24, x0
	ldr	x8, [x0]
	ldur	x9, [x8, #-24]
	add	x8, sp, #8
	add	x0, x0, x9
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp197:
	add	x0, sp, #8
	mov	x1, x22
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp198:
; %bb.5:                                ;   in Loop: Header=BB4_4 Depth=1
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp199:
	mov	w1, #10                         ; =0xa
	blr	x8
Ltmp200:
; %bb.6:                                ;   in Loop: Header=BB4_4 Depth=1
	mov	x25, x0
	add	x0, sp, #8
	bl	__ZNSt3__16localeD1Ev
	mov	x0, x24
	mov	x1, x25
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	mov	x0, x24
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	ldr	x26, [x26, #8]
	cbnz	x26, LBB4_4
LBB4_7:
	mov	x0, x19
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
LBB4_8:
Ltmp196:
	b	LBB4_10
LBB4_9:
Ltmp201:
LBB4_10:
	mov	x19, x0
	add	x0, sp, #8
	bl	__ZNSt3__16localeD1Ev
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh84, Lloh85
	.loh AdrpAdd	Lloh82, Lloh83
	.loh AdrpAdd	Lloh92, Lloh93
	.loh AdrpLdrGot	Lloh90, Lloh91
	.loh AdrpAdd	Lloh88, Lloh89
	.loh AdrpAdd	Lloh86, Lloh87
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table4:
Lexception4:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Lfunc_begin4-Lfunc_begin4      ; >> Call Site 1 <<
	.uleb128 Ltmp192-Lfunc_begin4           ;   Call between Lfunc_begin4 and Ltmp192
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp192-Lfunc_begin4           ; >> Call Site 2 <<
	.uleb128 Ltmp195-Ltmp192                ;   Call between Ltmp192 and Ltmp195
	.uleb128 Ltmp196-Lfunc_begin4           ;     jumps to Ltmp196
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp195-Lfunc_begin4           ; >> Call Site 3 <<
	.uleb128 Ltmp197-Ltmp195                ;   Call between Ltmp195 and Ltmp197
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp197-Lfunc_begin4           ; >> Call Site 4 <<
	.uleb128 Ltmp200-Ltmp197                ;   Call between Ltmp197 and Ltmp200
	.uleb128 Ltmp201-Lfunc_begin4           ;     jumps to Ltmp201
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp200-Lfunc_begin4           ; >> Call Site 5 <<
	.uleb128 Lfunc_end4-Ltmp200             ;   Call between Ltmp200 and Lfunc_end4
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end4:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN6mentor5StackINSt3__14pairIiiEEE3popEv ; -- Begin function _ZN6mentor5StackINSt3__14pairIiiEEE3popEv
	.weak_def_can_be_hidden	__ZN6mentor5StackINSt3__14pairIiiEEE3popEv
	.p2align	2
__ZN6mentor5StackINSt3__14pairIiiEEE3popEv: ; @_ZN6mentor5StackINSt3__14pairIiiEEE3popEv
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
; %bb.0:
	sub	sp, sp, #64
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	ldr	w8, [x0]
	cbz	w8, LBB5_3
; %bb.1:
	ldr	x8, [x0, #8]
	ldp	w20, w19, [x8]
	ldr	x9, [x8, #8]
	str	x9, [x0, #8]
	mov	x21, x0
	mov	x0, x8
	bl	__ZdlPv
	ldr	w8, [x21]
	sub	w8, w8, #1
	str	w8, [x21]
Lloh94:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh95:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh96:
	adrp	x1, l_.str.5@PAGE
Lloh97:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	w2, #8                          ; =0x8
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh98:
	adrp	x1, l_.str.6@PAGE
Lloh99:
	add	x1, x1, l_.str.6@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Lloh100:
	adrp	x1, l_.str.7@PAGE
Lloh101:
	add	x1, x1, l_.str.7@PAGEOFF
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Lloh102:
	adrp	x1, l_.str.8@PAGE
Lloh103:
	add	x1, x1, l_.str.8@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x19, x0
	ldr	x8, [x0]
	ldur	x9, [x8, #-24]
	add	x8, sp, #8
	add	x0, x0, x9
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp202:
Lloh104:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh105:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #8
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp203:
; %bb.2:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp204:
	mov	w1, #10                         ; =0xa
	blr	x8
Ltmp205:
	b	LBB5_5
LBB5_3:
Lloh106:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh107:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh108:
	adrp	x1, l_.str.5@PAGE
Lloh109:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	w2, #8                          ; =0x8
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x19, x0
	ldr	x8, [x0]
	ldur	x9, [x8, #-24]
	add	x8, sp, #8
	add	x0, x0, x9
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp207:
Lloh110:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh111:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #8
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp208:
; %bb.4:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp209:
	mov	w1, #10                         ; =0xa
	blr	x8
Ltmp210:
LBB5_5:
	mov	x20, x0
	add	x0, sp, #8
	bl	__ZNSt3__16localeD1Ev
	mov	x0, x19
	mov	x1, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB5_6:
Ltmp211:
	b	LBB5_8
LBB5_7:
Ltmp206:
LBB5_8:
	mov	x19, x0
	add	x0, sp, #8
	bl	__ZNSt3__16localeD1Ev
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh104, Lloh105
	.loh AdrpAdd	Lloh102, Lloh103
	.loh AdrpAdd	Lloh100, Lloh101
	.loh AdrpAdd	Lloh98, Lloh99
	.loh AdrpAdd	Lloh96, Lloh97
	.loh AdrpLdrGot	Lloh94, Lloh95
	.loh AdrpLdrGot	Lloh110, Lloh111
	.loh AdrpAdd	Lloh108, Lloh109
	.loh AdrpLdrGot	Lloh106, Lloh107
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table5:
Lexception5:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Lfunc_begin5-Lfunc_begin5      ; >> Call Site 1 <<
	.uleb128 Ltmp202-Lfunc_begin5           ;   Call between Lfunc_begin5 and Ltmp202
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp202-Lfunc_begin5           ; >> Call Site 2 <<
	.uleb128 Ltmp205-Ltmp202                ;   Call between Ltmp202 and Ltmp205
	.uleb128 Ltmp206-Lfunc_begin5           ;     jumps to Ltmp206
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp205-Lfunc_begin5           ; >> Call Site 3 <<
	.uleb128 Ltmp207-Ltmp205                ;   Call between Ltmp205 and Ltmp207
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp207-Lfunc_begin5           ; >> Call Site 4 <<
	.uleb128 Ltmp210-Ltmp207                ;   Call between Ltmp207 and Ltmp210
	.uleb128 Ltmp211-Lfunc_begin5           ;     jumps to Ltmp211
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp210-Lfunc_begin5           ; >> Call Site 5 <<
	.uleb128 Lfunc_end5-Ltmp210             ;   Call between Ltmp210 and Lfunc_end5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end5:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.globl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
; %bb.0:
	sub	sp, sp, #112
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
Ltmp212:
	add	x0, sp, #8
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp213:
; %bb.1:
	ldrb	w8, [sp, #8]
	cmp	w8, #1
	b.ne	LBB6_10
; %bb.2:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x4, x19, x8
	ldr	x22, [x4, #40]
	ldr	w24, [x4, #8]
	ldr	w23, [x4, #144]
	cmn	w23, #1
	b.ne	LBB6_7
; %bb.3:
Ltmp215:
	add	x8, sp, #24
	mov	x25, x4
	mov	x0, x4
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp216:
; %bb.4:
Ltmp217:
Lloh112:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh113:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #24
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp218:
; %bb.5:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp219:
	mov	w1, #32                         ; =0x20
	blr	x8
Ltmp220:
; %bb.6:
	mov	x23, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	mov	x4, x25
	str	w23, [x25, #144]
LBB6_7:
	mov	w8, #176                        ; =0xb0
	and	w8, w24, w8
	add	x3, x20, x21
	cmp	w8, #32
	csel	x2, x3, x20, eq
Ltmp222:
	sxtb	w5, w23
	mov	x0, x22
	mov	x1, x20
	bl	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp223:
; %bb.8:
	cbnz	x0, LBB6_10
; %bb.9:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	mov	w9, #5                          ; =0x5
Ltmp225:
	orr	w1, w8, w9
	bl	__ZNSt3__18ios_base5clearEj
Ltmp226:
LBB6_10:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB6_11:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB6_12:
Ltmp227:
	b	LBB6_15
LBB6_13:
Ltmp221:
	mov	x20, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB6_16
LBB6_14:
Ltmp224:
LBB6_15:
	mov	x20, x0
LBB6_16:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB6_18
LBB6_17:
Ltmp214:
	mov	x20, x0
LBB6_18:
	mov	x0, x20
	bl	___cxa_begin_catch
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
Ltmp228:
	add	x0, x19, x8
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp229:
; %bb.19:
	bl	___cxa_end_catch
	b	LBB6_11
LBB6_20:
Ltmp230:
	mov	x19, x0
Ltmp231:
	bl	___cxa_end_catch
Ltmp232:
; %bb.21:
	mov	x0, x19
	bl	__Unwind_Resume
LBB6_22:
Ltmp233:
	bl	___clang_call_terminate
	.loh AdrpLdrGot	Lloh112, Lloh113
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table6:
Lexception6:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end6-Lcst_begin6
Lcst_begin6:
	.uleb128 Ltmp212-Lfunc_begin6           ; >> Call Site 1 <<
	.uleb128 Ltmp213-Ltmp212                ;   Call between Ltmp212 and Ltmp213
	.uleb128 Ltmp214-Lfunc_begin6           ;     jumps to Ltmp214
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp215-Lfunc_begin6           ; >> Call Site 2 <<
	.uleb128 Ltmp216-Ltmp215                ;   Call between Ltmp215 and Ltmp216
	.uleb128 Ltmp224-Lfunc_begin6           ;     jumps to Ltmp224
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp217-Lfunc_begin6           ; >> Call Site 3 <<
	.uleb128 Ltmp220-Ltmp217                ;   Call between Ltmp217 and Ltmp220
	.uleb128 Ltmp221-Lfunc_begin6           ;     jumps to Ltmp221
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp222-Lfunc_begin6           ; >> Call Site 4 <<
	.uleb128 Ltmp223-Ltmp222                ;   Call between Ltmp222 and Ltmp223
	.uleb128 Ltmp224-Lfunc_begin6           ;     jumps to Ltmp224
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp225-Lfunc_begin6           ; >> Call Site 5 <<
	.uleb128 Ltmp226-Ltmp225                ;   Call between Ltmp225 and Ltmp226
	.uleb128 Ltmp227-Lfunc_begin6           ;     jumps to Ltmp227
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp226-Lfunc_begin6           ; >> Call Site 6 <<
	.uleb128 Ltmp228-Ltmp226                ;   Call between Ltmp226 and Ltmp228
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp228-Lfunc_begin6           ; >> Call Site 7 <<
	.uleb128 Ltmp229-Ltmp228                ;   Call between Ltmp228 and Ltmp229
	.uleb128 Ltmp230-Lfunc_begin6           ;     jumps to Ltmp230
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp229-Lfunc_begin6           ; >> Call Site 8 <<
	.uleb128 Ltmp231-Ltmp229                ;   Call between Ltmp229 and Ltmp231
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp231-Lfunc_begin6           ; >> Call Site 9 <<
	.uleb128 Ltmp232-Ltmp231                ;   Call between Ltmp231 and Ltmp232
	.uleb128 Ltmp233-Lfunc_begin6           ;     jumps to Ltmp233
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp232-Lfunc_begin6           ; >> Call Site 10 <<
	.uleb128 Lfunc_end6-Ltmp232             ;   Call between Ltmp232 and Lfunc_end6
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end6:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ; -- Begin function _ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_def_can_be_hidden	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	2
__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ; @_ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception7
; %bb.0:
	sub	sp, sp, #112
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x19, x0
	cbz	x0, LBB7_16
; %bb.1:
	mov	x24, x5
	mov	x20, x4
	mov	x22, x3
	mov	x21, x2
	ldr	x8, [x4, #24]
	sub	x9, x3, x1
	subs	x8, x8, x9
	csel	x23, x8, xzr, gt
	sub	x25, x2, x1
	cmp	x25, #1
	b.lt	LBB7_3
; %bb.2:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x2, x25
	blr	x8
	cmp	x0, x25
	b.ne	LBB7_15
LBB7_3:
	cmp	x23, #1
	b.lt	LBB7_12
; %bb.4:
	mov	x8, #9223372036854775800        ; =0x7ffffffffffffff8
	cmp	x23, x8
	b.hs	LBB7_17
; %bb.5:
	cmp	x23, #23
	b.hs	LBB7_7
; %bb.6:
	strb	w23, [sp, #31]
	add	x25, sp, #8
	b	LBB7_8
LBB7_7:
	orr	x8, x23, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x26, x9, x8, eq
	mov	x0, x26
	bl	__Znwm
	mov	x25, x0
	orr	x8, x26, #0x8000000000000000
	stp	x23, x8, [sp, #16]
	str	x0, [sp, #8]
LBB7_8:
	mov	x0, x25
	mov	x1, x24
	mov	x2, x23
	bl	_memset
	strb	wzr, [x25, x23]
	ldrsb	w8, [sp, #31]
	ldr	x9, [sp, #8]
	cmp	w8, #0
	add	x8, sp, #8
	csel	x1, x9, x8, lt
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
Ltmp234:
	mov	x0, x19
	mov	x2, x23
	blr	x8
Ltmp235:
; %bb.9:
	ldrsb	w8, [sp, #31]
	tbnz	w8, #31, LBB7_11
; %bb.10:
	cmp	x0, x23
	b.ne	LBB7_15
	b	LBB7_12
LBB7_11:
	ldr	x8, [sp, #8]
	mov	x24, x0
	mov	x0, x8
	bl	__ZdlPv
	mov	x0, x24
	cmp	x0, x23
	b.ne	LBB7_15
LBB7_12:
	sub	x22, x22, x21
	cmp	x22, #1
	b.lt	LBB7_14
; %bb.13:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x1, x21
	mov	x2, x22
	blr	x8
	cmp	x0, x22
	b.ne	LBB7_15
LBB7_14:
	str	xzr, [x20, #24]
	b	LBB7_16
LBB7_15:
	mov	x19, #0                         ; =0x0
LBB7_16:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB7_17:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
LBB7_18:
Ltmp236:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB7_20
; %bb.19:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB7_20:
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table7:
Lexception7:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end7-Lcst_begin7
Lcst_begin7:
	.uleb128 Lfunc_begin7-Lfunc_begin7      ; >> Call Site 1 <<
	.uleb128 Ltmp234-Lfunc_begin7           ;   Call between Lfunc_begin7 and Ltmp234
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp234-Lfunc_begin7           ; >> Call Site 2 <<
	.uleb128 Ltmp235-Ltmp234                ;   Call between Ltmp234 and Ltmp235
	.uleb128 Ltmp236-Lfunc_begin7           ;     jumps to Ltmp236
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp235-Lfunc_begin7           ; >> Call Site 3 <<
	.uleb128 Lfunc_end7-Ltmp235             ;   Call between Ltmp235 and Lfunc_end7
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end7:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	___clang_call_terminate ; -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_def_can_be_hidden	___clang_call_terminate
	.p2align	2
___clang_call_terminate:                ; @__clang_call_terminate
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	___cxa_begin_catch
	bl	__ZSt9terminatev
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh114:
	adrp	x0, l_.str.3@PAGE
Lloh115:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB8ne200100EPKc
	.loh AdrpAdd	Lloh114, Lloh115
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__120__throw_length_errorB8ne200100EPKc ; -- Begin function _ZNSt3__120__throw_length_errorB8ne200100EPKc
	.globl	__ZNSt3__120__throw_length_errorB8ne200100EPKc
	.weak_def_can_be_hidden	__ZNSt3__120__throw_length_errorB8ne200100EPKc
	.p2align	2
__ZNSt3__120__throw_length_errorB8ne200100EPKc: ; @_ZNSt3__120__throw_length_errorB8ne200100EPKc
Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception8
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x20, x0
	mov	w0, #16                         ; =0x10
	bl	___cxa_allocate_exception
	mov	x19, x0
Ltmp237:
	mov	x1, x20
	bl	__ZNSt12length_errorC1B8ne200100EPKc
Ltmp238:
; %bb.1:
Lloh116:
	adrp	x1, __ZTISt12length_error@GOTPAGE
Lloh117:
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
Lloh118:
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
Lloh119:
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB10_2:
Ltmp239:
	mov	x20, x0
	mov	x0, x19
	bl	___cxa_free_exception
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh118, Lloh119
	.loh AdrpLdrGot	Lloh116, Lloh117
Lfunc_end8:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table10:
Lexception8:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end8-Lcst_begin8
Lcst_begin8:
	.uleb128 Lfunc_begin8-Lfunc_begin8      ; >> Call Site 1 <<
	.uleb128 Ltmp237-Lfunc_begin8           ;   Call between Lfunc_begin8 and Ltmp237
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp237-Lfunc_begin8           ; >> Call Site 2 <<
	.uleb128 Ltmp238-Ltmp237                ;   Call between Ltmp237 and Ltmp238
	.uleb128 Ltmp239-Lfunc_begin8           ;     jumps to Ltmp239
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp238-Lfunc_begin8           ; >> Call Site 3 <<
	.uleb128 Lfunc_end8-Ltmp238             ;   Call between Ltmp238 and Lfunc_end8
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end8:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt12length_errorC1B8ne200100EPKc ; -- Begin function _ZNSt12length_errorC1B8ne200100EPKc
	.globl	__ZNSt12length_errorC1B8ne200100EPKc
	.weak_def_can_be_hidden	__ZNSt12length_errorC1B8ne200100EPKc
	.p2align	2
__ZNSt12length_errorC1B8ne200100EPKc:   ; @_ZNSt12length_errorC1B8ne200100EPKc
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt11logic_errorC2EPKc
Lloh120:
	adrp	x8, __ZTVSt12length_error@GOTPAGE
Lloh121:
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh120, Lloh121
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Size of the stack: "

l_.str.1:                               ; @.str.1
	.asciz	"Is the stack empty?: "

l_.str.2:                               ; @.str.2
	.asciz	"Peek: "

l_.str.3:                               ; @.str.3
	.asciz	"basic_string"

l_.str.4:                               ; @.str.4
	.asciz	"Stack from top to bottom: "

l_.str.5:                               ; @.str.5
	.asciz	"Popped: "

l_.str.6:                               ; @.str.6
	.asciz	"("

l_.str.7:                               ; @.str.7
	.asciz	", "

l_.str.8:                               ; @.str.8
	.asciz	")"

.subsections_via_symbols
