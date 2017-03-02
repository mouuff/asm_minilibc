/*
** test.c for hue in /home/arnaud.alies
** 
** Made by arnaud.alies
** Login   <arnaud.alies@epitech.eu>
** 
** Started on  Wed Jan 25 10:29:04 2017 arnaud.alies
** Last update Thu Mar  2 13:48:52 2017 arnaud.alies
*/

#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>

size_t strlen(const char *s);
char *rindex(const char *s, int c);
void *memset(void *s, int c, size_t n);
int strcmp(const char *s1, const char *s2);

int main()
{
  char *lol;
  char *me = malloc(15);
  
  lol = "huehueze";
  printf("strlen : %ld\n", strlen(lol));
  printf("rindex z : %p\n", rindex(lol, 'z'));
  
  memset(me, 'c', 15);
  memset(me, 'b', 14);
  memset(me, 'a', 0);
  for (int x = 0; x < 15; x += 1)
    {
      printf("%c", me[x]);
    }
  printf("\n");
  printf("%d\n", strcmp("huehuez", lol));
}
