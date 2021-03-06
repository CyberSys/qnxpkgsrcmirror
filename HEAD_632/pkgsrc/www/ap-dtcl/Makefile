# $NetBSD: Makefile,v 1.27 2006/06/02 18:27:59 joerg Exp $

DISTNAME=	mod_dtcl-0.11.6
PKGNAME=	ap13-dtcl-0.11.2
CATEGORIES=	www
MASTER_SITES=	http://tcl.apache.org/mod_dtcl/download/

MAINTAINER=	jwise@NetBSD.org
HOMEPAGE=	http://tcl.apache.org/
COMMENT=	Simple, fast Tcl server side scripting for apache

CONFLICTS=	ap-dtcl-[0-9]*

WRKSRC=		${WRKDIR}/mod_dtcl

TCLSH=		${BUILDLINK_PREFIX.tcl}/bin/tclsh
CPPFLAGS+=	-I${BUILDLINK_PREFIX.apache}/include/httpd -DEAPI

MAKE_ENV+=	TCLSH=${TCLSH:Q}
MAKE_ENV+=	INCLUDES=${CPPFLAGS:M*:Q}

APACHE_MODULE=	yes
APACHEMODDIR=	${PREFIX}/lib/httpd
HTMLDIR=	${PREFIX}/share/doc/html/mod_dtcl
EGDIR=		${PREFIX}/share/examples/mod_dtcl

.include "../../lang/tcl/buildlink3.mk"
.include "../../www/apache/buildlink3.mk"

do-build:
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${SH} builddtcl.sh

do-install:
	${INSTALL_DATA_DIR} ${APACHEMODDIR}
	${INSTALL_DATA} ${WRKSRC}/mod_dtcl.so ${APACHEMODDIR}
	${INSTALL_DATA_DIR} ${HTMLDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/*.gif ${HTMLDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/*.html ${HTMLDIR}
	${INSTALL_DATA_DIR} ${EGDIR}/tests
	cd ${WRKSRC}; ${INSTALL_DATA} tests/README ${EGDIR}/tests
	cd ${WRKSRC}; ${INSTALL_DATA} tests/dtcl-test.tcl ${EGDIR}/tests
	cd ${WRKSRC}; ${INSTALL_DATA} tests/dtcl-test2.ttml ${EGDIR}/tests
	cd ${WRKSRC}; ${INSTALL_DATA} tests/dtcl.test ${EGDIR}/tests
	cd ${WRKSRC}; ${INSTALL_DATA} tests/makeconf.tcl ${EGDIR}/tests
	cd ${WRKSRC}; ${INSTALL_DATA} tests/runtests.tcl ${EGDIR}/tests
	cd ${WRKSRC}; ${INSTALL_DATA} tests/template.conf.tcl ${EGDIR}/tests
	cd ${WRKSRC}; ${INSTALL_DATA} contrib/*.ttml ${EGDIR}
	cd ${WRKSRC}; ${INSTALL_DATA} contrib/*.tcl ${EGDIR}
	cd ${WRKSRC}; ${INSTALL_DATA} docs/examples.ttml ${EGDIR}

.include "../../mk/bsd.pkg.mk"
