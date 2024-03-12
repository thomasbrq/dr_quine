SRCS_COLLEEN		= 	C/Colleen/Colleen.c
OBJS_COLLEEN		=	$(SRCS_COLLEEN:.c=.o)

SRCS_GRACE			= 	C/Grace/Grace.c
OBJS_GRACE			=	$(SRCS_GRACE:.c=.o)

SRCS_SULLY			= 	C/Sully/Sully.c
OBJS_SULLY			=	$(SRCS_SULLY:.c=.o)

GCC					=	gcc

RM					=	rm -f

FLAGS				=	-Wall -Wextra -Werror

COLLEEN_PROGRAM		= 	Colleen
GRACE_PROGRAM		= 	Grace
SULLY_PROGRAM		= 	Sully

.c.o:
		@$(GCC) $(FLAGS) -c -I./includes $< -o ${<:.c=.o}

$(COLLEEN_PROGRAM):	$(OBJS_COLLEEN) $(OBJS_GRACE) $(OBJS_SULLY)
				@$(GCC) $(FLAGS) $(OBJS_COLLEEN) -o $(COLLEEN_PROGRAM)
				@echo '\033[1;97mColleen created!';
				@$(GCC) $(FLAGS) $(OBJS_GRACE) -o $(GRACE_PROGRAM)
				@echo '\033[1;97mGrace created!';
				@$(GCC) $(FLAGS) $(OBJS_SULLY) -o $(SULLY_PROGRAM)
				@echo '\033[1;97mSully created!';

all:		$(COLLEEN_PROGRAM)

clean:
			@$(RM) $(OBJS_GRACE)
			@$(RM) $(OBJS_COLLEEN)
			@$(RM) $(OBJS_SULLY)

fclean:		clean
			@$(RM) $(COLLEEN_PROGRAM) $(GRACE_PROGRAM) $(SULLY_PROGRAM)

re:			fclean all

.PHONY:		all clean fclean re