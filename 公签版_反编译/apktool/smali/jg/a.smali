.class public final Ljg/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:[B


# instance fields
.field public final a:[B

.field public final b:[B

.field public final c:I

.field public final d:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    sput-object v0, Ljg/a;->e:[B

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>([C)V
    .locals 3

    .line 1
    sget-object v0, Ljg/a;->e:[B

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    new-array v1, v1, [B

    .line 6
    .line 7
    :try_start_0
    invoke-static {}, Leg/a;->i()Ljava/security/SecureRandom;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Ljg/a;->a:[B

    .line 18
    .line 19
    iput-object v1, p0, Ljg/a;->b:[B

    .line 20
    .line 21
    const/16 v2, 0x13

    .line 22
    .line 23
    iput v2, p0, Ljg/a;->c:I

    .line 24
    .line 25
    invoke-static {p1}, Ljg/k;->i([C)[B

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {v2, p1, v0}, Ljg/k;->h(I[B[B)[B

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 34
    .line 35
    const-string v2, "AES"

    .line 36
    .line 37
    invoke-direct {v0, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :try_start_1
    const-string p1, "AES/CBC/NoPadding"

    .line 41
    .line 42
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Ljg/a;->d:Ljavax/crypto/Cipher;

    .line 47
    .line 48
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    .line 49
    .line 50
    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 51
    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    invoke-virtual {p1, v1, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :catch_0
    move-exception p1

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    const-string v1, "Encryption error (do you have the JCE Unlimited Strength Jurisdiction Policy Files installed?)"

    .line 62
    .line 63
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :catch_1
    move-exception p1

    .line 68
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 69
    .line 70
    const-string v1, "No strong secure random available to generate strong AES key"

    .line 71
    .line 72
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    throw v0
.end method
