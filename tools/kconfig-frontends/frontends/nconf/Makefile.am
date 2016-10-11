bin_PROGRAMS = kconfig-nconf

kconfig_nconf_SOURCES = nconf.c nconf.gui.c nconf.h
kconfig_nconf_CPPFLAGS = $(AM_CPPFLAGS)             \
                         $(intl_CPPFLAGS)           \
                         $(ncurses_nconf_CPPFLAGS)  \
                         -I$(top_srcdir)/libs/parser
kconfig_nconf_CFLAGS = $(AM_CFLAGS) \
                       $(kf_CFLAGS)
kconfig_nconf_LDADD = $(top_builddir)/libs/parser/libkconfig-parser.la          \
                      $(intl_LIBS) $(ncurses_panel_menu_LIBS) $(ncurses_LIBS)   \
                      $(nconf_EXTRA_LIBS)
