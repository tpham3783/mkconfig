bin_SCRIPTS = kconfig-tweak
dist_bin_SCRIPTS = kconfig-diff kconfig-merge

if COND_utils_gettext
    MAYBE_utils_gettext = kconfig-gettext
endif
bin_PROGRAMS = $(MAYBE_utils_gettext)

kconfig_gettext_SOURCES = gettext.c
kconfig_gettext_CPPFLAGS = $(AM_CPPFLAGS)   \
                           -I$(top_srcdir)/libs/parser
kconfig_gettext_CFLAGS = $(AM_CFLAGS) $(kf_CFLAGS)
kconfig_gettext_LDADD = $(top_builddir)/libs/parser/libkconfig-parser.la    \
                        $(intl_LIBS)
CLEANFILES = kconfig-tweak
EXTRA_DIST = kconfig-tweak.in kconfig-tweak.in.patch

kconfig-tweak: kconfig-tweak.in
	$(AM_V_GEN)$(SED) -e "s/@CONFIG_@/$(config_prefix)/g"    \
	                  $< >$@
	@chmod +x $@
