# $NetBSD: buildlink3.mk,v 1.4 2015/04/09 04:13:09 krytarowski Exp $

BUILDLINK_TREE+=	libappindicator

.if !defined(LIBAPPINDICATOR_BUILDLINK3_MK)
LIBAPPINDICATOR_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libappindicator+=	libappindicator>=12.10.0
BUILDLINK_PKGSRCDIR.libappindicator?=	../../wip/libappindicator

.include "../../wip/libindicator/buildlink3.mk"
.include "../../wip/libdbusmenu-gtk/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.endif	# LIBAPPINDICATOR_BUILDLINK3_MK

BUILDLINK_TREE+=	-libappindicator
