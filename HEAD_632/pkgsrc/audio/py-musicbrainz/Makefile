# $NetBSD: Makefile,v 1.2 2006/12/07 14:37:28 joerg Exp $

DISTNAME=	python-musicbrainz2-0.4.0
PKGNAME=	${DISTNAME:S/python/${PYPKGPREFIX}/}
CATEGORIES=	audio python
MASTER_SITES=	http://musicbrainz.org/~matt/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://musicbrainz.org/doc/PythonMusicBrainz2
COMMENT=	Python interface to the MusicBrainz XML web service

PYTHON_VERSIONS_ACCEPTED=	24 23
PYDISTUTILSPKG=	yes

DEPENDS+=	${PYPKGPREFIX}-ctypes>=1.0.0:../../devel/py-ctypes
DEPENDS+=	${PYPKGPREFIX}-expat-[0-9]*:../../textproc/py-expat

.include "../../audio/libdiscid/buildlink3.mk"
.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
