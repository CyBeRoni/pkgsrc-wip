# $NetBSD: Makefile,v 1.2 2012/10/23 19:51:01 asau Exp $

DISTNAME=	fdupes-1.51
CATEGORIES=	sysutils
MASTER_SITES=	http://fdupes.googlecode.com/files/

MAINTAINER=	ef@math.uni-bonn.de
HOMEPAGE=	http://netdial.caribe.net/~adrian2/fdupes.html
COMMENT=	Program for identifying or deleting duplicate files

USE_LANGUAGES=	c
NO_CONFIGURE=	yes

MAKE_FLAGS=	INSTALLDIR=${PREFIX}/bin MANPAGEDIR=${PREFIX}/${PKGMANDIR}

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

.include "../../mk/bsd.pkg.mk"
