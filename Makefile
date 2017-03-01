##
## Makefile for hue in /home/arnaud.alies/rendu/asm_minilibc
## 
## Made by arnaud.alies
## Login   <arnaud.alies@epitech.eu>
## 
## Started on  Wed Mar  1 10:57:37 2017 arnaud.alies
## Last update Wed Mar  1 11:20:08 2017 arnaud.alies
##

NAME	=	libasm.so

NASM	=	nasm

LD	=	ld

RM	=	rm -f

SRC	=	./src/

SRCS	=	$(SRC)strlen.s

OBJS	=	$(SRCS:.s=.o)

%.o :	%.s
	$(NASM) -f elf64 $< -o $@

all:	$(OBJS)
	$(LD) -shared -fPIC -o $(NAME) $(OBJS)

clean:
	$(RM) $(OBJS)

fclean:	clean
	$(RM) $(NAME)

re:	fclean all

.PHONY: all clean fclean re

#nasm -felf64 src/strlen.s && cc src/strlen.o test.c && ./a.out
