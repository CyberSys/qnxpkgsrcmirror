# $NetBSD: Makefile,v 1.2 2006/11/29 16:59:57 ghen Exp $

DISTNAME=	easyh10-1.5
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=easyh10/}

MAINTAINER=	ghen@NetBSD.org
HOMEPAGE=	http://easyh10.sourceforge.net/
COMMENT=	Database tool for the iRiver H10 digital audio player

USE_TOOLS+=	gmake
USE_GNU_ICONV=	yes

GNU_CONFIGURE=	yes

CONFIGURE_ARGS+=--with-id3tag-library=${BUILDLINK_PREFIX.libid3tag}/lib
CONFIGURE_ARGS+=--with-iconv-library=${BUILDLINK_PREFIX.iconv}/lib

.include "../../audio/libid3tag/buildlink3.mk"
.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
