# $NetBSD: Makefile,v 1.59 2009/01/26 20:06:15 kefren Exp $
#

DISTNAME=	ntp-4.2.4p6
CATEGORIES=	net time
MASTER_SITES=	http://www.eecis.udel.edu/~ntp/ntp_spool/ntp4/ntp-4.2/	\
		ftp://ftp.udel.edu/pub/ntp/ntp4/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.ntp.org/
COMMENT=	Network Time Protocol Version 4

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

CONFLICTS+=	openntpd-[0-9]*

GNU_CONFIGURE=	YES
USE_LIBTOOL=	YES
USE_TOOLS+=	pax perl:run

CONFIGURE_ARGS+=--sysconfdir=${PKG_SYSCONFDIR}
CONFIGURE_ENV+=	  PATH_PERL=${PERL5}

DOCDIR=		${DESTDIR}${PREFIX}/share/doc/ntp4
EXAMPLESDIR=	${DESTDIR}${PREFIX}/share/examples/ntp4
ALL_NTP_DOCS=	${DOCDIR} ${EXAMPLESDIR}

RCD_SCRIPTS=	ntpd ntpdate

post-install:
	cd ${WRKSRC}/html && pax -rw -pm . ${DOCDIR}
	cd ${WRKSRC}/conf && pax -rw -pm . ${EXAMPLESDIR}
	${CHOWN} -R ${SHAREOWN}:${SHAREGRP} ${ALL_NTP_DOCS}
	${FIND} ${ALL_NTP_DOCS} -type d -print | ${XARGS} ${CHMOD} ${PKGDIRMODE}
	${FIND} ${ALL_NTP_DOCS} -type f -print | ${XARGS} ${CHMOD} ${SHAREMODE}

.include "../../mk/bsd.prefs.mk"

PLIST_VARS+=	ntptime tickadj timetrim

.if ${OPSYS} == "NetBSD" || ${OPSYS} == "DragonFly"
PLIST.ntptime=		yes
PLIST.tickadj=		yes
.elif ${OPSYS} == "IRIX"
PLIST.timetrim=		yes
.elif ${OPSYS} == "SunOS"
PLIST.ntptime=		yes
.endif

.include "../../security/openssl/buildlink3.mk"

CONFIGURE_ARGS+=	--with-openssl-incdir=${SSLBASE}/include
CONFIGURE_ARGS+=	--with-openssl-libdir=${SSLBASE}/lib
CONFIGURE_ARGS+=	--with-crypto=openssl

.include "../../mk/bsd.pkg.mk"
