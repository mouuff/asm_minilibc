##
## Makefile for hue in /home/arnaud.alies/rendu/asm_minilibc
## 
## Made by arnaud.alies
## Login   <arnaud.alies@epitech.eu>
## 
## Started on  Wed Mar  1 10:57:37 2017 arnaud.alies
## Last update Wed Mar  1 11:03:54 2017 arnaud.alies
##

NAME	=	libasm.so

all:
	nasm -felf64 src/strlen.s && cc src/strlen.o test.c && ./a.out
