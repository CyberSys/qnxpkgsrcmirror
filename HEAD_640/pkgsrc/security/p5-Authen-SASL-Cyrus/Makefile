# $NetBSD: Makefile,v 1.13 2008/10/19 19:18:44 he Exp $
#

DISTNAME=	Authen-SASL-Cyrus-0.07
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	6
CATEGORIES=	security perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Authen/}

MAINTAINER=	cube@cubidou.net
HOMEPAGE=	http://search.cpan.org/dist/Authen-SASL-Cyrus/
COMMENT=	Perl module to handle Cyrus protocol for SASL authentication

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	p5-Authen-SASL-[0-9]*:../../security/p5-Authen-SASL

PERL5_PACKLIST=	auto/Authen/SASL/Cyrus/.packlist

.include "../../lang/perl5/module.mk"
.include "../../security/cyrus-sasl/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
