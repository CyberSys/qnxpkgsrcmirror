# $NetBSD: Makefile,v 1.16 2013/05/31 12:39:42 wiz Exp $

.include "../../chat/xchat/Makefile.common"

PKGNAME=		${DISTNAME:S/-/-perl-/}
PKGREVISION=		7
OWNER=			tron@NetBSD.org

COMMENT=		Perl scripting plugin for XChat

DEPENDS+=		xchat>=2.0.0:../../chat/xchat

BUILD_DIRS?=		plugins/perl

CONFIGURE_ARGS+=	--disable-gtkfe
CONFIGURE_ARGS+=	--enable-tcl=no
CONFIGURE_ARGS+=	--enable-perl
CONFIGURE_ARGS+=	--disable-python
CONFIGURE_ARGS+=	--disable-xlib

USE_PERL5=	YES
USE_TOOLS+=	perl

.include "../../lang/perl5/buildlink3.mk"

post-install:
	${INSTALL_DATA_DIR} ${DESTDIR}/${PREFIX}/share/examples/xchat
	${INSTALL_DATA} ${WRKSRC}/plugins/perl/alt_completion.pl \
		${DESTDIR}/${PREFIX}/share/examples/xchat
	${INSTALL_DATA_DIR} ${DESTDIR}/${PREFIX}/share/doc/xchat
	${INSTALL_DATA} ${WRKSRC}/plugins/perl/xchat2-perl.html \
		${DESTDIR}/${PREFIX}/share/doc/xchat
	${INSTALL_DATA} ${WRKSRC}/plugins/perl/xchat2-perldocs.html \
		${DESTDIR}/${PREFIX}/share/doc/xchat

.include "../../mk/bsd.pkg.mk"
