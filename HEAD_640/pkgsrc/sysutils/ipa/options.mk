# $NetBSD: options.mk,v 1.1 2006/10/18 11:45:22 markd Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.ipa
PKG_SUPPORTED_OPTIONS=	ipa-memfunc-debug ipa-without-autorules \
			ipa-without-limits ipa-without-rules \
			ipa-without-sublimits ipa-without-thresholds

.include "../../mk/bsd.options.mk"

###
### Enable ipa_memfunc debugging
###
.if !empty(PKG_OPTIONS:Mipa-memfunc-debug)
CONFIGURE_ARGS+= --enable-memfunc-debug
.endif

###
### Disable dynamic rules support
###
.if !empty(PKG_OPTIONS:Mipa-without-autorules)
CONFIGURE_ARGS+= --disable-autorules
.endif

###
### Disable limits support
###
.if !empty(PKG_OPTIONS:Mipa-without-limits)
CONFIGURE_ARGS+= --disable-limits
.endif

###
### Disable static rules support
###
.if !empty(PKG_OPTIONS:Mipa-without-rules)
CONFIGURE_ARGS+= --disable-rules
.endif

###
### Disable sublimits support
###
.if !empty(PKG_OPTIONS:Mipa-without-sublimits)
CONFIGURE_ARGS+= --disable-sublimits
.endif

###
### Disable thresholds support
###
.if !empty(PKG_OPTIONS:Mipa-without-thresholds)
CONFIGURE_ARGS+= --disable-thresholds
.endif
