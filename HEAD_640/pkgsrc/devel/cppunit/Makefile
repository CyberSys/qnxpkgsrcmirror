# $NetBSD: Makefile,v 1.13 2008/06/20 11:48:03 joerg Exp $
#

DISTNAME=	cppunit-1.10.2
PKGREVISION=	8
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cppunit/}

MAINTAINER=	wulf@NetBSD.org
HOMEPAGE=	http://cppunit.sourceforge.net/
COMMENT=	CppUnit is a C++ unit testing framework

PKG_DESTDIR_SUPPORT=	user-destdir

BUILD_DEPENDS+=	doxygen>=1.5.6:../../devel/doxygen

USE_LIBTOOL=	yes
USE_LANGUAGES=	c c++
USE_TOOLS+=	gmake
GNU_CONFIGURE=	yes

.include "../../mk/bsd.pkg.mk"
