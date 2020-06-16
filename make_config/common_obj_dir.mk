
__src_dir__=$(shell pwd)
__root_dir__=$(dir ${G_MAKE_DIR})
__tmp_d__=$(subst ${__root_dir__},,${__src_dir__})
M_OBJS_DIR=${G_TARGET_DIR}/${__tmp_d__}/objs
M_DEPS_DIR=${G_TARGET_DIR}/${__tmp_d__}/deps

