# $NetBSD: Makefile,v 1.29 2007/09/21 13:04:31 wiz Exp $
#

DISTNAME=	Preferences-1.2.0
PKGNAME=	gnustep-${DISTNAME:S/P/p/}
PKGREVISION=	15
CATEGORIES=	x11 gnustep
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=prefsapp/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	adam@NetBSD.org
HOMEPAGE=	http://prefsapp.sourceforge.net/
COMMENT=	Application for setting preferences for the GNUstep system

USE_LANGUAGES=	objc

NO_CONFIGURE=	YES
USE_TOOLS+=	gmake
MAKE_FILE=	GNUmakefile

MAKE_FLAGS+=	GNUSTEP_USER_DIR=${WRKDIR}/fake_home/GNUstep

.include "../../x11/gnustep-back/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
