# $NetBSD: Makefile,v 1.30 2007/03/24 19:21:29 joerg Exp $
#

DISTNAME=	arpwatch-2.1a13
PKGREVISION=	1
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.ee.lbl.gov/

MAINTAINER=	bouyer@NetBSD.org
COMMENT=	Monitor ARP activity on a network, maintaining a database

RCD_SCRIPTS=	arpwatch

GNU_CONFIGURE=	yes

CFLAGS.Darwin+=	-DBIND_8_COMPAT
LIBS+=		${BUILDLINK_LDADD.libpcap}

MAKE_ENV+=	VARBASE=${VARBASE:Q}
PLIST_SUBST+=	VARBASE=${VARBASE:Q}

SUBST_CLASSES+=		paths
SUBST_MESSAGE.paths=	Fixing hardcoded paths.
SUBST_STAGE.paths=	post-patch
SUBST_FILES.paths=	arpsnmp.8 arpwatch.8
SUBST_SED.paths=	-e 's,/usr/operator/arpwatch,${VARBASE}/db/arpwatch,g'

OWN_DIRS=	${VARBASE:Q}/db/arpwatch

INSTALLATION_DIRS=	${PKGMANDIR}/man8 sbin

pre-patch:
	f=arpwatch.h;							\
	${MV} ${WRKSRC}/$$f ${WRKSRC}/$$f-prepatch;			\
	${SED} -e '/Header/s|\$$||g' ${WRKSRC}/$$f-prepatch > ${WRKSRC}/$$f

post-install:
	${INSTALL_MAN} ${WRKSRC}/arpwatch.8 ${PREFIX}/${PKGMANDIR}/man8
	${INSTALL_MAN} ${WRKSRC}/arpsnmp.8 ${PREFIX}/${PKGMANDIR}/man8
	@${INSTALL_DATA_DIR} ${VARBASE}/db/arpwatch
	${TOUCH} ${VARBASE}/db/arpwatch/arp.dat
	${INSTALL_DATA_DIR} ${PREFIX}/share/arpwatch
	${INSTALL_DATA} ${WRKSRC}/ethercodes.dat ${PREFIX}/share/arpwatch

.include "../../net/libpcap/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
