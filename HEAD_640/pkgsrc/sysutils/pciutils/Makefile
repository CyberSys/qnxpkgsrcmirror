# $NetBSD: Makefile,v 1.13 2008/11/11 11:10:59 hasso Exp $

DISTNAME=	pciutils-3.0.2
CATEGORIES=	sysutils
MASTER_SITES=	ftp://atrey.karlin.mff.cuni.cz/pub/linux/pci/ \
		ftp://ftp.kernel.org/pub/software/utils/pciutils/ \
		ftp://metalab.unc.edu/pub/Linux/hardware/

MAINTAINER=	cube@NetBSD.org
HOMEPAGE=	http://mj.ucw.cz/pciutils.shtml
COMMENT=	PCI bus manipulation utility similar to NetBSD pcictl(8)

PKG_DESTDIR_SUPPORT=	user-destdir

MAKE_JOBS_SAFE=		no
ONLY_FOR_PLATFORM=	AIX-*-* FreeBSD-*-* Linux-*-* NetBSD-*-*
ONLY_FOR_PLATFORM+=	DragonFly-*-* OpenBSD-*-*

INSTALL_TARGET=		install install-lib
USE_TOOLS+=		gmake pkg-config
REPLACE_SH=		*.sh

PKGCONFIG_OVERRIDE=	lib/libpci.pc.in


.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "NetBSD"
PCIUTILS_LIBNAME=	pciutils
.else
PCIUTILS_LIBNAME=	pci
.endif

PLIST_SUBST+=		PCIUTILS_LIBNAME=${PCIUTILS_LIBNAME}

SUBST_CLASSES=		pc
SUBST_FILES.pc=		lib/libpci.pc.in
SUBST_MESSAGE.pc=	Fixing library link specification in pkg-config file.
SUBST_STAGE.pc=		pre-configure
SUBST_VARS.pc=		PCIUTILS_LIBNAME

.include "../../mk/bsd.pkg.mk"
