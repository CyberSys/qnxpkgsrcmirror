# $NetBSD: buildlink3.mk,v 1.31 2009/03/20 19:24:37 joerg Exp $

BUILDLINK_TREE+=	cairo

.if !defined(CAIRO_BUILDLINK3_MK)
CAIRO_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.cairo+=	cairo>=1.0.0nb2
BUILDLINK_ABI_DEPENDS.cairo+=	cairo>=1.6.4
BUILDLINK_PKGSRCDIR.cairo?=	../../graphics/cairo

BUILDLINK_API_DEPENDS.Xrender+=	Xrender>=0.8
BUILDLINK_API_DEPENDS.glitz+=	glitz>=0.5.1
BUILDLINK_API_DEPENDS.pixman+=	pixman>=0.12.0

.include "../../mk/bsd.fast.prefs.mk"

pkgbase := cairo
.include "../../mk/pkg-build-options.mk"

.if !empty(PKG_BUILD_OPTIONS.cairo:Mx11)
.include "../../x11/libXrender/buildlink3.mk"
.endif

.include "../../fonts/fontconfig/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../graphics/glitz/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../x11/pixman/buildlink3.mk"
.endif # CAIRO_BUILDLINK3_MK

BUILDLINK_TREE+=	-cairo
