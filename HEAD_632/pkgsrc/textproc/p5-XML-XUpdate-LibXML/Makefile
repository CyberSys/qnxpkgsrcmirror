# $NetBSD: Makefile,v 1.9 2006/11/05 14:28:06 seb Exp $
#

DISTNAME=	XML-XUpdate-LibXML-0.6.0
PKGNAME=	p5-${DISTNAME}
SVR4_PKGNAME=	p5xlx
CATEGORIES=	textproc perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=XML/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/XML-XUpdate-LibXML/
COMMENT=	Simple implementation of XUpdate format based on and XML::LibXML

DEPENDS+=	p5-XML-LibXML>=1.54:../../textproc/p5-XML-LibXML
DEPENDS+=	p5-XML-LibXML-Iterator-[0-9]*:../../textproc/p5-XML-LibXML-Iterator

PERL5_PACKLIST=	auto/XML/XUpdate/LibXML/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
