# $NetBSD: Makefile,v 1.11 2015/09/03 22:35:18 leot1990 Exp $
#

DISTNAME=	girara-0.2.4
CATEGORIES=	x11
MASTER_SITES=	http://pwmt.org/projects/girara/download/

MAINTAINER=	degroote@NetBSD.org
HOMEPAGE=	http://pwmt.org/projects/girara/
COMMENT=	Library to develop simple and minimalist user interface
LICENSE=	zlib

USE_TOOLS+=	pkg-config gettext gmake groff
USE_LIBTOOL=	yes

SUBST_CLASSES+=		makefile
SUBST_STAGE.makefile=	pre-build
SUBST_MESSAGE.makefile=	Fixing install invokation
SUBST_FILES.makefile=	Makefile
SUBST_SED.makefile=	-e '/install.*\.so.*/ s;install -m 644;${INSTALL_LIB:Q};'

MAKE_ENV+=	COLOR=0

.include "../../x11/gtk3/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
