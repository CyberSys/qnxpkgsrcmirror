# $NetBSD: Makefile,v 1.1.1.1 2008/10/31 00:30:00 he Exp $

DISTNAME=		Module-CPANTS-Analyse-0.82
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Module/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://search.cpan.org/dist/Module-CPANTS-Analyse/
COMMENT=		Perl5 module to generate Kwalitee ratings for a distribution

DEPENDS+=	p5-Archive-Any>=0.06:../../archivers/p5-Archive-Any
DEPENDS+=	p5-Archive-Tar>=1.30:../../archivers/p5-Archive-Tar
DEPENDS+=	p5-Array-Diff>=0.04:../../devel/p5-Array-Diff
DEPENDS+=	p5-CPAN-DistnameInfo>=0.06:../../devel/p5-CPAN-DistnameInfo
DEPENDS+=	p5-Class-Accessor>=0.19:../../devel/p5-Class-Accessor
DEPENDS+=	p5-File-Find-Rule>=0:../../devel/p5-File-Find-Rule
DEPENDS+=	p5-File-Slurp>=0:../../devel/p5-File-Slurp
DEPENDS+=	p5-IO-Capture>=0.05:../../devel/p5-IO-Capture
DEPENDS+=	p5-List-MoreUtils>=0:../../devel/p5-List-MoreUtils
DEPENDS+=	p5-Module-ExtractUse>=0.18:../../devel/p5-Module-ExtractUse
DEPENDS+=	p5-Module-Pluggable>=2.96:../../devel/p5-Module-Pluggable
DEPENDS+=	p5-Pod-Simple>=2.02:../../textproc/p5-Pod-Simple
DEPENDS+=	p5-Readonly>=0:../../devel/p5-Readonly
DEPENDS+=	p5-Software-License>=0.003:../../devel/p5-Software-License
DEPENDS+=	p5-Test-YAML-Meta>=0.11:../../devel/p5-Test-YAML-Meta
DEPENDS+=	p5-Text-CSV_XS>=0.45:../../textproc/p5-Text-CSV_XS
DEPENDS+=	p5-YAML-Syck>=0.95:../../textproc/p5-YAML-Syck
DEPENDS+=	p5-version>=0.73:../../devel/p5-version

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=		# empty
PERL5_PACKLIST=		auto/Module/CPANTS/Analyse/.packlist
PERL5_MODULE_TYPE=	Module::Build

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
