# $NetBSD: Makefile,v 1.4 2014/01/19 20:34:14 thomasklausner Exp $

DISTNAME=	vo-0.5
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	math textproc
MASTER_SITES=	http://stsdas.stsci.edu/astrolib/

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	https://www.stsci.edu/trac/ssb/astrolib
COMMENT=	Python based tools to parse/write VOTABLE file

DEPENDS+=	${PYPKGPREFIX}-fits>=2.3.1:../../graphics/py-fits

PYDISTUTILSPKG=	yes

do-test:
	( cd ${WRKSRC}/test && ${PYTHONBIN} test.py )

.include "../../lang/python/extension.mk"
.include "../../math/py-numpy/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
