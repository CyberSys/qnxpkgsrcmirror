# $NetBSD: Makefile,v 1.3 2008/10/19 19:19:08 he Exp $
#

DISTNAME=	HTML-Tiny-1.03
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=HTML/}

MAINTAINER=	heinz@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/HTML-Tiny/
COMMENT=	Lightweight, dependency free HTML/XML generation in Perl

PKG_DESTDIR_SUPPORT=	user-destdir

#PERL5_MODULE_TYPE=	Module::Build
PERL5_PACKLIST=		auto/HTML/Tiny/.packlist
USE_LANGUAGES=		# none

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
