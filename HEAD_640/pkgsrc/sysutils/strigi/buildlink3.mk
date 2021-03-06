# $NetBSD: buildlink3.mk,v 1.2 2009/01/09 22:28:02 markd Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
STRIGI_BUILDLINK3_MK:=	${STRIGI_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	strigi
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nstrigi}
BUILDLINK_PACKAGES+=	strigi
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}strigi

.if ${STRIGI_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.strigi+=	strigi>=0.6.2
BUILDLINK_PKGSRCDIR.strigi?=	../../sysutils/strigi

PRINT_PLIST_AWK+=	/^@dirrm lib\/strigi$$/ \
				{ print "@comment in strigi: " $$0; next; }
.endif	# STRIGI_BUILDLINK3_MK

.include "../../archivers/bzip2/buildlink3.mk"
.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../textproc/libclucene/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../sysutils/dbus/buildlink3.mk"

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
