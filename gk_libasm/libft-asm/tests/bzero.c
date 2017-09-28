#include <unistd.h>
#include <stdlib.h>

int main(void)
{
	char *data = malloc(42);
	for (int i=0; i<42;i++)
		data[i] = 'd';
	data[42] = 0;
	write(1, "First: ", 7);
	write(1, data, 42);
	write(1, "\n", 1);

	ft_bzero(data, 42);

	write(1, "Second: ", 8);
	write(1, data, 42);
	write(1, "\n", 1);

	free(data);
	return 0;
}
