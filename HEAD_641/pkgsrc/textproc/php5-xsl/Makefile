# $NetBSD: Makefile,v 1.10 2009/07/10 19:54:54 jdolecek Exp $

MODNAME=		xsl
PKGREVISION=		1
CATEGORIES+=		textproc
COMMENT=		PHP5 extension for XSLT functions

CONFLICTS=	php-xsl-[0-9]*

PKG_DESTDIR_SUPPORT=	user-destdir

CONFIGURE_ARGS+=	--with-${MODNAME}=shared,${BUILDLINK_PREFIX.libxslt}

# uses symbols from DOM extension, so add explicit depends
DEPENDS+=		php5*-dom-*:../../textproc/php5-dom

# build uses includes of the DOM extension, so need to extract that too
EXTRACT_ELEMENTS=	${DISTNAME}/ext/${MODNAME} ${DISTNAME}/ext/dom
WRKSRC=			${WRKDIR}/${DISTNAME}/ext/${MODNAME}

PHP_VERSIONS_ACCEPTED=	5
.include "../../lang/php/ext.mk"
.include "../../textproc/libxslt/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
