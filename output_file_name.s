	.file	"sort.c"
	.intel_syntax noprefix
	.text
	.globl	sort
	.def	sort;	.scl	2;	.type	32;	.endef
	.seh_proc	sort
sort:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	QWORD PTR 24[rbp], rdx
	mov	eax, DWORD PTR 16[rbp]
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -16[rbp], rdx
	mov	DWORD PTR -4[rbp], 1
	jmp	.L2
.L6:
	mov	edx, DWORD PTR -4[rbp]
	movsx	rcx, edx
	movsx	rdx, eax
	imul	rdx, rcx
	lea	rcx, 0[0+rdx*4]
	mov	rdx, QWORD PTR 24[rbp]
	add	rcx, rdx
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	mov	edx, DWORD PTR [rcx+rdx*4]
	mov	DWORD PTR -20[rbp], edx
	mov	edx, DWORD PTR -4[rbp]
	sub	edx, 1
	mov	DWORD PTR -8[rbp], edx
	jmp	.L3
.L5:
	mov	edx, DWORD PTR -8[rbp]
	movsx	rcx, edx
	movsx	rdx, eax
	imul	rdx, rcx
	lea	rcx, 0[0+rdx*4]
	mov	rdx, QWORD PTR 24[rbp]
	lea	r9, [rcx+rdx]
	mov	edx, DWORD PTR -8[rbp]
	add	edx, 1
	movsx	rcx, edx
	movsx	rdx, eax
	imul	rdx, rcx
	lea	rcx, 0[0+rdx*4]
	mov	rdx, QWORD PTR 24[rbp]
	lea	r8, [rcx+rdx]
	mov	edx, DWORD PTR -8[rbp]
	lea	r10d, 1[rdx]
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	mov	ecx, DWORD PTR [r9+rdx*4]
	movsx	rdx, r10d
	mov	DWORD PTR [r8+rdx*4], ecx
	sub	DWORD PTR -8[rbp], 1
.L3:
	cmp	DWORD PTR -8[rbp], 0
	js	.L4
	mov	edx, DWORD PTR -8[rbp]
	movsx	rcx, edx
	movsx	rdx, eax
	imul	rdx, rcx
	lea	rcx, 0[0+rdx*4]
	mov	rdx, QWORD PTR 24[rbp]
	add	rcx, rdx
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	mov	edx, DWORD PTR [rcx+rdx*4]
	cmp	DWORD PTR -20[rbp], edx
	jl	.L5
.L4:
	mov	edx, DWORD PTR -8[rbp]
	add	edx, 1
	movsx	rcx, edx
	movsx	rdx, eax
	imul	rdx, rcx
	lea	rcx, 0[0+rdx*4]
	mov	rdx, QWORD PTR 24[rbp]
	lea	r8, [rcx+rdx]
	mov	edx, DWORD PTR -8[rbp]
	add	edx, 1
	movsx	rdx, edx
	mov	ecx, DWORD PTR -20[rbp]
	mov	DWORD PTR [r8+rdx*4], ecx
	add	DWORD PTR -4[rbp], 1
.L2:
	mov	edx, DWORD PTR -4[rbp]
	cmp	edx, DWORD PTR 16[rbp]
	jl	.L6
	nop
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.ident	"GCC: (Rev8, Built by MSYS2 project) 15.2.0"
