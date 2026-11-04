package a9;

import java.io.IOException;
import java.util.Hashtable;
import java.util.Vector;

/* loaded from: classes.dex */
public final class l {

    /* renamed from: e, reason: collision with root package name */
    public static final Hashtable f507e;

    /* renamed from: f, reason: collision with root package name */
    public static final gf.g f508f;

    /* renamed from: a, reason: collision with root package name */
    public final m7.e f509a;

    /* renamed from: b, reason: collision with root package name */
    public final Vector f510b;

    /* renamed from: c, reason: collision with root package name */
    public j f511c;

    /* renamed from: d, reason: collision with root package name */
    public y f512d;

    static {
        String property;
        String property2;
        String property3;
        String property4;
        String property5;
        String property6;
        String property7;
        String property8;
        String property9;
        String property10;
        String property11;
        String property12;
        String property13;
        String property14;
        String property15;
        String property16;
        String property17 = "6";
        String property18 = "hmac-sha2-256-etm@openssh.com,hmac-sha2-512-etm@openssh.com,hmac-sha1-etm@openssh.com,hmac-sha2-256,hmac-sha2-512,hmac-sha1";
        String property19 = "aes128-ctr,aes192-ctr,aes256-ctr,aes128-gcm@openssh.com,aes256-gcm@openssh.com";
        String property20 = "ssh-ed25519,ecdsa-sha2-nistp256,ecdsa-sha2-nistp384,ecdsa-sha2-nistp521,rsa-sha2-512,rsa-sha2-256";
        String property21 = "";
        String property22 = "yes";
        Hashtable hashtable = new Hashtable();
        f507e = hashtable;
        String property23 = "curve25519-sha256,curve25519-sha256@libssh.org,ecdh-sha2-nistp256,ecdh-sha2-nistp384,ecdh-sha2-nistp521,diffie-hellman-group-exchange-sha256,diffie-hellman-group16-sha512,diffie-hellman-group18-sha512,diffie-hellman-group14-sha256";
        byte[] bArr = h0.f503a;
        try {
            property23 = System.getProperty("jsch.kex", "curve25519-sha256,curve25519-sha256@libssh.org,ecdh-sha2-nistp256,ecdh-sha2-nistp384,ecdh-sha2-nistp521,diffie-hellman-group-exchange-sha256,diffie-hellman-group16-sha512,diffie-hellman-group18-sha512,diffie-hellman-group14-sha256");
        } catch (SecurityException unused) {
        }
        hashtable.put("kex", property23);
        Hashtable hashtable2 = f507e;
        try {
            property = System.getProperty("jsch.server_host_key", "ssh-ed25519,ecdsa-sha2-nistp256,ecdsa-sha2-nistp384,ecdsa-sha2-nistp521,rsa-sha2-512,rsa-sha2-256");
        } catch (SecurityException unused2) {
            property = "ssh-ed25519,ecdsa-sha2-nistp256,ecdsa-sha2-nistp384,ecdsa-sha2-nistp521,rsa-sha2-512,rsa-sha2-256";
        }
        hashtable2.put("server_host_key", property);
        Hashtable hashtable3 = f507e;
        try {
            property2 = System.getProperty("jsch.prefer_known_host_key_types", "yes");
        } catch (SecurityException unused3) {
            property2 = "yes";
        }
        hashtable3.put("prefer_known_host_key_types", property2);
        Hashtable hashtable4 = f507e;
        try {
            property3 = System.getProperty("jsch.enable_strict_kex", "yes");
        } catch (SecurityException unused4) {
            property3 = "yes";
        }
        hashtable4.put("enable_strict_kex", property3);
        Hashtable hashtable5 = f507e;
        try {
            property4 = System.getProperty("jsch.require_strict_kex", "no");
        } catch (SecurityException unused5) {
            property4 = "no";
        }
        hashtable5.put("require_strict_kex", property4);
        Hashtable hashtable6 = f507e;
        try {
            property5 = System.getProperty("jsch.enable_server_sig_algs", "yes");
        } catch (SecurityException unused6) {
            property5 = "yes";
        }
        hashtable6.put("enable_server_sig_algs", property5);
        Hashtable hashtable7 = f507e;
        try {
            property6 = System.getProperty("jsch.enable_ext_info_in_auth", "yes");
        } catch (SecurityException unused7) {
            property6 = "yes";
        }
        hashtable7.put("enable_ext_info_in_auth", property6);
        Hashtable hashtable8 = f507e;
        try {
            property7 = System.getProperty("jsch.cipher", "aes128-ctr,aes192-ctr,aes256-ctr,aes128-gcm@openssh.com,aes256-gcm@openssh.com");
        } catch (SecurityException unused8) {
            property7 = "aes128-ctr,aes192-ctr,aes256-ctr,aes128-gcm@openssh.com,aes256-gcm@openssh.com";
        }
        hashtable8.put("cipher.s2c", property7);
        Hashtable hashtable9 = f507e;
        try {
            property19 = System.getProperty("jsch.cipher", "aes128-ctr,aes192-ctr,aes256-ctr,aes128-gcm@openssh.com,aes256-gcm@openssh.com");
        } catch (SecurityException unused9) {
        }
        hashtable9.put("cipher.c2s", property19);
        Hashtable hashtable10 = f507e;
        try {
            property8 = System.getProperty("jsch.mac", "hmac-sha2-256-etm@openssh.com,hmac-sha2-512-etm@openssh.com,hmac-sha1-etm@openssh.com,hmac-sha2-256,hmac-sha2-512,hmac-sha1");
        } catch (SecurityException unused10) {
            property8 = "hmac-sha2-256-etm@openssh.com,hmac-sha2-512-etm@openssh.com,hmac-sha1-etm@openssh.com,hmac-sha2-256,hmac-sha2-512,hmac-sha1";
        }
        hashtable10.put("mac.s2c", property8);
        Hashtable hashtable11 = f507e;
        try {
            property18 = System.getProperty("jsch.mac", "hmac-sha2-256-etm@openssh.com,hmac-sha2-512-etm@openssh.com,hmac-sha1-etm@openssh.com,hmac-sha2-256,hmac-sha2-512,hmac-sha1");
        } catch (SecurityException unused11) {
        }
        hashtable11.put("mac.c2s", property18);
        Hashtable hashtable12 = f507e;
        try {
            property9 = System.getProperty("jsch.compression", "none");
        } catch (SecurityException unused12) {
            property9 = "none";
        }
        hashtable12.put("compression.s2c", property9);
        Hashtable hashtable13 = f507e;
        try {
            property10 = System.getProperty("jsch.compression", "none");
        } catch (SecurityException unused13) {
            property10 = "none";
        }
        hashtable13.put("compression.c2s", property10);
        Hashtable hashtable14 = f507e;
        try {
            property11 = System.getProperty("jsch.lang", "");
        } catch (SecurityException unused14) {
            property11 = "";
        }
        hashtable14.put("lang.s2c", property11);
        Hashtable hashtable15 = f507e;
        try {
            property12 = System.getProperty("jsch.lang", "");
        } catch (SecurityException unused15) {
            property12 = "";
        }
        hashtable15.put("lang.c2s", property12);
        Hashtable hashtable16 = f507e;
        String property24 = "2048";
        try {
            property24 = System.getProperty("jsch.dhgex_min", "2048");
        } catch (SecurityException unused16) {
        }
        hashtable16.put("dhgex_min", property24);
        Hashtable hashtable17 = f507e;
        String property25 = "8192";
        try {
            property25 = System.getProperty("jsch.dhgex_max", "8192");
        } catch (SecurityException unused17) {
        }
        hashtable17.put("dhgex_max", property25);
        Hashtable hashtable18 = f507e;
        String property26 = "3072";
        try {
            property26 = System.getProperty("jsch.dhgex_preferred", "3072");
        } catch (SecurityException unused18) {
        }
        hashtable18.put("dhgex_preferred", property26);
        Hashtable hashtable19 = f507e;
        try {
            property13 = System.getProperty("jsch.compression_level", "6");
        } catch (SecurityException unused19) {
            property13 = "6";
        }
        hashtable19.put("compression_level", property13);
        Hashtable hashtable20 = f507e;
        hashtable20.put("diffie-hellman-group-exchange-sha1", "com.jcraft.jsch.DHGEX1");
        hashtable20.put("diffie-hellman-group1-sha1", "com.jcraft.jsch.DHG1");
        hashtable20.put("diffie-hellman-group14-sha1", "com.jcraft.jsch.DHG14");
        hashtable20.put("diffie-hellman-group-exchange-sha256", "com.jcraft.jsch.DHGEX256");
        hashtable20.put("diffie-hellman-group-exchange-sha224@ssh.com", "com.jcraft.jsch.DHGEX224");
        hashtable20.put("diffie-hellman-group-exchange-sha384@ssh.com", "com.jcraft.jsch.DHGEX384");
        hashtable20.put("diffie-hellman-group-exchange-sha512@ssh.com", "com.jcraft.jsch.DHGEX512");
        hashtable20.put("diffie-hellman-group14-sha256", "com.jcraft.jsch.DHG14256");
        hashtable20.put("diffie-hellman-group15-sha512", "com.jcraft.jsch.DHG15");
        hashtable20.put("diffie-hellman-group16-sha512", "com.jcraft.jsch.DHG16");
        hashtable20.put("diffie-hellman-group17-sha512", "com.jcraft.jsch.DHG17");
        hashtable20.put("diffie-hellman-group18-sha512", "com.jcraft.jsch.DHG18");
        hashtable20.put("diffie-hellman-group14-sha256@ssh.com", "com.jcraft.jsch.DHG14256");
        hashtable20.put("diffie-hellman-group14-sha224@ssh.com", "com.jcraft.jsch.DHG14224");
        hashtable20.put("diffie-hellman-group15-sha256@ssh.com", "com.jcraft.jsch.DHG15256");
        hashtable20.put("diffie-hellman-group15-sha384@ssh.com", "com.jcraft.jsch.DHG15384");
        hashtable20.put("diffie-hellman-group16-sha512@ssh.com", "com.jcraft.jsch.DHG16");
        hashtable20.put("diffie-hellman-group16-sha384@ssh.com", "com.jcraft.jsch.DHG16384");
        hashtable20.put("diffie-hellman-group18-sha512@ssh.com", "com.jcraft.jsch.DHG18");
        hashtable20.put("ecdsa-sha2-nistp256", "com.jcraft.jsch.jce.SignatureECDSA256");
        hashtable20.put("ecdsa-sha2-nistp384", "com.jcraft.jsch.jce.SignatureECDSA384");
        hashtable20.put("ecdsa-sha2-nistp521", "com.jcraft.jsch.jce.SignatureECDSA521");
        hashtable20.put("ecdh-sha2-nistp256", "com.jcraft.jsch.DHEC256");
        hashtable20.put("ecdh-sha2-nistp384", "com.jcraft.jsch.DHEC384");
        hashtable20.put("ecdh-sha2-nistp521", "com.jcraft.jsch.DHEC521");
        hashtable20.put("ecdh-sha2-nistp", "com.jcraft.jsch.jce.ECDHN");
        hashtable20.put("curve25519-sha256", "com.jcraft.jsch.DH25519");
        hashtable20.put("curve25519-sha256@libssh.org", "com.jcraft.jsch.DH25519");
        hashtable20.put("curve448-sha512", "com.jcraft.jsch.DH448");
        hashtable20.put("sntrup761x25519-sha512@openssh.com", "com.jcraft.jsch.DH25519SNTRUP761");
        hashtable20.put("sntrup761", "com.jcraft.jsch.bc.SNTRUP761");
        hashtable20.put("dh", "com.jcraft.jsch.jce.DH");
        hashtable20.put("3des-cbc", "com.jcraft.jsch.jce.TripleDESCBC");
        hashtable20.put("blowfish-cbc", "com.jcraft.jsch.jce.BlowfishCBC");
        hashtable20.put("hmac-sha1", "com.jcraft.jsch.jce.HMACSHA1");
        hashtable20.put("hmac-sha1-96", "com.jcraft.jsch.jce.HMACSHA196");
        hashtable20.put("hmac-sha2-256", "com.jcraft.jsch.jce.HMACSHA256");
        hashtable20.put("hmac-sha2-512", "com.jcraft.jsch.jce.HMACSHA512");
        hashtable20.put("hmac-md5", "com.jcraft.jsch.jce.HMACMD5");
        hashtable20.put("hmac-md5-96", "com.jcraft.jsch.jce.HMACMD596");
        hashtable20.put("hmac-sha1-etm@openssh.com", "com.jcraft.jsch.jce.HMACSHA1ETM");
        hashtable20.put("hmac-sha1-96-etm@openssh.com", "com.jcraft.jsch.jce.HMACSHA196ETM");
        hashtable20.put("hmac-sha2-256-etm@openssh.com", "com.jcraft.jsch.jce.HMACSHA256ETM");
        hashtable20.put("hmac-sha2-512-etm@openssh.com", "com.jcraft.jsch.jce.HMACSHA512ETM");
        hashtable20.put("hmac-md5-etm@openssh.com", "com.jcraft.jsch.jce.HMACMD5ETM");
        hashtable20.put("hmac-md5-96-etm@openssh.com", "com.jcraft.jsch.jce.HMACMD596ETM");
        hashtable20.put("hmac-sha256-2@ssh.com", "com.jcraft.jsch.jce.HMACSHA2562SSHCOM");
        hashtable20.put("hmac-sha224@ssh.com", "com.jcraft.jsch.jce.HMACSHA224SSHCOM");
        hashtable20.put("hmac-sha256@ssh.com", "com.jcraft.jsch.jce.HMACSHA256SSHCOM");
        hashtable20.put("hmac-sha384@ssh.com", "com.jcraft.jsch.jce.HMACSHA384SSHCOM");
        hashtable20.put("hmac-sha512@ssh.com", "com.jcraft.jsch.jce.HMACSHA512SSHCOM");
        hashtable20.put("sha-1", "com.jcraft.jsch.jce.SHA1");
        hashtable20.put("sha-224", "com.jcraft.jsch.jce.SHA224");
        hashtable20.put("sha-256", "com.jcraft.jsch.jce.SHA256");
        hashtable20.put("sha-384", "com.jcraft.jsch.jce.SHA384");
        hashtable20.put("sha-512", "com.jcraft.jsch.jce.SHA512");
        hashtable20.put("md5", "com.jcraft.jsch.jce.MD5");
        hashtable20.put("sha1", "com.jcraft.jsch.jce.SHA1");
        hashtable20.put("sha224", "com.jcraft.jsch.jce.SHA224");
        String property27 = "sha256";
        hashtable20.put("sha256", "com.jcraft.jsch.jce.SHA256");
        hashtable20.put("sha384", "com.jcraft.jsch.jce.SHA384");
        hashtable20.put("sha512", "com.jcraft.jsch.jce.SHA512");
        hashtable20.put("signature.dss", "com.jcraft.jsch.jce.SignatureDSA");
        hashtable20.put("ssh-rsa", "com.jcraft.jsch.jce.SignatureRSA");
        hashtable20.put("rsa-sha2-256", "com.jcraft.jsch.jce.SignatureRSASHA256");
        hashtable20.put("rsa-sha2-512", "com.jcraft.jsch.jce.SignatureRSASHA512");
        hashtable20.put("ssh-rsa-sha224@ssh.com", "com.jcraft.jsch.jce.SignatureRSASHA224SSHCOM");
        hashtable20.put("ssh-rsa-sha256@ssh.com", "com.jcraft.jsch.jce.SignatureRSASHA256SSHCOM");
        hashtable20.put("ssh-rsa-sha384@ssh.com", "com.jcraft.jsch.jce.SignatureRSASHA384SSHCOM");
        hashtable20.put("ssh-rsa-sha512@ssh.com", "com.jcraft.jsch.jce.SignatureRSASHA512SSHCOM");
        hashtable20.put("keypairgen.dsa", "com.jcraft.jsch.jce.KeyPairGenDSA");
        hashtable20.put("keypairgen.rsa", "com.jcraft.jsch.jce.KeyPairGenRSA");
        hashtable20.put("keypairgen.ecdsa", "com.jcraft.jsch.jce.KeyPairGenECDSA");
        hashtable20.put("random", "com.jcraft.jsch.jce.Random");
        hashtable20.put("hmac-ripemd160", "com.jcraft.jsch.bc.HMACRIPEMD160");
        hashtable20.put("hmac-ripemd160@openssh.com", "com.jcraft.jsch.bc.HMACRIPEMD160OpenSSH");
        hashtable20.put("hmac-ripemd160-etm@openssh.com", "com.jcraft.jsch.bc.HMACRIPEMD160ETM");
        hashtable20.put("none", "com.jcraft.jsch.CipherNone");
        hashtable20.put("aes128-gcm@openssh.com", "com.jcraft.jsch.jce.AES128GCM");
        hashtable20.put("aes256-gcm@openssh.com", "com.jcraft.jsch.jce.AES256GCM");
        hashtable20.put("aes128-cbc", "com.jcraft.jsch.jce.AES128CBC");
        hashtable20.put("aes192-cbc", "com.jcraft.jsch.jce.AES192CBC");
        hashtable20.put("aes256-cbc", "com.jcraft.jsch.jce.AES256CBC");
        hashtable20.put("rijndael-cbc@lysator.liu.se", "com.jcraft.jsch.jce.AES256CBC");
        String property28 = "chacha20-poly1305@openssh.com";
        hashtable20.put("chacha20-poly1305@openssh.com", "com.jcraft.jsch.bc.ChaCha20Poly1305");
        hashtable20.put("cast128-cbc", "com.jcraft.jsch.bc.CAST128CBC");
        hashtable20.put("cast128-ctr", "com.jcraft.jsch.bc.CAST128CTR");
        hashtable20.put("twofish128-cbc", "com.jcraft.jsch.bc.Twofish128CBC");
        hashtable20.put("twofish192-cbc", "com.jcraft.jsch.bc.Twofish192CBC");
        hashtable20.put("twofish256-cbc", "com.jcraft.jsch.bc.Twofish256CBC");
        hashtable20.put("twofish-cbc", "com.jcraft.jsch.bc.Twofish256CBC");
        hashtable20.put("twofish128-ctr", "com.jcraft.jsch.bc.Twofish128CTR");
        hashtable20.put("twofish192-ctr", "com.jcraft.jsch.bc.Twofish192CTR");
        hashtable20.put("twofish256-ctr", "com.jcraft.jsch.bc.Twofish256CTR");
        hashtable20.put("seed-cbc@ssh.com", "com.jcraft.jsch.bc.SEEDCBC");
        hashtable20.put("aes128-ctr", "com.jcraft.jsch.jce.AES128CTR");
        hashtable20.put("aes192-ctr", "com.jcraft.jsch.jce.AES192CTR");
        hashtable20.put("aes256-ctr", "com.jcraft.jsch.jce.AES256CTR");
        hashtable20.put("3des-ctr", "com.jcraft.jsch.jce.TripleDESCTR");
        hashtable20.put("blowfish-ctr", "com.jcraft.jsch.jce.BlowfishCTR");
        hashtable20.put("arcfour", "com.jcraft.jsch.jce.ARCFOUR");
        hashtable20.put("arcfour128", "com.jcraft.jsch.jce.ARCFOUR128");
        hashtable20.put("arcfour256", "com.jcraft.jsch.jce.ARCFOUR256");
        hashtable20.put("userauth.none", "com.jcraft.jsch.UserAuthNone");
        hashtable20.put("userauth.password", "com.jcraft.jsch.UserAuthPassword");
        hashtable20.put("userauth.keyboard-interactive", "com.jcraft.jsch.UserAuthKeyboardInteractive");
        hashtable20.put("userauth.publickey", "com.jcraft.jsch.UserAuthPublicKey");
        hashtable20.put("userauth.gssapi-with-mic", "com.jcraft.jsch.UserAuthGSSAPIWithMIC");
        hashtable20.put("gssapi-with-mic.krb5", "com.jcraft.jsch.jgss.GSSContextKrb5");
        hashtable20.put("zlib", "com.jcraft.jsch.jzlib.Compression");
        hashtable20.put("zlib@openssh.com", "com.jcraft.jsch.jzlib.Compression");
        hashtable20.put("pbkdf", "com.jcraft.jsch.jce.PBKDF");
        hashtable20.put("pbkdf2-hmac-sha1", "com.jcraft.jsch.jce.PBKDF2HMACSHA1");
        hashtable20.put("pbkdf2-hmac-sha224", "com.jcraft.jsch.jce.PBKDF2HMACSHA224");
        hashtable20.put("pbkdf2-hmac-sha256", "com.jcraft.jsch.jce.PBKDF2HMACSHA256");
        hashtable20.put("pbkdf2-hmac-sha384", "com.jcraft.jsch.jce.PBKDF2HMACSHA384");
        hashtable20.put("pbkdf2-hmac-sha512", "com.jcraft.jsch.jce.PBKDF2HMACSHA512");
        hashtable20.put("pbkdf2-hmac-sha512-224", "com.jcraft.jsch.jce.PBKDF2HMACSHA512224");
        hashtable20.put("pbkdf2-hmac-sha512-256", "com.jcraft.jsch.jce.PBKDF2HMACSHA512256");
        hashtable20.put("bcrypt", "com.jcraft.jsch.jbcrypt.JBCrypt");
        hashtable20.put("argon2", "com.jcraft.jsch.bc.Argon2");
        hashtable20.put("scrypt", "com.jcraft.jsch.bc.SCrypt");
        hashtable20.put("xdh", "com.jcraft.jsch.bc.XDH");
        hashtable20.put("keypairgen.eddsa", "com.jcraft.jsch.bc.KeyPairGenEdDSA");
        hashtable20.put("ssh-ed25519", "com.jcraft.jsch.bc.SignatureEd25519");
        hashtable20.put("ssh-ed448", "com.jcraft.jsch.bc.SignatureEd448");
        hashtable20.put("keypairgen_fromprivate.eddsa", "com.jcraft.jsch.bc.KeyPairGenEdDSA");
        hashtable20.put("StrictHostKeyChecking", "ask");
        hashtable20.put("HashKnownHosts", "no");
        String property29 = "gssapi-with-mic,publickey,keyboard-interactive,password";
        try {
            property29 = System.getProperty("jsch.preferred_authentications", "gssapi-with-mic,publickey,keyboard-interactive,password");
        } catch (SecurityException unused20) {
        }
        hashtable20.put("PreferredAuthentications", property29);
        Hashtable hashtable21 = f507e;
        try {
            property20 = System.getProperty("jsch.client_pubkey", "ssh-ed25519,ecdsa-sha2-nistp256,ecdsa-sha2-nistp384,ecdsa-sha2-nistp521,rsa-sha2-512,rsa-sha2-256");
        } catch (SecurityException unused21) {
        }
        hashtable21.put("PubkeyAcceptedAlgorithms", property20);
        Hashtable hashtable22 = f507e;
        try {
            property14 = System.getProperty("jsch.enable_pubkey_auth_query", "yes");
        } catch (SecurityException unused22) {
            property14 = "yes";
        }
        hashtable22.put("enable_pubkey_auth_query", property14);
        Hashtable hashtable23 = f507e;
        try {
            property15 = System.getProperty("jsch.try_additional_pubkey_algorithms", "yes");
        } catch (SecurityException unused23) {
            property15 = "yes";
        }
        hashtable23.put("try_additional_pubkey_algorithms", property15);
        Hashtable hashtable24 = f507e;
        try {
            property16 = System.getProperty("jsch.enable_auth_none", "yes");
        } catch (SecurityException unused24) {
            property16 = "yes";
        }
        hashtable24.put("enable_auth_none", property16);
        Hashtable hashtable25 = f507e;
        try {
            property22 = System.getProperty("jsch.use_sftp_write_flush_workaround", "yes");
        } catch (SecurityException unused25) {
        }
        hashtable25.put("use_sftp_write_flush_workaround", property22);
        Hashtable hashtable26 = f507e;
        try {
            property28 = System.getProperty("jsch.check_ciphers", "chacha20-poly1305@openssh.com");
        } catch (SecurityException unused26) {
        }
        hashtable26.put("CheckCiphers", property28);
        Hashtable hashtable27 = f507e;
        try {
            property21 = System.getProperty("jsch.check_macs", "");
        } catch (SecurityException unused27) {
        }
        hashtable27.put("CheckMacs", property21);
        Hashtable hashtable28 = f507e;
        String property30 = "sntrup761x25519-sha512@openssh.com,curve25519-sha256,curve25519-sha256@libssh.org,curve448-sha512";
        try {
            property30 = System.getProperty("jsch.check_kexes", "sntrup761x25519-sha512@openssh.com,curve25519-sha256,curve25519-sha256@libssh.org,curve448-sha512");
        } catch (SecurityException unused28) {
        }
        hashtable28.put("CheckKexes", property30);
        Hashtable hashtable29 = f507e;
        String property31 = "ssh-ed25519,ssh-ed448";
        try {
            property31 = System.getProperty("jsch.check_signatures", "ssh-ed25519,ssh-ed448");
        } catch (SecurityException unused29) {
        }
        hashtable29.put("CheckSignatures", property31);
        Hashtable hashtable30 = f507e;
        try {
            property27 = System.getProperty("jsch.fingerprint_hash", "sha256");
        } catch (SecurityException unused30) {
        }
        hashtable30.put("FingerprintHash", property27);
        Hashtable hashtable31 = f507e;
        try {
            property17 = System.getProperty("jsch.max_auth_tries", "6");
        } catch (SecurityException unused31) {
        }
        hashtable31.put("MaxAuthTries", property17);
        f507e.put("ClearAllForwardings", "no");
        f508f = new gf.g(1);
    }

