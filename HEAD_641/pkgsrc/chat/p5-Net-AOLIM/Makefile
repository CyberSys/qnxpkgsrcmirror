# $NetBSD: Makefile,v 1.17 2008/10/19 19:17:41 he Exp $
#

DISTNAME=	Net-AOLIM-1.61
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	chat perl5
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.phonon.net/pub/Net-AOLIM/
COMMENT=	Perl5 module for connecting to AOL IM (TOC protocol)

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}/Net-AOLIM
PERL5_PACKLIST=	auto/Net/AOLIM/.packlist
REPLACE_PERL+=	AOLIM-example.pl

INSTALLATION_DIRS=	${PKGMANDIR}/man7

SUBST_CLASSES+=		paths
SUBST_FILES.paths=	MANIFEST
SUBST_SED.paths=	-e 's,^example\.pl,AOLIM-example.pl,g'
SUBST_STAGE.paths=	pre-configure

pre-configure:
	${MV} ${WRKSRC}/example.pl ${WRKSRC}/AOLIM-example.pl

post-install:
	${INSTALL_MAN} ${WRKSRC}/TOC.7 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man7

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
