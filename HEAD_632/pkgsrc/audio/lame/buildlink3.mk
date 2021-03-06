# $NetBSD: buildlink3.mk,v 1.9 2006/07/08 23:10:36 jlam Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
LAME_BUILDLINK3_MK:=	${LAME_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	lame
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlame}
BUILDLINK_PACKAGES+=	lame
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}lame

.if !empty(LAME_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.lame+=	lame>=3.93.1nb2
BUILDLINK_ABI_DEPENDS.lame+=	lame>=3.96.1nb4
BUILDLINK_PKGSRCDIR.lame?=	../../audio/lame
.endif	# LAME_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
