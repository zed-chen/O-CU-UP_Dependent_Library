
VPATH = $(dir $(M_SOURCES))	
M_OBJS    = $(addprefix $(M_OBJS_DIR)/,$(patsubst %.c,%.o, $(notdir $(M_SOURCES))))
M_DEPS    = $(addprefix $(M_DEPS_DIR)/,$(patsubst %.c,%.d, $(notdir $(M_SOURCES))))

all:$(M_TARGET)

$(M_TARGET):$(M_OBJS)
	${G_QUIET$}$(AR) rcs $@ $(M_OBJS)


