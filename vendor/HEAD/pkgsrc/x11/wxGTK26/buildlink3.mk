# $NetBSD: buildlink3.mk,v 1.26 2013/10/10 14:41:46 ryoon Exp $

BUILDLINK_TREE+=	wxGTK

.if !defined(WXGTK_BUILDLINK3_MK)
WXGTK_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.wxGTK+=	wxGTK>=2.6.0nb2
BUILDLINK_ABI_DEPENDS.wxGTK+=	wxGTK>=2.6.3nb26
BUILDLINK_PKGSRCDIR.wxGTK?=	../../x11/wxGTK26

.include "../../devel/pangox-compat/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../graphics/MesaLib/buildlink3.mk"
.include "../../mk/jpeg.buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../graphics/tiff/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.endif # WXGTK_BUILDLINK3_MK

BUILDLINK_TREE+=	-wxGTK
