# $NetBSD: Makefile,v 1.13 2007/11/05 19:06:02 drochner Exp $

DISTNAME=		libgtop-2.20.0
CATEGORIES=		sysutils gnome
MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libgtop/2.20/}
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.gnome.org/
COMMENT=		Library to retrieve system information, used in GNOME2

OSVERSION_SPECIFIC=	YES

USE_PKGLOCALEDIR=	YES
USE_TOOLS+=		gmake makeinfo msgfmt perl pkg-config intltool
USE_LIBTOOL=		YES
PKGCONFIG_OVERRIDE=	libgtop-2.0.pc.in
PKGCONFIG_OVERRIDE+=	support/gnome-support-2.0.pc.in
INFO_FILES=		YES
TEXINFO_REQD=		4.6
CONFLICTS+=		libgtop2-[0-9]*

# The following flags are for debugging purposes.  They don't need to
# be used unless you are actively developing/debugging libgtop.
#CPPFLAGS+=		-DLIBGTOP_ENABLE_DEBUG -DLIBGTOP_FATAL_WARNINGS
#CFLAGS+=		-g
#LDFLAGS+=		-g

GNU_CONFIGURE=		YES
CONFIGURE_ARGS+=	--with-glib-prefix=${BUILDLINK_PREFIX.glib2}
CONFIGURE_ARGS+=	--with-catgets --with-libgtop-guile=no
CONFIGURE_ARGS+=	--without-x
CONFIGURE_ENV+=		LN_S="${LN} -s"

PRINT_PLIST_AWK+=	/^bin\/libgtop_server2$$/ \
				{ print "$${LIBGTOP_SERVER}" $$0; next }
PRINT_PLIST_AWK+=	/^include\/libgtop-2.0\/glibtop_suid.h$$/ \
				{ print "$${LIBGTOP_SUID_H}" $$0; next }

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == NetBSD

CONFIGURE_ENV+=	fu_cv_sys_mounted_getmntinfo=yes

.  if (${MACHINE_ARCH} != alpha) && \
	(${MACHINE_ARCH} != arm) && (${MACHINE_ARCH} != arm32) && \
	(${MACHINE_ARCH} != i386) && (${MACHINE_ARCH} != m68k) && \
	(${MACHINE_ARCH} != mipsel) && (${MACHINE_ARCH} != powerpc) && \
	(${MACHINE_ARCH} != sparc) && (${MACHINE_ARCH} != sparc64) && \
	(${MACHINE_ARCH} != x86_64)
PKG_FAIL_REASON+=	"${PKGNAME} has not yet been ported to ${MACHINE_ARCH}."
PKG_FAIL_REASON+=	"Please look at /usr/include/${MACHINE_ARCH}/pcb.h"
PKG_FAIL_REASON+=	"and update ${WRKSRC}/sysdeps/freebsd/prockernel.c appropriately."
PKG_FAIL_REASON+=	"(More information can be found in libgtop.info.)"
.  endif
.endif

.if ${OPSYS} == "Linux"
PLIST_SUBST+=	LIBGTOP_SERVER="@comment "
PLIST_SUBST+=	LIBGTOP_SUID_H="@comment "
.elif ${OPSYS} == "SunOS"
PLIST_SUBST+=	LIBGTOP_SERVER=""
PLIST_SUBST+=	LIBGTOP_SUID_H="@comment "
.else
PLIST_SUBST+=	LIBGTOP_SERVER=""
PLIST_SUBST+=	LIBGTOP_SUID_H=""
.endif

.if ${OPSYS} != "Linux"
post-install:
	${CHMOD} g+s ${PREFIX}/bin/libgtop_server2
.endif

# XXX This needs a check in the configure script, which should be clean
# enough to be integrated in the mainstream sources.
statvfs_h=	/usr/include/sys/statvfs.h
.if exists(${statvfs_h})
reads_count!=	if ${GREP} f_syncreads ${statvfs_h} >/dev/null; then \
		${ECHO} yes; else ${ECHO} no; fi
.  if ${reads_count} == "yes"
CPPFLAGS+=	-DHAVE_STATVFS_READS_COUNT
.  endif
.  undef reads_count

writes_count!=	if ${GREP} f_syncwrites ${statvfs_h} >/dev/null; then \
		${ECHO} yes; else ${ECHO} no; fi
.  if ${writes_count} == "yes"
CPPFLAGS+=	-DHAVE_STATVFS_WRITES_COUNT
.  endif
.  undef writes_count
.endif
.undef statvfs_h

BUILDLINK_API_DEPENDS.glib2+=	glib2>=2.6.0

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/libgnome/buildlink3.mk"
.include "../../devel/popt/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
