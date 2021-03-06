# $NetBSD: buildlink3.mk,v 1.3 2008/11/10 12:08:17 wiz Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
LIBMOWGLI_BUILDLINK3_MK:=	${LIBMOWGLI_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	libmowgli
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibmowgli}
BUILDLINK_PACKAGES+=	libmowgli
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}libmowgli

.if ${LIBMOWGLI_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.libmowgli+=	libmowgli>=0.7.0
BUILDLINK_PKGSRCDIR.libmowgli?=		../../devel/libmowgli
.endif	# LIBMOWGLI_BUILDLINK3_MK

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
