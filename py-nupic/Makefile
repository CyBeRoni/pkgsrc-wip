# $NetBSD$

DISTNAME=	nupic-0.3.4
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	devel python
MASTER_SITES=	https://pypi.python.org/packages/source/n/nupic/

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	https://github.com/numenta/nupic
COMMENT=	Numenta Platform for Intelligent Computing
LICENSE=	gnu-agpl-v3

DEPENDS+=	${PYPKGPREFIX}-wheel>=0.24.0:../../wip/py-wheel

.include "../../lang/python/egg.mk"
.include "../../math/py-numpy/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"