.class final Lio/github/muntashirakon/adb/SslUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static customConscrypt:Z = false

.field private static sslContext:Ljavax/net/ssl/SSLContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static getAllAcceptingTrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrustAllX509TrustManager"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/github/muntashirakon/adb/SslUtils$2;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/github/muntashirakon/adb/SslUtils$2;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static getKeyManager(Lio/github/muntashirakon/adb/KeyPair;)Ljavax/net/ssl/KeyManager;
    .locals 1

    .line 1
    new-instance v0, Lio/github/muntashirakon/adb/SslUtils$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/github/muntashirakon/adb/SslUtils$1;-><init>(Lio/github/muntashirakon/adb/KeyPair;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static getSslContext(Lio/github/muntashirakon/adb/KeyPair;)Ljavax/net/ssl/SSLContext;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrulyRandom"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "TLSv1.3"

    .line 4
    .line 5
    sget-object v3, Lio/github/muntashirakon/adb/SslUtils;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 6
    .line 7
    if-eqz v3, :cond_0

    .line 8
    .line 9
    return-object v3

    .line 10
    :cond_0
    :try_start_0
    const-string v3, "org.conscrypt.OpenSSLProvider"

    .line 11
    .line 12
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Ljava/security/Provider;

    .line 26
    .line 27
    invoke-static {v2, v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    sput-object v3, Lio/github/muntashirakon/adb/SslUtils;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 32
    .line 33
    sput-boolean v1, Lio/github/muntashirakon/adb/SslUtils;->customConscrypt:Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catchall_0
    nop

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    goto :goto_2

    .line 40
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 41
    .line 42
    const/16 v4, 0x1d

    .line 43
    .line 44
    if-lt v3, v4, :cond_1

    .line 45
    .line 46
    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    sput-object v2, Lio/github/muntashirakon/adb/SslUtils;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 51
    .line 52
    sput-boolean v0, Lio/github/muntashirakon/adb/SslUtils;->customConscrypt:Z

    .line 53
    .line 54
    :goto_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    sget-object v2, Lio/github/muntashirakon/adb/SslUtils;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 60
    .line 61
    invoke-static {p0}, Lio/github/muntashirakon/adb/SslUtils;->getKeyManager(Lio/github/muntashirakon/adb/KeyPair;)Ljavax/net/ssl/KeyManager;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    new-array v3, v1, [Ljavax/net/ssl/KeyManager;

    .line 66
    .line 67
    aput-object p0, v3, v0

    .line 68
    .line 69
    invoke-static {}, Lio/github/muntashirakon/adb/SslUtils;->getAllAcceptingTrustManager()Ljavax/net/ssl/X509TrustManager;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    new-array v1, v1, [Ljavax/net/ssl/X509TrustManager;

    .line 74
    .line 75
    aput-object p0, v1, v0

    .line 76
    .line 77
    new-instance p0, Ljava/security/SecureRandom;

    .line 78
    .line 79
    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v3, v1, p0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 83
    .line 84
    .line 85
    sget-object p0, Lio/github/muntashirakon/adb/SslUtils;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 86
    .line 87
    return-object p0

    .line 88
    :cond_1
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    .line 89
    .line 90
    const-string v0, "TLSv1.3 isn\'t supported on your platform. Use custom Conscrypt library instead."

    .line 91
    .line 92
    invoke-direct {p0, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p0

    .line 96
    :goto_2
    throw p0
.end method

.method public static isCustomConscrypt()Z
    .locals 1

    .line 1
    sget-boolean v0, Lio/github/muntashirakon/adb/SslUtils;->customConscrypt:Z

    .line 2
    .line 3
    return v0
.end method
