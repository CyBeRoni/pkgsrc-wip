# $NetBSD: Makefile,v 1.5 2012/10/06 17:55:30 asau Exp $
#

DISTNAME=	construct-2.04
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	devel python
MASTER_SITES=	http://pypi.python.org/packages/source/c/construct/

MAINTAINER=	eric@cirr.com
HOMEPAGE=	http://pypi.python.org/pypi/construct
COMMENT=	Powerful declarative parser for binary data
LICENSE=	public-domain

PYDISTUTILSPKG=	yes
USE_LANGUAGES+=	c
PLIST_SUBST+=	PYVERSSUFFIX=${PYVERSSUFFIX}

# XXX Avoid picking up other compilers when installed

.include "../../mk/compiler.mk"

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
