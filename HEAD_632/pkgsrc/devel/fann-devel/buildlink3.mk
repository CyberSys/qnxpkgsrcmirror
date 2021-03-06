# $NetBSD: buildlink3.mk,v 1.1.1.1 2006/10/12 18:30:22 gdt Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
FANN_BUILDLINK3_MK:=	${FANN_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	fann
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nfann}
BUILDLINK_PACKAGES+=	fann
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}fann

.if ${FANN_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.fann+=	fann>=2.1.0.20061012
BUILDLINK_PKGSRCDIR.fann?=	../../devel/fann-devel
.endif	# FANN_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
