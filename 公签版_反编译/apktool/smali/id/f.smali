.class public final Lid/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lad/h;


# static fields
.field public static final b:Lorg/slf4j/Logger;


# instance fields
.field public final a:Ljavax/crypto/Mac;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lid/f;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lid/f;->b:Lorg/slf4j/Logger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>([BI[B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x202

    .line 5
    .line 6
    if-eq p2, v0, :cond_5

    .line 7
    .line 8
    const/16 v0, 0x210

    .line 9
    .line 10
    if-eq p2, v0, :cond_5

    .line 11
    .line 12
    const/16 v0, 0x300

    .line 13
    .line 14
    const-string v1, "AESCMAC"

    .line 15
    .line 16
    if-eq p2, v0, :cond_3

    .line 17
    .line 18
    const/16 v0, 0x302

    .line 19
    .line 20
    if-eq p2, v0, :cond_3

    .line 21
    .line 22
    const/16 v0, 0x311

    .line 23
    .line 24
    if-ne p2, v0, :cond_2

    .line 25
    .line 26
    if-eqz p3, :cond_1

    .line 27
    .line 28
    invoke-static {p2, p1, p3}, Lid/g;->a(I[B[B)[B

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    sget-object p2, Lge/a;->b:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    .line 33
    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance p2, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    .line 38
    .line 39
    invoke-direct {p2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    .line 40
    .line 41
    .line 42
    sput-object p2, Lge/a;->b:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    .line 43
    .line 44
    :goto_0
    invoke-static {v1, p2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    goto :goto_2

    .line 49
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    const-string p2, "Missing preauthIntegrityHash for SMB 3.1"

    .line 52
    .line 53
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 58
    .line 59
    const-string p2, "Unknown dialect"

    .line 60
    .line 61
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :cond_3
    const/4 p3, 0x0

    .line 66
    new-array p3, p3, [B

    .line 67
    .line 68
    invoke-static {p2, p1, p3}, Lid/g;->a(I[B[B)[B

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    sget-object p2, Lge/a;->b:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    .line 73
    .line 74
    if-eqz p2, :cond_4

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    new-instance p2, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    .line 78
    .line 79
    invoke-direct {p2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    .line 80
    .line 81
    .line 82
    sput-object p2, Lge/a;->b:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    .line 83
    .line 84
    :goto_1
    invoke-static {v1, p2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    goto :goto_2

    .line 89
    :cond_5
    const-string p2, "HmacSHA256"

    .line 90
    .line 91
    invoke-static {p2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    :goto_2
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    .line 96
    .line 97
    const-string v0, "HMAC"

    .line 98
    .line 99
    invoke-direct {p3, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, p3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 103
    .line 104
    .line 105
    iput-object p2, p0, Lid/f;->a:Ljavax/crypto/Mac;

    .line 106
    .line 107
    return-void
.end method
