# $NetBSD: buildlink3.mk,v 1.1.1.1 2008/11/22 13:04:41 jmcneill Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
HAL_INFO_BUILDLINK3_MK:=	${HAL_INFO_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	hal-info
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nhal-info}
BUILDLINK_PACKAGES+=	hal-info
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}hal-info

.if ${HAL_INFO_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.hal-info+=	hal-info>=20081022
BUILDLINK_PKGSRCDIR.hal-info?=	../../sysutils/hal-info
.endif	# HAL_INFO_BUILDLINK3_MK

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
