# $NetBSD: Makefile,v 1.8 2005/08/06 06:19:30 jlam Exp $
#

DISTNAME=		Crypt-OpenSSL-Random-0.03
PKGNAME=		p5-${DISTNAME}
PKGREVISION=		4
SVR4_PKGNAME=		p5ord
CATEGORIES=		security perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Crypt/}

MAINTAINER=		heinz@NetBSD.org
HOMEPAGE=		http://perl-openssl.sourceforge.net/
COMMENT=		Perl5 wrapper module for OpenSSL pseudo-random number generator

PERL5_PACKLIST=		auto/Crypt/OpenSSL/Random/.packlist

.include "../../security/openssl/buildlink3.mk"
.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
