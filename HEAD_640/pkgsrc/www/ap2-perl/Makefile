# $NetBSD: Makefile,v 1.31 2008/10/19 19:19:01 he Exp $

DISTNAME=	mod_perl-2.0.4
PKGREVISION=	2
PKGNAME=	${APACHE_PKG_PREFIX}-${DISTNAME:S/mod_//}
CATEGORIES=	www perl5
MASTER_SITES=	http://perl.apache.org/dist/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://perl.apache.org/
COMMENT=	Module that embeds a Perl interpreter into Apache

PKG_DESTDIR_SUPPORT=	user-destdir

CONFLICTS=	ap-perl-[0-9]* p5-Apache-Test-[0-9]*

PKG_APACHE_ACCEPTED=	apache2 apache22

APACHE_MODULE=		# defined
PERL5_PACKLIST=		auto/mod_perl2/.packlist

MAKE_PARAMS+=		MP_APXS=${APXS}

MODPERLDOCSDIR=	${PREFIX}/share/doc/mod_perl
INSTALLATION_DIRS=	${MODPERLDOCSDIR}

post-install:
	${CP} -R ${WRKSRC}/docs/* ${DESTDIR}${MODPERLDOCSDIR}

.include "../../lang/perl5/module.mk"
.include "../../mk/apache.mk"
.include "../../mk/bsd.pkg.mk"
