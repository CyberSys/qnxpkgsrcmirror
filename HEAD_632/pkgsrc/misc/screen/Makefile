# $NetBSD: Makefile,v 1.73 2007/05/23 23:49:24 wiz Exp $

DISTNAME=	screen-4.0.3
CATEGORIES=	misc shells
MASTER_SITES=	ftp://ftp.uni-erlangen.de/pub/utilities/screen/ \
		http://komquats.com/distfiles/ \
		http://people.freebsd.org/~cy/distfiles/
#		${MASTER_SITE_GNU:=screen/}

MAINTAINER=	kim@tac.nyc.ny.us
HOMEPAGE=	http://www.gnu.org/software/screen/screen.html
COMMENT=	Multi-screen window manager

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

NOT_FOR_PLATFORM=	Interix-*-* # user auth and username size fixes needed

PLIST_SUBST+=		DISTNAME=${DISTNAME:Q}

GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--with-sys-screenrc=${PKG_SYSCONFDIR}/screenrc
CONFIGURE_ARGS+=	--enable-telnet

PKG_SHELL=		bin/screen
INFO_FILES=		YES

.include "../../mk/bsd.prefs.mk"

SUBST_CLASSES+=		paths
SUBST_FILES.paths=	etc/etcscreenrc doc/screen.1
SUBST_SED.paths+=	-e 's,@PKG_SYSCONFDIR@,${PKG_SYSCONFDIR},g'
SUBST_SED.paths+=	-e 's,@EXAMPLES@,${PREFIX}/share/examples/screen,g'
SUBST_STAGE.paths=	post-patch

.if ${OPSYS} == "QNX"
LIBS+=-lsocket
.endif

.if (${OPSYS} == "SunOS") && exists(/usr/5bin/tic)
INSTALLATION_DIRS+=	share/lib/terminfo
PLIST_SUBST+=	SCREEN_TERMINFO=
post-install: screen-terminfo
.else
PLIST_SUBST+=	SCREEN_TERMINFO="@comment "
.endif

post-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX}/share/examples/screen
	${INSTALL_DATA} ${WRKSRC}/etc/etcscreenrc			\
		${DESTDIR}${PREFIX}/share/examples/screen/etcscreenrc
	${INSTALL_DATA} ${WRKSRC}/etc/screenrc				\
		${DESTDIR}${PREFIX}/share/examples/screen/screenrc
.if !empty(UNPRIVILEGED:M[Yy][Ee][Ss])
	chmod -s ${DESTDIR}${PREFIX}/bin/${DISTNAME}
.endif

.PHONY: screen-terminfo
screen-terminfo:
	cd ${WRKSRC}/terminfo &&					\
	${SETENV} TERMINFO=${PREFIX}/share/lib/terminfo			\
		/usr/5bin/tic screeninfo.src

.include "../../mk/bsd.pkg.mk"
