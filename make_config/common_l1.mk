

M_MOD_ROOT_DIR=$(shell pwd)
__src_root_dir__=$(dir ${G_MAKE_DIR})
M_MOD_DIR_RELATIVE=$(subst ${__src_root_dir__},,${M_MOD_ROOT_DIR})

all:
	@echo in mode a CC:${CC}  MAKE:${MAKE}  RM:${RM}  ROOT_DIR:${G_ROOT_DIR} TTTT:${TTTT}
ifeq ($(sub)x,x)
		
		@for dir in ${M_SUB_DIRS} ; do \
		echo "******************* compile:"$$dir" start *******************";\
		make -C ${M_MOD_ROOT_DIR}/$$dir; \
		if [ "$$?" != "0" ]; \
		then \
			echo "******************* compile:"$$dir" ERROR *******************";\
			exit 1;\
		fi;\
		echo "******************* compile:"$$dir" OK *******************";\
		done
else
		@echo "******************* compile:"${sub}" start *******************";
		@make -C ${M_MOD_ROOT_DIR}/${sub};
		@if [ "$$?" != "0" ]; \
		then \
			echo "******************* compile:"${sub}" ERROR *******************";\
			exit 1;\
		fi;
		@echo "******************* compile:"${sub}" OK *******************";
endif

clean:
	@echo in mode a CC:${CC}  MAKE:${MAKE}  RM:${RM}  ROOT_DIR:${G_ROOT_DIR} TTTT:${TTTT}
ifeq ($(sub)x,x)
		@echo "******************* clean:all *******************"
		@echo "******************* clean:"${M_SUB_DIRS}" *******************"
		@for dir in ${M_SUB_DIRS} ; do make -C ${M_MOD_ROOT_DIR}/$$dir clean;done
		${RM} ${G_TARGET_DIR}/${M_MOD_DIR_RELATIVE}
else
		@echo "******************* clean: "$(sub)" *******************"
		@make -C ${M_MOD_ROOT_DIR}/${sub} clean
endif
	

