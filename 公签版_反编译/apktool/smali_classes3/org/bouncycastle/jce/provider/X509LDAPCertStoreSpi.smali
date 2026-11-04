.class public Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;
.super Ljava/security/cert/CertStoreSpi;
.source "SourceFile"


# static fields
.field private static FILTER_ESCAPE_TABLE:[Ljava/lang/String; = null

.field private static LDAP_PROVIDER:Ljava/lang/String; = null

.field private static REFERRALS_IGNORE:Ljava/lang/String; = null

.field private static final SEARCH_SECURITY_LEVEL:Ljava/lang/String; = "none"

.field private static final URL_CONTEXT_PREFIX:Ljava/lang/String; = "com.sun.jndi.url"


# instance fields
.field private params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x5d

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->FILTER_ESCAPE_TABLE:[Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->FILTER_ESCAPE_TABLE:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x2a

    const-string v3, "\\2a"

    aput-object v3, v2, v1

    const/16 v1, 0x28

    const-string v3, "\\28"

    aput-object v3, v2, v1

    const/16 v1, 0x29

    const-string v3, "\\29"

    aput-object v3, v2, v1

    const/16 v1, 0x5c

    const-string v3, "\\5c"

    aput-object v3, v2, v1

    const-string v1, "\\00"

    aput-object v1, v2, v0

    const-string v0, "com.sun.jndi.ldap.LdapCtxFactory"

    sput-object v0, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->LDAP_PROVIDER:Ljava/lang/String;

    const-string v0, "ignore"

    sput-object v0, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->REFERRALS_IGNORE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/CertStoreParameters;)V
    .locals 3

    invoke-direct {p0, p1}, Ljava/security/cert/CertStoreSpi;-><init>(Ljava/security/cert/CertStoreParameters;)V

    instance-of v0, p1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    return-void

    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": parameter must be a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " object\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private certSubjectSerialSearch(Ljava/security/cert/X509CertSelector;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getSubjectAsBytes()[B

    .line 7
    .line 8
    .line 9
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    const-string v2, "*"

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    :try_start_1
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getSubjectAsString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-direct {p0, p3, v2, p2}, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->search(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 32
    .line 33
    .line 34
    goto/16 :goto_4

    .line 35
    .line 36
    :catch_0
    move-exception p1

    .line 37
    goto/16 :goto_5

    .line 38
    .line 39
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    .line 40
    .line 41
    .line 42
    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    const-string v3, "RFC1779"

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    :try_start_2
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1, v3}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    goto :goto_3

    .line 72
    :cond_2
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getSubjectAsBytes()[B

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const/4 v4, 0x0

    .line 77
    if-eqz v1, :cond_3

    .line 78
    .line 79
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getSubjectAsBytes()[B

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-direct {v1, p1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v3}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    :goto_2
    move-object p1, v4

    .line 93
    goto :goto_3

    .line 94
    :cond_3
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getSubjectAsString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    goto :goto_2

    .line 99
    :goto_3
    invoke-direct {p0, v1, p4}, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->parseDN(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p4

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p4

    .line 118
    invoke-direct {p0, p3, p4, p2}, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->search(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    .line 119
    .line 120
    .line 121
    move-result-object p3

    .line 122
    invoke-interface {v0, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 123
    .line 124
    .line 125
    if-eqz p1, :cond_4

    .line 126
    .line 127
    iget-object p3, p0, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    .line 128
    .line 129
    invoke-virtual {p3}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getSearchForSerialNumberIn()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p3

    .line 133
    if-eqz p3, :cond_4

    .line 134
    .line 135
    iget-object p3, p0, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    .line 136
    .line 137
    invoke-virtual {p3}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getSearchForSerialNumberIn()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p3

    .line 141
    new-instance p4, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {p4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-direct {p0, p3, p1, p2}, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->search(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    .line 157
    .line 158
    .line 159
    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 160
    goto/16 :goto_0

    .line 161
    .line 162
    :cond_4
    :goto_4
    return-object v0

    .line 163
    :goto_5
    new-instance p2, Ljava/security/cert/CertStoreException;

    .line 164
    .line 165
    const-string p3, "exception processing selector: "

    .line 166
    .line 167
    invoke-static {p3, p1}, Ll2/z;->h(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-direct {p2, p1}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    goto :goto_7

    .line 175
    :goto_6
    throw p2

    .line 176
    :goto_7
    goto :goto_6
.end method

.method private connectLDAP()Ljavax/naming/directory/DirContext;
    .locals 3

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "java.naming.factory.initial"

    sget-object v2, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->LDAP_PROVIDER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "java.naming.batchsize"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getLdapURL()Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.naming.provider.url"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "java.naming.factory.url.pkgs"

    const-string v2, "com.sun.jndi.url"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "java.naming.referral"

    sget-object v2, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->REFERRALS_IGNORE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "java.naming.security.authentication"

    const-string v2, "none"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v1, Ljavax/naming/directory/InitialDirContext;

    invoke-direct {v1, v0}, Ljavax/naming/directory/InitialDirContext;-><init>(Ljava/util/Hashtable;)V

    return-object v1
.end method

.method private filterEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sget-object v4, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->FILTER_ESCAPE_TABLE:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_1

    aget-object v3, v4, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getCACertificates(Ljava/security/cert/X509CertSelector;)Ljava/util/Set;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getCACertificateAttribute()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getLdapCACertificateAttributeName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getCACertificateSubjectAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->certSubjectSerialSearch(Ljava/security/cert/X509CertSelector;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v2, "*"

    invoke-direct {p0, v0, v2, v1}, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->search(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object p1
.end method

.method private getCrossCertificates(Ljava/security/cert/X509CertSelector;)Ljava/util/Set;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getCrossCertificateAttribute()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getLdapCrossCertificateAttributeName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getCrossCertificateSubjectAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->certSubjectSerialSearch(Ljava/security/cert/X509CertSelector;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v2, "*"

    invoke-direct {p0, v0, v2, v1}, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->search(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object p1
.end method

.method private getEndCertificates(Ljava/security/cert/X509CertSelector;)Ljava/util/Set;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getUserCertificateAttribute()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getLdapUserCertificateAttributeName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getUserCertificateSubjectAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->certSubjectSerialSearch(Ljava/security/cert/X509CertSelector;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method private parseDN(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p2}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    add-int/2addr p2, v0

    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/16 p2, 0x2c

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, -0x1

    .line 29
    if-ne v0, v1, :cond_0

    .line 30
    .line 31
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    :cond_0
    add-int/lit8 v2, v0, -0x1

    .line 36
    .line 37
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const/16 v3, 0x5c

    .line 42
    .line 43
    if-ne v2, v3, :cond_1

    .line 44
    .line 45
    add-int/lit8 v0, v0, 0x1

    .line 46
    .line 47
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->indexOf(II)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-ne v0, v1, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 p2, 0x0

    .line 55
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const/16 v0, 0x3d

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    const/4 v1, 0x1

    .line 66
    add-int/2addr v0, v1

    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    const/16 v2, 0x20

    .line 76
    .line 77
    if-ne v0, v2, :cond_2

    .line 78
    .line 79
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    :cond_2
    const-string v0, "\""

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_3

    .line 90
    .line 91
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_4

    .line 100
    .line 101
    invoke-static {v1, p2, p1}, Landroid/support/v4/media/session/a;->l(IILjava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    :cond_4
    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->filterEncode(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    return-object p1
.end method

.method private search(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "="

    .line 4
    .line 5
    invoke-static {p1, v2, p2}, Lg/b;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    move-object p2, v2

    .line 13
    :cond_0
    new-instance p1, Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->connectLDAP()Ljavax/naming/directory/DirContext;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    new-instance v3, Ljavax/naming/directory/SearchControls;

    .line 23
    .line 24
    invoke-direct {v3}, Ljavax/naming/directory/SearchControls;-><init>()V

    .line 25
    .line 26
    .line 27
    const/4 v4, 0x2

    .line 28
    invoke-virtual {v3, v4}, Ljavax/naming/directory/SearchControls;->setSearchScope(I)V

    .line 29
    .line 30
    .line 31
    const-wide/16 v4, 0x0

    .line 32
    .line 33
    invoke-virtual {v3, v4, v5}, Ljavax/naming/directory/SearchControls;->setCountLimit(J)V

    .line 34
    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    :goto_0
    array-length v5, p3

    .line 38
    if-ge v4, v5, :cond_4

    .line 39
    .line 40
    aget-object v5, p3, v4

    .line 41
    .line 42
    new-array v6, v0, [Ljava/lang/String;

    .line 43
    .line 44
    aput-object v5, v6, v1

    .line 45
    .line 46
    invoke-virtual {v3, v6}, Ljavax/naming/directory/SearchControls;->setReturningAttributes([Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v5, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v7, "(&("

    .line 55
    .line 56
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v7, ")("

    .line 63
    .line 64
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    aget-object v7, v6, v1

    .line 68
    .line 69
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v7, "=*))"

    .line 73
    .line 74
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    if-nez p2, :cond_1

    .line 82
    .line 83
    new-instance v5, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v7, "("

    .line 89
    .line 90
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    aget-object v6, v6, v1

    .line 94
    .line 95
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v6, "=*)"

    .line 99
    .line 100
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    goto :goto_1

    .line 108
    :catchall_0
    move-exception p1

    .line 109
    goto :goto_4

    .line 110
    :catch_0
    move-exception p1

    .line 111
    goto :goto_3

    .line 112
    :cond_1
    :goto_1
    iget-object v6, p0, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    .line 113
    .line 114
    invoke-virtual {v6}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getBaseDN()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    invoke-interface {v2, v6, v5, v3}, Ljavax/naming/directory/DirContext;->search(Ljava/lang/String;Ljava/lang/String;Ljavax/naming/directory/SearchControls;)Ljavax/naming/NamingEnumeration;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    :cond_2
    invoke-interface {v5}, Ljavax/naming/NamingEnumeration;->hasMoreElements()Z

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    if-eqz v6, :cond_3

    .line 127
    .line 128
    invoke-interface {v5}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    check-cast v6, Ljavax/naming/directory/SearchResult;

    .line 133
    .line 134
    invoke-virtual {v6}, Ljavax/naming/directory/SearchResult;->getAttributes()Ljavax/naming/directory/Attributes;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    invoke-interface {v6}, Ljavax/naming/directory/Attributes;->getAll()Ljavax/naming/NamingEnumeration;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    invoke-interface {v6}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    check-cast v6, Ljavax/naming/directory/Attribute;

    .line 147
    .line 148
    invoke-interface {v6}, Ljavax/naming/directory/Attribute;->getAll()Ljavax/naming/NamingEnumeration;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    :goto_2
    invoke-interface {v6}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    if-eqz v7, :cond_2

    .line 157
    .line 158
    invoke-interface {v6}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    invoke-virtual {p1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_3
    add-int/2addr v4, v0

    .line 167
    goto/16 :goto_0

    .line 168
    .line 169
    :cond_4
    if-eqz v2, :cond_5

    .line 170
    .line 171
    :try_start_1
    invoke-interface {v2}, Ljavax/naming/directory/DirContext;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 172
    .line 173
    .line 174
    :catch_1
    :cond_5
    return-object p1

    .line 175
    :goto_3
    :try_start_2
    new-instance p2, Ljava/security/cert/CertStoreException;

    .line 176
    .line 177
    new-instance p3, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    const-string v0, "Error getting results from LDAP directory "

    .line 183
    .line 184
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-direct {p2, p1}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 198
    :goto_4
    if-eqz v2, :cond_6

    .line 199
    .line 200
    :try_start_3
    invoke-interface {v2}, Ljavax/naming/directory/DirContext;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 201
    .line 202
    .line 203
    :catch_2
    :cond_6
    goto :goto_6

    .line 204
    :goto_5
    throw p1

    .line 205
    :goto_6
    goto :goto_5
.end method


# virtual methods
.method public engineGetCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getCertificateRevocationListAttribute()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v1, v1, [Ljava/lang/String;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v0, v1, v2

    .line 12
    .line 13
    instance-of v0, p1, Ljava/security/cert/X509CRLSelector;

    .line 14
    .line 15
    if-eqz v0, :cond_5

    .line 16
    .line 17
    check-cast p1, Ljava/security/cert/X509CRLSelector;

    .line 18
    .line 19
    new-instance v0, Ljava/util/HashSet;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    .line 25
    .line 26
    invoke-virtual {v2}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getLdapCertificateRevocationListAttributeName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v3, Ljava/util/HashSet;

    .line 31
    .line 32
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/security/cert/X509CRLSelector;->getIssuerNames()Ljava/util/Collection;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    const-string v5, "*"

    .line 40
    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/security/cert/X509CRLSelector;->getIssuerNames()Ljava/util/Collection;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-eqz v6, :cond_2

    .line 56
    .line 57
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    instance-of v7, v6, Ljava/lang/String;

    .line 62
    .line 63
    if-eqz v7, :cond_0

    .line 64
    .line 65
    iget-object v7, p0, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    .line 66
    .line 67
    invoke-virtual {v7}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getCertificateRevocationListIssuerAttributeName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    check-cast v6, Ljava/lang/String;

    .line 72
    .line 73
    :goto_1
    invoke-direct {p0, v6, v7}, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->parseDN(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    goto :goto_2

    .line 78
    :cond_0
    iget-object v7, p0, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    .line 79
    .line 80
    invoke-virtual {v7}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getCertificateRevocationListIssuerAttributeName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    new-instance v8, Ljavax/security/auth/x500/X500Principal;

    .line 85
    .line 86
    check-cast v6, [B

    .line 87
    .line 88
    invoke-direct {v8, v6}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    .line 89
    .line 90
    .line 91
    const-string v6, "RFC1779"

    .line 92
    .line 93
    invoke-virtual {v8, v6}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    goto :goto_1

    .line 98
    :goto_2
    invoke-static {v5, v6, v5}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    invoke-direct {p0, v2, v6, v1}, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->search(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-interface {v3, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_1
    invoke-direct {p0, v2, v5, v1}, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->search(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 115
    .line 116
    .line 117
    :cond_2
    const/4 v2, 0x0

    .line 118
    invoke-direct {p0, v2, v5, v1}, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->search(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-interface {v3, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    :try_start_0
    const-string v2, "X.509"

    .line 130
    .line 131
    const-string v3, "BC"

    .line 132
    .line 133
    invoke-static {v2, v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-eqz v3, :cond_4

    .line 142
    .line 143
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 144
    .line 145
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    check-cast v4, [B

    .line 150
    .line 151
    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-virtual {p1, v3}, Ljava/security/cert/X509CRLSelector;->match(Ljava/security/cert/CRL;)Z

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    if-eqz v4, :cond_3

    .line 163
    .line 164
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .line 166
    .line 167
    goto :goto_3

    .line 168
    :catch_0
    move-exception p1

    .line 169
    goto :goto_4

    .line 170
    :cond_4
    return-object v0

    .line 171
    :goto_4
    new-instance v0, Ljava/security/cert/CertStoreException;

    .line 172
    .line 173
    const-string v1, "CRL cannot be constructed from LDAP result "

    .line 174
    .line 175
    invoke-static {p1, v1}, Ll2/z;->e(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-direct {v0, p1}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw v0

    .line 183
    :cond_5
    new-instance p1, Ljava/security/cert/CertStoreException;

    .line 184
    .line 185
    const-string v0, "selector is not a X509CRLSelector"

    .line 186
    .line 187
    invoke-direct {p1, v0}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    goto :goto_6

    .line 191
    :goto_5
    throw p1

    .line 192
    :goto_6
    goto :goto_5
.end method

.method public engineGetCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    .locals 6

    .line 1
    instance-of v0, p1, Ljava/security/cert/X509CertSelector;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    check-cast p1, Ljava/security/cert/X509CertSelector;

    .line 6
    .line 7
    new-instance v0, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->getEndCertificates(Ljava/security/cert/X509CertSelector;)Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->getCACertificates(Ljava/security/cert/X509CertSelector;)Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/X509LDAPCertStoreSpi;->getCrossCertificates(Ljava/security/cert/X509CertSelector;)Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 28
    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :try_start_0
    const-string v2, "X.509"

    .line 35
    .line 36
    const-string v3, "BC"

    .line 37
    .line 38
    invoke-static {v2, v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_5

    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, [B

    .line 53
    .line 54
    if-eqz v3, :cond_0

    .line 55
    .line 56
    array-length v4, v3

    .line 57
    if-nez v4, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    :try_start_1
    new-instance v5, Lorg/bouncycastle/asn1/ASN1InputStream;

    .line 69
    .line 70
    invoke-direct {v5, v3}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/CertificatePair;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CertificatePair;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/CertificatePair;->getForward()Lorg/bouncycastle/asn1/x509/Certificate;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    if-eqz v5, :cond_2

    .line 89
    .line 90
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/CertificatePair;->getForward()Lorg/bouncycastle/asn1/x509/Certificate;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :catch_0
    move-exception p1

    .line 103
    goto :goto_3

    .line 104
    :cond_2
    :goto_1
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/CertificatePair;->getReverse()Lorg/bouncycastle/asn1/x509/Certificate;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    if-eqz v5, :cond_3

    .line 109
    .line 110
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/CertificatePair;->getReverse()Lorg/bouncycastle/asn1/x509/Certificate;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 119
    .line 120
    .line 121
    :catch_1
    :cond_3
    :try_start_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    :catch_2
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-eqz v4, :cond_0

    .line 130
    .line 131
    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 132
    .line 133
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    check-cast v5, [B

    .line 138
    .line 139
    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 140
    .line 141
    .line 142
    :try_start_3
    invoke-virtual {v2, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-virtual {p1, v4}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    if-eqz v5, :cond_4

    .line 151
    .line 152
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_5
    return-object v0

    .line 157
    :goto_3
    new-instance v0, Ljava/security/cert/CertStoreException;

    .line 158
    .line 159
    const-string v1, "certificate cannot be constructed from LDAP result: "

    .line 160
    .line 161
    invoke-static {p1, v1}, Ll2/z;->e(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-direct {v0, p1}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw v0

    .line 169
    :cond_6
    new-instance p1, Ljava/security/cert/CertStoreException;

    .line 170
    .line 171
    const-string v0, "selector is not a X509CertSelector"

    .line 172
    .line 173
    invoke-direct {p1, v0}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    goto :goto_5

    .line 177
    :goto_4
    throw p1

    .line 178
    :goto_5
    goto :goto_4
.end method
