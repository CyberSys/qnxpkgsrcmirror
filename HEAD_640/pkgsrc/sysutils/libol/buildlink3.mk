# $NetBSD: buildlink3.mk,v 1.9 2006/07/08 23:11:09 jlam Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
LIBOL_BUILDLINK3_MK:=	${LIBOL_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libol
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibol}
BUILDLINK_PACKAGES+=	libol
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}libol

.if !empty(LIBOL_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.libol+=	libol>=0.3.17
BUILDLINK_PKGSRCDIR.libol?=	../../sysutils/libol
.endif	# LIBOL_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
