.class public final La9/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile A:Z

.field public final B:I

.field public a:[B

.field public final b:[B

.field public c:[B

.field public d:I

.field public e:La2/g1;

.field public f:Ljava/net/Socket;

.field public g:I

.field public volatile h:Z

.field public volatile i:Z

.field public j:Z

.field public volatile k:Z

.field public volatile l:Z

.field public m:Z

.field public n:Z

.field public volatile o:Z

.field public final p:Ljava/lang/Object;

.field public q:La9/a;

.field public final r:La2/g1;

.field public s:Ljava/util/Hashtable;

.field public volatile t:Z

.field public volatile u:J

.field public final v:Ljava/lang/String;

.field public final w:I

.field public final x:Ljava/lang/String;

.field public y:[B

.field public final z:La9/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, La9/h0;->a:[B

    .line 2
    .line 3
    sget-object v0, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    const-string v1, "keepalive@jcraft.com"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 8
    .line 9
    .line 10
    const-string v0, "no-more-sessions@openssh.com"

    .line 11
    .line 12
    invoke-static {v0}, La9/h0;->j(Ljava/lang/String;)[B

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(La9/l;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    sget-object v1, La9/l;->e:Ljava/util/Hashtable;

    .line 6
    .line 7
    sget-object v1, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    const-string v2, "SSH-2.0-JSCH_0.2.21"

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, p0, La9/f0;->b:[B

    .line 16
    .line 17
    iput v0, p0, La9/f0;->d:I

    .line 18
    .line 19
    iput v0, p0, La9/f0;->g:I

    .line 20
    .line 21
    iput-boolean v0, p0, La9/f0;->h:Z

    .line 22
    .line 23
    iput-boolean v0, p0, La9/f0;->i:Z

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    iput-boolean v1, p0, La9/f0;->j:Z

    .line 27
    .line 28
    iput-boolean v1, p0, La9/f0;->k:Z

    .line 29
    .line 30
    iput-boolean v0, p0, La9/f0;->l:Z

    .line 31
    .line 32
    iput-boolean v1, p0, La9/f0;->m:Z

    .line 33
    .line 34
    iput-boolean v0, p0, La9/f0;->n:Z

    .line 35
    .line 36
    iput-boolean v0, p0, La9/f0;->o:Z

    .line 37
    .line 38
    new-instance v1, Ljava/lang/Object;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, La9/f0;->p:Ljava/lang/Object;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    iput-object v1, p0, La9/f0;->s:Ljava/util/Hashtable;

    .line 47
    .line 48
    iput-boolean v0, p0, La9/f0;->t:Z

    .line 49
    .line 50
    const-wide/16 v2, 0x0

    .line 51
    .line 52
    iput-wide v2, p0, La9/f0;->u:J

    .line 53
    .line 54
    const-string v2, "127.0.0.1"

    .line 55
    .line 56
    iput-object v2, p0, La9/f0;->v:Ljava/lang/String;

    .line 57
    .line 58
    const/16 v2, 0x16

    .line 59
    .line 60
    iput v2, p0, La9/f0;->w:I

    .line 61
    .line 62
    iput-object v1, p0, La9/f0;->x:Ljava/lang/String;

    .line 63
    .line 64
    iput-object v1, p0, La9/f0;->y:[B

    .line 65
    .line 66
    iput-boolean v0, p0, La9/f0;->A:Z

    .line 67
    .line 68
    const/16 v2, 0x8

    .line 69
    .line 70
    iput v2, p0, La9/f0;->B:I

    .line 71
    .line 72
    new-instance v2, Lgf/g;

    .line 73
    .line 74
    const/4 v3, 0x2

    .line 75
    invoke-direct {v2, v3}, Lgf/g;-><init>(I)V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, La9/f0;->z:La9/l;

    .line 79
    .line 80
    new-instance p1, La9/a;

    .line 81
    .line 82
    invoke-direct {p1, v0, v0}, La9/a;-><init>(IC)V

    .line 83
    .line 84
    .line 85
    iput-object p1, p0, La9/f0;->q:La9/a;

    .line 86
    .line 87
    new-instance v0, La2/g1;

    .line 88
    .line 89
    invoke-direct {v0, p1}, La2/g1;-><init>(La9/a;)V

    .line 90
    .line 91
    .line 92
    iput-object v0, p0, La9/f0;->r:La2/g1;

    .line 93
    .line 94
    iput-object p2, p0, La9/f0;->x:Ljava/lang/String;

    .line 95
    .line 96
    iput-object p3, p0, La9/f0;->v:Ljava/lang/String;

    .line 97
    .line 98
    iput p4, p0, La9/f0;->w:I

    .line 99
    .line 100
    if-nez p2, :cond_0

    .line 101
    .line 102
    const-string p1, "user.name"

    .line 103
    .line 104
    :try_start_0
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :catch_0
    iput-object v1, p0, La9/f0;->x:Ljava/lang/String;

    .line 109
    .line 110
    :cond_0
    iget-object p1, p0, La9/f0;->x:Ljava/lang/String;

    .line 111
    .line 112
    if-eqz p1, :cond_1

    .line 113
    .line 114
    return-void

    .line 115
    :cond_1
    new-instance p1, La9/n;

    .line 116
    .line 117
    const-string p2, "username is not given."

    .line 118
    .line 119
    invoke-direct {p1, p2}, La9/n;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p1
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-class v0, La9/f;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    :try_start_1
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 23
    :cond_0
    :try_start_2
    new-instance p0, Ljava/lang/ClassCastException;

    .line 24
    .line 25
    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    .line 26
    .line 27
    .line 28
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_0

    .line 29
    :catch_0
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 12

    .line 1
    const-string v0, "yes"

    .line 2
    .line 3
    iget v1, p0, La9/f0;->g:I

    .line 4
    .line 5
    iget-boolean v2, p0, La9/f0;->h:Z

    .line 6
    .line 7
    if-nez v2, :cond_12

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    iput-boolean v2, p0, La9/f0;->k:Z

    .line 11
    .line 12
    new-instance v3, La2/g1;

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    const/4 v5, 0x0

    .line 16
    invoke-direct {v3, v4, v5}, La2/g1;-><init>(IZ)V

    .line 17
    .line 18
    .line 19
    iput-object v3, p0, La9/f0;->e:La2/g1;

    .line 20
    .line 21
    :try_start_0
    const-string v3, "random"

    .line 22
    .line 23
    invoke-virtual {p0, v3}, La9/f0;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const-class v4, La9/d0;

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 46
    if-nez v3, :cond_11

    .line 47
    .line 48
    iget-object v3, p0, La9/f0;->z:La9/l;

    .line 49
    .line 50
    invoke-virtual {v3}, La9/l;->c()Lgf/g;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    const/4 v5, 0x2

    .line 59
    const/4 v6, 0x3

    .line 60
    :try_start_1
    iget-object v7, p0, La9/f0;->v:Ljava/lang/String;

    .line 61
    .line 62
    iget v8, p0, La9/f0;->w:I

    .line 63
    .line 64
    invoke-static {v8, v1, v7}, La9/h0;->e(IILjava/lang/String;)Ljava/net/Socket;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    iput-object v7, p0, La9/f0;->f:Ljava/net/Socket;

    .line 69
    .line 70
    invoke-virtual {v7}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    iget-object v8, p0, La9/f0;->f:Ljava/net/Socket;

    .line 75
    .line 76
    invoke-virtual {v8}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    iget-object v9, p0, La9/f0;->f:Ljava/net/Socket;

    .line 81
    .line 82
    invoke-virtual {v9, v2}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 83
    .line 84
    .line 85
    iget-object v9, p0, La9/f0;->e:La2/g1;

    .line 86
    .line 87
    iput-object v7, v9, La2/g1;->b:Ljava/lang/Object;

    .line 88
    .line 89
    iput-object v8, v9, La2/g1;->c:Ljava/lang/Object;

    .line 90
    .line 91
    if-lez v1, :cond_0

    .line 92
    .line 93
    iget-object v7, p0, La9/f0;->f:Ljava/net/Socket;

    .line 94
    .line 95
    if-eqz v7, :cond_0

    .line 96
    .line 97
    invoke-virtual {v7, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    .line 102
    goto/16 :goto_7

    .line 103
    .line 104
    :catch_0
    move-exception v0

    .line 105
    goto/16 :goto_4

    .line 106
    .line 107
    :cond_0
    :goto_0
    iput-boolean v2, p0, La9/f0;->h:Z

    .line 108
    .line 109
    iget-object v1, p0, La9/f0;->z:La9/l;

    .line 110
    .line 111
    invoke-virtual {v1}, La9/l;->c()Lgf/g;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, La9/f0;->z:La9/l;

    .line 119
    .line 120
    iget-object v7, v1, La9/l;->b:Ljava/util/Vector;

    .line 121
    .line 122
    monitor-enter v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    :try_start_2
    iget-object v1, v1, La9/l;->b:Ljava/util/Vector;

    .line 124
    .line 125
    invoke-virtual {v1, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 129
    :try_start_3
    iget-object v1, p0, La9/f0;->b:[B

    .line 130
    .line 131
    array-length v7, v1

    .line 132
    add-int/lit8 v8, v7, 0x2

    .line 133
    .line 134
    new-array v9, v8, [B

    .line 135
    .line 136
    array-length v10, v1

    .line 137
    invoke-static {v1, v3, v9, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    .line 139
    .line 140
    const/16 v1, 0xd

    .line 141
    .line 142
    aput-byte v1, v9, v7

    .line 143
    .line 144
    add-int/2addr v7, v2

    .line 145
    const/16 v10, 0xa

    .line 146
    .line 147
    aput-byte v10, v9, v7

    .line 148
    .line 149
    iget-object v7, p0, La9/f0;->e:La2/g1;

    .line 150
    .line 151
    iget-object v11, v7, La2/g1;->c:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v11, Ljava/io/OutputStream;

    .line 154
    .line 155
    invoke-virtual {v11, v9, v3, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 156
    .line 157
    .line 158
    iget-object v7, v7, La2/g1;->c:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v7, Ljava/io/OutputStream;

    .line 161
    .line 162
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 163
    .line 164
    .line 165
    :cond_1
    :goto_1
    const/4 v7, 0x0

    .line 166
    const/4 v8, 0x0

    .line 167
    :cond_2
    iget-object v9, p0, La9/f0;->q:La9/a;

    .line 168
    .line 169
    iget-object v9, v9, La9/a;->e:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast v9, [B

    .line 172
    .line 173
    array-length v9, v9

    .line 174
    if-ge v7, v9, :cond_4

    .line 175
    .line 176
    iget-object v8, p0, La9/f0;->e:La2/g1;

    .line 177
    .line 178
    iget-object v8, v8, La2/g1;->b:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast v8, Ljava/io/InputStream;

    .line 181
    .line 182
    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    .line 183
    .line 184
    .line 185
    move-result v8

    .line 186
    if-gez v8, :cond_3

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_3
    iget-object v9, p0, La9/f0;->q:La9/a;

    .line 190
    .line 191
    iget-object v9, v9, La9/a;->e:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v9, [B

    .line 194
    .line 195
    int-to-byte v11, v8

    .line 196
    aput-byte v11, v9, v7

    .line 197
    .line 198
    add-int/lit8 v7, v7, 0x1

    .line 199
    .line 200
    if-ne v8, v10, :cond_2

    .line 201
    .line 202
    :cond_4
    :goto_2
    if-ltz v8, :cond_b

    .line 203
    .line 204
    iget-object v8, p0, La9/f0;->q:La9/a;

    .line 205
    .line 206
    iget-object v8, v8, La9/a;->e:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v8, [B

    .line 209
    .line 210
    add-int/lit8 v9, v7, -0x1

    .line 211
    .line 212
    aget-byte v9, v8, v9

    .line 213
    .line 214
    if-ne v9, v10, :cond_6

    .line 215
    .line 216
    add-int/lit8 v9, v7, -0x1

    .line 217
    .line 218
    if-lez v9, :cond_5

    .line 219
    .line 220
    add-int/lit8 v7, v7, -0x2

    .line 221
    .line 222
    aget-byte v11, v8, v7

    .line 223
    .line 224
    if-ne v11, v1, :cond_5

    .line 225
    .line 226
    goto :goto_3

    .line 227
    :cond_5
    move v7, v9

    .line 228
    :cond_6
    :goto_3
    if-le v7, v6, :cond_1

    .line 229
    .line 230
    array-length v9, v8

    .line 231
    if-eq v7, v9, :cond_7

    .line 232
    .line 233
    aget-byte v9, v8, v3

    .line 234
    .line 235
    const/16 v11, 0x53

    .line 236
    .line 237
    if-ne v9, v11, :cond_1

    .line 238
    .line 239
    aget-byte v9, v8, v2

    .line 240
    .line 241
    if-ne v9, v11, :cond_1

    .line 242
    .line 243
    aget-byte v9, v8, v5

    .line 244
    .line 245
    const/16 v11, 0x48

    .line 246
    .line 247
    if-ne v9, v11, :cond_1

    .line 248
    .line 249
    aget-byte v9, v8, v6

    .line 250
    .line 251
    const/16 v11, 0x2d

    .line 252
    .line 253
    if-eq v9, v11, :cond_7

    .line 254
    .line 255
    goto :goto_1

    .line 256
    :cond_7
    array-length v1, v8

    .line 257
    if-eq v7, v1, :cond_a

    .line 258
    .line 259
    const/4 v1, 0x7

    .line 260
    if-lt v7, v1, :cond_a

    .line 261
    .line 262
    const/4 v1, 0x4

    .line 263
    aget-byte v1, v8, v1

    .line 264
    .line 265
    const/16 v9, 0x31

    .line 266
    .line 267
    if-ne v1, v9, :cond_8

    .line 268
    .line 269
    const/4 v1, 0x6

    .line 270
    aget-byte v1, v8, v1

    .line 271
    .line 272
    const/16 v9, 0x39

    .line 273
    .line 274
    if-ne v1, v9, :cond_a

    .line 275
    .line 276
    :cond_8
    new-array v1, v7, [B

    .line 277
    .line 278
    iput-object v1, p0, La9/f0;->a:[B

    .line 279
    .line 280
    invoke-static {v8, v3, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    .line 282
    .line 283
    iget-object v1, p0, La9/f0;->a:[B

    .line 284
    .line 285
    invoke-static {v1}, La9/h0;->c([B)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    const-string v7, "SSH-2.0-OpenSSH_7.4"

    .line 290
    .line 291
    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    iput-boolean v1, p0, La9/f0;->t:Z

    .line 296
    .line 297
    iget-object v1, p0, La9/f0;->z:La9/l;

    .line 298
    .line 299
    invoke-virtual {v1}, La9/l;->c()Lgf/g;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    .line 305
    .line 306
    const-string v1, "enable_server_sig_algs"

    .line 307
    .line 308
    invoke-virtual {p0, v1}, La9/f0;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    iput-boolean v1, p0, La9/f0;->j:Z

    .line 317
    .line 318
    const-string v1, "enable_ext_info_in_auth"

    .line 319
    .line 320
    invoke-virtual {p0, v1}, La9/f0;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    const-string v1, "enable_strict_kex"

    .line 328
    .line 329
    invoke-virtual {p0, v1}, La9/f0;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    iput-boolean v1, p0, La9/f0;->m:Z

    .line 338
    .line 339
    const-string v1, "require_strict_kex"

    .line 340
    .line 341
    invoke-virtual {p0, v1}, La9/f0;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v0

    .line 349
    iput-boolean v0, p0, La9/f0;->n:Z

    .line 350
    .line 351
    invoke-virtual {p0}, La9/f0;->g()V

    .line 352
    .line 353
    .line 354
    iget-object v0, p0, La9/f0;->q:La9/a;

    .line 355
    .line 356
    invoke-virtual {p0, v0}, La9/f0;->e(La9/a;)V

    .line 357
    .line 358
    .line 359
    iput-object v0, p0, La9/f0;->q:La9/a;

    .line 360
    .line 361
    iget-object v0, v0, La9/a;->e:Ljava/lang/Object;

    .line 362
    .line 363
    check-cast v0, [B

    .line 364
    .line 365
    const/4 v1, 0x5

    .line 366
    aget-byte v0, v0, v1

    .line 367
    .line 368
    const/16 v7, 0x14

    .line 369
    .line 370
    if-ne v0, v7, :cond_9

    .line 371
    .line 372
    iget-object v0, p0, La9/f0;->z:La9/l;

    .line 373
    .line 374
    invoke-virtual {v0}, La9/l;->c()Lgf/g;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 379
    .line 380
    .line 381
    iget-object v0, p0, La9/f0;->q:La9/a;

    .line 382
    .line 383
    invoke-virtual {p0, v0}, La9/f0;->f(La9/a;)V

    .line 384
    .line 385
    .line 386
    throw v4

    .line 387
    :cond_9
    iput-boolean v3, p0, La9/f0;->A:Z

    .line 388
    .line 389
    new-instance v0, La9/n;

    .line 390
    .line 391
    new-instance v7, Ljava/lang/StringBuilder;

    .line 392
    .line 393
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 394
    .line 395
    .line 396
    const-string v8, "invalid protocol: "

    .line 397
    .line 398
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    iget-object v8, p0, La9/f0;->q:La9/a;

    .line 402
    .line 403
    iget-object v8, v8, La9/a;->e:Ljava/lang/Object;

    .line 404
    .line 405
    check-cast v8, [B

    .line 406
    .line 407
    aget-byte v1, v8, v1

    .line 408
    .line 409
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    invoke-direct {v0, v1}, La9/n;-><init>(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    throw v0

    .line 420
    :cond_a
    new-instance v0, La9/n;

    .line 421
    .line 422
    const-string v1, "invalid server\'s version string"

    .line 423
    .line 424
    invoke-direct {v0, v1}, La9/n;-><init>(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    throw v0

    .line 428
    :cond_b
    new-instance v0, La9/n;

    .line 429
    .line 430
    const-string v1, "connection is closed by foreign host"

    .line 431
    .line 432
    invoke-direct {v0, v1}, La9/n;-><init>(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 436
    :catchall_1
    move-exception v0

    .line 437
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 438
    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 439
    :goto_4
    :try_start_6
    iput-boolean v3, p0, La9/f0;->A:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 440
    .line 441
    :try_start_7
    iget-boolean v1, p0, La9/f0;->h:Z

    .line 442
    .line 443
    if-nez v1, :cond_c

    .line 444
    .line 445
    goto :goto_6

    .line 446
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    iget-object v7, p0, La9/f0;->r:La2/g1;

    .line 451
    .line 452
    invoke-virtual {v7}, La2/g1;->Z()V

    .line 453
    .line 454
    .line 455
    iget-object v7, p0, La9/f0;->q:La9/a;

    .line 456
    .line 457
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 458
    .line 459
    .line 460
    move-result v8

    .line 461
    add-int/lit8 v8, v8, 0x63

    .line 462
    .line 463
    iget v9, v7, La9/a;->b:I

    .line 464
    .line 465
    add-int/2addr v8, v9

    .line 466
    add-int/lit16 v8, v8, 0x80

    .line 467
    .line 468
    iget-object v10, v7, La9/a;->e:Ljava/lang/Object;

    .line 469
    .line 470
    check-cast v10, [B

    .line 471
    .line 472
    array-length v11, v10

    .line 473
    if-ge v11, v8, :cond_e

    .line 474
    .line 475
    array-length v11, v10

    .line 476
    mul-int/lit8 v11, v11, 0x2

    .line 477
    .line 478
    if-ge v11, v8, :cond_d

    .line 479
    .line 480
    goto :goto_5

    .line 481
    :cond_d
    move v8, v11

    .line 482
    :goto_5
    new-array v5, v8, [B

    .line 483
    .line 484
    invoke-static {v10, v3, v5, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 485
    .line 486
    .line 487
    iput-object v5, v7, La9/a;->e:Ljava/lang/Object;

    .line 488
    .line 489
    :cond_e
    iget-object v5, p0, La9/f0;->q:La9/a;

    .line 490
    .line 491
    invoke-virtual {v5, v2}, La9/a;->n(B)V

    .line 492
    .line 493
    .line 494
    iget-object v2, p0, La9/f0;->q:La9/a;

    .line 495
    .line 496
    invoke-virtual {v2, v6}, La9/a;->o(I)V

    .line 497
    .line 498
    .line 499
    iget-object v2, p0, La9/f0;->q:La9/a;

    .line 500
    .line 501
    sget-object v5, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 502
    .line 503
    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 508
    .line 509
    .line 510
    array-length v6, v1

    .line 511
    invoke-virtual {v2, v6, v1}, La9/a;->p(I[B)V

    .line 512
    .line 513
    .line 514
    iget-object v1, p0, La9/f0;->q:La9/a;

    .line 515
    .line 516
    const-string v2, "en"

    .line 517
    .line 518
    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 519
    .line 520
    .line 521
    move-result-object v2

    .line 522
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 523
    .line 524
    .line 525
    array-length v5, v2

    .line 526
    invoke-virtual {v1, v5, v2}, La9/a;->p(I[B)V

    .line 527
    .line 528
    .line 529
    iget-object v1, p0, La9/f0;->r:La2/g1;

    .line 530
    .line 531
    invoke-virtual {p0, v1}, La9/f0;->i(La2/g1;)V

    .line 532
    .line 533
    .line 534
    throw v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 535
    :catch_1
    :goto_6
    :try_start_8
    invoke-virtual {p0}, La9/f0;->c()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 536
    .line 537
    .line 538
    :catch_2
    :try_start_9
    iput-boolean v3, p0, La9/f0;->h:Z

    .line 539
    .line 540
    instance-of v1, v0, Ljava/lang/RuntimeException;

    .line 541
    .line 542
    if-nez v1, :cond_10

    .line 543
    .line 544
    instance-of v1, v0, La9/n;

    .line 545
    .line 546
    if-eqz v1, :cond_f

    .line 547
    .line 548
    check-cast v0, La9/n;

    .line 549
    .line 550
    throw v0

    .line 551
    :cond_f
    new-instance v1, La9/n;

    .line 552
    .line 553
    new-instance v2, Ljava/lang/StringBuilder;

    .line 554
    .line 555
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 556
    .line 557
    .line 558
    const-string v3, "Session.connect: "

    .line 559
    .line 560
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v2

    .line 570
    invoke-direct {v1, v2, v0}, La9/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 571
    .line 572
    .line 573
    throw v1

    .line 574
    :cond_10
    check-cast v0, Ljava/lang/RuntimeException;

    .line 575
    .line 576
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 577
    :goto_7
    iget-object v1, p0, La9/f0;->y:[B

    .line 578
    .line 579
    invoke-static {v1}, La9/h0;->d([B)V

    .line 580
    .line 581
    .line 582
    iput-object v4, p0, La9/f0;->y:[B

    .line 583
    .line 584
    throw v0

    .line 585
    :cond_11
    :try_start_a
    new-instance v0, Ljava/lang/ClassCastException;

    .line 586
    .line 587
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 588
    .line 589
    .line 590
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 591
    :catch_3
    move-exception v0

    .line 592
    new-instance v1, La9/n;

    .line 593
    .line 594
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v2

    .line 598
    invoke-direct {v1, v2, v0}, La9/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 599
    .line 600
    .line 601
    throw v1

    .line 602
    :cond_12
    new-instance v0, La9/n;

    .line 603
    .line 604
    const-string v1, "session is already connected"

    .line 605
    .line 606
    invoke-direct {v0, v1}, La9/n;-><init>(Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    goto :goto_9

    .line 610
    :goto_8
    throw v0

    .line 611
    :goto_9
    goto :goto_8
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-boolean v0, p0, La9/f0;->h:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, La9/f0;->z:La9/l;

    .line 7
    .line 8
    invoke-virtual {v0}, La9/l;->c()Lgf/g;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, La9/b;->c(La9/f0;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, La9/f0;->h:Z

    .line 20
    .line 21
    invoke-static {p0}, La9/c0;->a(La9/f0;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, La9/d;->f(La9/f0;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, La9/e;->e(La9/f0;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, La9/f0;->p:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter v1

    .line 33
    :try_start_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    const/4 v1, 0x0

    .line 35
    :try_start_1
    iget-object v2, p0, La9/f0;->e:La2/g1;

    .line 36
    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    iget-object v2, v2, La2/g1;->b:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v2, Ljava/io/InputStream;

    .line 42
    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object v2, p0, La9/f0;->e:La2/g1;

    .line 49
    .line 50
    iget-object v2, v2, La2/g1;->c:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v2, Ljava/io/OutputStream;

    .line 53
    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 57
    .line 58
    .line 59
    :cond_2
    iget-object v2, p0, La9/f0;->e:La2/g1;

    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    :cond_3
    iget-object v2, p0, La9/f0;->f:Ljava/net/Socket;

    .line 65
    .line 66
    if-eqz v2, :cond_4

    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 69
    .line 70
    .line 71
    :catch_0
    :cond_4
    iput-object v1, p0, La9/f0;->e:La2/g1;

    .line 72
    .line 73
    iput-object v1, p0, La9/f0;->f:Ljava/net/Socket;

    .line 74
    .line 75
    iput v0, p0, La9/f0;->d:I

    .line 76
    .line 77
    const/4 v1, 0x1

    .line 78
    iput-boolean v1, p0, La9/f0;->k:Z

    .line 79
    .line 80
    iput-boolean v0, p0, La9/f0;->l:Z

    .line 81
    .line 82
    iput-boolean v0, p0, La9/f0;->i:Z

    .line 83
    .line 84
    iget-object v0, p0, La9/f0;->z:La9/l;

    .line 85
    .line 86
    invoke-virtual {v0, p0}, La9/l;->d(La9/f0;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :catchall_0
    move-exception v0

    .line 91
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    throw v0
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "PubkeyAcceptedKeyTypes"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p1, "PubkeyAcceptedAlgorithms"

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, La9/f0;->s:Ljava/util/Hashtable;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    instance-of v1, v0, Ljava/lang/String;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    check-cast v0, Ljava/lang/String;

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_1
    invoke-static {p1}, La9/l;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    instance-of v0, p1, Ljava/lang/String;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_2
    const/4 p1, 0x0

    .line 36
    return-object p1
.end method

.method public final e(La9/a;)V
    .locals 11

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p1}, La9/a;->reset()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, La9/f0;->e:La2/g1;

    .line 5
    .line 6
    iget-object v1, p1, La9/a;->e:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, [B

    .line 9
    .line 10
    iget v2, p1, La9/a;->b:I

    .line 11
    .line 12
    iget v3, p0, La9/f0;->B:I

    .line 13
    .line 14
    invoke-virtual {v0, v2, v3, v1}, La2/g1;->S(II[B)V

    .line 15
    .line 16
    .line 17
    iget v0, p1, La9/a;->b:I

    .line 18
    .line 19
    iget v1, p0, La9/f0;->B:I

    .line 20
    .line 21
    add-int/2addr v0, v1

    .line 22
    iput v0, p1, La9/a;->b:I

    .line 23
    .line 24
    iget-object v2, p1, La9/a;->e:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v2, [B

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    aget-byte v4, v2, v3

    .line 30
    .line 31
    shl-int/lit8 v4, v4, 0x18

    .line 32
    .line 33
    const/high16 v5, -0x1000000

    .line 34
    .line 35
    and-int/2addr v4, v5

    .line 36
    const/4 v5, 0x1

    .line 37
    aget-byte v6, v2, v5

    .line 38
    .line 39
    shl-int/lit8 v6, v6, 0x10

    .line 40
    .line 41
    const/high16 v7, 0xff0000

    .line 42
    .line 43
    and-int/2addr v6, v7

    .line 44
    or-int/2addr v4, v6

    .line 45
    const/4 v6, 0x2

    .line 46
    aget-byte v7, v2, v6

    .line 47
    .line 48
    shl-int/lit8 v7, v7, 0x8

    .line 49
    .line 50
    const v8, 0xff00

    .line 51
    .line 52
    .line 53
    and-int/2addr v7, v8

    .line 54
    or-int/2addr v4, v7

    .line 55
    const/4 v7, 0x3

    .line 56
    aget-byte v8, v2, v7

    .line 57
    .line 58
    and-int/lit16 v8, v8, 0xff

    .line 59
    .line 60
    or-int/2addr v4, v8

    .line 61
    const/4 v8, 0x0

    .line 62
    const/4 v9, 0x5

    .line 63
    if-lt v4, v9, :cond_15

    .line 64
    .line 65
    const/high16 v10, 0x40000

    .line 66
    .line 67
    if-gt v4, v10, :cond_15

    .line 68
    .line 69
    add-int/lit8 v4, v4, 0x4

    .line 70
    .line 71
    sub-int/2addr v4, v1

    .line 72
    add-int v1, v0, v4

    .line 73
    .line 74
    array-length v10, v2

    .line 75
    if-le v1, v10, :cond_1

    .line 76
    .line 77
    new-array v1, v1, [B

    .line 78
    .line 79
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    .line 81
    .line 82
    iput-object v1, p1, La9/a;->e:Ljava/lang/Object;

    .line 83
    .line 84
    :cond_1
    iget v0, p0, La9/f0;->B:I

    .line 85
    .line 86
    rem-int v0, v4, v0

    .line 87
    .line 88
    if-nez v0, :cond_14

    .line 89
    .line 90
    if-lez v4, :cond_2

    .line 91
    .line 92
    iget-object v0, p0, La9/f0;->e:La2/g1;

    .line 93
    .line 94
    iget-object v1, p1, La9/a;->e:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v1, [B

    .line 97
    .line 98
    iget v2, p1, La9/a;->b:I

    .line 99
    .line 100
    invoke-virtual {v0, v2, v4, v1}, La2/g1;->S(II[B)V

    .line 101
    .line 102
    .line 103
    iget v0, p1, La9/a;->b:I

    .line 104
    .line 105
    add-int/2addr v0, v4

    .line 106
    iput v0, p1, La9/a;->b:I

    .line 107
    .line 108
    :cond_2
    iget v0, p0, La9/f0;->d:I

    .line 109
    .line 110
    add-int/2addr v0, v5

    .line 111
    iput v0, p0, La9/f0;->d:I

    .line 112
    .line 113
    if-nez v0, :cond_5

    .line 114
    .line 115
    iget-boolean v0, p0, La9/f0;->m:Z

    .line 116
    .line 117
    if-nez v0, :cond_3

    .line 118
    .line 119
    iget-boolean v0, p0, La9/f0;->n:Z

    .line 120
    .line 121
    if-eqz v0, :cond_5

    .line 122
    .line 123
    :cond_3
    iget-boolean v0, p0, La9/f0;->k:Z

    .line 124
    .line 125
    if-nez v0, :cond_4

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_4
    new-instance p1, La9/m;

    .line 129
    .line 130
    const-string v0, "incoming sequence number wrapped during initial KEX"

    .line 131
    .line 132
    invoke-direct {p1, v0}, La9/m;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p1

    .line 136
    :cond_5
    :goto_1
    iget-object v0, p1, La9/a;->e:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v0, [B

    .line 139
    .line 140
    aget-byte v0, v0, v9

    .line 141
    .line 142
    and-int/lit16 v0, v0, 0xff

    .line 143
    .line 144
    if-eq v0, v5, :cond_13

    .line 145
    .line 146
    iget-boolean v1, p0, La9/f0;->k:Z

    .line 147
    .line 148
    if-eqz v1, :cond_6

    .line 149
    .line 150
    iget-boolean v1, p0, La9/f0;->l:Z

    .line 151
    .line 152
    if-eqz v1, :cond_6

    .line 153
    .line 154
    goto/16 :goto_6

    .line 155
    .line 156
    :cond_6
    if-ne v0, v6, :cond_7

    .line 157
    .line 158
    goto/16 :goto_0

    .line 159
    .line 160
    :cond_7
    if-ne v0, v7, :cond_8

    .line 161
    .line 162
    iput v3, p1, La9/a;->c:I

    .line 163
    .line 164
    invoke-virtual {p1}, La9/a;->g()I

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1}, La9/a;->k()I

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1}, La9/a;->g()I

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, La9/f0;->z:La9/l;

    .line 174
    .line 175
    invoke-virtual {v0}, La9/l;->c()Lgf/g;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :cond_8
    const/4 v1, 0x4

    .line 185
    if-ne v0, v1, :cond_9

    .line 186
    .line 187
    iput v3, p1, La9/a;->c:I

    .line 188
    .line 189
    invoke-virtual {p1}, La9/a;->g()I

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1}, La9/a;->k()I

    .line 193
    .line 194
    .line 195
    goto/16 :goto_0

    .line 196
    .line 197
    :cond_9
    const/16 v1, 0x5d

    .line 198
    .line 199
    if-ne v0, v1, :cond_a

    .line 200
    .line 201
    iput v3, p1, La9/a;->c:I

    .line 202
    .line 203
    invoke-virtual {p1}, La9/a;->g()I

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1}, La9/a;->k()I

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1}, La9/a;->g()I

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    invoke-static {v0, p0}, La9/b;->d(ILa9/f0;)La9/b;

    .line 214
    .line 215
    .line 216
    goto/16 :goto_0

    .line 217
    .line 218
    :cond_a
    const/4 v1, 0x7

    .line 219
    if-ne v0, v1, :cond_11

    .line 220
    .line 221
    iput v3, p1, La9/a;->c:I

    .line 222
    .line 223
    invoke-virtual {p1}, La9/a;->g()I

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1}, La9/a;->k()I

    .line 227
    .line 228
    .line 229
    iget-boolean v0, p0, La9/f0;->j:Z

    .line 230
    .line 231
    if-nez v0, :cond_b

    .line 232
    .line 233
    iget-object v0, p0, La9/f0;->z:La9/l;

    .line 234
    .line 235
    invoke-virtual {v0}, La9/l;->c()Lgf/g;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    goto :goto_2

    .line 243
    :cond_b
    iget-boolean v0, p0, La9/f0;->o:Z

    .line 244
    .line 245
    if-eqz v0, :cond_c

    .line 246
    .line 247
    iget-object v0, p0, La9/f0;->z:La9/l;

    .line 248
    .line 249
    invoke-virtual {v0}, La9/l;->c()Lgf/g;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    goto :goto_2

    .line 257
    :cond_c
    iget-boolean v0, p0, La9/f0;->A:Z

    .line 258
    .line 259
    if-eqz v0, :cond_d

    .line 260
    .line 261
    iget-object v0, p0, La9/f0;->z:La9/l;

    .line 262
    .line 263
    invoke-virtual {v0}, La9/l;->c()Lgf/g;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 268
    .line 269
    .line 270
    goto :goto_2

    .line 271
    :cond_d
    iget-object v0, p0, La9/f0;->z:La9/l;

    .line 272
    .line 273
    invoke-virtual {v0}, La9/l;->c()Lgf/g;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    const/4 v5, 0x0

    .line 281
    :goto_2
    invoke-virtual {p1}, La9/a;->m()J

    .line 282
    .line 283
    .line 284
    move-result-wide v0

    .line 285
    const-wide/16 v6, 0x0

    .line 286
    .line 287
    :goto_3
    cmp-long v2, v6, v0

    .line 288
    .line 289
    if-gez v2, :cond_0

    .line 290
    .line 291
    invoke-virtual {p1}, La9/a;->l()[B

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    invoke-virtual {p1}, La9/a;->l()[B

    .line 296
    .line 297
    .line 298
    move-result-object v4

    .line 299
    if-nez v5, :cond_10

    .line 300
    .line 301
    array-length v8, v2

    .line 302
    sget-object v9, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 303
    .line 304
    new-instance v10, Ljava/lang/String;

    .line 305
    .line 306
    invoke-direct {v10, v2, v3, v8, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 307
    .line 308
    .line 309
    const-string v2, "server-sig-algs"

    .line 310
    .line 311
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    if-eqz v2, :cond_10

    .line 316
    .line 317
    array-length v2, v4

    .line 318
    new-instance v8, Ljava/lang/String;

    .line 319
    .line 320
    invoke-direct {v8, v4, v3, v2, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 321
    .line 322
    .line 323
    iget-object v2, p0, La9/f0;->z:La9/l;

    .line 324
    .line 325
    invoke-virtual {v2}, La9/l;->c()Lgf/g;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    .line 331
    .line 332
    iget-boolean v2, p0, La9/f0;->t:Z

    .line 333
    .line 334
    if-eqz v2, :cond_f

    .line 335
    .line 336
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 337
    .line 338
    .line 339
    move-result v2

    .line 340
    if-nez v2, :cond_e

    .line 341
    .line 342
    const-string v2, ",rsa-sha2-256,rsa-sha2-512"

    .line 343
    .line 344
    invoke-virtual {v8, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    :goto_4
    move-object v8, v2

    .line 349
    goto :goto_5

    .line 350
    :cond_e
    const-string v2, "rsa-sha2-256,rsa-sha2-512"

    .line 351
    .line 352
    goto :goto_4

    .line 353
    :goto_5
    iget-object v2, p0, La9/f0;->z:La9/l;

    .line 354
    .line 355
    invoke-virtual {v2}, La9/l;->c()Lgf/g;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 360
    .line 361
    .line 362
    :cond_f
    invoke-static {v8}, La9/h0;->i(Ljava/lang/String;)[Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    :cond_10
    const-wide/16 v8, 0x1

    .line 366
    .line 367
    add-long/2addr v6, v8

    .line 368
    goto :goto_3

    .line 369
    :cond_11
    const/16 v1, 0x34

    .line 370
    .line 371
    if-eq v0, v1, :cond_12

    .line 372
    .line 373
    :goto_6
    iput v3, p1, La9/a;->c:I

    .line 374
    .line 375
    return-void

    .line 376
    :cond_12
    iput-boolean v5, p0, La9/f0;->o:Z

    .line 377
    .line 378
    throw v8

    .line 379
    :cond_13
    iput v3, p1, La9/a;->c:I

    .line 380
    .line 381
    invoke-virtual {p1}, La9/a;->g()I

    .line 382
    .line 383
    .line 384
    invoke-virtual {p1}, La9/a;->k()I

    .line 385
    .line 386
    .line 387
    invoke-virtual {p1}, La9/a;->g()I

    .line 388
    .line 389
    .line 390
    move-result v0

    .line 391
    invoke-virtual {p1}, La9/a;->l()[B

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    invoke-virtual {p1}, La9/a;->l()[B

    .line 396
    .line 397
    .line 398
    move-result-object p1

    .line 399
    array-length v2, v1

    .line 400
    sget-object v4, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 401
    .line 402
    new-instance v5, Ljava/lang/String;

    .line 403
    .line 404
    invoke-direct {v5, v1, v3, v2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 405
    .line 406
    .line 407
    array-length v1, p1

    .line 408
    new-instance v2, Ljava/lang/String;

    .line 409
    .line 410
    invoke-direct {v2, p1, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 411
    .line 412
    .line 413
    new-instance p1, La9/m;

    .line 414
    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    .line 416
    .line 417
    const-string v3, "SSH_MSG_DISCONNECT: "

    .line 418
    .line 419
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    const-string v0, " "

    .line 426
    .line 427
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    invoke-direct {p1, v0}, La9/m;-><init>(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    throw p1

    .line 447
    :cond_14
    iget-object p1, p0, La9/f0;->z:La9/l;

    .line 448
    .line 449
    invoke-virtual {p1}, La9/l;->c()Lgf/g;

    .line 450
    .line 451
    .line 452
    move-result-object p1

    .line 453
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 454
    .line 455
    .line 456
    throw v8

    .line 457
    :cond_15
    goto :goto_8

    .line 458
    :goto_7
    throw v8

    .line 459
    :goto_8
    goto :goto_7
.end method

.method public final f(La9/a;)V
    .locals 14

    .line 1
    invoke-virtual {p1}, La9/a;->g()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, La9/a;->h()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, La9/a;->d()I

    .line 13
    .line 14
    .line 15
    iget v0, p1, La9/a;->b:I

    .line 16
    .line 17
    add-int/lit8 v0, v0, -0x5

    .line 18
    .line 19
    new-array v0, v0, [B

    .line 20
    .line 21
    iput-object v0, p0, La9/f0;->c:[B

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sub-int/2addr v0, v2

    .line 25
    invoke-virtual {p1}, La9/a;->d()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    sub-int/2addr v0, v1

    .line 30
    new-array v0, v0, [B

    .line 31
    .line 32
    iput-object v0, p0, La9/f0;->c:[B

    .line 33
    .line 34
    :goto_0
    iget-object v0, p1, La9/a;->e:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, [B

    .line 37
    .line 38
    iget p1, p1, La9/a;->c:I

    .line 39
    .line 40
    iget-object v1, p0, La9/f0;->c:[B

    .line 41
    .line 42
    array-length v3, v1

    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-static {v0, p1, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    .line 46
    .line 47
    iget-boolean p1, p0, La9/f0;->k:Z

    .line 48
    .line 49
    const/16 v0, 0x2c

    .line 50
    .line 51
    const/16 v1, 0x11

    .line 52
    .line 53
    if-eqz p1, :cond_e

    .line 54
    .line 55
    iget-boolean p1, p0, La9/f0;->m:Z

    .line 56
    .line 57
    if-nez p1, :cond_1

    .line 58
    .line 59
    iget-boolean p1, p0, La9/f0;->n:Z

    .line 60
    .line 61
    if-eqz p1, :cond_8

    .line 62
    .line 63
    :cond_1
    new-instance p1, La9/a;

    .line 64
    .line 65
    iget-object v3, p0, La9/f0;->c:[B

    .line 66
    .line 67
    invoke-direct {p1, v3}, La9/a;-><init>([B)V

    .line 68
    .line 69
    .line 70
    iput v1, p1, La9/a;->c:I

    .line 71
    .line 72
    invoke-virtual {p1}, La9/a;->l()[B

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const/4 v3, 0x0

    .line 77
    const/4 v5, 0x0

    .line 78
    :goto_1
    array-length v6, p1

    .line 79
    if-ge v3, v6, :cond_5

    .line 80
    .line 81
    :goto_2
    array-length v6, p1

    .line 82
    if-ge v3, v6, :cond_2

    .line 83
    .line 84
    aget-byte v6, p1, v3

    .line 85
    .line 86
    if-eq v6, v0, :cond_2

    .line 87
    .line 88
    add-int/lit8 v3, v3, 0x1

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_2
    if-ne v5, v3, :cond_3

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    sub-int v6, v3, v5

    .line 95
    .line 96
    invoke-static {v5, v6, p1}, La9/h0;->b(II[B)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    const-string v6, "kex-strict-s-v00@openssh.com"

    .line 101
    .line 102
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-eqz v5, :cond_4

    .line 107
    .line 108
    const/4 p1, 0x1

    .line 109
    goto :goto_3

    .line 110
    :cond_4
    add-int/lit8 v5, v3, 0x1

    .line 111
    .line 112
    move v3, v5

    .line 113
    goto :goto_1

    .line 114
    :cond_5
    const/4 p1, 0x0

    .line 115
    :goto_3
    iput-boolean p1, p0, La9/f0;->l:Z

    .line 116
    .line 117
    iget-boolean p1, p0, La9/f0;->l:Z

    .line 118
    .line 119
    if-eqz p1, :cond_7

    .line 120
    .line 121
    iget-object p1, p0, La9/f0;->z:La9/l;

    .line 122
    .line 123
    invoke-virtual {p1}, La9/l;->c()Lgf/g;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    iget p1, p0, La9/f0;->d:I

    .line 131
    .line 132
    if-ne p1, v2, :cond_6

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_6
    new-instance p1, La9/m;

    .line 136
    .line 137
    const-string v0, "KEXINIT not first packet from server"

    .line 138
    .line 139
    invoke-direct {p1, v0}, La9/m;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p1

    .line 143
    :cond_7
    iget-boolean p1, p0, La9/f0;->n:Z

    .line 144
    .line 145
    if-nez p1, :cond_d

    .line 146
    .line 147
    :cond_8
    :goto_4
    iget-boolean p1, p0, La9/f0;->j:Z

    .line 148
    .line 149
    if-eqz p1, :cond_e

    .line 150
    .line 151
    new-instance p1, La9/a;

    .line 152
    .line 153
    iget-object v3, p0, La9/f0;->c:[B

    .line 154
    .line 155
    invoke-direct {p1, v3}, La9/a;-><init>([B)V

    .line 156
    .line 157
    .line 158
    iput v1, p1, La9/a;->c:I

    .line 159
    .line 160
    invoke-virtual {p1}, La9/a;->l()[B

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    const/4 v3, 0x0

    .line 165
    const/4 v5, 0x0

    .line 166
    :goto_5
    array-length v6, p1

    .line 167
    if-ge v3, v6, :cond_c

    .line 168
    .line 169
    :goto_6
    array-length v6, p1

    .line 170
    if-ge v3, v6, :cond_9

    .line 171
    .line 172
    aget-byte v6, p1, v3

    .line 173
    .line 174
    if-eq v6, v0, :cond_9

    .line 175
    .line 176
    add-int/lit8 v3, v3, 0x1

    .line 177
    .line 178
    goto :goto_6

    .line 179
    :cond_9
    if-ne v5, v3, :cond_a

    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_a
    sub-int v6, v3, v5

    .line 183
    .line 184
    invoke-static {v5, v6, p1}, La9/h0;->b(II[B)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    const-string v6, "ext-info-s"

    .line 189
    .line 190
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    if-eqz v5, :cond_b

    .line 195
    .line 196
    goto :goto_7

    .line 197
    :cond_b
    add-int/lit8 v5, v3, 0x1

    .line 198
    .line 199
    move v3, v5

    .line 200
    goto :goto_5

    .line 201
    :cond_c
    const/4 v2, 0x0

    .line 202
    :goto_7
    iput-boolean v2, p0, La9/f0;->i:Z

    .line 203
    .line 204
    iget-boolean p1, p0, La9/f0;->i:Z

    .line 205
    .line 206
    if-eqz p1, :cond_e

    .line 207
    .line 208
    iget-object p1, p0, La9/f0;->z:La9/l;

    .line 209
    .line 210
    invoke-virtual {p1}, La9/l;->c()Lgf/g;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    goto :goto_8

    .line 218
    :cond_d
    new-instance p1, La9/m;

    .line 219
    .line 220
    const-string v0, "Strict KEX not supported by server"

    .line 221
    .line 222
    invoke-direct {p1, v0}, La9/m;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    throw p1

    .line 226
    :cond_e
    :goto_8
    iget-boolean p1, p0, La9/f0;->A:Z

    .line 227
    .line 228
    if-nez p1, :cond_f

    .line 229
    .line 230
    invoke-virtual {p0}, La9/f0;->g()V

    .line 231
    .line 232
    .line 233
    :cond_f
    iget-object p1, p0, La9/f0;->c:[B

    .line 234
    .line 235
    const/16 v2, 0xa

    .line 236
    .line 237
    new-array v3, v2, [Ljava/lang/String;

    .line 238
    .line 239
    new-instance v5, La9/a;

    .line 240
    .line 241
    invoke-direct {v5, p1}, La9/a;-><init>([B)V

    .line 242
    .line 243
    .line 244
    iput v1, v5, La9/a;->c:I

    .line 245
    .line 246
    new-instance p1, La9/a;

    .line 247
    .line 248
    const/4 v6, 0x0

    .line 249
    invoke-direct {p1, v6}, La9/a;-><init>([B)V

    .line 250
    .line 251
    .line 252
    iput v1, p1, La9/a;->c:I

    .line 253
    .line 254
    iget-object v1, p0, La9/f0;->z:La9/l;

    .line 255
    .line 256
    invoke-virtual {v1}, La9/l;->c()Lgf/g;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    .line 262
    .line 263
    const/4 v1, 0x0

    .line 264
    :goto_9
    if-ge v1, v2, :cond_19

    .line 265
    .line 266
    invoke-virtual {v5}, La9/a;->l()[B

    .line 267
    .line 268
    .line 269
    move-result-object v7

    .line 270
    invoke-virtual {p1}, La9/a;->l()[B

    .line 271
    .line 272
    .line 273
    move-result-object v8

    .line 274
    const/4 v9, 0x0

    .line 275
    const/4 v10, 0x0

    .line 276
    :goto_a
    array-length v11, v8

    .line 277
    if-ge v9, v11, :cond_16

    .line 278
    .line 279
    :goto_b
    array-length v11, v8

    .line 280
    if-ge v9, v11, :cond_10

    .line 281
    .line 282
    aget-byte v11, v8, v9

    .line 283
    .line 284
    if-eq v11, v0, :cond_10

    .line 285
    .line 286
    add-int/lit8 v9, v9, 0x1

    .line 287
    .line 288
    goto :goto_b

    .line 289
    :cond_10
    if-eq v10, v9, :cond_15

    .line 290
    .line 291
    sub-int v11, v9, v10

    .line 292
    .line 293
    invoke-static {v10, v11, v8}, La9/h0;->b(II[B)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v10

    .line 297
    const/4 v11, 0x0

    .line 298
    const/4 v12, 0x0

    .line 299
    :goto_c
    array-length v13, v7

    .line 300
    if-ge v11, v13, :cond_14

    .line 301
    .line 302
    :goto_d
    array-length v13, v7

    .line 303
    if-ge v11, v13, :cond_11

    .line 304
    .line 305
    aget-byte v13, v7, v11

    .line 306
    .line 307
    if-eq v13, v0, :cond_11

    .line 308
    .line 309
    add-int/lit8 v11, v11, 0x1

    .line 310
    .line 311
    goto :goto_d

    .line 312
    :cond_11
    if-eq v12, v11, :cond_13

    .line 313
    .line 314
    sub-int v13, v11, v12

    .line 315
    .line 316
    invoke-static {v12, v13, v7}, La9/h0;->b(II[B)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v12

    .line 320
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    move-result v12

    .line 324
    if-eqz v12, :cond_12

    .line 325
    .line 326
    aput-object v10, v3, v1

    .line 327
    .line 328
    goto :goto_e

    .line 329
    :cond_12
    add-int/lit8 v12, v11, 0x1

    .line 330
    .line 331
    move v11, v12

    .line 332
    goto :goto_c

    .line 333
    :cond_13
    new-instance p1, La9/m;

    .line 334
    .line 335
    array-length v0, v8

    .line 336
    sget-object v2, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 337
    .line 338
    new-instance v3, Ljava/lang/String;

    .line 339
    .line 340
    invoke-direct {v3, v8, v4, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 341
    .line 342
    .line 343
    array-length v0, v7

    .line 344
    new-instance v5, Ljava/lang/String;

    .line 345
    .line 346
    invoke-direct {v5, v7, v4, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 347
    .line 348
    .line 349
    invoke-direct {p1, v3, v1, v5}, La9/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 350
    .line 351
    .line 352
    throw p1

    .line 353
    :cond_14
    add-int/lit8 v10, v9, 0x1

    .line 354
    .line 355
    move v9, v10

    .line 356
    goto :goto_a

    .line 357
    :cond_15
    new-instance p1, La9/m;

    .line 358
    .line 359
    array-length v0, v8

    .line 360
    sget-object v2, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 361
    .line 362
    new-instance v3, Ljava/lang/String;

    .line 363
    .line 364
    invoke-direct {v3, v8, v4, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 365
    .line 366
    .line 367
    array-length v0, v7

    .line 368
    new-instance v5, Ljava/lang/String;

    .line 369
    .line 370
    invoke-direct {v5, v7, v4, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 371
    .line 372
    .line 373
    invoke-direct {p1, v3, v1, v5}, La9/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 374
    .line 375
    .line 376
    throw p1

    .line 377
    :cond_16
    :goto_e
    if-nez v9, :cond_17

    .line 378
    .line 379
    const-string v7, ""

    .line 380
    .line 381
    aput-object v7, v3, v1

    .line 382
    .line 383
    goto :goto_f

    .line 384
    :cond_17
    aget-object v9, v3, v1

    .line 385
    .line 386
    if-eqz v9, :cond_18

    .line 387
    .line 388
    :goto_f
    add-int/lit8 v1, v1, 0x1

    .line 389
    .line 390
    goto :goto_9

    .line 391
    :cond_18
    new-instance p1, La9/m;

    .line 392
    .line 393
    array-length v0, v8

    .line 394
    sget-object v2, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 395
    .line 396
    new-instance v3, Ljava/lang/String;

    .line 397
    .line 398
    invoke-direct {v3, v8, v4, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 399
    .line 400
    .line 401
    array-length v0, v7

    .line 402
    new-instance v5, Ljava/lang/String;

    .line 403
    .line 404
    invoke-direct {v5, v7, v4, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 405
    .line 406
    .line 407
    invoke-direct {p1, v3, v1, v5}, La9/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 408
    .line 409
    .line 410
    throw p1

    .line 411
    :cond_19
    const/4 p1, 0x3

    .line 412
    :try_start_0
    aget-object p1, v3, p1

    .line 413
    .line 414
    invoke-virtual {p0, p1}, La9/f0;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object p1

    .line 418
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 419
    .line 420
    .line 421
    move-result-object p1

    .line 422
    const-class v0, La9/f;

    .line 423
    .line 424
    invoke-virtual {p1, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 425
    .line 426
    .line 427
    move-result-object p1

    .line 428
    invoke-virtual {p1, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 429
    .line 430
    .line 431
    move-result-object p1

    .line 432
    invoke-virtual {p1, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    .line 436
    if-nez p1, :cond_1a

    .line 437
    .line 438
    :try_start_1
    throw v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 439
    :catch_0
    move-exception p1

    .line 440
    goto :goto_10

    .line 441
    :cond_1a
    :try_start_2
    new-instance p1, Ljava/lang/ClassCastException;

    .line 442
    .line 443
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 444
    .line 445
    .line 446
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_1

    .line 447
    :catch_1
    move-exception p1

    .line 448
    :goto_10
    new-instance v0, La9/n;

    .line 449
    .line 450
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    invoke-direct {v0, v1, p1}, La9/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 455
    .line 456
    .line 457
    goto :goto_12

    .line 458
    :goto_11
    throw v0

    .line 459
    :goto_12
    goto :goto_11
.end method

.method public final g()V
    .locals 14

    .line 1
    iget-boolean v0, p0, La9/f0;->A:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "cipher.c2s"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, La9/f0;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "cipher.s2c"

    .line 13
    .line 14
    invoke-virtual {p0, v2}, La9/f0;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const-string v4, "CheckCiphers"

    .line 19
    .line 20
    invoke-virtual {p0, v4}, La9/f0;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    const/4 v5, -0x1

    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v7, 0x0

    .line 27
    if-eqz v4, :cond_4

    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result v8

    .line 33
    if-nez v8, :cond_1

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_1
    iget-object v8, p0, La9/f0;->z:La9/l;

    .line 37
    .line 38
    invoke-virtual {v8}, La9/l;->c()Lgf/g;

    .line 39
    .line 40
    .line 41
    move-result-object v9

    .line 42
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, La9/f0;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p0, v2}, La9/f0;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    new-instance v9, Ljava/util/Vector;

    .line 54
    .line 55
    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-static {v4}, La9/h0;->i(Ljava/lang/String;)[Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    const/4 v10, 0x0

    .line 63
    :goto_0
    array-length v11, v4

    .line 64
    if-ge v10, v11, :cond_3

    .line 65
    .line 66
    aget-object v11, v4, v10

    .line 67
    .line 68
    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v12

    .line 72
    if-ne v12, v5, :cond_2

    .line 73
    .line 74
    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v12

    .line 78
    if-ne v12, v5, :cond_2

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    invoke-virtual {p0, v11}, La9/f0;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v12

    .line 85
    invoke-static {v12}, La9/f0;->a(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v9, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :goto_1
    add-int/lit8 v10, v10, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_5

    .line 99
    .line 100
    :cond_4
    :goto_2
    move-object v0, v7

    .line 101
    goto :goto_3

    .line 102
    :cond_5
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    new-array v0, v0, [Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v9}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    invoke-static {v2, v6, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v8}, La9/l;->c()Lgf/g;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    :goto_3
    if-eqz v0, :cond_7

    .line 127
    .line 128
    array-length v2, v0

    .line 129
    if-lez v2, :cond_7

    .line 130
    .line 131
    iget-object v2, p0, La9/f0;->z:La9/l;

    .line 132
    .line 133
    invoke-virtual {v2}, La9/l;->c()Lgf/g;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    invoke-static {v1, v0}, La9/h0;->f(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-static {v3, v0}, La9/h0;->f(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    if-eqz v1, :cond_6

    .line 149
    .line 150
    if-eqz v0, :cond_6

    .line 151
    .line 152
    iget-object v0, p0, La9/f0;->z:La9/l;

    .line 153
    .line 154
    invoke-virtual {v0}, La9/l;->c()Lgf/g;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_6
    new-instance v0, La9/n;

    .line 163
    .line 164
    const-string v1, "There are not any available ciphers."

    .line 165
    .line 166
    invoke-direct {v0, v1}, La9/n;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw v0

    .line 170
    :cond_7
    :goto_4
    const-string v0, "mac.c2s"

    .line 171
    .line 172
    invoke-virtual {p0, v0}, La9/f0;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    const-string v2, "mac.s2c"

    .line 177
    .line 178
    invoke-virtual {p0, v2}, La9/f0;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    const-string v4, "CheckMacs"

    .line 183
    .line 184
    invoke-virtual {p0, v4}, La9/f0;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    if-eqz v4, :cond_c

    .line 189
    .line 190
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 191
    .line 192
    .line 193
    move-result v8

    .line 194
    if-nez v8, :cond_8

    .line 195
    .line 196
    goto :goto_7

    .line 197
    :cond_8
    iget-object v8, p0, La9/f0;->z:La9/l;

    .line 198
    .line 199
    invoke-virtual {v8}, La9/l;->c()Lgf/g;

    .line 200
    .line 201
    .line 202
    move-result-object v9

    .line 203
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0, v0}, La9/f0;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {p0, v2}, La9/f0;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    new-instance v9, Ljava/util/Vector;

    .line 215
    .line 216
    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 217
    .line 218
    .line 219
    invoke-static {v4}, La9/h0;->i(Ljava/lang/String;)[Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    const/4 v10, 0x0

    .line 224
    :goto_5
    array-length v11, v4

    .line 225
    if-ge v10, v11, :cond_b

    .line 226
    .line 227
    aget-object v11, v4, v10

    .line 228
    .line 229
    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    move-result v12

    .line 233
    if-ne v12, v5, :cond_9

    .line 234
    .line 235
    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    move-result v12

    .line 239
    if-ne v12, v5, :cond_9

    .line 240
    .line 241
    goto :goto_6

    .line 242
    :cond_9
    invoke-virtual {p0, v11}, La9/f0;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v12

    .line 246
    :try_start_0
    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 247
    .line 248
    .line 249
    move-result-object v12

    .line 250
    const-class v13, La9/a0;

    .line 251
    .line 252
    invoke-virtual {v12, v13}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    move-result-object v12

    .line 256
    invoke-virtual {v12, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 257
    .line 258
    .line 259
    move-result-object v12

    .line 260
    invoke-virtual {v12, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    if-nez v12, :cond_a

    .line 265
    .line 266
    :try_start_1
    throw v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 267
    :cond_a
    :try_start_2
    new-instance v12, Ljava/lang/ClassCastException;

    .line 268
    .line 269
    invoke-direct {v12}, Ljava/lang/ClassCastException;-><init>()V

    .line 270
    .line 271
    .line 272
    throw v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_0

    .line 273
    :catch_0
    invoke-virtual {v9, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    :goto_6
    add-int/lit8 v10, v10, 0x1

    .line 277
    .line 278
    goto :goto_5

    .line 279
    :cond_b
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    if-nez v0, :cond_d

    .line 284
    .line 285
    :cond_c
    :goto_7
    move-object v0, v7

    .line 286
    goto :goto_8

    .line 287
    :cond_d
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    new-array v0, v0, [Ljava/lang/String;

    .line 292
    .line 293
    invoke-virtual {v9}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    .line 298
    .line 299
    .line 300
    move-result v4

    .line 301
    invoke-static {v2, v6, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v8}, La9/l;->c()Lgf/g;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 309
    .line 310
    .line 311
    :goto_8
    if-eqz v0, :cond_f

    .line 312
    .line 313
    array-length v2, v0

    .line 314
    if-lez v2, :cond_f

    .line 315
    .line 316
    iget-object v2, p0, La9/f0;->z:La9/l;

    .line 317
    .line 318
    invoke-virtual {v2}, La9/l;->c()Lgf/g;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 323
    .line 324
    .line 325
    invoke-static {v1, v0}, La9/h0;->f(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    invoke-static {v3, v0}, La9/h0;->f(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    if-eqz v1, :cond_e

    .line 334
    .line 335
    if-eqz v0, :cond_e

    .line 336
    .line 337
    iget-object v0, p0, La9/f0;->z:La9/l;

    .line 338
    .line 339
    invoke-virtual {v0}, La9/l;->c()Lgf/g;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 344
    .line 345
    .line 346
    goto :goto_9

    .line 347
    :cond_e
    new-instance v0, La9/n;

    .line 348
    .line 349
    const-string v1, "There are not any available macs."

    .line 350
    .line 351
    invoke-direct {v0, v1}, La9/n;-><init>(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    throw v0

    .line 355
    :cond_f
    :goto_9
    const-string v0, "kex"

    .line 356
    .line 357
    invoke-virtual {p0, v0}, La9/f0;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    const-string v1, "CheckKexes"

    .line 362
    .line 363
    invoke-virtual {p0, v1}, La9/f0;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    if-eqz v1, :cond_11

    .line 368
    .line 369
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 370
    .line 371
    .line 372
    move-result v2

    .line 373
    if-nez v2, :cond_10

    .line 374
    .line 375
    goto :goto_b

    .line 376
    :cond_10
    iget-object v2, p0, La9/f0;->z:La9/l;

    .line 377
    .line 378
    invoke-virtual {v2}, La9/l;->c()Lgf/g;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 383
    .line 384
    .line 385
    new-instance v3, Ljava/util/Vector;

    .line 386
    .line 387
    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 388
    .line 389
    .line 390
    invoke-static {v1}, La9/h0;->i(Ljava/lang/String;)[Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    const/4 v4, 0x0

    .line 395
    :goto_a
    array-length v5, v1

    .line 396
    if-lt v4, v5, :cond_13

    .line 397
    .line 398
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    .line 399
    .line 400
    .line 401
    move-result v1

    .line 402
    if-nez v1, :cond_12

    .line 403
    .line 404
    :cond_11
    :goto_b
    move-object v1, v7

    .line 405
    goto :goto_c

    .line 406
    :cond_12
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    .line 407
    .line 408
    .line 409
    move-result v1

    .line 410
    new-array v1, v1, [Ljava/lang/String;

    .line 411
    .line 412
    invoke-virtual {v3}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v4

    .line 416
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    .line 417
    .line 418
    .line 419
    move-result v3

    .line 420
    invoke-static {v4, v6, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v2}, La9/l;->c()Lgf/g;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 428
    .line 429
    .line 430
    goto :goto_c

    .line 431
    :cond_13
    aget-object v5, v1, v4

    .line 432
    .line 433
    invoke-virtual {p0, v5}, La9/f0;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v5

    .line 437
    :try_start_3
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 438
    .line 439
    .line 440
    move-result-object v5

    .line 441
    const-class v8, La9/o;

    .line 442
    .line 443
    invoke-virtual {v5, v8}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 444
    .line 445
    .line 446
    move-result-object v5

    .line 447
    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 448
    .line 449
    .line 450
    move-result-object v5

    .line 451
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_3} :catch_1

    .line 455
    if-nez v5, :cond_14

    .line 456
    .line 457
    :try_start_4
    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 458
    :cond_14
    :try_start_5
    new-instance v5, Ljava/lang/ClassCastException;

    .line 459
    .line 460
    invoke-direct {v5}, Ljava/lang/ClassCastException;-><init>()V

    .line 461
    .line 462
    .line 463
    throw v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_5 .. :try_end_5} :catch_1

    .line 464
    :catch_1
    aget-object v5, v1, v4

    .line 465
    .line 466
    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 467
    .line 468
    .line 469
    add-int/lit8 v4, v4, 0x1

    .line 470
    .line 471
    goto :goto_a

    .line 472
    :goto_c
    if-eqz v1, :cond_16

    .line 473
    .line 474
    array-length v2, v1

    .line 475
    if-lez v2, :cond_16

    .line 476
    .line 477
    iget-object v2, p0, La9/f0;->z:La9/l;

    .line 478
    .line 479
    invoke-virtual {v2}, La9/l;->c()Lgf/g;

    .line 480
    .line 481
    .line 482
    move-result-object v2

    .line 483
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 484
    .line 485
    .line 486
    invoke-static {v0, v1}, La9/h0;->f(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    if-eqz v0, :cond_15

    .line 491
    .line 492
    iget-object v0, p0, La9/f0;->z:La9/l;

    .line 493
    .line 494
    invoke-virtual {v0}, La9/l;->c()Lgf/g;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 499
    .line 500
    .line 501
    goto :goto_d

    .line 502
    :cond_15
    new-instance v0, La9/n;

    .line 503
    .line 504
    const-string v1, "There are not any available kexes."

    .line 505
    .line 506
    invoke-direct {v0, v1}, La9/n;-><init>(Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    throw v0

    .line 510
    :cond_16
    :goto_d
    iget-boolean v0, p0, La9/f0;->j:Z

    .line 511
    .line 512
    if-eqz v0, :cond_17

    .line 513
    .line 514
    iget-boolean v0, p0, La9/f0;->o:Z

    .line 515
    .line 516
    :cond_17
    iget-boolean v0, p0, La9/f0;->m:Z

    .line 517
    .line 518
    if-nez v0, :cond_18

    .line 519
    .line 520
    iget-boolean v0, p0, La9/f0;->n:Z

    .line 521
    .line 522
    if-eqz v0, :cond_19

    .line 523
    .line 524
    :cond_18
    iget-boolean v0, p0, La9/f0;->k:Z

    .line 525
    .line 526
    :cond_19
    const-string v0, "server_host_key"

    .line 527
    .line 528
    invoke-virtual {p0, v0}, La9/f0;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    const-string v1, "CheckSignatures"

    .line 533
    .line 534
    invoke-virtual {p0, v1}, La9/f0;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    if-eqz v1, :cond_1b

    .line 539
    .line 540
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 541
    .line 542
    .line 543
    move-result v2

    .line 544
    if-nez v2, :cond_1a

    .line 545
    .line 546
    goto :goto_f

    .line 547
    :cond_1a
    iget-object v2, p0, La9/f0;->z:La9/l;

    .line 548
    .line 549
    invoke-virtual {v2}, La9/l;->c()Lgf/g;

    .line 550
    .line 551
    .line 552
    move-result-object v3

    .line 553
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 554
    .line 555
    .line 556
    new-instance v3, Ljava/util/Vector;

    .line 557
    .line 558
    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 559
    .line 560
    .line 561
    invoke-static {v1}, La9/h0;->i(Ljava/lang/String;)[Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v1

    .line 565
    const/4 v4, 0x0

    .line 566
    :goto_e
    array-length v5, v1

    .line 567
    if-lt v4, v5, :cond_1d

    .line 568
    .line 569
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    .line 570
    .line 571
    .line 572
    move-result v1

    .line 573
    if-nez v1, :cond_1c

    .line 574
    .line 575
    :cond_1b
    :goto_f
    move-object v1, v7

    .line 576
    goto :goto_10

    .line 577
    :cond_1c
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    .line 578
    .line 579
    .line 580
    move-result v1

    .line 581
    new-array v1, v1, [Ljava/lang/String;

    .line 582
    .line 583
    invoke-virtual {v3}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object v4

    .line 587
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    .line 588
    .line 589
    .line 590
    move-result v3

    .line 591
    invoke-static {v4, v6, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v2}, La9/l;->c()Lgf/g;

    .line 595
    .line 596
    .line 597
    move-result-object v2

    .line 598
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 599
    .line 600
    .line 601
    goto :goto_10

    .line 602
    :cond_1d
    :try_start_6
    aget-object v5, v1, v4

    .line 603
    .line 604
    invoke-static {v5}, La9/l;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v5

    .line 608
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 609
    .line 610
    .line 611
    move-result-object v5

    .line 612
    const-class v8, La9/g0;

    .line 613
    .line 614
    invoke-virtual {v5, v8}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 615
    .line 616
    .line 617
    move-result-object v5

    .line 618
    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 619
    .line 620
    .line 621
    move-result-object v5

    .line 622
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    .line 624
    .line 625
    move-result-object v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_6 .. :try_end_6} :catch_2

    .line 626
    if-nez v5, :cond_1e

    .line 627
    .line 628
    :try_start_7
    throw v7
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 629
    :cond_1e
    :try_start_8
    new-instance v5, Ljava/lang/ClassCastException;

    .line 630
    .line 631
    invoke-direct {v5}, Ljava/lang/ClassCastException;-><init>()V

    .line 632
    .line 633
    .line 634
    throw v5
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_8 .. :try_end_8} :catch_2

    .line 635
    :catch_2
    aget-object v5, v1, v4

    .line 636
    .line 637
    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 638
    .line 639
    .line 640
    add-int/lit8 v4, v4, 0x1

    .line 641
    .line 642
    goto :goto_e

    .line 643
    :goto_10
    if-eqz v1, :cond_20

    .line 644
    .line 645
    array-length v2, v1

    .line 646
    if-lez v2, :cond_20

    .line 647
    .line 648
    iget-object v2, p0, La9/f0;->z:La9/l;

    .line 649
    .line 650
    invoke-virtual {v2}, La9/l;->c()Lgf/g;

    .line 651
    .line 652
    .line 653
    move-result-object v2

    .line 654
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 655
    .line 656
    .line 657
    invoke-static {v0, v1}, La9/h0;->f(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    if-eqz v0, :cond_1f

    .line 662
    .line 663
    iget-object v1, p0, La9/f0;->z:La9/l;

    .line 664
    .line 665
    invoke-virtual {v1}, La9/l;->c()Lgf/g;

    .line 666
    .line 667
    .line 668
    move-result-object v1

    .line 669
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 670
    .line 671
    .line 672
    goto :goto_11

    .line 673
    :cond_1f
    new-instance v0, La9/n;

    .line 674
    .line 675
    const-string v1, "There are not any available sig algorithm."

    .line 676
    .line 677
    invoke-direct {v0, v1}, La9/n;-><init>(Ljava/lang/String;)V

    .line 678
    .line 679
    .line 680
    throw v0

    .line 681
    :cond_20
    :goto_11
    const-string v1, "prefer_known_host_key_types"

    .line 682
    .line 683
    invoke-virtual {p0, v1}, La9/f0;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 684
    .line 685
    .line 686
    move-result-object v1

    .line 687
    const-string v2, "yes"

    .line 688
    .line 689
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 690
    .line 691
    .line 692
    move-result v1

    .line 693
    if-eqz v1, :cond_29

    .line 694
    .line 695
    iget-object v1, p0, La9/f0;->z:La9/l;

    .line 696
    .line 697
    invoke-virtual {v1}, La9/l;->c()Lgf/g;

    .line 698
    .line 699
    .line 700
    move-result-object v1

    .line 701
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 702
    .line 703
    .line 704
    iget-object v1, p0, La9/f0;->z:La9/l;

    .line 705
    .line 706
    iget-object v2, v1, La9/l;->d:La9/y;

    .line 707
    .line 708
    if-nez v2, :cond_21

    .line 709
    .line 710
    new-instance v2, La9/y;

    .line 711
    .line 712
    invoke-direct {v2, v1}, La9/y;-><init>(La9/l;)V

    .line 713
    .line 714
    .line 715
    iput-object v2, v1, La9/l;->d:La9/y;

    .line 716
    .line 717
    :cond_21
    iget-object v1, v1, La9/l;->d:La9/y;

    .line 718
    .line 719
    iget-object v2, p0, La9/f0;->v:Ljava/lang/String;

    .line 720
    .line 721
    iget v3, p0, La9/f0;->w:I

    .line 722
    .line 723
    const/16 v4, 0x16

    .line 724
    .line 725
    if-eq v3, v4, :cond_22

    .line 726
    .line 727
    const-string v3, "["

    .line 728
    .line 729
    const-string v4, "]:"

    .line 730
    .line 731
    invoke-static {v3, v2, v4}, Lda/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    .line 733
    .line 734
    move-result-object v2

    .line 735
    iget v3, p0, La9/f0;->w:I

    .line 736
    .line 737
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 738
    .line 739
    .line 740
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 741
    .line 742
    .line 743
    move-result-object v2

    .line 744
    :cond_22
    invoke-virtual {v1, v2}, La9/y;->a(Ljava/lang/String;)[La9/h;

    .line 745
    .line 746
    .line 747
    move-result-object v1

    .line 748
    array-length v2, v1

    .line 749
    if-lez v2, :cond_28

    .line 750
    .line 751
    new-instance v2, Ljava/util/ArrayList;

    .line 752
    .line 753
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 754
    .line 755
    .line 756
    new-instance v3, Ljava/util/ArrayList;

    .line 757
    .line 758
    invoke-static {v0}, La9/h0;->i(Ljava/lang/String;)[Ljava/lang/String;

    .line 759
    .line 760
    .line 761
    move-result-object v0

    .line 762
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 763
    .line 764
    .line 765
    move-result-object v0

    .line 766
    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 767
    .line 768
    .line 769
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 770
    .line 771
    .line 772
    move-result-object v0

    .line 773
    :cond_23
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 774
    .line 775
    .line 776
    move-result v4

    .line 777
    if-eqz v4, :cond_27

    .line 778
    .line 779
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 780
    .line 781
    .line 782
    move-result-object v4

    .line 783
    check-cast v4, Ljava/lang/String;

    .line 784
    .line 785
    const-string v5, "rsa-sha2-256"

    .line 786
    .line 787
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 788
    .line 789
    .line 790
    move-result v5

    .line 791
    if-nez v5, :cond_25

    .line 792
    .line 793
    const-string v5, "rsa-sha2-512"

    .line 794
    .line 795
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 796
    .line 797
    .line 798
    move-result v5

    .line 799
    if-nez v5, :cond_25

    .line 800
    .line 801
    const-string v5, "ssh-rsa-sha224@ssh.com"

    .line 802
    .line 803
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 804
    .line 805
    .line 806
    move-result v5

    .line 807
    if-nez v5, :cond_25

    .line 808
    .line 809
    const-string v5, "ssh-rsa-sha256@ssh.com"

    .line 810
    .line 811
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 812
    .line 813
    .line 814
    move-result v5

    .line 815
    if-nez v5, :cond_25

    .line 816
    .line 817
    const-string v5, "ssh-rsa-sha384@ssh.com"

    .line 818
    .line 819
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 820
    .line 821
    .line 822
    move-result v5

    .line 823
    if-nez v5, :cond_25

    .line 824
    .line 825
    const-string v5, "ssh-rsa-sha512@ssh.com"

    .line 826
    .line 827
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 828
    .line 829
    .line 830
    move-result v5

    .line 831
    if-eqz v5, :cond_24

    .line 832
    .line 833
    goto :goto_13

    .line 834
    :cond_24
    move-object v5, v4

    .line 835
    goto :goto_14

    .line 836
    :cond_25
    :goto_13
    const-string v5, "ssh-rsa"

    .line 837
    .line 838
    :goto_14
    array-length v8, v1

    .line 839
    const/4 v9, 0x0

    .line 840
    :goto_15
    if-ge v9, v8, :cond_23

    .line 841
    .line 842
    aget-object v10, v1, v9

    .line 843
    .line 844
    invoke-virtual {v10}, La9/h;->a()Ljava/lang/String;

    .line 845
    .line 846
    .line 847
    move-result-object v10

    .line 848
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 849
    .line 850
    .line 851
    move-result v10

    .line 852
    if-eqz v10, :cond_26

    .line 853
    .line 854
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    .line 856
    .line 857
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 858
    .line 859
    .line 860
    goto :goto_12

    .line 861
    :cond_26
    add-int/lit8 v9, v9, 0x1

    .line 862
    .line 863
    goto :goto_15

    .line 864
    :cond_27
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 865
    .line 866
    .line 867
    move-result v0

    .line 868
    if-lez v0, :cond_28

    .line 869
    .line 870
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 871
    .line 872
    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    .line 874
    .line 875
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 876
    .line 877
    .line 878
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 879
    .line 880
    .line 881
    move-result-object v1

    .line 882
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 883
    .line 884
    .line 885
    move-result v2

    .line 886
    if-eqz v2, :cond_28

    .line 887
    .line 888
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 889
    .line 890
    .line 891
    move-result-object v2

    .line 892
    check-cast v2, Ljava/lang/CharSequence;

    .line 893
    .line 894
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 895
    .line 896
    .line 897
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 898
    .line 899
    .line 900
    move-result v2

    .line 901
    if-eqz v2, :cond_28

    .line 902
    .line 903
    const-string v2, ","

    .line 904
    .line 905
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 906
    .line 907
    .line 908
    goto :goto_16

    .line 909
    :cond_28
    iget-object v0, p0, La9/f0;->z:La9/l;

    .line 910
    .line 911
    invoke-virtual {v0}, La9/l;->c()Lgf/g;

    .line 912
    .line 913
    .line 914
    move-result-object v0

    .line 915
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 916
    .line 917
    .line 918
    :cond_29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 919
    .line 920
    .line 921
    move-result-wide v0

    .line 922
    iput-wide v0, p0, La9/f0;->u:J

    .line 923
    .line 924
    const/4 v0, 0x1

    .line 925
    iput-boolean v0, p0, La9/f0;->A:Z

    .line 926
    .line 927
    goto :goto_18

    .line 928
    :goto_17
    throw v7

    .line 929
    :goto_18
    goto :goto_17
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, La9/f0;->p:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, La9/f0;->s:Ljava/util/Hashtable;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Ljava/util/Hashtable;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, La9/f0;->s:Ljava/util/Hashtable;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_2

    .line 18
    :cond_0
    :goto_0
    const-string v1, "PubkeyAcceptedKeyTypes"

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, La9/f0;->s:Ljava/util/Hashtable;

    .line 27
    .line 28
    const-string v1, "PubkeyAcceptedAlgorithms"

    .line 29
    .line 30
    invoke-virtual {p1, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    iget-object v1, p0, La9/f0;->s:Ljava/util/Hashtable;

    .line 35
    .line 36
    invoke-virtual {v1, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    :goto_1
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p1
.end method

.method public final i(La2/g1;)V
    .locals 8

    .line 1
    iget v0, p0, La9/f0;->g:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    :goto_0
    iget-boolean v2, p0, La9/f0;->A:Z

    .line 5
    .line 6
    if-eqz v2, :cond_2

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v4, v0, v2

    .line 11
    .line 12
    if-lez v4, :cond_1

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    iget-wide v4, p0, La9/f0;->u:J

    .line 19
    .line 20
    sub-long/2addr v2, v4

    .line 21
    cmp-long v4, v2, v0

    .line 22
    .line 23
    if-gtz v4, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    new-instance p1, La9/n;

    .line 27
    .line 28
    const-string v0, "timeout in waiting for rekeying process."

    .line 29
    .line 30
    invoke-direct {p1, v0}, La9/n;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    :goto_1
    iget-object v2, p1, La2/g1;->b:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v2, La9/a;

    .line 37
    .line 38
    iget-object v2, v2, La9/a;->e:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v2, [B

    .line 41
    .line 42
    const/4 v3, 0x5

    .line 43
    aget-byte v2, v2, v3

    .line 44
    .line 45
    const/16 v3, 0x14

    .line 46
    .line 47
    if-eq v2, v3, :cond_2

    .line 48
    .line 49
    const/16 v3, 0x15

    .line 50
    .line 51
    if-eq v2, v3, :cond_2

    .line 52
    .line 53
    const/16 v3, 0x1e

    .line 54
    .line 55
    if-eq v2, v3, :cond_2

    .line 56
    .line 57
    const/16 v3, 0x1f

    .line 58
    .line 59
    if-eq v2, v3, :cond_2

    .line 60
    .line 61
    if-eq v2, v3, :cond_2

    .line 62
    .line 63
    const/16 v3, 0x20

    .line 64
    .line 65
    if-eq v2, v3, :cond_2

    .line 66
    .line 67
    const/16 v3, 0x21

    .line 68
    .line 69
    if-eq v2, v3, :cond_2

    .line 70
    .line 71
    const/16 v3, 0x22

    .line 72
    .line 73
    if-eq v2, v3, :cond_2

    .line 74
    .line 75
    const/4 v3, 0x1

    .line 76
    if-eq v2, v3, :cond_2

    .line 77
    .line 78
    const-wide/16 v2, 0xa

    .line 79
    .line 80
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catch_0
    nop

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    iget-boolean v0, p0, La9/f0;->l:Z

    .line 87
    .line 88
    iget-object v1, p1, La2/g1;->b:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v1, La9/a;

    .line 91
    .line 92
    iget-object v1, v1, La9/a;->e:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v1, [B

    .line 95
    .line 96
    const/4 v2, 0x5

    .line 97
    aget-byte v1, v1, v2

    .line 98
    .line 99
    const/16 v2, 0x15

    .line 100
    .line 101
    iget-object v0, p0, La9/f0;->p:Ljava/lang/Object;

    .line 102
    .line 103
    monitor-enter v0

    .line 104
    :try_start_1
    iget-object v1, p1, La2/g1;->b:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v1, La9/a;

    .line 107
    .line 108
    iget v2, v1, La9/a;->b:I

    .line 109
    .line 110
    neg-int v3, v2

    .line 111
    and-int/lit8 v3, v3, 0x7

    .line 112
    .line 113
    const/16 v4, 0x8

    .line 114
    .line 115
    if-ge v3, v4, :cond_3

    .line 116
    .line 117
    add-int/lit8 v3, v3, 0x8

    .line 118
    .line 119
    :cond_3
    add-int/2addr v2, v3

    .line 120
    add-int/lit8 v2, v2, -0x4

    .line 121
    .line 122
    ushr-int/lit8 v4, v2, 0x18

    .line 123
    .line 124
    int-to-byte v4, v4

    .line 125
    iget-object v5, p1, La2/g1;->c:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v5, [B

    .line 128
    .line 129
    const/4 v6, 0x0

    .line 130
    aput-byte v4, v5, v6

    .line 131
    .line 132
    ushr-int/lit8 v4, v2, 0x10

    .line 133
    .line 134
    int-to-byte v4, v4

    .line 135
    const/4 v7, 0x1

    .line 136
    aput-byte v4, v5, v7

    .line 137
    .line 138
    ushr-int/lit8 v4, v2, 0x8

    .line 139
    .line 140
    int-to-byte v4, v4

    .line 141
    const/4 v7, 0x2

    .line 142
    aput-byte v4, v5, v7

    .line 143
    .line 144
    const/4 v4, 0x3

    .line 145
    int-to-byte v2, v2

    .line 146
    aput-byte v2, v5, v4

    .line 147
    .line 148
    iget-object v1, v1, La9/a;->e:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast v1, [B

    .line 151
    .line 152
    const/4 v2, 0x4

    .line 153
    invoke-static {v5, v6, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    .line 155
    .line 156
    iget-object p1, p1, La2/g1;->b:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast p1, La9/a;

    .line 159
    .line 160
    iget-object p1, p1, La9/a;->e:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast p1, [B

    .line 163
    .line 164
    int-to-byte v1, v3

    .line 165
    aput-byte v1, p1, v2

    .line 166
    .line 167
    const/4 p1, 0x0

    .line 168
    throw p1

    .line 169
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    throw p1

    .line 171
    :catchall_0
    move-exception p1

    .line 172
    goto :goto_2
.end method
