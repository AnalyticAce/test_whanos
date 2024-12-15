##
## EPITECH PROJECT, 2024
## B-NWP-400-COT-4-1-myftp-rockib.kelani
## File description:
## Makefile
##

SRCS	=	app/main.c

OBJS	=	$(CLIENT_SRCS:.c=.o)

CFLAGS		= -W -Wextra -Wall -Werror -I./includes/

CC	= gcc

RM	= rm -rf

NAME	=	compiled-app

all:		$(NAME)
		@echo        "|-----------------------|"
		@echo        "|     IT\'S WORKING!    |"
		@echo        "|     ____v__   _  _    |"
		@echo        "|    | 0     |  \||/    |"
		@echo        "|    |       |__/ |     |"
		@echo        "|    ~~~~~~~~~~~~~~~    |"
		@echo        "|-----------------------|"

$(NAME): $(OBJS)
		$(CC) -o $(NAME) $(SRCS)

clean:
		$(RM) $(OBJS)

fclean:		clean
		$(RM) $(NAME)

re:		fclean all

.PHONY:		all clean fclean re
