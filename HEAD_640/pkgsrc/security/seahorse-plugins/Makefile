# $NetBSD: Makefile,v 1.2 2008/12/04 17:34:14 wiz Exp $

DISTNAME=	seahorse-plugins-2.24.1
PKGREVISION=	1
CATEGORIES=	security
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/seahorse-plugins/2.24/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.gnome.org/projects/seahorse/
COMMENT=	Plugins for the GnuPG front end and bonobo component for GNOME

DEPENDS+=	gnupg>=1.2.1:../../security/gnupg

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=		yes
USE_DIRS+=		gnome2-1.5
USE_TOOLS+=		gmake intltool msgfmt pkg-config
USE_LIBTOOL=		yes
USE_PKGLOCALEDIR=	yes

GCONF_SCHEMAS=		seahorse-gedit.schemas
GCONF_SCHEMAS+=		seahorse-plugins.schemas

.include "../../databases/gnome-mime-data/buildlink3.mk"
.include "../../databases/shared-mime-info/mimedb.mk"
.include "../../devel/GConf/schemas.mk"
.include "../../editors/gedit/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../mail/evolution-data-server/buildlink3.mk"
.include "../../security/gpgme/buildlink3.mk"
.include "../../security/seahorse/buildlink3.mk"
.include "../../security/gnome-keyring/buildlink3.mk"
.include "../../sysutils/dbus-glib/buildlink3.mk"
.include "../../sysutils/libnotify/buildlink3.mk"
.include "../../sysutils/nautilus/buildlink3.mk"
.include "../../textproc/gnome-doc-utils/buildlink3.mk"
# XXX: fails detection with:
# checking which gecko to use...
# test: : bad number
#.include "../../www/epiphany/buildlink3.mk"
#.include "../../www/firefox/buildlink3.mk"
.include "../../x11/gnome-panel/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/omf-scrollkeeper.mk"
.include "../../mk/bsd.pkg.mk"
