# $NetBSD: Makefile,v 1.39 2013/07/05 13:29:42 ryoon Exp $

DISTNAME=	kdf-${_KDE_VERSION}
PKGREVISION=	4
CATEGORIES=	sysutils
COMMENT=	Show mount points and disk usage under KDE desktop

.include "../../meta-pkgs/kde4/Makefile.kde4"

.include "../../meta-pkgs/kde4/kde4.mk"

.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/kdelibs4/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
