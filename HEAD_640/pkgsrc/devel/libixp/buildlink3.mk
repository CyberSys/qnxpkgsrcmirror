# $NetBSD: buildlink3.mk,v 1.1.1.1 2008/01/06 21:47:09 ghen Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
LIBIXP_BUILDLINK3_MK:=	${LIBIXP_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	libixp
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibixp}
BUILDLINK_PACKAGES+=	libixp
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}libixp

.if ${LIBIXP_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.libixp+=	libixp>=0.4
BUILDLINK_PKGSRCDIR.libixp?=	../../devel/libixp
.endif	# LIBIXP_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
