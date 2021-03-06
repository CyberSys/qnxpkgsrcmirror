# $NetBSD: buildlink3.mk,v 1.6 2006/07/08 23:11:03 jlam Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
DANTE_BUILDLINK3_MK:=	${DANTE_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	dante
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Ndante}
BUILDLINK_PACKAGES+=	dante
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}dante

.if !empty(DANTE_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.dante+=	dante>=1.1.13
BUILDLINK_ABI_DEPENDS.dante+=	dante>=1.1.14nb1
BUILDLINK_PKGSRCDIR.dante?=	../../net/dante
.endif	# DANTE_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
