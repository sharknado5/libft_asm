#include <string.h>
#include <stdio.h>

int main(void)
{
	char welcome[55] = "Hello there ";
	char name[6] = "Gontse"; 
	ft_strcat(welcome, name);
	puts(welcome);
	return 0;
}
