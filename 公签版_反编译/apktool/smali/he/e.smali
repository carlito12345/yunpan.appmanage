.class public abstract Lhe/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static i:I

.field public static final j:Lorg/slf4j/Logger;


# instance fields
.field public volatile a:I

.field public final b:Ljava/lang/String;

.field public volatile c:Ljava/lang/Thread;

.field public volatile d:Lhe/f;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public final g:Lj$/util/concurrent/ConcurrentHashMap;

.field public final h:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lhe/e;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lhe/e;->j:Lorg/slf4j/Logger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lhe/e;->a:I

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "Transport"

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget v1, Lhe/e;->i:I

    .line 15
    .line 16
    add-int/lit8 v2, v1, 0x1

    .line 17
    .line 18
    sput v2, Lhe/e;->i:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lhe/e;->b:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v0, Ljava/lang/Object;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lhe/e;->e:Ljava/lang/Object;

    .line 35
    .line 36
    new-instance v0, Ljava/lang/Object;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lhe/e;->f:Ljava/lang/Object;

    .line 42
    .line 43
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 44
    .line 45
    const/16 v1, 0xa

    .line 46
    .line 47
    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lhe/e;->g:Lj$/util/concurrent/ConcurrentHashMap;

    .line 51
    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 53
    .line 54
    const-wide/16 v1, 0x1

    .line 55
    .line 56
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lhe/e;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 60
    .line 61
    return-void
.end method

