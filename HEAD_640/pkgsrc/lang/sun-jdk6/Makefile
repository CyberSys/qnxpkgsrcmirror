# $NetBSD: Makefile,v 1.11 2009/02/08 00:23:20 christos Exp $

DISTNAME=	jdk-6u12-linux-${DIST_ARCH}
#PKGREVISION=    1
PKGNAME=	sun-jdk6-6.0.12
MASTER_SITES=	# empty

DOWNLOAD_NAME=	JDK 6u12
SHORT_NAME=	JDK

DEPENDS+=	${PKGNAME_NOREV:S/jdk/jre/}*:../../lang/sun-jre6

WRKSRC=		${WRKDIR}/jdk1.6.0_12
JAVA_WRAPPERS=	appletviewer apt extcheck idlj jar jarsigner \
		javac javadoc javah javap jdb rmic serialver

LICENSE=	sun-jdk6-license

.include "../../lang/sun-jre6/Makefile.common"

# Remove parts that are in common with the JRE
#
post-extract:
	common=`${AWK} '/^#.*/ { next } /^$$/ { next } { print }' ${FILESDIR}/common`; \
	cd ${WRKSRC}; for i in $$common; do				\
		if [ -d $$i ]; then					\
			${RM} -rf $$i;					\
		else							\
			${RM} -f $$i;					\
		fi;							\
	done
	${LN} -sf . ${WRKSRC}/jre

.include "../../mk/bsd.pkg.mk"
