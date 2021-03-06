# $NetBSD: buildlink3.mk,v 1.8 2006/07/08 23:11:05 jlam Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
PSLIB_BUILDLINK3_MK:=	${PSLIB_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	pslib
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Npslib}
BUILDLINK_PACKAGES+=	pslib
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}pslib

.if !empty(PSLIB_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.pslib+=	pslib>=0.2.6
BUILDLINK_ABI_DEPENDS.pslib?=	pslib>=0.2.6nb3
BUILDLINK_PKGSRCDIR.pslib?=	../../print/pslib
.endif	# PSLIB_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
