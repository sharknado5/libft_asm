#include "libfts.h"


void    test_bzero(void)
{
    printf("\n\nFT_BZERO TEST\n\n");
    
        char test1[] = "1234567890";
        char test2[] = "";
        char test3[] = "1234567890skdhajhdfh ks dfhsjkhdf\n sdjfhaskjfh ak\n s dkjhf ksh afdkahsdf";
        
        printf("Before test1: |%s|\n", test1);
        printf("Before test2: |%s|\n", test2);
        printf("Before test3: |%s|\n", test3);
    
        ft_bzero(test1, strlen(test1));
        ft_bzero(test2, strlen(test2));
        ft_bzero(test3, strlen(test3));
    
        printf("After test1 : |%s|\n", test1);
        printf("After test2 : |%s|\n", test2);
        printf("After test3 : |%s|\n\n", test3);     
}

void    test_strcat(void)
{
    printf("FT_STRCAT TEST\n\n");

    char buf[1024];
    ft_bzero(buf, 1024);

    ft_strcat(buf, "first cat_");    
    printf("%s\n", buf);
    ft_strcat(buf, "2nd cat_");
    printf("%s\n", buf);
    ft_strcat(buf, "final cat");
    printf("%s\n\n", buf);
}

void    test_isalpha()
{
    printf("FT_ISALPHA TEST\n\n");
    char *test_alpha = "a1B2c3D4#x^Y+z!";
    printf("Original str: %s\n'1' IS alpha, '0' is NOT alpha\n", test_alpha);
    while (*test_alpha)
    {
        printf("%c = %d\n", *test_alpha, ft_isalpha(*test_alpha));
        test_alpha++;
    }
    printf("\n\n");
}

void    test_isdigit()
{
    printf("FT_ISDIGIT TEST\n\n");

    char *test_digit = "a1B2c3D4^5&6*7(8)9X0!";
    printf("Original str: %s\n'1' IS digit, '0' is NOT digit\n", test_digit);
    while (*test_digit)
    {
        printf("%c = %d\n", *test_digit, ft_isdigit(*test_digit));
        test_digit++;
    }
    printf("\n\n");
}

void    test_isalnum()
{
    printf("FT_ISALNUM TEST\n\n");

    char *test_alnum = "a1#B2$c3+D4^5&6";
    printf("Original str: %s\n'1' IS alnum, '0' is NOT alnum\n", test_alnum);
    while (*test_alnum)
    {
        printf("%c = %d\n", *test_alnum, ft_isalnum(*test_alnum));
        test_alnum++;
    }
    printf("\n\n");
}

void    test_isascii()
{
    printf("FT_ISASCII TEST\n\n");

    int c1, c2, c3, c4, c5, c6;
    c1 = 'a';
    c2 = '5';
    c3 = '&';
    c4 = 201;
    c5 = -40;
    c6 = 0;

    printf("Value: %d = %d\n", c1, ft_isascii(c1));
    printf("Value: %d = %d\n", c2, ft_isascii(c2));
    printf("Value: %d = %d\n", c3, ft_isascii(c3));
    printf("Value: %d = %d\n", c4, ft_isascii(c4));
    printf("Value: %d = %d\n", c5, ft_isascii(c5));
    printf("Value: %d = %d\n", c6, ft_isascii(c6));
    printf("\n\n");
}

void    test_isprint()
{
    int b1, b2, b3, b4, b5, b6;
    b1 = '$';
    b2 = '(';
    b3 = 'W';
    b4 = 42;
    b5 = 127;
    b6 = 0;
    printf("FT_ISPRINT TEST\n\n");
    printf("Value: %d = %d\n", b1, ft_isprint(b1));
    printf("Value: %d = %d\n", b2, ft_isprint(b2));
    printf("Value: %d = %d\n", b3, ft_isprint(b3));
    printf("Value: %d = %d\n", b4, ft_isprint(b4));
    printf("Value: %d = %d\n", b5, ft_isprint(b5));
    printf("Value: %d = %d\n", b6, ft_isprint(b6));
    printf("\n\n");
    
}

void    test_toupper()
{
    printf("FT_TOUPPER TEST\n\n");
    int i = 60;

    while (i < 128)
    {
        printf("%c toupper = %c\n", i, ft_toupper(i));
        i++;
    }
    printf("\n\n");
}

void    test_tolower()
{
    printf("FT_TOLOWER TEST\n\n");
    int i = 60;

    while (i < 128)
    {
        printf("%c tolower = %c\n", i, ft_tolower(i));
        i++;
    }
    printf("\n\n");
}

// void    test_putc()
// {
//     printf("FT_PUTC TEST\n\n");
//     ft_putc('(');
//     ft_putc('\'');
//     ft_putc('_');
//     ft_putc('\'');
//     ft_putc(')');
//     printf("\n\n");
// }

void    test_puts()
{
    write(1, "FT_PUTS TEST\n\n", ft_strlen("FT_PUTS TEST\n\n"));
    ft_puts("I used");
    ft_puts("assembly to write");
    ft_puts("a putstr().");
    ft_puts("Yipeekayayh motherfucker!");
    write(1, "\n\n", 2);
}

void    test_strlen()
{
    int len = 0;
    char lenstr[] = "0123456789";
    char lenstr2[] = "0123456789qwertyuiopasdfghjklzxcvbnm";
    char nullstr[] = "";
    printf("FT_STRLEN TEST\n\n");
    len = ft_strlen(lenstr);
    printf("str: %s | strlen of str: %d\n", lenstr, len);

    len = ft_strlen(lenstr2);
    printf("str: %s | strlen of str: %d\n", lenstr2, len);

    len = ft_strlen(nullstr);
    printf("strlen of nullstr: %d\n", len);
    
    printf("\n\n");
}

void    test_memset()
{
    printf("FT_MEMSET TEST\n\n");
    const int bufsize = 128; // removing const causes seg fault in test... wonder why?
    char buf[bufsize];
    char ms1[] = "Sannie sleep sewe sakke sout";
    int  i_memset = 0;
    
    while (i_memset < bufsize)
    {
        buf[i_memset] = 'A';
        i_memset++;
    }

    printf("str1 before memset: %s\n", buf);
    printf("str2 before memset: %s\n\n", ms1);
    // printf("str2 before memset: %s\n", memset2);
    // printf("str3 before memset: %s\n", memset3);

    ft_memset(buf, 42, bufsize);
    ft_memset(ms1, 42, 7);
    // ft_memset(memset2, 42, ft_strlen(memset2));
    // ft_memset(memset3, 42, ft_strlen(memset3));

    printf("str1 after memset : %s\n", buf);
    printf("str1 after memset : %s\n", ms1);
    // printf("str2 after memset: %s\n", memset2);
    // printf("str3 after memset: %s\n", memset3);
    printf("\n\n");
}

int     main(void)
{   
    test_bzero();
    test_strcat();
    test_isalpha();
    test_isdigit();
    test_isalnum();
    test_isascii();
    test_isprint();
    test_toupper();
    test_tolower();
    test_puts();
    test_strlen();
    test_memset();

    return (0);
}