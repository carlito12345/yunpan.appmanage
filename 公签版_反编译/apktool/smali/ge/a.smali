.class public abstract Lge/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[C

.field public static b:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [C

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lge/a;->a:[C

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static a(I[B)S
    .locals 1

    .line 1
    aget-byte v0, p1, p0

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    shl-int/lit8 v0, v0, 0x8

    .line 6
    .line 7
    add-int/lit8 p0, p0, 0x1

    .line 8
    .line 9
    aget-byte p0, p1, p0

    .line 10
    .line 11
    and-int/lit16 p0, p0, 0xff

    .line 12
    .line 13
    or-int/2addr p0, v0

    .line 14
    int-to-short p0, p0

    .line 15
    return p0
.end method

.method public static b(I[B)S
    .locals 1

    .line 1
    aget-byte v0, p1, p0

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    add-int/lit8 p0, p0, 0x1

    .line 6
    .line 7
    aget-byte p0, p1, p0

    .line 8
    .line 9
    and-int/lit16 p0, p0, 0xff

    .line 10
    .line 11
    shl-int/lit8 p0, p0, 0x8

    .line 12
    .line 13
    or-int/2addr p0, v0

    .line 14
    int-to-short p0, p0

    .line 15
    return p0
.end method

.method public static c(I[B)I
    .locals 2

    .line 1
    aget-byte v0, p1, p0

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    shl-int/lit8 v0, v0, 0x18

    .line 6
    .line 7
    add-int/lit8 v1, p0, 0x1

    .line 8
    .line 9
    aget-byte v1, p1, v1

    .line 10
    .line 11
    and-int/lit16 v1, v1, 0xff

    .line 12
    .line 13
    shl-int/lit8 v1, v1, 0x10

    .line 14
    .line 15
    or-int/2addr v0, v1

    .line 16
    add-int/lit8 v1, p0, 0x2

    .line 17
    .line 18
    aget-byte v1, p1, v1

    .line 19
    .line 20
    and-int/lit16 v1, v1, 0xff

    .line 21
    .line 22
    shl-int/lit8 v1, v1, 0x8

    .line 23
    .line 24
    or-int/2addr v0, v1

    .line 25
    add-int/lit8 p0, p0, 0x3

    .line 26
    .line 27
    aget-byte p0, p1, p0

    .line 28
    .line 29
    and-int/lit16 p0, p0, 0xff

    .line 30
    .line 31
    or-int/2addr p0, v0

    .line 32
    return p0
.end method

.method public static d(I[B)I
    .locals 2

    .line 1
    aget-byte v0, p1, p0

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    add-int/lit8 v1, p0, 0x1

    .line 6
    .line 7
    aget-byte v1, p1, v1

    .line 8
    .line 9
    and-int/lit16 v1, v1, 0xff

    .line 10
    .line 11
    shl-int/lit8 v1, v1, 0x8

    .line 12
    .line 13
    or-int/2addr v0, v1

    .line 14
    add-int/lit8 v1, p0, 0x2

    .line 15
    .line 16
    aget-byte v1, p1, v1

    .line 17
    .line 18
    and-int/lit16 v1, v1, 0xff

    .line 19
    .line 20
    shl-int/lit8 v1, v1, 0x10

    .line 21
    .line 22
    or-int/2addr v0, v1

    .line 23
    add-int/lit8 p0, p0, 0x3

    .line 24
    .line 25
    aget-byte p0, p1, p0

    .line 26
    .line 27
    and-int/lit16 p0, p0, 0xff

    .line 28
    .line 29
    shl-int/lit8 p0, p0, 0x18

    .line 30
    .line 31
    or-int/2addr p0, v0

    .line 32
    return p0
.end method

.method public static e(I[B)Ljava/lang/String;
    .locals 11

    .line 1
    new-array v0, p0, [C

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    if-ge v2, p0, :cond_8

    .line 7
    .line 8
    add-int/lit8 v4, v2, 0x1

    .line 9
    .line 10
    aget-byte v5, p1, v2

    .line 11
    .line 12
    and-int/lit16 v6, v5, 0xff

    .line 13
    .line 14
    if-eqz v6, :cond_8

    .line 15
    .line 16
    const/16 v7, 0x80

    .line 17
    .line 18
    if-ge v6, v7, :cond_0

    .line 19
    .line 20
    int-to-char v2, v6

    .line 21
    aput-char v2, v0, v3

    .line 22
    .line 23
    move v2, v4

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    and-int/lit16 v6, v5, 0xe0

    .line 26
    .line 27
    const/16 v8, 0xc0

    .line 28
    .line 29
    const-string v9, "Invalid UTF-8 sequence"

    .line 30
    .line 31
    if-ne v6, v8, :cond_3

    .line 32
    .line 33
    sub-int v6, p0, v4

    .line 34
    .line 35
    const/4 v10, 0x2

    .line 36
    if-ge v6, v10, :cond_1

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_1
    and-int/lit8 v5, v5, 0x1f

    .line 40
    .line 41
    shl-int/lit8 v5, v5, 0x6

    .line 42
    .line 43
    int-to-char v5, v5

    .line 44
    aput-char v5, v0, v3

    .line 45
    .line 46
    add-int/lit8 v2, v2, 0x2

    .line 47
    .line 48
    aget-byte v4, p1, v4

    .line 49
    .line 50
    and-int/lit8 v6, v4, 0x3f

    .line 51
    .line 52
    or-int/2addr v5, v6

    .line 53
    int-to-char v5, v5

    .line 54
    aput-char v5, v0, v3

    .line 55
    .line 56
    and-int/2addr v4, v8

    .line 57
    if-ne v4, v7, :cond_2

    .line 58
    .line 59
    if-lt v5, v7, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    new-instance p0, Ljava/io/IOException;

    .line 63
    .line 64
    invoke-direct {p0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    :cond_3
    and-int/lit16 v6, v5, 0xf0

    .line 69
    .line 70
    const/16 v10, 0xe0

    .line 71
    .line 72
    if-ne v6, v10, :cond_7

    .line 73
    .line 74
    sub-int v6, p0, v4

    .line 75
    .line 76
    const/4 v10, 0x3

    .line 77
    if-ge v6, v10, :cond_4

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_4
    and-int/lit8 v5, v5, 0xf

    .line 81
    .line 82
    shl-int/lit8 v5, v5, 0xc

    .line 83
    .line 84
    int-to-char v5, v5

    .line 85
    aput-char v5, v0, v3

    .line 86
    .line 87
    add-int/lit8 v6, v2, 0x2

    .line 88
    .line 89
    aget-byte v4, p1, v4

    .line 90
    .line 91
    and-int/lit16 v10, v4, 0xc0

    .line 92
    .line 93
    if-ne v10, v7, :cond_6

    .line 94
    .line 95
    and-int/lit8 v4, v4, 0x3f

    .line 96
    .line 97
    shl-int/lit8 v4, v4, 0x6

    .line 98
    .line 99
    or-int/2addr v4, v5

    .line 100
    int-to-char v4, v4

    .line 101
    aput-char v4, v0, v3

    .line 102
    .line 103
    add-int/lit8 v2, v2, 0x3

    .line 104
    .line 105
    aget-byte v5, p1, v6

    .line 106
    .line 107
    and-int/lit8 v6, v5, 0x3f

    .line 108
    .line 109
    or-int/2addr v4, v6

    .line 110
    int-to-char v4, v4

    .line 111
    aput-char v4, v0, v3

    .line 112
    .line 113
    and-int/2addr v5, v8

    .line 114
    if-ne v5, v7, :cond_5

    .line 115
    .line 116
    const/16 v5, 0x800

    .line 117
    .line 118
    if-lt v4, v5, :cond_5

    .line 119
    .line 120
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_5
    new-instance p0, Ljava/io/IOException;

    .line 124
    .line 125
    invoke-direct {p0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p0

    .line 129
    :cond_6
    new-instance p0, Ljava/io/IOException;

    .line 130
    .line 131
    invoke-direct {p0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw p0

    .line 135
    :cond_7
    new-instance p0, Ljava/io/IOException;

    .line 136
    .line 137
    const-string p1, "Unsupported UTF-8 sequence"

    .line 138
    .line 139
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p0

    .line 143
    :cond_8
    :goto_2
    new-instance p0, Ljava/lang/String;

    .line 144
    .line 145
    invoke-direct {p0, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 146
    .line 147
    .line 148
    return-object p0
.end method

.method public static f(II[B)V
    .locals 3

    .line 1
    add-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    shr-int/lit8 v1, p0, 0x18

    .line 4
    .line 5
    and-int/lit16 v1, v1, 0xff

    .line 6
    .line 7
    int-to-byte v1, v1

    .line 8
    aput-byte v1, p2, p1

    .line 9
    .line 10
    add-int/lit8 v1, p1, 0x2

    .line 11
    .line 12
    shr-int/lit8 v2, p0, 0x10

    .line 13
    .line 14
    and-int/lit16 v2, v2, 0xff

    .line 15
    .line 16
    int-to-byte v2, v2

    .line 17
    aput-byte v2, p2, v0

    .line 18
    .line 19
    add-int/lit8 p1, p1, 0x3

    .line 20
    .line 21
    shr-int/lit8 v0, p0, 0x8

    .line 22
    .line 23
    and-int/lit16 v0, v0, 0xff

    .line 24
    .line 25
    int-to-byte v0, v0

    .line 26
    aput-byte v0, p2, v1

    .line 27
    .line 28
    and-int/lit16 p0, p0, 0xff

    .line 29
    .line 30
    int-to-byte p0, p0

    .line 31
    aput-byte p0, p2, p1

    .line 32
    .line 33
    return-void
.end method

.method public static g(II[B)V
    .locals 3

    .line 1
    add-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    and-int/lit16 v1, p0, 0xff

    .line 4
    .line 5
    int-to-byte v1, v1

    .line 6
    aput-byte v1, p2, p1

    .line 7
    .line 8
    add-int/lit8 v1, p1, 0x2

    .line 9
    .line 10
    shr-int/lit8 v2, p0, 0x8

    .line 11
    .line 12
    and-int/lit16 v2, v2, 0xff

    .line 13
    .line 14
    int-to-byte v2, v2

    .line 15
    aput-byte v2, p2, v0

    .line 16
    .line 17
    add-int/lit8 p1, p1, 0x3

    .line 18
    .line 19
    shr-int/lit8 v0, p0, 0x10

    .line 20
    .line 21
    and-int/lit16 v0, v0, 0xff

    .line 22
    .line 23
    int-to-byte v0, v0

    .line 24
    aput-byte v0, p2, v1

    .line 25
    .line 26
    shr-int/lit8 p0, p0, 0x18

    .line 27
    .line 28
    and-int/lit16 p0, p0, 0xff

    .line 29
    .line 30
    int-to-byte p0, p0

    .line 31
    aput-byte p0, p2, p1

    .line 32
    .line 33
    return-void
.end method

.method public static h([B)Ljavax/crypto/Cipher;
    .locals 3

    .line 1
    const-string v0, "RC4"

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    .line 8
    .line 9
    invoke-direct {v2, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    invoke-virtual {v1, p0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-object v1

    .line 17
    :catch_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :catch_1
    move-exception p0

    .line 20
    goto :goto_0

    .line 21
    :catch_2
    move-exception p0

    .line 22
    :goto_0
    new-instance v0, Lvc/d;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lvc/d;-><init>(Ljava/security/GeneralSecurityException;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method public static i([B)Ljavax/crypto/Cipher;
    .locals 12

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x7

    .line 4
    if-ne v0, v2, :cond_1

    .line 5
    .line 6
    const/16 v0, 0x8

    .line 7
    .line 8
    new-array v3, v0, [B

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    aget-byte v5, p0, v4

    .line 12
    .line 13
    and-int/lit16 v5, v5, 0xfe

    .line 14
    .line 15
    int-to-byte v5, v5

    .line 16
    aput-byte v5, v3, v4

    .line 17
    .line 18
    aget-byte v5, p0, v4

    .line 19
    .line 20
    shl-int/2addr v5, v2

    .line 21
    aget-byte v6, p0, v1

    .line 22
    .line 23
    and-int/lit16 v6, v6, 0xff

    .line 24
    .line 25
    ushr-int/2addr v6, v1

    .line 26
    or-int/2addr v5, v6

    .line 27
    int-to-byte v5, v5

    .line 28
    aput-byte v5, v3, v1

    .line 29
    .line 30
    aget-byte v5, p0, v1

    .line 31
    .line 32
    const/4 v6, 0x6

    .line 33
    shl-int/2addr v5, v6

    .line 34
    const/4 v7, 0x2

    .line 35
    aget-byte v8, p0, v7

    .line 36
    .line 37
    and-int/lit16 v8, v8, 0xff

    .line 38
    .line 39
    ushr-int/2addr v8, v7

    .line 40
    or-int/2addr v5, v8

    .line 41
    int-to-byte v5, v5

    .line 42
    aput-byte v5, v3, v7

    .line 43
    .line 44
    aget-byte v5, p0, v7

    .line 45
    .line 46
    const/4 v8, 0x5

    .line 47
    shl-int/2addr v5, v8

    .line 48
    const/4 v9, 0x3

    .line 49
    aget-byte v10, p0, v9

    .line 50
    .line 51
    and-int/lit16 v10, v10, 0xff

    .line 52
    .line 53
    ushr-int/2addr v10, v9

    .line 54
    or-int/2addr v5, v10

    .line 55
    int-to-byte v5, v5

    .line 56
    aput-byte v5, v3, v9

    .line 57
    .line 58
    aget-byte v5, p0, v9

    .line 59
    .line 60
    const/4 v10, 0x4

    .line 61
    shl-int/2addr v5, v10

    .line 62
    aget-byte v11, p0, v10

    .line 63
    .line 64
    and-int/lit16 v11, v11, 0xff

    .line 65
    .line 66
    ushr-int/2addr v11, v10

    .line 67
    or-int/2addr v5, v11

    .line 68
    int-to-byte v5, v5

    .line 69
    aput-byte v5, v3, v10

    .line 70
    .line 71
    aget-byte v5, p0, v10

    .line 72
    .line 73
    shl-int/2addr v5, v9

    .line 74
    aget-byte v9, p0, v8

    .line 75
    .line 76
    and-int/lit16 v9, v9, 0xff

    .line 77
    .line 78
    ushr-int/2addr v9, v8

    .line 79
    or-int/2addr v5, v9

    .line 80
    int-to-byte v5, v5

    .line 81
    aput-byte v5, v3, v8

    .line 82
    .line 83
    aget-byte v5, p0, v8

    .line 84
    .line 85
    shl-int/2addr v5, v7

    .line 86
    aget-byte v7, p0, v6

    .line 87
    .line 88
    and-int/lit16 v7, v7, 0xff

    .line 89
    .line 90
    ushr-int/2addr v7, v6

    .line 91
    or-int/2addr v5, v7

    .line 92
    int-to-byte v5, v5

    .line 93
    aput-byte v5, v3, v6

    .line 94
    .line 95
    aget-byte p0, p0, v6

    .line 96
    .line 97
    shl-int/2addr p0, v1

    .line 98
    int-to-byte p0, p0

    .line 99
    aput-byte p0, v3, v2

    .line 100
    .line 101
    :goto_0
    if-ge v4, v0, :cond_0

    .line 102
    .line 103
    aget-byte p0, v3, v4

    .line 104
    .line 105
    xor-int/lit8 v2, p0, 0x1

    .line 106
    .line 107
    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    and-int/2addr v2, v1

    .line 112
    xor-int/2addr p0, v2

    .line 113
    int-to-byte p0, p0

    .line 114
    aput-byte p0, v3, v4

    .line 115
    .line 116
    add-int/lit8 v4, v4, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_0
    invoke-static {v3}, Lge/a;->i([B)Ljavax/crypto/Cipher;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    return-object p0

    .line 124
    :cond_1
    :try_start_0
    const-string v0, "DES/ECB/NoPadding"

    .line 125
    .line 126
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    .line 131
    .line 132
    const-string v3, "DES"

    .line 133
    .line 134
    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .line 139
    .line 140
    return-object v0

    .line 141
    :catch_0
    move-exception p0

    .line 142
    goto :goto_1

    .line 143
    :catch_1
    move-exception p0

    .line 144
    goto :goto_1

    .line 145
    :catch_2
    move-exception p0

    .line 146
    :goto_1
    new-instance v0, Lvc/d;

    .line 147
    .line 148
    invoke-direct {v0, p0}, Lvc/d;-><init>(Ljava/security/GeneralSecurityException;)V

    .line 149
    .line 150
    .line 151
    goto :goto_3

    .line 152
    :goto_2
    throw v0

    .line 153
    :goto_3
    goto :goto_2
.end method

.method public static j()Ljava/security/MessageDigest;
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "MD4"

    .line 2
    .line 3
    sget-object v1, Lge/a;->b:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    .line 9
    .line 10
    invoke-direct {v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lge/a;->b:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    .line 14
    .line 15
    :goto_0
    invoke-static {v0, v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;

    .line 16
    .line 17
    .line 18
    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-object v0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    new-instance v1, Lvc/d;

    .line 22
    .line 23
    invoke-direct {v1, v0}, Lvc/d;-><init>(Ljava/security/GeneralSecurityException;)V

    .line 24
    .line 25
    .line 26
    throw v1
.end method

.method public static k()Ljava/security/MessageDigest;
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "MD5"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object v0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Lvc/d;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Lvc/d;-><init>(Ljava/security/GeneralSecurityException;)V

    .line 12
    .line 13
    .line 14
    throw v1
.end method

.method public static l(II)Ljava/lang/String;
    .locals 5

    .line 1
    new-array v0, p1, [C

    .line 2
    .line 3
    move v1, p1

    .line 4
    :goto_0
    if-lez v1, :cond_2

    .line 5
    .line 6
    add-int/lit8 v2, v1, -0x1

    .line 7
    .line 8
    if-ge v2, p1, :cond_0

    .line 9
    .line 10
    sget-object v3, Lge/a;->a:[C

    .line 11
    .line 12
    and-int/lit8 v4, p0, 0xf

    .line 13
    .line 14
    aget-char v3, v3, v4

    .line 15
    .line 16
    aput-char v3, v0, v2

    .line 17
    .line 18
    :cond_0
    if-eqz p0, :cond_1

    .line 19
    .line 20
    ushr-int/lit8 p0, p0, 0x4

    .line 21
    .line 22
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    new-instance p0, Ljava/lang/String;

    .line 26
    .line 27
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    .line 28
    .line 29
    .line 30
    return-object p0
.end method

.method public static m([BII)Ljava/lang/String;
    .locals 7

    .line 1
    mul-int/lit8 v0, p2, 0x2

    .line 2
    .line 3
    new-array v0, v0, [C

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v1, p2, :cond_0

    .line 8
    .line 9
    add-int/lit8 v3, v2, 0x1

    .line 10
    .line 11
    sget-object v4, Lge/a;->a:[C

    .line 12
    .line 13
    add-int v5, p1, v1

    .line 14
    .line 15
    aget-byte v5, p0, v5

    .line 16
    .line 17
    shr-int/lit8 v6, v5, 0x4

    .line 18
    .line 19
    and-int/lit8 v6, v6, 0xf

    .line 20
    .line 21
    aget-char v6, v4, v6

    .line 22
    .line 23
    aput-char v6, v0, v2

    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x2

    .line 26
    .line 27
    and-int/lit8 v5, v5, 0xf

    .line 28
    .line 29
    aget-char v4, v4, v5

    .line 30
    .line 31
    aput-char v4, v0, v3

    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance p0, Ljava/lang/String;

    .line 37
    .line 38
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    .line 39
    .line 40
    .line 41
    return-object p0
.end method
