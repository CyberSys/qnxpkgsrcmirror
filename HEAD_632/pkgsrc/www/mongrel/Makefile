# $NetBSD: Makefile,v 1.4 2007/12/13 14:48:09 taca Exp $

DISTNAME=	mongrel-1.0.1
CATEGORIES=	www
MASTER_SITES=	http://rubyforge.org/frs/download.php/16719/
EXTRACT_SUFX=	.gem

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	http://mongrel.rubyforge.org/
COMMENT=	Fast HTTP library and server for Ruby

BUILD_DEPENDS+=	rake-[0-9]*:../../devel/rake
DEPENDS+=	${RUBY_PKGPREFIX}-daemons>=1.0.3:../../misc/ruby-daemons
DEPENDS+=	${RUBY_PKGPREFIX}-fastthread>=1.0.0:../../devel/ruby-fastthread
DEPENDS+=	${RUBY_PKGPREFIX}-gem_plugin>=0.2.2:../../misc/ruby-gem_plugin
DEPENDS+=	rubygems-[0-9]*:../../misc/rubygems

REPLACE_RUBY_DIRS=	${WRKSRC}/examples
RUBY_HAS_ARCHLIB=	yes

PLIST_SRC=	${PKGDIR}/PLIST.common
PLIST_SRC+=	${WRKDIR}/PLIST_DYNAMIC
PLIST_SRC+=	${PKGDIR}/PLIST.common_end

FIND_PREFIX:=	RAKE_PREFIX=rake
.include "../../mk/find-prefix.mk"

.include "../../lang/ruby/modules.mk"

pre-configure:
	${RM} -f ${WRKSRC}/bin/*.orig

do-build:
	cd ${WRKSRC} && ${RAKE_PREFIX}/bin/rake clean
	cd ${WRKSRC} && ${RAKE_PREFIX}/bin/rake rerdoc
	cd ${WRKSRC} && ${RAKE_PREFIX}/bin/rake package

do-install:
	${GEM} install ${WRKSRC}/pkg/${DISTNAME}.gem -l

post-install:
	${RM} -f ${WRKDIR}/PLIST_DYNAMIC
.for rdocdir in lib/ruby/gems/1.8/doc/${DISTNAME}/rdoc			\
		lib/ruby/gems/1.8/gems/${DISTNAME}/doc/rdoc
	${FIND} ${PREFIX}/${rdocdir} -type f -print			\
		| ${SORT} -r						\
		| ${SED} 's;${PREFIX}/;;g'				\
		>> ${WRKDIR}/PLIST_DYNAMIC
.endfor

.include "../../mk/bsd.pkg.mk"
