# $NetBSD: Makefile,v 1.11 2008/05/26 02:13:23 joerg Exp $
#

DISTNAME=	prosper-1.00.4
PKGNAME=	tex-${DISTNAME}
PKGREVISION=	4
CATEGORIES=	print
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=prosper/}
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} PPRblends.sty.gz

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	http://prosper.sourceforge.net/
COMMENT=	LaTeX class for writing transparencies

WRKSRC=		${WRKDIR}/prosper
NO_CONFIGURE=	yes
NO_BUILD=	yes
USE_DIRS+=	texmf-1.0

USE_TOOLS+=	pax

TEXMF=		${PKG_LOCALTEXMFPREFIX}
PROSPERDIR=	${TEXMF}/tex/latex/prosper

DOCS=		AUTHORS ChangeLog FAQ INSTALL NEWS README TODO \
		TROUBLESHOOTINGS
DOCDIR=		${PREFIX}/share/doc/tex-prosper
EGDIR=		${PREFIX}/share/examples/tex-prosper

.include "../../print/teTeX/module.mk"

post-extract:
	${MV} ${WRKDIR}/PPRblends.sty ${WRKSRC}/contrib
	${MV} ${WRKSRC}/doc/doc-examples ${WRKSRC}/examples
	${FIND} ${WRKSRC} -name CVS -print0 | ${XARGS} -0 ${RM} -rf

do-install:
	${INSTALL_DATA_DIR} ${PROSPERDIR}
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA_DIR} ${EGDIR}
	cd ${WRKSRC} && pax -rw -pp -pm *.sty *.cls img contrib designer \
		${PROSPERDIR}
	cd ${WRKSRC}/doc && pax -rw -pp -pm . ${DOCDIR}
	cd ${WRKSRC}/examples && pax -rw -pp -pm . ${EGDIR}
.for f in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/${f} ${DOCDIR}
.endfor

.include "../../mk/bsd.pkg.mk"
