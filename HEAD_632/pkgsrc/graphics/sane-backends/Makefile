# $NetBSD: Makefile,v 1.36 2007/06/08 20:50:55 gdt Exp $

.include "Makefile.common"
COMMENT=	API for access to scanners, digitals camera, frame grabbers etc.

DISTNAME=	sane-backends-${SANE_VERSION}
DISTFILES=	${DISTNAME}${EXTRACT_SUFX}

# lib/Makefile.in builds .o files and then .a, but rules for shlibs,
# while apparently independent, cause libtool to create .o again,
# making it possible for the ar step of the .a build to fail to find
# the .o
MAKE_JOBS_SAFE=		NO

USE_TOOLS+=		msgfmt
USE_PKGLOCALEDIR=	YES

CONFIGURE_ARGS+=	--with-gphoto2=no
CONFIGURE_ARGS+=	--with-docdir=${PREFIX}/share/doc/sane-${SANE_VERSION}

.include "../../mk/bsd.prefs.mk"

.if (${OPSYS} == "SunOS")
PLIST_SUBST+=	SANE_PINT="@comment "
PLIST_SUBST+=	SANE_SM3600="@comment "
.elif (${OPSYS} == "Linux") || (${OPSYS} == "DragonFly")
PLIST_SUBST+=	SANE_PINT="@comment "
PLIST_SUBST+=	SANE_SM3600=""
.else
PLIST_SUBST+=	SANE_PINT=""
PLIST_SUBST+=	SANE_SM3600=""
.endif

OWN_DIRS+=	${PKG_SYSCONFDIR}/sane.d
EGDIR=		${PREFIX}/share/examples/sane
.for f in abaton.conf agfafocus.conf apple.conf artec.conf \
artec_eplus48u.conf avision.conf bh.conf canon.conf canon630u.conf \
coolscan.conf coolscan2.conf dc210.conf dc240.conf dc25.conf dll.conf \
dmc.conf epson.conf fujitsu.conf genesys.conf gt68xx.conf hp.conf \
hp4200.conf hp5400.conf ibm.conf leo.conf lexmark.conf \
ma1509.conf matsushita.conf \
microtek.conf microtek2.conf mustek.conf mustek_usb.conf nec.conf \
net.conf pie.conf plustek.conf plustek_pp.conf ricoh.conf s9036.conf \
saned.conf sceptre.conf sharp.conf sm3840.conf snapscan.conf \
sp15c.conf st400.conf stv680.conf \
tamarack.conf teco1.conf teco2.conf teco3.conf \
test.conf u12.conf umax.conf umax1220u.conf umax_pp.conf
CONF_FILES+=	${EGDIR}/${f} ${PKG_SYSCONFDIR}/sane.d/${f}
.endfor

.if (${OPSYS} == "Linux")
.for f in qcam.conf v4l.conf
CONF_FILES+=	${EGDIR}/${f} ${PKG_SYSCONFDIR}/sane.d/${f}
.endfor
.endif

.include "options.mk"
.if (${OPSYS} != "SunOS")
. include "../../devel/libusb/buildlink3.mk"
.endif
.include "../../graphics/jpeg/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
