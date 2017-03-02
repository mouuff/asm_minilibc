/*
** test.c for hue in /home/arnaud.alies
** 
** Made by arnaud.alies
** Login   <arnaud.alies@epitech.eu>
** 
** Started on  Wed Jan 25 10:29:04 2017 arnaud.alies
** Last update Thu Mar  2 15:22:40 2017 arnaud.alies
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
  memset(me, 'a', 1);
  for (int x = 0; x < 15; x += 1)
    {
      printf("%c", me[x]);
    }
  char *popo;
  popo = "";
  printf("\n");
  printf("cmp: %d\n", strcmp("huehueze", lol));
  printf("cmp: %d\t%d\n", strcmp("huehuez", lol), strcmp(popo, "hue"));
  
}
