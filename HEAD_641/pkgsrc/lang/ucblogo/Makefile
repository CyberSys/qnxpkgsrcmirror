# $NetBSD: Makefile,v 1.19 2007/02/19 19:51:17 joerg Exp $

DISTNAME=	ucblogo-5.3
PKGREVISION=	2
CATEGORIES=	lang
MASTER_SITES=	ftp://ftp.cs.berkeley.edu/pub/ucblogo/
# Not at GNU mirrors yet
# ${MASTER_SITE_GNU:=non-gnu/ucblogo/} \

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://http.cs.berkeley.edu/~bh/logo.html
COMMENT=	Brian Harvey's logo language interpreter

MAKE_FILE=	makefile
GNU_CONFIGURE=	yes
# otherwise ./configure guesses -L incorrectly
LIBS+=		-L${X11BASE}/lib

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ucblogo
	${INSTALL_DATA}	${WRKSRC}/usermanual ${PREFIX}/share/doc/ucblogo/usermanual.txt
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ucblogo/html
	${CP} ${WRKSRC}/emacs/docs/*.html ${PREFIX}/share/doc/ucblogo/html/

BUILDLINK_DEPMETHOD.libXt?=	build

.include "../../devel/ncurses/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/libXt/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
