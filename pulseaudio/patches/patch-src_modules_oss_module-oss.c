$NetBSD: patch-src_modules_oss_module-oss.c,v 1.3 2015/03/22 09:31:40 makoto Exp $

Set proper sound device default on NetBSD.

--- src/modules/oss/module-oss.c.orig	2014-01-23 18:57:55.000000000 +0000
+++ src/modules/oss/module-oss.c
@@ -98,7 +98,11 @@ PA_MODULE_USAGE(
 PA_MODULE_DEPRECATED("Please use module-alsa-card instead of module-oss!");
 #endif
 
+#if defined(__NetBSD__)
+#define DEFAULT_DEVICE "/dev/audio"
+#else /* Linux */
 #define DEFAULT_DEVICE "/dev/dsp"
+#endif
 
 struct userdata {
     pa_core *core;
