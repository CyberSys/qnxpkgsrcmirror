# $NetBSD: Makefile,v 1.58 2008/11/10 17:21:38 wiz Exp $

PKGVER=		2.3.1
DISTNAME=	openmotif-${PKGVER}
#PKGREVISION=	3
PKGREVISION=	1
CATEGORIES=	x11
MASTER_SITES=	http://ftp.ics.com/openmotif/2.3/2.3.1/
MASTER_SITES+=	ftp://ftp.ics.com/openmotif/2.3/2.3.1/

MAINTAINER=		joerg@NetBSD.org
HOMEPAGE=		http://www.opengroup.org/openmotif/
COMMENT=		The Open Group Motif toolkit for the X Window System

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../mk/bsd.prefs.mk"

LICENSE=		openmotif-license
RESTRICTED=		Only for Open Source OS; complex terms for commercial distribution.

# License grants permission to reproduce distfile for use on Open
# Source OSes.  Therefore, do not set NO_SRC_ON_FTP, since the
# distfile is thereby provided with the intent of it being used
# according to the license.  Set NO_BIN_ON_FTP if the operating system
# for which the package is built is not known to be open source.
# List OSes known to be Open Source; default to not acceptable for new ones.
OPSYS_OK_LIST=	DragonFly FreeBSD Linux NetBSD OpenBSD
.if empty(OPSYS_OK_LIST:M${OPSYS})
NO_BIN_ON_FTP=		${RESTRICTED}
.endif

# NO_*_ON_CDROM: License seems to require indemnification for
# "commercial product offering", but doesn't define commercial product
# offering.  Err on the side of caution and mark restricted.
NO_SRC_ON_CDROM=	${RESTRICTED}
NO_BIN_ON_CDROM=	${RESTRICTED}

CONFLICTS+=		lesstif-[0-9]*

USE_LIBTOOL=		yes
USE_TOOLS+=		flex gmake tbl pkg-config
GNU_CONFIGURE=		yes
MAKE_JOBS_SAFE=		no # PR 37233

SUBST_CLASSES+=			man_rename
SUBST_STAGE.man_rename=		pre-configure
SUBST_MESSAGE.man_rename=	Fixing hardcoded paths.
SUBST_FILES.man_rename=		doc/man/man3/Makefile.in
SUBST_SED.man_rename=		-e 's: Core.3: XCore.3:g'
SUBST_SED.man_rename+=		-e 's: Object.3: XObject.3:g'
SUBST_SED.man_rename+=		-e 's: Shell.3: XShell.3:g'

.if ${OPSYS} == "NetBSD"
CONFIGURE_ENV+=		ac_cv_func_setpgrp_void=no
.endif

.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
MAKE_FLAGS+=	CROSS_COMPILING=yes CC_FOR_BUILD=${NATIVE_CC:Q} \
    CPPFLAGS_FOR_BUILD=-I${PREFIX}/include
.endif

# 1) Fix the man pages to refer to the correct sections.
# 2) Change references to {Core,Object,Shell}.3 to X{Core,Object,Shell}.3 to
#    avoid manpage conflicts with other packages.
#
post-patch:
	set -e; \
	cd ${WRKSRC}/doc/man;						\
	for manpage in man1/*.1 man3/*.3 man4/*.4 man5/*.5; do		\
		${SED}	-e "s|user cmd|1|g"				\
			-e "s|library call|3|g"				\
			-e "s|special file|5|g"				\
			-e "s|file formats|5|g"				\
			$${manpage} > $${manpage}.fixed;		\
		${MV} -f $${manpage}.fixed $${manpage};			\
	done;								\
	${CP} -f man4/mwmrc.4 man5/mwmrc.5
	set -e; \
	cd ${WRKSRC}/doc/man/man3;					\
	for name in Core Object Shell; do                               \
		${MV} -f $${name}.3 X$${name}.3;			\
		files=`${GREP} -l ".fB$${name}.fP(3)" *.3`;		\
		for manpage in $${files}; do				\
			${MV} -f $${manpage} $${manpage}.presubst;	\
			${SED} "s|\\(.fB\\)$${name}\\(.fP(3)\\)|\\1X$${name}\\2|g" \
				$${manpage}.presubst > $${manpage};	\
			${RM} -f $${manpage}.presubst;			\
		done;							\
	done
	echo "#include <X11/Xos_r.h>" > ${WRKSRC}/lib/Xm/Xmos_r.h

# Filter the manpages through tbl.
post-build:
	set -e; \
	cd ${WRKSRC}/doc/man;						\
	for manpage in man1/*.1 man3/*.3 man4/*.4 man5/*.5; do		\
		${TBL} $${manpage} > $${manpage}.tblized;		\
		${MV} -f $${manpage}.tblized $${manpage};		\
	done

.include "../../x11/xextproto/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/libXaw/buildlink3.mk"
.include "../../x11/libXmu/buildlink3.mk"
.include "../../x11/libXp/buildlink3.mk"
.include "../../x11/libXext/buildlink3.mk"
.include "../../x11/libXft/buildlink3.mk"
.include "../../x11/xbitmaps/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
