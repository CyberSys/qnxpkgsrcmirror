# $NetBSD: Makefile,v 1.340 2009/01/09 19:34:44 rillig Exp $
#

COMMENT=	Security tools

SUBDIR+=	Bastille
SUBDIR+=	CSP
SUBDIR+=	CoolKey
SUBDIR+=	EasyPG
SUBDIR+=	MyPasswordSafe
SUBDIR+=	PAM
SUBDIR+=	aide
SUBDIR+=	aide06
SUBDIR+=	amap
SUBDIR+=	amavis-perl
SUBDIR+=	amavisd-new
SUBDIR+=	antonym
SUBDIR+=	ap-modsecurity
SUBDIR+=	ap-modsecurity2
SUBDIR+=	apg
SUBDIR+=	arirang
SUBDIR+=	avcheck
SUBDIR+=	base
SUBDIR+=	bcrypt
SUBDIR+=	beecrypt
SUBDIR+=	bitstir
SUBDIR+=	botan
SUBDIR+=	caff
SUBDIR+=	ccid
SUBDIR+=	cfs
SUBDIR+=	chkrootkit
SUBDIR+=	courier-authlib
SUBDIR+=	crack
SUBDIR+=	crypto++
SUBDIR+=	cvm
SUBDIR+=	cy2-anonymous
SUBDIR+=	cy2-crammd5
SUBDIR+=	cy2-digestmd5
SUBDIR+=	cy2-gssapi
SUBDIR+=	cy2-ldapdb
SUBDIR+=	cy2-login
SUBDIR+=	cy2-ntlm
SUBDIR+=	cy2-otp
SUBDIR+=	cy2-plain
SUBDIR+=	cy2-sql
SUBDIR+=	cyrus-sasl
SUBDIR+=	cyrus-saslauthd
SUBDIR+=	ddos-scan
SUBDIR+=	destroy
SUBDIR+=	dirb
SUBDIR+=	dirmngr
SUBDIR+=	dropbear
SUBDIR+=	dsniff
SUBDIR+=	dsniff-nox11
SUBDIR+=	egd
SUBDIR+=	flawfinder
SUBDIR+=	fprot-workstation-bin
SUBDIR+=	fragroute
SUBDIR+=	fsh
SUBDIR+=	fwbuilder
SUBDIR+=	fwbuilder21
SUBDIR+=	gnome-keyring
SUBDIR+=	gnome-keyring-manager
SUBDIR+=	gnu-crypto
SUBDIR+=	gnupg
SUBDIR+=	gnupg2
SUBDIR+=	gnutls
SUBDIR+=	gpa
SUBDIR+=	gpass
SUBDIR+=	gpg2dot
SUBDIR+=	gpgme
SUBDIR+=	gpgme03
SUBDIR+=	gsasl
SUBDIR+=	gss
SUBDIR+=	gtk-systrace
SUBDIR+=	hackbot
SUBDIR+=	hashcash
SUBDIR+=	heimdal
SUBDIR+=	honeyd
SUBDIR+=	honeyd-arpd
SUBDIR+=	hydan
SUBDIR+=	hydra
SUBDIR+=	ike-scan
SUBDIR+=	ipsec-tools
SUBDIR+=	isakmpd
SUBDIR+=	jessie
SUBDIR+=	john
SUBDIR+=	keepassx
SUBDIR+=	keychain
SUBDIR+=	kssh
SUBDIR+=	kth-krb4
SUBDIR+=	libassuan
SUBDIR+=	libbf
SUBDIR+=	libcrack
SUBDIR+=	libdes
SUBDIR+=	libfwbuilder
SUBDIR+=	libfwbuilder21
SUBDIR+=	libgcrypt
SUBDIR+=	libgpg-error
SUBDIR+=	libidea
SUBDIR+=	libident
SUBDIR+=	libksba
SUBDIR+=	libksba04
SUBDIR+=	libmcrypt
SUBDIR+=	libnasl
SUBDIR+=	libprelude
SUBDIR+=	libpreludedb
SUBDIR+=	libssh
SUBDIR+=	libssh2
SUBDIR+=	libtasn1
SUBDIR+=	libtcpa
SUBDIR+=	logcheck
SUBDIR+=	lsh
SUBDIR+=	mcrypt
SUBDIR+=	md4-collision
SUBDIR+=	md5-collision
SUBDIR+=	mhash
SUBDIR+=	mirrordir
SUBDIR+=	mit-krb5
SUBDIR+=	mixminion
SUBDIR+=	mozilla-rootcerts
SUBDIR+=	msu
SUBDIR+=	msudir
SUBDIR+=	nessus
SUBDIR+=	nessus-core
SUBDIR+=	nessus-libraries
SUBDIR+=	nessus-plugins
SUBDIR+=	netramet
SUBDIR+=	nfsbug
SUBDIR+=	nikto
SUBDIR+=	ocaml-ssl
SUBDIR+=	opencdk
SUBDIR+=	openpam
SUBDIR+=	openssh
SUBDIR+=	openssl
SUBDIR+=	openvas-client
SUBDIR+=	openvas-libnasl
SUBDIR+=	openvas-libraries
SUBDIR+=	openvas-plugins
SUBDIR+=	openvas-server
SUBDIR+=	otpCalc
SUBDIR+=	p0f
SUBDIR+=	p5-Authen-CAS-Client
SUBDIR+=	p5-Authen-PAM
SUBDIR+=	p5-Authen-PluggableCaptcha
SUBDIR+=	p5-Authen-SASL
SUBDIR+=	p5-Authen-SASL-Cyrus
SUBDIR+=	p5-Crypt-Blowfish
SUBDIR+=	p5-Crypt-CAST5_PP
SUBDIR+=	p5-Crypt-CBC
SUBDIR+=	p5-Crypt-CipherSaber
SUBDIR+=	p5-Crypt-DES
SUBDIR+=	p5-Crypt-DES_EDE3
SUBDIR+=	p5-Crypt-DH
SUBDIR+=	p5-Crypt-DSA
SUBDIR+=	p5-Crypt-Eksblowfish
SUBDIR+=	p5-Crypt-GPG
SUBDIR+=	p5-Crypt-GeneratePassword
SUBDIR+=	p5-Crypt-IDEA
SUBDIR+=	p5-Crypt-OpenPGP
SUBDIR+=	p5-Crypt-OpenSSL-AES
SUBDIR+=	p5-Crypt-OpenSSL-Bignum
SUBDIR+=	p5-Crypt-OpenSSL-DSA
SUBDIR+=	p5-Crypt-OpenSSL-RSA
SUBDIR+=	p5-Crypt-OpenSSL-Random
SUBDIR+=	p5-Crypt-PasswdMD5
SUBDIR+=	p5-Crypt-Primes
SUBDIR+=	p5-Crypt-RC4
SUBDIR+=	p5-Crypt-RIPEMD160
SUBDIR+=	p5-Crypt-RSA
SUBDIR+=	p5-Crypt-RandPasswd
SUBDIR+=	p5-Crypt-Random
SUBDIR+=	p5-Crypt-Rijndael
SUBDIR+=	p5-Crypt-SSLeay
SUBDIR+=	p5-Crypt-SmbHash
SUBDIR+=	p5-Crypt-Twofish
SUBDIR+=	p5-Data-SimplePassword
SUBDIR+=	p5-Digest
SUBDIR+=	p5-Digest-BubbleBabble
SUBDIR+=	p5-Digest-CRC
SUBDIR+=	p5-Digest-HMAC
SUBDIR+=	p5-Digest-Hashcash
SUBDIR+=	p5-Digest-MD2
SUBDIR+=	p5-Digest-MD4
SUBDIR+=	p5-Digest-MD5
SUBDIR+=	p5-Digest-MD5-File
SUBDIR+=	p5-Digest-Nilsimsa
SUBDIR+=	p5-Digest-SHA
SUBDIR+=	p5-Digest-SHA1
SUBDIR+=	p5-GSSAPI
SUBDIR+=	p5-GnuPG-Interface
SUBDIR+=	p5-IO-Socket-SSL
SUBDIR+=	p5-Module-Signature
SUBDIR+=	p5-Net-DNS-SEC
SUBDIR+=	p5-Net-DNS-SEC-Maint-Key
SUBDIR+=	p5-Net-SSH
SUBDIR+=	p5-Net-SSLeay
SUBDIR+=	p5-OpenSSL
SUBDIR+=	p5-SHA
SUBDIR+=	p5-String-Random
SUBDIR+=	p5-Tie-EncryptedHash
SUBDIR+=	p5-pcsc
SUBDIR+=	pakchois
SUBDIR+=	pakemon
SUBDIR+=	pam-af
SUBDIR+=	pam-dbm
SUBDIR+=	pam-ldap
SUBDIR+=	pam-mysql
SUBDIR+=	pam-pwauth_suid
SUBDIR+=	pam-radius
SUBDIR+=	pcsc-lite
SUBDIR+=	pcsc-tools
SUBDIR+=	pgp2
SUBDIR+=	pgp5
SUBDIR+=	pgpdump
SUBDIR+=	pgpenvelope
SUBDIR+=	php-mcrypt
SUBDIR+=	php-mhash
SUBDIR+=	pinentry
SUBDIR+=	pinepgp
SUBDIR+=	pks
SUBDIR+=	policykit
SUBDIR+=	policykit-gnome
SUBDIR+=	portsentry
SUBDIR+=	prelude-correlator
SUBDIR+=	prelude-lml
SUBDIR+=	prelude-manager
SUBDIR+=	prelude-pflogger
SUBDIR+=	priv
SUBDIR+=	prngd
SUBDIR+=	pscan
SUBDIR+=	putty
SUBDIR+=	pwsafe
SUBDIR+=	py-OpenSSL
SUBDIR+=	py-SSLCrypto
SUBDIR+=	py-amkCrypto
SUBDIR+=	py-asn1
SUBDIR+=	py-crack
SUBDIR+=	py-cryptkit
SUBDIR+=	py-denyhosts
SUBDIR+=	py-gnupg
SUBDIR+=	py-gnutls
SUBDIR+=	py-m2crypto
SUBDIR+=	py-mcrypt
SUBDIR+=	py-paramiko
SUBDIR+=	py-prewikka
SUBDIR+=	py-smbpasswd
SUBDIR+=	py-tlslite
SUBDIR+=	pyca
SUBDIR+=	qca
SUBDIR+=	qca-tls
SUBDIR+=	qca2
SUBDIR+=	qca2-ossl
SUBDIR+=	qident
SUBDIR+=	rainbowcrack
SUBDIR+=	rats
SUBDIR+=	rc5des
SUBDIR+=	rid
SUBDIR+=	rsaref
SUBDIR+=	ruby-ezcrypto
SUBDIR+=	ruby-net-sftp
SUBDIR+=	ruby-net-ssh
SUBDIR+=	ruby-password
SUBDIR+=	ruby-tcpwrap
SUBDIR+=	sbd
SUBDIR+=	scanssh
SUBDIR+=	seahorse
SUBDIR+=	seahorse-plugins
SUBDIR+=	secpanel
SUBDIR+=	sfs
SUBDIR+=	sign
SUBDIR+=	skey
SUBDIR+=	smtpd
SUBDIR+=	sniff
SUBDIR+=	snortsnarf
SUBDIR+=	snow
SUBDIR+=	srm
SUBDIR+=	srp_client
SUBDIR+=	ssh-askpass
SUBDIR+=	ssh-ip-tunnel
SUBDIR+=	ssh2
SUBDIR+=	sshfp
SUBDIR+=	ssldump
SUBDIR+=	sslproxy
SUBDIR+=	sslwrap
SUBDIR+=	starttls
SUBDIR+=	steghide
SUBDIR+=	stegtunnel
SUBDIR+=	stunnel
SUBDIR+=	sudo
SUBDIR+=	systrace-policies
SUBDIR+=	tacshell
SUBDIR+=	tcl-tls
SUBDIR+=	tcp_wrappers
SUBDIR+=	tct
SUBDIR+=	tkpasman
SUBDIR+=	tripwire
SUBDIR+=	uvscan
SUBDIR+=	xmlsec1
SUBDIR+=	yafic
SUBDIR+=	zebedee

.include "../mk/misc/category.mk"
