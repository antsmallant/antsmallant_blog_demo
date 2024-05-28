	.file	"pthread_mutex.cpp"
	.text
	.globl	g_data
	.bss
	.align 4
	.type	g_data, @object
	.size	g_data, 4
g_data:
	.zero	4
	.globl	mutex
	.align 32
	.type	mutex, @object
	.size	mutex, 40
mutex:
	.zero	40
	.text
	.globl	func1(void*)
	.type	func1(void*), @function
func1(void*):
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	mutex(%rip), %rax
	movq	%rax, %rdi
	call	pthread_mutex_lock@PLT
	movl	$1, g_data(%rip)
	leaq	mutex(%rip), %rax
	movq	%rax, %rdi
	call	pthread_mutex_unlock@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	func1(void*), .-func1(void*)
	.globl	func2(void*)
	.type	func2(void*), @function
func2(void*):
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	mutex(%rip), %rax
	movq	%rax, %rdi
	call	pthread_mutex_lock@PLT
	movl	$2, g_data(%rip)
	leaq	mutex(%rip), %rax
	movq	%rax, %rdi
	call	pthread_mutex_unlock@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	func2(void*), .-func2(void*)
	.section	.rodata
.LC0:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$100, -28(%rbp)
	movl	$0, %esi
	leaq	mutex(%rip), %rax
	movq	%rax, %rdi
	call	pthread_mutex_init@PLT
	leaq	-28(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rcx
	leaq	func1(void*)(%rip), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_create@PLT
	leaq	-28(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rcx
	leaq	func2(void*)(%rip), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_create@PLT
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_join@PLT
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_join@PLT
	movl	g_data(%rip), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	mutex(%rip), %rax
	movq	%rax, %rdi
	call	pthread_mutex_destroy@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
