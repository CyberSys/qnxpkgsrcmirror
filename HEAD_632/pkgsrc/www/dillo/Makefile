# $NetBSD: Makefile,v 1.41 2007/07/24 13:46:45 joerg Exp $

DISTNAME=	dillo-0.8.6
PKGREVISION=	2
CATEGORIES=	www
MASTER_SITES=	http://www.dillo.org/download/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.dillo.org/
COMMENT=	Very small and fast graphical web-browser

USE_LANGUAGES=		c c++
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--disable-dlgui
CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR:Q}

REPLACE_PERL+=	dpid/dpidc
USE_TOOLS+=	perl:run

EGDIR=		${PREFIX}/share/examples/dillo
CONF_FILES=	${EGDIR}/dillorc.default ${PKG_SYSCONFDIR}/dillorc
CONF_FILES+=	${EGDIR}/dpidrc ${PKG_SYSCONFDIR}/dpidrc

.include "options.mk"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dillo
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${PREFIX}/share/doc/dillo
	${INSTALL_DATA} ${WRKSRC}/doc/README ${PREFIX}/share/doc/dillo
	${INSTALL_DATA_DIR} ${EGDIR}
	${INSTALL_DATA} ${WRKSRC}/dillorc ${EGDIR}/dillorc.default

.include "../../graphics/jpeg/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../x11/gtk/buildlink3.mk"

.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
