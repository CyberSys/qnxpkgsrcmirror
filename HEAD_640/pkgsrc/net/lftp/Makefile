# $NetBSD: Makefile,v 1.82 2008/09/18 05:22:19 yyamano Exp $

DISTNAME=		lftp-3.5.11
PKGREVISION=		1
CATEGORIES=		net
MASTER_SITES=		http://ftp.yars.free.net/pub/source/lftp/ \
			ftp://ftp.iasi.roedu.net/pub/os/Linux/network/ftp/lftp/ \
			http://ftp.yars.free.net/pub/source/lftp/old/
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		salo@NetBSD.org
HOMEPAGE=		http://lftp.yar.ru/
COMMENT=		Powerful command line file transfer client

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

MAKE_JOBS_SAFE=		no
USE_PKGLOCALEDIR=	YES
USE_LANGUAGES=		c c++
USE_LIBTOOL=		YES
GNU_CONFIGURE=		YES
USE_GNU_READLINE=	YES	# uses GNU readline internal _rl_mark_modified_lines

SHLIBTOOL_OVERRIDE=	# empty

.include "options.mk"

PLIST_SRC+=		${PKGDIR}/PLIST

CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR:Q}
CONFIGURE_ARGS+=	--with-modules

CONFIGURE_ENV+=		F77=${FALSE:Q}

LDFLAGS.Darwin+=	-flat_namespace

EGDIR=			${PREFIX}/share/examples/lftp
CONF_FILES=		${EGDIR}/lftp.conf.default ${PKG_SYSCONFDIR}/lftp.conf

INSTALLATION_DIRS=	bin lib/lftp ${PKGMANDIR}/man1 share/examples/lftp share/lftp

post-install: post-install-perl
	${INSTALL_DATA} ${WRKSRC}/lftp.conf ${DESTDIR}${EGDIR}/lftp.conf.default

.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/readline/buildlink3.mk"
.include "../../textproc/expat/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
