# $NetBSD: Makefile,v 1.1 2015/08/01 22:15:24 jihbed Exp $

DISTNAME=	Nuitka-0.5.13.4
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:tl}
CATEGORIES=	lang python
MASTER_SITES=	https://pypi.python.org/packages/source/N/Nuitka/

MAINTAINER=	kamelderouiche@yahoo.com
HOMEPAGE=	http://nuitka.net
COMMENT=	Python compiler with full language support and CPython
LICENSE=	apache-2.0

USE_LANGUAGES=	c++

PLIST_SUBST+=   PYVERSSUFFIX=${PYVERSSUFFIX}
PYDISTUTILSPKG= yes

post-extract:
	${MV} ${WRKSRC}/bin/nuitka  ${WRKSRC}/bin/nuitka${PYVERSSUFFIX}

.include "../../devel/py-cython/buildlink3.mk"
.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
