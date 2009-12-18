# CVC4_AC_INIT
# ------------
# Do early initialization/diversion of autoconf things for CVC4 build process.
AC_DEFUN([CVC4_AC_INIT],
[CVC4_REWRITE_ARGS_FOR_BUILD_PROFILE
])# CVC4_AC_INIT


# CVC4_REWRITE_ARGS_FOR_BUILD_PROFILE
# -----------------------------------
# Rewrite (e.g.) "./configure debug" to "./configure --with-build=debug"
AC_DEFUN([CVC4_REWRITE_ARGS_FOR_BUILD_PROFILE],
[m4_divert_push([PARSE_ARGS])dnl

unset ac_cvc4_rewritten_args
for ac_option
do
  case $ac_option in
    -*|*=*) ;;
    *) ac_cvc4_build_profile_set=yes
       AC_MSG_NOTICE([CVC4: building profile $ac_option])
       ac_option="--with-build=$ac_option" ;;
  esac
  eval 'ac_cvc4_rewritten_args="${ac_cvc4_rewritten_args+$ac_cvc4_rewritten_args }\"$ac_option\""'
done
eval set x $ac_cvc4_rewritten_args
shift
dnl echo "args are now:" "${@}"
m4_divert_pop([PARSE_ARGS])dnl
])# CVC4_REWRITE_ARGS_FOR_BUILD_PROFILE