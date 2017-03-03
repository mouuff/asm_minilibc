/*
** test.c for hue in /home/arnaud.alies
** 
** Made by arnaud.alies
** Login   <arnaud.alies@epitech.eu>
** 
** Started on  Wed Jan 25 10:29:04 2017 arnaud.alies
** Last update Fri Mar  3 12:51:35 2017 arnaud.alies
*/

#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <string.h>

size_t strlen(const char *s);
char *rindex(const char *s, int c);
void *memset(void *s, int c, size_t n);
int strcmp(const char *s1, const char *s2);
int strcasecmp(const char *s1, const char *s2);
char *strchr(const char *s, int c);

int main()
{
  char *lol;
  char *me = malloc(15);
  
  lol = "huehuEze";
  printf("strlen : %ld\n", strlen(lol));
  printf("rindex z : %p %p\n", rindex(lol, 'z'), rindex(lol, 'a'));
  
  memset(me, 'c', 15);
  memset(me, 'b', 14);
  memset(me, 'a', 1);
  for (int x = 0; x < 15; x += 1)
    {
      printf("%c", me[x]);
    }
  char *popo;
  char *zero = strdup("");
  char *huehue = strdup("");
  popo = "";
  printf("\n");
  printf("cmp: %d\t%d\t%d\t%d\t%d\n",
	 strcmp("huehuez", lol),
	 strcmp(popo, "hue"),
	 strcmp("huehueze", lol),
	 strcmp("h", zero),
	 strcmp(huehue, zero));
  printf("cmp: %d\t%d\t%d\t%d\t%d\n",
	 strcasecmp("AuZhuez", lol),
	 strcasecmp(popo, "hue"),
	 strcasecmp("hhueze", lol),
	 strcasecmp("A", zero),
	 strcasecmp(huehue, zero));
  //printf("%s\n", lol);
  printf("strchr z : %p %p %p %p\n",
	 strchr(lol, 'z'),
	 strchr(lol, 'a'),
	 strchr(popo, 'o'),
	 strchr(lol, 'h'));
}
