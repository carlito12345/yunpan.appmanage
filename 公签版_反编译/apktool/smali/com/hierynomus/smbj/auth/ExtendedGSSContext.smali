.class Lcom/hierynomus/smbj/auth/ExtendedGSSContext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final inquireSecContext:Ljava/lang/reflect/Method;

.field private static krb5GetSessionKeyConst:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/hierynomus/smbj/auth/ExtendedGSSContext;->getInquireSecContextMethod()Ljava/lang/reflect/Method;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/hierynomus/smbj/auth/ExtendedGSSContext;->inquireSecContext:Ljava/lang/reflect/Method;

    .line 6
    .line 7
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static getInquireSecContextMethod()Ljava/lang/reflect/Method;
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "addSuppressed"

    .line 4
    .line 5
    const-class v3, Ljava/lang/Throwable;

    .line 6
    .line 7
    const-class v4, Lcom/hierynomus/smbj/auth/SpnegoAuthenticator;

    .line 8
    .line 9
    :try_start_0
    const-string v5, "com.sun.security.jgss.ExtendedGSSContext"

    .line 10
    .line 11
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 12
    .line 13
    .line 14
    move-result-object v6

    .line 15
    invoke-static {v5, v1, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    const-string v6, "com.sun.security.jgss.InquireType"

    .line 20
    .line 21
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v5

    .line 27
    :try_start_1
    const-string v6, "com.ibm.security.jgss.ExtendedGSSContext"

    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-static {v6, v1, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const-string v6, "com.ibm.security.jgss.InquireType"

    .line 38
    .line 39
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 43
    move-object v5, v4

    .line 44
    :goto_0
    const-class v3, Ljava/lang/Enum;

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const-string v4, "KRB5_GET_SESSION_KEY"

    .line 51
    .line 52
    invoke-static {v3, v4}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    sput-object v3, Lcom/hierynomus/smbj/auth/ExtendedGSSContext;->krb5GetSessionKeyConst:Ljava/lang/Object;

    .line 57
    .line 58
    :try_start_2
    const-string v3, "inquireSecContext"

    .line 59
    .line 60
    new-array v0, v0, [Ljava/lang/Class;

    .line 61
    .line 62
    aput-object v2, v0, v1

    .line 63
    .line 64
    invoke-virtual {v5, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 65
    .line 66
    .line 67
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    .line 68
    return-object v0

    .line 69
    :catch_1
    move-exception v0

    .line 70
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    throw v1

    .line 76
    :catch_2
    move-exception v4

    .line 77
    new-instance v6, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    const-string v7, "The code is running in an unknown java vm"

    .line 80
    .line 81
    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :try_start_3
    new-array v7, v0, [Ljava/lang/Class;

    .line 85
    .line 86
    aput-object v3, v7, v1

    .line 87
    .line 88
    invoke-virtual {v3, v2, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    new-array v8, v0, [Ljava/lang/Object;

    .line 93
    .line 94
    aput-object v5, v8, v1

    .line 95
    .line 96
    invoke-virtual {v7, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 97
    .line 98
    .line 99
    :catch_3
    :try_start_4
    new-array v5, v0, [Ljava/lang/Class;

    .line 100
    .line 101
    aput-object v3, v5, v1

    .line 102
    .line 103
    invoke-virtual {v3, v2, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    new-array v0, v0, [Ljava/lang/Object;

    .line 108
    .line 109
    aput-object v4, v0, v1

    .line 110
    .line 111
    invoke-virtual {v2, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 112
    .line 113
    .line 114
    :catch_4
    throw v6
.end method

.method public static krb5GetSessionKey(Lorg/ietf/jgss/GSSContext;)Ljava/security/Key;
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/hierynomus/smbj/auth/ExtendedGSSContext;->inquireSecContext:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    sget-object v2, Lcom/hierynomus/smbj/auth/ExtendedGSSContext;->krb5GetSessionKeyConst:Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 10
    .line 11
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/security/Key;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    return-object p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    new-instance v0, Lcom/hierynomus/protocol/transport/TransportException;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/hierynomus/protocol/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method
