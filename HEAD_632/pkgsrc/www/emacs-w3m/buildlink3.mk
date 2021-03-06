# $NetBSD: buildlink3.mk,v 1.1 2007/10/29 12:41:18 uebayasi Exp $
#

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
EMACS_W3M_BUILDLINK3_MK:=	${EMACS_W3M_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	emacs-w3m
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nemacs-w3m}
BUILDLINK_PACKAGES+=	emacs-w3m
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}emacs-w3m

.if ${EMACS_W3M_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.emacs-w3m+=	${EMACS_PKGNAME_PREFIX}emacs-w3m>=1.4
BUILDLINK_PKGSRCDIR.emacs-w3m?=	../../www/emacs-w3m
.endif	# EMACS_W3M_BUILDLINK3_MK

BUILDLINK_CONTENTS_FILTER.emacs-w3m=	${EGREP} '.*\.el$$|.*\.elc$$'

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
