# $NetBSD: buildlink3.mk,v 1.5 2006/07/08 23:11:00 jlam Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
DIRAC_BUILDLINK3_MK:=	${DIRAC_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	dirac
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Ndirac}
BUILDLINK_PACKAGES+=	dirac
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}dirac

.if !empty(DIRAC_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.dirac+=	dirac>=0.2.0
BUILDLINK_PKGSRCDIR.dirac?=	../../multimedia/dirac
BUILDLINK_DEPMETHOD.dirac?=	build
.endif	# DIRAC_BUILDLINK3_MK


BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
