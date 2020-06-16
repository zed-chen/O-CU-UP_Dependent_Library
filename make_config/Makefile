
G_MAKE_DIR=$(shell pwd)
G_ROOT_DIR=$(shell pwd)/..
G_COMMON_COMPILE_F   =${G_MAKE_DIR}/common_compile.mk
G_COMMON_L1_F        =${G_MAKE_DIR}/common_l1.mk
G_COMMON_OBJ_DIR_F   =${G_MAKE_DIR}/common_obj_dir.mk
G_COMPILE_CONFIG_F   =${G_MAKE_DIR}/compile_config
G_COMPILE_S_LIB_F    =${G_MAKE_DIR}/compile_s_lib.mk
G_COMPILE_D_LIB_F    =${G_MAKE_DIR}/compile_d_lib.mk
G_COMPILE_APP_F      =${G_MAKE_DIR}/compile_app.mk
G_COMPILE_CU_CONFIG_F =${G_MAKE_DIR}/compile_cu_config
G_COMPILE_DU_CONFIG_F =${G_MAKE_DIR}/compile_du_config
G_COMPILE_CUCP_CONFIG_F =${G_MAKE_DIR}/compile_cucp_config
G_COMPILE_CUUP_CONFIG_F =${G_MAKE_DIR}/compile_cuup_config


G_TARGET_DIR=${G_ROOT_DIR}/target
G_OBJS_DIR=${G_TARGET_DIR}
G_DEPS_DIR=${G_TARGET_DIR}

export G_ROOT_DIR
export G_MAKE_DIR
export G_COMMON_COMPILE_F
export G_COMMON_L1_F
export G_COMMON_OBJ_DIR_F
export G_COMPILE_S_LIB_F
export G_COMPILE_D_LIB_F
export G_COMPILE_APP_F
export G_TARGET_DIR
export G_OBJS_DIR
export G_DEPS_DIR
export G_COMPILE_CU_CONFIG_F
export G_COMPILE_DU_CONFIG_F
export G_COMPILE_CUCP_CONFIG_F
export G_COMPILE_DUUP_CONFIG_F
export G_QUIET=@
export G_QUIET2=1

include ${G_COMPILE_CONFIG_F}



CuUpApp:Cu  
	${MAKE} -C ${G_ROOT_DIR}/Cu/CuUpApp

Cu:
	${MAKE} -C ${G_ROOT_DIR}/Cu

Cu_clean:
	${MAKE} -C ${G_ROOT_DIR}/Cu clean


clean: Cu_clean    
	@echo clean all
	${RM} ${G_TARGET_DIR}

test:
	@echo CC:${CC}  MAKE:${MAKE}  RM:${RM}  ROOT_DIR:${G_ROOT_DIR}  TTTT:${TTTT}

