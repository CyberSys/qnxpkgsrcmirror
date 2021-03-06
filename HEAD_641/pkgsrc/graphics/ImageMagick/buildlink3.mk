# $NetBSD: buildlink3.mk,v 1.25 2009/08/10 19:59:48 drochner Exp $

BUILDLINK_TREE+=	ImageMagick

.if !defined(IMAGEMAGICK_BUILDLINK3_MK)
IMAGEMAGICK_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ImageMagick+=	ImageMagick>=5.5.7.11nb1
BUILDLINK_ABI_DEPENDS.ImageMagick+=	ImageMagick>=6.5.3.2
BUILDLINK_PKGSRCDIR.ImageMagick?=	../../graphics/ImageMagick

pkgbase := ImageMagick
.include "../../mk/pkg-build-options.mk"

.if !empty(PKG_BUILD_OPTIONS.ImageMagick:Mghostscript)
.include "../../print/ghostscript/buildlink3.mk"
.endif
.if !empty(PKG_BUILD_OPTIONS.ImageMagick:Mjasper)
.include "../../graphics/jasper/buildlink3.mk"
.endif
.if !empty(PKG_BUILD_OPTIONS.ImageMagick:Mwmf)
.include "../../graphics/libwmf/buildlink3.mk"
.endif
.if !empty(PKG_BUILD_OPTIONS.ImageMagick:Mx11)
.include "../../x11/libX11/buildlink3.mk"
.endif

.include "../../archivers/bzip2/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../graphics/lcms/buildlink3.mk"
.include "../../graphics/libexif/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../graphics/tiff/buildlink3.mk"
.include "../../devel/libltdl/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.endif # IMAGEMAGICK_BUILDLINK3_MK

BUILDLINK_TREE+=	-ImageMagick
