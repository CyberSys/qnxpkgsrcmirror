# $NetBSD: Makefile,v 1.44 2009/07/08 13:56:00 joerg Exp $
#

DISTNAME=	tmda-1.1.12
PKGREVISION=	2
CATEGORIES=	mail python
MASTER_SITES=	http://tmda.sourceforge.net/ftp/releases/
MASTER_SITES+=	ftp://tmda.net/pub/tmda/releases/
EXTRACT_SUFX=	.tgz

MAINTAINER=	schmonz@NetBSD.org
HOMEPAGE=	http://tmda.net/
COMMENT=	Python-based SPAM reduction system

PYTHON_PATCH_SCRIPTS=	${TMDA_PROGRAMS}
PY_PATCHPLIST=		yes

PKG_SYSCONFSUBDIR=	${PKGBASE}

PKG_GROUPS=		tofmipd
PKG_USERS=		tofmipd:tofmipd
PKG_GECOS.tofmipd=	TMDA ofmipd User

RCD_SCRIPTS=	tofmipd
FILES_SUBST+=	PYTHONBIN=${PYTHONBIN:Q}

SHAREDIR=	share/${PKGBASE}
DOCDIR=		share/doc/${PKGBASE}
EGDIR=		share/examples/${PKGBASE}
HTMLDIR=	share/doc/html/${PKGBASE}
PLIST_SUBST+=	SHAREDIR=${SHAREDIR:Q}
PLIST_SUBST+=	DOCDIR=${DOCDIR:Q}
PLIST_SUBST+=	EGDIR=${EGDIR:Q}
PLIST_SUBST+=	HTMLDIR=${HTMLDIR:Q}

TMDA_PROGRAMS=	bin/tmda-*
TMDA_DOCS=	CODENAMES COPYING CRYPTO ChangeLog INSTALL
TMDA_DOCS+=	NEWS README THANKS UPGRADE
TMDA_CONTRIB=	contrib/*

SUBST_CLASSES+=		etc
SUBST_STAGE.etc=	do-configure
SUBST_FILES.etc=	bin/tmda-ofmipd TMDA/Auth.py TMDA/Defaults.py
SUBST_SED.etc=		-e 's|/etc|${PKG_SYSCONFDIR}|g'

INSTALLATION_DIRS=	bin ${SHAREDIR} ${DOCDIR} ${HTMLDIR} ${EGDIR}
INSTALLATION_DIRS+=	${PYSITELIB}/TMDA/pythonlib/email/mime
INSTALLATION_DIRS+=	${PYSITELIB}/TMDA/Queue

.include "options.mk"

post-extract:
	rm ${WRKSRC}/doc/html/error.log

do-build:
	cd ${WRKSRC} && ${PYTHONBIN} ./compileall

pre-install:
	find ${WRKSRC} -name "*.orig" -print | xargs rm -f

do-install:
	for f in ${TMDA_PROGRAMS}; do \
		${INSTALL_SCRIPT} ${WRKSRC}/$${f} ${PREFIX}/bin; \
	done

	${INSTALL_SCRIPT} ${WRKSRC}/TMDA/*.py* ${PREFIX}/${PYSITELIB}/TMDA

	${INSTALL_SCRIPT} ${WRKSRC}/TMDA/pythonlib/email/*.py* \
		${PREFIX}/${PYSITELIB}/TMDA/pythonlib/email
	${INSTALL_SCRIPT} ${WRKSRC}/TMDA/pythonlib/email/mime/*.py* \
		${PREFIX}/${PYSITELIB}/TMDA/pythonlib/email/mime
	${INSTALL_SCRIPT} ${WRKSRC}/TMDA/Queue/*.py* \
		${PREFIX}/${PYSITELIB}/TMDA/Queue

	${INSTALL_DATA} ${WRKSRC}/templates/*.txt ${PREFIX}/${SHAREDIR}

	for f in ${TMDA_DOCS}; do \
		${INSTALL_DATA} ${WRKSRC}/$${f} ${PREFIX}/${DOCDIR}; \
	done

	for f in ${TMDA_CONTRIB}; do \
		if [ -f $${f} ]; then \
			${INSTALL_DATA} ${WRKSRC}/$${f} \
				${PREFIX}/${EGDIR}; \
		else \
			cp -Rp ${WRKSRC}/$${f} ${PREFIX}/${EGDIR}; \
		fi; \
	done

	cp -Rp ${WRKSRC}/doc/html/* ${PREFIX}/${HTMLDIR}

post-install:
	${PY_COMPILE_ALL} ${PREFIX}/${PYSITELIB}/TMDA \
		${PREFIX}/${PYSITELIB}/TMDA/Queue \
		${PREFIX}/${PYSITELIB}/TMDA/pythonlib/email \
		${PREFIX}/${PYSITELIB}/TMDA/pythonlib/email/mime

.include "../../lang/python/extension.mk"
.include "../../lang/python/application.mk"
.include "../../mk/bsd.pkg.mk"
