# $NetBSD: Makefile,v 1.15 2007/02/22 19:27:21 wiz Exp $
#

DISTNAME=	HTTP-Request-Form-0.7
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	3
SVR4_PKGNAME=	p5htt
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=HTTP/}

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Construct HTTP::Request objects for form processing

DEPENDS+=	p5-libwww-[0-9]*:../../www/p5-libwww
DEPENDS+=	p5-URI-[0-9]*:../../www/p5-URI
DEPENDS+=	p5-HTML-Tagset-[0-9]*:../../www/p5-HTML-Tagset
DEPENDS+=	p5-HTML-Tree-[0-9]*:../../www/p5-HTML-Tree

PERL5_PACKLIST=		auto/HTTP/Request/Form/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
