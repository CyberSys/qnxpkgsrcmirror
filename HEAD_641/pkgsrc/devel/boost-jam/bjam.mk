# $NetBSD: bjam.mk,v 1.4 2009/03/03 08:57:58 jmmv Exp $
#

.include "../../devel/boost-jam/buildlink3.mk"

.include "../../devel/boost-build/toolset.mk"
.include "../../mk/bsd.prefs.mk"

BJAM=			${BUILDLINK_PREFIX.boost-jam}/bin/bjam

BJAM_ARGS+=		--builddir=${WRKSRC}/build
BJAM_ARGS+=		--layout=system
BJAM_ARGS+=		--toolset=${BOOST_TOOLSET}
.if ${OPSYS} == "Darwin"
BJAM_ARGS+=		-sTARGET_LIBDIR=${PREFIX}/lib
.endif
BJAM_ARGS+=		--disable-long-double
BJAM_ARGS+=		${BJAM_BUILD}

BJAM_BUILD+=		debug
BJAM_BUILD+=		release
BJAM_BUILD+=		threading=multi
BJAM_BUILD+=		link=shared,static

BJAM_CMD=		${SETENV} ${MAKE_ENV} ${BJAM} ${BJAM_ARGS}

.include "../../meta-pkgs/boost/options.mk"

PLIST_SRC+=		PLIST

UNLIMIT_RESOURCES+=	datasize

bjam-build:
	@${_ULIMIT_CMD}							\
	cd ${WRKSRC} && ${BJAM_CMD} --prefix=${PREFIX} stage

bjam-install:
	@${_ULIMIT_CMD}							\
	cd ${WRKSRC} && ${BJAM_CMD} --prefix=${DESTDIR}${PREFIX} install
