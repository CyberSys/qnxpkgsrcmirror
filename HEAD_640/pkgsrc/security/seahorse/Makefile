# $NetBSD: Makefile,v 1.76 2008/11/08 23:46:00 jnemeth Exp $

DISTNAME=	seahorse-2.24.1
CATEGORIES=	security
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/seahorse/2.24/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.gnome.org/projects/seahorse/
COMMENT=	GnuPG front end and bonobo component for GNOME

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=		gnupg>=1.2.1:../../security/gnupg

.if exists(/usr/bin/ssh) && exists(/usr/bin/ssh-add) && exists(/usr/bin/ssh-keygen)
SSH_PATH=/usr/bin/ssh
SSH_ADD_PATH=/usr/bin/ssh-add
SSH_KEYGEN_PATH=/usr/bin/ssh-keygen
.else
DEPENDS+=		{ssh{,6}-[0-9]*,openssh-[0-9]*}:../../security/openssh
SSH_PATH=${PREFIX}/bin/ssh
SSH_ADD_PATH=${PREFIX}/bin/ssh-add
SSH_KEYGEN_PATH=${PREFIX}/ssh-keygen
.endif

GNU_CONFIGURE=		yes
USE_DIRS+=		gnome2-1.5
USE_TOOLS+=		gawk gmake intltool msgfmt pkg-config
USE_LIBTOOL=		yes
USE_PKGLOCALEDIR=	yes

CONFIGURE_ARGS+=	--disable-gedit
CONFIGURE_ARGS+=	--disable-nautilus
CONFIGURE_ENV+=		SSH_PATH=${SSH_PATH:Q}
CONFIGURE_ENV+=		SSH_ADD_PATH=${SSH_ADD_PATH:Q}
CONFIGURE_ENV+=		SSH_KEYGEN_PATH=${SSH_KEYGEN_PATH:Q}

PKGCONFIG_OVERRIDE+=	libcryptui/cryptui.pc.in
GCONF_SCHEMAS= 	seahorse.schemas

BUILDLINK_API_DEPENDS.gpgme+=	gpgme>=1.0.1nb2

# In pkgsrc, the shipped gettext cannot handle the .po files,
# so we strip out usage of the newer features (context and fuzzy matches)
post-patch:
	for f in ${WRKSRC}/po/*.po ; do \
	    mv $$f $$f.original ; \
	    ${AWK} -f ${FILESDIR}/msgfmtstrip $$f.original > $$f ; \
	done

.include "../../databases/gnome-mime-data/buildlink3.mk"
.include "../../databases/shared-mime-info/mimedb.mk"
.include "../../devel/GConf/schemas.mk"
.include "../../devel/libglade/buildlink3.mk"
.include "../../net/libsoup24/buildlink3.mk"
.include "../../security/gnome-keyring/buildlink3.mk"
.include "../../security/gpgme/buildlink3.mk"
.include "../../sysutils/dbus-glib/buildlink3.mk"
.include "../../sysutils/libnotify/buildlink3.mk"
.include "../../textproc/gnome-doc-utils/buildlink3.mk"
.include "../../mk/omf-scrollkeeper.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
# XXX: avahi for SHARING
.include "../../mk/bsd.pkg.mk"
