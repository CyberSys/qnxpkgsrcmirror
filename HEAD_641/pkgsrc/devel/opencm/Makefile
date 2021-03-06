# $NetBSD: Makefile,v 1.46 2009/05/20 00:58:14 wiz Exp $
#

DISTNAME=	${OPENCM_VERSION}-2-src
PKGNAME=	${OPENCM_VERSION:C/alpha/rc/}
PKGREVISION=	5
CATEGORIES=	devel scm
MASTER_SITES=	http://www.opencm.org/releases/
EXTRACT_SUFX=	.tgz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.opencm.org/
COMMENT=	Secure, high-integrity replacement for CVS

WRKSRC=		${WRKDIR}/${OPENCM_VERSION}/base
USE_TOOLS+=	gmake gzip makeinfo lex
GNU_CONFIGURE=	YES
CONFIGURE_ARGS+=	--with-ssl-dir=${BUILDLINK_PREFIX.openssl}
CONFIGURE_ARGS+=	KRB5_BUILDLINK=${KRB5BASE:Q}

CHECK_INTERPRETER_SKIP+=	share/opencm/tools/cvsconvert.py

OPENCM_VERSION=	opencm-0.1.2alpha8

CONF_FILES=	${PREFIX}/share/examples/opencm/opencm.conf \
		${PKG_SYSCONFDIR}/opencm.conf

INFO_FILES=	# PLIST

CPPFLAGS+=	-D__unix__
MAKE_ENV+=	GZIP_CMD=${GZIP_CMD:Q}

post-install:
	gzip -d ${PREFIX}/${PKGINFODIR}/opencm.info.gz

.include "../../devel/boehm-gc/buildlink3.mk"
.include "../../devel/ncurses/buildlink3.mk"
.include "../../devel/readline/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../mk/krb5.buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
