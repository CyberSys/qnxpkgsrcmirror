# $NetBSD: Makefile,v 1.23 2009/04/06 10:25:51 wiz Exp $
#

DISTNAME=	mk-20081111
PKGNAME=	${DISTNAME:S/mk/mk-files/1}
CATEGORIES=	devel
MASTER_SITES=	ftp://ftp.NetBSD.org/pub/NetBSD/misc/sjg/

MAINTAINER=	sjg@NetBSD.org
HOMEPAGE=	http://www.crufty.net/help/sjg/bmake.html
COMMENT=	Portable *.mk files for the NetBSD portable bmake utility

NO_CONFIGURE=		yes
NO_BUILD=		yes

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}/mk

.include "../../mk/bsd.prefs.mk"

.if ${PKGSRC_LOCKTYPE} == sleep
PKG_FAIL_REASON=	"Recurses against itself"
.endif


PLIST_SRC=${WRKDIR}/.PLIST_SRC

do-install:
	${SH} ${WRKSRC}/install-mk ${DESTDIR}${PREFIX}/share/mk

.include "../../mk/bsd.pkg.mk"

# The logic below mimics what install-mk does.
# Ie. it won't install a sys.mk if a standard BSD one exists
# same goes for the bsd.*.mk files (it makes the symlinks to *.mk)
${WRKSRC}/FILES:	extract
${WRKDIR}/.PLIST_SRC:	${WRKSRC}/FILES
	( ${GREP} '^[A-Za-z].*\.mk' ${.ALLSRC} ; \
	[ -f /usr/share/mk/sys.mk ] || ${ECHO} sys.mk; \
	[ -f /usr/share/mk/bsd.prog.mk ] || \
	for f in dep doc init lib man nls obj own prog subdir; do \
		${ECHO} bsd.$$f.mk; \
	done ) | ${SED} 's,^,share/mk/,' > ${.TARGET}
