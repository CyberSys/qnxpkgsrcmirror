# $NetBSD: Makefile,v 1.22 2008/06/16 13:32:55 joerg Exp $

DISTNAME=	bfd-crunchide-1.2
CATEGORIES=	cross
MASTER_SITES=	# empty
DISTFILES=	# empty

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Crunchide using libbfd, used for cross-building distributions

PKG_DESTDIR_SUPPORT=	user-destdir

BUILDLINK_DEPMETHOD.cross-binutils=	build

WRKSRC=		${WRKDIR}
EXTRACT_ONLY=	# empty
NO_CHECKSUM=	yes
NO_CONFIGURE=	yes

USE_CROSSBASE=	yes
CPPFLAGS+=	-I${PREFIX}/include
MAKE_ENV+=	LIBS=${BFD_LIBS:Q}
MAKE_ENV+=	${BSD_MAKE_ENV}

BFD_LIBS=	${PREFIX}/lib/libbfd.a ${PREFIX}/lib/libiberty.a ${PREFIX}/lib/libintl.a

INSTALLATION_DIRS=	bin

do-extract:
	@${MKDIR} ${WRKSRC}
	@${CP} ${FILESDIR}/Makefile ${FILESDIR}/crunchide.1 ${FILESDIR}/crunchide.c \
		${WRKSRC}

.include "../../cross/binutils/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
