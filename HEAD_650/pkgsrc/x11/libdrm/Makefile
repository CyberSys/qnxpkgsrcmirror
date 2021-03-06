# $NetBSD: Makefile,v 1.32 2013/07/02 21:03:16 wiz Exp $

DISTNAME=		libdrm-2.4.46
CATEGORIES=		x11 graphics
MASTER_SITES=		http://dri.freedesktop.org/libdrm/
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		joerg@NetBSD.org
HOMEPAGE=		http://dri.freedesktop.org/wiki/DRM
COMMENT=		Userspace interface to kernel DRM services

ONLY_FOR_PLATFORM=	NetBSD-*-* DragonFly-*-* FreeBSD-*-* OpenBSD-*-* \
			Linux-*-* SunOS-*-* QNX-*-*

USE_PKGLOCALEDIR=	yes
USE_TOOLS+=		pkg-config
USE_LIBTOOL=		yes
PKGCONFIG_OVERRIDE+=	libdrm.pc.in
GNU_CONFIGURE=		yes

.include "../../mk/bsd.prefs.mk"

SUBST_CLASSES+=		atomic
SUBST_FILES.atomic=	xf86drm.h
SUBST_MESSAGE.atomic=	Configuring xf86drm.h's atomic operations.
SUBST_STAGE.atomic=	pre-configure
SUBST_VARS.atomic=	ATOMIC_OPS_CHECK

ATOMIC_OPS_CHECK=	0
.if exists(/usr/include/sys/atomic.h)
ATOMIC_OPS_CHECK=	1
.else
.  include "../../devel/libatomic_ops/buildlink3.mk"
CONFIGURE_ENV+=		drm_cv_atomic_primitives=libatomic-ops
.endif

.if ${OPSYS} == "QNX"
CONFIGURE_ENV+=		drm_cv_atomic_primitives=solaris
.endif

CONFIGURE_ARGS+=	PTHREADSTUBS_CFLAGS=-I${PREFIX}/include \
			PTHREADSTUBS_LIBS=-L${PREFIX}/lib
CONFIGURE_ARGS+=	--disable-manpages

.include "../../sysutils/libpciaccess/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
