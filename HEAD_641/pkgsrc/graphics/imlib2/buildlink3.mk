# $NetBSD: buildlink3.mk,v 1.19 2009/03/20 19:24:41 joerg Exp $

BUILDLINK_TREE+=	imlib2

.if !defined(IMLIB2_BUILDLINK3_MK)
IMLIB2_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.imlib2+=	imlib2>=1.1.0nb2
BUILDLINK_ABI_DEPENDS.imlib2+=	imlib2>=1.2.0nb5
BUILDLINK_PKGSRCDIR.imlib2?=	../../graphics/imlib2

.include "../../devel/libltdl/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../graphics/jpeg/buildlink3.mk"
.include "../../graphics/libungif/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../graphics/tiff/buildlink3.mk"

_IMLIB2_PRE_X11_OPTION!= \
	if ${PKG_INFO} -qe 'imlib2<=1.4.0'; then			\
		${ECHO} yes;						\
	else								\
		${ECHO} no;						\
	fi

pkgbase := imlib2
.include "../../mk/pkg-build-options.mk"

.if ${_IMLIB2_PRE_X11_OPTION} == "yes" || !empty(PKG_BUILD_OPTIONS.imlib2:Mx11)
.include "../../x11/libXext/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.endif
.endif # IMLIB2_BUILDLINK3_MK

BUILDLINK_TREE+=	-imlib2
