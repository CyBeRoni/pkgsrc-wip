# $NetBSD: Makefile,v 1.3 2015/04/11 16:43:29 krytarowski Exp $

DISTNAME=	polkit-qt-1-0.112.0
PKGNAME=	${DISTNAME:S/-qt-/-qt5-/}
CATEGORIES=	security
MASTER_SITES=	${MASTER_SITE_KDE:=apps/KDE4.x/admin/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://projects.kde.org/projects/kdesupport/polkit-qt-1
COMMENT=	Qt5 Wrapper around PolicyKit
LICENSE=	gnu-lgpl-v2.1

EXTRACT_USING=	gtar

USE_LANGUAGES=	c c++
USE_CMAKE=	yes
USE_TOOLS+=	pkg-config

.include "../../x11/qt5-qtbase/buildlink3.mk"
.include "../../security/policykit/buildlink3.mk"
.include "../../wip/polkit/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
