
$(M_OBJS_DIR)/%.o:%.c
	@if [ $(G_QUIET2) == 0 ];then echo "Compiling $@";fi;
	@if [ ! -d $(M_OBJS_DIR) ];then mkdir -p $(M_OBJS_DIR);fi;
	${G_QUIET}$(CC) -c $< -o $@  $(CFLAGS)

$(M_DEPS_DIR)/%.d:%.c
	@if [ ! -d $(M_DEPS_DIR) ];then mkdir -p $(M_DEPS_DIR);fi;\
	set -e;$(RM) $@; 
	@if [ $(G_QUIET2) == 0 ];then echo "Create $@";fi;
	${G_QUIET}$(CC) -MM $(DFLAGS) $< > $@.dep; 
	@sed 's,\($*\)\.o[ :]*,$(M_OBJS_DIR)/\1.o $@ :,g' < $@.dep > $@; \
	$(RM) $@.dep 


clean:
	${RM} ${M_OBJS} ${M_DEPS} ${M_TARGET} ${M_DEPS_DIR} ${M_OBJS_DIR} $(dir ${M_OBJS_DIR})