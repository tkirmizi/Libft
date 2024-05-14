NAME = libft.a
SRCS = ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_strlen.c \
		ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c ft_strlcpy.c ft_strlcat.c \
		ft_toupper.c ft_tolower.c ft_strchr.c ft_strrchr.c ft_strncmp.c ft_memchr.c \
		ft_memcmp.c ft_strnstr.c ft_atoi.c ft_calloc.c ft_strdup.c ft_substr.c \
		ft_strjoin.c ft_strtrim.c ft_strmapi.c ft_striteri.c ft_putchar_fd.c \
		ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_split.c ft_itoa.c \

OBJS = $(SRCS:.c=.o)
CC = cc
CFLAGS =  -Wall -Wextra -Werror
ARFLAGS = -rcs
RM = rm -rf
all: $(NAME)
$(NAME): $(OBJS)
		ar $(ARFLAGS) $(NAME) $(OBJS)
%.o: %.c
		$(CC) $(CFLAGS) -c $< -o $@

clean:
		$(RM) $(OBJS)
fclean: clean
		$(RM) $(NAME) *.o
re: fclean all
.PHONY: all, clean, fclean, re

$(NAME), yukarıda belirtildiği gibi Makefile'ın ana kuralıdır.
 Bu kuralın bağımlılığı OBJ değişkenidir; bu, eğer bir veya daha fazla .o dosyası eksikse,
  make'in bunları oluşturmaya çalışacağı anlamına gelir (eğer bunun için bir kural varsa). )
   $(NAME) komutlarını çalıştırmadan önce. Tüm bağımlılık mevcut olduğunda, komutlar yürütülecektir. 
   Bu komut iki otomatik değişkeni alır, $^ ve $@