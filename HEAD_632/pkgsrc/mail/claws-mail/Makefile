# $NetBSD: Makefile,v 1.10 2007/10/27 13:57:29 wiz Exp $

.include "Makefile.common"

PKGNAME=	claws-mail-${CLAWS_VERSION}
PKGREVISION=	1

MAINTAINER=	smb@NetBSD.org
COMMENT=	X based e-mail and netnews client

CONFLICTS+=	sylpheed-claws-[0-9]*

USE_TOOLS+=		msgfmt
PKGCONFIG_OVERRIDE+=	claws-mail.pc.in

PKG_SYSCONFSUBDIR=	claws-mail
CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR:Q}

USE_DIRS+=		xdg-1.4

.include "../../mk/bsd.prefs.mk"

FACES_IS_INSTALLED!=	${PKG_INFO} -e faces || ${ECHO}
.if empty(FACES_IS_INSTALLED)
.  include "../../graphics/compface/buildlink3.mk"
.else
.  include "../../mail/faces/buildlink3.mk"
.endif

EGDIR=		${PREFIX}/share/examples/claws-mail
CONF_FILES=	${EGDIR}/mime.types ${PKG_SYSCONFDIR}/mime.types

PKG_OPTIONS_VAR=	PKG_OPTIONS.claws-mail
PKG_SUGGESTED_OPTIONS=
PKG_SUPPORTED_OPTIONS=	jpilot ldap inet6

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mjpilot)
CONFIGURE_ARGS+=	--enable-jpilot
.  include "../../comms/pilot-link-libs/buildlink3.mk"
.  include "../../comms/jpilot/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-jpilot
.endif

.if !empty(PKG_OPTIONS:Mldap)
CONFIGURE_ARGS+=	--enable-ldap
.  include "../../databases/openldap-client/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-ldap
.endif

.if !empty(PKG_OPTIONS:Minet6)
CONFIGURE_ARGS+=	--enable-ipv6
.else
CONFIGURE_ARGS+=	--disable-ipv6
.endif

post-install:
	${INSTALL_DATA_DIR} ${EGDIR}
	${INSTALL_DATA} ${FILESDIR}/mime.types ${EGDIR}
	${INSTALL_DATA_DIR} ${PREFIX}/share/claws-mail
	${INSTALL_DATA} ${WRKSRC}/claws-mail*.png ${PREFIX}/share/claws-mail

.include "../../converters/libiconv/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../textproc/aspell/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../x11/startup-notification/buildlink3.mk"
.include "../../x11/libSM/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
