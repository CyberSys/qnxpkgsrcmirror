# $NetBSD: buildlink3.mk,v 1.1 2007/09/11 17:48:06 wiz Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
HUNSPELL_BUILDLINK3_MK:=	${HUNSPELL_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	hunspell
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nhunspell}
BUILDLINK_PACKAGES+=	hunspell
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}hunspell

.if ${HUNSPELL_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.hunspell+=	hunspell>=1.1.12.2
BUILDLINK_PKGSRCDIR.hunspell?=		../../textproc/hunspell
.endif	# HUNSPELL_BUILDLINK3_MK

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
