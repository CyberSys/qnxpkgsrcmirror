# $NetBSD: Makefile,v 1.22 2008/03/04 18:12:59 jlam Exp $
#

DISTNAME=	gap4r3
PKGNAME=	gap-4.3.5
PKGREVISION=	1
CATEGORIES=	math
MASTER_SITES=	ftp://ftp-gap.dcs.st-and.ac.uk/pub/gap/gap4/ \
		ftp://ftp.math.rwth-aachen.de/pub/gap/gap4/ \
		ftp://pell.anu.edu.au/pub/algebra/gap4/ \
		ftp://ftp.ccs.neu.edu/pub/mirrors/ftp-gap.dcs.st-and.ac.uk/pub/gap/gap4/
DISTFILES=		${DISTNAME}${EXTRACT_SUFX}	\
			fix4r3n5.tar.gz

MAINTAINER=	cjep@NetBSD.org
HOMEPAGE=	http://www.gap-system.org/
COMMENT=	Computational group theory and discrete algebra language

EXTRACT_ONLY=		${DISTNAME}${EXTRACT_SUFX}
SITES.fix4r3n5.tar.gz=	${MASTER_SITES:=bugfixes/}

LICENSE=	no-commercial-use

PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=	gtar

GNU_CONFIGURE=	yes
CONFIGURE_ENV+=	PREFIX=${PREFIX:Q}
BUILD_TARGET=	default

GAP_DIRECTORY=	${PREFIX}/lib/gap4.3
GAP_PLATFORM=	${MACHINE_GNU_PLATFORM}-${CC}

PLIST_SUBST+=	GAP_PLATFORM=${GAP_PLATFORM:Q}

INSTALLATION_DIRS=	bin

post-extract:
	( cd ${WRKSRC} && ${GTAR} zxf ${DISTDIR}/fix4r3n5.tar.gz )

do-install:
	${INSTALL_PROGRAM_DIR} ${DESTDIR}${GAP_DIRECTORY}
	${INSTALL_PROGRAM_DIR} ${DESTDIR}${GAP_DIRECTORY}/bin
	${INSTALL_PROGRAM_DIR} ${DESTDIR}${GAP_DIRECTORY}/bin/${GAP_PLATFORM}
	${INSTALL_PROGRAM} ${WRKSRC}/bin/${GAP_PLATFORM}/gap		\
				${DESTDIR}${GAP_DIRECTORY}/bin/${GAP_PLATFORM}
	${INSTALL_SCRIPT} ${WRKSRC}/bin/${GAP_PLATFORM}/gac		\
				${DESTDIR}${GAP_DIRECTORY}/bin/${GAP_PLATFORM}
	${INSTALL_SCRIPT} ${WRKSRC}/bin/gap.sh 				\
				${DESTDIR}${PREFIX}/bin/gap
	${INSTALL_DATA} ${WRKSRC}/description5 				\
				${DESTDIR}${GAP_DIRECTORY}
	${INSTALL_DATA} ${WRKSRC}/sysinfo.gap				\
				${DESTDIR}${GAP_DIRECTORY}

	for I in cnf doc etc grp lib pkg prim small trans tst; do	\
		${CP} -R ${WRKSRC}/$$I ${DESTDIR}${GAP_DIRECTORY};	\
	done

.include "../../mk/bsd.pkg.mk"
