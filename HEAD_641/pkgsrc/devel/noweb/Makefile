# $NetBSD: Makefile,v 1.37 2009/05/28 21:20:45 zafer Exp $

DISTNAME=		noweb-2.11b
CATEGORIES=		devel
MASTER_SITES=		ftp://www.eecs.harvard.edu/pub/nr/
EXTRACT_SUFX=		.tgz

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.eecs.harvard.edu/~nr/noweb/
COMMENT=		Simple, extensible literate-programming tool

DEPENDS+=		icon>=9.3:../../lang/icon

BUILD_DIRS=		src

.include "../../mk/bsd.prefs.mk"

USE_TOOLS+=	mktemp:run

SUBST_CLASSES+=		mktemp
SUBST_FILES.mktemp+=	src/awk/totex.nw src/lib/toascii src/shell/toroff src/shell/noroff
SUBST_FILES.mktemp+=	src/shell/nonu src/shell/cpif src/awkname src/shell/roff.nw
SUBST_FILES.mktemp+=	src/shell/roff.mm contrib/conrado/d2tex
SUBST_FILES.mktemp+=	contrib/jobling/correct-refs.nw
SUBST_FILES.mktemp+=	contrib/norman/htmlgif/pstopbm
SUBST_SED.mktemp+=	-e 's,@MKTEMP@,${TOOLS_PATH.mktemp},g'
SUBST_STAGE.mktemp=	post-patch

.if ${OPSYS} != "SunOS"
do-configure:
	cd ${WRKSRC}/src && ./awkname awk
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/noweb
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/noweb

.include "../../mk/bsd.pkg.mk"
