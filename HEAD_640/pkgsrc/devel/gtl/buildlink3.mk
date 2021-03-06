# $NetBSD: buildlink3.mk,v 1.7 2006/07/08 23:10:43 jlam Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
GTL_BUILDLINK3_MK:=	${GTL_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	gtl
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Ngtl}
BUILDLINK_PACKAGES+=	gtl
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}gtl

.if !empty(GTL_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.gtl+=		gtl>=1.2.0
BUILDLINK_PKGSRCDIR.gtl?=	../../devel/gtl
.endif	# GTL_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
