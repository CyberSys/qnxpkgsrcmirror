# $NetBSD: Makefile,v 1.15 2007/01/07 09:14:11 rillig Exp $
#

DISTNAME=		dmesg2gif-1.3
PKGREVISION=		2
CATEGORIES=		sysutils
MASTER_SITES=		# empty
DISTFILES=		# empty

MAINTAINER=		pkgsrc-users@NetBSD.org
COMMENT=		Output dmesg(8) device tree as GIF image

DEPENDS+=		graphviz-[0-9]*:../../graphics/graphviz

WRKSRC=			${WRKDIR}
EXTRACT_ONLY=		# empty
NO_BUILD=		yes
NO_CHECKSUM=		yes
NO_CONFIGURE=		yes
USE_TOOLS+=		perl:run
INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

do-install:
	${INSTALL_SCRIPT} ${FILESDIR}/dmesg2gif ${PREFIX}/bin/dmesg2gif
	${INSTALL_MAN} ${FILESDIR}/dmesg2gif.1 ${PREFIX}/${PKGMANDIR}/man1/dmesg2gif.1

.include "../../mk/bsd.pkg.mk"
