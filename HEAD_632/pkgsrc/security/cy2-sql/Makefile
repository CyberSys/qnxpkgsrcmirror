# $NetBSD: Makefile,v 1.14 2006/10/22 09:25:58 obache Exp $

PKGNAME=	${DISTNAME:S/cyrus-sasl/cy2-sql/}
COMMENT=	Cyrus SASL SQL authentication plugin
SASL_PLUGIN=	yes

.include "../../security/cyrus-sasl/Makefile.common"

PKG_OPTIONS_VAR=	PKG_OPTIONS.cy2-sql
PKG_SUPPORTED_OPTIONS=	mysql pgsql sqlite
PKG_SUGGESTED_OPTIONS=	mysql

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mmysql)
.  include "../../mk/mysql.buildlink3.mk"
CONFIGURE_ARGS+=	--with-mysql=${BUILDLINK_PREFIX.mysql-client}
.else
CONFIGURE_ARGS+=	--without-mysql
.endif

.if !empty(PKG_OPTIONS:Mpgsql)
.  include "../../mk/pgsql.buildlink3.mk"
CONFIGURE_ARGS+=	--with-pgsql=${PGSQL_PREFIX:Q}
.else
CONFIGURE_ARGS+=	--without-pgsql
.endif

.if !empty(PKG_OPTIONS:Msqlite)
.  include "../../databases/sqlite/buildlink3.mk"
CONFIGURE_ARGS+=	--with-sqlite=${BUILDLINK_PREFIX.sqlite}
.else
CONFIGURE_ARGS+=	--without-sqlite
.endif

CONFIGURE_ARGS+=	--enable-sql

BUILD_DIRS=	${WRKSRC}/plugins
BUILD_TARGET=	libsql.la

do-install:
	${INSTALL_DATA_DIR} ${PLUGINDIR}
	cd ${WRKSRC}/plugins && ${SHLIBTOOL} --mode=install \
		${INSTALL_PROGRAM} libsql.la ${PLUGINDIR}

.include "../../mk/bsd.pkg.mk"
