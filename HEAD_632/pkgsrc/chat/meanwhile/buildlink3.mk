# $NetBSD: buildlink3.mk,v 1.1.1.1 2007/08/13 05:29:27 dan Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
MEANWHILE_BUILDLINK3_MK:=	${MEANWHILE_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	meanwhile
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nmeanwhile}
BUILDLINK_PACKAGES+=	meanwhile
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}meanwhile

.if ${MEANWHILE_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.meanwhile+=	meanwhile>=1.0.2
BUILDLINK_PKGSRCDIR.meanwhile?=	../../chat/meanwhile
.endif	# MEANWHILE_BUILDLINK3_MK

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
