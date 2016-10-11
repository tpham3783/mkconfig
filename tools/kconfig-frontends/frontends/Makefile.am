if COND_kconfig
    MAYBE_kconfig = kconfig
endif
if COND_conf
    MAYBE_conf = conf
endif
if COND_mconf
    MAYBE_mconf = mconf
endif
if COND_nconf
    MAYBE_nconf = nconf
endif
if COND_gconf
    MAYBE_gconf = gconf
endif
if COND_qconf
    MAYBE_qconf = qconf
endif
SUBDIRS = $(MAYBE_conf) $(MAYBE_mconf) $(MAYBE_nconf) $(MAYBE_gconf) $(MAYBE_qconf)

EXTRA_DIST = kconfig.in

bin_SCRIPTS = $(MAYBE_kconfig)

kconfig: kconfig.in
	$(AM_V_GEN)$(SED) -e 's/@KCFG_LIST@/$(kcfg_list)/g'      \
	                  $< >$@
	@chmod +x $@
