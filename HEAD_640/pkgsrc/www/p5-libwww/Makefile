# $NetBSD: Makefile,v 1.65 2008/12/16 23:07:50 he Exp $

DISTNAME=	libwww-perl-5.822
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
SVR4_PKGNAME=	p5lww
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=WWW/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/libwww-perl/
COMMENT=	Perl5 library for WWW access

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	p5-Compress-Zlib>=1.10:../../devel/p5-Compress-Zlib
DEPENDS+=	p5-Crypt-SSLeay>=0:../../security/p5-Crypt-SSLeay
DEPENDS+=	p5-HTML-Parser>=3.33:../../www/p5-HTML-Parser
DEPENDS+=	p5-IO-Socket-SSL-[0-9]*:../../security/p5-IO-Socket-SSL
DEPENDS+=	p5-MIME-Base64>=2.1:../../converters/p5-MIME-Base64
DEPENDS+=	p5-Net>=1.09:../../net/p5-Net		# for Net::FTP>=2.58
DEPENDS+=	p5-URI>=1.10:../../www/p5-URI
DEPENDS+=	p5-Digest-MD5-[0-9]*:../../security/p5-Digest-MD5

USE_LANGUAGES=		# empty

PERL5_PACKLIST=		auto/LWP/.packlist
MAKE_ENV+=		PERL_MM_USE_DEFAULT=1

.include "../../mk/bsd.prefs.mk"
.include "options.mk"

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
