/*-
 * Copyright (c) 2003-2007 Tim Kientzle
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR(S) ``AS IS'' AND ANY EXPRESS OR
 * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 * OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 * IN NO EVENT SHALL THE AUTHOR(S) BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
 * NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
 * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
#include "test.h"
__FBSDID("$FreeBSD$");


static void
unpack_test(const char *from, const char *options)
{
	struct stat st, st2;
	char buff[128];
	int r;

	/* Create a work dir named after the file we're unpacking. */
	assertEqualInt(0, mkdir(from, 0775));
	chdir(from);

	/*
	 * Use cpio to unpack the sample archive
	 */
	r = systemf("%s -i %s < %s/%s >unpack.out 2>unpack.err",
	    testprog, options, refdir, from);
	failure("Error invoking %s -i %s < %s/%s", testprog, options, refdir, from);
	assertEqualInt(r, 0);

	/* Verify that nothing went to stderr. */
	assertEmptyFile("unpack.err");

	/*
	 * Verify unpacked files.
	 */

	/* Regular file with 2 links. */
	r = lstat("file", &st);
	failure("Failed to stat file %s/file, errno=%d", from, errno);
	assertEqualInt(r, 0);
	if (r == 0) {
		assert(S_ISREG(st.st_mode));
		assertEqualInt(0644, st.st_mode & 0777);
		failure("file %s/file", from);
		assertEqualInt(10, st.st_size);
		failure("file %s/file", from);
		assertEqualInt(2, st.st_nlink);
	}

	/* Another name for the same file. */
	r = lstat("linkfile", &st2);
	failure("Failed to stat file %s/linkfile, errno=%d", from, errno);
	assertEqualInt(r, 0);
	if (r == 0) {
		assert(S_ISREG(st2.st_mode));
		assertEqualInt(0644, st2.st_mode & 0777);
		failure("file %s/file", from);
		assertEqualInt(10, st2.st_size);
		failure("file %s/file", from);
		assertEqualInt(2, st2.st_nlink);
		/* Verify that the two are really hardlinked. */
		assertEqualInt(st.st_dev, st2.st_dev);
		failure("file %s/file", from);
		assertEqualInt(st.st_ino, st2.st_ino);
	}

	/* Symlink */
	r = lstat("symlink", &st);
	failure("Failed to stat file %s/symlink, errno=%d", from, errno);
	assertEqualInt(r, 0);
	if (r == 0) {
		failure("symlink should be a symlink; actual mode is %o",
		    st.st_mode);
		assert(S_ISLNK(st.st_mode));
		if (S_ISLNK(st.st_mode)) {
			r = readlink("symlink", buff, sizeof(buff));
			assertEqualInt(r, 4);
			buff[r] = '\0';
			assertEqualString(buff, "file");
		}
	}

	/* dir */
	r = lstat("dir", &st);
	if (r == 0) {
		assertEqualInt(r, 0);
		assert(S_ISDIR(st.st_mode));
		assertEqualInt(0775, st.st_mode & 0777);
	}

	chdir("..");
}

DEFINE_TEST(test_gcpio_compat)
{
	int oldumask;

	oldumask = umask(0);

	/* Dearchive sample files with a variety of options. */
	unpack_test("test_gcpio_compat_ref.bin", "");
	/* TODO: Fix the next two. */
	/* unpack_test("test_gcpio_compat_ref.crc", ""); */
	/* unpack_test("test_gcpio_compat_ref.newc", ""); */
	unpack_test("test_gcpio_compat_ref.ustar", "");

	umask(oldumask);
}
