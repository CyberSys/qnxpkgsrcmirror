# $NetBSD: Makefile,v 1.4 2009/08/09 21:45:47 wiz Exp $
#

DISTNAME=	lxml-2.2.2
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	textproc
MASTER_SITES=	http://codespeak.net/lxml/
EXTRACT_SUFX=	.tgz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://codespeak.net/lxml/
COMMENT=	Python binding for libxml2 and libxslt

PKG_DESTDIR_SUPPORT=	user-destdir

PYDISTUTILSPKG=			yes

.include "../../lang/python/egg.mk"
BUILDLINK_API_DEPENDS.libxml2+=	libxml2>=2.6.28
.include "../../textproc/libxml2/buildlink3.mk"
BUILDLINK_API_DEPENDS.libxslt+=	libxslt>=1.1.15
.include "../../textproc/libxslt/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
