# $NetBSD: Makefile,v 1.13 2009/04/02 18:10:39 tez Exp $

DISTNAME=	Mail-Mbox-MessageParser-1.5000
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	2
CATEGORIES=	mail perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Mail/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Mail-Mbox-MessageParser/
COMMENT=	Perl5 module for parsing mail messages

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	p5-FileHandle-Unget-[0-9]*:../../devel/p5-FileHandle-Unget
DEPENDS+=	p5-Storable-[0-9]*:../../devel/p5-Storable

PERL5_PACKLIST=		auto/Mail/Mbox/MessageParser/.packlist
MAKE_PARAMS+=		< /dev/null

USE_TOOLS+=	grep gzip

SETTINGS+=	INSTALLDIRS=site
# XXX: might need adaptation if the programs are not
# in the base system
SETTINGS+=	BZIP=/usr/bin/bzip2
SETTINGS+=	BZIP2=/usr/bin/bzip2
SETTINGS+=	DIFF=/usr/bin/diff
SETTINGS+=	GREP=${GREP}
SETTINGS+=	GZIP=${GZIP_CMD}
SETTINGS+=	TZIP=

MAKE_PARAMS+=	${SETTINGS}

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
