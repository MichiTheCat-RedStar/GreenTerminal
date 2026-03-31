	.file	"GreenTerminal.c"
	.text
	.def	time;	.scl	3;	.type	32;	.endef
	.seh_proc	time
time:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp__time64(%rip), %rax
	call	*%rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	ctime;	.scl	3;	.type	32;	.endef
	.seh_proc	ctime
ctime:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp__ctime64(%rip), %rax
	call	*%rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "\0"
	.align 8
.LC1:
	.ascii "GreenTerminal   -   [run time] %s(c) all rights reserved under the MIT license (MichiTheCat-RedStar on GitGub)\12\0"
.LC2:
	.ascii "\12GreenTerminal> \0"
.LC3:
	.ascii "data\0"
.LC4:
	.ascii "%s\0"
.LC5:
	.ascii "time\0"
.LC6:
	.ascii "%ld\12\0"
.LC7:
	.ascii "exit\0"
.LC8:
	.ascii "help\0"
.LC9:
	.ascii "?\0"
	.align 8
.LC10:
	.ascii "help | ? - displays all commands\12exit - terminates execution\12data - displays the date\12time - displays the time in seconds\12version - shows the version of the terminal\0"
.LC11:
	.ascii "version\0"
.LC12:
	.ascii "version = %s\12\0"
	.align 8
.LC13:
	.ascii "command: \"%s\"; char after split: %i -> %i; function: \"%s\"\12\0"
	.align 8
.LC14:
	.ascii "\"%s\" is no such command, read the documentation in README.md\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	subq	$480, %rsp
	.seh_stackalloc	480
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	call	__main
	movl	$0, %ecx
	call	time
	movq	%rax, 320(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdx
	movl	$0, %ecx
	call	setlocale
	movq	$0, 336(%rbp)
	movq	$0, 192(%rbp)
	movq	$0, 200(%rbp)
	movq	$0, 208(%rbp)
	movq	$0, 216(%rbp)
	movq	$0, 224(%rbp)
	movq	$0, 232(%rbp)
	movq	$0, 240(%rbp)
	movq	$0, 248(%rbp)
	movq	$0, 256(%rbp)
	movq	$0, 264(%rbp)
	movq	$0, 272(%rbp)
	movq	$0, 280(%rbp)
	movq	$0, 288(%rbp)
	movq	$0, 296(%rbp)
	movq	$0, 304(%rbp)
	movq	$0, 312(%rbp)
	movq	$0, 64(%rbp)
	movq	$0, 72(%rbp)
	movq	$0, 80(%rbp)
	movq	$0, 88(%rbp)
	movq	$0, 96(%rbp)
	movq	$0, 104(%rbp)
	movq	$0, 112(%rbp)
	movq	$0, 120(%rbp)
	movq	$0, 128(%rbp)
	movq	$0, 136(%rbp)
	movq	$0, 144(%rbp)
	movq	$0, 152(%rbp)
	movq	$0, 160(%rbp)
	movq	$0, 168(%rbp)
	movq	$0, 176(%rbp)
	movq	$0, 184(%rbp)
	movl	$858665078, -70(%rbp)
	movw	$100, -66(%rbp)
	leaq	320(%rbp), %rax
	movq	%rax, %rcx
	call	ctime
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rcx
	call	printf
.L22:
	leaq	.LC2(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$0, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
	movq	%rax, %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %r8
	movl	$128, %edx
	movq	%rax, %rcx
	call	fgets
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	strlen
	movq	%rax, 336(%rbp)
	cmpq	$0, 336(%rbp)
	je	.L24
	movq	336(%rbp), %rax
	subq	$1, %rax
	movzbl	-64(%rbp,%rax), %eax
	cmpb	$10, %al
	jne	.L24
	movq	336(%rbp), %rax
	subq	$1, %rax
	movb	$0, -64(%rbp,%rax)
	jmp	.L7
.L24:
	nop
.L8:
	call	getchar
	movl	%eax, 332(%rbp)
	cmpl	$10, 332(%rbp)
	je	.L7
	cmpl	$-1, 332(%rbp)
	jne	.L8
.L7:
	leaq	-64(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L9
	movl	$0, %ecx
	call	time
	movq	%rax, 320(%rbp)
	leaq	320(%rbp), %rax
	movq	%rax, %rcx
	call	ctime
	movq	%rax, %rdx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rcx
	call	printf
	jmp	.L22
.L9:
	leaq	-64(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L11
	movl	$0, %ecx
	call	time
	movq	%rax, 320(%rbp)
	movq	320(%rbp), %rax
	movl	%eax, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rcx
	call	printf
	jmp	.L22
.L11:
	leaq	-64(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L12
	movl	$0, %ecx
	call	exit
.L12:
	leaq	-64(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	je	.L13
	leaq	-64(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L14
.L13:
	leaq	.LC10(%rip), %rax
	movq	%rax, %rcx
	call	puts
	jmp	.L10
.L14:
	leaq	-64(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L15
	leaq	-70(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC12(%rip), %rax
	movq	%rax, %rcx
	call	printf
	jmp	.L22
.L15:
	movl	$0, 344(%rbp)
	leaq	192(%rbp), %rax
	movl	$128, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	leaq	64(%rbp), %rax
	movl	$128, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	movl	$0, 348(%rbp)
	jmp	.L16
.L21:
	movl	348(%rbp), %eax
	cltq
	movzbl	-64(%rbp,%rax), %eax
	cmpb	$32, %al
	jne	.L17
	movl	$0, 344(%rbp)
	leaq	64(%rbp), %rax
	movl	$128, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	jmp	.L18
.L17:
	movl	348(%rbp), %eax
	cltq
	movzbl	-64(%rbp,%rax), %eax
	testb	%al, %al
	je	.L23
	movl	348(%rbp), %eax
	cltq
	movzbl	-64(%rbp,%rax), %edx
	movl	344(%rbp), %eax
	cltq
	movb	%dl, 64(%rbp,%rax)
	movl	348(%rbp), %eax
	cltq
	movzbl	-64(%rbp,%rax), %edx
	movl	348(%rbp), %eax
	cltq
	movb	%dl, 192(%rbp,%rax)
	addl	$1, 344(%rbp)
.L18:
	addl	$1, 348(%rbp)
.L16:
	movl	348(%rbp), %eax
	cmpl	$127, %eax
	jbe	.L21
	jmp	.L20
.L23:
	nop
.L20:
	movl	344(%rbp), %r8d
	movl	348(%rbp), %ecx
	leaq	192(%rbp), %rax
	leaq	64(%rbp), %rdx
	movq	%rdx, 32(%rsp)
	movl	%r8d, %r9d
	movl	%ecx, %r8d
	movq	%rax, %rdx
	leaq	.LC13(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	-64(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC14(%rip), %rax
	movq	%rax, %rcx
	call	printf
.L10:
	jmp	.L22
	.seh_endproc
	.ident	"GCC: (MinGW-W64 x86_64-ucrt-posix-seh, built by Brecht Sanders) 13.2.0"
	.def	setlocale;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	fgets;	.scl	2;	.type	32;	.endef
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	getchar;	.scl	2;	.type	32;	.endef
	.def	strcmp;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
