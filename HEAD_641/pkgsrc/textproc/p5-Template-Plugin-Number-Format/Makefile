# $NetBSD: Makefile,v 1.5 2008/10/19 19:18:55 he Exp $
#

DISTNAME=	Template-Plugin-Number-Format-1.02
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Template/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Number-Format/
COMMENT=	Plugin/filter interface to Number::Format

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	p5-Template-Toolkit>=2.07:../../www/p5-Template-Toolkit
DEPENDS+=	p5-Number-Format-[0-9]*:../../textproc/p5-Number-Format

PERL5_PACKLIST=		auto/Template/Plugin/Number/Format/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
