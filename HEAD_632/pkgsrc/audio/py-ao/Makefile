# $NetBSD: Makefile,v 1.9 2007/03/17 20:43:23 rillig Exp $
#

DISTNAME=		pyao-0.81
PKGNAME=		${PYPKGPREFIX}-${DISTNAME}
PKGREVISION=		3
CATEGORIES=		audio python
MASTER_SITES=		http://vorbis.com/files/1.0.1/unix/py/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://vorbis.com/
COMMENT=		Python bindings for libao

PY_PATCHPLIST=		yes
PYDISTUTILSPKG=		yes

HAS_CONFIGURE=		yes
CONFIG_SHELL=		${PYTHONBIN}
CONFIGURE_SCRIPT=	config_unix.py
CONFIGURE_ARGS+=	--prefix ${PREFIX}

.include "../../audio/libao/buildlink3.mk"
.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
