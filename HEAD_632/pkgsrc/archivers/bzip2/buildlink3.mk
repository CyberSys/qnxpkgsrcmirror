# $NetBSD: buildlink3.mk,v 1.20 2006/07/08 23:10:35 jlam Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
BZIP2_BUILDLINK3_MK:=	${BZIP2_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	bzip2
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nbzip2}
BUILDLINK_PACKAGES+=	bzip2
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}bzip2

.if !empty(BZIP2_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.bzip2+=	bzip2>=1.0.1
BUILDLINK_PKGSRCDIR.bzip2?=	../../archivers/bzip2
BUILDLINK_ABI_DEPENDS.bzip2+=	bzip2>=1.0.3
.endif	# BZIP2_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
