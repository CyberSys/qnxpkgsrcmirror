# $NetBSD: buildlink3.mk,v 1.22 2009/01/13 12:55:30 obache Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
IMAGEMAGICK_BUILDLINK3_MK:=	${IMAGEMAGICK_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	ImageMagick
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:NImageMagick}
BUILDLINK_PACKAGES+=	ImageMagick
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}ImageMagick

.if !empty(IMAGEMAGICK_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.ImageMagick+=	ImageMagick>=5.5.7.11nb1
BUILDLINK_ABI_DEPENDS.ImageMagick+=	ImageMagick>=6.3.1.6nb1
BUILDLINK_PKGSRCDIR.ImageMagick?=	../../graphics/ImageMagick
.endif	# IMAGEMAGICK_BUILDLINK3_MK

pkgbase := ImageMagick
.include "../../mk/pkg-build-options.mk"

.if !empty(PKG_BUILD_OPTIONS.ImageMagick:Mx11)
.include "../../x11/libX11/buildlink3.mk"
.endif
.if !empty(PKG_BUILD_OPTIONS.ImageMagick:Mjasper)
.include "../../graphics/jasper/buildlink3.mk"
.endif
.if !empty(PKG_BUILD_OPTIONS.ImageMagick:Mwmf)
.include "../../graphics/libwmf/buildlink3.mk"
.endif

.include "../../archivers/bzip2/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../graphics/lcms/buildlink3.mk"
.include "../../graphics/libexif/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../graphics/tiff/buildlink3.mk"
.include "../../devel/libltdl/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
