# $NetBSD: buildlink3.mk,v 1.12 2008/08/19 18:18:10 bjs Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
LIBPURPLE_BUILDLINK3_MK:=	${LIBPURPLE_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	libpurple
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibpurple}
BUILDLINK_PACKAGES+=	libpurple
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}libpurple

.if ${LIBPURPLE_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.libpurple+=	libpurple>=2.5.0
BUILDLINK_PKGSRCDIR.libpurple?=	../../chat/libpurple
.endif	# LIBPURPLE_BUILDLINK3_MK

pkgbase := libpurple
.include "../../mk/pkg-build-options.mk"

.if !empty(PKG_BUILD_OPTIONS.libpurple:Mdbus)
.  include "../../sysutils/dbus/buildlink3.mk"
.  include "../../sysutils/dbus-glib/buildlink3.mk"
.  include "../../sysutils/py-dbus/buildlink3.mk"
.endif

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
