# $NetBSD: Makefile,v 1.22 2008/10/19 19:17:42 he Exp $
#

DISTNAME=	Jcode-2.07
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
SVR4_PKGNAME=	p5jco
CATEGORIES=	converters japanese perl5
MASTER_SITES=	http://openlab.ring.gr.jp/Jcode/

MAINTAINER=	tech-pkg-ja@jp.NetBSD.org
HOMEPAGE=	http://openlab.ring.gr.jp/Jcode/index.html
COMMENT=	Perl5 module for handling various Japanese charsets

DEPENDS+=	p5-MIME-Base64>=2.1:../../converters/p5-MIME-Base64

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST=		auto/Jcode/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
