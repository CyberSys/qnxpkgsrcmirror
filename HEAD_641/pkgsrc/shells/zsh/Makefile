# $NetBSD: Makefile,v 1.55 2008/12/23 15:59:08 uebayasi Exp $

.include "../../shells/zsh/Makefile.common"
PKGREVISION=	1

ZSH_VERSION=	4.2.7
ZSH_MAINTAINER=	uebayasi@NetBSD.org

SUBST_CLASSES+=	prefix-fixup
SUBST_STAGE.prefix-fixup=	pre-configure
SUBST_FILES.prefix-fixup= \
	Misc/globtests \
	Misc/globtests.ksh \
	Test/ztst.zsh \
	Util/reporter \
	Functions/Calendar/calendar_add \
	Functions/Misc/run-help \
	Functions/Misc/checkmail \
	Functions/Misc/zcalc \
	Functions/Misc/zkbd \
	Functions/Example/cat
SUBST_SED.prefix-fixup= \
	-e 's|^\#\!/bin/env|\#\!${TOOLS_PATH.env}|g' \
	-e 's|^\#\! /bin/env|\#\! ${TOOLS_PATH.env}|g' \
	-e 's|^\#\!/bin/zsh|\#\!${PREFIX}/bin/zsh|g' \
	-e 's|^\#\! /bin/zsh|\#\! ${PREFIX}/bin/zsh|g' \
	-e 's|^\#\!/usr/local/bin/zsh|\#\!${PREFIX}/bin/zsh|g' \
	-e 's|^\#\! /usr/local/bin/zsh|\#\! ${PREFIX}/bin/zsh|g'

.include "../../mk/bsd.pkg.mk"
