# $NetBSD: Makefile,v 1.15 2009/05/19 08:59:32 wiz Exp $
#

DISTNAME=		Crypt-OpenSSL-RSA-0.25
PKGNAME=		p5-${DISTNAME}
PKGREVISION=		2
SVR4_PKGNAME=		p5ors
CATEGORIES=		security perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Crypt/}

MAINTAINER=		heinz@NetBSD.org
HOMEPAGE=		http://perl-openssl.sourceforge.net/
COMMENT=		Perl5 wrapper module for the OpenSSL RSA functions
#LICENSE=		gnu-gpl-v2 # under same terms as Perl

PKG_DESTDIR_SUPPORT=	user-destdir
PKG_INSTALLATION_TYPES=	overwrite pkgviews

DEPENDS+=		p5-Crypt-OpenSSL-Bignum-[0-9]*:../../security/p5-Crypt-OpenSSL-Bignum
DEPENDS+=		p5-Crypt-OpenSSL-Random-[0-9]*:../../security/p5-Crypt-OpenSSL-Random

USE_LANGUAGES=		c

PERL5_PACKLIST=		auto/Crypt/OpenSSL/RSA/.packlist

.include "../../security/openssl/buildlink3.mk"
.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
