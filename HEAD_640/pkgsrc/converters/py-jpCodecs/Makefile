# $NetBSD: Makefile,v 1.11 2008/06/12 02:14:17 joerg Exp $

DISTNAME=	JapaneseCodecs-1.4.11
PKGNAME=	${PYPKGPREFIX}-jpCodecs-1.4.11
PKGREVISION=	1
CATEGORIES=	converters python
MASTER_SITES=	http://www.python.jp/Zope/download/JapaneseCodecs/ \
		http://www.asahi-net.or.jp/~rd6t-kjym/python/JapaneseCodecs/dist/

MAINTAINER=	tsarna@NetBSD.org
HOMEPAGE=	http://www.asahi-net.or.jp/~rd6t-kjym/python/
COMMENT=	Python Unicode codecs for Japanese charsets

PKG_DESTDIR_SUPPORT=	user-destdir

PYDISTUTILSPKG=	yes
PYBINMODULE=	yes
PYTHON_VERSIONS_ACCEPTED= 25 24 23 21

.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
