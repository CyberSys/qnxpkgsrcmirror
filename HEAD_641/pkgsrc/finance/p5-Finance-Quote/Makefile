# $NetBSD: Makefile,v 1.12 2009/04/20 13:52:17 wiz Exp $

DISTNAME=	Finance-Quote-1.16
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	finance perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Finance/}

MAINTAINER=	damon@brodiefamily.org
HOMEPAGE=	http://finance-quote.sourceforge.net/
COMMENT=	Perl module to get stock quotes from Yahoo

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	p5-HTML-TableExtract>=1.0:../../www/p5-HTML-TableExtract
DEPENDS+=	p5-Crypt-SSLeay-[0-9]*:../../security/p5-Crypt-SSLeay
DEPENDS+=	p5-libwww>=5.48:../../www/p5-libwww

REPLACE_PERL=	lib/Finance/Quote.pm
REPLACE_PERL+=	lib/Finance/Quote/*.pm
REPLACE_PERL+=	lib/Finance/Quote/Yahoo/*.pm

CONFLICTS=	p5-finance-quote-[0-9]*

USE_LANGUAGES=	# empty

PERL5_PACKLIST=		auto/Finance/Quote/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
