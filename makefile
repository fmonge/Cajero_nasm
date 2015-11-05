#programa para ensamblar
ASSEMBLER = nasm
# programa para enlazar
LINKER = ld
# banderas
FORMAT = elf_i386
CODE = cajero.asm
OBJECT = cajero.o
EXECUTABLE = cajero
LIST = cajero.lst


#	nasm -f elf -l to.lst cajero.asm
#	ld -m elf_i386 cajero.o -o cajero

$(EXECUTABLE):$(OBJECT)
	$(LINKER) -m $(FORMAT) $(OBJECT) -o $(EXECUTABLE)

$(OBJECT):$(CODE)
	$(ASSEMBLER) -f elf -l $(LIST) $(CODE) 

clear:
	rm -f $(OBJECT) $(LIST) $(EXECUTABLE)
