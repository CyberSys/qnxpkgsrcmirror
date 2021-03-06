$NetBSD: patch-execinfo.c,v 1.1.1.1 2013/03/14 22:27:15 asau Exp $

Patch from FreeBSD ports devel/libexecinfo. Makes execinfo.c compilable

--- execinfo.c.orig
+++ execinfo.c
@@ -69,7 +69,8 @@
 char **
 backtrace_symbols(void *const *buffer, int size)
 {
-    int i, clen, alen, offset;
+    size_t clen, alen;
+    int i, offset;
     char **rval;
     char *cp;
     Dl_info info;
@@ -78,7 +79,6 @@
     rval = malloc(clen);
     if (rval == NULL)
         return NULL;
-    (char **)cp = &(rval[size]);
     for (i = 0; i < size; i++) {
         if (dladdr(buffer[i], &info) != 0) {
             if (info.dli_sname == NULL)
@@ -92,14 +92,14 @@
                    2 +                      /* " <" */
                    strlen(info.dli_sname) + /* "function" */
                    1 +                      /* "+" */
-                   D10(offset) +            /* "offset */
+                   10 +                     /* "offset */
                    5 +                      /* "> at " */
                    strlen(info.dli_fname) + /* "filename" */
                    1;                       /* "\0" */
             rval = realloc_safe(rval, clen + alen);
             if (rval == NULL)
                 return NULL;
-            snprintf(cp, alen, "%p <%s+%d> at %s",
+            snprintf((char *) rval + clen, alen, "%p <%s+%d> at %s",
               buffer[i], info.dli_sname, offset, info.dli_fname);
         } else {
             alen = 2 +                      /* "0x" */
@@ -108,12 +108,15 @@
             rval = realloc_safe(rval, clen + alen);
             if (rval == NULL)
                 return NULL;
-            snprintf(cp, alen, "%p", buffer[i]);
+            snprintf((char *) rval + clen, alen, "%p", buffer[i]);
         }
-        rval[i] = cp;
-        cp += alen;
+        rval[i] = (char *) clen;
+        clen += alen;
     }
 
+    for (i = 0; i < size; i++)
+        rval[i] += (long) rval;
+
     return rval;
 }
 
