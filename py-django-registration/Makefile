# $NetBSD: Makefile,v 1.1 2015/01/14 06:52:51 makoto Exp $

DISTNAME=	django-registration-1.0
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:S:-alpha-:a:}
CATEGORIES=	www python
MASTER_SITES=	http://bitbucket.org/ubernostrum/django-registration/downloads/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://bitbucket.org/ubernostrum/django-registration/wiki/Home
COMMENT=	User-registration application for Django
LICENSE=	modified-bsd

DEPENDS+=      ${PYPKGPREFIX}-django>=1.4:../../www/py-django

USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		# none

EGG_NAME=	${DISTNAME:S/-/_/g:S/registration_/registration-/}

PYTHON_VERSIONS_INCOMPATIBLE=	33 34 # not yet ported as of 0.8a1

.include "../../lang/python/distutils.mk"
.include "../../mk/bsd.pkg.mk"
