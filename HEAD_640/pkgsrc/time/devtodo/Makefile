# $NetBSD: Makefile,v 1.28 2008/11/24 08:23:39 obache Exp $

DISTNAME=	devtodo-0.1.20
PKGREVISION=	2
CATEGORIES=	time
MASTER_SITES=	http://swapoff.org/files/devtodo/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://swapoff.org/DevTodo
COMMENT=	Display and manage a list of items that are outstanding

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
USE_GNU_READLINE=	# uses rl_startup_hook()
GNU_CONFIGURE=		yes

EGDIR=			${PREFIX}/share/examples/devtodo
INSTALL_MAKE_FLAGS+=	sysconfdir=${EGDIR}

post-install:
.for CFILE in	changelog2html						\
		changelog2todo						\
		tdrec							\
		todo-nodone-html.xslt					\
		todo2html-2.xslt					\
		todo2html.xslt						\
		todo2pdf.README						\
		todo2pdf.sh						\
		todo2pdf.xslt
	${INSTALL_DATA} ${WRKSRC}/contrib/${CFILE} ${DESTDIR}${EGDIR}
.endfor

.include "../../devel/readline/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
