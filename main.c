#include "libfts.h"


void    test_bzero(void)
{
    printf("ft_bzero test\n");
    
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
        printf("After test3 : |%s|\n", test3);     
}

void    test_strcat(void)
{
    
}

int     main(void)
{   
    test_bzero();
    test_strcat();

    return (0);
}