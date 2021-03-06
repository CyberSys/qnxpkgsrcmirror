# $NetBSD: buildlink3.mk,v 1.3 2009/03/20 19:25:46 joerg Exp $

.include "../../mk/bsd.fast.prefs.mk"

.if ${X11_TYPE} != "modular"
.include "../../mk/x11.buildlink3.mk"
.else

BUILDLINK_TREE+=	libXvMC

.if !defined(LIBXVMC_BUILDLINK3_MK)
LIBXVMC_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libXvMC+=	libXvMC>=1.0.2
BUILDLINK_PKGSRCDIR.libXvMC?=	../../x11/libXvMC

.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/libXext/buildlink3.mk"
.include "../../x11/libXv/buildlink3.mk"
.include "../../x11/videoproto/buildlink3.mk"
.endif # LIBXVMC_BUILDLINK3_MK

BUILDLINK_TREE+=	-libXvMC

.endif
