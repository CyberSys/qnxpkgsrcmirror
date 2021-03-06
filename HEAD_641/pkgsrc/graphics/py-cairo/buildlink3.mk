# $NetBSD: buildlink3.mk,v 1.7 2009/03/20 19:24:44 joerg Exp $

BUILDLINK_TREE+=	pycairo

.if !defined(PY_CAIRO_BUILDLINK3_MK)
PY_CAIRO_BUILDLINK3_MK:=

.  include "../../lang/python/pyversion.mk"

BUILDLINK_API_DEPENDS.pycairo+=	${PYPKGPREFIX}-cairo>=1.0.2
BUILDLINK_ABI_DEPENDS.pycairo+=	${PYPKGPREFIX}-cairo>=1.0.2nb1
BUILDLINK_PKGSRCDIR.pycairo?=	../../graphics/py-cairo

.include "../../math/py-Numeric/buildlink3.mk"
.include "../../graphics/cairo/buildlink3.mk"
.endif # PY_CAIRO_BUILDLINK3_MK

BUILDLINK_TREE+=	-pycairo
