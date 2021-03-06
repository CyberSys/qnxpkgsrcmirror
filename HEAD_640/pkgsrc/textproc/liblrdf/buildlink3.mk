# $NetBSD: buildlink3.mk,v 1.1 2008/08/19 19:07:44 bjs Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
LIBLRDF_BUILDLINK3_MK:=	${LIBLRDF_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	liblrdf
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nliblrdf}
BUILDLINK_PACKAGES+=	liblrdf
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}liblrdf

.if ${LIBLRDF_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.liblrdf+=	liblrdf>=0.4.0nb1
BUILDLINK_PKGSRCDIR.liblrdf?=	../../textproc/liblrdf
.endif	# LIBLRDF_BUILDLINK3_MK

.include "../../textproc/raptor/buildlink3.mk"

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
