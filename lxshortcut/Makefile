# $NetBSD: Makefile,v 1.2 2012/10/03 09:10:45 asau Exp $

DISTNAME=	lxshortcut-0.1.2
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lxde/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://lxde.sourceforge.net/
COMMENT=	Desktop Entry application shortcuts editor

#DEPENDS+=	lxmenu-data-[0-9]*:../../wip/lxmenu-data

LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=	yes
#USE_LIBTOOL=	yes
#USE_TOOLS+=	perl pkg-config
USE_TOOLS+=	intltool pkg-config

#.include "../../devel/glib2/buildlink3.mk"
#.include "../../devel/libwnck/buildlink3.mk"
#.include "../../wip/menu-cache/buildlink3.mk"
#.include "../../graphics/gdk-pixbuf2-xlib/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
