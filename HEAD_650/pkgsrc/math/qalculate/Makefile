# $NetBSD: Makefile,v 1.43 2013/07/15 02:02:26 ryoon Exp $

DISTNAME=	libqalculate-0.9.7
PKGNAME=	qalculate-0.9.7
PKGREVISION=	6
CATEGORIES=	math
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=qalculate/}

MAINTAINER=	adam@NetBSD.org
HOMEPAGE=	http://qalculate.sourceforge.net/
COMMENT=	Modern multi-purpose desktop calculator (console version)

USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
USE_PKGLOCALEDIR=	yes
USE_TOOLS+=		autoconf gmake intltool msgfmt pkg-config
GNU_CONFIGURE=		yes
PKGCONFIG_OVERRIDE=	${WRKSRC}/libqalculate.pc.in

UNLIMIT_RESOURCES=	datasize

SUBST_CLASSES+=		pthread
SUBST_FILES.pthread=	libqalculate.pc.in
SUBST_SED.pthread+=	-e 's,@PTHREAD_LIBS@,${PTHREAD_LDFLAGS} ${PTHREAD_LIBS},g'
SUBST_STAGE.pthread=	post-patch

PTHREAD_AUTO_VARS=	yes

pre-configure:
	${RUN} cd ${WRKSRC}; autoconf

.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/readline/buildlink3.mk"
.include "../../math/cln/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
