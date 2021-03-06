# $NetBSD: buildlink3.mk,v 1.1 2007/09/21 12:58:15 wiz Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
GCONF_UI_BUILDLINK3_MK:=	${GCONF_UI_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	GConf-ui
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:NGConf-ui}
BUILDLINK_PACKAGES+=	GConf-ui
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}GConf-ui

.if !empty(GCONF_UI_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.GConf-ui+=	GConf-ui>=2.8.0.1
BUILDLINK_ABI_DEPENDS.GConf-ui?=	GConf-ui>=2.14.0nb1
BUILDLINK_PKGSRCDIR.GConf-ui?=	../../devel/GConf-ui
.endif	# GCONF_UI_BUILDLINK3_MK

.include "../../devel/GConf/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
