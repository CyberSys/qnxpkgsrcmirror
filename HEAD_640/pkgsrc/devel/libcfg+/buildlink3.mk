# $NetBSD: buildlink3.mk,v 1.7 2006/07/26 06:09:23 rillig Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
LIBCFG_BUILDLINK3_MK:=	${LIBCFG_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libcfg
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibcfg}
BUILDLINK_PACKAGES+=	libcfg
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}libcfg

.if !empty(LIBCFG_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.libcfg+=	libcfg+>=0.6.2nb1
BUILDLINK_ABI_DEPENDS.libcfg+=	libcfg+>=0.6.2nb3
BUILDLINK_PKGSRCDIR.libcfg?=	../../devel/libcfg+
.endif	# LIBCFG_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
