# $NetBSD: Makefile,v 1.36 2006/03/04 21:30:57 jlam Exp $

DISTNAME=		cadaver-0.22.2
PKGREVISION=	3
CATEGORIES=		www
MASTER_SITES=		http://www.webdav.org/cadaver/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.webdav.org/cadaver/
COMMENT=		Command-line WebDAV client


BUILD_TARGET=		cadaver
GNU_CONFIGURE=		YES
CONFIGURE_ARGS+=	--enable-netrc
CONFIGURE_ARGS+=	--with-expat
CONFIGURE_ARGS+=	--with-included-neon
CONFIGURE_ARGS+=	--with-ssl=yes

# We don't need curses, just termcap.
CONFIGURE_ENV+=		ac_cv_lib_curses_tputs=no
LIBS+=			-ltermcap

.include "../../devel/readline/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../textproc/expat/buildlink3.mk"

# DON'T make this package depend on the www/neon package until neon
# becomes stable; keep it using its internal copy of neon as with
# www/sitecopy.  This package has in the past bounced back and forth
# between using external and internal neon because neon moves faster
# than cadaver, and does so incompatibly.

.include "../../mk/bsd.pkg.mk"
