# $NetBSD: Makefile,v 1.5 2015/07/16 11:47:14 thomasklausner Exp $

DISTNAME=	pyphant-1.0b1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	graphics python
MASTER_SITES=	http://pypi.python.org/packages/source/p/pyphant/ \
		http://garr.dl.sourceforge.net/project/pyphant/Pyphant-1.0/

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	http://pyphant.sourceforge.net/
COMMENT=	Workflow modelling app
#LICENSE=	# TODO: (see mk/license.mk)

DEPENDS+=	${PYPKGPREFIX}-simplejson>=2.1.1:../../converters/py-simplejson
DEPENDS+=	${PYPKGPREFIX}-sqlite3-[0-9]*:../../databases/py-sqlite3
DEPENDS+=	${PYPKGPREFIX}-Paste>=1.7.4:../../www/py-paste

USE_LANGUAGES=	# none

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
