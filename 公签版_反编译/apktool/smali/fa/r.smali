.class public final Lfa/r;
.super Lio/github/muntashirakon/adb/AbsAdbConnectionManager;
.source "SourceFile"


# instance fields
.field public a:Lcom/yunpan/appmanage/base/AppStart;

.field public b:Lio/github/muntashirakon/adb/AdbStream;

.field public c:Ljava/util/concurrent/LinkedBlockingQueue;

.field public final d:Ljava/security/PrivateKey;

.field public final e:Ljava/security/cert/Certificate;


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 1
    invoke-direct {p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->setApi(I)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 10
    .line 11
    invoke-static {v0}, Lfa/r;->Q(Lcom/yunpan/appmanage/base/AppStart;)Ljava/security/PrivateKey;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lfa/r;->d:Ljava/security/PrivateKey;

    .line 16
    .line 17
    sget-object v1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 18
    .line 19
    invoke-static {v1}, Lfa/r;->P(Lcom/yunpan/appmanage/base/AppStart;)Ljava/security/cert/Certificate;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, p0, Lfa/r;->e:Ljava/security/cert/Certificate;

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    const-string v0, "RSA"

    .line 28
    .line 29
    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "SHA1PRNG"

    .line 34
    .line 35
    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const/16 v2, 0x800

    .line 40
    .line 41
    invoke-virtual {v0, v2, v1}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lfa/r;->d:Ljava/security/PrivateKey;

    .line 57
    .line 58
    const-string v2, "SHA512withRSA"

    .line 59
    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 61
    .line 62
    .line 63
    move-result-wide v3

    .line 64
    const-wide/32 v5, 0x5265c00

    .line 65
    .line 66
    .line 67
    add-long/2addr v3, v5

    .line 68
    new-instance v5, Lh/g;

    .line 69
    .line 70
    invoke-direct {v5}, Lh/g;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v6, "SubjectKeyIdentifier"

    .line 74
    .line 75
    new-instance v7, Lh/v;

    .line 76
    .line 77
    new-instance v8, Lh/o;

    .line 78
    .line 79
    invoke-direct {v8, v1}, Lh/o;-><init>(Ljava/security/PublicKey;)V

    .line 80
    .line 81
    .line 82
    iget-object v8, v8, Lh/o;->a:[B

    .line 83
    .line 84
    invoke-virtual {v8}, [B->clone()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    check-cast v8, [B

    .line 89
    .line 90
    invoke-direct {v7, v8}, Lh/v;-><init>([B)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v7, v6}, Lh/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    new-instance v6, Lh/w;

    .line 97
    .line 98
    invoke-direct {v6}, Lh/w;-><init>()V

    .line 99
    .line 100
    .line 101
    new-instance v7, Ljava/util/Date;

    .line 102
    .line 103
    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 104
    .line 105
    .line 106
    new-instance v8, Ljava/util/Date;

    .line 107
    .line 108
    invoke-direct {v8, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 109
    .line 110
    .line 111
    const-string v3, "PrivateKeyUsage"

    .line 112
    .line 113
    new-instance v4, Lh/s;

    .line 114
    .line 115
    invoke-direct {v4, v7, v8}, Lh/s;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5, v4, v3}, Lh/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    new-instance v3, Lh/k;

    .line 122
    .line 123
    invoke-direct {v3, v7, v8}, Lh/k;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    .line 124
    .line 125
    .line 126
    new-instance v4, Lh/y;

    .line 127
    .line 128
    invoke-direct {v4}, Lh/y;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v7, "version"

    .line 132
    .line 133
    new-instance v8, Lh/l;

    .line 134
    .line 135
    const/4 v9, 0x0

    .line 136
    invoke-direct {v8, v9}, Lh/l;-><init>(I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4, v8, v7}, Lh/y;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const-string v7, "serialNumber"

    .line 143
    .line 144
    new-instance v8, Lh/i;

    .line 145
    .line 146
    new-instance v9, Ljava/util/Random;

    .line 147
    .line 148
    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v9}, Ljava/util/Random;->nextInt()I

    .line 152
    .line 153
    .line 154
    move-result v9

    .line 155
    const v10, 0x7fffffff

    .line 156
    .line 157
    .line 158
    and-int/2addr v9, v10

    .line 159
    invoke-direct {v8, v9}, Lh/i;-><init>(I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4, v8, v7}, Lh/y;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    const-string v7, "algorithmID"

    .line 166
    .line 167
    new-instance v8, Lh/f;

    .line 168
    .line 169
    invoke-static {v2}, Lh/d;->c(Ljava/lang/String;)Lh/d;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-direct {v8, v2}, Lh/f;-><init>(Lh/d;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v4, v8, v7}, Lh/y;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    const-string v2, "subject"

    .line 180
    .line 181
    new-instance v7, Lh/j;

    .line 182
    .line 183
    invoke-direct {v7, v6}, Lh/j;-><init>(Lh/w;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v4, v7, v2}, Lh/y;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    const-string v2, "key"

    .line 190
    .line 191
    new-instance v7, Lh/m;

    .line 192
    .line 193
    invoke-direct {v7, v1}, Lh/m;-><init>(Ljava/security/PublicKey;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v4, v7, v2}, Lh/y;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    const-string v1, "validity"

    .line 200
    .line 201
    invoke-virtual {v4, v3, v1}, Lh/y;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    const-string v1, "issuer"

    .line 205
    .line 206
    new-instance v2, Lh/h;

    .line 207
    .line 208
    invoke-direct {v2, v6}, Lh/h;-><init>(Lh/w;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v4, v2, v1}, Lh/y;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    const-string v1, "extensions"

    .line 215
    .line 216
    invoke-virtual {v4, v5, v1}, Lh/y;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    new-instance v1, Lh/x;

    .line 220
    .line 221
    invoke-direct {v1, v4}, Lh/x;-><init>(Lh/y;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, v0}, Lh/x;->c(Ljava/security/PrivateKey;)V

    .line 225
    .line 226
    .line 227
    iput-object v1, p0, Lfa/r;->e:Ljava/security/cert/Certificate;

    .line 228
    .line 229
    sget-object v2, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 230
    .line 231
    invoke-static {v2, v0}, Lfa/r;->S(Lcom/yunpan/appmanage/base/AppStart;Ljava/security/PrivateKey;)V

    .line 232
    .line 233
    .line 234
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 235
    .line 236
    invoke-static {v0, v1}, Lfa/r;->R(Lcom/yunpan/appmanage/base/AppStart;Lh/x;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .line 238
    .line 239
    :catch_0
    :cond_0
    return-void
.end method

.method public static M(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x5

    .line 7
    if-lt v0, v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    sub-int/2addr v0, v2

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    add-int/lit8 v2, v2, -0x2

    .line 19
    .line 20
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, ":/ "

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    return v1

    .line 33
    :cond_0
    const-string v0, ":"

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    const-string v0, " # "

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    const-string v0, " $ "

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_2

    .line 56
    .line 57
    :cond_1
    return v1

    .line 58
    :cond_2
    const/4 p0, 0x0

    .line 59
    return p0
.end method

.method public static P(Lcom/yunpan/appmanage/base/AppStart;)Ljava/security/cert/Certificate;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    new-instance v2, Ljava/io/File;

    .line 4
    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p0, "/key/cert.pem"

    .line 22
    .line 23
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-nez p0, :cond_0

    .line 38
    .line 39
    const/4 p0, 0x0

    .line 40
    return-object p0

    .line 41
    :cond_0
    new-instance p0, Ljava/io/FileInputStream;

    .line 42
    .line 43
    invoke-direct {p0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 44
    .line 45
    .line 46
    :try_start_0
    const-string v2, "X.509"

    .line 47
    .line 48
    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2, p0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 53
    .line 54
    .line 55
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 57
    .line 58
    .line 59
    return-object v0

    .line 60
    :catchall_0
    move-exception v2

    .line 61
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_1
    move-exception p0

    .line 66
    const-class v3, Ljava/lang/Throwable;

    .line 67
    .line 68
    :try_start_2
    const-string v4, "addSuppressed"

    .line 69
    .line 70
    new-array v5, v1, [Ljava/lang/Class;

    .line 71
    .line 72
    aput-object v3, v5, v0

    .line 73
    .line 74
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    new-array v1, v1, [Ljava/lang/Object;

    .line 79
    .line 80
    aput-object p0, v1, v0

    .line 81
    .line 82
    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 83
    .line 84
    .line 85
    :catch_0
    :goto_0
    throw v2
.end method

.method public static Q(Lcom/yunpan/appmanage/base/AppStart;)Ljava/security/PrivateKey;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    new-instance v2, Ljava/io/File;

    .line 4
    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p0, "/key/private.key"

    .line 22
    .line 23
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-nez p0, :cond_0

    .line 38
    .line 39
    const/4 p0, 0x0

    .line 40
    return-object p0

    .line 41
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 42
    .line 43
    .line 44
    move-result-wide v3

    .line 45
    long-to-int p0, v3

    .line 46
    new-array p0, p0, [B

    .line 47
    .line 48
    new-instance v3, Ljava/io/FileInputStream;

    .line 49
    .line 50
    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 51
    .line 52
    .line 53
    :try_start_0
    invoke-virtual {v3, p0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 57
    .line 58
    .line 59
    const-string v0, "RSA"

    .line 60
    .line 61
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 66
    .line 67
    invoke-direct {v1, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_1
    move-exception v2

    .line 81
    const-class v3, Ljava/lang/Throwable;

    .line 82
    .line 83
    :try_start_2
    const-string v4, "addSuppressed"

    .line 84
    .line 85
    new-array v5, v1, [Ljava/lang/Class;

    .line 86
    .line 87
    aput-object v3, v5, v0

    .line 88
    .line 89
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    new-array v1, v1, [Ljava/lang/Object;

    .line 94
    .line 95
    aput-object v2, v1, v0

    .line 96
    .line 97
    invoke-virtual {v3, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 98
    .line 99
    .line 100
    :catch_0
    :goto_0
    throw p0
.end method

.method public static R(Lcom/yunpan/appmanage/base/AppStart;Lh/x;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "UTF-8"

    .line 4
    .line 5
    new-instance v3, Ljava/io/File;

    .line 6
    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, "/key/cert.pem"

    .line 24
    .line 25
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance p0, La/a;

    .line 36
    .line 37
    invoke-direct {p0}, La/a;-><init>()V

    .line 38
    .line 39
    .line 40
    new-instance v4, Ljava/io/FileOutputStream;

    .line 41
    .line 42
    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 43
    .line 44
    .line 45
    :try_start_0
    const-string v3, "-----BEGIN CERTIFICATE-----"

    .line 46
    .line 47
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v4, v3}, Ljava/io/OutputStream;->write([B)V

    .line 56
    .line 57
    .line 58
    const/16 v3, 0xa

    .line 59
    .line 60
    invoke-virtual {v4, v3}, Ljava/io/OutputStream;->write(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lh/x;->getEncoded()[B

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p0, p1, v4}, La/b;->a([BLjava/io/FileOutputStream;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v3}, Ljava/io/OutputStream;->write(I)V

    .line 71
    .line 72
    .line 73
    const-string p0, "-----END CERTIFICATE-----"

    .line 74
    .line 75
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {v4, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    :try_start_1
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :catchall_1
    move-exception p1

    .line 96
    const-class v2, Ljava/lang/Throwable;

    .line 97
    .line 98
    :try_start_2
    const-string v3, "addSuppressed"

    .line 99
    .line 100
    new-array v4, v1, [Ljava/lang/Class;

    .line 101
    .line 102
    aput-object v2, v4, v0

    .line 103
    .line 104
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    new-array v1, v1, [Ljava/lang/Object;

    .line 109
    .line 110
    aput-object p1, v1, v0

    .line 111
    .line 112
    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 113
    .line 114
    .line 115
    :catch_0
    :goto_0
    throw p0
.end method

.method public static S(Lcom/yunpan/appmanage/base/AppStart;Ljava/security/PrivateKey;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    new-instance v2, Ljava/io/File;

    .line 4
    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p0, "/key/private.key"

    .line 22
    .line 23
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance p0, Ljava/io/FileOutputStream;

    .line 34
    .line 35
    invoke-direct {p0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 36
    .line 37
    .line 38
    :try_start_0
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    :try_start_1
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    const-class v2, Ljava/lang/Throwable;

    .line 56
    .line 57
    :try_start_2
    const-string v3, "addSuppressed"

    .line 58
    .line 59
    new-array v4, v1, [Ljava/lang/Class;

    .line 60
    .line 61
    aput-object v2, v4, v0

    .line 62
    .line 63
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    new-array v1, v1, [Ljava/lang/Object;

    .line 68
    .line 69
    aput-object p0, v1, v0

    .line 70
    .line 71
    invoke-virtual {v2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 72
    .line 73
    .line 74
    :catch_0
    :goto_0
    throw p1
.end method


# virtual methods
.method public final K(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, ":"

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    new-instance v3, Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 7
    .line 8
    invoke-direct {v3}, Lcom/yunpan/appmanage/bean/ShellResultData;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v4, "adb "

    .line 12
    .line 13
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    const/4 v5, -0x1

    .line 18
    if-eqz v4, :cond_2

    .line 19
    .line 20
    const/4 v4, 0x4

    .line 21
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v4, "shell "

    .line 30
    .line 31
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    goto :goto_1

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto/16 :goto_6

    .line 49
    .line 50
    :cond_0
    const-string v4, " "

    .line 51
    .line 52
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-ne v4, v5, :cond_1

    .line 57
    .line 58
    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v5, ":"

    .line 76
    .line 77
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    add-int/2addr v4, v0

    .line 81
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    :goto_0
    iget-object v0, v3, Lcom/yunpan/appmanage/bean/ShellResultData;->lines:Ljava/util/List;

    .line 93
    .line 94
    invoke-virtual {p0, p1}, Lfa/r;->N(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    iput v1, v3, Lcom/yunpan/appmanage/bean/ShellResultData;->code:I

    .line 102
    .line 103
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    return-object v3

    .line 105
    :cond_2
    :goto_1
    :try_start_1
    iget-object v2, p0, Lfa/r;->b:Lio/github/muntashirakon/adb/AdbStream;

    .line 106
    .line 107
    if-eqz v2, :cond_3

    .line 108
    .line 109
    invoke-virtual {v2}, Lio/github/muntashirakon/adb/AdbStream;->isClosed()Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_4

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :catch_0
    move-exception p1

    .line 117
    goto/16 :goto_4

    .line 118
    .line 119
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lfa/r;->O()V

    .line 120
    .line 121
    .line 122
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 123
    .line 124
    .line 125
    move-result-wide v6

    .line 126
    iget-object v2, p0, Lfa/r;->b:Lio/github/muntashirakon/adb/AdbStream;

    .line 127
    .line 128
    invoke-virtual {v2}, Lio/github/muntashirakon/adb/AdbStream;->openOutputStream()Lio/github/muntashirakon/adb/AdbOutputStream;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    iget-object v4, p0, Lfa/r;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 135
    .line 136
    .line 137
    const-string v4, "%1$s\n"

    .line 138
    .line 139
    new-array v8, v0, [Ljava/lang/Object;

    .line 140
    .line 141
    aput-object p1, v8, v1

    .line 142
    .line 143
    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    const-string v4, "UTF-8"

    .line 148
    .line 149
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {v2, p1}, Lio/github/muntashirakon/adb/AdbOutputStream;->write([B)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2}, Lio/github/muntashirakon/adb/AdbOutputStream;->flush()V

    .line 161
    .line 162
    .line 163
    const/16 p1, 0xa

    .line 164
    .line 165
    new-array v4, v0, [B

    .line 166
    .line 167
    aput-byte p1, v4, v1

    .line 168
    .line 169
    invoke-virtual {v2, v4}, Lio/github/muntashirakon/adb/AdbOutputStream;->write([B)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2}, Lio/github/muntashirakon/adb/AdbOutputStream;->flush()V

    .line 173
    .line 174
    .line 175
    const-string v4, ""

    .line 176
    .line 177
    :cond_5
    :goto_3
    iget-object v8, p0, Lfa/r;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 178
    .line 179
    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 180
    .line 181
    const-wide/16 v10, 0x5

    .line 182
    .line 183
    invoke-virtual {v8, v10, v11, v9}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v8

    .line 187
    check-cast v8, Ljava/lang/String;

    .line 188
    .line 189
    if-nez v8, :cond_a

    .line 190
    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 192
    .line 193
    .line 194
    move-result-wide v8

    .line 195
    sub-long/2addr v8, v6

    .line 196
    const-wide/16 v10, 0x3e8

    .line 197
    .line 198
    div-long/2addr v8, v10

    .line 199
    const-wide/16 v10, 0x12c

    .line 200
    .line 201
    cmp-long v12, v8, v10

    .line 202
    .line 203
    if-lez v12, :cond_6

    .line 204
    .line 205
    iget-object p1, v3, Lcom/yunpan/appmanage/bean/ShellResultData;->lines:Ljava/util/List;

    .line 206
    .line 207
    const-string v0, "\u63a5\u6536\u8d85\u65f6"

    .line 208
    .line 209
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    goto/16 :goto_5

    .line 213
    .line 214
    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 215
    .line 216
    .line 217
    move-result v8

    .line 218
    const/16 v9, 0x14

    .line 219
    .line 220
    if-ge v8, v9, :cond_8

    .line 221
    .line 222
    const-string v8, ": "

    .line 223
    .line 224
    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 225
    .line 226
    .line 227
    move-result v8

    .line 228
    if-nez v8, :cond_7

    .line 229
    .line 230
    const-string v8, "> "

    .line 231
    .line 232
    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 233
    .line 234
    .line 235
    move-result v8

    .line 236
    if-eqz v8, :cond_8

    .line 237
    .line 238
    :cond_7
    new-array p1, v0, [B

    .line 239
    .line 240
    const/16 v0, 0x42

    .line 241
    .line 242
    aput-byte v0, p1, v1

    .line 243
    .line 244
    invoke-virtual {v2, p1}, Lio/github/muntashirakon/adb/AdbOutputStream;->write([B)V

    .line 245
    .line 246
    .line 247
    const/4 p1, 0x2

    .line 248
    new-array p1, p1, [B

    .line 249
    .line 250
    fill-array-data p1, :array_0

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2, p1}, Lio/github/muntashirakon/adb/AdbOutputStream;->write([B)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v2}, Lio/github/muntashirakon/adb/AdbOutputStream;->flush()V

    .line 257
    .line 258
    .line 259
    goto/16 :goto_5

    .line 260
    .line 261
    :cond_8
    const-string v8, ":"

    .line 262
    .line 263
    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 264
    .line 265
    .line 266
    move-result v8

    .line 267
    if-eqz v8, :cond_5

    .line 268
    .line 269
    const-string v8, " # "

    .line 270
    .line 271
    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 272
    .line 273
    .line 274
    move-result v8

    .line 275
    if-nez v8, :cond_9

    .line 276
    .line 277
    const-string v8, " $ "

    .line 278
    .line 279
    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 280
    .line 281
    .line 282
    move-result v8

    .line 283
    if-eqz v8, :cond_5

    .line 284
    .line 285
    :cond_9
    const-string v8, "%1$s\n"

    .line 286
    .line 287
    new-array v9, v0, [Ljava/lang/Object;

    .line 288
    .line 289
    const-string v10, "cd"

    .line 290
    .line 291
    aput-object v10, v9, v1

    .line 292
    .line 293
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v8

    .line 297
    const-string v9, "UTF-8"

    .line 298
    .line 299
    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 300
    .line 301
    .line 302
    move-result-object v9

    .line 303
    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 304
    .line 305
    .line 306
    move-result-object v8

    .line 307
    invoke-virtual {v2, v8}, Lio/github/muntashirakon/adb/AdbOutputStream;->write([B)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v2}, Lio/github/muntashirakon/adb/AdbOutputStream;->flush()V

    .line 311
    .line 312
    .line 313
    new-array v8, v0, [B

    .line 314
    .line 315
    aput-byte p1, v8, v1

    .line 316
    .line 317
    invoke-virtual {v2, v8}, Lio/github/muntashirakon/adb/AdbOutputStream;->write([B)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v2}, Lio/github/muntashirakon/adb/AdbOutputStream;->flush()V

    .line 321
    .line 322
    .line 323
    goto/16 :goto_3

    .line 324
    .line 325
    :cond_a
    iget-object v4, v3, Lcom/yunpan/appmanage/bean/ShellResultData;->lines:Ljava/util/List;

    .line 326
    .line 327
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    invoke-static {v8}, Lfa/r;->M(Ljava/lang/String;)Z

    .line 331
    .line 332
    .line 333
    move-result v4

    .line 334
    if-eqz v4, :cond_c

    .line 335
    .line 336
    const-string p1, "|"

    .line 337
    .line 338
    invoke-virtual {v8, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 339
    .line 340
    .line 341
    move-result p1

    .line 342
    if-eq p1, v5, :cond_b

    .line 343
    .line 344
    if-lez p1, :cond_b

    .line 345
    .line 346
    invoke-virtual {v8, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 355
    .line 356
    .line 357
    move-result p1

    .line 358
    iput p1, v3, Lcom/yunpan/appmanage/bean/ShellResultData;->code:I

    .line 359
    .line 360
    goto :goto_5

    .line 361
    :cond_b
    iput v1, v3, Lcom/yunpan/appmanage/bean/ShellResultData;->code:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    .line 363
    goto :goto_5

    .line 364
    :cond_c
    move-object v4, v8

    .line 365
    goto/16 :goto_3

    .line 366
    .line 367
    :goto_4
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 368
    .line 369
    .line 370
    iget-object v0, v3, Lcom/yunpan/appmanage/bean/ShellResultData;->lines:Ljava/util/List;

    .line 371
    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    .line 376
    .line 377
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object p1

    .line 381
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    const-string p1, ""

    .line 385
    .line 386
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    :goto_5
    monitor-exit p0

    .line 397
    return-object v3

    .line 398
    :goto_6
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 399
    goto :goto_8

    .line 400
    :goto_7
    throw p1

    .line 401
    :goto_8
    goto :goto_7

    .line 402
    nop

    .line 403
    :array_0
    .array-data 1
        0x1ct
        0xat
    .end array-data
.end method

.method public final L()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "\u8fde\u63a5adb\u9700\u8981\u914d\u5bf9\u7801"

    .line 4
    .line 5
    const-wide/16 v3, 0xbb8

    .line 6
    .line 7
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    .line 9
    invoke-virtual {p0, v3, v4, v5}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->setTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 10
    .line 11
    .line 12
    sget-object v3, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 13
    .line 14
    iput-object v3, p0, Lfa/r;->a:Lcom/yunpan/appmanage/base/AppStart;

    .line 15
    .line 16
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    invoke-virtual {p0, v3}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->setApi(I)V

    .line 19
    .line 20
    .line 21
    sget-object v3, Lwa/t;->a:Lwa/u;

    .line 22
    .line 23
    iget-boolean v3, v3, Lwa/u;->v:Z

    .line 24
    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    const-string v3, "MyBootTaskAdbPair \u5c1d\u8bd5\u8fde\u63a5\u4e2d"

    .line 28
    .line 29
    invoke-static {v3}, Lwa/w;->b(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    :try_start_0
    sget-object v3, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 33
    .line 34
    iget v3, v3, Lcom/yunpan/appmanage/util/w;->k:I

    .line 35
    .line 36
    invoke-virtual {p0, v3}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->connect(I)Z

    .line 37
    .line 38
    .line 39
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_1

    .line 41
    :catch_0
    const-wide/16 v3, 0xd05

    .line 42
    .line 43
    :try_start_1
    invoke-static {}, Lfa/m;->K()V

    .line 44
    .line 45
    .line 46
    iget-object v5, p0, Lfa/r;->a:Lcom/yunpan/appmanage/base/AppStart;

    .line 47
    .line 48
    invoke-virtual {p0, v5, v3, v4}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->autoConnect(Landroid/content/Context;J)Z

    .line 49
    .line 50
    .line 51
    move-result v0
    :try_end_1
    .catch Lio/github/muntashirakon/adb/AdbPairingRequiredException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 52
    goto :goto_1

    .line 53
    :catch_1
    sget-object v5, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 54
    .line 55
    iget-boolean v6, v5, Lcom/yunpan/appmanage/util/w;->o:Z

    .line 56
    .line 57
    if-eqz v6, :cond_3

    .line 58
    .line 59
    iget-boolean v6, v5, Lcom/yunpan/appmanage/util/w;->z:Z

    .line 60
    .line 61
    if-eqz v6, :cond_1

    .line 62
    .line 63
    new-array v6, v0, [Ljava/lang/String;

    .line 64
    .line 65
    const-string v7, "setprop service.adb.tcp.port 5555"

    .line 66
    .line 67
    aput-object v7, v6, v1

    .line 68
    .line 69
    invoke-static {v6}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    invoke-virtual {v6}, Lv9/e;->l0()Landroidx/room/s;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-virtual {v6}, Landroidx/room/s;->q()Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    const/4 v6, 0x0

    .line 83
    :goto_0
    iget-boolean v5, v5, Lcom/yunpan/appmanage/util/w;->A:Z

    .line 84
    .line 85
    if-eqz v5, :cond_2

    .line 86
    .line 87
    new-array v5, v0, [Ljava/lang/String;

    .line 88
    .line 89
    const-string v6, "setprop persist.adb.tcp.port 5555"

    .line 90
    .line 91
    aput-object v6, v5, v1

    .line 92
    .line 93
    invoke-static {v5}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-virtual {v5}, Lv9/e;->l0()Landroidx/room/s;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-virtual {v5}, Landroidx/room/s;->q()Z

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    :cond_2
    if-eqz v6, :cond_3

    .line 106
    .line 107
    const-wide/16 v5, 0x14d

    .line 108
    .line 109
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 110
    .line 111
    .line 112
    new-array v0, v0, [Ljava/lang/String;

    .line 113
    .line 114
    const-string v5, "setprop ctl.restart adbd"

    .line 115
    .line 116
    aput-object v5, v0, v1

    .line 117
    .line 118
    invoke-static {v0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 123
    .line 124
    .line 125
    const-wide/16 v0, 0x7d0

    .line 126
    .line 127
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 128
    .line 129
    .line 130
    :cond_3
    :try_start_2
    iget-object v0, p0, Lfa/r;->a:Lcom/yunpan/appmanage/base/AppStart;

    .line 131
    .line 132
    invoke-virtual {p0, v0, v3, v4}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->autoConnect(Landroid/content/Context;J)Z

    .line 133
    .line 134
    .line 135
    move-result v0
    :try_end_2
    .catch Lio/github/muntashirakon/adb/AdbPairingRequiredException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 136
    goto :goto_1

    .line 137
    :catch_2
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 138
    .line 139
    iget v0, v0, Lcom/yunpan/appmanage/util/w;->k:I

    .line 140
    .line 141
    invoke-virtual {p0, v0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->connect(I)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    :goto_1
    if-eqz v0, :cond_6

    .line 146
    .line 147
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 148
    .line 149
    iget-boolean v0, v0, Lwa/u;->v:Z

    .line 150
    .line 151
    if-eqz v0, :cond_4

    .line 152
    .line 153
    const-string v0, "MyBootTaskAdbPair \u8fde\u63a5\u6210\u529f"

    .line 154
    .line 155
    invoke-static {v0}, Lwa/w;->b(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    :cond_4
    invoke-virtual {p0}, Lfa/r;->O()V

    .line 159
    .line 160
    .line 161
    sget-object v0, Lfa/a;->a:Lfa/b;

    .line 162
    .line 163
    invoke-virtual {v0}, Lfa/b;->f()Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-nez v0, :cond_5

    .line 168
    .line 169
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 170
    .line 171
    invoke-static {v0}, Lfa/b;->a(Lcom/yunpan/appmanage/base/AppStart;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {p0, v0}, Lfa/r;->K(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 176
    .line 177
    .line 178
    :cond_5
    return-void

    .line 179
    :cond_6
    new-instance v0, Ljava/lang/Exception;

    .line 180
    .line 181
    const-string v1, "adb\u8fde\u63a5\u5931\u8d25"

    .line 182
    .line 183
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw v0

    .line 187
    :catch_3
    new-instance v0, Ljava/lang/Exception;

    .line 188
    .line 189
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw v0

    .line 193
    :catch_4
    new-instance v0, Ljava/lang/Exception;

    .line 194
    .line 195
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw v0
.end method

.method public final N(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, ":"

    .line 4
    .line 5
    :try_start_0
    const-string v2, "adb "

    .line 6
    .line 7
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x4

    .line 14
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p1

    .line 20
    goto/16 :goto_6

    .line 21
    .line 22
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/4 v3, 0x1

    .line 31
    const/4 v4, 0x0

    .line 32
    if-nez v2, :cond_2

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string v2, " "

    .line 39
    .line 40
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const/4 v5, -0x1

    .line 45
    if-ne v2, v5, :cond_1

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    add-int/2addr v2, v3

    .line 68
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    :cond_2
    :goto_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    const-string v1, "remount"

    .line 85
    .line 86
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_3

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    const-string v1, "reboot"

    .line 94
    .line 95
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_4

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_4
    const/4 v3, 0x0

    .line 103
    :goto_2
    if-eqz v3, :cond_5

    .line 104
    .line 105
    const-wide/16 v1, 0xbb8

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_5
    const-wide/16 v1, 0x1f40

    .line 109
    .line 110
    :goto_3
    const-string v3, "install:"

    .line 111
    .line 112
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-eqz v3, :cond_6

    .line 117
    .line 118
    const-string p1, "\u4e0d\u652f\u6301adb install\u6d41\u5f0f\u5b89\u88c5\uff0c\u8bf7\u7528pm install"

    .line 119
    .line 120
    return-object p1

    .line 121
    :cond_6
    invoke-virtual {p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->getAdbConnection()Lio/github/muntashirakon/adb/AdbConnection;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-virtual {v3, p1}, Lio/github/muntashirakon/adb/AdbConnection;->open(Ljava/lang/String;)Lio/github/muntashirakon/adb/AdbStream;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    new-instance v3, Ljava/io/BufferedReader;

    .line 130
    .line 131
    new-instance v4, Ljava/io/InputStreamReader;

    .line 132
    .line 133
    invoke-virtual {p1}, Lio/github/muntashirakon/adb/AdbStream;->openInputStream()Lio/github/muntashirakon/adb/AdbInputStream;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 138
    .line 139
    .line 140
    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 141
    .line 142
    .line 143
    new-instance v4, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 144
    .line 145
    invoke-direct {v4}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 146
    .line 147
    .line 148
    new-instance v5, Lfg/b;

    .line 149
    .line 150
    new-instance v6, Lfa/k;

    .line 151
    .line 152
    const/4 v7, 0x1

    .line 153
    invoke-direct {v6, p1, v3, v4, v7}, Lfa/k;-><init>(Lio/github/muntashirakon/adb/AdbStream;Ljava/io/BufferedReader;Ljava/util/concurrent/LinkedBlockingQueue;I)V

    .line 154
    .line 155
    .line 156
    const/4 p1, 0x1

    .line 157
    invoke-direct {v5, v6, p1}, Lfg/b;-><init>(Ljava/lang/Runnable;I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 161
    .line 162
    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 164
    .line 165
    .line 166
    move-result-wide v6

    .line 167
    move-object p1, v0

    .line 168
    :cond_7
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 169
    .line 170
    const-wide/16 v8, 0x29a

    .line 171
    .line 172
    invoke-virtual {v4, v8, v9, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    check-cast v3, Ljava/lang/String;

    .line 177
    .line 178
    if-eqz v3, :cond_8

    .line 179
    .line 180
    new-instance v8, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string p1, "\n"

    .line 192
    .line 193
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    goto :goto_4

    .line 201
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 202
    .line 203
    .line 204
    move-result v8

    .line 205
    if-eqz v8, :cond_a

    .line 206
    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 208
    .line 209
    .line 210
    move-result-wide v8

    .line 211
    sub-long/2addr v8, v6

    .line 212
    cmp-long v3, v8, v1

    .line 213
    .line 214
    if-lez v3, :cond_9

    .line 215
    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string p1, "\u6267\u884c\u547d\u4ee4\u8d85\u65f6\n"

    .line 225
    .line 226
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    goto :goto_5

    .line 234
    :cond_9
    const-string v3, "\u7ee7\u7eed"

    .line 235
    .line 236
    :cond_a
    :goto_4
    if-nez v3, :cond_7

    .line 237
    .line 238
    :goto_5
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 239
    .line 240
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .line 245
    .line 246
    return-object p1

    .line 247
    :goto_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 248
    .line 249
    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .line 254
    .line 255
    invoke-static {p1, v1, v0}, Lda/b;->b(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    return-object p1
.end method

.method public final O()V
    .locals 7

    .line 1
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/yunpan/appmanage/util/w;->l:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const-string v3, "\'"

    .line 11
    .line 12
    const-string v4, "\""

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget-object v1, v0, Lcom/yunpan/appmanage/util/w;->l:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v5, " "

    .line 23
    .line 24
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p0, v2, v1}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->openStream(I[Ljava/lang/String;)Lio/github/muntashirakon/adb/AdbStream;

    .line 29
    .line 30
    .line 31
    const-wide/16 v5, 0x14d

    .line 32
    .line 33
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 34
    .line 35
    .line 36
    :cond_0
    const/4 v1, 0x0

    .line 37
    new-array v1, v1, [Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p0, v2, v1}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->openStream(I[Ljava/lang/String;)Lio/github/muntashirakon/adb/AdbStream;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iput-object v1, p0, Lfa/r;->b:Lio/github/muntashirakon/adb/AdbStream;

    .line 44
    .line 45
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lfa/r;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 51
    .line 52
    new-instance v1, Lfg/b;

    .line 53
    .line 54
    new-instance v2, La2/h;

    .line 55
    .line 56
    const/16 v5, 0x12

    .line 57
    .line 58
    invoke-direct {v2, v5, p0}, La2/h;-><init>(ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    const/4 v5, 0x1

    .line 62
    invoke-direct {v1, v2, v5}, Lfg/b;-><init>(Ljava/lang/Runnable;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lfa/r;->b:Lio/github/muntashirakon/adb/AdbStream;

    .line 69
    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    invoke-virtual {v1}, Lio/github/muntashirakon/adb/AdbStream;->isClosed()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_3

    .line 77
    .line 78
    iget-object v1, v0, Lcom/yunpan/appmanage/util/w;->l:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_1

    .line 85
    .line 86
    const-string v0, "adb36987"

    .line 87
    .line 88
    invoke-virtual {p0, v0}, Lfa/r;->K(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    goto :goto_0

    .line 93
    :cond_1
    iget-object v0, v0, Lcom/yunpan/appmanage/util/w;->l:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {p0, v0}, Lfa/r;->K(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    :goto_0
    invoke-virtual {v0}, Lcom/yunpan/appmanage/bean/ShellResultData;->getListStr()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const-string v1, "tream open actively rejected"

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-nez v0, :cond_2

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_2
    iget-object v0, p0, Lfa/r;->b:Lio/github/muntashirakon/adb/AdbStream;

    .line 121
    .line 122
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/AdbStream;->close()V

    .line 123
    .line 124
    .line 125
    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lfa/r;->b:Lio/github/muntashirakon/adb/AdbStream;

    .line 127
    .line 128
    new-instance v0, Ljava/lang/Exception;

    .line 129
    .line 130
    const-string v1, "adb shell \u9700\u8981\u5bc6\u7801"

    .line 131
    .line 132
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw v0

    .line 136
    :cond_3
    :goto_1
    return-void
.end method

.method public final getCertificate()Ljava/security/cert/Certificate;
    .locals 1

    .line 1
    iget-object v0, p0, Lfa/r;->e:Ljava/security/cert/Certificate;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDeviceName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lfa/r;->a:Lcom/yunpan/appmanage/base/AppStart;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f13002f

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public final getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .line 1
    iget-object v0, p0, Lfa/r;->d:Ljava/security/PrivateKey;

    .line 2
    .line 3
    return-object v0
.end method
