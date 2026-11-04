.class public abstract Lid/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B

.field public static final b:[B

.field public static final c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "SmbSign"

    .line 2
    .line 3
    invoke-static {v0}, Lid/g;->b(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lid/g;->a:[B

    .line 8
    .line 9
    const-string v0, "SMB2AESCMAC"

    .line 10
    .line 11
    invoke-static {v0}, Lid/g;->b(Ljava/lang/String;)[B

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lid/g;->b:[B

    .line 16
    .line 17
    const-string v0, "SMBSigningKey"

    .line 18
    .line 19
    invoke-static {v0}, Lid/g;->b(Ljava/lang/String;)[B

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lid/g;->c:[B

    .line 24
    .line 25
    const-string v0, "SmbRpc"

    .line 26
    .line 27
    invoke-static {v0}, Lid/g;->b(Ljava/lang/String;)[B

    .line 28
    .line 29
    .line 30
    const-string v0, "SMB2APP"

    .line 31
    .line 32
    invoke-static {v0}, Lid/g;->b(Ljava/lang/String;)[B

    .line 33
    .line 34
    .line 35
    const-string v0, "SMBAppKey"

    .line 36
    .line 37
    invoke-static {v0}, Lid/g;->b(Ljava/lang/String;)[B

    .line 38
    .line 39
    .line 40
    const-string v0, "ServerIn "

    .line 41
    .line 42
    invoke-static {v0}, Lid/g;->b(Ljava/lang/String;)[B

    .line 43
    .line 44
    .line 45
    const-string v0, "SMB2AESCCM"

    .line 46
    .line 47
    invoke-static {v0}, Lid/g;->b(Ljava/lang/String;)[B

    .line 48
    .line 49
    .line 50
    const-string v1, "SMB2C2SCipherKey"

    .line 51
    .line 52
    invoke-static {v1}, Lid/g;->b(Ljava/lang/String;)[B

    .line 53
    .line 54
    .line 55
    const-string v1, "ServerOut"

    .line 56
    .line 57
    invoke-static {v1}, Lid/g;->b(Ljava/lang/String;)[B

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Lid/g;->b(Ljava/lang/String;)[B

    .line 61
    .line 62
    .line 63
    const-string v0, "SMB2S2CCipherKey"

    .line 64
    .line 65
    invoke-static {v0}, Lid/g;->b(Ljava/lang/String;)[B

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public static a(I[B[B)[B
    .locals 5

    .line 1
    const/16 v0, 0x311

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lid/g;->c:[B

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v1, Lid/g;->b:[B

    .line 9
    .line 10
    :goto_0
    if-ne p0, v0, :cond_1

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    sget-object p2, Lid/g;->a:[B

    .line 14
    .line 15
    :goto_1
    new-instance p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;

    .line 16
    .line 17
    new-instance v0, Lorg/bouncycastle/crypto/macs/HMac;

    .line 18
    .line 19
    new-instance v2, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    .line 20
    .line 21
    invoke-direct {v2}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/macs/HMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;-><init>(Lorg/bouncycastle/crypto/Mac;)V

    .line 28
    .line 29
    .line 30
    array-length v0, v1

    .line 31
    array-length v2, p2

    .line 32
    add-int/2addr v0, v2

    .line 33
    add-int/lit8 v2, v0, 0x5

    .line 34
    .line 35
    new-array v2, v2, [B

    .line 36
    .line 37
    array-length v3, v1

    .line 38
    const/4 v4, 0x0

    .line 39
    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    .line 41
    .line 42
    array-length v1, v1

    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    array-length v3, p2

    .line 46
    invoke-static {p2, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v0, v0, 0x4

    .line 50
    .line 51
    const/16 p2, -0x80

    .line 52
    .line 53
    aput-byte p2, v2, v0

    .line 54
    .line 55
    new-instance p2, Lorg/bouncycastle/crypto/params/KDFCounterParameters;

    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    const/16 v1, 0x20

    .line 59
    .line 60
    invoke-direct {p2, p1, v0, v2, v1}, Lorg/bouncycastle/crypto/params/KDFCounterParameters;-><init>([B[B[BI)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    .line 64
    .line 65
    .line 66
    const/16 p1, 0x10

    .line 67
    .line 68
    new-array p2, p1, [B

    .line 69
    .line 70
    invoke-virtual {p0, p2, v4, p1}, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->generateBytes([BII)I

    .line 71
    .line 72
    .line 73
    return-object p2
.end method

.method public static b(Ljava/lang/String;)[B
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    new-array v0, v0, [B

    .line 8
    .line 9
    sget-object v1, Lj$/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    invoke-static {v1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method
