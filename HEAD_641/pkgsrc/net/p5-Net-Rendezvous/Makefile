# $NetBSD: Makefile,v 1.5 2009/07/17 18:00:21 adrianp Exp $
#

DISTNAME=		Net-Rendezvous-0.90
PKGNAME=		p5-${DISTNAME}
PKGREVISION=		1
CATEGORIES=		net
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Net/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://search.cpan.org/dist/Net-Rendezvous/
COMMENT=		Module for DNS service discovery (Apple's Rendezvous)

DEPENDS+=		p5-Net-DNS-[0-9]*:../../net/p5-Net-DNS

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST=		auto/Net/Rendezvous/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
