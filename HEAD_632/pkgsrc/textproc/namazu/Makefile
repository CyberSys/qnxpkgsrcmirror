# $NetBSD: Makefile,v 1.1 2007/09/20 20:53:31 wiz Exp $

DISTNAME=	namazu-2.0.17
PKGREVISION=	1
CATEGORIES=	japanese textproc www
MASTER_SITES=	http://www.namazu.org/stable/ \
		http://namazu.ipmedia.de/stable/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.namazu.org/index.html.en
COMMENT=	Full-text search system intended for easy use

DEPENDS+=	p5-File-MMagic>=1.25:../../misc/p5-File-MMagic
DEPENDS+=	p5-nkf>=1.7:../../converters/p5-nkf

CONFLICTS+=	namazu-[0-9]*

USE_PKGLOCALEDIR=	yes
USE_TOOLS+=		perl:run
GNU_CONFIGURE=		yes
USE_LANGUAGES=		c
USE_LIBTOOL=		yes
TEST_TARGET=		check

BUILD_DEFS+=		PKG_SYSCONFBASE
CONFIGURE_ARGS+=	--localstatedir=${DATADIR:Q} \
			--libexecdir=${PREFIX}/libexec/cgi-bin \
			--sysconfdir=${PKG_SYSCONFBASE:Q}
CONFIGURE_ENV+=		KAKASI="module_kakasi"
CONFIGURE_ENV+=		ac_cv_path_KAKASI="module_kakasi"
CONFIGURE_ENV+=		CHASEN="module_chasen"
CONFIGURE_ENV+=		ac_cv_path_CHASEN="module_chasen"
CONFIGURE_ENV+=		MECAB="module_mecab"
CONFIGURE_ENV+=		ac_cv_path_MECAB="module_mecab"
DATADIR=		${PREFIX}/libdata
EXAMPLESDIR=		${PREFIX}/share/examples/namazu
EXAMPLES=		mknmzrc namazurc

SUBST_CLASSES+=		wakati
SUBST_STAGE.wakati=	pre-configure
SUBST_FILES.wakati=	pl/conf.pl.in
SUBST_SED.wakati=	-e 's|@OPT_WAKATI_DEFAULT@|none|'

.include "../../mk/bsd.prefs.mk"

PKG_SYSCONFSUBDIR=	namazu
.for f in ${EXAMPLES}
CONF_FILES+=		${EXAMPLESDIR}/${f}	${PKG_SYSCONFDIR}/${f}
.endfor
MAKE_DIRS+=		${DATADIR}/namazu/index
OWN_DIRS+=		${PKG_SYSCONFDIR} ${DATADIR}/namazu

post-install:
	${INSTALL_DATA_DIR} ${DATADIR}/namazu
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
.for f in ${EXAMPLES}
	cd ${WRKSRC}/conf && ${INSTALL_DATA} ${f}-sample ${EXAMPLESDIR}/${f}
.endfor

.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
