# $NetBSD: Makefile,v 1.12 2009/07/30 22:41:36 seb Exp $
#

DISTNAME=	Devel-Declare-0.005008
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Devel/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Devel-Declare/
COMMENT=	Declarator magic for perl
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-B-Hooks-EndOfScope>0.05:../../devel/p5-B-Hooks-EndOfScope
DEPENDS+=	p5-Sub-Name-[0-9]*:../../devel/p5-Sub-Name

BUILD_DEPENDS+=	p5-ExtUtils-Depends>=0.302:../../devel/p5-ExtUtils-Depends
BUILD_DEPENDS+= p5-B-Compiling-[0-9]*:../../devel/p5-B-Compiling # t/lines.t

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=	c

PERL5_PACKLIST=	auto/Devel/Declare/.packlist
PERL5_MODULE_TYPE=	Module::Install
BUILDLINK_DEPMETHOD.p5-B-Hooks-OP-Check=	full
BUILDLINK_API_DEPENDS.p5-B-Hooks-OP-Check+=	p5-B-Hooks-OP-Check>=0.18

.include "../../devel/p5-B-Hooks-OP-Check/buildlink3.mk"
.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
