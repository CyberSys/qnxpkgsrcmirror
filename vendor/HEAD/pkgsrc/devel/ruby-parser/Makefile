# $NetBSD: Makefile,v 1.13 2013/09/15 10:11:05 taca Exp $

DISTNAME=	ruby_parser-3.2.2
PKGNAME=	${RUBY_PKGPREFIX}-${DISTNAME:S/ruby_//}
CATEGORIES=	devel

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://rubyforge.org/projects/parsetree/
COMMENT=	Ruby parser written in pure ruby
LICENSE=	mit

DEPENDS+=	${RUBY_PKGPREFIX}-sexp-processor>=4.1<5:../../devel/ruby-sexp-processor

CONFLICTS+=	ruby[1-9][0-9]-ruby-parser-[0-9]*

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"
