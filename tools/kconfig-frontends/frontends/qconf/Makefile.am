bin_PROGRAMS = kconfig-qconf

kconfig_qconf_SOURCES = qconf.cc qconf.h
BUILT_SOURCES = qconf.moc
kconfig_qconf_CPPFLAGS = $(AM_CPPFLAGS)                 \
                         $(intl_CPPFLAGS)               \
                         -I$(top_srcdir)/libs/parser    \
                         -I$(top_builddir)/libs/images
kconfig_qconf_CXXFLAGS = $(AM_CXXFLAGS) \
                         $(kf_CFLAGS)   \
                         $(Qt5_CFLAGS)  \
                         -fPIC
kconfig_qconf_LDADD = $(top_builddir)/libs/parser/libkconfig-parser.la  \
                      $(top_builddir)/libs/images/libkconfig-images.a   \
                      $(intl_LIBS) $(Qt5_LIBS) $(qconf_EXTRA_LIBS)
CLEANFILES = qconf.moc
EXTRA_DIST = qconf.cc.patch

AM_V_MOC = $(AM_V_MOC_$(V))
AM_V_MOC_ = $(AM_V_MOC_$(AM_DEFAULT_VERBOSITY))
AM_V_MOC_0 = @echo "  MOC     " $@;

.h.moc:
	$(AM_V_MOC)$(MOC) -i $< -o $@
