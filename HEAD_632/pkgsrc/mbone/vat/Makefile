# $NetBSD: Makefile,v 1.54 2007/01/14 10:19:35 joerg Exp $
#

DISTNAME=		vatsrc-4.0b2
PKGNAME=		${DISTNAME:S/src//}
PKGREVISION=		1
CATEGORIES=		mbone
MASTER_SITES=		ftp://ftp.ee.lbl.gov/conferencing/vat/alpha-test/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www-nrg.ee.lbl.gov/vat/
COMMENT=		The Visual Audio Tool - multicast audioconferencing

WRKSRC=			${WRKDIR}/${PKGNAME_NOREV}
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--with-tcl=${PREFIX:Q} --with-tk=${PREFIX:Q}

USE_LANGUAGES=		c c++

CPPFLAGS+=		-I${LOCALBASE}/include -I${LOCALBASE}/include/gsm

INSTALL_TARGET=		install install-man

BUILDLINK_DEPMETHOD.libXt?=	build

.include "../../audio/gsm/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/libXt/buildlink3.mk"
.include "../../x11/tk83/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
