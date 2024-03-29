# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: maearly <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/06/11 16:34:47 by maearly           #+#    #+#              #
#    Updated: 2021/06/11 16:34:51 by maearly          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

LIST =					ft_bzero.c \
                		ft_memset.c \
                		ft_memcpy.c \
                		ft_memccpy.c \
                		ft_memmove.c \
                		ft_memchr.c \
                		ft_memcmp.c \
                		ft_strlen.c \
                		ft_strlcpy.c \
                		ft_strlcat.c \
                		ft_strchr.c \
                		ft_strrchr.c \
                		ft_strnstr.c \
                		ft_strncmp.c \
                		ft_atoi.c \
                		ft_isalpha.c \
                		ft_isdigit.c \
                		ft_isalnum.c \
                		ft_isascii.c \
                		ft_isprint.c \
                		ft_toupper.c \
                		ft_tolower.c \
                		ft_calloc.c \
                		ft_strdup.c \
                		ft_substr.c \
                		ft_strjoin.c \
                		ft_strtrim.c \
                		ft_split.c \
                		ft_itoa.c \
                		ft_strmapi.c \
                		ft_putchar_fd.c \
                		ft_putstr_fd.c \
                		ft_putendl_fd.c \
                		ft_putnbr_fd.c \
                		ft_lstnew.c \
                        ft_lstadd_front.c \
                   		ft_lstsize.c \
			     		ft_lstlast.c \
	            		ft_lstadd_back.c \
                		ft_lstdelone.c \
						ft_lstclear.c \
                   		ft_lstiter.c \
                  		ft_lstmap.c

OBJ = $(patsubst %.c,%.o,$(LIST))

D_FILES = $(patsubst %.c,%.d,$(LIST))

OTPFLAGS = -O2
FLAGS = -Wall -Wextra -Werror

all :	$(NAME)

$(NAME) : $(OBJ)
	ar rcs $(NAME) $?

%.o : %.c
	gcc $(FLAGS) $(OPTFLAGS) -c $< -o $@ -MD

include $(wildcard $(D_FILES))

clean :
	rm -f $(OBJ) $(D_FILES)

fclean : clean
	rm -f $(NAME)

re : fclean all

.PHONY : all clean fclean re
