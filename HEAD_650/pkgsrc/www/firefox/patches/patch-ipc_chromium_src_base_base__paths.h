$NetBSD: patch-ipc_chromium_src_base_base__paths.h,v 1.1 2013/07/17 11:00:13 jperkin Exp $

--- ipc/chromium/src/base/base_paths.h.orig	2013-06-18 11:01:23.000000000 +0000
+++ ipc/chromium/src/base/base_paths.h
@@ -13,7 +13,7 @@
 #include "base/base_paths_win.h"
 #elif defined(OS_MACOSX)
 #include "base/base_paths_mac.h"
-#elif defined(OS_LINUX) || defined(OS_BSD)
+#elif defined(OS_LINUX) || defined(OS_BSD) || defined(OS_SOLARIS) || defined(OS_QNX)
 #include "base/base_paths_linux.h"
 #endif
 #include "base/path_service.h"
