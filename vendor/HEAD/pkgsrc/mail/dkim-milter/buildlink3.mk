# $NetBSD: buildlink3.mk,v 1.5 2013/02/06 23:20:59 jperkin Exp $

BUILDLINK_TREE+=	dkim-milter

.if !defined(DKIM_MILTER_BUILDLINK3_MK)
DKIM_MILTER_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.dkim-milter+=	dkim-milter>=2.8.2
BUILDLINK_ABI_DEPENDS.dkim-milter+=	dkim-milter>=2.8.3nb2
BUILDLINK_PKGSRCDIR.dkim-milter?=	../../mail/dkim-milter
BUILDLINK_DEPMETHOD.dkim-milter?=	build

.include "../../security/openssl/buildlink3.mk"
.include "../../mail/libmilter/buildlink3.mk"
.endif # DKIM_MILTER_BUILDLINK3_MK

BUILDLINK_TREE+=	-dkim-milter
