# $NetBSD: Makefile,v 1.4 2008/06/12 02:14:54 joerg Exp $
#

DISTNAME=	compiz-fusion-plugins-main-0.6.0
PKGREVISION=	1
CATEGORIES=	wm x11
MASTER_SITES=	http://releases.compiz-fusion.org/0.6.0/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.compiz-fusion.org/
COMMENT=	Compositing window manager - main plugins

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=		yes
USE_TOOLS+=		intltool pkg-config msgfmt gmake
USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes

PKGCONFIG_OVERRIDE+=	compiz-text.pc.in

CONFIGURE_ARGS+=	--disable-inotify
CONFIGURE_ARGS+=	--enable-schemas

GCONF_SCHEMAS+=	compiz-animation.schemas
GCONF_SCHEMAS+=	compiz-colorfilter.schemas
GCONF_SCHEMAS+=	compiz-expo.schemas
GCONF_SCHEMAS+=	compiz-ezoom.schemas
GCONF_SCHEMAS+=	compiz-imgjpeg.schemas
GCONF_SCHEMAS+=	compiz-neg.schemas
GCONF_SCHEMAS+=	compiz-opacify.schemas
GCONF_SCHEMAS+=	compiz-put.schemas
GCONF_SCHEMAS+=	compiz-resizeinfo.schemas
GCONF_SCHEMAS+=	compiz-ring.schemas
GCONF_SCHEMAS+=	compiz-scaleaddon.schemas
GCONF_SCHEMAS+=	compiz-shift.schemas
GCONF_SCHEMAS+=	compiz-snap.schemas
GCONF_SCHEMAS+=	compiz-text.schemas
GCONF_SCHEMAS+=	compiz-thumbnail.schemas
GCONF_SCHEMAS+=	compiz-vpswitch.schemas
GCONF_SCHEMAS+=	compiz-wall.schemas
GCONF_SCHEMAS+=	compiz-winrules.schemas
GCONF_SCHEMAS+=	compiz-workarounds.schemas

.include "../../devel/GConf/schemas.mk"
.include "../../devel/compiz-bcop/buildlink3.mk"
.include "../../graphics/jpeg/buildlink3.mk"
.include "../../wm/compiz/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
