# $NetBSD: Makefile,v 1.1.1.1 2009/04/15 07:44:49 minskim Exp $
# TeX Live Revision 9009

DISTNAME=	hyphen-norwegian
PKGNAME=	tex-${DISTNAME}-2008.9009

MAINTAINER=	minskim@NetBSD.org
COMMENT=	Hyphenation patterns for Norwegian

CONFLICTS+=	teTeX-texmf<=3.0nb12
DEPENDS+=	tex-hyph-utf8-[0-9]*:../../print/tex-hyph-utf8

TEX_HYPHEN_DAT+=	bokmal loadhyph-nb.tex
TEX_HYPHEN_DAT+=	= norwegian
TEX_HYPHEN_DAT+=	= norsk
TEX_HYPHEN_DAT+=	nynorsk loadhyph-nn.tex
TEX_HYPHEN_DEF+=	\addlanguage{bokmal}{loadhyph-nb.tex}{}{2}{2}
TEX_HYPHEN_DEF+=	\addlanguage{norwegian}{loadhyph-nb.tex}{}{2}{2}
TEX_HYPHEN_DEF+=	\addlanguage{norsk}{loadhyph-nb.tex}{}{2}{2}
TEX_HYPHEN_DEF+=	\addlanguage{nynorsk}{loadhyph-nn.tex}{}{2}{2}

.include "../../print/texlive/module.mk"
.include "../../mk/bsd.pkg.mk"
