# $NetBSD: Makefile,v 1.6 2015/04/19 15:10:39 othyro Exp $
#

DISTNAME=	djplay-0.5.0
PKGREVISION=	1
CATEGORIES=	audio net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=djplay/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://djplay.sourceforge.net/
COMMENT=	High class live DJing application
LICENSE=	gnu-gpl-v2

DEPENDS+=		bpmcounter-[0-9]*:../../wip/bpmcounter

GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes
USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		c c++
USE_TOOLS+=		bison flex gmake pkg-config
CONFIGURE_ARGS+=	--with-SoundTouchincludes=${BUILDLINK_PREFIX.soundtouch}/include/soundtouch/
BUILD_DEPENDS+=		soundtouch-[0-9]*:../../audio/soundtouch

SUBST_CLASSES+=		pixmaps
SUBST_STAGE.pixmaps=	pre-configure
SUBST_MESSAGE.pixmaps=	Fixing pixmaps path.
SUBST_FILES.pixmaps=	Makefile.am Makefile.in
SUBST_SED.pixmaps=	-e 's|/djplay|/pixmaps|1'

SUBST_CLASSES+=		qmake
SUBST_STAGE.qmake=	pre-configure
SUBST_MESSAGE.qmake=	Fixing qmake path.
SUBST_FILES.qmake=	plugins/Makefile.in
SUBST_SED.qmake=	-e "s|qmake|${QTDIR}/bin/qmake|1"

.include "options.mk"

.include "../../mk/dlopen.buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../audio/libvorbis/buildlink3.mk"
.include "../../devel/glib/buildlink3.mk"
.include "../../wip/libdjconsole/buildlink3.mk"
.include "../../math/fftw/buildlink3.mk"
.include "../../audio/libsamplerate/buildlink3.mk"
.include "../../audio/jack/buildlink3.mk"
.include "../../x11/qt3-libs/buildlink3.mk"
.include "../../x11/qt3-tools/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
