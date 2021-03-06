# $NetBSD: Makefile,v 1.37 2006/06/08 15:52:49 minskim Exp $

DISTNAME=	sdcc-2.4.0
PKGNAME=	${DISTNAME:S/-src//}
PKGREVISION=	3
CATEGORIES=	devel lang
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sdcc/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://sdcc.sourceforge.net/
COMMENT=	Cross compile 8051 code

USE_LANGUAGES=	c c++

# XXX - This HACK circumvent a problem with the use of yacc that breaks the
# XXX - building process of sdcc.  Use of bison fixes this problem for now.
#
USE_TOOLS+=	bison

BUILD_TARGET=	dep all

WRKSRC=			${WRKDIR}/${DISTNAME:S/-2.4.0//}
GNU_CONFIGURE=		YES
USE_TOOLS+=		gmake lex perl:run

CONFIGURE_ARGS+=	--datadir=${PREFIX}/share/sdcc

# needed for some arch's.  -fdollars-in-identifiers is enabled
# by default on some, not on others
CPPFLAGS+=		-fdollars-in-identifiers
CONFIGURE_ENV+=		MACHINE_ARCH=${MACHINE_ARCH:Q}
CONFIGURE_ENV+=		sdcc_cv_CCggdb="no"

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "NetBSD"
CPPFLAGS+=		-DYY_NEVER_INTERACTIVE

post-extract:
	@${RM} -f ${WRKSRC}/as/mcs51/string.h ${WRKSRC}/as/z80/string.h

pre-configure: sys-endian-buildlink

sys-endian-buildlink:
	@${MKDIR} ${BUILDLINK_DIR}/include
	@${LN} -fs /usr/include/sys/endian.h ${BUILDLINK_DIR}/include
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sdcc
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sdcc/avr
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sdcc/z80
	${INSTALL_DATA} ${WRKSRC}/doc/*.lyx ${PREFIX}/share/doc/sdcc/
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${PREFIX}/share/doc/sdcc/
	${INSTALL_DATA} ${WRKSRC}/doc/avr/avr_design.txt ${PREFIX}/share/doc/sdcc/avr
	${INSTALL_DATA} ${WRKSRC}/doc/z80/README ${PREFIX}/share/doc/sdcc/z80

.include "../../devel/boehm-gc/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
