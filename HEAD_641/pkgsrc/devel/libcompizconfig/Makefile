# $NetBSD: Makefile,v 1.3 2009/07/08 16:29:08 joerg Exp $
#

DISTNAME=	libcompizconfig-0.6.0
CATEGORIES=	devel gnome
MASTER_SITES=	http://releases.compiz-fusion.org/0.6.0/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.compiz-fusion.org/
COMMENT=	Configuration backend for compiz

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config perl intltool

PKG_SYSCONFSUBDIR?=	compizconfig
EGDIR=		${PREFIX}/share/examples/compizconfig
CONF_FILES+=	${EGDIR}/config ${PKG_SYSCONFDIR}/config

PKGCONFIG_OVERRIDE=	libcompizconfig.pc.in

INSTALLATION_DIRS=	${EGDIR}

.include "../../textproc/libxml2/buildlink3.mk"
.include "../../wm/compiz/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
