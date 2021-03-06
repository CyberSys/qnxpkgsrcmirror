# $NetBSD: buildlink3.mk,v 1.1 2007/10/29 12:41:18 uebayasi Exp $
#

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
EIEIO_BUILDLINK3_MK:=	${EIEIO_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	eieio
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Neieio}
BUILDLINK_PACKAGES+=	eieio
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}eieio

.if ${EIEIO_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.eieio+=	${EMACS_PKGNAME_PREFIX}eieio>=0.17
BUILDLINK_PKGSRCDIR.eieio?=	../../lang/eieio
.endif	# EIEIO_BUILDLINK3_MK

BUILDLINK_CONTENTS_FILTER.eieio=	${EGREP} '.*\.el$$|.*\.elc$$'

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
