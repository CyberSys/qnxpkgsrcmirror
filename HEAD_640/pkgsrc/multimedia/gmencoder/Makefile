# $NetBSD: Makefile,v 1.35 2008/06/20 01:09:27 joerg Exp $
#

DISTNAME=	gmencoder-0.1.0
PKGREVISION=	24
CATEGORIES=	multimedia
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gmencoder/}
EXTRACT_SUFX=	.tgz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://gmencoder.sourceforge.net/
COMMENT=	GNOME2 frontend to mencoder

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	mencoder>=0.90:../../multimedia/mencoder
DEPENDS+=	mplayer>=0.90:../../multimedia/mplayer

GNU_CONFIGURE=		yes
USE_DIRS+=		gnome2-1.5
USE_TOOLS+=		gmake msgfmt pkg-config
USE_PKGLOCALEDIR=	yes

CFLAGS+=		-DPKG_SYSCONFDIR="\"${PKG_SYSCONFDIR}\""
EGDIR=			${PREFIX}/share/examples/gmencoder
CONF_FILES=		${EGDIR}/gmencoder_opts ${PKG_SYSCONFDIR}/gmencoder_opts

INSTALLATION_DIRS=	${EGDIR}

post-build:
	${MV} ${WRKSRC}/etc/gmencoder_opts ${WRKSRC}/etc/gmencoder_opts.in
	${SED} -e 's|/usr/local|${PREFIX}|g' \
		< ${WRKSRC}/etc/gmencoder_opts.in > ${WRKSRC}/etc/gmencoder_opts

post-install:
	${INSTALL_DATA} ${WRKSRC}/etc/gmencoder_opts ${DESTDIR}${EGDIR}

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/libgnomeui/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
