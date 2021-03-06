##
## Makefile for hue in /home/arnaud.alies/rendu/asm_minilibc
## 
## Made by arnaud.alies
## Login   <arnaud.alies@epitech.eu>
## 
## Started on  Wed Mar  1 10:57:37 2017 arnaud.alies
## Last update Sun Mar 26 17:05:47 2017 arnaud.alies
##

NAME	=	libasm.so

NASM	=	nasm

LD	=	ld

RM	=	rm -f

SRC	=	./src/

SRCS	=	$(SRC)strlen.s \
		$(SRC)rindex.s \
		$(SRC)memset.s \
		$(SRC)strcmp.s \
		$(SRC)strcasecmp.s \
		$(SRC)strchr.s \
		$(SRC)strcspn.s \
		$(SRC)memcpy.s \
		$(SRC)strncmp.s \
		$(SRC)memmove.s \
		$(SRC)strstr.s \
		$(SRC)strpbrk.s \
		$(SRC)write.s \
		$(SRC)read.s \
#		$(SRC)atoi.s \

OBJS	=	$(SRCS:.s=.o)

%.o :		%.s
		$(NASM) -f elf64 $< -o $@

all:		$(NAME)

$(NAME):	$(OBJS)
		$(LD) -shared -fPIC -o $(NAME) $(OBJS)

clean:
		$(RM) $(OBJS)

fclean:		clean
		$(RM) $(NAME)

re:	fclean all

#test:	re
#	cc test.c
#	LD_PRELOAD=./$(NAME) ./a.out


.PHONY: all clean fclean re #test

#nasm -felf64 src/strlen.s && cc src/strlen.o test.c && ./a.out
