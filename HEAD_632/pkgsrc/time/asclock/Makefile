# $NetBSD: Makefile,v 1.27 2006/12/27 13:37:40 joerg Exp $

DISTNAME=	asclock-classic-1.0
PKGNAME=	asclock-1.0
PKGREVISION=	1
CATEGORIES=	x11 time
MASTER_SITES=	${MASTER_SITE_LOCAL}	# www.asclock.org is no more

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	NeXTstep-like clock and calendar

NO_SRC_ON_FTP=	Already in MASTER_SITE_LOCAL

WRKSRC=		${WRKDIR}/asclock1.0
USE_IMAKE=	YES

LANGUAGES=	en de pt nl no it sv es hu br fr cs ru uk sl id da

PLIST_SRC=	${WRKDIR}/.PLIST_SRC

.include "../../mk/bsd.prefs.mk"

INSTALLATION_DIRS=	bin libexec

# Translate to two-letter abbreviations in /usr/share/misc/language.
#
post-extract:
	${MV} ${WRKSRC}/english ${WRKSRC}/en
	${MV} ${WRKSRC}/german ${WRKSRC}/de
	${MV} ${WRKSRC}/portuguese ${WRKSRC}/pt
	${MV} ${WRKSRC}/dutch ${WRKSRC}/nl
	${MV} ${WRKSRC}/norwegian ${WRKSRC}/no
	${MV} ${WRKSRC}/italian ${WRKSRC}/it
	${MV} ${WRKSRC}/swedish ${WRKSRC}/sv
	${MV} ${WRKSRC}/spanish ${WRKSRC}/es
	${MV} ${WRKSRC}/hungarian ${WRKSRC}/hu
	${MV} ${WRKSRC}/breton ${WRKSRC}/br
	${MV} ${WRKSRC}/french ${WRKSRC}/fr
	${MV} ${WRKSRC}/czech ${WRKSRC}/cs
	${MV} ${WRKSRC}/russian ${WRKSRC}/ru
	${MV} ${WRKSRC}/ukrainian ${WRKSRC}/uk
	${MV} ${WRKSRC}/slovene ${WRKSRC}/sl
	${MV} ${WRKSRC}/indonesian ${WRKSRC}/id
	${MV} ${WRKSRC}/danish ${WRKSRC}/da

pre-configure:
	${RM} -f ${WRKSRC}/month.xpm ${WRKSRC}/weekday.xpm ${WRKSRC}/clk.xpm
	${LN} -s ./en/month.xpm ${WRKSRC}/month.xpm
	${LN} -s ./en/weekday.xpm ${WRKSRC}/weekday.xpm
	${LN} -s ./xpm/color.xpm ${WRKSRC}/clk.xpm

do-install:
	${SED} -e "s,@PREFIX@,${PREFIX},g" \
		${FILESDIR}/asclock.sh > ${WRKDIR}/asclock.sh
	${INSTALL_SCRIPT} ${WRKDIR}/asclock.sh ${PREFIX}/bin/asclock
	${INSTALL_PROGRAM} ${WRKSRC}/asclock ${PREFIX}/libexec/asclock-classic
	${CAT} ${PKGDIR}/PLIST > ${PLIST_SRC}
.if (${OPSYS} == SunOS) || (${OPSYS} == "Linux") || (${OPSYS} == "Interix") || ${OPSYS} == "DragonFly" || ${OPSYS} == "Darwin"
	${INSTALL_MAN_DIR} ${PREFIX}/${PKGMANDIR}/man1
	${INSTALL_MAN} ${WRKSRC}/asclock.man ${PREFIX}/${PKGMANDIR}/man1/asclock.1
	@${ECHO} ${PKGMANDIR}/man1/asclock.1 >> ${PLIST_SRC}
.else
	${INSTALL_MAN_DIR} ${PREFIX}/${PKGMANDIR}/cat1
	${INSTALL_MAN} ${WRKSRC}/asclock.0 ${PREFIX}/${PKGMANDIR}/cat1/asclock.0
	@${ECHO} ${PKGMANDIR}/cat1/asclock.0 >> ${PLIST_SRC}
.endif
	${INSTALL_DATA_DIR} ${PREFIX}/share/asclock-classic
.for LANGUAGE in ${LANGUAGES}
	${INSTALL_DATA_DIR} ${PREFIX}/share/asclock-classic/${LANGUAGE}
	cd ${WRKSRC}/${LANGUAGE}; ${INSTALL_DATA} month.xpm weekday.xpm \
		${PREFIX}/share/asclock-classic/${LANGUAGE}
	@${ECHO} share/asclock-classic/${LANGUAGE}/month.xpm >> ${PLIST_SRC}
	@${ECHO} share/asclock-classic/${LANGUAGE}/weekday.xpm >> ${PLIST_SRC}
	@${ECHO} @dirrm share/asclock-classic/${LANGUAGE} >> ${PLIST_SRC}
.endfor
	@${ECHO} @dirrm share/asclock-classic >> ${PLIST_SRC}

.include "../../x11/libXext/buildlink3.mk"
.include "../../x11/libXpm/buildlink3.mk"
.include "../../x11/xextproto/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
