# $NetBSD: Makefile,v 1.16 2009/07/16 11:00:25 minskim Exp $

DISTNAME=	actionpack-2.3.2
PKGNAME=	${RUBY_PKGPREFIX}-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	www

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	http://rubyforge.org/projects/actionpack/
COMMENT=	Two-step approach to web response generation

DEPENDS+=	${RUBY_PKGPREFIX}-activesupport>=2.3.2:../../devel/ruby-activesupport

.include "../../misc/rubygems/rubygem.mk"

pre-configure:
	${RM} ${WRKSRC}/lib/action_controller/http_authentication.rb.orig

.include "../../mk/bsd.pkg.mk"
