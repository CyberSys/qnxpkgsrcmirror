# $NetBSD: Makefile,v 1.31 2007/09/23 15:30:23 obache Exp $

DISTNAME=		stalin-0.9
PKGREVISION=		5
CATEGORIES=		lang
MASTER_SITES=		ftp://ftp.nj.nec.com/pub/qobi/
EXTRACT_SUFX=		.tgz

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.neci.nj.nec.com/homepages/qobi/software.html
COMMENT=		Aggressively optimizing Scheme compiler

# Only ported to these 4 archs
ONLY_FOR_PLATFORM=	*-*-i386 *-*-sparc *-*-alpha *-*-mips

UNLIMIT_RESOURCES=	stacksize datasize

.include "../../mk/bsd.prefs.mk"

.if (${MACHINE_ARCH} == "sparc")
CFLAGS:=		${CFLAGS:C/-O[0-9]*/-O0/}
.endif
CPPFLAGS+=		-I${BUILDLINK_PREFIX.boehm-gc}/include/gc

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

post-patch:
	${SED} -e 's:@PREFIX@:${PREFIX}:g'			\
		-e 's:@LOCALBASE@:${LOCALBASE}:g'		\
		-e 's:@X11BASE@:${X11BASE}:g'			\
	${FILESDIR}/stalin.sh > ${WRKSRC}/stalin.sh

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/lib/stalin
	${INSTALL_PROGRAM} ${WRKSRC}/stalin ${PREFIX}/lib/stalin
	${INSTALL_SCRIPT} ${WRKSRC}/stalin.sh ${PREFIX}/bin/stalin
	${INSTALL_DATA} ${WRKSRC}/include/*.sc ${PREFIX}/lib/stalin
	${INSTALL_DATA} ${WRKSRC}/libstalin.a ${PREFIX}/lib/stalin
	${INSTALL_MAN} ${WRKSRC}/stalin.1 ${PREFIX}/${PKGMANDIR}/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/stalin
	cd ${WRKSRC} && ${INSTALL_DATA} ANNOUNCEMENT COPYING README	\
		stalin.el ${PREFIX}/share/doc/stalin/

.include "../../devel/boehm-gc/buildlink3.mk"
.include "../../graphics/Mesa/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
