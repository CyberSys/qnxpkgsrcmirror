# $NetBSD: Makefile,v 1.22 2013/06/17 12:44:54 wiz Exp $
#

DISTNAME=	evolution-sharp-0.20.0
PKGREVISION=	15
CATEGORIES=	mail
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/evolution-sharp/0.20/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.go-evolution.org/EvolutionSharp
COMMENT=	.NET language binding for various Evolution libraries
LICENSE=	gnu-gpl-v2

BROKEN=		Doesn't work with newer versions of evolution-data-server

GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes
USE_PKGLOCALEDIR=	yes
PKGCONFIG_OVERRIDE+=	evolution-sharp.pc.in
USE_TOOLS+=		gmake pkg-config

.include "../../lang/mono2/buildlink3.mk"
BUILDLINK_API_DEPENDS.evolution-data-server+=	evolution-data-server>=2.24.0
.include "../../mail/evolution-data-server/buildlink3.mk"
.include "../../x11/gtk-sharp/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
