# $NetBSD: Makefile,v 1.8 2009/01/19 22:44:36 kefren Exp $

DISTNAME=	gtksourceview-sharp-2.0-0.12
PKGNAME=	${DISTNAME:S/-2.0-/2-/}
PKGREVISION=	5
CATEGORIES=	x11
MASTER_SITES=	http://go-mono.com/sources/gtksourceview-sharp2/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	kefren@NetBSD.org
HOMEPAGE=	http://www.mono-project.com/Gtk
COMMENT=	C\# Bindings to the GtkSourceView widget

GNU_CONFIGURE=	yes
USE_TOOLS+=	gmake pkg-config

CONFLICTS=	gtksourceview-sharp-2.0-[0-9]*

.include "../../lang/mono/buildlink3.mk"
.include "../../x11/gtksourceview/buildlink3.mk"
.include "../../x11/gtk-sharp/buildlink3.mk"
.include "../../x11/gnome-sharp/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
