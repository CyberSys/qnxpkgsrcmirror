# $NetBSD: Makefile,v 1.28 2007/09/16 13:32:48 obache Exp $
#

DISTNAME=	dcraw-8.77
CATEGORIES=	graphics
MASTER_SITES=	http://www.cybercom.net/~dcoffin/dcraw/archive/
DIST_SUBDIR=	${PKGNAME}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.cybercom.net/~dcoffin/dcraw/
COMMENT=	Raw digital camera decoder

USE_PKGLOCALEDIR=	yes
WRKSRC=			${WRKDIR}/${PKGBASE}
USE_TOOLS+=		msgfmt
USE_LANGUAGES=		c

LIBS+=		-lm -ljpeg
CFLAGS+=	-DLOCALEDIR=\"${PREFIX}/${PKGLOCALEDIR}/locale\"

DCRAW_MANS=		eo ru fr it de pt es zh_TW zh_CN pl hu
DCRAW_LOCALES=		eo ru fr it de pt es zh_TW zh_CN nl pl hu

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1
.for lang in ${DCRAW_MANS}
INSTALLATION_DIRS+=	${PKGMANDIR}/${lang}/man1
.endfor
.for lang in ${DCRAW_LOCALES}
INSTALLATION_DIRS+=	${PKGLOCALEDIR}/locale/${lang}/LC_MESSAGES
.endfor

BROKEN_GETTEXT_DETECTION=	yes

PKG_OPTIONS_VAR=	PKG_OPTIONS.dcraw
PKG_SUPPORTED_OPTIONS=	lcms
PKG_SUGGESTED_OPTIONS=	lcms

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mlcms)
LIBS+=		-llcms
.include "../../graphics/lcms/buildlink3.mk"
.else
CFLAGS+=	-DNO_LCMS
.endif

do-build:
	set -e; cd ${WRKSRC};						\
	env ${MAKE_ENV} ${CC} ${CFLAGS} dcraw.c -o dcraw ${LDFLAGS} ${LIBS}; \
	for l in ${DCRAW_LOCALES}; do					\
		env ${MAKE_ENV} msgfmt -o dcraw_$${l}.mo dcraw_$${l}.po; \
	done;

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dcraw ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/dcraw.1 ${PREFIX}/${PKGMANDIR}/man1
.for l in ${DCRAW_MANS}
	${INSTALL_MAN} ${WRKSRC}/dcraw_${l}.1 ${PREFIX}/${PKGMANDIR}/${l}/man1/dcraw.1
.endfor
.for l in ${DCRAW_LOCALES}
	${INSTALL_DATA} ${WRKSRC}/dcraw_${l}.mo ${PREFIX}/${PKGLOCALEDIR}/locale/${l}/LC_MESSAGES/dcraw.mo
.endfor

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../graphics/jpeg/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
