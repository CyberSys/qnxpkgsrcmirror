# $NetBSD: Makefile,v 1.2 2009/01/19 22:39:01 kefren Exp $

DISTNAME=	mono-basic-2.2
CATEGORIES=	lang
MASTER_SITES=	http://ftp.novell.com/pub/mono/sources/mono-basic/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	kefren@NetBSD.org
HOMEPAGE=	http://www.mono-project.com/
COMMENT=	Visual Basic .NET support for mono

PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=		gmake
USE_LANGUAGES+=		# empty
EXTRACT_USING=		gtar

GNU_CONFIGURE=		yes

UNLIMIT_RESOURCES=	datasize
UNLIMIT_RESOURCES+=	stacksize
UNLIMIT_RESOURCES+=	memorysize

.include "../../lang/mono/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
