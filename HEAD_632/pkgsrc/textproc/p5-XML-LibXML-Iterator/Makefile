# $NetBSD: Makefile,v 1.12 2007/11/18 16:05:47 seb Exp $
#

DISTNAME=	XML-LibXML-Iterator-1.04
PKGNAME=	p5-${DISTNAME}
SVR4_PKGNAME=	p5xlx
CATEGORIES=	textproc perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=XML/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/XML-LibXML-Iterator/
COMMENT=	Iterator for XML::LibXML parsed documents

DEPENDS+=	p5-XML-LibXML>=1.52:../../textproc/p5-XML-LibXML
DEPENDS+=	p5-XML-NodeFilter-[0-9]*:../../textproc/p5-XML-NodeFilter

PERL5_PACKLIST=	auto/XML/LibXML/Iterator/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
