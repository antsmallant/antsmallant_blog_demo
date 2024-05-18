	.file	"abc.cpp"
	.text
	.local	std::__ioinit
	.comm	std::__ioinit,1,1
	.section	.rodata
.LC0:
	.string	"c0 c0f1"
	.section	.text._ZN2C04c0f1Ev,"axG",@progbits,C0::c0f1(),comdat
	.align 2
	.weak	C0::c0f1()
	.type	C0::c0f1(), @function
C0::c0f1():
.LFB1731:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	std::cout(%rip), %rax
	movq	%rax, %rdi
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)@PLT
	movq	std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&)@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1731:
	.size	C0::c0f1(), .-C0::c0f1()
	.section	.rodata
.LC1:
	.string	"c0 c0f2"
	.section	.text._ZN2C04c0f2Ev,"axG",@progbits,C0::c0f2(),comdat
	.align 2
	.weak	C0::c0f2()
	.type	C0::c0f2(), @function
C0::c0f2():
.LFB1732:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	std::cout(%rip), %rax
	movq	%rax, %rdi
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)@PLT
	movq	std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&)@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1732:
	.size	C0::c0f2(), .-C0::c0f2()
	.text
	.globl	test1()
	.type	test1(), @function
test1():
.LFB1733:
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
	leaq	16+vtable for C0(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	$10, -24(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	C0::c0f1()
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L4
	call	__stack_chk_fail@PLT
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1733:
	.size	test1(), .-test1()
	.globl	main
	.type	main, @function
main:
.LFB1737:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	test1()
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1737:
	.size	main, .-main
	.weak	vtable for C0
	.section	.data.rel.ro.local._ZTV2C0,"awG",@progbits,vtable for C0,comdat
	.align 8
	.type	vtable for C0, @object
	.size	vtable for C0, 24
vtable for C0:
	.quad	0
	.quad	typeinfo for C0
	.quad	C0::c0f2()
	.weak	typeinfo for C0
	.section	.data.rel.ro._ZTI2C0,"awG",@progbits,typeinfo for C0,comdat
	.align 8
	.type	typeinfo for C0, @object
	.size	typeinfo for C0, 16
typeinfo for C0:
	.quad	vtable for __cxxabiv1::__class_type_info+16
	.quad	typeinfo name for C0
	.weak	typeinfo name for C0
	.section	.rodata._ZTS2C0,"aG",@progbits,typeinfo name for C0,comdat
	.type	typeinfo name for C0, @object
	.size	typeinfo name for C0, 4
typeinfo name for C0:
	.string	"2C0"
	.text
	.type	__static_initialization_and_destruction_0(int, int), @function
__static_initialization_and_destruction_0(int, int):
.LFB2240:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L9
	cmpl	$65535, -8(%rbp)
	jne	.L9
	leaq	std::__ioinit(%rip), %rax
	movq	%rax, %rdi
	call	std::ios_base::Init::Init()@PLT
	leaq	__dso_handle(%rip), %rax
	movq	%rax, %rdx
	leaq	std::__ioinit(%rip), %rax
	movq	%rax, %rsi
	movq	std::ios_base::Init::~Init()@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L9:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2240:
	.size	__static_initialization_and_destruction_0(int, int), .-__static_initialization_and_destruction_0(int, int)
	.type	_GLOBAL__sub_I__Z5test1v, @function
_GLOBAL__sub_I__Z5test1v:
.LFB2241:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	__static_initialization_and_destruction_0(int, int)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2241:
	.size	_GLOBAL__sub_I__Z5test1v, .-_GLOBAL__sub_I__Z5test1v
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z5test1v
	.hidden	__dso_handle
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
