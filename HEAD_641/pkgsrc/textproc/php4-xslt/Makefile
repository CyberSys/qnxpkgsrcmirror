# $NetBSD: Makefile,v 1.23 2008/06/12 02:14:51 joerg Exp $

MODNAME=		xslt
CATEGORIES+=		textproc
COMMENT=		PHP4 extension for XSLT functions (Sablotron backend)

PHP_VERSIONS_ACCEPTED=	4

PKG_DESTDIR_SUPPORT=	user-destdir

CONFLICTS=	php-xslt-[0-9]*

CONFIGURE_ARGS+=	--enable-${MODNAME}
CONFIGURE_ARGS+=	--with-${MODNAME}-sablot=${BUILDLINK_PREFIX.sablotron}
CONFIGURE_ARGS+=	--with-expat-dir=${BUILDLINK_PREFIX.expat}

.include "../../converters/libiconv/buildlink3.mk"

# this is necessary so that PHP would find either the libc iconv
# or use the packaged iconv, as appropriate; using
# --with-iconv=shared,${BUILDLINK_PREFIX.iconv} assumes libiconv exists
#
CHECK_BUILTIN.iconv:=	yes
.include "../../converters/libiconv/builtin.mk"
CHECK_BUILTIN.iconv:=	no

.if !empty(USE_BUILTIN.iconv:M[nN][oO]) || \
    !empty(BUILTIN_LIB_FOUND.iconv:M[yY][eE][sS])
CONFIGURE_ARGS+=	--with-iconv-dir=${BUILDLINK_PREFIX.iconv}
.else
CONFIGURE_ARGS+=	--with-iconv-dir
.endif

PLIST_SRC+=		${.CURDIR}/PLIST.extras
DOCDIR=			${PREFIX}/share/doc/${PKGBASE}

INSTALLATION_DIRS=	${DOCDIR}

post-install:
	cd ${WRKSRC}; ${INSTALL_DATA} README.XSLT-BACKENDS ${DESTDIR}${DOCDIR}

.include "../../lang/php/ext.mk"
.include "../../textproc/sablotron/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
