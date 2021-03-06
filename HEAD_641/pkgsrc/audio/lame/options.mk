# $NetBSD: options.mk,v 1.4 2008/10/09 14:47:56 wiz Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.lame
PKG_SUPPORTED_OPTIONS=	gtk sndfile

.include "../../mk/bsd.options.mk"

PLIST_VARS+=		gtk

.if !empty(PKG_OPTIONS:Mgtk)
CONFIGURE_ENV+=		GTK_CONFIG=${BUILDLINK_PREFIX.gtk}/bin/gtk-config
CONFIGURE_ARGS+=	--enable-mp3x
PLIST.gtk=		yes
.  include "../../x11/gtk/buildlink3.mk"
.endif

.if !empty(PKG_OPTIONS:Msndfile)
CONFIGURE_ARGS+=	--with-fileio=sndfile
CONFIGURE_ARGS+=	--with-sndfile-prefix=${BUILDLINK_PREFIX.libsndfile}
USE_TOOLS+=		pkg-config
.  include "../../audio/libsndfile/buildlink3.mk"
.endif

# doesn't work
#.if !empty(PKG_OPTIONS:Mvorbis)
#CONFIGURE_ARGS+=	--with-vorbis
#CONFIGURE_ARGS+=	--with-vorbis-prefix=${BUILDLINK_PREFIX.libvorbis}
#.  include "../../audio/libvorbis/buildlink3.mk"
#.else
#CONFIGURE_ARGS+=	--without-vorbis
#.endif
