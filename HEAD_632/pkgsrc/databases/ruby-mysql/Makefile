# $NetBSD: Makefile,v 1.26 2007/02/22 19:26:19 wiz Exp $
#

DISTNAME=	mysql-ruby-2.7.3
PKGNAME=	${RUBY_PKGPREFIX}-mysql-2.7.3
CATEGORIES=	databases ruby
MASTER_SITES=	http://tmtm.org/downloads/mysql/ruby/

MAINTAINER=	neumann@s-direktnet.de
HOMEPAGE=	http://www.tmtm.org/en/mysql/ruby/
COMMENT=	Ruby extension for MySQL

RUBY_HAS_ARCHLIB=	yes
RUBY_REQD=		1.8.2
USE_RUBY_EXTCONF=	yes
INSTALL_TARGET=		site-install
CONFIGURE_ARGS+=	--with-mysql-config

DOCS=		README.html README_ja.html tommy.css

post-install:
	${INSTALL_DATA_DIR} ${RUBY_DOCDIR}/mysql
.for f in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/${f} ${RUBY_DOCDIR}/mysql
.endfor
	${INSTALL_DATA_DIR} ${RUBY_EXAMPLESDIR}/mysql
	${INSTALL_SCRIPT} ${WRKSRC}/test.rb ${RUBY_EXAMPLESDIR}/mysql

.include "../../lang/ruby/modules.mk"
.include "../../mk/mysql.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
