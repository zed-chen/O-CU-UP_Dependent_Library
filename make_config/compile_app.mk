
VPATH = $(dir $(M_SOURCES))	
M_OBJS    = $(addprefix $(M_OBJS_DIR)/,$(patsubst %.c,%.o, $(notdir $(M_SOURCES))))
M_DEPS    = $(addprefix $(M_DEPS_DIR)/,$(patsubst %.c,%.d, $(notdir $(M_SOURCES))))


all:$(M_TARGET)

$(M_TARGET):$(M_OBJS) ${M_S_LIBS}
	${G_QUIET$}$(CC) ${CFLAGS} -o  $@ $(M_OBJS) $(M_CUUP_LIB) ${M_S_LIBS} $(M_CUUP_LIB) ${M_S_LIBS} ${M_D_LIBS}  $(M_ASN_LIB) 
	@if [ $$? != 0 ];then \
	@echo "******************* make:"$(notdir $@)" ERROR *******************";exit 1;\
	fi;
	@echo "******************* make:"$(notdir $@)" OK *******************";



