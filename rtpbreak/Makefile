# $NetBSD: Makefile,v 1.4 2012/10/07 14:53:44 asau Exp $
#

DISTNAME=	rtpbreak-1.3a
PKGREVISION=	1
CATEGORIES=	net
MASTER_SITES=	http://xenion.antifork.org/rtpbreak/
EXTRACT_SUFX=	.tgz

MAINTAINER=	prudhvi-krishna-bsd@surapaneni.in
HOMEPAGE=	http://xenion.antifork.org/rtpbreak/
COMMENT=	Detects, reconstructs and analyzes any RTP session
LICENSE=	gnu-gpl-v2

DEPENDS+=	libnet11>=1.1.2.1:../../devel/libnet11

INSTALLATION_DIRS+=	bin

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/rtpbreak ${DESTDIR}${PREFIX}/bin/rtpbreak

.include "../../devel/libnet11/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
