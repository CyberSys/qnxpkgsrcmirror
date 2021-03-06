# $NetBSD: buildlink3.mk,v 1.1 2006/10/05 14:55:21 gdt Exp $
BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
FANN_BUILDLINK3_MK:=	${FANN_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	fann
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nfann}
BUILDLINK_PACKAGES+=	fann
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}fann

.if ${FANN_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.fann+=	fann>=2.0.0
BUILDLINK_PKGSRCDIR.fann?=	../../devel/fann
.endif	# FANN_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
