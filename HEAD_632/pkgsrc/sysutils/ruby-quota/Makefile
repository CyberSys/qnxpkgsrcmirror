# $NetBSD: Makefile,v 1.13 2006/01/03 15:07:29 taca Exp $
#

DISTNAME=	ruby-quota-0.5.1
PKGNAME=	${RUBY_PKGPREFIX}-quota-0.5.1
PKGREVISION=	5
CATEGORIES=	sysutils ruby
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ruby-quota/}

MAINTAINER=	taca@NetBSD.org
HOMEPAGE=	http://sourceforge.net/projects/ruby-quota/
COMMENT=	Quota interface for Ruby

RUBY_HAS_ARCHLIB=	yes
USE_RUBY_EXTCONF=	yes
INSTALL_TARGET=		site-install

DOCS=		ChangeLog README
DOCSDIR=	${RUBY_DOCDIR}/quota

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
.for f in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/${f} ${DOCSDIR}/${f}
.endfor

.include "../../lang/ruby/modules.mk"
.include "../../mk/bsd.pkg.mk"
