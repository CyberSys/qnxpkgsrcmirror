# $NetBSD: Makefile,v 1.27 2009/07/26 07:04:28 seb Exp $
#

DISTNAME=	Moose-0.88
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Test/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://moose.perl.org/
COMMENT=	Postmodern object system for Perl 5
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-Class-MOP>=0.89:../../devel/p5-Class-MOP
DEPENDS+=	p5-Data-OptList-[0-9]*:../../devel/p5-Data-OptList
DEPENDS+=	p5-List-MoreUtils>=0.12:../../devel/p5-List-MoreUtils
DEPENDS+=	p5-Sub-Exporter>=0.980:../../devel/p5-Sub-Exporter
DEPENDS+=	p5-Sub-Name-[0-9]*:../../devel/p5-Sub-Name
DEPENDS+=	p5-Task-Weaken-[0-9]*:../../devel/p5-Task-Weaken

BUILD_DEPENDS+=	p5-DBM-Deep-[0-9]*:../../databases/p5-DBM-Deep
BUILD_DEPENDS+=	p5-DateTime-Calendar-Mayan-[0-9]*:../../time/p5-DateTime-Calendar-Mayan
BUILD_DEPENDS+=	p5-DateTime-Format-MySQL-[0-9]*:../../time/p5-DateTime-Format-MySQL
BUILD_DEPENDS+=	p5-Declare-Constraints-Simple-[0-9]*:../../devel/p5-Declare-Constraints-Simple
BUILD_DEPENDS+=	p5-IO-String-[0-9]*:../../devel/p5-IO-String
BUILD_DEPENDS+=	p5-Locale-US-[0-9]*:../../misc/p5-Locale-US
BUILD_DEPENDS+=	p5-Module-Refresh-[0-9]*:../../devel/p5-Module-Refresh
BUILD_DEPENDS+=	p5-Params-Coerce-[0-9]*:../../devel/p5-Params-Coerce
BUILD_DEPENDS+=	p5-Regexp-Common-[0-9]*:../../textproc/p5-Regexp-Common
BUILD_DEPENDS+=	p5-Test-Deep-[0-9]*:../../devel/p5-Test-Deep
BUILD_DEPENDS+=	p5-Test-Exception>=0.27:../../devel/p5-Test-Exception
BUILD_DEPENDS+=	p5-Test-Output-[0-9]*:../../devel/p5-Test-Output
BUILD_DEPENDS+=	p5-Test-Pod-Coverage-[0-9]*:../../devel/p5-Test-Pod-Coverage
BUILD_DEPENDS+=	p5-Test-Pod-[0-9]*:../../devel/p5-Test-Pod
BUILD_DEPENDS+=	p5-Test-Simple>=0.77:../../devel/p5-Test-Simple
BUILD_DEPENDS+=	p5-Test-Warn-[0-9]*:../../devel/p5-Test-Warn
BUILD_DEPENDS+=	p5-URI-[0-9]*:../../www/p5-URI
BUILD_DEPENDS+=	p5-libwww-[0-9]*:../../www/p5-libwww

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/Moose/.packlist

# keep bundled Module::Install - it's modified
MAKE_PARAMS+=		--skipdeps
#PERL5_MODULE_TYPE=	Module::Install

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
