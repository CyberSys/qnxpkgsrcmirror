# $NetBSD: Makefile,v 1.7 2008/07/13 18:36:22 dholland Exp $

PKGNAME=	emacs-nox11-${EMACSVERSION}a
PKGREVISION=	13
CATEGORIES=	editors
COMMENT_EXTRA=	: non-X11 version

CONFLICTS+=	emacs-[0-9]*

.include "../../mk/bsd.prefs.mk"

# Forcibly remove any "x11" options.
PKG_OPTIONS.emacs+=	-x11 -emacs-xaw3d -motif -xaw

.include "../../editors/emacs21/options.mk"

.include "../../editors/emacs21/Makefile.common"

.include "../../mk/bsd.pkg.mk"
