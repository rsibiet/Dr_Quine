# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rsibiet <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/04/24 12:45:05 by rsibiet           #+#    #+#              #
#    Updated: 2017/04/24 12:48:33 by rsibiet          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME1 = Colleen
NAME2 = Grace
NAME3 = Sully

FTC1 = Colleen.c
FTC2 = Grace.c
FTC3 = Sully.c

FTO1 = $(subst .c,.o,$(FTC1))
FTO2 = $(subst .c,.o,$(FTC2))
FTO3 = $(subst .c,.o,$(FTC3))

.PHONY: all re clean fclean

all: $(NAME1) $(NAME2) $(NAME3)

$(NAME1): $(FTO1)
	@gcc -o $(NAME1) -Wall -Wextra -Werror $(FTO1)
	@echo "\033[32m• $(NAME1) created!\033[0m"

$(NAME2): $(FTO2)
	@gcc -o $(NAME2) -Wall -Wextra -Werror $(FTO2)
	@echo "\033[32m• $(NAME2) created!\033[0m"

$(NAME3): $(FTO3)
	@gcc -o $(NAME3) -Wall -Wextra -Werror $(FTO3)
	@echo "\033[32m• $(NAME3) created!\033[0m"

%.o: %.c
	@gcc -Wall -Wextra -Werror -c $<

clean:
	@rm -rf $(FTO1)
	@rm -rf $(FTO2)
	@rm -rf $(FTO3)
	@echo "\033[33m• $(NAME1), $(NAME2) and $(NAME3) objects deleted!\033[0m"

cleanColleen: 
	@rm -rf $(FTO1)
	@echo "\033[33m• $(NAME1) object deleted!\033[0m"

cleanGrace: 
	@rm -rf $(FTO2)
	@echo "\033[33m• $(NAME2) object deleted!\033[0m"

cleanSully: 
	@rm -rf $(FTO3)
	@echo "\033[33m• $(NAME3) object deleted!\033[0m"

fclean: clean
	@rm -rf $(NAME1)
	@rm -rf $(NAME2)
	@rm -rf $(NAME3)
	@echo "\033[31;1m• \033[31m$(NAME1), $(NAME2) and $(NAME3) deleted!\033[0m"

fcleanColleen: cleanColleen
	@rm -rf $(NAME1)
	@echo "\033[31;1m• \033[31m$(NAME1) deleted!\033[0m"

fcleanGrace: cleanGrace
	@rm -rf $(NAME2)
	@echo "\033[31;1m• \033[31m$(NAME2) deleted!\033[0m"

fcleanSully: cleanSully
	@rm -rf $(NAME3)
	@echo "\033[31;1m• \033[31m$(NAME3) deleted!\033[0m"

re: fclean all

reColleen: fcleanColleen $(NAME1)

reGrace: fcleanGrace $(NAME2)

reSully: fcleanSully $(NAME3)