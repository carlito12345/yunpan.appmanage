.class public final Lfa/m;
.super Lio/github/muntashirakon/adb/AbsAdbConnectionManager;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lio/github/muntashirakon/adb/AdbStream;

.field public c:Z

.field public d:Ljava/util/concurrent/LinkedBlockingQueue;

.field public final e:Ljava/security/PrivateKey;

.field public final f:Ljava/security/cert/Certificate;


# direct methods
.method public constructor <init>()V
    .locals 12

    .line 1
    invoke-direct {p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lfa/m;->c:Z

    .line 6
    .line 7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->setApi(I)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 13
    .line 14
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 15
    .line 16
    iget-object v2, v1, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 17
    .line 18
    invoke-static {v2}, Lfa/m;->S(Landroid/content/ContextWrapper;)Ljava/security/PrivateKey;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iput-object v2, p0, Lfa/m;->e:Ljava/security/PrivateKey;

    .line 23
    .line 24
    iget-object v3, v1, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 25
    .line 26
    invoke-static {v3}, Lfa/m;->R(Landroid/content/ContextWrapper;)Ljava/security/cert/Certificate;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    iput-object v3, p0, Lfa/m;->f:Ljava/security/cert/Certificate;

    .line 31
    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    const-string v2, "RSA"

    .line 35
    .line 36
    invoke-static {v2}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const-string v3, "SHA1PRNG"

    .line 41
    .line 42
    invoke-static {v3}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const/16 v4, 0x800

    .line 47
    .line 48
    invoke-virtual {v2, v4, v3}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    iput-object v2, p0, Lfa/m;->e:Ljava/security/PrivateKey;

    .line 64
    .line 65
    const-string v4, "SHA512withRSA"

    .line 66
    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 68
    .line 69
    .line 70
    move-result-wide v5

    .line 71
    const-wide/32 v7, 0x5265c00

    .line 72
    .line 73
    .line 74
    add-long/2addr v5, v7

    .line 75
    new-instance v7, Lh/g;

    .line 76
    .line 77
    invoke-direct {v7}, Lh/g;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v8, "SubjectKeyIdentifier"

    .line 81
    .line 82
    new-instance v9, Lh/v;

    .line 83
    .line 84
    new-instance v10, Lh/o;

    .line 85
    .line 86
    invoke-direct {v10, v3}, Lh/o;-><init>(Ljava/security/PublicKey;)V

    .line 87
    .line 88
    .line 89
    iget-object v10, v10, Lh/o;->a:[B

    .line 90
    .line 91
    invoke-virtual {v10}, [B->clone()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v10

    .line 95
    check-cast v10, [B

    .line 96
    .line 97
    invoke-direct {v9, v10}, Lh/v;-><init>([B)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v7, v9, v8}, Lh/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    new-instance v8, Lh/w;

    .line 104
    .line 105
    invoke-direct {v8}, Lh/w;-><init>()V

    .line 106
    .line 107
    .line 108
    new-instance v9, Ljava/util/Date;

    .line 109
    .line 110
    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 111
    .line 112
    .line 113
    new-instance v10, Ljava/util/Date;

    .line 114
    .line 115
    invoke-direct {v10, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 116
    .line 117
    .line 118
    const-string v5, "PrivateKeyUsage"

    .line 119
    .line 120
    new-instance v6, Lh/s;

    .line 121
    .line 122
    invoke-direct {v6, v9, v10}, Lh/s;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v7, v6, v5}, Lh/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    new-instance v5, Lh/k;

    .line 129
    .line 130
    invoke-direct {v5, v9, v10}, Lh/k;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    .line 131
    .line 132
    .line 133
    new-instance v6, Lh/y;

    .line 134
    .line 135
    invoke-direct {v6}, Lh/y;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v9, "version"

    .line 139
    .line 140
    new-instance v10, Lh/l;

    .line 141
    .line 142
    invoke-direct {v10, v0}, Lh/l;-><init>(I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6, v10, v9}, Lh/y;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const-string v0, "serialNumber"

    .line 149
    .line 150
    new-instance v9, Lh/i;

    .line 151
    .line 152
    new-instance v10, Ljava/util/Random;

    .line 153
    .line 154
    invoke-direct {v10}, Ljava/util/Random;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v10}, Ljava/util/Random;->nextInt()I

    .line 158
    .line 159
    .line 160
    move-result v10

    .line 161
    const v11, 0x7fffffff

    .line 162
    .line 163
    .line 164
    and-int/2addr v10, v11

    .line 165
    invoke-direct {v9, v10}, Lh/i;-><init>(I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v6, v9, v0}, Lh/y;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    const-string v0, "algorithmID"

    .line 172
    .line 173
    new-instance v9, Lh/f;

    .line 174
    .line 175
    invoke-static {v4}, Lh/d;->c(Ljava/lang/String;)Lh/d;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    invoke-direct {v9, v4}, Lh/f;-><init>(Lh/d;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v6, v9, v0}, Lh/y;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    const-string v0, "subject"

    .line 186
    .line 187
    new-instance v4, Lh/j;

    .line 188
    .line 189
    invoke-direct {v4, v8}, Lh/j;-><init>(Lh/w;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v6, v4, v0}, Lh/y;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    const-string v0, "key"

    .line 196
    .line 197
    new-instance v4, Lh/m;

    .line 198
    .line 199
    invoke-direct {v4, v3}, Lh/m;-><init>(Ljava/security/PublicKey;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v6, v4, v0}, Lh/y;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    const-string v0, "validity"

    .line 206
    .line 207
    invoke-virtual {v6, v5, v0}, Lh/y;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    const-string v0, "issuer"

    .line 211
    .line 212
    new-instance v3, Lh/h;

    .line 213
    .line 214
    invoke-direct {v3, v8}, Lh/h;-><init>(Lh/w;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v6, v3, v0}, Lh/y;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    const-string v0, "extensions"

    .line 221
    .line 222
    invoke-virtual {v6, v7, v0}, Lh/y;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    new-instance v0, Lh/x;

    .line 226
    .line 227
    invoke-direct {v0, v6}, Lh/x;-><init>(Lh/y;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v2}, Lh/x;->c(Ljava/security/PrivateKey;)V

    .line 231
    .line 232
    .line 233
    iput-object v0, p0, Lfa/m;->f:Ljava/security/cert/Certificate;

    .line 234
    .line 235
    iget-object v3, v1, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 236
    .line 237
    invoke-static {v3, v2}, Lfa/m;->X(Landroid/content/ContextWrapper;Ljava/security/PrivateKey;)V

    .line 238
    .line 239
    .line 240
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 241
    .line 242
    invoke-static {v1, v0}, Lfa/m;->W(Landroid/content/ContextWrapper;Lh/x;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .line 244
    .line 245
    :catch_0
    :cond_0
    return-void
.end method

.method public static K()V
    .locals 8

    .line 1
    const-string v0, "adb_enabled"

    .line 2
    .line 3
    const-string v1, "adb_wifi_enabled"

    .line 4
    .line 5
    const-string v2, "adb_wifi_enabled\uff1a"

    .line 6
    .line 7
    sget-object v3, Lwa/t;->a:Lwa/u;

    .line 8
    .line 9
    iget-boolean v4, v3, Lwa/u;->v:Z

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v5, "\u662f\u5426\u81ea\u52a8\u52fe\u9009\u65e0\u7ebf\u8c03\u8bd5\uff1a"

    .line 16
    .line 17
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object v5, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 21
    .line 22
    iget-boolean v5, v5, Lcom/yunpan/appmanage/util/w;->B:Z

    .line 23
    .line 24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-static {v4}, Lwa/w;->b(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    sget-object v4, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 35
    .line 36
    iget-boolean v4, v4, Lcom/yunpan/appmanage/util/w;->B:Z

    .line 37
    .line 38
    if-eqz v4, :cond_3

    .line 39
    .line 40
    :try_start_0
    sget-object v4, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 41
    .line 42
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-static {v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    const/4 v5, 0x1

    .line 51
    if-eq v4, v5, :cond_1

    .line 52
    .line 53
    sget-object v4, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 54
    .line 55
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-static {v4, v0, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    const-wide/16 v6, 0x10c

    .line 66
    .line 67
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 68
    .line 69
    .line 70
    :cond_1
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eq v0, v5, :cond_2

    .line 81
    .line 82
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_2

    .line 93
    .line 94
    const-wide/16 v4, 0x29c

    .line 95
    .line 96
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 97
    .line 98
    .line 99
    :cond_2
    iget-boolean v0, v3, Lwa/u;->v:Z

    .line 100
    .line 101
    if-eqz v0, :cond_3

    .line 102
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sget-object v2, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 109
    .line 110
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-static {v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-static {v0}, Lwa/w;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .line 127
    .line 128
    :catch_0
    :cond_3
    return-void
.end method

.method public static N(Ljava/lang/String;)Z
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

.method public static R(Landroid/content/ContextWrapper;)Ljava/security/cert/Certificate;
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

.method public static S(Landroid/content/ContextWrapper;)Ljava/security/PrivateKey;
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

.method public static W(Landroid/content/ContextWrapper;Lh/x;)V
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

.method public static X(Landroid/content/ContextWrapper;Ljava/security/PrivateKey;)V
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
.method public final L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;
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
    invoke-virtual {p0, p1}, Lfa/m;->P(Ljava/lang/String;)Ljava/lang/String;

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
    iget-object v2, p0, Lfa/m;->b:Lio/github/muntashirakon/adb/AdbStream;

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
    invoke-virtual {p0}, Lfa/m;->Q()V

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
    iget-object v2, p0, Lfa/m;->b:Lio/github/muntashirakon/adb/AdbStream;

    .line 127
    .line 128
    invoke-virtual {v2}, Lio/github/muntashirakon/adb/AdbStream;->openOutputStream()Lio/github/muntashirakon/adb/AdbOutputStream;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    iget-object v4, p0, Lfa/m;->d:Ljava/util/concurrent/LinkedBlockingQueue;

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
    iget-object v8, p0, Lfa/m;->d:Ljava/util/concurrent/LinkedBlockingQueue;

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
    invoke-static {v8}, Lfa/m;->N(Ljava/lang/String;)Z

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

.method public final M(Landroid/content/Context;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v3, 0x0

    .line 4
    const/4 v4, 0x1

    .line 5
    const-string v5, "\u8fde\u63a5adb\u9700\u8981\u914d\u5bf9\u7801"

    .line 6
    .line 7
    const-string v6, "\u9700\u8981\u914d\u5bf9\u7801"

    .line 8
    .line 9
    const-string v7, "setprop ctl.restart adbd"

    .line 10
    .line 11
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 12
    .line 13
    const-wide/16 v8, 0xd05

    .line 14
    .line 15
    invoke-virtual {v1, v8, v9, v0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->setTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 16
    .line 17
    .line 18
    move-object/from16 v0, p1

    .line 19
    .line 20
    iput-object v0, v1, Lfa/m;->a:Landroid/content/Context;

    .line 21
    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->setApi(I)V

    .line 25
    .line 26
    .line 27
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 28
    .line 29
    iget-boolean v0, v0, Lwa/u;->v:Z

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const-string v0, "AdbPair\u5c1d\u8bd5\u8fde\u63a5\u4e2d"

    .line 34
    .line 35
    invoke-static {v0}, Lwa/w;->b(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    const-wide/16 v10, 0x7d0

    .line 39
    .line 40
    :try_start_0
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 41
    .line 42
    iget v0, v0, Lcom/yunpan/appmanage/util/w;->k:I

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->connect(I)Z

    .line 45
    .line 46
    .line 47
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto/16 :goto_5

    .line 49
    .line 50
    :catch_0
    :try_start_1
    invoke-static {}, Lfa/m;->K()V

    .line 51
    .line 52
    .line 53
    iget-object v0, v1, Lfa/m;->a:Landroid/content/Context;

    .line 54
    .line 55
    invoke-virtual {v1, v0, v8, v9}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->autoConnect(Landroid/content/Context;J)Z

    .line 56
    .line 57
    .line 58
    move-result v0
    :try_end_1
    .catch Lio/github/muntashirakon/adb/AdbPairingRequiredException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 59
    goto/16 :goto_5

    .line 60
    .line 61
    :catch_1
    move-exception v0

    .line 62
    move-object v8, v0

    .line 63
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 64
    .line 65
    iget-boolean v0, v0, Lwa/u;->v:Z

    .line 66
    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v9, "\u8fde\u63a5\u5931\u8d25\uff0c\u91cd\u65b0\u5c1d\u8bd51   "

    .line 72
    .line 73
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v0}, Lwa/w;->b(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_1
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 91
    .line 92
    iget-boolean v9, v0, Lcom/yunpan/appmanage/util/w;->o:Z

    .line 93
    .line 94
    const-wide/16 v12, 0x14d

    .line 95
    .line 96
    const-string v14, "setprop persist.adb.tcp.port 5555"

    .line 97
    .line 98
    const-string v15, "setprop service.adb.tcp.port 5555"

    .line 99
    .line 100
    if-eqz v9, :cond_4

    .line 101
    .line 102
    iget-boolean v9, v0, Lcom/yunpan/appmanage/util/w;->z:Z

    .line 103
    .line 104
    if-eqz v9, :cond_2

    .line 105
    .line 106
    new-array v9, v4, [Ljava/lang/String;

    .line 107
    .line 108
    aput-object v15, v9, v3

    .line 109
    .line 110
    invoke-static {v9}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    invoke-virtual {v9}, Lv9/e;->l0()Landroidx/room/s;

    .line 115
    .line 116
    .line 117
    move-result-object v9

    .line 118
    invoke-virtual {v9}, Landroidx/room/s;->q()Z

    .line 119
    .line 120
    .line 121
    move-result v9

    .line 122
    goto :goto_0

    .line 123
    :cond_2
    const/4 v9, 0x0

    .line 124
    :goto_0
    iget-boolean v2, v0, Lcom/yunpan/appmanage/util/w;->A:Z

    .line 125
    .line 126
    if-eqz v2, :cond_3

    .line 127
    .line 128
    new-array v2, v4, [Ljava/lang/String;

    .line 129
    .line 130
    aput-object v14, v2, v3

    .line 131
    .line 132
    invoke-static {v2}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v2}, Lv9/e;->l0()Landroidx/room/s;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v2}, Landroidx/room/s;->q()Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-eqz v2, :cond_3

    .line 145
    .line 146
    const/4 v9, 0x1

    .line 147
    :cond_3
    if-eqz v9, :cond_4

    .line 148
    .line 149
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    .line 150
    .line 151
    .line 152
    new-array v2, v4, [Ljava/lang/String;

    .line 153
    .line 154
    aput-object v7, v2, v3

    .line 155
    .line 156
    invoke-static {v2}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v2}, Lv9/e;->l0()Landroidx/room/s;

    .line 161
    .line 162
    .line 163
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 164
    .line 165
    .line 166
    :cond_4
    :try_start_2
    iget v0, v0, Lcom/yunpan/appmanage/util/w;->k:I

    .line 167
    .line 168
    invoke-virtual {v1, v0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->connect(I)Z

    .line 169
    .line 170
    .line 171
    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 172
    goto/16 :goto_5

    .line 173
    .line 174
    :catch_2
    :try_start_3
    iget-object v0, v1, Lfa/m;->a:Landroid/content/Context;

    .line 175
    .line 176
    const-wide/16 v10, 0xbb8

    .line 177
    .line 178
    invoke-virtual {v1, v0, v10, v11}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->autoConnect(Landroid/content/Context;J)Z

    .line 179
    .line 180
    .line 181
    move-result v0
    :try_end_3
    .catch Lio/github/muntashirakon/adb/AdbPairingRequiredException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 182
    goto/16 :goto_5

    .line 183
    .line 184
    :catch_3
    move-exception v0

    .line 185
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 186
    .line 187
    iget-boolean v2, v2, Lwa/u;->v:Z

    .line 188
    .line 189
    if-eqz v2, :cond_5

    .line 190
    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    const-string v5, "\u8fde\u63a5\u5931\u8d25\uff0c\u91cd\u65b0\u5c1d\u8bd52   "

    .line 194
    .line 195
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-static {v2}, Lwa/w;->b(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    :cond_5
    :try_start_4
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 213
    .line 214
    iget v5, v2, Lcom/yunpan/appmanage/util/w;->k:I

    .line 215
    .line 216
    const/16 v6, 0x15b3

    .line 217
    .line 218
    if-eq v5, v6, :cond_7

    .line 219
    .line 220
    invoke-virtual {v1, v6}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->connect(I)Z

    .line 221
    .line 222
    .line 223
    move-result v5

    .line 224
    if-eqz v5, :cond_6

    .line 225
    .line 226
    invoke-virtual {v2, v6}, Lcom/yunpan/appmanage/util/w;->n(I)V

    .line 227
    .line 228
    .line 229
    :cond_6
    :goto_1
    move v0, v5

    .line 230
    goto :goto_2

    .line 231
    :cond_7
    const/16 v9, 0x15b5

    .line 232
    .line 233
    if-eq v5, v9, :cond_8

    .line 234
    .line 235
    invoke-virtual {v1, v9}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->connect(I)Z

    .line 236
    .line 237
    .line 238
    move-result v5

    .line 239
    if-eqz v5, :cond_6

    .line 240
    .line 241
    invoke-virtual {v2, v9}, Lcom/yunpan/appmanage/util/w;->n(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    .line 242
    .line 243
    .line 244
    goto :goto_1

    .line 245
    :cond_8
    const/4 v0, 0x0

    .line 246
    :goto_2
    if-nez v0, :cond_f

    .line 247
    .line 248
    iget-boolean v0, v2, Lcom/yunpan/appmanage/util/w;->z:Z

    .line 249
    .line 250
    if-nez v0, :cond_9

    .line 251
    .line 252
    iget-boolean v5, v2, Lcom/yunpan/appmanage/util/w;->A:Z

    .line 253
    .line 254
    if-eqz v5, :cond_e

    .line 255
    .line 256
    :cond_9
    iget-boolean v5, v2, Lcom/yunpan/appmanage/util/w;->o:Z

    .line 257
    .line 258
    if-eqz v5, :cond_e

    .line 259
    .line 260
    if-eqz v0, :cond_b

    .line 261
    .line 262
    new-array v0, v4, [Ljava/lang/String;

    .line 263
    .line 264
    aput-object v15, v0, v3

    .line 265
    .line 266
    invoke-static {v0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {v0}, Landroidx/room/s;->q()Z

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    if-eqz v0, :cond_a

    .line 279
    .line 280
    goto :goto_3

    .line 281
    :cond_a
    throw v8

    .line 282
    :cond_b
    :goto_3
    iget-boolean v0, v2, Lcom/yunpan/appmanage/util/w;->A:Z

    .line 283
    .line 284
    if-eqz v0, :cond_d

    .line 285
    .line 286
    new-array v0, v4, [Ljava/lang/String;

    .line 287
    .line 288
    aput-object v14, v0, v3

    .line 289
    .line 290
    invoke-static {v0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-virtual {v0}, Landroidx/room/s;->q()Z

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    if-eqz v0, :cond_c

    .line 303
    .line 304
    goto :goto_4

    .line 305
    :cond_c
    throw v8

    .line 306
    :cond_d
    :goto_4
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    .line 307
    .line 308
    .line 309
    new-array v0, v4, [Ljava/lang/String;

    .line 310
    .line 311
    aput-object v7, v0, v3

    .line 312
    .line 313
    invoke-static {v0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 318
    .line 319
    .line 320
    const-wide/16 v8, 0x7d0

    .line 321
    .line 322
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1, v6}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->connect(I)Z

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    if-eqz v0, :cond_f

    .line 330
    .line 331
    invoke-virtual {v2, v6}, Lcom/yunpan/appmanage/util/w;->n(I)V

    .line 332
    .line 333
    .line 334
    goto :goto_5

    .line 335
    :cond_e
    throw v8

    .line 336
    :cond_f
    :goto_5
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 337
    .line 338
    iget-boolean v5, v2, Lwa/u;->v:Z

    .line 339
    .line 340
    if-eqz v5, :cond_10

    .line 341
    .line 342
    new-instance v5, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    const-string v6, "\u8fde\u63a5\u662f\u5426\u6210\u529f\uff1a"

    .line 345
    .line 346
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v5

    .line 356
    invoke-static {v5}, Lwa/w;->b(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    :cond_10
    if-eqz v0, :cond_3a

    .line 360
    .line 361
    iget-boolean v0, v2, Lwa/u;->v:Z

    .line 362
    .line 363
    if-eqz v0, :cond_11

    .line 364
    .line 365
    const-string v0, "\u8fde\u63a5\u5b8c\u6210"

    .line 366
    .line 367
    invoke-static {v0}, Lwa/w;->b(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lfa/m;->Q()V

    .line 371
    .line 372
    .line 373
    sget-object v0, Lfa/a;->a:Lfa/b;

    .line 374
    .line 375
    invoke-virtual {v0}, Lfa/b;->f()Z

    .line 376
    .line 377
    .line 378
    move-result v2

    .line 379
    if-nez v2, :cond_12

    .line 380
    .line 381
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 382
    .line 383
    invoke-static {v0}, Lfa/b;->a(Lcom/yunpan/appmanage/base/AppStart;)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    invoke-virtual {v1, v0}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 388
    .line 389
    .line 390
    goto :goto_6

    .line 391
    :cond_12
    iget-boolean v2, v1, Lfa/m;->c:Z

    .line 392
    .line 393
    if-eqz v2, :cond_13

    .line 394
    .line 395
    iget-object v0, v0, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 396
    .line 397
    invoke-interface {v0}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->getUid()I

    .line 398
    .line 399
    .line 400
    move-result v0

    .line 401
    if-eqz v0, :cond_13

    .line 402
    .line 403
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 404
    .line 405
    invoke-static {v0}, Lfa/b;->a(Lcom/yunpan/appmanage/base/AppStart;)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-virtual {v1, v0}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 410
    .line 411
    .line 412
    :cond_13
    :goto_6
    const-string v0, "/emulated"

    .line 413
    .line 414
    const-string v2, "touch "

    .line 415
    .line 416
    const-string v5, "/.111111222222"

    .line 417
    .line 418
    const-string v6, "/mnt/user/"

    .line 419
    .line 420
    sget-object v8, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 421
    .line 422
    iget v9, v8, Lcom/yunpan/appmanage/util/w;->O:I

    .line 423
    .line 424
    if-ne v9, v4, :cond_16

    .line 425
    .line 426
    const-string v8, "root:"

    .line 427
    .line 428
    invoke-virtual {v1, v8}, Lfa/m;->P(Ljava/lang/String;)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v8

    .line 432
    const-string v9, "adbd cannot run as root in production builds"

    .line 433
    .line 434
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 435
    .line 436
    .line 437
    move-result v8

    .line 438
    if-eqz v8, :cond_15

    .line 439
    .line 440
    const-string v8, "setprop ro.debuggable 1"

    .line 441
    .line 442
    new-array v9, v4, [Ljava/lang/String;

    .line 443
    .line 444
    aput-object v8, v9, v3

    .line 445
    .line 446
    invoke-static {v9}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 447
    .line 448
    .line 449
    move-result-object v9

    .line 450
    invoke-virtual {v9}, Lv9/e;->l0()Landroidx/room/s;

    .line 451
    .line 452
    .line 453
    const-string v9, "setprop service.adb.root 1"

    .line 454
    .line 455
    new-array v10, v4, [Ljava/lang/String;

    .line 456
    .line 457
    aput-object v9, v10, v3

    .line 458
    .line 459
    invoke-static {v10}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 460
    .line 461
    .line 462
    move-result-object v10

    .line 463
    invoke-virtual {v10}, Lv9/e;->l0()Landroidx/room/s;

    .line 464
    .line 465
    .line 466
    move-result-object v10

    .line 467
    invoke-virtual {v10}, Landroidx/room/s;->q()Z

    .line 468
    .line 469
    .line 470
    move-result v10

    .line 471
    if-eqz v10, :cond_14

    .line 472
    .line 473
    new-array v8, v4, [Ljava/lang/String;

    .line 474
    .line 475
    aput-object v7, v8, v3

    .line 476
    .line 477
    invoke-static {v8}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 478
    .line 479
    .line 480
    move-result-object v7

    .line 481
    invoke-virtual {v7}, Lv9/e;->l0()Landroidx/room/s;

    .line 482
    .line 483
    .line 484
    goto :goto_7

    .line 485
    :cond_14
    sget-object v10, Lfa/b0;->a:La2/w0;

    .line 486
    .line 487
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 488
    .line 489
    .line 490
    const-wide/16 v10, 0x7d0

    .line 491
    .line 492
    invoke-static {v10, v11, v8}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 493
    .line 494
    .line 495
    invoke-static {v10, v11, v9}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 496
    .line 497
    .line 498
    move-result-object v8

    .line 499
    iget v8, v8, Lfa/a0;->a:I

    .line 500
    .line 501
    if-nez v8, :cond_15

    .line 502
    .line 503
    invoke-static {v10, v11, v7}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 504
    .line 505
    .line 506
    :cond_15
    :goto_7
    const-wide/16 v7, 0x3e8

    .line 507
    .line 508
    :try_start_5
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 509
    .line 510
    .line 511
    goto :goto_8

    .line 512
    :catch_4
    nop

    .line 513
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 514
    .line 515
    .line 516
    move-result v7

    .line 517
    if-nez v7, :cond_17

    .line 518
    .line 519
    iget-object v0, v1, Lfa/m;->a:Landroid/content/Context;

    .line 520
    .line 521
    invoke-virtual {v1, v0}, Lfa/m;->M(Landroid/content/Context;)V

    .line 522
    .line 523
    .line 524
    goto/16 :goto_10

    .line 525
    .line 526
    :cond_16
    const/4 v7, 0x2

    .line 527
    if-ne v9, v7, :cond_17

    .line 528
    .line 529
    iget-object v7, v8, Lcom/yunpan/appmanage/util/w;->b0:Ljava/lang/String;

    .line 530
    .line 531
    invoke-virtual {v1, v7}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 532
    .line 533
    .line 534
    :cond_17
    sget-object v7, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 535
    .line 536
    iget v8, v7, Lcom/yunpan/appmanage/util/w;->P:I

    .line 537
    .line 538
    if-lez v8, :cond_18

    .line 539
    .line 540
    const-string v8, "setenforce 0"

    .line 541
    .line 542
    invoke-virtual {v1, v8}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 543
    .line 544
    .line 545
    const-string v8, "setprop ro.adb.secure 0"

    .line 546
    .line 547
    invoke-virtual {v1, v8}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 548
    .line 549
    .line 550
    const-string v8, "setprop ro.secure 0"

    .line 551
    .line 552
    invoke-virtual {v1, v8}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 553
    .line 554
    .line 555
    :cond_18
    const-string v8, "id"

    .line 556
    .line 557
    invoke-virtual {v1, v8}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 558
    .line 559
    .line 560
    move-result-object v8

    .line 561
    invoke-virtual {v8}, Lcom/yunpan/appmanage/bean/ShellResultData;->getListStr()Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    invoke-virtual {v8}, Lcom/yunpan/appmanage/bean/ShellResultData;->getListStr()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v8

    .line 568
    const-string v9, "uid=0("

    .line 569
    .line 570
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 571
    .line 572
    .line 573
    move-result v8

    .line 574
    const-string v9, " "

    .line 575
    .line 576
    const-string v10, "/"

    .line 577
    .line 578
    if-eqz v8, :cond_25

    .line 579
    .line 580
    iput-boolean v4, v1, Lfa/m;->c:Z

    .line 581
    .line 582
    const-string v8, "touch /system/bin/111222"

    .line 583
    .line 584
    invoke-virtual {v1, v8}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 585
    .line 586
    .line 587
    move-result-object v11

    .line 588
    iget v12, v7, Lcom/yunpan/appmanage/util/w;->P:I

    .line 589
    .line 590
    if-ne v12, v4, :cond_19

    .line 591
    .line 592
    const-string v11, "adb remount"

    .line 593
    .line 594
    invoke-virtual {v1, v11}, Lfa/m;->O(Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    invoke-virtual {v1, v8}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 598
    .line 599
    .line 600
    move-result-object v11

    .line 601
    :cond_19
    iget v12, v11, Lcom/yunpan/appmanage/bean/ShellResultData;->code:I

    .line 602
    .line 603
    if-eqz v12, :cond_23

    .line 604
    .line 605
    iget v7, v7, Lcom/yunpan/appmanage/util/w;->P:I

    .line 606
    .line 607
    if-lez v7, :cond_23

    .line 608
    .line 609
    const-string v7, "mount"

    .line 610
    .line 611
    invoke-virtual {v1, v7}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 612
    .line 613
    .line 614
    move-result-object v7

    .line 615
    iget-object v7, v7, Lcom/yunpan/appmanage/bean/ShellResultData;->lines:Ljava/util/List;

    .line 616
    .line 617
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 618
    .line 619
    .line 620
    move-result-object v7

    .line 621
    :cond_1a
    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 622
    .line 623
    .line 624
    move-result v11

    .line 625
    if-eqz v11, :cond_22

    .line 626
    .line 627
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    move-result-object v11

    .line 631
    check-cast v11, Ljava/lang/String;

    .line 632
    .line 633
    const-string v12, " /system "

    .line 634
    .line 635
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 636
    .line 637
    .line 638
    move-result v12

    .line 639
    if-eqz v12, :cond_1b

    .line 640
    .line 641
    const-string v12, "/system"

    .line 642
    .line 643
    goto :goto_a

    .line 644
    :cond_1b
    const-string v12, " /vendor "

    .line 645
    .line 646
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 647
    .line 648
    .line 649
    move-result v12

    .line 650
    if-eqz v12, :cond_1c

    .line 651
    .line 652
    const-string v12, "/vendor"

    .line 653
    .line 654
    goto :goto_a

    .line 655
    :cond_1c
    const-string v12, " /oem "

    .line 656
    .line 657
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 658
    .line 659
    .line 660
    move-result v12

    .line 661
    if-eqz v12, :cond_1d

    .line 662
    .line 663
    const-string v12, "/oem"

    .line 664
    .line 665
    goto :goto_a

    .line 666
    :cond_1d
    const-string v12, " / "

    .line 667
    .line 668
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 669
    .line 670
    .line 671
    move-result v12

    .line 672
    if-eqz v12, :cond_1a

    .line 673
    .line 674
    move-object v12, v10

    .line 675
    :goto_a
    const-string v13, "ro,"

    .line 676
    .line 677
    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 678
    .line 679
    .line 680
    move-result v13

    .line 681
    if-nez v13, :cond_1e

    .line 682
    .line 683
    goto :goto_9

    .line 684
    :cond_1e
    :goto_b
    const-string v13, "  "

    .line 685
    .line 686
    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 687
    .line 688
    .line 689
    move-result v14

    .line 690
    if-eqz v14, :cond_1f

    .line 691
    .line 692
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v11

    .line 696
    invoke-virtual {v11, v13, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v11

    .line 700
    goto :goto_b

    .line 701
    :cond_1f
    invoke-virtual {v11, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object v13

    .line 705
    array-length v14, v13

    .line 706
    const/4 v15, 0x4

    .line 707
    if-ge v14, v15, :cond_20

    .line 708
    .line 709
    goto :goto_9

    .line 710
    :cond_20
    :try_start_6
    const-string v14, " (r"

    .line 711
    .line 712
    invoke-virtual {v11, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 713
    .line 714
    .line 715
    move-result v11

    .line 716
    if-eqz v11, :cond_21

    .line 717
    .line 718
    aget-object v11, v13, v15

    .line 719
    .line 720
    goto :goto_c

    .line 721
    :catch_5
    nop

    .line 722
    goto :goto_9

    .line 723
    :cond_21
    const/4 v11, 0x2

    .line 724
    aget-object v13, v13, v11

    .line 725
    .line 726
    move-object v11, v13

    .line 727
    :goto_c
    new-instance v13, Ljava/lang/StringBuilder;

    .line 728
    .line 729
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 730
    .line 731
    .line 732
    const-string v14, "mount -o remount,rw -t "

    .line 733
    .line 734
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    .line 736
    .line 737
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    .line 739
    .line 740
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    .line 742
    .line 743
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    .line 745
    .line 746
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    move-result-object v11

    .line 750
    invoke-virtual {v1, v11}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 751
    .line 752
    .line 753
    goto/16 :goto_9

    .line 754
    .line 755
    :cond_22
    invoke-virtual {v1, v8}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 756
    .line 757
    .line 758
    move-result-object v11

    .line 759
    iget v7, v11, Lcom/yunpan/appmanage/bean/ShellResultData;->code:I

    .line 760
    .line 761
    if-eqz v7, :cond_23

    .line 762
    .line 763
    const-string v7, "mount -o remount,rw /system"

    .line 764
    .line 765
    invoke-virtual {v1, v7}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 766
    .line 767
    .line 768
    const-string v7, "mount -o remount,rw /"

    .line 769
    .line 770
    invoke-virtual {v1, v7}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 771
    .line 772
    .line 773
    invoke-virtual {v1, v8}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 774
    .line 775
    .line 776
    move-result-object v11

    .line 777
    :cond_23
    iget v7, v11, Lcom/yunpan/appmanage/bean/ShellResultData;->code:I

    .line 778
    .line 779
    if-nez v7, :cond_24

    .line 780
    .line 781
    sget-object v7, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 782
    .line 783
    sget-object v7, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 784
    .line 785
    iput-boolean v4, v7, Lcom/yunpan/appmanage/util/k;->l:Z

    .line 786
    .line 787
    const-string v7, "rm -rf /system/bin/111222"

    .line 788
    .line 789
    invoke-virtual {v1, v7}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 790
    .line 791
    .line 792
    :cond_24
    const-string v7, "touch /system/app/111222"

    .line 793
    .line 794
    invoke-virtual {v1, v7}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 795
    .line 796
    .line 797
    move-result-object v7

    .line 798
    iget v7, v7, Lcom/yunpan/appmanage/bean/ShellResultData;->code:I

    .line 799
    .line 800
    if-nez v7, :cond_25

    .line 801
    .line 802
    sget-object v7, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 803
    .line 804
    sget-object v7, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 805
    .line 806
    iput-boolean v4, v7, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 807
    .line 808
    const-string v7, "rm -rf /system/app/111222"

    .line 809
    .line 810
    invoke-virtual {v1, v7}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 811
    .line 812
    .line 813
    :cond_25
    sget-object v7, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 814
    .line 815
    sget-object v7, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 816
    .line 817
    iget-object v8, v7, Lcom/yunpan/appmanage/util/k;->s:Ljava/lang/String;

    .line 818
    .line 819
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 820
    .line 821
    .line 822
    move-result v8

    .line 823
    if-nez v8, :cond_26

    .line 824
    .line 825
    new-instance v8, Ljava/lang/StringBuilder;

    .line 826
    .line 827
    const-string v11, "ls -l \'"

    .line 828
    .line 829
    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 830
    .line 831
    .line 832
    iget-object v11, v7, Lcom/yunpan/appmanage/util/k;->s:Ljava/lang/String;

    .line 833
    .line 834
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    .line 836
    .line 837
    const-string v11, "/\'"

    .line 838
    .line 839
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    .line 841
    .line 842
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 843
    .line 844
    .line 845
    move-result-object v8

    .line 846
    invoke-virtual {v1, v8}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 847
    .line 848
    .line 849
    move-result-object v8

    .line 850
    iget v8, v8, Lcom/yunpan/appmanage/bean/ShellResultData;->code:I

    .line 851
    .line 852
    if-ne v8, v4, :cond_26

    .line 853
    .line 854
    iput-boolean v3, v7, Lcom/yunpan/appmanage/util/k;->L:Z

    .line 855
    .line 856
    :cond_26
    sget-object v7, Lfa/g0;->a:Lfa/h0;

    .line 857
    .line 858
    invoke-virtual {v7}, Lfa/h0;->f()Z

    .line 859
    .line 860
    .line 861
    move-result v8

    .line 862
    if-nez v8, :cond_2a

    .line 863
    .line 864
    invoke-virtual {v7}, Lfa/h0;->d()Ljava/lang/String;

    .line 865
    .line 866
    .line 867
    move-result-object v8

    .line 868
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 869
    .line 870
    .line 871
    move-result v8

    .line 872
    if-nez v8, :cond_2a

    .line 873
    .line 874
    :try_start_7
    new-instance v8, Ljava/lang/StringBuilder;

    .line 875
    .line 876
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 877
    .line 878
    .line 879
    invoke-virtual {v7}, Lfa/h0;->d()Ljava/lang/String;

    .line 880
    .line 881
    .line 882
    move-result-object v7

    .line 883
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    .line 885
    .line 886
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    .line 888
    .line 889
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 890
    .line 891
    .line 892
    move-result-object v7

    .line 893
    new-instance v8, Ljava/io/File;

    .line 894
    .line 895
    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 896
    .line 897
    .line 898
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 899
    .line 900
    .line 901
    new-instance v8, Ljava/lang/StringBuilder;

    .line 902
    .line 903
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 904
    .line 905
    .line 906
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    .line 908
    .line 909
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    .line 911
    .line 912
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 913
    .line 914
    .line 915
    move-result-object v8

    .line 916
    invoke-virtual {v1, v8}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 917
    .line 918
    .line 919
    invoke-static {v7}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 920
    .line 921
    .line 922
    move-result v8

    .line 923
    if-eqz v8, :cond_27

    .line 924
    .line 925
    new-instance v0, Ljava/io/File;

    .line 926
    .line 927
    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 928
    .line 929
    .line 930
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 931
    .line 932
    .line 933
    goto/16 :goto_e

    .line 934
    .line 935
    :cond_27
    const-string v7, "df"

    .line 936
    .line 937
    invoke-virtual {v1, v7}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 938
    .line 939
    .line 940
    move-result-object v7

    .line 941
    iget v8, v7, Lcom/yunpan/appmanage/bean/ShellResultData;->code:I

    .line 942
    .line 943
    if-nez v8, :cond_29

    .line 944
    .line 945
    iget-object v7, v7, Lcom/yunpan/appmanage/bean/ShellResultData;->lines:Ljava/util/List;

    .line 946
    .line 947
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 948
    .line 949
    .line 950
    move-result-object v7

    .line 951
    :cond_28
    :goto_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 952
    .line 953
    .line 954
    move-result v8

    .line 955
    if-eqz v8, :cond_2a

    .line 956
    .line 957
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 958
    .line 959
    .line 960
    move-result-object v8

    .line 961
    check-cast v8, Ljava/lang/String;

    .line 962
    .line 963
    invoke-virtual {v8, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 964
    .line 965
    .line 966
    move-result v11

    .line 967
    if-eqz v11, :cond_28

    .line 968
    .line 969
    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 970
    .line 971
    .line 972
    move-result v11

    .line 973
    if-eqz v11, :cond_28

    .line 974
    .line 975
    invoke-static {v8, v6, v0, v3}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 976
    .line 977
    .line 978
    move-result-object v8

    .line 979
    new-instance v11, Ljava/lang/StringBuilder;

    .line 980
    .line 981
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 982
    .line 983
    .line 984
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    .line 986
    .line 987
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    .line 989
    .line 990
    const-string v12, "/emulated/"

    .line 991
    .line 992
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    .line 994
    .line 995
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    .line 997
    .line 998
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 999
    .line 1000
    .line 1001
    move-result-object v11

    .line 1002
    new-instance v12, Ljava/lang/StringBuilder;

    .line 1003
    .line 1004
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1005
    .line 1006
    .line 1007
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    .line 1009
    .line 1010
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    .line 1012
    .line 1013
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v12

    .line 1017
    new-instance v13, Ljava/lang/StringBuilder;

    .line 1018
    .line 1019
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1020
    .line 1021
    .line 1022
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    .line 1024
    .line 1025
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    .line 1027
    .line 1028
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v12

    .line 1032
    invoke-virtual {v1, v12}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v12

    .line 1036
    iget v12, v12, Lcom/yunpan/appmanage/bean/ShellResultData;->code:I

    .line 1037
    .line 1038
    if-nez v12, :cond_28

    .line 1039
    .line 1040
    sget-object v12, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1041
    .line 1042
    iput-object v11, v12, Lcom/yunpan/appmanage/util/k;->O:Ljava/lang/String;

    .line 1043
    .line 1044
    iput-object v8, v12, Lcom/yunpan/appmanage/util/k;->N:Ljava/lang/String;

    .line 1045
    .line 1046
    goto :goto_d

    .line 1047
    :cond_29
    new-instance v0, Ljava/lang/Exception;

    .line 1048
    .line 1049
    const-string v2, "\u6267\u884cdf\u5931\u8d25"

    .line 1050
    .line 1051
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1052
    .line 1053
    .line 1054
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 1055
    :catch_6
    :cond_2a
    :goto_e
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1056
    .line 1057
    iget-boolean v2, v0, Lcom/yunpan/appmanage/util/k;->j:Z

    .line 1058
    .line 1059
    if-nez v2, :cond_31

    .line 1060
    .line 1061
    iget-boolean v2, v0, Lcom/yunpan/appmanage/util/k;->k:Z

    .line 1062
    .line 1063
    if-nez v2, :cond_2b

    .line 1064
    .line 1065
    const-string v5, "WRITE_SETTINGS"

    .line 1066
    .line 1067
    invoke-virtual {v1, v5}, Lfa/m;->U(Ljava/lang/String;)V

    .line 1068
    .line 1069
    .line 1070
    const-string v5, "android.permission.WRITE_SECURE_SETTINGS"

    .line 1071
    .line 1072
    invoke-virtual {v1, v5}, Lfa/m;->T(Ljava/lang/String;)V

    .line 1073
    .line 1074
    .line 1075
    const-string v5, "android.permission.DUMP"

    .line 1076
    .line 1077
    invoke-virtual {v1, v5}, Lfa/m;->T(Ljava/lang/String;)V

    .line 1078
    .line 1079
    .line 1080
    const-string v5, "android.permission.READ_LOGS"

    .line 1081
    .line 1082
    invoke-virtual {v1, v5}, Lfa/m;->T(Ljava/lang/String;)V

    .line 1083
    .line 1084
    .line 1085
    :cond_2b
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1086
    .line 1087
    const/16 v6, 0x17

    .line 1088
    .line 1089
    if-lt v5, v6, :cond_31

    .line 1090
    .line 1091
    if-nez v2, :cond_2f

    .line 1092
    .line 1093
    iget-object v2, v0, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 1094
    .line 1095
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getAnswerPhoneCallsPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v6

    .line 1099
    invoke-static {v2, v6}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 1100
    .line 1101
    .line 1102
    move-result v2

    .line 1103
    if-nez v2, :cond_2c

    .line 1104
    .line 1105
    const-string v2, "ANSWER_PHONE_CALLS"

    .line 1106
    .line 1107
    invoke-virtual {v1, v2}, Lfa/m;->U(Ljava/lang/String;)V

    .line 1108
    .line 1109
    .line 1110
    :cond_2c
    iget-object v2, v0, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 1111
    .line 1112
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getPackageUsageStatsPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v6

    .line 1116
    invoke-static {v2, v6}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 1117
    .line 1118
    .line 1119
    move-result v2

    .line 1120
    if-nez v2, :cond_2d

    .line 1121
    .line 1122
    const-string v2, "android.permission.PACKAGE_USAGE_STATS"

    .line 1123
    .line 1124
    invoke-virtual {v1, v2}, Lfa/m;->T(Ljava/lang/String;)V

    .line 1125
    .line 1126
    .line 1127
    const-string v2, "GET_USAGE_STATS"

    .line 1128
    .line 1129
    invoke-virtual {v1, v2}, Lfa/m;->U(Ljava/lang/String;)V

    .line 1130
    .line 1131
    .line 1132
    :cond_2d
    const-string v2, "android.permission.GET_APP_OPS_STATS"

    .line 1133
    .line 1134
    invoke-virtual {v1, v2}, Lfa/m;->T(Ljava/lang/String;)V

    .line 1135
    .line 1136
    .line 1137
    iget-object v2, v0, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 1138
    .line 1139
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getReadExternalStoragePermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v6

    .line 1143
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getWriteExternalStoragePermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v7

    .line 1147
    const/4 v8, 0x2

    .line 1148
    new-array v8, v8, [Lcom/hjq/permissions/permission/base/IPermission;

    .line 1149
    .line 1150
    aput-object v6, v8, v3

    .line 1151
    .line 1152
    aput-object v7, v8, v4

    .line 1153
    .line 1154
    invoke-static {v2, v8}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermissions(Landroid/content/Context;[Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 1155
    .line 1156
    .line 1157
    move-result v2

    .line 1158
    if-nez v2, :cond_2e

    .line 1159
    .line 1160
    const-string v2, "READ_EXTERNAL_STORAGE"

    .line 1161
    .line 1162
    invoke-virtual {v1, v2}, Lfa/m;->U(Ljava/lang/String;)V

    .line 1163
    .line 1164
    .line 1165
    const-string v2, "WRITE_EXTERNAL_STORAGE"

    .line 1166
    .line 1167
    invoke-virtual {v1, v2}, Lfa/m;->U(Ljava/lang/String;)V

    .line 1168
    .line 1169
    .line 1170
    :cond_2e
    iget-object v2, v0, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 1171
    .line 1172
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getSystemAlertWindowPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v6

    .line 1176
    invoke-static {v2, v6}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 1177
    .line 1178
    .line 1179
    move-result v2

    .line 1180
    if-nez v2, :cond_2f

    .line 1181
    .line 1182
    const-string v2, "SYSTEM_ALERT_WINDOW"

    .line 1183
    .line 1184
    invoke-virtual {v1, v2}, Lfa/m;->U(Ljava/lang/String;)V

    .line 1185
    .line 1186
    .line 1187
    :cond_2f
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 1188
    .line 1189
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getRequestInstallPackagesPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v2

    .line 1193
    invoke-static {v0, v2}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 1194
    .line 1195
    .line 1196
    move-result v0

    .line 1197
    if-nez v0, :cond_31

    .line 1198
    .line 1199
    const/16 v0, 0x1e

    .line 1200
    .line 1201
    if-ne v5, v0, :cond_30

    .line 1202
    .line 1203
    const-string v0, "Android11\u6388\u6743[\u5b89\u88c5\u6743\u9650]\uff0c\u5982\u679c\u95ea\u9000\u8bf7\u91cd\u65b0\u6253\u5f00\u5373\u53ef"

    .line 1204
    .line 1205
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 1206
    .line 1207
    .line 1208
    const-wide/16 v5, 0xc96

    .line 1209
    .line 1210
    :try_start_8
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 1211
    .line 1212
    .line 1213
    :catch_7
    :cond_30
    const-string v0, "REQUEST_INSTALL_PACKAGES"

    .line 1214
    .line 1215
    invoke-virtual {v1, v0}, Lfa/m;->U(Ljava/lang/String;)V

    .line 1216
    .line 1217
    .line 1218
    :cond_31
    const-string v0, "setprop persist.sv.enable_adb_install 1"

    .line 1219
    .line 1220
    invoke-virtual {v1, v0}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 1221
    .line 1222
    .line 1223
    iget-object v0, v1, Lfa/m;->a:Landroid/content/Context;

    .line 1224
    .line 1225
    invoke-static {v0}, Lif/a;->b0(Landroid/content/Context;)Z

    .line 1226
    .line 1227
    .line 1228
    move-result v0

    .line 1229
    if-nez v0, :cond_32

    .line 1230
    .line 1231
    const-string v0, "\u8bf7\u5728\u5f00\u53d1\u8005\u9009\u9879\u4e2d\uff1a\u5f00\u542f\u3010USB\u8c03\u8bd5(\u5b89\u5168\u8bbe\u7f6e)\u3011"

    .line 1232
    .line 1233
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1234
    .line 1235
    .line 1236
    goto/16 :goto_10

    .line 1237
    .line 1238
    :cond_32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1239
    .line 1240
    const/16 v2, 0x12

    .line 1241
    .line 1242
    if-lt v0, v2, :cond_38

    .line 1243
    .line 1244
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1245
    .line 1246
    iget-object v2, v0, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 1247
    .line 1248
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v2

    .line 1252
    const-string v5, "enabled_notification_listeners"

    .line 1253
    .line 1254
    invoke-static {v2, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 1255
    .line 1256
    .line 1257
    move-result-object v2

    .line 1258
    const-string v6, ""

    .line 1259
    .line 1260
    if-eqz v2, :cond_33

    .line 1261
    .line 1262
    const-string v7, "null"

    .line 1263
    .line 1264
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1265
    .line 1266
    .line 1267
    move-result v7

    .line 1268
    if-eqz v7, :cond_34

    .line 1269
    .line 1270
    :cond_33
    move-object v2, v6

    .line 1271
    :cond_34
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1272
    .line 1273
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1274
    .line 1275
    .line 1276
    iget-object v8, v0, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 1277
    .line 1278
    invoke-static {v7, v8, v10, v2}, Landroid/support/v4/media/session/a;->D(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1279
    .line 1280
    .line 1281
    move-result v7

    .line 1282
    if-nez v7, :cond_38

    .line 1283
    .line 1284
    const-string v7, ":"

    .line 1285
    .line 1286
    invoke-static {v2, v7}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v2

    .line 1290
    iget-object v8, v0, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 1291
    .line 1292
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1293
    .line 1294
    .line 1295
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1296
    .line 1297
    .line 1298
    const-class v8, Lcom/yunpan/appmanage/service/StartService;

    .line 1299
    .line 1300
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v8

    .line 1304
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1305
    .line 1306
    .line 1307
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1308
    .line 1309
    .line 1310
    move-result-object v2

    .line 1311
    const-string v8, "::"

    .line 1312
    .line 1313
    invoke-virtual {v2, v8, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v2

    .line 1317
    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1318
    .line 1319
    .line 1320
    move-result v8

    .line 1321
    if-eqz v8, :cond_35

    .line 1322
    .line 1323
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1324
    .line 1325
    .line 1326
    move-result-object v2

    .line 1327
    :cond_35
    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1328
    .line 1329
    .line 1330
    move-result v7

    .line 1331
    if-eqz v7, :cond_36

    .line 1332
    .line 1333
    invoke-static {v4, v3, v2}, Landroid/support/v4/media/session/a;->l(IILjava/lang/String;)Ljava/lang/String;

    .line 1334
    .line 1335
    .line 1336
    move-result-object v2

    .line 1337
    :cond_36
    iget-object v7, v0, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 1338
    .line 1339
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1340
    .line 1341
    .line 1342
    move-result-object v7

    .line 1343
    invoke-static {v7, v5, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1344
    .line 1345
    .line 1346
    iget-object v2, v0, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 1347
    .line 1348
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v2

    .line 1352
    const-string v5, "notification_enabled"

    .line 1353
    .line 1354
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1355
    .line 1356
    .line 1357
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1358
    .line 1359
    const-string v5, "cmd notification allow_listener"

    .line 1360
    .line 1361
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1362
    .line 1363
    .line 1364
    iget v5, v0, Lcom/yunpan/appmanage/util/k;->n:I

    .line 1365
    .line 1366
    if-nez v5, :cond_37

    .line 1367
    .line 1368
    goto :goto_f

    .line 1369
    :cond_37
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1370
    .line 1371
    const-string v6, " --user "

    .line 1372
    .line 1373
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1374
    .line 1375
    .line 1376
    iget v6, v0, Lcom/yunpan/appmanage/util/k;->n:I

    .line 1377
    .line 1378
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1379
    .line 1380
    .line 1381
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1382
    .line 1383
    .line 1384
    move-result-object v6

    .line 1385
    :goto_f
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1386
    .line 1387
    .line 1388
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1389
    .line 1390
    .line 1391
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 1392
    .line 1393
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1394
    .line 1395
    .line 1396
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1397
    .line 1398
    .line 1399
    const-class v0, Lcom/yunpan/appmanage/service/StartService;

    .line 1400
    .line 1401
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v0

    .line 1405
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1406
    .line 1407
    .line 1408
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1409
    .line 1410
    .line 1411
    move-result-object v0

    .line 1412
    invoke-virtual {v1, v0}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 1413
    .line 1414
    .line 1415
    :cond_38
    :try_start_9
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1416
    .line 1417
    iget-object v2, v0, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 1418
    .line 1419
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v2

    .line 1423
    const-string v5, "verifier_verify_adb_installs"

    .line 1424
    .line 1425
    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1426
    .line 1427
    .line 1428
    iget-object v2, v0, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 1429
    .line 1430
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1431
    .line 1432
    .line 1433
    move-result-object v2

    .line 1434
    const-string v5, "package_verifier_enable"

    .line 1435
    .line 1436
    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1437
    .line 1438
    .line 1439
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 1440
    .line 1441
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1442
    .line 1443
    .line 1444
    move-result-object v0

    .line 1445
    const-string v2, "install_non_market_apps"

    .line 1446
    .line 1447
    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 1448
    .line 1449
    .line 1450
    goto :goto_10

    .line 1451
    :catch_8
    const-string v0, "settings put secure install_non_market_apps 1"

    .line 1452
    .line 1453
    invoke-virtual {v1, v0}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 1454
    .line 1455
    .line 1456
    :goto_10
    sget-object v0, Lfa/h;->a:Lfa/j;

    .line 1457
    .line 1458
    const-string v2, "\u5df2\u8fde\u63a5"

    .line 1459
    .line 1460
    iput-object v2, v0, Lfa/j;->h:Ljava/lang/String;

    .line 1461
    .line 1462
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 1463
    .line 1464
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/w;->F:Z

    .line 1465
    .line 1466
    if-eqz v0, :cond_39

    .line 1467
    .line 1468
    const-string v0, "adb\u8fde\u63a5\u6210\u529f"

    .line 1469
    .line 1470
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 1471
    .line 1472
    .line 1473
    :cond_39
    return-void

    .line 1474
    :cond_3a
    new-instance v0, Ljava/lang/Exception;

    .line 1475
    .line 1476
    const-string v2, "adb\u8fde\u63a5\u5931\u8d25"

    .line 1477
    .line 1478
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1479
    .line 1480
    .line 1481
    throw v0

    .line 1482
    :catch_9
    throw v0

    .line 1483
    :catch_a
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 1484
    .line 1485
    iget-boolean v0, v0, Lwa/u;->v:Z

    .line 1486
    .line 1487
    if-eqz v0, :cond_3b

    .line 1488
    .line 1489
    invoke-static {v6}, Lwa/w;->b(Ljava/lang/String;)V

    .line 1490
    .line 1491
    .line 1492
    :cond_3b
    new-instance v0, Ljava/lang/Exception;

    .line 1493
    .line 1494
    invoke-direct {v0, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1495
    .line 1496
    .line 1497
    throw v0

    .line 1498
    :catch_b
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 1499
    .line 1500
    iget-boolean v0, v0, Lwa/u;->v:Z

    .line 1501
    .line 1502
    if-eqz v0, :cond_3c

    .line 1503
    .line 1504
    invoke-static {v6}, Lwa/w;->b(Ljava/lang/String;)V

    .line 1505
    .line 1506
    .line 1507
    :cond_3c
    new-instance v0, Ljava/lang/Exception;

    .line 1508
    .line 1509
    invoke-direct {v0, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1510
    .line 1511
    .line 1512
    goto :goto_12

    .line 1513
    :goto_11
    throw v0

    .line 1514
    :goto_12
    goto :goto_11
.end method

.method public final O(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, ":"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "adb "

    .line 4
    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p1

    .line 18
    goto :goto_2

    .line 19
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v1, " "

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/4 v2, -0x1

    .line 36
    if-ne v1, v2, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    add-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->getAdbConnection()Lio/github/muntashirakon/adb/AdbConnection;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0, p1}, Lio/github/muntashirakon/adb/AdbConnection;->open(Ljava/lang/String;)Lio/github/muntashirakon/adb/AdbStream;

    .line 77
    .line 78
    .line 79
    const-wide/16 v0, 0x3e8

    .line 80
    .line 81
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public final P(Ljava/lang/String;)Ljava/lang/String;
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
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x1

    .line 27
    const/4 v4, 0x0

    .line 28
    if-nez v2, :cond_2

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v2, " "

    .line 35
    .line 36
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const/4 v5, -0x1

    .line 41
    if-ne v2, v5, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    add-int/2addr v2, v3

    .line 64
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    :cond_2
    :goto_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    const-string v1, "remount"

    .line 81
    .line 82
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_3

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    const-string v1, "reboot"

    .line 90
    .line 91
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_4

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_4
    const/4 v3, 0x0

    .line 99
    :goto_2
    if-eqz v3, :cond_5

    .line 100
    .line 101
    const-wide/16 v1, 0xbb8

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_5
    const-wide/16 v1, 0x1f40

    .line 105
    .line 106
    :goto_3
    const-string v3, "install:"

    .line 107
    .line 108
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-eqz v3, :cond_6

    .line 113
    .line 114
    const-string p1, "\u4e0d\u652f\u6301adb install\u6d41\u5f0f\u5b89\u88c5\uff0c\u8bf7\u7528pm install"

    .line 115
    .line 116
    return-object p1

    .line 117
    :cond_6
    invoke-virtual {p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->getAdbConnection()Lio/github/muntashirakon/adb/AdbConnection;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v3, p1}, Lio/github/muntashirakon/adb/AdbConnection;->open(Ljava/lang/String;)Lio/github/muntashirakon/adb/AdbStream;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    new-instance v3, Ljava/io/BufferedReader;

    .line 126
    .line 127
    new-instance v4, Ljava/io/InputStreamReader;

    .line 128
    .line 129
    invoke-virtual {p1}, Lio/github/muntashirakon/adb/AdbStream;->openInputStream()Lio/github/muntashirakon/adb/AdbInputStream;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 134
    .line 135
    .line 136
    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 137
    .line 138
    .line 139
    new-instance v4, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 140
    .line 141
    invoke-direct {v4}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 142
    .line 143
    .line 144
    new-instance v5, Lfg/b;

    .line 145
    .line 146
    new-instance v6, Lfa/k;

    .line 147
    .line 148
    const/4 v7, 0x0

    .line 149
    invoke-direct {v6, p1, v3, v4, v7}, Lfa/k;-><init>(Lio/github/muntashirakon/adb/AdbStream;Ljava/io/BufferedReader;Ljava/util/concurrent/LinkedBlockingQueue;I)V

    .line 150
    .line 151
    .line 152
    const/4 p1, 0x1

    .line 153
    invoke-direct {v5, v6, p1}, Lfg/b;-><init>(Ljava/lang/Runnable;I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 157
    .line 158
    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 160
    .line 161
    .line 162
    move-result-wide v6

    .line 163
    move-object p1, v0

    .line 164
    :cond_7
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 165
    .line 166
    const-wide/16 v8, 0x29a

    .line 167
    .line 168
    invoke-virtual {v4, v8, v9, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    check-cast v3, Ljava/lang/String;

    .line 173
    .line 174
    if-eqz v3, :cond_8

    .line 175
    .line 176
    new-instance v8, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string p1, "\n"

    .line 188
    .line 189
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    goto :goto_4

    .line 197
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 198
    .line 199
    .line 200
    move-result v8

    .line 201
    if-eqz v8, :cond_a

    .line 202
    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 204
    .line 205
    .line 206
    move-result-wide v8

    .line 207
    sub-long/2addr v8, v6

    .line 208
    cmp-long v3, v8, v1

    .line 209
    .line 210
    if-lez v3, :cond_9

    .line 211
    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string p1, "\u6267\u884c\u547d\u4ee4\u8d85\u65f6\n"

    .line 221
    .line 222
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    goto :goto_5

    .line 230
    :cond_9
    const-string v3, "\u7ee7\u7eed"

    .line 231
    .line 232
    :cond_a
    :goto_4
    if-nez v3, :cond_7

    .line 233
    .line 234
    :goto_5
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 235
    .line 236
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .line 241
    .line 242
    return-object p1

    .line 243
    :goto_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 244
    .line 245
    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .line 250
    .line 251
    invoke-static {p1, v1, v0}, Lda/b;->b(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    return-object p1
.end method

.method public final Q()V
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
    iput-object v1, p0, Lfa/m;->b:Lio/github/muntashirakon/adb/AdbStream;

    .line 44
    .line 45
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lfa/m;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 51
    .line 52
    new-instance v1, Lfg/b;

    .line 53
    .line 54
    new-instance v2, La2/h;

    .line 55
    .line 56
    const/16 v5, 0x11

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
    iget-object v1, p0, Lfa/m;->b:Lio/github/muntashirakon/adb/AdbStream;

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
    invoke-virtual {p0, v0}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

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
    invoke-virtual {p0, v0}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

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
    iget-object v0, p0, Lfa/m;->b:Lio/github/muntashirakon/adb/AdbStream;

    .line 121
    .line 122
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/AdbStream;->close()V

    .line 123
    .line 124
    .line 125
    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lfa/m;->b:Lio/github/muntashirakon/adb/AdbStream;

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

.method public final T(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "pm grant"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 9
    .line 10
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 11
    .line 12
    iget v2, v1, Lcom/yunpan/appmanage/util/k;->n:I

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    const-string v1, ""

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v3, " --user "

    .line 22
    .line 23
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget v1, v1, Lcom/yunpan/appmanage/util/k;->n:I

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, " "

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    sget-object v2, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p0, p1}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final U(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 7
    .line 8
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 9
    .line 10
    iget-boolean v2, v1, Lcom/yunpan/appmanage/util/k;->g:Z

    .line 11
    .line 12
    const-string v3, ""

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    const-string v2, "cmd "

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v2, v3

    .line 20
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, "appops set "

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v2, v1, Lcom/yunpan/appmanage/util/k;->n:I

    .line 29
    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v3, " --user "

    .line 36
    .line 37
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget v1, v1, Lcom/yunpan/appmanage/util/k;->n:I

    .line 41
    .line 42
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, " "

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    sget-object v2, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 58
    .line 59
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p1, " allow"

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final V()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lfa/m;->b:Lio/github/muntashirakon/adb/AdbStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/AdbStream;->openOutputStream()Lio/github/muntashirakon/adb/AdbOutputStream;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x2

    .line 8
    new-array v1, v1, [B

    .line 9
    .line 10
    fill-array-data v1, :array_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/github/muntashirakon/adb/AdbOutputStream;->write([B)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/AdbOutputStream;->flush()V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    new-array v1, v1, [B

    .line 21
    .line 22
    const/16 v2, 0xa

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    aput-byte v2, v1, v3

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lio/github/muntashirakon/adb/AdbOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    :catch_0
    return-void

    .line 31
    :array_0
    .array-data 1
        0x3t
        0xat
    .end array-data
.end method

.method public final getCertificate()Ljava/security/cert/Certificate;
    .locals 1

    .line 1
    iget-object v0, p0, Lfa/m;->f:Ljava/security/cert/Certificate;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDeviceName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lfa/m;->a:Landroid/content/Context;

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
    iget-object v0, p0, Lfa/m;->e:Ljava/security/PrivateKey;

    .line 2
    .line 3
    return-object v0
.end method
