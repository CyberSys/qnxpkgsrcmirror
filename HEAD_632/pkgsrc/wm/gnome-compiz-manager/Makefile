# $NetBSD: Makefile,v 1.6 2007/09/21 13:04:25 wiz Exp $
#

DISTNAME=	gnome-compiz-manager-0.10.4
PKGREVISION=	4
CATEGORIES=	wm
MASTER_SITES=	http://download.gna.org/gcm/gnome-compiz-manager/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://compiz.org/Gnome_Compiz_Manager
COMMENT=	Utility to manage GL Desktop configuration

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config intltool gmake msgfmt
USE_DIRS+=	xdg-1.1

GCONF_SCHEMAS+=	gnome-compiz-preferences.schemas
PKGCONFIG_OVERRIDE+=	gnome-compiz-manager.pc.in

.include "../../devel/GConf/schemas.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../devel/libglade/buildlink3.mk"
.include "../../devel/libwnck/buildlink3.mk"
.include "../../devel/libgnome/buildlink3.mk"
.include "../../devel/libgnomeui/buildlink3.mk"
.include "../../graphics/librsvg/buildlink3.mk"
.include "../../x11/gnome-desktop/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../mk/bsd.pkg.mk"