.method public static X(Ljava/io/InputStream;[BII)I
    .locals 3

    .line 1
    add-int v0, p2, p3

    .line 2
    .line 3
    array-length v1, p1

    .line 4
    if-gt v0, v1, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :goto_0
    if-ge v0, p3, :cond_1

    .line 8
    .line 9
    add-int v1, p2, v0

    .line 10
    .line 11
    sub-int v2, p3, v0

    .line 12
    .line 13
    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-gtz v1, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    add-int/2addr v0, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    :goto_1
    return v0

    .line 23
    :cond_2
    new-instance p0, Ljava/io/IOException;

    .line 24
    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v0, "Buffer too short, bufsize "

    .line 28
    .line 29
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    array-length p1, p1

    .line 33
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, " read "

    .line 37
    .line 38
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto :goto_3

    .line 52
    :goto_2
    throw p0

    .line 53
    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public final declared-synchronized A(J)Z
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-wide/from16 v2, p1

    .line 4
    .line 5
    const-string v0, "Invalid state: "

    .line 6
    .line 7
    const-string v4, "Invalid state: "

    .line 8
    .line 9
    const-string v5, "Invalid state: "

    .line 10
    .line 11
    const-string v6, "Invalid state: "

    .line 12
    .line 13
    const-string v7, "Connecting "

    .line 14
    .line 15
    const-string v8, "Invalid state: "

    .line 16
    .line 17
    const-string v9, "Invalid state: "

    .line 18
    .line 19
    const-string v10, "Invalid state: "

    .line 20
    .line 21
    monitor-enter p0

    .line 22
    :try_start_0
    iget v11, v1, Lhe/e;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    .line 24
    const/4 v15, 0x1

    .line 25
    const/4 v12, 0x4

    .line 26
    const/4 v13, 0x3

    .line 27
    const/4 v14, 0x6

    .line 28
    if-eqz v11, :cond_b

    .line 29
    .line 30
    if-eq v11, v15, :cond_6

    .line 31
    .line 32
    if-eq v11, v13, :cond_4

    .line 33
    .line 34
    if-eq v11, v12, :cond_3

    .line 35
    .line 36
    const/4 v4, 0x5

    .line 37
    if-eq v11, v4, :cond_1

    .line 38
    .line 39
    if-ne v11, v14, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    :try_start_1
    new-instance v4, Lhe/f;

    .line 43
    .line 44
    new-instance v5, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-direct {v4, v0}, Lhe/f;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v4

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    goto/16 :goto_8

    .line 62
    .line 63
    :catch_0
    move-exception v0

    .line 64
    goto/16 :goto_5

    .line 65
    .line 66
    :catch_1
    move-exception v0

    .line 67
    goto/16 :goto_6

    .line 68
    .line 69
    :catch_2
    move-exception v0

    .line 70
    goto/16 :goto_7

    .line 71
    .line 72
    :cond_1
    :goto_0
    sget-object v0, Lhe/e;->j:Lorg/slf4j/Logger;

    .line 73
    .line 74
    const-string v4, "Trying to connect a disconnected transport"

    .line 75
    .line 76
    invoke-interface {v0, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Lhe/a; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lhe/f; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .line 78
    .line 79
    :try_start_2
    iget v4, v1, Lhe/e;->a:I

    .line 80
    .line 81
    if-eqz v4, :cond_2

    .line 82
    .line 83
    if-eq v4, v13, :cond_2

    .line 84
    .line 85
    if-eq v4, v12, :cond_2

    .line 86
    .line 87
    const/4 v5, 0x5

    .line 88
    if-eq v4, v5, :cond_2

    .line 89
    .line 90
    if-eq v4, v14, :cond_2

    .line 91
    .line 92
    new-instance v5, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-interface {v0, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iput v14, v1, Lhe/e;->a:I

    .line 108
    .line 109
    invoke-virtual/range {p0 .. p2}, Lhe/e;->r(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :catchall_1
    move-exception v0

    .line 114
    goto/16 :goto_9

    .line 115
    .line 116
    :cond_2
    :goto_1
    monitor-exit p0

    .line 117
    :goto_2
    const/4 v2, 0x0

    .line 118
    return v2

    .line 119
    :cond_3
    :try_start_3
    iput v14, v1, Lhe/e;->a:I

    .line 120
    .line 121
    new-instance v0, Lhe/f;

    .line 122
    .line 123
    const-string v4, "Connection in error"

    .line 124
    .line 125
    iget-object v5, v1, Lhe/e;->d:Lhe/f;

    .line 126
    .line 127
    invoke-direct {v0, v4, v5}, Lhe/f;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 128
    .line 129
    .line 130
    throw v0
    :try_end_3
    .catch Lhe/a; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lhe/f; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    :cond_4
    :try_start_4
    iget v0, v1, Lhe/e;->a:I

    .line 132
    .line 133
    if-eqz v0, :cond_5

    .line 134
    .line 135
    if-eq v0, v13, :cond_5

    .line 136
    .line 137
    if-eq v0, v12, :cond_5

    .line 138
    .line 139
    const/4 v4, 0x5

    .line 140
    if-eq v0, v4, :cond_5

    .line 141
    .line 142
    if-eq v0, v14, :cond_5

    .line 143
    .line 144
    sget-object v4, Lhe/e;->j:Lorg/slf4j/Logger;

    .line 145
    .line 146
    new-instance v5, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-interface {v4, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iput v14, v1, Lhe/e;->a:I

    .line 162
    .line 163
    invoke-virtual/range {p0 .. p2}, Lhe/e;->r(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 164
    .line 165
    .line 166
    :cond_5
    monitor-exit p0

    .line 167
    return v15

    .line 168
    :cond_6
    :try_start_5
    iget-object v0, v1, Lhe/e;->c:Ljava/lang/Thread;

    .line 169
    .line 170
    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 171
    .line 172
    .line 173
    iget v0, v1, Lhe/e;->a:I

    .line 174
    .line 175
    if-eq v0, v15, :cond_a

    .line 176
    .line 177
    const/4 v9, 0x2

    .line 178
    if-eq v0, v9, :cond_7

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_7
    iget-object v0, v1, Lhe/e;->d:Lhe/f;

    .line 182
    .line 183
    if-nez v0, :cond_9

    .line 184
    .line 185
    iput v13, v1, Lhe/e;->a:I
    :try_end_5
    .catch Lhe/a; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lhe/f; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 186
    .line 187
    :try_start_6
    iget v0, v1, Lhe/e;->a:I

    .line 188
    .line 189
    if-eqz v0, :cond_8

    .line 190
    .line 191
    if-eq v0, v13, :cond_8

    .line 192
    .line 193
    if-eq v0, v12, :cond_8

    .line 194
    .line 195
    const/4 v4, 0x5

    .line 196
    if-eq v0, v4, :cond_8

    .line 197
    .line 198
    if-eq v0, v14, :cond_8

    .line 199
    .line 200
    sget-object v4, Lhe/e;->j:Lorg/slf4j/Logger;

    .line 201
    .line 202
    new-instance v5, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-interface {v4, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    iput v14, v1, Lhe/e;->a:I

    .line 218
    .line 219
    invoke-virtual/range {p0 .. p2}, Lhe/e;->r(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 220
    .line 221
    .line 222
    :cond_8
    monitor-exit p0

    .line 223
    return v15

    .line 224
    :cond_9
    :try_start_7
    iput v12, v1, Lhe/e;->a:I

    .line 225
    .line 226
    invoke-virtual/range {p0 .. p2}, Lhe/e;->r(J)V

    .line 227
    .line 228
    .line 229
    iget-object v0, v1, Lhe/e;->d:Lhe/f;

    .line 230
    .line 231
    throw v0

    .line 232
    :cond_a
    iput v14, v1, Lhe/e;->a:I

    .line 233
    .line 234
    invoke-virtual/range {p0 .. p2}, Lhe/e;->r(J)V

    .line 235
    .line 236
    .line 237
    new-instance v0, Lhe/a;

    .line 238
    .line 239
    invoke-direct {v0}, Lhe/a;-><init>()V

    .line 240
    .line 241
    .line 242
    throw v0

    .line 243
    :cond_b
    :goto_3
    sget-object v0, Lhe/e;->j:Lorg/slf4j/Logger;

    .line 244
    .line 245
    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 246
    .line 247
    .line 248
    move-result v8

    .line 249
    if-eqz v8, :cond_c

    .line 250
    .line 251
    new-instance v8, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    iget-object v7, v1, Lhe/e;->b:Ljava/lang/String;

    .line 257
    .line 258
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v7

    .line 265
    invoke-interface {v0, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    :cond_c
    iput v15, v1, Lhe/e;->a:I

    .line 269
    .line 270
    const/4 v7, 0x0

    .line 271
    iput-object v7, v1, Lhe/e;->d:Lhe/f;

    .line 272
    .line 273
    new-instance v7, Ljava/lang/Thread;

    .line 274
    .line 275
    iget-object v8, v1, Lhe/e;->b:Ljava/lang/String;

    .line 276
    .line 277
    invoke-direct {v7, v1, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v7, v15}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 281
    .line 282
    .line 283
    iput-object v7, v1, Lhe/e;->c:Ljava/lang/Thread;

    .line 284
    .line 285
    iget-object v8, v1, Lhe/e;->c:Ljava/lang/Thread;

    .line 286
    .line 287
    monitor-enter v8
    :try_end_7
    .catch Lhe/a; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lhe/f; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 288
    :try_start_8
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v7, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 292
    .line 293
    .line 294
    iget v7, v1, Lhe/e;->a:I

    .line 295
    .line 296
    if-eq v7, v15, :cond_13

    .line 297
    .line 298
    const/4 v9, 0x2

    .line 299
    if-eq v7, v9, :cond_10

    .line 300
    .line 301
    if-eq v7, v13, :cond_e

    .line 302
    .line 303
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 304
    :try_start_9
    iget v5, v1, Lhe/e;->a:I

    .line 305
    .line 306
    if-eqz v5, :cond_d

    .line 307
    .line 308
    if-eq v5, v13, :cond_d

    .line 309
    .line 310
    if-eq v5, v12, :cond_d

    .line 311
    .line 312
    const/4 v6, 0x5

    .line 313
    if-eq v5, v6, :cond_d

    .line 314
    .line 315
    if-eq v5, v14, :cond_d

    .line 316
    .line 317
    new-instance v6, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    invoke-interface {v0, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    iput v14, v1, Lhe/e;->a:I

    .line 333
    .line 334
    invoke-virtual/range {p0 .. p2}, Lhe/e;->r(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 335
    .line 336
    .line 337
    :cond_d
    monitor-exit p0

    .line 338
    goto/16 :goto_2

    .line 339
    .line 340
    :catchall_2
    move-exception v0

    .line 341
    goto :goto_4

    .line 342
    :cond_e
    :try_start_a
    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 343
    :try_start_b
    iget v4, v1, Lhe/e;->a:I

    .line 344
    .line 345
    if-eqz v4, :cond_f

    .line 346
    .line 347
    if-eq v4, v13, :cond_f

    .line 348
    .line 349
    if-eq v4, v12, :cond_f

    .line 350
    .line 351
    const/4 v5, 0x5

    .line 352
    if-eq v4, v5, :cond_f

    .line 353
    .line 354
    if-eq v4, v14, :cond_f

    .line 355
    .line 356
    new-instance v5, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v4

    .line 368
    invoke-interface {v0, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    iput v14, v1, Lhe/e;->a:I

    .line 372
    .line 373
    invoke-virtual/range {p0 .. p2}, Lhe/e;->r(J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 374
    .line 375
    .line 376
    :cond_f
    monitor-exit p0

    .line 377
    return v15

    .line 378
    :cond_10
    :try_start_c
    iget-object v4, v1, Lhe/e;->d:Lhe/f;

    .line 379
    .line 380
    if-nez v4, :cond_12

    .line 381
    .line 382
    iput v13, v1, Lhe/e;->a:I

    .line 383
    .line 384
    monitor-exit v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 385
    :try_start_d
    iget v4, v1, Lhe/e;->a:I

    .line 386
    .line 387
    if-eqz v4, :cond_11

    .line 388
    .line 389
    if-eq v4, v13, :cond_11

    .line 390
    .line 391
    if-eq v4, v12, :cond_11

    .line 392
    .line 393
    const/4 v6, 0x5

    .line 394
    if-eq v4, v6, :cond_11

    .line 395
    .line 396
    if-eq v4, v14, :cond_11

    .line 397
    .line 398
    new-instance v6, Ljava/lang/StringBuilder;

    .line 399
    .line 400
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v4

    .line 410
    invoke-interface {v0, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    iput v14, v1, Lhe/e;->a:I

    .line 414
    .line 415
    invoke-virtual/range {p0 .. p2}, Lhe/e;->r(J)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 416
    .line 417
    .line 418
    :cond_11
    monitor-exit p0

    .line 419
    return v15

    .line 420
    :cond_12
    :try_start_e
    iput v12, v1, Lhe/e;->a:I

    .line 421
    .line 422
    iget-object v0, v1, Lhe/e;->d:Lhe/f;

    .line 423
    .line 424
    throw v0

    .line 425
    :cond_13
    iput v14, v1, Lhe/e;->a:I

    .line 426
    .line 427
    new-instance v0, Lhe/a;

    .line 428
    .line 429
    invoke-direct {v0}, Lhe/a;-><init>()V

    .line 430
    .line 431
    .line 432
    throw v0

    .line 433
    :goto_4
    monitor-exit v8
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 434
    :try_start_f
    throw v0
    :try_end_f
    .catch Lhe/a; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_1
    .catch Lhe/f; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 435
    :goto_5
    :try_start_10
    invoke-virtual/range {p0 .. p2}, Lhe/e;->r(J)V

    .line 436
    .line 437
    .line 438
    throw v0

    .line 439
    :goto_6
    iput v14, v1, Lhe/e;->a:I

    .line 440
    .line 441
    invoke-virtual/range {p0 .. p2}, Lhe/e;->r(J)V

    .line 442
    .line 443
    .line 444
    new-instance v4, Lhe/f;

    .line 445
    .line 446
    invoke-direct {v4, v0}, Lhe/f;-><init>(Ljava/lang/Exception;)V

    .line 447
    .line 448
    .line 449
    throw v4

    .line 450
    :goto_7
    invoke-virtual/range {p0 .. p2}, Lhe/e;->r(J)V

    .line 451
    .line 452
    .line 453
    const/4 v4, 0x0

    .line 454
    iput v4, v1, Lhe/e;->a:I

    .line 455
    .line 456
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 457
    :goto_8
    :try_start_11
    iget v4, v1, Lhe/e;->a:I

    .line 458
    .line 459
    if-eqz v4, :cond_14

    .line 460
    .line 461
    if-eq v4, v13, :cond_14

    .line 462
    .line 463
    if-eq v4, v12, :cond_14

    .line 464
    .line 465
    const/4 v5, 0x5

    .line 466
    if-eq v4, v5, :cond_14

    .line 467
    .line 468
    if-eq v4, v14, :cond_14

    .line 469
    .line 470
    sget-object v5, Lhe/e;->j:Lorg/slf4j/Logger;

    .line 471
    .line 472
    new-instance v6, Ljava/lang/StringBuilder;

    .line 473
    .line 474
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    .line 476
    .line 477
    const-string v7, "Invalid state: "

    .line 478
    .line 479
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v4

    .line 489
    invoke-interface {v5, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    iput v14, v1, Lhe/e;->a:I

    .line 493
    .line 494
    invoke-virtual/range {p0 .. p2}, Lhe/e;->r(J)V

    .line 495
    .line 496
    .line 497
    :cond_14
    throw v0

    .line 498
    :goto_9
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 499
    goto :goto_b

    .line 500
    :goto_a
    throw v0

    .line 501
    :goto_b
    goto :goto_a
.end method

.method public final declared-synchronized J()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    invoke-virtual {p0, v0, v0}, Lhe/e;->K(ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw v0
.end method

.method public final declared-synchronized K(ZZ)Z
    .locals 7

    .line 1
    const-string v0, "Invalid state: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget v1, p0, Lhe/e;->a:I

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_5

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x5

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x6

    .line 13
    if-eq v1, v3, :cond_1

    .line 14
    .line 15
    const/4 v3, 0x3

    .line 16
    if-eq v1, v3, :cond_2

    .line 17
    .line 18
    const/4 p1, 0x4

    .line 19
    if-eq v1, p1, :cond_0

    .line 20
    .line 21
    if-eq v1, v4, :cond_5

    .line 22
    .line 23
    if-eq v1, v6, :cond_5

    .line 24
    .line 25
    sget-object p1, Lhe/e;->j:Lorg/slf4j/Logger;

    .line 26
    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget v0, p0, Lhe/e;->a:I

    .line 33
    .line 34
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iput-object v5, p0, Lhe/e;->c:Ljava/lang/Thread;

    .line 45
    .line 46
    iput v6, p0, Lhe/e;->a:I

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_2

    .line 51
    :cond_0
    move-object p1, v5

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 p1, 0x1

    .line 54
    :cond_2
    iget-object v0, p0, Lhe/e;->g:Lj$/util/concurrent/ConcurrentHashMap;

    .line 55
    .line 56
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->size()I

    .line 57
    .line 58
    .line 59
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    if-nez p1, :cond_3

    .line 63
    .line 64
    if-eqz p2, :cond_3

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    :try_start_1
    iput v4, p0, Lhe/e;->a:I

    .line 68
    .line 69
    invoke-virtual {p0, p1, p2}, Lhe/e;->M(ZZ)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    iput v6, p0, Lhe/e;->a:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .line 75
    monitor-exit p0

    .line 76
    return p1

    .line 77
    :catch_0
    move-exception p1

    .line 78
    :try_start_2
    iput v6, p0, Lhe/e;->a:I

    .line 79
    .line 80
    :goto_0
    iput-object v5, p0, Lhe/e;->c:Ljava/lang/Thread;

    .line 81
    .line 82
    iput v6, p0, Lhe/e;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    .line 84
    move-object v5, p1

    .line 85
    :goto_1
    if-nez v5, :cond_4

    .line 86
    .line 87
    monitor-exit p0

    .line 88
    return v2

    .line 89
    :cond_4
    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    :cond_5
    monitor-exit p0

    .line 91
    return v2

    .line 92
    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 93
    throw p1
.end method

.method public abstract L()V
.end method

.method public abstract M(ZZ)Z
.end method

.method public abstract N(Lhe/d;)V
.end method

.method public final O(Lad/c;Lad/d;Ljava/util/Set;J)J
    .locals 9

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    move-object v2, p1

    .line 4
    move-wide v3, v0

    .line 5
    :goto_0
    if-eqz p2, :cond_3

    .line 6
    .line 7
    invoke-interface {p2}, Lhe/d;->reset()V

    .line 8
    .line 9
    .line 10
    sget-object v5, Lvd/l;->c:Lvd/l;

    .line 11
    .line 12
    invoke-interface {p3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    if-eqz v5, :cond_0

    .line 17
    .line 18
    invoke-interface {p2}, Lhe/b;->a0()V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0, v2}, Lhe/e;->V(Lad/c;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v5

    .line 25
    cmp-long v7, v3, v0

    .line 26
    .line 27
    if-nez v7, :cond_1

    .line 28
    .line 29
    move-wide v3, v5

    .line 30
    :cond_1
    cmp-long v7, p4, v0

    .line 31
    .line 32
    if-lez v7, :cond_2

    .line 33
    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v7

    .line 38
    add-long/2addr v7, p4

    .line 39
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    invoke-interface {p2, v7}, Lhe/d;->P(Ljava/lang/Long;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const/4 v7, 0x0

    .line 48
    invoke-interface {p2, v7}, Lhe/d;->P(Ljava/lang/Long;)V

    .line 49
    .line 50
    .line 51
    :goto_1
    invoke-interface {p2, v5, v6}, Lhe/d;->a(J)V

    .line 52
    .line 53
    .line 54
    iget-object v7, p0, Lhe/e;->g:Lj$/util/concurrent/ConcurrentHashMap;

    .line 55
    .line 56
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {v7, v5, p2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    invoke-interface {v2}, Lad/c;->h()Lad/c;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    if-eqz v2, :cond_3

    .line 68
    .line 69
    invoke-interface {v2}, Lad/c;->b()Lhe/d;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    invoke-virtual {p0, p1}, Lhe/e;->P(Lad/c;)V

    .line 75
    .line 76
    .line 77
    return-wide v3
.end method

.method public abstract P(Lad/c;)V
.end method

.method public abstract Q(Ljava/lang/Long;)V
.end method

.method public abstract R(Lad/c;)I
.end method

.method public abstract S(Lad/c;Lhe/d;)Z
.end method

.method public abstract T()Z
.end method

.method public final U()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :goto_0
    iget-object v2, p0, Lhe/e;->c:Ljava/lang/Thread;

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    if-ne v2, v3, :cond_e

    .line 10
    .line 11
    :try_start_0
    iget-object v2, p0, Lhe/e;->e:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 14
    :try_start_1
    invoke-virtual {p0}, Lhe/e;->W()Ljava/lang/Long;

    .line 15
    .line 16
    .line 17
    move-result-object v3
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    if-nez v3, :cond_1

    .line 19
    .line 20
    :try_start_2
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 21
    :try_start_3
    iget-object v3, p0, Lhe/e;->g:Lj$/util/concurrent/ConcurrentHashMap;

    .line 22
    .line 23
    invoke-virtual {v3}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Lhe/d;

    .line 42
    .line 43
    invoke-interface {v4}, Lhe/d;->D()V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catchall_0
    move-exception v3

    .line 48
    goto :goto_2

    .line 49
    :cond_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 50
    :try_start_4
    new-instance v3, Ljava/io/IOException;

    .line 51
    .line 52
    const-string v4, "end of stream"

    .line 53
    .line 54
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 58
    :catchall_1
    move-exception v3

    .line 59
    goto/16 :goto_5

    .line 60
    .line 61
    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 62
    :try_start_6
    throw v3

    .line 63
    :cond_1
    iget-object v4, p0, Lhe/e;->g:Lj$/util/concurrent/ConcurrentHashMap;

    .line 64
    .line 65
    invoke-virtual {v4, v3}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    check-cast v4, Lhe/d;

    .line 70
    .line 71
    if-nez v4, :cond_3

    .line 72
    .line 73
    sget-object v4, Lhe/e;->j:Lorg/slf4j/Logger;

    .line 74
    .line 75
    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_2

    .line 80
    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v6, "Unexpected message id, skipping message "

    .line 87
    .line 88
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :cond_2
    invoke-virtual {p0, v3}, Lhe/e;->Q(Ljava/lang/Long;)V

    .line 102
    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_3
    invoke-virtual {p0, v4}, Lhe/e;->N(Lhe/d;)V

    .line 106
    .line 107
    .line 108
    invoke-interface {v4}, Lhe/d;->C()V

    .line 109
    .line 110
    .line 111
    :goto_3
    monitor-exit v2

    .line 112
    goto :goto_0

    .line 113
    :catch_0
    move-exception v3

    .line 114
    sget-object v4, Lhe/e;->j:Lorg/slf4j/Logger;

    .line 115
    .line 116
    const-string v5, "Socket timeout during peekKey"

    .line 117
    .line 118
    invoke-interface {v4, v5, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    iget-object v4, p0, Lhe/e;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 122
    .line 123
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 124
    .line 125
    .line 126
    move-result-wide v4

    .line 127
    const-wide/16 v6, 0x0

    .line 128
    .line 129
    cmp-long v8, v4, v6

    .line 130
    .line 131
    if-lez v8, :cond_6

    .line 132
    .line 133
    sget-object v3, Lhe/e;->j:Lorg/slf4j/Logger;

    .line 134
    .line 135
    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-eqz v4, :cond_4

    .line 140
    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    const-string v5, "Transport still in use, no idle timeout "

    .line 147
    .line 148
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    :cond_4
    iget-object v3, p0, Lhe/e;->g:Lj$/util/concurrent/ConcurrentHashMap;

    .line 162
    .line 163
    invoke-virtual {v3}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    if-eqz v4, :cond_5

    .line 176
    .line 177
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    check-cast v4, Lhe/d;

    .line 182
    .line 183
    monitor-enter v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 184
    :try_start_7
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 185
    .line 186
    .line 187
    monitor-exit v4

    .line 188
    goto :goto_4

    .line 189
    :catchall_2
    move-exception v3

    .line 190
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 191
    :try_start_8
    throw v3

    .line 192
    :cond_5
    monitor-exit v2

    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :cond_6
    sget-object v4, Lhe/e;->j:Lorg/slf4j/Logger;

    .line 196
    .line 197
    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    if-eqz v5, :cond_7

    .line 202
    .line 203
    iget-object v5, p0, Lhe/e;->b:Ljava/lang/String;

    .line 204
    .line 205
    new-instance v6, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    const-string v7, "Idle timeout on "

    .line 211
    .line 212
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    :cond_7
    throw v3

    .line 226
    :goto_5
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 227
    :try_start_9
    throw v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 228
    :catch_1
    move-exception v2

    .line 229
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    instance-of v4, v2, Ljava/net/SocketTimeoutException;

    .line 234
    .line 235
    if-nez v4, :cond_9

    .line 236
    .line 237
    if-eqz v3, :cond_8

    .line 238
    .line 239
    const-string v4, "Read timed out"

    .line 240
    .line 241
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    if-eqz v4, :cond_8

    .line 246
    .line 247
    goto :goto_6

    .line 248
    :cond_8
    const/4 v4, 0x0

    .line 249
    goto :goto_7

    .line 250
    :cond_9
    :goto_6
    const/4 v4, 0x1

    .line 251
    :goto_7
    if-eqz v3, :cond_a

    .line 252
    .line 253
    const-string v5, "Socket closed"

    .line 254
    .line 255
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v3

    .line 259
    if-eqz v3, :cond_a

    .line 260
    .line 261
    sget-object v3, Lhe/e;->j:Lorg/slf4j/Logger;

    .line 262
    .line 263
    const-string v5, "Remote closed connection"

    .line 264
    .line 265
    invoke-interface {v3, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    goto :goto_8

    .line 269
    :cond_a
    if-eqz v4, :cond_b

    .line 270
    .line 271
    sget-object v3, Lhe/e;->j:Lorg/slf4j/Logger;

    .line 272
    .line 273
    const-string v5, "socket timeout in non peek state"

    .line 274
    .line 275
    invoke-interface {v3, v5, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 276
    .line 277
    .line 278
    goto :goto_8

    .line 279
    :cond_b
    sget-object v3, Lhe/e;->j:Lorg/slf4j/Logger;

    .line 280
    .line 281
    const-string v5, "recv failed"

    .line 282
    .line 283
    invoke-interface {v3, v5, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 284
    .line 285
    .line 286
    :goto_8
    monitor-enter p0

    .line 287
    xor-int/lit8 v3, v4, 0x1

    .line 288
    .line 289
    :try_start_a
    invoke-virtual {p0, v3, v0}, Lhe/e;->K(ZZ)Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 290
    .line 291
    .line 292
    goto :goto_9

    .line 293
    :catchall_3
    move-exception v0

    .line 294
    goto :goto_c

    .line 295
    :catch_2
    move-exception v3

    .line 296
    :try_start_b
    const-class v4, Ljava/lang/Throwable;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 297
    .line 298
    :try_start_c
    const-string v5, "addSuppressed"

    .line 299
    .line 300
    new-array v6, v1, [Ljava/lang/Class;

    .line 301
    .line 302
    aput-object v4, v6, v0

    .line 303
    .line 304
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    new-array v5, v1, [Ljava/lang/Object;

    .line 309
    .line 310
    aput-object v3, v5, v0

    .line 311
    .line 312
    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 313
    .line 314
    .line 315
    :catch_3
    :try_start_d
    sget-object v4, Lhe/e;->j:Lorg/slf4j/Logger;

    .line 316
    .line 317
    const-string v5, "Failed to disconnect"

    .line 318
    .line 319
    invoke-interface {v4, v5, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 320
    .line 321
    .line 322
    :goto_9
    sget-object v3, Lhe/e;->j:Lorg/slf4j/Logger;

    .line 323
    .line 324
    const-string v4, "Disconnected"

    .line 325
    .line 326
    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    iget-object v3, p0, Lhe/e;->g:Lj$/util/concurrent/ConcurrentHashMap;

    .line 330
    .line 331
    invoke-virtual {v3}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 340
    .line 341
    .line 342
    move-result v4

    .line 343
    if-eqz v4, :cond_c

    .line 344
    .line 345
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    check-cast v0, Ljava/util/Map$Entry;

    .line 350
    .line 351
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    check-cast v0, Lhe/d;

    .line 356
    .line 357
    invoke-interface {v0, v2}, Lhe/d;->l(Ljava/lang/Exception;)V

    .line 358
    .line 359
    .line 360
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 361
    .line 362
    .line 363
    const/4 v0, 0x1

    .line 364
    goto :goto_a

    .line 365
    :cond_c
    if-eqz v0, :cond_d

    .line 366
    .line 367
    sget-object v0, Lhe/e;->j:Lorg/slf4j/Logger;

    .line 368
    .line 369
    const-string v1, "Notified clients"

    .line 370
    .line 371
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    goto :goto_b

    .line 375
    :cond_d
    sget-object v0, Lhe/e;->j:Lorg/slf4j/Logger;

    .line 376
    .line 377
    const-string v1, "Exception without a request pending"

    .line 378
    .line 379
    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 380
    .line 381
    .line 382
    :goto_b
    monitor-exit p0

    .line 383
    return-void

    .line 384
    :goto_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 385
    throw v0

    .line 386
    :cond_e
    return-void
.end method

.method public abstract V(Lad/c;)J
.end method

.method public abstract W()Ljava/lang/Long;
.end method

.method public final Y()V
    .locals 6

    .line 1
    iget-object v0, p0, Lhe/e;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    sget-object v2, Lhe/e;->j:Lorg/slf4j/Logger;

    .line 8
    .line 9
    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v4, "Release transport "

    .line 18
    .line 19
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v4, " "

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    const-wide/16 v3, 0x0

    .line 41
    .line 42
    cmp-long v5, v0, v3

    .line 43
    .line 44
    if-nez v5, :cond_1

    .line 45
    .line 46
    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v1, "Transport usage dropped to zero "

    .line 55
    .line 56
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {v2, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    cmp-long v2, v0, v3

    .line 71
    .line 72
    if-ltz v2, :cond_3

    .line 73
    .line 74
    :cond_2
    :goto_0
    return-void

    .line 75
    :cond_3
    new-instance v0, Landroidx/fragment/app/b0;

    .line 76
    .line 77
    const-string v1, "Usage count dropped below zero"

    .line 78
    .line 79
    const/16 v2, 0xa

    .line 80
    .line 81
    invoke-direct {v0, v1, v2}, Landroidx/fragment/app/b0;-><init>(Ljava/lang/String;I)V

    .line 82
    .line 83
    .line 84
    throw v0
.end method

.method public final Z(Lad/c;Lad/d;Ljava/util/Set;)Lhe/d;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Lhe/e;->T()Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-eqz v2, :cond_1

    .line 8
    .line 9
    iget v2, p0, Lhe/e;->a:I

    .line 10
    .line 11
    const/4 v3, 0x5

    .line 12
    if-ne v2, v3, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Lhe/f;

    .line 16
    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string p3, "Transport is disconnected "

    .line 20
    .line 21
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p3, p0, Lhe/e;->b:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-direct {p1, p2}, Lhe/f;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1

    .line 37
    :cond_1
    :goto_0
    :try_start_0
    sget-object v2, Lvd/l;->a:Lvd/l;

    .line 38
    .line 39
    invoke-interface {p3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lhe/e;->R(Lad/c;)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    int-to-long v2, v2

    .line 50
    goto :goto_1

    .line 51
    :catch_0
    move-exception p3

    .line 52
    goto/16 :goto_6

    .line 53
    .line 54
    :catch_1
    move-exception p3

    .line 55
    goto/16 :goto_7

    .line 56
    .line 57
    :cond_2
    const-wide/16 v2, 0x0

    .line 58
    .line 59
    :goto_1
    move-object v4, p0

    .line 60
    move-object v5, p1

    .line 61
    move-object v6, p2

    .line 62
    move-object v7, p3

    .line 63
    move-wide v8, v2

    .line 64
    invoke-virtual/range {v4 .. v9}, Lhe/e;->O(Lad/c;Lad/d;Ljava/util/Set;J)J

    .line 65
    .line 66
    .line 67
    move-result-wide v4

    .line 68
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    iget-object v6, p0, Lhe/e;->c:Ljava/lang/Thread;

    .line 73
    .line 74
    if-ne p3, v6, :cond_5

    .line 75
    .line 76
    iget-object p3, p0, Lhe/e;->e:Ljava/lang/Object;

    .line 77
    .line 78
    monitor-enter p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 79
    :try_start_1
    invoke-virtual {p0}, Lhe/e;->W()Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 84
    .line 85
    .line 86
    move-result-wide v7

    .line 87
    cmp-long v9, v7, v4

    .line 88
    .line 89
    if-nez v9, :cond_4

    .line 90
    .line 91
    invoke-virtual {p0, p2}, Lhe/e;->N(Lhe/d;)V

    .line 92
    .line 93
    .line 94
    invoke-interface {p2}, Lhe/d;->C()V

    .line 95
    .line 96
    .line 97
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    move-object p3, p2

    .line 99
    :goto_2
    if-eqz p3, :cond_3

    .line 100
    .line 101
    iget-object v0, p0, Lhe/e;->g:Lj$/util/concurrent/ConcurrentHashMap;

    .line 102
    .line 103
    invoke-interface {p3}, Lhe/d;->p()J

    .line 104
    .line 105
    .line 106
    move-result-wide v1

    .line 107
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 108
    .line 109
    .line 110
    move-result-object p3

    .line 111
    invoke-virtual {v0, p3}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    invoke-interface {p1}, Lad/c;->h()Lad/c;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    if-eqz p1, :cond_3

    .line 119
    .line 120
    invoke-interface {p1}, Lad/c;->b()Lhe/d;

    .line 121
    .line 122
    .line 123
    move-result-object p3

    .line 124
    goto :goto_2

    .line 125
    :cond_3
    return-object p2

    .line 126
    :catchall_0
    move-exception v2

    .line 127
    goto :goto_3

    .line 128
    :cond_4
    :try_start_2
    invoke-virtual {p0, v6}, Lhe/e;->Q(Ljava/lang/Long;)V

    .line 129
    .line 130
    .line 131
    monitor-exit p3

    .line 132
    goto :goto_4

    .line 133
    :goto_3
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    :try_start_3
    throw v2

    .line 135
    :cond_5
    :goto_4
    invoke-virtual {p0, p1, p2, v2, v3}, Lhe/e;->a0(Lad/c;Lad/d;J)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 136
    .line 137
    .line 138
    move-object p3, p2

    .line 139
    :goto_5
    if-eqz p3, :cond_6

    .line 140
    .line 141
    iget-object v0, p0, Lhe/e;->g:Lj$/util/concurrent/ConcurrentHashMap;

    .line 142
    .line 143
    invoke-interface {p3}, Lhe/d;->p()J

    .line 144
    .line 145
    .line 146
    move-result-wide v1

    .line 147
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 148
    .line 149
    .line 150
    move-result-object p3

    .line 151
    invoke-virtual {v0, p3}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    invoke-interface {p1}, Lad/c;->h()Lad/c;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    if-eqz p1, :cond_6

    .line 159
    .line 160
    invoke-interface {p1}, Lad/c;->b()Lhe/d;

    .line 161
    .line 162
    .line 163
    move-result-object p3

    .line 164
    goto :goto_5

    .line 165
    :cond_6
    return-object p2

    .line 166
    :catchall_1
    move-exception p3

    .line 167
    goto :goto_9

    .line 168
    :goto_6
    :try_start_4
    new-instance v0, Lhe/f;

    .line 169
    .line 170
    invoke-direct {v0, p3}, Lhe/f;-><init>(Ljava/lang/Exception;)V

    .line 171
    .line 172
    .line 173
    throw v0

    .line 174
    :goto_7
    sget-object v2, Lhe/e;->j:Lorg/slf4j/Logger;

    .line 175
    .line 176
    const-string v3, "sendrecv failed"

    .line 177
    .line 178
    invoke-interface {v2, v3, p3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 179
    .line 180
    .line 181
    :try_start_5
    invoke-virtual {p0}, Lhe/e;->J()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 182
    .line 183
    .line 184
    goto :goto_8

    .line 185
    :catch_2
    move-exception v2

    .line 186
    :try_start_6
    const-class v3, Ljava/lang/Throwable;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 187
    .line 188
    :try_start_7
    const-string v4, "addSuppressed"

    .line 189
    .line 190
    new-array v5, v1, [Ljava/lang/Class;

    .line 191
    .line 192
    aput-object v3, v5, v0

    .line 193
    .line 194
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    new-array v1, v1, [Ljava/lang/Object;

    .line 199
    .line 200
    aput-object v2, v1, v0

    .line 201
    .line 202
    invoke-virtual {v3, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 203
    .line 204
    .line 205
    :catch_3
    :try_start_8
    sget-object v0, Lhe/e;->j:Lorg/slf4j/Logger;

    .line 206
    .line 207
    const-string v1, "disconnect failed"

    .line 208
    .line 209
    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    .line 211
    .line 212
    :goto_8
    throw p3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 213
    :goto_9
    if-eqz p2, :cond_7

    .line 214
    .line 215
    iget-object v0, p0, Lhe/e;->g:Lj$/util/concurrent/ConcurrentHashMap;

    .line 216
    .line 217
    invoke-interface {p2}, Lhe/d;->p()J

    .line 218
    .line 219
    .line 220
    move-result-wide v1

    .line 221
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 222
    .line 223
    .line 224
    move-result-object p2

    .line 225
    invoke-virtual {v0, p2}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    invoke-interface {p1}, Lad/c;->h()Lad/c;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    if-eqz p1, :cond_7

    .line 233
    .line 234
    invoke-interface {p1}, Lad/c;->b()Lhe/d;

    .line 235
    .line 236
    .line 237
    move-result-object p2

    .line 238
    goto :goto_9

    .line 239
    :cond_7
    goto :goto_b

    .line 240
    :goto_a
    throw p3

    .line 241
    :goto_b
    goto :goto_a
.end method

.method public final a0(Lad/c;Lad/d;J)V
    .locals 5

    .line 1
    move-object v0, p1

    .line 2
    :goto_0
    if-eqz p2, :cond_b

    .line 3
    .line 4
    monitor-enter p2

    .line 5
    :try_start_0
    invoke-interface {p2}, Lhe/d;->c0()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_a

    .line 10
    .line 11
    const-wide/16 v1, 0x0

    .line 12
    .line 13
    cmp-long v3, p3, v1

    .line 14
    .line 15
    if-lez v3, :cond_6

    .line 16
    .line 17
    invoke-virtual {p2, p3, p4}, Ljava/lang/Object;->wait(J)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p2}, Lhe/d;->c0()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0, v0, p2}, Lhe/e;->S(Lad/c;Lhe/d;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    monitor-exit p2

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto/16 :goto_2

    .line 36
    .line 37
    :cond_0
    invoke-interface {p2}, Lhe/d;->T()Z

    .line 38
    .line 39
    .line 40
    move-result p3

    .line 41
    if-nez p3, :cond_5

    .line 42
    .line 43
    invoke-virtual {p0}, Lhe/e;->T()Z

    .line 44
    .line 45
    .line 46
    move-result p3

    .line 47
    if-eqz p3, :cond_2

    .line 48
    .line 49
    iget p3, p0, Lhe/e;->a:I

    .line 50
    .line 51
    const/4 p4, 0x5

    .line 52
    if-ne p3, p4, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    new-instance p1, Lhe/f;

    .line 56
    .line 57
    const-string p3, "Transport was disconnected while waiting for a response (transport: %s state: %d),"

    .line 58
    .line 59
    iget-object p4, p0, Lhe/e;->b:Ljava/lang/String;

    .line 60
    .line 61
    iget v0, p0, Lhe/e;->a:I

    .line 62
    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const/4 v1, 0x2

    .line 68
    new-array v1, v1, [Ljava/lang/Object;

    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    aput-object p4, v1, v2

    .line 72
    .line 73
    const/4 p4, 0x1

    .line 74
    aput-object v0, v1, p4

    .line 75
    .line 76
    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    invoke-direct {p1, p3}, Lhe/f;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    :cond_2
    :goto_1
    invoke-interface {p2}, Lhe/d;->R()Ljava/lang/Long;

    .line 85
    .line 86
    .line 87
    move-result-object p3

    .line 88
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 89
    .line 90
    .line 91
    move-result-wide p3

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 93
    .line 94
    .line 95
    move-result-wide v3

    .line 96
    sub-long/2addr p3, v3

    .line 97
    cmp-long v3, p3, v1

    .line 98
    .line 99
    if-gtz v3, :cond_4

    .line 100
    .line 101
    sget-object p1, Lhe/e;->j:Lorg/slf4j/Logger;

    .line 102
    .line 103
    invoke-interface {p1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 104
    .line 105
    .line 106
    move-result p3

    .line 107
    if-eqz p3, :cond_3

    .line 108
    .line 109
    new-instance p3, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string p4, "State is "

    .line 115
    .line 116
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget p4, p0, Lhe/e;->a:I

    .line 120
    .line 121
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p3

    .line 128
    invoke-interface {p1, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :cond_3
    new-instance p1, Lhe/c;

    .line 132
    .line 133
    new-instance p3, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    iget-object p4, p0, Lhe/e;->b:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string p4, " timedout waiting for response to "

    .line 144
    .line 145
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p3

    .line 155
    invoke-direct {p1, p3}, Lhe/c;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw p1

    .line 159
    :cond_4
    monitor-exit p2

    .line 160
    goto/16 :goto_0

    .line 161
    .line 162
    :cond_5
    new-instance p1, Lhe/f;

    .line 163
    .line 164
    new-instance p3, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    iget-object p4, p0, Lhe/e;->b:Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string p4, " error reading response to "

    .line 175
    .line 176
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p3

    .line 186
    invoke-interface {p2}, Lhe/d;->getException()Ljava/lang/Exception;

    .line 187
    .line 188
    .line 189
    move-result-object p4

    .line 190
    invoke-direct {p1, p3, p4}, Lhe/f;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 191
    .line 192
    .line 193
    throw p1

    .line 194
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->wait()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0, p1, p2}, Lhe/e;->S(Lad/c;Lhe/d;)Z

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    if-eqz v1, :cond_7

    .line 202
    .line 203
    monitor-exit p2

    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :cond_7
    sget-object v1, Lhe/e;->j:Lorg/slf4j/Logger;

    .line 207
    .line 208
    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    if-eqz v2, :cond_8

    .line 213
    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    const-string v3, "Wait returned state is "

    .line 220
    .line 221
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    iget v3, p0, Lhe/e;->a:I

    .line 225
    .line 226
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    :cond_8
    invoke-virtual {p0}, Lhe/e;->T()Z

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    if-nez v1, :cond_9

    .line 241
    .line 242
    monitor-exit p2

    .line 243
    goto/16 :goto_0

    .line 244
    .line 245
    :cond_9
    new-instance p1, Ljava/lang/InterruptedException;

    .line 246
    .line 247
    const-string p3, "Transport was disconnected while waiting for a response"

    .line 248
    .line 249
    invoke-direct {p1, p3}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw p1

    .line 253
    :cond_a
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    invoke-interface {v0}, Lad/c;->h()Lad/c;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    if-eqz v0, :cond_b

    .line 259
    .line 260
    invoke-interface {v0}, Lad/c;->b()Lhe/d;

    .line 261
    .line 262
    .line 263
    move-result-object p2

    .line 264
    goto/16 :goto_0

    .line 265
    .line 266
    :goto_2
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    throw p1

    .line 268
    :cond_b
    return-void
.end method

.method public final close()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lhe/e;->Y()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final finalize()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lhe/e;->T()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lhe/e;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    sget-object v0, Lhe/e;->j:Lorg/slf4j/Logger;

    .line 20
    .line 21
    const-string v1, "Session was not properly released"

    .line 22
    .line 23
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final declared-synchronized r(J)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lhe/e;->c:Ljava/lang/Thread;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eq v2, v0, :cond_0

    .line 12
    .line 13
    iput-object v1, p0, Lhe/e;->c:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    :try_start_1
    sget-object v1, Lhe/e;->j:Lorg/slf4j/Logger;

    .line 16
    .line 17
    const-string v2, "Interrupting transport thread"

    .line 18
    .line 19
    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 23
    .line 24
    .line 25
    const-string v2, "Joining transport thread"

    .line 26
    .line 27
    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1, p2}, Ljava/lang/Thread;->join(J)V

    .line 31
    .line 32
    .line 33
    const-string p1, "Joined transport thread"

    .line 34
    .line 35
    invoke-interface {v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_1

    .line 41
    :catch_0
    move-exception p1

    .line 42
    :try_start_2
    new-instance p2, Lhe/f;

    .line 43
    .line 44
    const-string v0, "Failed to join transport thread"

    .line 45
    .line 46
    invoke-direct {p2, v0, p1}, Lhe/f;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 47
    .line 48
    .line 49
    throw p2

    .line 50
    :cond_0
    if-eqz v0, :cond_1

    .line 51
    .line 52
    iput-object v1, p0, Lhe/e;->c:Ljava/lang/Thread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    .line 54
    :cond_1
    :goto_0
    monitor-exit p0

    .line 55
    return-void

    .line 56
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 57
    throw p1
.end method

.method public final run()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    :try_start_0
    iget v2, p0, Lhe/e;->a:I

    .line 7
    .line 8
    const/4 v3, 0x5

    .line 9
    if-eq v2, v3, :cond_0

    .line 10
    .line 11
    iget v2, p0, Lhe/e;->a:I

    .line 12
    .line 13
    const/4 v3, 0x6

    .line 14
    if-eq v2, v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lhe/e;->L()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v2

    .line 21
    goto :goto_2

    .line 22
    :catch_0
    move-exception v2

    .line 23
    goto :goto_4

    .line 24
    :cond_0
    :goto_0
    monitor-enter v0

    .line 25
    :try_start_1
    iget-object v2, p0, Lhe/e;->c:Ljava/lang/Thread;

    .line 26
    .line 27
    if-eq v0, v2, :cond_1

    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :catchall_1
    move-exception v1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iput v1, p0, Lhe/e;->a:I

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 36
    .line 37
    .line 38
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    invoke-virtual {p0}, Lhe/e;->U()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 44
    throw v1

    .line 45
    :goto_2
    monitor-enter v0

    .line 46
    :try_start_3
    iget-object v3, p0, Lhe/e;->c:Ljava/lang/Thread;

    .line 47
    .line 48
    if-eq v0, v3, :cond_2

    .line 49
    .line 50
    monitor-exit v0

    .line 51
    return-void

    .line 52
    :catchall_2
    move-exception v1

    .line 53
    goto :goto_3

    .line 54
    :cond_2
    iput v1, p0, Lhe/e;->a:I

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 57
    .line 58
    .line 59
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 60
    throw v2

    .line 61
    :goto_3
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 62
    throw v1

    .line 63
    :goto_4
    monitor-enter v0

    .line 64
    :try_start_5
    iget-object v3, p0, Lhe/e;->c:Ljava/lang/Thread;

    .line 65
    .line 66
    if-eq v0, v3, :cond_4

    .line 67
    .line 68
    instance-of v1, v2, Ljava/net/SocketTimeoutException;

    .line 69
    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    sget-object v1, Lhe/e;->j:Lorg/slf4j/Logger;

    .line 73
    .line 74
    const-string v3, "Timeout connecting"

    .line 75
    .line 76
    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    goto :goto_5

    .line 80
    :catchall_3
    move-exception v1

    .line 81
    goto :goto_7

    .line 82
    :cond_3
    sget-object v1, Lhe/e;->j:Lorg/slf4j/Logger;

    .line 83
    .line 84
    const-string v3, "Exception in transport thread"

    .line 85
    .line 86
    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    :goto_5
    monitor-exit v0

    .line 90
    return-void

    .line 91
    :cond_4
    instance-of v3, v2, Ljava/net/SocketTimeoutException;

    .line 92
    .line 93
    if-eqz v3, :cond_5

    .line 94
    .line 95
    new-instance v3, Lhe/a;

    .line 96
    .line 97
    check-cast v2, Ljava/net/SocketTimeoutException;

    .line 98
    .line 99
    invoke-direct {v3, v2}, Lhe/a;-><init>(Ljava/net/SocketTimeoutException;)V

    .line 100
    .line 101
    .line 102
    iput-object v3, p0, Lhe/e;->d:Lhe/f;

    .line 103
    .line 104
    goto :goto_6

    .line 105
    :cond_5
    new-instance v3, Lhe/f;

    .line 106
    .line 107
    invoke-direct {v3, v2}, Lhe/f;-><init>(Ljava/lang/Exception;)V

    .line 108
    .line 109
    .line 110
    iput-object v3, p0, Lhe/e;->d:Lhe/f;

    .line 111
    .line 112
    :goto_6
    iput v1, p0, Lhe/e;->a:I

    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 115
    .line 116
    .line 117
    monitor-exit v0

    .line 118
    return-void

    .line 119
    :goto_7
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 120
    throw v1
.end method
