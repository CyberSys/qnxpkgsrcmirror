# $NetBSD: buildlink3.mk,v 1.25 2013/06/06 12:53:57 wiz Exp $

BUILDLINK_TREE+=	libnotify

.if !defined(LIBNOTIFY_BUILDLINK3_MK)
LIBNOTIFY_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libnotify+=	libnotify>=0.3.2
BUILDLINK_ABI_DEPENDS.libnotify+=	libnotify>=0.4.5nb17
BUILDLINK_PKGSRCDIR.libnotify?=	../../sysutils/libnotify

.include "../../devel/glib2/buildlink3.mk"
.include "../../sysutils/dbus/buildlink3.mk"
.include "../../sysutils/dbus-glib/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.endif # LIBNOTIFY_BUILDLINK3_MK

BUILDLINK_TREE+=	-libnotify
