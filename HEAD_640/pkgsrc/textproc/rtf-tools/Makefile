# $NetBSD: Makefile,v 1.21 2007/01/07 09:14:13 rillig Exp $
#

DISTNAME=		RTF-1.10
PKGNAME=		rtf-tools-1.10
PKGREVISION=		2
CATEGORIES=		textproc
MASTER_SITES=		http://www.snake.net/software/RTF/
EXTRACT_SUFX=		.tar.Z

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		${MASTER_SITES}
COMMENT=		RTF to troff/groff/text converter

WRKSRC=			${WRKDIR}/rtf
INSTALL_TARGET=		install install.man
INSTALLATION_DIRS=	bin ${PKGMANDIR}/manl

SUBST_CLASSES+=		rtf
SUBST_STAGE.rtf=	pre-configure
SUBST_MESSAGE.rtf=	Fixing absolute paths in Makefiles.
SUBST_FILES.rtf=	Makefile */Makefile
SUBST_SED.rtf+=		-e 's|-DVARARGS|-DSTDARGS|g'
SUBST_SED.rtf+=		-e 's|/usr/local|${PREFIX}|g'
SUBST_SED.rtf+=		-e 's|/usr/man|${PREFIX}/man|'
SUBST_SED.rtf+=		-e 's|\(LOCALBINDIR =.*\)|\1/bin|'

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/rtf-tools
	${INSTALL_DATA} ${WRKSRC}/h/standard-names ${PREFIX}/lib/rtf-tools
	cd ${WRKSRC}/lib && ${INSTALL_DATA} ansi-gen ansi-sym \
		ansicpg1252-gen ansicpg1252-sym \
		mac-gen mac-sym pc-gen pc-sym pca-gen pca-sym \
		${PREFIX}/lib/rtf-tools
	${INSTALL_DATA} ${WRKSRC}/rtf2text/text-map ${PREFIX}/lib/rtf-tools
	cd ${WRKSRC}/rtf2troff && ${INSTALL_DATA} troff-map groff-map \
		xroff-map dwbtroff-map troff-man-map troff-me-map \
		troff-mm-map troff-ms-map ${PREFIX}/lib/rtf-tools
	${INSTALL_SCRIPT} ${WRKSRC}/util/rtfchkmap ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/util/rtfmaptortf ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/rtf2null/rtf2null ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/rtf2text/rtf2text ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/rtf2troff/rtf2troff ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/rtf2troff/rtf2groff ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/rtfdiag/rtfdiag ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/rtfindent/rtfindent ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/rtfwc/rtfwc ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man/rtf2troff.man \
		${PREFIX}/${PKGMANDIR}/manl/rtf2troff.l

.include "../../devel/libts/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
