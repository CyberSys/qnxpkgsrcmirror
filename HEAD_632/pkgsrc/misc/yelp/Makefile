# $NetBSD: Makefile,v 1.73 2007/11/03 16:25:51 drochner Exp $
#

DISTNAME=		yelp-2.20.0
CATEGORIES=		misc
MASTER_SITES=		${MASTER_SITE_GNOME:=sources/yelp/2.20/}
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.gnome.org/
COMMENT=		Help browser for GNOME 2 desktop

DEPENDS+=		docbook>=4.2:../../textproc/docbook

BUILDLINK_API_DEPENDS.libxslt+=	libxslt>=1.1.4

USE_DIRS+=		gnome2-1.5
USE_TOOLS+=		gmake intltool msgfmt pkg-config
USE_LIBTOOL=		yes
USE_PKGLOCALEDIR=	yes
GNU_CONFIGURE=		yes
USE_LANGUAGES=		c c++
CONFIGURE_ENV+=		PKGLOCALEDIR=${PKGLOCALEDIR}

GCONF_SCHEMAS=		yelp.schemas

.include "options.mk"

BUILDLINK_API_DEPENDS.gtk2+=		gtk2+>=2.10.0
BUILDLINK_API_DEPENDS.libgnome+=		libgnome>=2.14.0
BUILDLINK_API_DEPENDS.libgnomeui+=		libgnomeui>=2.14.0
BUILDLINK_API_DEPENDS.startup-notification+=	startup-notification>=0.8
BUILDLINK_API_DEPENDS.libxml2+=			libxml2>=2.6.5

BUILDLINK_DEPMETHOD.gnome-doc-utils+=	full
BUILDLINK_DEPMETHOD.libXt?=	build

.include "../../archivers/bzip2/buildlink3.mk"
.include "../../devel/GConf/schemas.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/libglade/buildlink3.mk"
.include "../../devel/libgnome/buildlink3.mk"
.include "../../devel/libgnomeui/buildlink3.mk"
.include "../../devel/pango/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../net/ORBit2/buildlink3.mk"
.include "../../print/libgnomeprint/buildlink3.mk"
.include "../../print/libgnomeprintui/buildlink3.mk"
.include "../../sysutils/dbus-glib/buildlink3.mk"
.include "../../sysutils/gnome-vfs/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../textproc/libxslt/buildlink3.mk"
.include "../../textproc/gnome-doc-utils/buildlink3.mk"
.include "../../textproc/scrollkeeper/omf.mk"
.include "../../textproc/rarian/buildlink3.mk"
.include "../../www/seamonkey/gecko-depends.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../x11/libSM/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/libXt/buildlink3.mk"
.include "../../x11/startup-notification/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
