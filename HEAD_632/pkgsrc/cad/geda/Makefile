# $NetBSD: Makefile,v 1.53 2007/10/25 22:00:40 jlam Exp $
#

DISTNAME=	geda-${PKGVERSION}
CATEGORIES=	cad
DISTFILES=	# empty

MAINTAINER=	dmcmahill@NetBSD.org
HOMEPAGE=	http://www.geda.seul.org/
COMMENT=	Toolset for automating electronic design

DEPENDS+=	gattrib-${PKGVERSION}{,nb[0-9]*}:../../cad/gattrib
DEPENDS+=	gschem-${PKGVERSION}{,nb[0-9]*}:../../cad/gschem
DEPENDS+=	gnetlist-${PKGVERSION}{,nb[0-9]*}:../../cad/gnetlist
DEPENDS+=	gsymcheck-${PKGVERSION}{,nb[0-9]*}:../../cad/gsymcheck
DEPENDS+=	geda-utils-${PKGVERSION}{,nb[0-9]*}:../../cad/geda-utils
DEPENDS+=	geda-docs-${PKGVERSION}{,nb[0-9]*}:../../cad/geda-docs
DEPENDS+=	geda-examples-${PKGVERSION}{,nb[0-9]*}:../../cad/geda-examples
DEPENDS+=	geda-symbols-${PKGVERSION}{,nb[0-9]*}:../../cad/geda-symbols

.include "Makefile.common"

EXTRACT_ONLY=	# none
NO_CHECKSUM=	yes
NO_CONFIGURE=	yes
NO_BUILD=	yes
PLIST_SRC=	# empty (meta-package)

do-install:     # empty

.include "../../mk/bsd.pkg.mk"
