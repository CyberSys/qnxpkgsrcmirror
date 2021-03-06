# $NetBSD: Makefile,v 1.19 2008/05/26 02:13:21 joerg Exp $
#

DISTNAME=	boot.${BOX}-unix
PKGNAME=	smlnj-${SML_VERSION}
PKGREVISION=	3
CATEGORIES=	lang
MASTER_SITES=	ftp://flint.cs.yale.edu/pub/smlnj/working/${SML_VERSION}/ \
		http://smlnj.cs.uchicago.edu/dist/working/${SML_VERSION}/ \
		ftp://flint.cs.yale.edu/pub/smlnj/working/${SML_VERSION}/
DISTFILES=	MLRISC.tgz			\
		boot.${BOX}-unix.tgz		\
		ckit.tgz			\
		cm.tgz				\
		cml.tgz				\
		compiler.tgz			\
		config.tgz			\
		eXene.tgz			\
		ml-burg.tgz			\
		ml-lex.tgz			\
		ml-nlffi-lib.tgz		\
		ml-nlffigen.tgz			\
		ml-yacc.tgz			\
		runtime.tgz			\
		smlnj-lib.tgz			\
		system.tgz

MAINTAINER=	richards+netbsd@CS.Princeton.EDU
HOMEPAGE=	http://www.smlnj.org/index.html
COMMENT=	Popular functional language from Bell Labs

SML_VERSION=	110.42

PKG_DESTDIR_SUPPORT=	user-destdir

# Other mirror sites that generally carry only released versions of SML
# 	ftp://rodin.stanford.edu/pub/smlnj/release/
# 	ftp://ftp.cl.cam.ac.uk/MIRRORED/smlnj/release/
# 	ftp://ftp.ntua.gr/pub/lang/smlnj/release/

WRKSRC=		${WRKDIR}
DIST_SUBDIR=	smlnj-${SML_VERSION}
USE_TOOLS+=	gmake pax

# previous versions of the package had an additional '-'
CONFLICTS=	sml-nj-[0-9]*

SML_BASE=	${PREFIX}/lib/smlnj
SML_LIBDIR=	${SML_BASE}/lib
SML_BINDIR=	${SML_BASE}/bin
SML_SCRIPTS=	_link-sml _run-sml _ml-build _ml-makedepend

.include "../../lang/smlnj/Makefile.common"

INSTALLATION_DIRS+=	bin

# create parent directory for the runtime system
pre-extract:
	${MKDIR} ${WRKDIR}/src || ${TRUE}

# make it easier to patch the runtime system
do-extract:
	${_PKG_SILENT}${_PKG_DEBUG}					\
	extract_file="${_DISTDIR}/config.tgz"; export extract_file;	\
		cd ${WRKDIR}; ${EXTRACT_CMD}
	${_PKG_SILENT}${_PKG_DEBUG}					\
	extract_file="${_DISTDIR}/runtime.tgz"; export extract_file;	\
		cd ${WRKDIR}/src; ${EXTRACT_CMD}

# make symlinks to the dist files
post-extract:
	cd ${WRKDIR} && ${LN} -sf ${_DISTDIR}/*  .

# resolve definition of SML_BASE, CFLAGS in patched files
do-configure:
	${CPP} ${FILESDIR}/targets > ${WRKSRC}/config/targets.customized
	cd ${WRKDIR}/config;				\
	for f in ${SML_SCRIPTS}; do			\
		${CP} "$${f}" "$${f}.tmp";		\
		${SED} -e 's|@SML_BASE@|${SML_BASE}|g'	\
			< "$${f}.tmp" > "$${f}";	\
	done;						\
	cd ${WRKDIR}/src/runtime/objs;			\
	for f in *; do					\
		${CP} "$${f}" "$${f}.tmp";		\
		${SED} -e 's|@CFLAGS@|${CFLAGS}|g'	\
			< "$${f}.tmp" > "$${f}";	\
	done

# The build target needs to run $WRKDIR/config/install.sh
do-build:
	cd ${WRKDIR} && unset PWD && \
	FILESDIR="${FILESDIR}" PATCH="${PATCH}" PATCH_ARGS="${PATCH_ARGS}" \
		SMLNJ_HOME="${WRKDIR}" ./config/install.sh

post-build:
	chmod -R go-w ${WRKSRC}

# install target
# (see ftp://ftp.research.bell-labs.com/dist/smlnj/working/110.38/INSTALL)
# 1. create installation directories
# 2. copy the ./bin and ./lib directories across
# 3. install links to executables in $PREFIX/bin
do-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${SML_BASE}
	cd ${WRKDIR} && pax -rw -pam bin lib ${DESTDIR}${SML_BASE}
	cd ${DESTDIR}${PREFIX}/bin && ${LN} -sf ../lib/smlnj/bin/* .

.include "../../mk/bsd.pkg.mk"