    public l() {
        m7.e eVar = new m7.e(1);
        this.f509a = eVar;
        this.f510b = new Vector();
        this.f511c = new z(eVar);
        this.f512d = null;
    }

    public static String b(String str) {
        String str2;
        Hashtable hashtable = f507e;
        synchronized (hashtable) {
            try {
                if (str.equals("PubkeyAcceptedKeyTypes")) {
                    str = "PubkeyAcceptedAlgorithms";
                }
                str2 = (String) hashtable.get(str);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return str2;
    }

    public final void a(String str, byte[] bArr) {
        byte[] bArrH;
        Throwable th2;
        byte[] bArr2;
        m7.e eVar = this.f509a;
        byte[] bArr3 = r.f516g;
        try {
            byte[] bArrH2 = h0.h(str);
            try {
                bArrH = h0.h(g.b.j(str, ".pub"));
            } catch (IOException unused) {
                bArrH = null;
            }
            try {
                r rVarJ = r.j(eVar, bArrH2, bArrH);
                h0.d(bArrH2);
                i iVar = new i(str, rVarJ);
                if (bArr != null) {
                    try {
                        bArr2 = new byte[bArr.length];
                        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                        try {
                            iVar.f504a.c(bArr2);
                            h0.d(bArr2);
                        } catch (Throwable th3) {
                            th2 = th3;
                            h0.d(bArr2);
                            throw th2;
                        }
                    } catch (Throwable th4) {
                        th2 = th4;
                        bArr2 = bArr;
                    }
                }
                j jVar = this.f511c;
                if (jVar instanceof z) {
                    ((z) jVar).b(iVar);
                    return;
                }
                r rVar = iVar.f504a;
                if (!rVar.f520d) {
                    jVar.a(rVar.e());
                    return;
                }
                synchronized (this) {
                    try {
                        j jVar2 = this.f511c;
                        if (!(jVar2 instanceof k)) {
                            e(new k(jVar2));
                        }
                    } catch (Throwable th5) {
                        throw th5;
                    }
                }
                k kVar = (k) this.f511c;
                kVar.getClass();
                r rVar2 = iVar.f504a;
                if (rVar2.f520d) {
                    kVar.f506b.addElement(iVar);
                } else {
                    try {
                        kVar.f505a.a(rVar2.e());
                    } catch (n unused2) {
                    }
                }
            } catch (Throwable th6) {
                h0.d(bArrH2);
                throw th6;
            }
        } catch (IOException e7) {
            throw new n(e7.toString(), e7);
        }
    }

    public final gf.g c() {
        this.f509a.getClass();
        return f508f;
    }

    public final void d(f0 f0Var) {
        synchronized (this.f510b) {
            this.f510b.remove(f0Var);
        }
    }

    public final synchronized void e(k kVar) {
        this.f511c = kVar;
    }
}
