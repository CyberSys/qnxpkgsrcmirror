# $NetBSD: Makefile,v 1.4 2008/03/04 11:02:24 rillig Exp $
#

DISTNAME=		findlib-1.1.2pl1
PKGNAME=		ocaml-${DISTNAME}
PKGREVISION=		1
CATEGORIES=		devel
MASTER_SITES=		http://www.ocaml-programming.de/packages/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.ocaml-programming.de/packages/
COMMENT=		Library finder for OCaml

USE_TOOLS+=		gmake m4
USE_PKGLOCALEDIR=	yes
HAS_CONFIGURE=		yes
CONFIGURE_ARGS+=	-bindir ${PREFIX}/bin
CONFIGURE_ARGS+=	-mandir ${PREFIX}/${PKGMANDIR}
CONFIGURE_ARGS+=	-config ${PKG_SYSCONFDIR}/ocamlfind.conf

EGDIR=			${PREFIX}/share/examples/ocaml-findlib
INSTALL_MAKE_FLAGS+=	OCAMLFIND_CONF=${EGDIR}/ocamlfind.conf
INSTALLATION_DIRS=	libexec

CONF_FILES=		${EGDIR}/ocamlfind.conf ${PKG_SYSCONFDIR}/ocamlfind.conf

USE_TOOLS+=		fgrep:run sh:run
SUBST_CLASSES+=		ofr
SUBST_STAGE.ofr=	pre-configure
SUBST_FILES.ofr=	ocaml-findlib-register.sh
SUBST_SED.ofr=		-e 's,@SH@,'${SH:Q}','
SUBST_SED.ofr+=		-e 's,@PREFIX@,${PREFIX},'
SUBST_SED.ofr+=		-e 's,@FGREP@,'${FGREP:Q}','

post-extract:
	${CP} ${FILESDIR}/ocaml-findlib-register.sh ${WRKSRC}

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/ocaml-findlib-register.sh ${PREFIX}/libexec/ocaml-findlib-register

.include "../../lang/ocaml/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
