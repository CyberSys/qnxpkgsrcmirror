# $NetBSD: Makefile,v 1.38 2009/01/20 17:57:36 sketch Exp $

DISTNAME=		sqlite-2.8.16
PKGREVISION=		1
CATEGORIES=		databases
MASTER_SITES=		http://www.hwaci.com/sw/sqlite/ \
			http://www.sqlite.org/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.hwaci.com/sw/sqlite/
COMMENT=		SQL Database Engine in a C Library

WRKSRC=			${WRKDIR}/sqlite-build
USE_TOOLS+=		gmake
USE_LIBTOOL=		yes

GNU_CONFIGURE=		yes
CONFIGURE_SCRIPT=	../sqlite-2.8.16/configure
CONFIGURE_ARGS+=	--without-tcl
CONFIGURE_ENV+=		config_TARGET_READLINE_INC="-I${BUILDLINK_PREFIX.readline}/include"
CONFIG_GUESS_OVERRIDE=	../sqlite-2.8.16/config.guess
CONFIG_SUB_OVERRIDE=	../sqlite-2.8.16/config.sub

.include "../../mk/bsd.prefs.mk"

.if (${OPSYS} == "SunOS")
CFLAGS+=		-DUINT32_TYPE=uint32_t -DUINT16_TYPE=uint16_t \
			-DUINT8_TYPE=uint8_t -DINTPTR_TYPE=long
.else
CFLAGS+=		-DUINT32_TYPE=u_int32_t -DUINT16_TYPE=u_int16_t \
			-DUINT8_TYPE=u_int8_t -DINTPTR_TYPE=long
.endif

PKGCONFIG_OVERRIDE=	${WRKDIR}/sqlite-2.8.16/sqlite.pc.in

post-extract:
	${MKDIR} ${WRKSRC}

post-install:
	${INSTALL_MAN} ${WRKDIR}/sqlite-2.8.16/sqlite.1 ${PREFIX}/${PKGMANDIR}/man1

.include "../../devel/readline/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
