#ifndef LIBFTS_H
# define LIBFTS_H

#include <unistd.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

void	ft_bzero(void *s, size_t n);
void    *ft_memset(void *b, int c, size_t n);

char    *ft_strcat(char *s1, const char *s2);
void    ft_puts(char *str);
int     ft_strlen(char *str);

int     ft_isalpha(int c);
int     ft_isdigit(int c);
int     ft_isalnum(int c);
int     ft_isascii(int c);
int     ft_isprint(int c);
int     ft_toupper(int c);
int     ft_tolower(int c);
char    *ft_strdup(char *str);
// void    ft_putc(char c);

#endif
