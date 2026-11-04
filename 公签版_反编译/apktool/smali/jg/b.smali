.class public final Ljg/b;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/InputStream;

.field public final b:Ljg/g;

.field public final c:Ljava/lang/String;

.field public final d:[B

.field public e:Z

.field public f:Ljavax/crypto/CipherInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljg/g;Ljava/lang/String;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ljg/b;->a:Ljava/io/InputStream;

    .line 5
    .line 6
    iput-object p2, p0, Ljg/b;->b:Ljg/g;

    .line 7
    .line 8
    iput-object p3, p0, Ljg/b;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Ljg/b;->d:[B

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Ljg/b;->f:Ljavax/crypto/CipherInputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljavax/crypto/CipherInputStream;->close()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final r()Ljavax/crypto/CipherInputStream;
    .locals 13

    .line 1
    iget-boolean v0, p0, Ljg/b;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ljg/b;->f:Ljavax/crypto/CipherInputStream;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Ljg/b;->b:Ljg/g;

    .line 9
    .line 10
    iget-object v1, v0, Ljg/g;->d:[B

    .line 11
    .line 12
    iget-object v2, p0, Ljg/b;->c:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v1, :cond_5

    .line 15
    .line 16
    array-length v3, v1

    .line 17
    const/4 v4, 0x2

    .line 18
    if-lt v3, v4, :cond_4

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    aget-byte v5, v1, v3

    .line 22
    .line 23
    and-int/lit16 v6, v5, 0xff

    .line 24
    .line 25
    const/16 v7, 0x3f

    .line 26
    .line 27
    and-int/2addr v5, v7

    .line 28
    const/4 v8, 0x1

    .line 29
    aget-byte v9, v1, v8

    .line 30
    .line 31
    and-int/lit16 v10, v9, 0xff

    .line 32
    .line 33
    shr-int/lit8 v11, v6, 0x6

    .line 34
    .line 35
    and-int/2addr v11, v8

    .line 36
    and-int/lit8 v9, v9, 0xf

    .line 37
    .line 38
    add-int/2addr v11, v9

    .line 39
    shr-int/lit8 v6, v6, 0x7

    .line 40
    .line 41
    and-int/2addr v6, v8

    .line 42
    shr-int/lit8 v9, v10, 0x4

    .line 43
    .line 44
    add-int/2addr v6, v9

    .line 45
    add-int/lit8 v9, v6, 0x2

    .line 46
    .line 47
    add-int v10, v9, v11

    .line 48
    .line 49
    array-length v12, v1

    .line 50
    if-gt v10, v12, :cond_3

    .line 51
    .line 52
    new-array v10, v6, [B

    .line 53
    .line 54
    invoke-static {v1, v4, v10, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    .line 56
    .line 57
    const/16 v1, 0x10

    .line 58
    .line 59
    new-array v1, v1, [B

    .line 60
    .line 61
    iget-object v0, v0, Ljg/g;->d:[B

    .line 62
    .line 63
    invoke-static {v0, v9, v1, v3, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Ljg/b;->d:[B

    .line 67
    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    if-ne v5, v7, :cond_1

    .line 71
    .line 72
    const/16 v2, 0x20

    .line 73
    .line 74
    new-array v2, v2, [B

    .line 75
    .line 76
    invoke-static {v10, v3, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    .line 78
    .line 79
    array-length v5, v0

    .line 80
    rsub-int/lit8 v7, v6, 0x20

    .line 81
    .line 82
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    invoke-static {v0, v3, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    invoke-static {v5, v0, v10}, Ljg/k;->h(I[B[B)[B

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    :goto_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 95
    .line 96
    const-string v3, "AES"

    .line 97
    .line 98
    invoke-direct {v0, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :try_start_0
    const-string v2, "AES/CBC/NoPadding"

    .line 102
    .line 103
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    .line 108
    .line 109
    invoke-direct {v3, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v4, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 113
    .line 114
    .line 115
    new-instance v0, Ljavax/crypto/CipherInputStream;

    .line 116
    .line 117
    iget-object v1, p0, Ljg/b;->a:Ljava/io/InputStream;

    .line 118
    .line 119
    invoke-direct {v0, v1, v2}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 120
    .line 121
    .line 122
    iput-object v0, p0, Ljg/b;->f:Ljavax/crypto/CipherInputStream;

    .line 123
    .line 124
    iput-boolean v8, p0, Ljg/b;->e:Z
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .line 126
    return-object v0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 129
    .line 130
    const-string v2, "Decryption error (do you have the JCE Unlimited Strength Jurisdiction Policy Files installed?)"

    .line 131
    .line 132
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    throw v1

    .line 136
    :cond_2
    new-instance v0, Lhg/b;

    .line 137
    .line 138
    invoke-direct {v0, v2}, Lhg/b;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw v0

    .line 142
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 143
    .line 144
    const-string v1, "Salt size + IV size too long in "

    .line 145
    .line 146
    invoke-static {v1, v2}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw v0

    .line 154
    :cond_4
    new-instance v0, Ljava/io/IOException;

    .line 155
    .line 156
    const-string v1, "AES256 properties too short in "

    .line 157
    .line 158
    invoke-static {v1, v2}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw v0

    .line 166
    :cond_5
    new-instance v0, Ljava/io/IOException;

    .line 167
    .line 168
    const-string v1, "Missing AES256 properties in "

    .line 169
    .line 170
    invoke-static {v1, v2}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw v0
.end method

.method public final read()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljg/b;->r()Ljavax/crypto/CipherInputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/CipherInputStream;->read()I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 1

    .line 2
    invoke-virtual {p0}, Ljg/b;->r()Ljavax/crypto/CipherInputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherInputStream;->read([BII)I

    move-result p1

    return p1
.end method
