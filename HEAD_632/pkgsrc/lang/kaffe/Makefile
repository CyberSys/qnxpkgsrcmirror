# $NetBSD: Makefile,v 1.70 2007/07/10 21:16:43 minskim Exp $
#

.include "Makefile.common"

PKGREVISION=	2

CONFLICTS+=		kaffe-nox11-[0-9]*

USE_PKGLOCALEDIR=	yes

CONFIGURE_ARGS+=	--disable-native-awt
CONFIGURE_ARGS+=	--disable-gtk-peer
CONFIGURE_ARGS+=	--without-x
CONFIGURE_ARGS+=	--without-esd
CONFIGURE_ARGS+=	--disable-esdtest
MAKE_ENV+=		PKGLOCALEDIR=${PREFIX}/${PKGLOCALEDIR}

JAVA_WRAPPERS=		appletviewer jar java javac javadoc javah javakey \
			javap jdb rmic rmiregistry serialver

CONF_FILES=		${JAVA_HOME}/jre/lib/security/java.security.default \
			${JAVA_HOME}/jre/lib/security/java.security

.include "../../mk/bsd.prefs.mk"

UNLIMIT_RESOURCES=        datasize
LIBS+= -lltdl

PRINT_PLIST_AWK+=	/^java\/kaffe\/jre\/lib\/security\/java.security$$/ \
				{ next; }

.include "../../devel/gettext-lib/buildlink3.mk"

post-install:
	${INSTALL_DATA} ${WRKSRC}/license.terms ${JAVA_HOME}

.include "../../mk/java-env.mk"
.include "../../mk/bsd.pkg.mk"
