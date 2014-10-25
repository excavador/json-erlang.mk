PROJECT = qlp

#ERLC_OPTS = -Werror +debug_info +warn_export_all +warn_export_vars +owarn_shadow_vars +warn_obsolete_guard +'{parse_transform, lager_transform}'

#ERLC_OPTS = +debug_info +warn_export_all +warn_export_vars +owarn_shadow_vars +warn_obsolete_guard +'{parse_transform, lager_transform}'
ERLC_OPTS = +'{parse_transform, lager_transform}'

DEPS = lager cowboy sync mimetypes jsx jsxn
dep_lager     = git https://github.com/zamotivator/lager     master
dep_cowboy    = git https://github.com/ninenines/cowboy      1.0.x
dep_sync      = git https://github.com/rustyio/sync.git      master
dep_mimetypes = git https://github.com/zamotivator/mimetypes patch-1
dep_jsx       = git https://github.com/talentdeficit/jsx
dep_jsxn      = git https://github.com/talentdeficit/jsxn     master

include erlang.mk
