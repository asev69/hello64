NAME=hello64

$(NAME): $(NAME).o
	ld -o $(NAME) -s $(NAME).o

$(NAME).o: $(NAME).asm
	yasm -f elf64 -o $(NAME).o $(NAME).asm

clean:
	rm $(NAME).o $(NAME)