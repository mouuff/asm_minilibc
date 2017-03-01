/*
** test.c for hue in /home/arnaud.alies
** 
** Made by arnaud.alies
** Login   <arnaud.alies@epitech.eu>
** 
** Started on  Wed Jan 25 10:29:04 2017 arnaud.alies
** Last update Wed Mar  1 19:26:55 2017 arnaud.alies
*/

#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>

size_t strlen(const char *s);
char *rindex(const char *s, int c);
void *memset(void *s, int c, size_t n);

int main()
{
  char *lol;
  char *me = malloc(10);
  
  lol = "huehueze";
  printf("strlen : %ld\n", strlen(lol));
  printf("rindex z : %p\n", rindex(lol, 'z'));
  memset(me, 'a', 10);
  for (int x = 0; x < 10; x += 1)
    {
      printf("%c", me[x]);
    }
  printf("\n");
}
