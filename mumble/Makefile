# $NetBSD: Makefile,v 1.6 2012/11/12 16:51:36 othyro Exp $
#

DISTNAME=	mumble-1.2.2
PKGREVISION=	1
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mumble/}

MAINTAINER=	elentirmo.gilgalad@gmail.com
HOMEPAGE=	http://mumble.sourceforge.net/
COMMENT=	Low latency VOIP software used mostly during computer games
#LICENSE=	# TODO: (see mk/license.mk)

BUILD_DEPENDS+=	boost-headers-[0-9]*:../../devel/boost-headers
USE_TOOLS+= 	pkg-config
USE_LANGUAGES=	c c++

PKGCONFIG_OVERRIDE+=	celt-0.7.0-src/celt.pc.in
PKGCONFIG_OVERRIDE+=	speex/speexdsp.pc.in
PKGCONFIG_OVERRIDE+=	speex/speex.pc.in

.include "options.mk"

do-configure:
	cd ${WRKSRC} && \
	${QTDIR}/bin/qmake -unix -recursive main.pro ${CONFIG_OPTIONS} ${MAKE_ENV}

#BUILDLINK_API_DEPENDS.celt+=   celt>=0.7.0
#BUILDLINK_API_DEPENDS.celt+=   celt<0.7.1
.include "../../audio/celt/buildlink3.mk"
.include "../../audio/speex/buildlink3.mk"
.include "../../multimedia/libogg/buildlink3.mk"
.include "../../audio/libsndfile/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../devel/boost-libs/buildlink3.mk"
.include "../../x11/libXevie/buildlink3.mk"
# XXX: TODO: check what happes to this with pulse/alsa/oss/other enabled
.include "../../audio/portaudio/buildlink3.mk"
.include "../../devel/protobuf/buildlink3.mk"

.include "../../x11/qt4-tools/buildlink3.mk"
.include "../../x11/qt4-libs/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
