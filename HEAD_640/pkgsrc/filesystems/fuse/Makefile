# $NetBSD: Makefile,v 1.3 2007/03/16 18:57:29 gdt Exp $
#

DISTNAME=		fuse-2.5.2
CATEGORIES=		filesystems
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=fuse/}

MAINTAINER=		pancake@phreaker.net
HOMEPAGE=		http://fuse.sourceforge.net/
COMMENT=		Filesystem in Userspace

GNU_CONFIGURE=		yes

# FUSE the implementation only builds on Linux and FreeBSD.
ONLY_FOR_PLATFORM=	Linux-*-* FreeBSD-*-*
# On NetBSD 4.99 after 2007-02, /usr/lib/librefuse provides the FUSE
# interface expected by filesystem implementations and therefore this
# implementation is not needed.
# XXX Set NOT_FOR_PLATFORM with a helpful failure message, because
# fuse not building is confusing for people who have been told that
# fuse works on NetBSD.

USE_TOOLS+=		gmake pkg-config
USE_LIBTOOL=		yes

.include "../../mk/bsd.pkg.mk"
