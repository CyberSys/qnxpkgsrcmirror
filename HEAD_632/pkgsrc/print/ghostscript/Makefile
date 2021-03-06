# $NetBSD: Makefile,v 1.39 2007/11/17 12:04:13 rillig Exp $

DISTNAME=	ghostscript-8.60
PKGREVISION=	1
CATEGORIES=	print
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ghostscript/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://ghostscript.sourceforge.net/
COMMENT=	Postscript interpreter

PKG_DESTDIR_SUPPORT=	user-destdir

CONFLICTS+=		ghostscript-afpl-[0-9]*
CONFLICTS+=		ghostscript-esp{,-nox11}-[0-9]*
CONFLICTS+=		ghostscript-gnu{,-nox11,-x11}-[0-9]*

DEPENDS+=		ghostscript-fonts>=6.0:../../fonts/ghostscript-fonts

USE_TOOLS+=		gmake perl:run lex
GNU_CONFIGURE=		yes
MAKE_JOBS_SAFE=		no

REPLACE_PERL+=		lib/fixmswrd.pl

GS_RESOURCEDIR=		${PREFIX}/share/ghostscript/Resource

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "QNX"
# configure script seems to tickle some ksh quoting bug
USE_TOOLS+=		bash
CONFIG_SHELL=		${LOCALBASE}/bin/bash
WRAPPER_SHELL=		${LOCALBASE}/bin/bash
.endif


.if defined(PAPERSIZE) && (${PAPERSIZE} == "A4" || ${PAPERSIZE} == "a4")
CFLAGS+=		-DA4
.endif

REQD_DIRS+=		share/ghostscript

SUBST_CLASSES+=		resdir
SUBST_STAGE.resdir=	post-extract
SUBST_MESSAGE.resdir=	Fixing resource directory path
SUBST_FILES.resdir=	lib/gs_res.ps
SUBST_SED.resdir=	-e "s|/Resource/|${GS_RESOURCEDIR}/|g"

.if ${OPSYS} == "HPUX"
CONFIGURE_ENV+=		ac_cv_func_fopen64=no
.endif

post-extract:
	${MKDIR} ${WRKSRC}/bin
	${MKDIR} ${WRKSRC}/obj
#	${MV} ${WRKSRC}/jasper ${WRKSRC}/jasper.dontuse
	${MV} ${WRKSRC}/libpng ${WRKSRC}/libpng.dontuse
#	${MV} ${WRKSRC}/zlib ${WRKSRC}/zlib.dontuse

.include "options.mk"

.include "../../graphics/png/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
# pkgsrc jasper is too new
#.include "../../graphics/jasper/buildlink3.mk"
.if ${OPSYS} == "QNX"
# configure looks for this
.include "../../converters/libiconv/buildlink3.mk"
.endif
.include "../../mk/bsd.pkg.mk"
