# $NetBSD: Makefile,v 1.9 2008/06/19 14:55:41 taca Exp $

DISTNAME=	html-parser-${VERSION}
PKGNAME=	${RUBY_PKGPREFIX}-html-parser-${VERSION}
PKGREVISION=	1
CATEGORIES=	textproc ruby
MASTER_SITES=	http://www.jin.gr.jp/~nahi/Ruby/html-parser/

MAINTAINER=	taca@NetBSD.org
HOMEPAGE=	http://www.jin.gr.jp/~nahi/Ruby/html-parser/README.html
COMMENT=	HTML-parser package for Ruby

NO_BUILD=	yes
NO_CONFIGURE=	yes

USE_RUBY_INSTALL=	yes
VERSION=		19990912p2
INSTALLATION_DIRS=	${RUBY_DOC}/html-parser

post-install:
	${INSTALL_DATA} ${WRKSRC}/README.html \
		${DESTDIR}${PREFIX}/${RUBY_DOC}/html-parser

.include "../../lang/ruby/modules.mk"
.include "../../mk/bsd.pkg.mk"
