# $NetBSD: buildlink3.mk,v 1.1 2007/01/05 11:04:42 drochner Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
GST_PYTHON_BUILDLINK3_MK:=	${GST_PYTHON_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	gst-python
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Ngst-python}
BUILDLINK_PACKAGES+=	gst-python
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}gst-python

.if ${GST_PYTHON_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.gst-python+=	gst-python>=0.10.5
BUILDLINK_PKGSRCDIR.gst-python?=	../../multimedia/py-gstreamer0.10
.endif	# GST_PYTHON_BUILDLINK3_MK

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
