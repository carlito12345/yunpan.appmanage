.class public final Lvd/b0;
.super Lhe/e;
.source "SourceFile"

# interfaces
.implements Lvd/c0;


# static fields
.field public static final F:Lorg/slf4j/Logger;


# instance fields
.field public final A:Z

.field public B:Ljava/lang/Object;

.field public C:Lad/h;

.field public final D:Ljava/util/concurrent/Semaphore;

.field public E:[B

.field public k:Z

.field public final l:Ljava/net/InetAddress;

.field public final m:I

.field public final n:Lsd/k;

.field public p:Ljava/net/Socket;

.field public q:I

.field public final r:Ljava/util/concurrent/atomic/AtomicLong;

.field public s:Ljava/io/OutputStream;

.field public t:Ljava/io/InputStream;

.field public final v:[B

.field public w:J

.field public final x:Ljava/util/LinkedList;

.field public y:Ljava/lang/String;

.field public final z:Lvc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lvd/b0;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lvc/b;Lsd/k;ILjava/net/InetAddress;IZ)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lhe/e;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lvd/b0;->k:Z

    .line 6
    .line 7
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lvd/b0;->r:Ljava/util/concurrent/atomic/AtomicLong;

    .line 13
    .line 14
    const/16 v1, 0x400

    .line 15
    .line 16
    new-array v1, v1, [B

    .line 17
    .line 18
    iput-object v1, p0, Lvd/b0;->v:[B

    .line 19
    .line 20
    new-instance v1, Ljava/util/LinkedList;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lvd/b0;->x:Ljava/util/LinkedList;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    iput-object v1, p0, Lvd/b0;->y:Ljava/lang/String;

    .line 29
    .line 30
    new-instance v1, Ljava/util/concurrent/Semaphore;

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-direct {v1, v2, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lvd/b0;->D:Ljava/util/concurrent/Semaphore;

    .line 37
    .line 38
    const/16 v1, 0x40

    .line 39
    .line 40
    new-array v1, v1, [B

    .line 41
    .line 42
    iput-object v1, p0, Lvd/b0;->E:[B

    .line 43
    .line 44
    iput-object p1, p0, Lvd/b0;->z:Lvc/b;

    .line 45
    .line 46
    if-nez p6, :cond_0

    .line 47
    .line 48
    invoke-interface {p1}, Lvc/b;->e()Lvc/f;

    .line 49
    .line 50
    .line 51
    move-result-object p6

    .line 52
    check-cast p6, Lwc/a;

    .line 53
    .line 54
    iget-boolean p6, p6, Lwc/a;->h:Z

    .line 55
    .line 56
    if-eqz p6, :cond_1

    .line 57
    .line 58
    :cond_0
    const/4 v0, 0x1

    .line 59
    :cond_1
    iput-boolean v0, p0, Lvd/b0;->A:Z

    .line 60
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide v0

    .line 65
    invoke-interface {p1}, Lvc/b;->e()Lvc/f;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Lwc/a;

    .line 70
    .line 71
    iget p1, p1, Lwc/a;->D:I

    .line 72
    .line 73
    int-to-long v2, p1

    .line 74
    add-long/2addr v0, v2

    .line 75
    iput-wide v0, p0, Lvd/b0;->w:J

    .line 76
    .line 77
    iput-object p2, p0, Lvd/b0;->n:Lsd/k;

    .line 78
    .line 79
    iput p3, p0, Lvd/b0;->q:I

    .line 80
    .line 81
    iput-object p4, p0, Lvd/b0;->l:Ljava/net/InetAddress;

    .line 82
    .line 83
    iput p5, p0, Lvd/b0;->m:I

    .line 84
    .line 85
    return-void
.end method


# virtual methods
.method public final L()V
    .locals 7

    .line 1
    sget-object v0, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "Connecting in state "

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget v2, p0, Lhe/e;->a:I

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, " addr "

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lvd/b0;->n:Lsd/k;

    .line 27
    .line 28
    invoke-virtual {v2}, Lsd/k;->b()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 43
    :try_start_0
    iget v1, p0, Lvd/b0;->q:I

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Lvd/b0;->p0(I)La2/w0;

    .line 46
    .line 47
    .line 48
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception v1

    .line 51
    iget-object v2, p0, Lvd/b0;->z:Lvc/b;

    .line 52
    .line 53
    invoke-interface {v2}, Lvc/b;->e()Lvc/f;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Lwc/a;

    .line 58
    .line 59
    iget-boolean v2, v2, Lwc/a;->o:Z

    .line 60
    .line 61
    if-eqz v2, :cond_7

    .line 62
    .line 63
    iget v1, p0, Lvd/b0;->q:I

    .line 64
    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    const/16 v2, 0x1bd

    .line 68
    .line 69
    if-ne v1, v2, :cond_2

    .line 70
    .line 71
    :cond_1
    const/16 v2, 0x8b

    .line 72
    .line 73
    :cond_2
    iput v2, p0, Lvd/b0;->q:I

    .line 74
    .line 75
    iput-boolean v0, p0, Lvd/b0;->k:Z

    .line 76
    .line 77
    iget-object v1, p0, Lvd/b0;->r:Ljava/util/concurrent/atomic/AtomicLong;

    .line 78
    .line 79
    const-wide/16 v2, 0x0

    .line 80
    .line 81
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 82
    .line 83
    .line 84
    iget v1, p0, Lvd/b0;->q:I

    .line 85
    .line 86
    invoke-virtual {p0, v1}, Lvd/b0;->p0(I)La2/w0;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    :goto_0
    sget-object v2, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 91
    .line 92
    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_3

    .line 97
    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v4, "Negotiation response on "

    .line 101
    .line 102
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object v4, p0, Lhe/e;->b:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v4, " :"

    .line 111
    .line 112
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :cond_3
    iget-object v3, v1, La2/w0;->c:Ljava/lang/Object;

    .line 126
    .line 127
    iget-object v4, p0, Lvd/b0;->z:Lvc/b;

    .line 128
    .line 129
    iget-object v5, v1, La2/w0;->b:Ljava/lang/Object;

    .line 130
    .line 131
    invoke-interface {v3, v4, v5}, Lad/k;->f0(Lvc/b;Lad/j;)Z

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-eqz v3, :cond_6

    .line 136
    .line 137
    iget-object v3, v1, La2/w0;->c:Ljava/lang/Object;

    .line 138
    .line 139
    invoke-interface {v3}, Lad/k;->Q()Z

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    iget-object v4, v1, La2/w0;->c:Ljava/lang/Object;

    .line 144
    .line 145
    invoke-interface {v4}, Lad/k;->d0()Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    if-eqz v5, :cond_4

    .line 154
    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string v6, "Signature negotiation enforced "

    .line 158
    .line 159
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget-boolean v6, p0, Lvd/b0;->A:Z

    .line 163
    .line 164
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v6, " (server "

    .line 168
    .line 169
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v3, ") enabled "

    .line 176
    .line 177
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    iget-object v3, p0, Lvd/b0;->z:Lvc/b;

    .line 181
    .line 182
    invoke-interface {v3}, Lvc/b;->e()Lvc/f;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    check-cast v3, Lwc/a;

    .line 187
    .line 188
    iget-boolean v3, v3, Lwc/a;->g:Z

    .line 189
    .line 190
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string v3, ")"

    .line 200
    .line 201
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    :cond_4
    iget-object v3, p0, Lvd/b0;->n:Lsd/k;

    .line 212
    .line 213
    invoke-virtual {v3}, Lsd/k;->c()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    iput-object v3, p0, Lvd/b0;->y:Ljava/lang/String;

    .line 218
    .line 219
    iget-object v3, v1, La2/w0;->c:Ljava/lang/Object;

    .line 220
    .line 221
    iput-object v3, p0, Lvd/b0;->B:Ljava/lang/Object;

    .line 222
    .line 223
    invoke-interface {v3}, Lad/k;->n()Lvc/i;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    sget-object v4, Lvc/i;->g:Lvc/i;

    .line 228
    .line 229
    invoke-virtual {v3, v4}, Lvc/i;->a(Lvc/i;)Z

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    if-eqz v3, :cond_5

    .line 234
    .line 235
    iget-object v3, v1, La2/w0;->d:Ljava/lang/Object;

    .line 236
    .line 237
    check-cast v3, [B

    .line 238
    .line 239
    iget-object v4, p0, Lvd/b0;->E:[B

    .line 240
    .line 241
    monitor-enter v4

    .line 242
    :try_start_1
    array-length v5, v3

    .line 243
    iget-object v6, p0, Lvd/b0;->E:[B

    .line 244
    .line 245
    invoke-virtual {p0, v5, v3, v6}, Lvd/b0;->c0(I[B[B)[B

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    iput-object v3, p0, Lvd/b0;->E:[B

    .line 250
    .line 251
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    iget-object v1, v1, La2/w0;->e:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast v1, [B

    .line 255
    .line 256
    invoke-virtual {p0, v1}, Lvd/b0;->z0([B)V

    .line 257
    .line 258
    .line 259
    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    if-eqz v1, :cond_5

    .line 264
    .line 265
    iget-object v1, p0, Lvd/b0;->E:[B

    .line 266
    .line 267
    array-length v3, v1

    .line 268
    invoke-static {v1, v0, v3}, Lge/a;->m([BII)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    const-string v1, "Preauth hash after negotiate "

    .line 273
    .line 274
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-interface {v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    goto :goto_1

    .line 282
    :catchall_0
    move-exception v0

    .line 283
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 284
    throw v0

    .line 285
    :cond_5
    :goto_1
    return-void

    .line 286
    :cond_6
    new-instance v0, Lvd/r;

    .line 287
    .line 288
    const-string v1, "This client is not compatible with the server."

    .line 289
    .line 290
    invoke-direct {v0, v1}, Lvd/r;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    throw v0

    .line 294
    :cond_7
    throw v1
.end method

.method public final declared-synchronized M(ZZ)Z
    .locals 10

    .line 1
    const-string v0, "Currently "

    .line 2
    .line 3
    const-string v1, "Disconnecting transport "

    .line 4
    .line 5
    const-string v2, "Disconnecting transport while still in use "

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v3, p0, Lvd/b0;->x:Ljava/util/LinkedList;

    .line 9
    .line 10
    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    iget-object v4, p0, Lhe/e;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 15
    .line 16
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 17
    .line 18
    .line 19
    move-result-wide v4

    .line 20
    const/4 v6, 0x0

    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    const-wide/16 v7, 0x1

    .line 24
    .line 25
    cmp-long v9, v4, v7

    .line 26
    .line 27
    if-nez v9, :cond_1

    .line 28
    .line 29
    :cond_0
    if-nez p2, :cond_2

    .line 30
    .line 31
    const-wide/16 v7, 0x0

    .line 32
    .line 33
    cmp-long p2, v4, v7

    .line 34
    .line 35
    if-lez p2, :cond_2

    .line 36
    .line 37
    :cond_1
    sget-object p2, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 38
    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, ": "

    .line 48
    .line 49
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lvd/b0;->x:Ljava/util/LinkedList;

    .line 53
    .line 54
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-interface {p2, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const/4 p2, 0x1

    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    goto/16 :goto_9

    .line 68
    .line 69
    :cond_2
    const/4 p2, 0x0

    .line 70
    :goto_0
    sget-object v2, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 71
    .line 72
    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_3

    .line 77
    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-interface {v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    .line 93
    :cond_3
    const/4 v1, 0x0

    .line 94
    :try_start_1
    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_4

    .line 99
    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lvd/b0;->x:Ljava/util/LinkedList;

    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v0, " session(s) active for "

    .line 115
    .line 116
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-interface {v2, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :catchall_1
    move-exception p1

    .line 131
    goto/16 :goto_8

    .line 132
    .line 133
    :catch_0
    move-exception p1

    .line 134
    goto :goto_6

    .line 135
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_5

    .line 140
    .line 141
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Lvd/z;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 146
    .line 147
    :try_start_2
    invoke-virtual {v0, p1, v6}, Lvd/z;->M(ZZ)Z

    .line 148
    .line 149
    .line 150
    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 151
    or-int/2addr p2, v0

    .line 152
    :goto_2
    :try_start_3
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :catchall_2
    move-exception p1

    .line 157
    goto :goto_3

    .line 158
    :catch_1
    move-exception v0

    .line 159
    :try_start_4
    sget-object v2, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 160
    .line 161
    const-string v4, "Failed to close session"

    .line 162
    .line 163
    invoke-interface {v2, v4, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :goto_3
    :try_start_5
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    .line 168
    .line 169
    .line 170
    throw p1

    .line 171
    :cond_5
    iget-object p1, p0, Lvd/b0;->p:Ljava/net/Socket;

    .line 172
    .line 173
    if-eqz p1, :cond_6

    .line 174
    .line 175
    invoke-virtual {p1}, Ljava/net/Socket;->shutdownOutput()V

    .line 176
    .line 177
    .line 178
    iget-object p1, p0, Lvd/b0;->s:Ljava/io/OutputStream;

    .line 179
    .line 180
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 181
    .line 182
    .line 183
    iget-object p1, p0, Lvd/b0;->t:Ljava/io/InputStream;

    .line 184
    .line 185
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 186
    .line 187
    .line 188
    iget-object p1, p0, Lvd/b0;->p:Ljava/net/Socket;

    .line 189
    .line 190
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 191
    .line 192
    .line 193
    sget-object p1, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 194
    .line 195
    const-string v0, "Socket closed"

    .line 196
    .line 197
    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_6
    sget-object p1, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 202
    .line 203
    const-string v0, "Not yet initialized"

    .line 204
    .line 205
    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 206
    .line 207
    .line 208
    :goto_4
    :try_start_6
    iput-object v1, p0, Lvd/b0;->p:Ljava/net/Socket;

    .line 209
    .line 210
    iput-object v1, p0, Lvd/b0;->C:Lad/h;

    .line 211
    .line 212
    iput-object v1, p0, Lvd/b0;->y:Ljava/lang/String;

    .line 213
    .line 214
    iget-object p1, p0, Lvd/b0;->z:Lvc/b;

    .line 215
    .line 216
    invoke-interface {p1}, Lvc/b;->b()Lvc/o;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    check-cast p1, Lvd/d0;

    .line 221
    .line 222
    :goto_5
    invoke-virtual {p1, p0}, Lvd/d0;->e(Lvd/b0;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 223
    .line 224
    .line 225
    goto :goto_7

    .line 226
    :goto_6
    :try_start_7
    sget-object v0, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 227
    .line 228
    const-string v2, "Exception in disconnect"

    .line 229
    .line 230
    invoke-interface {v0, v2, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 231
    .line 232
    .line 233
    :try_start_8
    iput-object v1, p0, Lvd/b0;->p:Ljava/net/Socket;

    .line 234
    .line 235
    iput-object v1, p0, Lvd/b0;->C:Lad/h;

    .line 236
    .line 237
    iput-object v1, p0, Lvd/b0;->y:Ljava/lang/String;

    .line 238
    .line 239
    iget-object p1, p0, Lvd/b0;->z:Lvc/b;

    .line 240
    .line 241
    invoke-interface {p1}, Lvc/b;->b()Lvc/o;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    check-cast p1, Lvd/d0;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 246
    .line 247
    goto :goto_5

    .line 248
    :goto_7
    monitor-exit p0

    .line 249
    return p2

    .line 250
    :goto_8
    :try_start_9
    iput-object v1, p0, Lvd/b0;->p:Ljava/net/Socket;

    .line 251
    .line 252
    iput-object v1, p0, Lvd/b0;->C:Lad/h;

    .line 253
    .line 254
    iput-object v1, p0, Lvd/b0;->y:Ljava/lang/String;

    .line 255
    .line 256
    iget-object p2, p0, Lvd/b0;->z:Lvc/b;

    .line 257
    .line 258
    invoke-interface {p2}, Lvc/b;->b()Lvc/o;

    .line 259
    .line 260
    .line 261
    move-result-object p2

    .line 262
    check-cast p2, Lvd/d0;

    .line 263
    .line 264
    invoke-virtual {p2, p0}, Lvd/d0;->e(Lvd/b0;)V

    .line 265
    .line 266
    .line 267
    throw p1

    .line 268
    :goto_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 269
    goto :goto_b

    .line 270
    :goto_a
    throw p1

    .line 271
    :goto_b
    goto :goto_a
.end method

.method public final N(Lhe/d;)V
    .locals 3

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lad/b;

    .line 3
    .line 4
    iget-object v1, p0, Lvd/b0;->B:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Lad/k;->K(Lhe/d;)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-boolean v1, p0, Lvd/b0;->k:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lvd/b0;->i0(Lad/b;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {p0, v0}, Lvd/b0;->h0(Lad/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :goto_1
    sget-object v1, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 24
    .line 25
    const-string v2, "Failure decoding message, disconnecting transport"

    .line 26
    .line 27
    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, v0}, Lhe/d;->l(Ljava/lang/Exception;)V

    .line 31
    .line 32
    .line 33
    monitor-enter p1

    .line 34
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 35
    .line 36
    .line 37
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw v0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    throw v0
.end method

.method public final P(Lad/c;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lvd/b0;->z:Lvc/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lvc/b;->h()La0/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, La0/h;->l()[B

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lhe/e;->f:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    const/4 v2, 0x4

    .line 15
    :try_start_1
    invoke-interface {p1, v2, v0}, Lad/b;->c(I[B)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const v4, 0xffff

    .line 20
    .line 21
    .line 22
    and-int/2addr v4, v3

    .line 23
    const/4 v5, 0x0

    .line 24
    invoke-static {v4, v5, v0}, Lge/a;->f(II[B)V

    .line 25
    .line 26
    .line 27
    sget-object v4, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 28
    .line 29
    invoke-interface {v4}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_2

    .line 34
    .line 35
    :cond_0
    sget-object v4, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-interface {v4, v6}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    instance-of v6, p1, Led/a;

    .line 45
    .line 46
    if-eqz v6, :cond_1

    .line 47
    .line 48
    check-cast p1, Led/a;

    .line 49
    .line 50
    iget-object p1, p1, Led/a;->I:Led/c;

    .line 51
    .line 52
    if-nez p1, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    :goto_0
    invoke-static {v0, v2, v3}, Lge/a;->m([BII)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-interface {v4, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    iget-object p1, p0, Lvd/b0;->s:Ljava/io/OutputStream;

    .line 65
    .line 66
    add-int/2addr v3, v2

    .line 67
    invoke-virtual {p1, v0, v5, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lvd/b0;->s:Ljava/io/OutputStream;

    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 73
    .line 74
    .line 75
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    iget-object p1, p0, Lvd/b0;->z:Lvc/b;

    .line 77
    .line 78
    invoke-interface {p1}, Lvc/b;->h()La0/h;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1, v0}, La0/h;->m([B)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 88
    :catchall_1
    move-exception p1

    .line 89
    iget-object v1, p0, Lvd/b0;->z:Lvc/b;

    .line 90
    .line 91
    invoke-interface {v1}, Lvc/b;->h()La0/h;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v1, v0}, La0/h;->m([B)V

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :goto_2
    throw p1

    .line 100
    :goto_3
    goto :goto_2
.end method

.method public final Q(Ljava/lang/Long;)V
    .locals 5

    .line 1
    const-string v0, "Skipping message "

    .line 2
    .line 3
    iget-object v1, p0, Lhe/e;->e:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lvd/b0;->v:[B

    .line 7
    .line 8
    const/4 v3, 0x2

    .line 9
    invoke-static {v3, v2}, Lge/a;->a(I[B)S

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const v3, 0xffff

    .line 14
    .line 15
    .line 16
    and-int/2addr v2, v3

    .line 17
    const/16 v3, 0x21

    .line 18
    .line 19
    if-lt v2, v3, :cond_3

    .line 20
    .line 21
    add-int/lit8 v3, v2, 0x4

    .line 22
    .line 23
    iget-object v4, p0, Lvd/b0;->z:Lvc/b;

    .line 24
    .line 25
    invoke-interface {v4}, Lvc/b;->e()Lvc/f;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Lwc/a;

    .line 30
    .line 31
    iget v4, v4, Lwc/a;->I:I

    .line 32
    .line 33
    if-le v3, v4, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0, p1}, Lvd/b0;->g0(Ljava/lang/Long;)Lad/d;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    sget-object p1, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 43
    .line 44
    const-string v0, "Parsing notification"

    .line 45
    .line 46
    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v3}, Lvd/b0;->N(Lhe/d;)V

    .line 50
    .line 51
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v2, "Received notification "

    .line 55
    .line 56
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    monitor-exit v1

    .line 70
    return-void

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    goto :goto_2

    .line 73
    :cond_1
    sget-object v3, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 74
    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-interface {v3, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lvd/b0;->n0()Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_2

    .line 95
    .line 96
    iget-object p1, p0, Lvd/b0;->t:Ljava/io/InputStream;

    .line 97
    .line 98
    add-int/lit8 v2, v2, -0x40

    .line 99
    .line 100
    int-to-long v2, v2

    .line 101
    invoke-virtual {p1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    iget-object p1, p0, Lvd/b0;->t:Ljava/io/InputStream;

    .line 106
    .line 107
    add-int/lit8 v2, v2, -0x20

    .line 108
    .line 109
    int-to-long v2, v2

    .line 110
    invoke-virtual {p1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_3
    :goto_0
    sget-object p1, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 115
    .line 116
    const-string v0, "Flusing stream input"

    .line 117
    .line 118
    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lvd/b0;->t:Ljava/io/InputStream;

    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    int-to-long v2, v0

    .line 128
    invoke-virtual {p1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 129
    .line 130
    .line 131
    :goto_1
    monitor-exit v1

    .line 132
    return-void

    .line 133
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    throw p1
.end method

.method public final R(Lad/c;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lad/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lvd/b0;->z:Lvc/b;

    .line 9
    .line 10
    invoke-interface {p1}, Lvc/b;->e()Lvc/f;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lwc/a;

    .line 15
    .line 16
    iget p1, p1, Lwc/a;->A:I

    .line 17
    .line 18
    return p1
.end method

.method public final S(Lad/c;Lhe/d;)Z
    .locals 10

    .line 1
    const-string v0, "Credit from intermediate "

    .line 2
    .line 3
    const-string v1, "Have intermediate reply "

    .line 4
    .line 5
    iget-boolean v2, p0, Lvd/b0;->k:Z

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    return v3

    .line 11
    :cond_0
    move-object v2, p1

    .line 12
    check-cast v2, Lid/c;

    .line 13
    .line 14
    move-object v4, p2

    .line 15
    check-cast v4, Lid/d;

    .line 16
    .line 17
    monitor-enter v4

    .line 18
    :try_start_0
    iget-boolean v5, v4, Lid/b;->n:Z

    .line 19
    .line 20
    if-eqz v5, :cond_5

    .line 21
    .line 22
    iget-boolean v5, v4, Lid/d;->C:Z

    .line 23
    .line 24
    if-nez v5, :cond_5

    .line 25
    .line 26
    iget v5, v4, Lid/b;->j:I

    .line 27
    .line 28
    const/16 v6, 0x103

    .line 29
    .line 30
    if-ne v5, v6, :cond_5

    .line 31
    .line 32
    iget-wide v5, v4, Lid/b;->r:J

    .line 33
    .line 34
    const-wide/16 v7, 0x0

    .line 35
    .line 36
    cmp-long v9, v5, v7

    .line 37
    .line 38
    if-eqz v9, :cond_5

    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    iput-boolean v3, v4, Lid/d;->C:Z

    .line 42
    .line 43
    iget-boolean v7, v2, Lid/b;->n:Z

    .line 44
    .line 45
    iput-wide v5, v2, Lid/b;->r:J

    .line 46
    .line 47
    iget-object v2, v4, Lid/d;->z:Ljava/lang/Long;

    .line 48
    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    .line 53
    .line 54
    move-result-wide v5

    .line 55
    invoke-virtual {p0, p1}, Lvd/b0;->R(Lad/c;)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    int-to-long v8, p1

    .line 60
    add-long/2addr v5, v8

    .line 61
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, v4, Lid/d;->z:Ljava/lang/Long;

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    :goto_0
    sget-object p1, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 71
    .line 72
    invoke-interface {p1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_2

    .line 77
    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    if-nez v7, :cond_4

    .line 94
    .line 95
    iget p2, v4, Lid/b;->k:I

    .line 96
    .line 97
    invoke-interface {p1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_3

    .line 102
    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_3
    iget-object p1, p0, Lvd/b0;->D:Ljava/util/concurrent/Semaphore;

    .line 119
    .line 120
    invoke-virtual {p1, p2}, Ljava/util/concurrent/Semaphore;->release(I)V

    .line 121
    .line 122
    .line 123
    :cond_4
    monitor-exit v4

    .line 124
    return v3

    .line 125
    :cond_5
    monitor-exit v4

    .line 126
    return v3

    .line 127
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    throw p1
.end method

.method public final T()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lvd/b0;->p:Ljava/net/Socket;

    .line 2
    .line 3
    iget v1, p0, Lhe/e;->a:I

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    if-eq v1, v2, :cond_2

    .line 7
    .line 8
    iget v1, p0, Lhe/e;->a:I

    .line 9
    .line 10
    const/4 v2, 0x5

    .line 11
    if-eq v1, v2, :cond_2

    .line 12
    .line 13
    iget v1, p0, Lhe/e;->a:I

    .line 14
    .line 15
    const/4 v2, 0x6

    .line 16
    if-eq v1, v2, :cond_2

    .line 17
    .line 18
    iget v1, p0, Lhe/e;->a:I

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 35
    :goto_1
    return v0
.end method

.method public final V(Lad/c;)J
    .locals 4

    .line 1
    iget-object v0, p0, Lvd/b0;->r:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x1

    .line 8
    .line 9
    sub-long/2addr v0, v2

    .line 10
    iget-boolean v2, p0, Lvd/b0;->k:Z

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    const-wide/16 v2, 0x7d00

    .line 15
    .line 16
    rem-long/2addr v0, v2

    .line 17
    :cond_0
    invoke-interface {p1, v0, v1}, Lad/b;->a(J)V

    .line 18
    .line 19
    .line 20
    return-wide v0
.end method

.method public final W()Ljava/lang/Long;
    .locals 15

    .line 1
    :cond_0
    iget-object v0, p0, Lvd/b0;->t:Ljava/io/InputStream;

    .line 2
    .line 3
    iget-object v1, p0, Lvd/b0;->v:[B

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x4

    .line 7
    invoke-static {v0, v1, v2, v3}, Lhe/e;->X(Ljava/io/InputStream;[BII)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-ge v0, v3, :cond_1

    .line 13
    .line 14
    return-object v1

    .line 15
    :cond_1
    iget-object v0, p0, Lvd/b0;->v:[B

    .line 16
    .line 17
    aget-byte v4, v0, v2

    .line 18
    .line 19
    const/16 v5, -0x7b

    .line 20
    .line 21
    if-eq v4, v5, :cond_0

    .line 22
    .line 23
    iget-object v4, p0, Lvd/b0;->t:Ljava/io/InputStream;

    .line 24
    .line 25
    const/16 v5, 0x20

    .line 26
    .line 27
    invoke-static {v4, v0, v3, v5}, Lhe/e;->X(Ljava/io/InputStream;[BII)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-ge v0, v5, :cond_2

    .line 32
    .line 33
    return-object v1

    .line 34
    :cond_2
    sget-object v0, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 35
    .line 36
    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_3

    .line 41
    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v6, "New data read: "

    .line 45
    .line 46
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-interface {v0, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v4, p0, Lvd/b0;->v:[B

    .line 60
    .line 61
    invoke-static {v4, v3, v5}, Lge/a;->m([BII)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-interface {v0, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    :goto_0
    iget-object v0, p0, Lvd/b0;->v:[B

    .line 69
    .line 70
    aget-byte v4, v0, v2

    .line 71
    .line 72
    const/16 v6, 0x42

    .line 73
    .line 74
    const/4 v7, 0x7

    .line 75
    const/16 v8, 0x4d

    .line 76
    .line 77
    const/4 v9, 0x6

    .line 78
    const/16 v10, 0x53

    .line 79
    .line 80
    const/4 v11, 0x5

    .line 81
    const/4 v12, 0x1

    .line 82
    if-nez v4, :cond_5

    .line 83
    .line 84
    aget-byte v13, v0, v3

    .line 85
    .line 86
    const/4 v14, -0x2

    .line 87
    if-ne v13, v14, :cond_5

    .line 88
    .line 89
    aget-byte v13, v0, v11

    .line 90
    .line 91
    if-ne v13, v10, :cond_5

    .line 92
    .line 93
    aget-byte v13, v0, v9

    .line 94
    .line 95
    if-ne v13, v8, :cond_5

    .line 96
    .line 97
    aget-byte v13, v0, v7

    .line 98
    .line 99
    if-ne v13, v6, :cond_5

    .line 100
    .line 101
    iput-boolean v12, p0, Lvd/b0;->k:Z

    .line 102
    .line 103
    iget-object v2, p0, Lvd/b0;->t:Ljava/io/InputStream;

    .line 104
    .line 105
    const/16 v3, 0x24

    .line 106
    .line 107
    invoke-static {v2, v0, v3, v5}, Lhe/e;->X(Ljava/io/InputStream;[BII)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-ge v0, v5, :cond_4

    .line 112
    .line 113
    return-object v1

    .line 114
    :cond_4
    iget-object v0, p0, Lvd/b0;->v:[B

    .line 115
    .line 116
    invoke-static {v5, v0}, Lge/a;->d(I[B)I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    int-to-long v1, v1

    .line 121
    const-wide v3, 0xffffffffL

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    and-long/2addr v1, v3

    .line 127
    shl-long/2addr v1, v5

    .line 128
    const/16 v5, 0x1c

    .line 129
    .line 130
    invoke-static {v5, v0}, Lge/a;->d(I[B)I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    int-to-long v5, v0

    .line 135
    and-long/2addr v3, v5

    .line 136
    or-long/2addr v1, v3

    .line 137
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    return-object v0

    .line 142
    :cond_5
    const/4 v13, -0x1

    .line 143
    if-nez v4, :cond_6

    .line 144
    .line 145
    aget-byte v4, v0, v12

    .line 146
    .line 147
    if-nez v4, :cond_6

    .line 148
    .line 149
    aget-byte v4, v0, v3

    .line 150
    .line 151
    if-ne v4, v13, :cond_6

    .line 152
    .line 153
    aget-byte v4, v0, v11

    .line 154
    .line 155
    if-ne v4, v10, :cond_6

    .line 156
    .line 157
    aget-byte v4, v0, v9

    .line 158
    .line 159
    if-ne v4, v8, :cond_6

    .line 160
    .line 161
    aget-byte v4, v0, v7

    .line 162
    .line 163
    if-ne v4, v6, :cond_6

    .line 164
    .line 165
    const/16 v1, 0x22

    .line 166
    .line 167
    invoke-static {v1, v0}, Lge/a;->b(I[B)S

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    int-to-long v0, v0

    .line 172
    const-wide/32 v2, 0xffff

    .line 173
    .line 174
    .line 175
    and-long/2addr v0, v2

    .line 176
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    return-object v0

    .line 181
    :cond_6
    const/4 v0, 0x0

    .line 182
    :goto_1
    const/16 v4, 0x23

    .line 183
    .line 184
    if-ge v0, v4, :cond_7

    .line 185
    .line 186
    sget-object v4, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 187
    .line 188
    iget-object v6, p0, Lvd/b0;->v:[B

    .line 189
    .line 190
    const/16 v7, 0x10

    .line 191
    .line 192
    invoke-static {v6, v2, v7}, Lge/a;->m([BII)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    const-string v7, "Possibly out of phase, trying to resync "

    .line 197
    .line 198
    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    invoke-interface {v4, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget-object v4, p0, Lvd/b0;->v:[B

    .line 206
    .line 207
    add-int/lit8 v6, v0, 0x1

    .line 208
    .line 209
    aget-byte v7, v4, v6

    .line 210
    .line 211
    aput-byte v7, v4, v0

    .line 212
    .line 213
    move v0, v6

    .line 214
    goto :goto_1

    .line 215
    :cond_7
    iget-object v0, p0, Lvd/b0;->t:Ljava/io/InputStream;

    .line 216
    .line 217
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-ne v0, v13, :cond_8

    .line 222
    .line 223
    return-object v1

    .line 224
    :cond_8
    iget-object v6, p0, Lvd/b0;->v:[B

    .line 225
    .line 226
    int-to-byte v0, v0

    .line 227
    aput-byte v0, v6, v4

    .line 228
    .line 229
    goto/16 :goto_0
.end method

.method public final b0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lhe/e;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

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
    const-string v4, "Acquire transport "

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
    const-string v0, " "

    .line 26
    .line 27
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    move-result-object v0

    .line 37
    invoke-interface {v2, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public final c0(I[B[B)[B
    .locals 3

    .line 1
    iget-boolean v0, p0, Lvd/b0;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lvd/b0;->B:Ljava/lang/Object;

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    check-cast v0, Lod/f;

    .line 10
    .line 11
    iget-object v1, v0, Lod/f;->P:Lvc/i;

    .line 12
    .line 13
    sget-object v2, Lvc/i;->g:Lvc/i;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lvc/i;->a(Lvc/i;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    iget v0, v0, Lod/f;->R:I

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    .line 26
    :try_start_0
    const-string v0, "SHA-512"

    .line 27
    .line 28
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 29
    .line 30
    .line 31
    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    if-eqz p3, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0, p3}, Ljava/security/MessageDigest;->update([B)V

    .line 35
    .line 36
    .line 37
    :cond_0
    const/4 p3, 0x0

    .line 38
    invoke-virtual {v0, p2, p3, p1}, Ljava/security/MessageDigest;->update([BII)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1

    .line 46
    :catch_0
    move-exception p1

    .line 47
    new-instance p2, Lvc/d;

    .line 48
    .line 49
    invoke-direct {p2, p1}, Lvc/d;-><init>(Ljava/security/GeneralSecurityException;)V

    .line 50
    .line 51
    .line 52
    throw p2

    .line 53
    :cond_1
    new-instance p1, Lvd/i0;

    .line 54
    .line 55
    invoke-direct {p1}, Lvd/i0;-><init>()V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_2
    new-instance p1, Lvd/i0;

    .line 60
    .line 61
    invoke-direct {p1}, Lvd/i0;-><init>()V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :cond_3
    new-instance p1, Lvd/i0;

    .line 66
    .line 67
    invoke-direct {p1}, Lvd/i0;-><init>()V

    .line 68
    .line 69
    .line 70
    throw p1
.end method

.method public final d0(Lad/d;Ljava/lang/String;Lad/f;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lvd/b0;->z:Lvc/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lvc/b;->e()Lvc/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lwc/a;

    .line 8
    .line 9
    iget-boolean v0, v0, Lwc/a;->M:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    :try_start_0
    iget-object v2, p0, Lvd/b0;->z:Lvc/b;

    .line 14
    .line 15
    invoke-interface {p3}, Lad/f;->g()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-interface {p3}, Lad/f;->V()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    const/4 v6, 0x1

    .line 24
    move-object v1, p0

    .line 25
    move-object v3, p2

    .line 26
    invoke-virtual/range {v1 .. v6}, Lvd/b0;->k0(Lvc/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lbd/a;

    .line 27
    .line 28
    .line 29
    move-result-object v0
    :try_end_0
    .catch Lvc/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p1

    .line 32
    new-instance p2, Lvd/r;

    .line 33
    .line 34
    const-string p3, "Failed to get DFS referral"

    .line 35
    .line 36
    invoke-direct {p2, p3, p1}, Lvd/r;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 37
    .line 38
    .line 39
    throw p2

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    :goto_0
    if-nez v0, :cond_2

    .line 42
    .line 43
    sget-object p2, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 44
    .line 45
    invoke-interface {p2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    if-eqz p3, :cond_1

    .line 50
    .line 51
    invoke-interface {p1}, Lhe/d;->r()I

    .line 52
    .line 53
    .line 54
    move-result p3

    .line 55
    const/16 v0, 0x8

    .line 56
    .line 57
    invoke-static {p3, v0}, Lge/a;->l(II)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    const-string v0, "Error code: 0x"

    .line 62
    .line 63
    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    invoke-interface {p2, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    new-instance p2, Lvd/r;

    .line 71
    .line 72
    invoke-interface {p1}, Lhe/d;->r()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    invoke-direct {p2, p1}, Lvd/r;-><init>(I)V

    .line 77
    .line 78
    .line 79
    throw p2

    .line 80
    :cond_2
    invoke-interface {p3}, Lad/f;->V()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-eqz p1, :cond_3

    .line 85
    .line 86
    iget-object p1, p0, Lvd/b0;->z:Lvc/b;

    .line 87
    .line 88
    invoke-interface {p1}, Lvc/b;->e()Lvc/f;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Lwc/a;

    .line 93
    .line 94
    iget-boolean p1, p1, Lwc/a;->P:Z

    .line 95
    .line 96
    if-eqz p1, :cond_3

    .line 97
    .line 98
    invoke-interface {p3}, Lad/f;->V()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {v0, p1}, Lbd/a;->b(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_3
    sget-object p1, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 106
    .line 107
    invoke-interface {p1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 108
    .line 109
    .line 110
    move-result p3

    .line 111
    if-eqz p3, :cond_4

    .line 112
    .line 113
    new-instance p3, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v1, "Got referral "

    .line 116
    .line 117
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p3

    .line 127
    invoke-interface {p1, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :cond_4
    iget-object p1, p0, Lvd/b0;->z:Lvc/b;

    .line 131
    .line 132
    invoke-interface {p1}, Lvc/b;->k()Lvc/h;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    iget-object p3, p0, Lvd/b0;->z:Lvc/b;

    .line 137
    .line 138
    check-cast p1, Lvd/d;

    .line 139
    .line 140
    const-string v1, "Invalid UNC path "

    .line 141
    .line 142
    const-string v2, "Key is "

    .line 143
    .line 144
    const-string v3, "\\"

    .line 145
    .line 146
    const-string v4, "Adding key "

    .line 147
    .line 148
    const-string v5, "Inserting referral for "

    .line 149
    .line 150
    monitor-enter p1

    .line 151
    :try_start_1
    invoke-interface {p3}, Lvc/b;->e()Lvc/f;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    check-cast v6, Lwc/a;

    .line 156
    .line 157
    iget-boolean v6, v6, Lwc/a;->M:Z

    .line 158
    .line 159
    if-nez v6, :cond_e

    .line 160
    .line 161
    sget-object v6, Lvd/d;->h:Lorg/slf4j/Logger;

    .line 162
    .line 163
    invoke-interface {v6}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 164
    .line 165
    .line 166
    move-result v7

    .line 167
    if-eqz v7, :cond_5

    .line 168
    .line 169
    new-instance v7, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    invoke-interface {v6, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :catchall_0
    move-exception p2

    .line 186
    goto/16 :goto_5

    .line 187
    .line 188
    :cond_5
    :goto_1
    const/4 v5, 0x1

    .line 189
    const/16 v7, 0x5c

    .line 190
    .line 191
    invoke-virtual {p2, v7, v5}, Ljava/lang/String;->indexOf(II)I

    .line 192
    .line 193
    .line 194
    move-result v8

    .line 195
    add-int/lit8 v9, v8, 0x1

    .line 196
    .line 197
    invoke-virtual {p2, v7, v9}, Ljava/lang/String;->indexOf(II)I

    .line 198
    .line 199
    .line 200
    move-result v10

    .line 201
    if-ltz v8, :cond_d

    .line 202
    .line 203
    if-ltz v10, :cond_d

    .line 204
    .line 205
    invoke-virtual {p2, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 210
    .line 211
    invoke-virtual {v1, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {p2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v9

    .line 219
    iget v10, v0, Lbd/a;->a:I

    .line 220
    .line 221
    const/4 v11, 0x0

    .line 222
    invoke-virtual {p2, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    invoke-virtual {p2, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p2

    .line 230
    invoke-interface {p3}, Lvc/b;->e()Lvc/f;

    .line 231
    .line 232
    .line 233
    move-result-object v8

    .line 234
    check-cast v8, Lwc/a;

    .line 235
    .line 236
    iget-boolean v8, v8, Lwc/a;->P:Z

    .line 237
    .line 238
    if-eqz v8, :cond_6

    .line 239
    .line 240
    invoke-virtual {v0, v1}, Lbd/a;->c(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    :cond_6
    invoke-interface {v6}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 244
    .line 245
    .line 246
    move-result v8

    .line 247
    if-eqz v8, :cond_7

    .line 248
    .line 249
    new-instance v8, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    const-string v4, " to "

    .line 258
    .line 259
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    invoke-interface {v6, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    add-int/lit8 v1, v1, 0x2

    .line 277
    .line 278
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    add-int/2addr v1, v4

    .line 283
    iget v4, v0, Lbd/a;->a:I

    .line 284
    .line 285
    if-gt v1, v4, :cond_c

    .line 286
    .line 287
    sub-int/2addr v4, v1

    .line 288
    iput v4, v0, Lbd/a;->a:I

    .line 289
    .line 290
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    sub-int/2addr v1, v5

    .line 295
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    if-eq v1, v7, :cond_8

    .line 300
    .line 301
    invoke-virtual {p2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object p2

    .line 305
    :cond_8
    invoke-interface {v6}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    if-eqz v1, :cond_9

    .line 310
    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    invoke-interface {v6, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    :cond_9
    iget-object v1, p1, Lvd/d;->e:Lvd/b;

    .line 327
    .line 328
    iget-object v2, p1, Lvd/d;->f:Ljava/lang/Object;

    .line 329
    .line 330
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    if-eqz v1, :cond_a

    .line 332
    .line 333
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 334
    .line 335
    .line 336
    move-result-wide v3

    .line 337
    const-wide/16 v5, 0x2710

    .line 338
    .line 339
    add-long/2addr v3, v5

    .line 340
    iget-wide v5, v1, Lvd/b;->a:J

    .line 341
    .line 342
    cmp-long v7, v3, v5

    .line 343
    .line 344
    if-lez v7, :cond_b

    .line 345
    .line 346
    goto :goto_2

    .line 347
    :catchall_1
    move-exception p2

    .line 348
    goto :goto_3

    .line 349
    :cond_a
    :goto_2
    new-instance v1, Lvd/b;

    .line 350
    .line 351
    invoke-interface {p3}, Lvc/b;->e()Lvc/f;

    .line 352
    .line 353
    .line 354
    move-result-object p3

    .line 355
    check-cast p3, Lwc/a;

    .line 356
    .line 357
    iget-wide v3, p3, Lwc/a;->N:J

    .line 358
    .line 359
    invoke-direct {v1, v3, v4}, Lvd/b;-><init>(J)V

    .line 360
    .line 361
    .line 362
    :cond_b
    iput-object v1, p1, Lvd/d;->e:Lvd/b;

    .line 363
    .line 364
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 365
    :try_start_3
    iget-object p3, v1, Lvd/b;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 366
    .line 367
    invoke-virtual {p3, p2, v0}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 368
    .line 369
    .line 370
    monitor-exit p1

    .line 371
    goto :goto_4

    .line 372
    :goto_3
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 373
    :try_start_5
    throw p2

    .line 374
    :cond_c
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 375
    .line 376
    const-string p3, "Stripping more than consumed"

    .line 377
    .line 378
    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    throw p2

    .line 382
    :cond_d
    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object p2

    .line 386
    invoke-interface {v6, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 387
    .line 388
    .line 389
    monitor-exit p1

    .line 390
    goto :goto_4

    .line 391
    :cond_e
    monitor-exit p1

    .line 392
    :goto_4
    new-instance p1, Lvd/e;

    .line 393
    .line 394
    invoke-direct {p1, v0}, Lvd/e;-><init>(Lbd/a;)V

    .line 395
    .line 396
    .line 397
    throw p1

    .line 398
    :goto_5
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 399
    throw p2
.end method

.method public final e0(Lad/c;)Z
    .locals 5

    .line 1
    :goto_0
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_8

    .line 3
    .line 4
    iget-boolean v1, p0, Lvd/b0;->k:Z

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_6

    .line 8
    .line 9
    move-object v1, p1

    .line 10
    check-cast v1, Lid/b;

    .line 11
    .line 12
    invoke-interface {p1}, Lad/b;->b()Lad/d;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-interface {v3}, Lhe/d;->r()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    sparse-switch v4, :sswitch_data_0

    .line 21
    .line 22
    .line 23
    goto :goto_4

    .line 24
    :cond_0
    :goto_1
    :sswitch_0
    const/4 v0, 0x0

    .line 25
    goto :goto_3

    .line 26
    :sswitch_1
    instance-of p1, v1, Lad/f;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    new-instance p1, Lvd/r;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "Invalid request for a DFS NT_STATUS_PATH_NOT_COVERED response "

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-direct {p1, v0}, Lvd/r;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_1
    check-cast v1, Lad/f;

    .line 51
    .line 52
    invoke-interface {v1}, Lad/f;->W()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p0, v3, p1, v1}, Lvd/b0;->d0(Lad/d;Ljava/lang/String;Lad/f;)V

    .line 57
    .line 58
    .line 59
    const/4 p1, 0x0

    .line 60
    throw p1

    .line 61
    :sswitch_2
    new-instance p1, Lvd/p;

    .line 62
    .line 63
    invoke-interface {v3}, Lhe/d;->r()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-direct {p1, v0}, Lvd/p;-><init>(I)V

    .line 68
    .line 69
    .line 70
    throw p1

    .line 71
    :sswitch_3
    new-instance p1, Lvd/i0;

    .line 72
    .line 73
    invoke-direct {p1}, Lvd/i0;-><init>()V

    .line 74
    .line 75
    .line 76
    throw p1

    .line 77
    :sswitch_4
    instance-of v0, v3, Lld/b;

    .line 78
    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_2
    instance-of v0, v3, Lmd/b;

    .line 83
    .line 84
    if-eqz v0, :cond_4

    .line 85
    .line 86
    move-object v0, v3

    .line 87
    check-cast v0, Lmd/b;

    .line 88
    .line 89
    iget v0, v0, Lmd/b;->E:I

    .line 90
    .line 91
    const v4, 0x11c017

    .line 92
    .line 93
    .line 94
    if-eq v0, v4, :cond_0

    .line 95
    .line 96
    const v4, 0x11400c

    .line 97
    .line 98
    .line 99
    if-ne v0, v4, :cond_4

    .line 100
    .line 101
    :goto_2
    goto :goto_1

    .line 102
    :goto_3
    :sswitch_5
    invoke-interface {v3}, Lhe/d;->F()Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-nez v1, :cond_3

    .line 107
    .line 108
    if-nez v0, :cond_7

    .line 109
    .line 110
    return v2

    .line 111
    :cond_3
    new-instance p1, Lvd/n;

    .line 112
    .line 113
    invoke-direct {p1}, Lvd/n;-><init>()V

    .line 114
    .line 115
    .line 116
    throw p1

    .line 117
    :cond_4
    :goto_4
    sget-object p1, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 118
    .line 119
    invoke-interface {p1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_5

    .line 124
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string v2, "Error code: 0x"

    .line 128
    .line 129
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-interface {v3}, Lhe/d;->r()I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    const/16 v4, 0x8

    .line 137
    .line 138
    invoke-static {v2, v4}, Lge/a;->l(II)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v2, " for "

    .line 146
    .line 147
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    :cond_5
    new-instance p1, Lvd/r;

    .line 169
    .line 170
    invoke-interface {v3}, Lhe/d;->r()I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    invoke-direct {p1, v0}, Lvd/r;-><init>(I)V

    .line 175
    .line 176
    .line 177
    throw p1

    .line 178
    :cond_6
    move-object v0, p1

    .line 179
    check-cast v0, Led/c;

    .line 180
    .line 181
    invoke-interface {p1}, Lad/b;->b()Lad/d;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    check-cast v1, Led/c;

    .line 186
    .line 187
    invoke-virtual {p0, v0, v1}, Lvd/b0;->f0(Led/c;Led/c;)Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-nez v0, :cond_7

    .line 192
    .line 193
    return v2

    .line 194
    :cond_7
    invoke-interface {p1}, Lad/c;->getNext()Lad/c;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :cond_8
    return v0

    .line 201
    :sswitch_data_0
    .sparse-switch
        -0x7ffffffb -> :sswitch_4
        -0x7ffffffa -> :sswitch_5
        -0x3ffffff0 -> :sswitch_3
        -0x3fffffea -> :sswitch_0
        -0x3fffffde -> :sswitch_2
        -0x3fffff96 -> :sswitch_2
        -0x3fffff93 -> :sswitch_2
        -0x3fffff92 -> :sswitch_2
        -0x3fffff91 -> :sswitch_2
        -0x3fffff90 -> :sswitch_2
        -0x3fffff8f -> :sswitch_2
        -0x3fffff8e -> :sswitch_2
        -0x3fffff45 -> :sswitch_3
        -0x3ffffe74 -> :sswitch_2
        -0x3ffffdcc -> :sswitch_2
        -0x3ffffda9 -> :sswitch_1
        0x0 -> :sswitch_5
        0x103 -> :sswitch_0
        0x10b -> :sswitch_0
        0x10c -> :sswitch_0
    .end sparse-switch
.end method

.method public final f0(Led/c;Led/c;)Z
    .locals 4

    .line 1
    iget v0, p2, Led/c;->f:I

    .line 2
    .line 3
    const v1, 0x30002

    .line 4
    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const v0, -0x3ffffda9    # -2.0001428f

    .line 9
    .line 10
    .line 11
    iput v0, p2, Led/c;->f:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {v0}, Lvd/r;->b(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput v0, p2, Led/c;->f:I

    .line 19
    .line 20
    :goto_0
    iget v0, p2, Led/c;->f:I

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    sparse-switch v0, :sswitch_data_0

    .line 25
    .line 26
    .line 27
    packed-switch v0, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    sget-object v0, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 31
    .line 32
    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v2, "Error code: 0x"

    .line 41
    .line 42
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget v2, p2, Led/c;->f:I

    .line 46
    .line 47
    const/16 v3, 0x8

    .line 48
    .line 49
    invoke-static {v2, v3}, Lge/a;->l(II)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v2, " for "

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    new-instance p1, Lvd/r;

    .line 80
    .line 81
    iget p2, p2, Led/c;->f:I

    .line 82
    .line 83
    invoke-direct {p1, p2}, Lvd/r;-><init>(I)V

    .line 84
    .line 85
    .line 86
    throw p1

    .line 87
    :sswitch_0
    new-instance p1, Lvd/i0;

    .line 88
    .line 89
    invoke-direct {p1}, Lvd/i0;-><init>()V

    .line 90
    .line 91
    .line 92
    throw p1

    .line 93
    :sswitch_1
    iget-object v0, p1, Led/c;->t:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {p0, p2, v0, p1}, Lvd/b0;->d0(Lad/d;Ljava/lang/String;Lad/f;)V

    .line 96
    .line 97
    .line 98
    const/4 p1, 0x0

    .line 99
    throw p1

    .line 100
    :pswitch_0
    :sswitch_2
    new-instance p1, Lvd/p;

    .line 101
    .line 102
    iget p2, p2, Led/c;->f:I

    .line 103
    .line 104
    invoke-direct {p1, p2}, Lvd/p;-><init>(I)V

    .line 105
    .line 106
    .line 107
    throw p1

    .line 108
    :sswitch_3
    const/4 p1, 0x0

    .line 109
    goto :goto_1

    .line 110
    :cond_2
    :sswitch_4
    const/4 p1, 0x1

    .line 111
    :goto_1
    iget-boolean p2, p2, Led/c;->s:Z

    .line 112
    .line 113
    if-nez p2, :cond_3

    .line 114
    .line 115
    return p1

    .line 116
    :cond_3
    new-instance p1, Lvd/r;

    .line 117
    .line 118
    const-string p2, "Signature verification failed."

    .line 119
    .line 120
    invoke-direct {p1, p2}, Lvd/r;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p1

    .line 124
    nop

    .line 125
    :sswitch_data_0
    .sparse-switch
        -0x7ffffffb -> :sswitch_3
        -0x3fffffea -> :sswitch_3
        -0x3fffffde -> :sswitch_2
        -0x3fffff96 -> :sswitch_2
        -0x3fffff5e -> :sswitch_1
        -0x3fffff45 -> :sswitch_0
        -0x3ffffe74 -> :sswitch_2
        -0x3ffffdcc -> :sswitch_2
        -0x3ffffda9 -> :sswitch_1
        0x0 -> :sswitch_4
    .end sparse-switch

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    :pswitch_data_0
    .packed-switch -0x3fffff93
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final g0(Ljava/lang/Long;)Lad/d;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lvd/b0;->k:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    const-wide/16 v4, -0x1

    .line 11
    .line 12
    cmp-long p1, v2, v4

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    return-object v1

    .line 17
    :cond_0
    iget-object p1, p0, Lvd/b0;->v:[B

    .line 18
    .line 19
    const/16 v0, 0x10

    .line 20
    .line 21
    invoke-static {v0, p1}, Lge/a;->b(I[B)S

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const v0, 0xffff

    .line 26
    .line 27
    .line 28
    and-int/2addr p1, v0

    .line 29
    const/16 v0, 0x12

    .line 30
    .line 31
    if-ne p1, v0, :cond_3

    .line 32
    .line 33
    new-instance p1, Lnd/a;

    .line 34
    .line 35
    iget-object v0, p0, Lvd/b0;->z:Lvc/b;

    .line 36
    .line 37
    invoke-interface {v0}, Lvc/b;->e()Lvc/f;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-direct {p1, v0}, Lnd/a;-><init>(Lvc/f;)V

    .line 42
    .line 43
    .line 44
    return-object p1

    .line 45
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    const-wide/32 v4, 0xffff

    .line 50
    .line 51
    .line 52
    cmp-long p1, v2, v4

    .line 53
    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    return-object v1

    .line 57
    :cond_2
    iget-object p1, p0, Lvd/b0;->v:[B

    .line 58
    .line 59
    const/16 v0, 0x8

    .line 60
    .line 61
    aget-byte p1, p1, v0

    .line 62
    .line 63
    const/16 v0, 0x24

    .line 64
    .line 65
    if-ne p1, v0, :cond_3

    .line 66
    .line 67
    new-instance p1, Lfd/e;

    .line 68
    .line 69
    iget-object v0, p0, Lvd/b0;->z:Lvc/b;

    .line 70
    .line 71
    invoke-interface {v0}, Lvc/b;->e()Lvc/f;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-direct {p1, v0}, Lfd/e;-><init>(Lvc/f;)V

    .line 76
    .line 77
    .line 78
    return-object p1

    .line 79
    :cond_3
    return-object v1
.end method

.method public final h0(Lad/b;)V
    .locals 7

    .line 1
    const-string v0, "Invalid payload size: "

    .line 2
    .line 3
    iget-object v1, p0, Lvd/b0;->z:Lvc/b;

    .line 4
    .line 5
    invoke-interface {v1}, Lvc/b;->h()La0/h;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, La0/h;->l()[B

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :try_start_0
    iget-object v2, p0, Lvd/b0;->v:[B

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    const/16 v4, 0x24

    .line 17
    .line 18
    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    invoke-static {v2, v1}, Lge/a;->a(I[B)S

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const v3, 0xffff

    .line 27
    .line 28
    .line 29
    and-int/2addr v2, v3

    .line 30
    const/16 v5, 0x21

    .line 31
    .line 32
    if-lt v2, v5, :cond_4

    .line 33
    .line 34
    add-int/lit8 v5, v2, 0x4

    .line 35
    .line 36
    iget-object v6, p0, Lvd/b0;->z:Lvc/b;

    .line 37
    .line 38
    invoke-interface {v6}, Lvc/b;->e()Lvc/f;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    check-cast v6, Lwc/a;

    .line 43
    .line 44
    iget v6, v6, Lwc/a;->h0:I

    .line 45
    .line 46
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-gt v5, v3, :cond_4

    .line 51
    .line 52
    const/16 v0, 0x9

    .line 53
    .line 54
    invoke-static {v0, v1}, Lge/a;->d(I[B)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-interface {p1}, Lad/b;->y()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    const/16 v5, 0x2e

    .line 63
    .line 64
    if-ne v3, v5, :cond_2

    .line 65
    .line 66
    if-eqz v0, :cond_0

    .line 67
    .line 68
    const v3, -0x7ffffffb

    .line 69
    .line 70
    .line 71
    if-ne v0, v3, :cond_2

    .line 72
    .line 73
    :cond_0
    move-object v0, p1

    .line 74
    check-cast v0, Lfd/p;

    .line 75
    .line 76
    iget-object v2, p0, Lvd/b0;->t:Ljava/io/InputStream;

    .line 77
    .line 78
    const/16 v3, 0x1b

    .line 79
    .line 80
    invoke-static {v2, v1, v4, v3}, Lhe/e;->X(Ljava/io/InputStream;[BII)I

    .line 81
    .line 82
    .line 83
    invoke-interface {p1, v1}, Lad/b;->decode([B)I

    .line 84
    .line 85
    .line 86
    iget p1, v0, Lfd/p;->P:I

    .line 87
    .line 88
    add-int/lit8 p1, p1, -0x3b

    .line 89
    .line 90
    iget v2, v0, Led/c;->l:I

    .line 91
    .line 92
    if-lez v2, :cond_1

    .line 93
    .line 94
    if-lez p1, :cond_1

    .line 95
    .line 96
    const/4 v2, 0x4

    .line 97
    if-ge p1, v2, :cond_1

    .line 98
    .line 99
    iget-object v2, p0, Lvd/b0;->t:Ljava/io/InputStream;

    .line 100
    .line 101
    const/16 v3, 0x3f

    .line 102
    .line 103
    invoke-static {v2, v1, v3, p1}, Lhe/e;->X(Ljava/io/InputStream;[BII)I

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catchall_0
    move-exception p1

    .line 108
    goto :goto_2

    .line 109
    :cond_1
    :goto_0
    iget p1, v0, Lfd/p;->O:I

    .line 110
    .line 111
    if-lez p1, :cond_3

    .line 112
    .line 113
    iget-object v2, p0, Lvd/b0;->t:Ljava/io/InputStream;

    .line 114
    .line 115
    iget-object v3, v0, Lfd/p;->L:[B

    .line 116
    .line 117
    iget v0, v0, Lfd/p;->M:I

    .line 118
    .line 119
    invoke-static {v2, v3, v0, p1}, Lhe/e;->X(Ljava/io/InputStream;[BII)I

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_2
    iget-object v0, p0, Lvd/b0;->t:Ljava/io/InputStream;

    .line 124
    .line 125
    add-int/lit8 v2, v2, -0x20

    .line 126
    .line 127
    invoke-static {v0, v1, v4, v2}, Lhe/e;->X(Ljava/io/InputStream;[BII)I

    .line 128
    .line 129
    .line 130
    invoke-interface {p1, v1}, Lad/b;->decode([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    .line 132
    .line 133
    :cond_3
    :goto_1
    iget-object p1, p0, Lvd/b0;->z:Lvc/b;

    .line 134
    .line 135
    invoke-interface {p1}, Lvc/b;->h()La0/h;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p1, v1}, La0/h;->m([B)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_4
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    .line 144
    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    :goto_2
    iget-object v0, p0, Lvd/b0;->z:Lvc/b;

    .line 162
    .line 163
    invoke-interface {v0}, Lvc/b;->h()La0/h;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v0, v1}, La0/h;->m([B)V

    .line 168
    .line 169
    .line 170
    throw p1
.end method

.method public final i0(Lad/b;)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    const/16 v2, 0x40

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    iget-object v4, v1, Lvd/b0;->v:[B

    .line 8
    .line 9
    const/4 v5, 0x2

    .line 10
    invoke-static {v5, v4}, Lge/a;->a(I[B)S

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    const v6, 0xffff

    .line 15
    .line 16
    .line 17
    and-int/2addr v4, v6

    .line 18
    iget-object v6, v1, Lvd/b0;->v:[B

    .line 19
    .line 20
    const/4 v7, 0x1

    .line 21
    aget-byte v8, v6, v7

    .line 22
    .line 23
    and-int/lit16 v8, v8, 0xff

    .line 24
    .line 25
    shl-int/lit8 v8, v8, 0x10

    .line 26
    .line 27
    or-int/2addr v4, v8

    .line 28
    const/16 v8, 0x41

    .line 29
    .line 30
    if-lt v4, v8, :cond_12

    .line 31
    .line 32
    aget-byte v8, v6, v3

    .line 33
    .line 34
    if-nez v8, :cond_11

    .line 35
    .line 36
    const/4 v8, 0x4

    .line 37
    aget-byte v9, v6, v8

    .line 38
    .line 39
    const/4 v10, -0x2

    .line 40
    if-ne v9, v10, :cond_11

    .line 41
    .line 42
    const/4 v9, 0x5

    .line 43
    aget-byte v9, v6, v9

    .line 44
    .line 45
    const/16 v10, 0x53

    .line 46
    .line 47
    if-ne v9, v10, :cond_11

    .line 48
    .line 49
    const/4 v9, 0x6

    .line 50
    aget-byte v9, v6, v9

    .line 51
    .line 52
    const/16 v10, 0x4d

    .line 53
    .line 54
    if-ne v9, v10, :cond_11

    .line 55
    .line 56
    const/4 v9, 0x7

    .line 57
    aget-byte v9, v6, v9

    .line 58
    .line 59
    const/16 v10, 0x42

    .line 60
    .line 61
    if-ne v9, v10, :cond_11

    .line 62
    .line 63
    const/16 v9, 0x18

    .line 64
    .line 65
    invoke-static {v9, v6}, Lge/a;->d(I[B)I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    iget-object v9, v1, Lvd/b0;->z:Lvc/b;

    .line 70
    .line 71
    invoke-interface {v9}, Lvc/b;->e()Lvc/f;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    check-cast v9, Lwc/a;

    .line 76
    .line 77
    iget v9, v9, Lwc/a;->h0:I

    .line 78
    .line 79
    if-eqz v6, :cond_0

    .line 80
    .line 81
    move v10, v6

    .line 82
    goto :goto_0

    .line 83
    :cond_0
    move v10, v4

    .line 84
    :goto_0
    const-string v11, "Message size %d exceeds maxiumum buffer size %d"

    .line 85
    .line 86
    if-gt v10, v9, :cond_10

    .line 87
    .line 88
    move-object/from16 v10, p1

    .line 89
    .line 90
    check-cast v10, Lid/d;

    .line 91
    .line 92
    iget-object v12, v1, Lvd/b0;->z:Lvc/b;

    .line 93
    .line 94
    invoke-interface {v12}, Lvc/b;->h()La0/h;

    .line 95
    .line 96
    .line 97
    move-result-object v12

    .line 98
    invoke-virtual {v12}, La0/h;->l()[B

    .line 99
    .line 100
    .line 101
    move-result-object v12

    .line 102
    if-eqz v6, :cond_1

    .line 103
    .line 104
    move v13, v6

    .line 105
    goto :goto_1

    .line 106
    :cond_1
    move v13, v4

    .line 107
    :goto_1
    :try_start_0
    iget-object v14, v1, Lvd/b0;->v:[B

    .line 108
    .line 109
    invoke-static {v14, v8, v12, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    .line 111
    .line 112
    iget-object v8, v1, Lvd/b0;->t:Ljava/io/InputStream;

    .line 113
    .line 114
    add-int/lit8 v14, v13, -0x40

    .line 115
    .line 116
    invoke-static {v8, v12, v2, v14}, Lhe/e;->X(Ljava/io/InputStream;[BII)I

    .line 117
    .line 118
    .line 119
    iput v13, v10, Lid/b;->m:I

    .line 120
    .line 121
    invoke-virtual {v10, v3, v12, v3}, Lid/b;->h0(I[BZ)I

    .line 122
    .line 123
    .line 124
    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    const-string v14, "WHAT? ( read %d decoded %d ): %s"

    .line 126
    .line 127
    if-gt v8, v13, :cond_f

    .line 128
    .line 129
    const-string v15, "Overlapping commands"

    .line 130
    .line 131
    if-eqz v6, :cond_3

    .line 132
    .line 133
    if-gt v8, v6, :cond_2

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_2
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    .line 137
    .line 138
    invoke-direct {v0, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw v0

    .line 142
    :catchall_0
    move-exception v0

    .line 143
    goto/16 :goto_7

    .line 144
    .line 145
    :cond_3
    :goto_2
    sub-int/2addr v4, v13

    .line 146
    :goto_3
    if-lez v4, :cond_e

    .line 147
    .line 148
    if-eqz v6, :cond_e

    .line 149
    .line 150
    iget-object v6, v10, Lid/b;->w:Lid/b;

    .line 151
    .line 152
    check-cast v6, Lad/d;

    .line 153
    .line 154
    move-object v10, v6

    .line 155
    check-cast v10, Lid/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    .line 157
    sget-object v6, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 158
    .line 159
    if-nez v10, :cond_4

    .line 160
    .line 161
    :try_start_2
    const-string v0, "Response not properly set up"

    .line 162
    .line 163
    invoke-interface {v6, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    iget-object v0, v1, Lvd/b0;->t:Ljava/io/InputStream;

    .line 167
    .line 168
    int-to-long v2, v4

    .line 169
    invoke-virtual {v0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 170
    .line 171
    .line 172
    goto/16 :goto_6

    .line 173
    .line 174
    :cond_4
    iget-object v8, v1, Lvd/b0;->t:Ljava/io/InputStream;

    .line 175
    .line 176
    invoke-static {v8, v12, v3, v2}, Lhe/e;->X(Ljava/io/InputStream;[BII)I

    .line 177
    .line 178
    .line 179
    const/16 v8, 0x14

    .line 180
    .line 181
    invoke-static {v8, v12}, Lge/a;->d(I[B)I

    .line 182
    .line 183
    .line 184
    move-result v8

    .line 185
    if-eqz v8, :cond_5

    .line 186
    .line 187
    if-gt v8, v9, :cond_6

    .line 188
    .line 189
    :cond_5
    if-nez v8, :cond_8

    .line 190
    .line 191
    if-le v4, v9, :cond_8

    .line 192
    .line 193
    :cond_6
    new-instance v0, Ljava/io/IOException;

    .line 194
    .line 195
    if-eqz v8, :cond_7

    .line 196
    .line 197
    move v4, v8

    .line 198
    :cond_7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    new-array v5, v5, [Ljava/lang/Object;

    .line 207
    .line 208
    aput-object v2, v5, v3

    .line 209
    .line 210
    aput-object v4, v5, v7

    .line 211
    .line 212
    invoke-static {v11, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw v0

    .line 220
    :cond_8
    if-eqz v8, :cond_9

    .line 221
    .line 222
    move v13, v8

    .line 223
    goto :goto_4

    .line 224
    :cond_9
    move v13, v4

    .line 225
    :goto_4
    invoke-interface {v6}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 226
    .line 227
    .line 228
    move-result v16

    .line 229
    if-eqz v16, :cond_a

    .line 230
    .line 231
    const-string v2, "Compound next command %d read size %d remain %d"

    .line 232
    .line 233
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 234
    .line 235
    .line 236
    move-result-object v17

    .line 237
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v18

    .line 241
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 242
    .line 243
    .line 244
    move-result-object v19

    .line 245
    new-array v5, v0, [Ljava/lang/Object;

    .line 246
    .line 247
    aput-object v17, v5, v3

    .line 248
    .line 249
    aput-object v18, v5, v7

    .line 250
    .line 251
    const/16 v17, 0x2

    .line 252
    .line 253
    aput-object v19, v5, v17

    .line 254
    .line 255
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    invoke-interface {v6, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    :cond_a
    iput v13, v10, Lid/b;->m:I

    .line 263
    .line 264
    iget-object v2, v1, Lvd/b0;->t:Ljava/io/InputStream;

    .line 265
    .line 266
    const/16 v5, 0x40

    .line 267
    .line 268
    add-int/lit8 v6, v13, -0x40

    .line 269
    .line 270
    invoke-static {v2, v12, v5, v6}, Lhe/e;->X(Ljava/io/InputStream;[BII)I

    .line 271
    .line 272
    .line 273
    invoke-virtual {v10, v3, v12, v7}, Lid/b;->h0(I[BZ)I

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    if-gt v2, v13, :cond_d

    .line 278
    .line 279
    if-eqz v8, :cond_c

    .line 280
    .line 281
    if-gt v2, v8, :cond_b

    .line 282
    .line 283
    goto :goto_5

    .line 284
    :cond_b
    new-instance v0, Ljava/io/IOException;

    .line 285
    .line 286
    invoke-direct {v0, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    throw v0

    .line 290
    :cond_c
    :goto_5
    sub-int/2addr v4, v13

    .line 291
    move v6, v8

    .line 292
    const/16 v2, 0x40

    .line 293
    .line 294
    const/4 v5, 0x2

    .line 295
    goto/16 :goto_3

    .line 296
    .line 297
    :cond_d
    new-instance v4, Ljava/io/IOException;

    .line 298
    .line 299
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 300
    .line 301
    .line 302
    move-result-object v5

    .line 303
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    new-array v0, v0, [Ljava/lang/Object;

    .line 308
    .line 309
    aput-object v5, v0, v3

    .line 310
    .line 311
    aput-object v2, v0, v7

    .line 312
    .line 313
    const/4 v2, 0x2

    .line 314
    aput-object v10, v0, v2

    .line 315
    .line 316
    invoke-static {v14, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 324
    :cond_e
    :goto_6
    iget-object v0, v1, Lvd/b0;->z:Lvc/b;

    .line 325
    .line 326
    invoke-interface {v0}, Lvc/b;->h()La0/h;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-virtual {v0, v12}, La0/h;->m([B)V

    .line 331
    .line 332
    .line 333
    return-void

    .line 334
    :cond_f
    :try_start_3
    new-instance v2, Ljava/io/IOException;

    .line 335
    .line 336
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 341
    .line 342
    .line 343
    move-result-object v5

    .line 344
    new-array v0, v0, [Ljava/lang/Object;

    .line 345
    .line 346
    aput-object v4, v0, v3

    .line 347
    .line 348
    aput-object v5, v0, v7

    .line 349
    .line 350
    const/4 v3, 0x2

    .line 351
    aput-object v10, v0, v3

    .line 352
    .line 353
    invoke-static {v14, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 361
    :goto_7
    iget-object v2, v1, Lvd/b0;->z:Lvc/b;

    .line 362
    .line 363
    invoke-interface {v2}, Lvc/b;->h()La0/h;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    invoke-virtual {v2, v12}, La0/h;->m([B)V

    .line 368
    .line 369
    .line 370
    throw v0

    .line 371
    :cond_10
    new-instance v0, Ljava/io/IOException;

    .line 372
    .line 373
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 378
    .line 379
    .line 380
    move-result-object v4

    .line 381
    const/4 v5, 0x2

    .line 382
    new-array v5, v5, [Ljava/lang/Object;

    .line 383
    .line 384
    aput-object v2, v5, v3

    .line 385
    .line 386
    aput-object v4, v5, v7

    .line 387
    .line 388
    invoke-static {v11, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    throw v0

    .line 396
    :cond_11
    new-instance v0, Ljava/io/IOException;

    .line 397
    .line 398
    const-string v2, "Houston we have a synchronization problem"

    .line 399
    .line 400
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    throw v0

    .line 404
    :cond_12
    new-instance v0, Ljava/io/IOException;

    .line 405
    .line 406
    const-string v2, "Invalid payload size: "

    .line 407
    .line 408
    invoke-static {v4, v2}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v2

    .line 412
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    goto :goto_9

    .line 416
    :goto_8
    throw v0

    .line 417
    :goto_9
    goto :goto_8
.end method

.method public final j0()Z
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lvd/b0;->z:Lvc/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lvc/b;->e()Lvc/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lwc/a;

    .line 8
    .line 9
    iget v0, v0, Lwc/a;->A:I

    .line 10
    .line 11
    int-to-long v0, v0

    .line 12
    invoke-virtual {p0, v0, v1}, Lhe/e;->A(J)Z

    .line 13
    .line 14
    .line 15
    move-result v0
    :try_end_0
    .catch Lhe/f; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return v0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    new-instance v1, Lvd/r;

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v3, "Failed to connect: "

    .line 23
    .line 24
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v3, p0, Lvd/b0;->n:Lsd/k;

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-direct {v1, v2, v0}, Lvd/r;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 37
    .line 38
    .line 39
    throw v1
.end method

.method public final k0(Lvc/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lbd/a;
    .locals 21

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    move/from16 v2, p5

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    const-string v5, "addSuppressed"

    .line 10
    .line 11
    const-class v6, Ljava/lang/Throwable;

    .line 12
    .line 13
    sget-object v7, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 14
    .line 15
    invoke-interface {v7}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result v8

    .line 19
    if-eqz v8, :cond_0

    .line 20
    .line 21
    new-instance v8, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v9, "Resolving DFS path "

    .line 24
    .line 25
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    invoke-interface {v7, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    const/4 v9, 0x2

    .line 43
    if-lt v8, v9, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    const/16 v10, 0x5c

    .line 50
    .line 51
    if-ne v8, v10, :cond_1

    .line 52
    .line 53
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    if-eq v8, v10, :cond_2

    .line 58
    .line 59
    :cond_1
    move-object/from16 v8, p0

    .line 60
    .line 61
    move-object/from16 v10, p1

    .line 62
    .line 63
    move-object/from16 v11, p3

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    new-instance v1, Lvd/r;

    .line 67
    .line 68
    const-string v2, "Path must not start with double slash: "

    .line 69
    .line 70
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-direct {v1, v0}, Lvd/r;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v1

    .line 78
    :goto_0
    invoke-virtual {v8, v10, v11, v1}, Lvd/b0;->m0(Lvc/b;Ljava/lang/String;Ljava/lang/String;)Lvd/z;

    .line 79
    .line 80
    .line 81
    move-result-object v11

    .line 82
    :try_start_0
    iget-object v12, v11, Lvd/z;->d:Lvd/b0;

    .line 83
    .line 84
    invoke-virtual {v12}, Lvd/b0;->b0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 85
    .line 86
    .line 87
    :try_start_1
    const-string v13, "IPC$"

    .line 88
    .line 89
    invoke-virtual {v11, v13}, Lvd/z;->K(Ljava/lang/String;)Lvd/h0;

    .line 90
    .line 91
    .line 92
    move-result-object v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 93
    :try_start_2
    new-instance v14, Lbd/c;

    .line 94
    .line 95
    invoke-direct {v14, v0, v3}, Lbd/c;-><init>(Ljava/lang/String;I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual/range {p0 .. p0}, Lvd/b0;->n0()Z

    .line 99
    .line 100
    .line 101
    move-result v15

    .line 102
    if-eqz v15, :cond_3

    .line 103
    .line 104
    new-instance v15, Lmd/a;

    .line 105
    .line 106
    invoke-interface/range {p1 .. p1}, Lvc/b;->e()Lvc/f;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    const v3, 0x60194

    .line 111
    .line 112
    .line 113
    invoke-direct {v15, v9, v3}, Lmd/a;-><init>(Lvc/f;I)V

    .line 114
    .line 115
    .line 116
    iput v4, v15, Lmd/a;->C:I

    .line 117
    .line 118
    iput-object v14, v15, Lmd/a;->D:Lvc/j;

    .line 119
    .line 120
    const/4 v3, 0x0

    .line 121
    new-array v9, v3, [Lvd/l;

    .line 122
    .line 123
    invoke-virtual {v13, v15, v9}, Lvd/h0;->O(Lid/c;[Lvd/l;)Lad/d;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    check-cast v3, Lmd/b;

    .line 128
    .line 129
    const-class v9, Lbd/d;

    .line 130
    .line 131
    invoke-virtual {v3, v9}, Lmd/b;->r0(Ljava/lang/Class;)Lvc/g;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    check-cast v3, Lbd/d;

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :catchall_0
    move-exception v0

    .line 139
    move-object v1, v0

    .line 140
    const/4 v2, 0x0

    .line 141
    goto/16 :goto_7

    .line 142
    .line 143
    :cond_3
    new-instance v3, Lhd/b;

    .line 144
    .line 145
    invoke-interface/range {p1 .. p1}, Lvc/b;->e()Lvc/f;

    .line 146
    .line 147
    .line 148
    move-result-object v9

    .line 149
    invoke-direct {v3, v9}, Lhd/b;-><init>(Lvc/f;)V

    .line 150
    .line 151
    .line 152
    new-instance v9, Lhd/a;

    .line 153
    .line 154
    invoke-interface/range {p1 .. p1}, Lvc/b;->e()Lvc/f;

    .line 155
    .line 156
    .line 157
    move-result-object v14

    .line 158
    invoke-direct {v9, v0, v14}, Lhd/a;-><init>(Ljava/lang/String;Lvc/f;)V

    .line 159
    .line 160
    .line 161
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 162
    .line 163
    .line 164
    move-result-object v14

    .line 165
    invoke-virtual {v13, v9, v3, v14}, Lvd/h0;->N(Lad/c;Lad/d;Ljava/util/Set;)Lad/d;

    .line 166
    .line 167
    .line 168
    iget-object v3, v3, Lhd/b;->t0:Lbd/d;

    .line 169
    .line 170
    :goto_1
    iget v9, v3, Lbd/d;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    .line 172
    const/4 v14, 0x0

    .line 173
    if-nez v9, :cond_4

    .line 174
    .line 175
    const/4 v15, 0x0

    .line 176
    :try_start_3
    invoke-virtual {v13, v15}, Lvd/h0;->M(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 177
    .line 178
    .line 179
    :try_start_4
    invoke-virtual {v12}, Lhe/e;->Y()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 180
    .line 181
    .line 182
    invoke-virtual {v11}, Lvd/z;->O()V

    .line 183
    .line 184
    .line 185
    return-object v14

    .line 186
    :goto_2
    move-object v1, v0

    .line 187
    goto/16 :goto_b

    .line 188
    .line 189
    :goto_3
    move-object v1, v0

    .line 190
    goto/16 :goto_9

    .line 191
    .line 192
    :cond_4
    if-eqz v2, :cond_5

    .line 193
    .line 194
    if-ge v9, v2, :cond_6

    .line 195
    .line 196
    :cond_5
    move v2, v9

    .line 197
    :cond_6
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 198
    .line 199
    .line 200
    move-result-wide v17

    .line 201
    invoke-interface/range {p1 .. p1}, Lvc/b;->e()Lvc/f;

    .line 202
    .line 203
    .line 204
    move-result-object v9

    .line 205
    check-cast v9, Lwc/a;

    .line 206
    .line 207
    iget-wide v9, v9, Lwc/a;->N:J

    .line 208
    .line 209
    const-wide/16 v19, 0x3e8

    .line 210
    .line 211
    mul-long v9, v9, v19

    .line 212
    .line 213
    add-long v9, v9, v17

    .line 214
    .line 215
    iget-object v15, v3, Lbd/d;->d:[Lbd/e;

    .line 216
    .line 217
    const/4 v4, 0x0

    .line 218
    :goto_4
    if-ge v4, v2, :cond_9

    .line 219
    .line 220
    move/from16 v18, v2

    .line 221
    .line 222
    aget-object v2, v15, v4

    .line 223
    .line 224
    iget v8, v3, Lbd/d;->a:I

    .line 225
    .line 226
    invoke-static {v2, v0, v9, v10, v8}, Lbd/a;->d(Lbd/e;Ljava/lang/String;JI)Lbd/a;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    iput-object v1, v2, Lbd/a;->l:Ljava/lang/String;

    .line 231
    .line 232
    iget v8, v3, Lbd/d;->c:I

    .line 233
    .line 234
    const/16 v16, 0x2

    .line 235
    .line 236
    and-int/lit8 v8, v8, 0x2

    .line 237
    .line 238
    if-nez v8, :cond_7

    .line 239
    .line 240
    iget v8, v2, Lbd/a;->h:I

    .line 241
    .line 242
    and-int/lit8 v8, v8, 0x2

    .line 243
    .line 244
    if-nez v8, :cond_7

    .line 245
    .line 246
    new-instance v8, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .line 250
    .line 251
    const-string v0, "Non-root referral is not final "

    .line 252
    .line 253
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-interface {v7, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    const/4 v8, 0x1

    .line 267
    iput-boolean v8, v2, Lbd/a;->m:Z

    .line 268
    .line 269
    :cond_7
    if-nez v14, :cond_8

    .line 270
    .line 271
    :goto_5
    const/4 v8, 0x1

    .line 272
    goto :goto_6

    .line 273
    :cond_8
    iget-object v0, v14, Lbd/a;->i:Lbd/a;

    .line 274
    .line 275
    iput-object v0, v2, Lbd/a;->i:Lbd/a;

    .line 276
    .line 277
    iput-object v2, v14, Lbd/a;->i:Lbd/a;

    .line 278
    .line 279
    goto :goto_5

    .line 280
    :goto_6
    add-int/2addr v4, v8

    .line 281
    move-object/from16 v8, p0

    .line 282
    .line 283
    move-object/from16 v0, p2

    .line 284
    .line 285
    move-object v14, v2

    .line 286
    move/from16 v2, v18

    .line 287
    .line 288
    goto :goto_4

    .line 289
    :cond_9
    invoke-interface {v7}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    if-eqz v0, :cond_a

    .line 294
    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .line 299
    .line 300
    const-string v1, "Got referral "

    .line 301
    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-interface {v7, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 313
    .line 314
    .line 315
    :cond_a
    const/4 v1, 0x0

    .line 316
    :try_start_6
    invoke-virtual {v13, v1}, Lvd/h0;->M(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 317
    .line 318
    .line 319
    :try_start_7
    invoke-virtual {v12}, Lhe/e;->Y()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 320
    .line 321
    .line 322
    invoke-virtual {v11}, Lvd/z;->O()V

    .line 323
    .line 324
    .line 325
    return-object v14

    .line 326
    :goto_7
    :try_start_8
    invoke-virtual {v13, v2}, Lvd/h0;->M(Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 327
    .line 328
    .line 329
    goto :goto_8

    .line 330
    :catchall_1
    move-exception v0

    .line 331
    move-object v3, v0

    .line 332
    const/4 v4, 0x1

    .line 333
    :try_start_9
    new-array v0, v4, [Ljava/lang/Class;

    .line 334
    .line 335
    aput-object v6, v0, v2

    .line 336
    .line 337
    invoke-virtual {v6, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    new-array v7, v4, [Ljava/lang/Object;

    .line 342
    .line 343
    aput-object v3, v7, v2

    .line 344
    .line 345
    invoke-virtual {v0, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 346
    .line 347
    .line 348
    :catch_0
    :goto_8
    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 349
    :catchall_2
    move-exception v0

    .line 350
    goto/16 :goto_3

    .line 351
    .line 352
    :goto_9
    :try_start_b
    invoke-virtual {v12}, Lhe/e;->Y()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 353
    .line 354
    .line 355
    goto :goto_a

    .line 356
    :catchall_3
    move-exception v0

    .line 357
    move-object v2, v0

    .line 358
    const/4 v3, 0x1

    .line 359
    :try_start_c
    new-array v0, v3, [Ljava/lang/Class;

    .line 360
    .line 361
    const/4 v4, 0x0

    .line 362
    aput-object v6, v0, v4

    .line 363
    .line 364
    invoke-virtual {v6, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    new-array v7, v3, [Ljava/lang/Object;

    .line 369
    .line 370
    aput-object v2, v7, v4

    .line 371
    .line 372
    invoke-virtual {v0, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 373
    .line 374
    .line 375
    :catch_1
    :goto_a
    :try_start_d
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 376
    :catchall_4
    move-exception v0

    .line 377
    goto/16 :goto_2

    .line 378
    .line 379
    :goto_b
    :try_start_e
    invoke-virtual {v11}, Lvd/z;->O()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 380
    .line 381
    .line 382
    goto :goto_c

    .line 383
    :catchall_5
    move-exception v0

    .line 384
    move-object v2, v0

    .line 385
    const/4 v3, 0x1

    .line 386
    :try_start_f
    new-array v0, v3, [Ljava/lang/Class;

    .line 387
    .line 388
    const/4 v4, 0x0

    .line 389
    aput-object v6, v0, v4

    .line 390
    .line 391
    invoke-virtual {v6, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    new-array v3, v3, [Ljava/lang/Object;

    .line 396
    .line 397
    aput-object v2, v3, v4

    .line 398
    .line 399
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    .line 400
    .line 401
    .line 402
    :catch_2
    :goto_c
    goto :goto_e

    .line 403
    :goto_d
    throw v1

    .line 404
    :goto_e
    goto :goto_d
.end method

.method public final l0()Lad/k;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lvd/b0;->B:Ljava/lang/Object;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lvd/b0;->z:Lvc/b;

    .line 6
    .line 7
    invoke-interface {v0}, Lvc/b;->e()Lvc/f;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lwc/a;

    .line 12
    .line 13
    iget v0, v0, Lwc/a;->A:I

    .line 14
    .line 15
    int-to-long v0, v0

    .line 16
    invoke-virtual {p0, v0, v1}, Lhe/e;->A(J)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    iget-object v0, p0, Lvd/b0;->B:Ljava/lang/Object;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    new-instance v0, Lvd/r;

    .line 28
    .line 29
    const-string v1, "Connection did not complete, failed to get negotiation response"

    .line 30
    .line 31
    invoke-direct {v0, v1}, Lvd/r;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0

    .line 35
    :goto_1
    new-instance v1, Lvd/r;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-direct {v1, v2, v0}, Lvd/r;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 42
    .line 43
    .line 44
    throw v1
.end method

.method public final declared-synchronized m0(Lvc/b;Ljava/lang/String;Ljava/lang/String;)Lvd/z;
    .locals 10

    .line 1
    const-string v0, "Currently "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    sget-object v1, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 5
    .line 6
    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lvd/b0;->x:Ljava/util/LinkedList;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, " session(s) active for "

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto/16 :goto_4

    .line 44
    .line 45
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 46
    .line 47
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 48
    .line 49
    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    :cond_1
    if-eqz p3, :cond_2

    .line 54
    .line 55
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 56
    .line 57
    invoke-virtual {p3, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    :cond_2
    iget-object v0, p0, Lvd/b0;->x:Ljava/util/LinkedList;

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_6

    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Lvd/z;

    .line 78
    .line 79
    iget-object v2, v1, Lvd/z;->h:Lvd/j;

    .line 80
    .line 81
    invoke-interface {p1}, Lvc/b;->g()Lvd/a;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_5

    .line 90
    .line 91
    iget-object v2, v1, Lvd/z;->q:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {v2, p2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_5

    .line 98
    .line 99
    iget-object v2, v1, Lvd/z;->p:Ljava/lang/String;

    .line 100
    .line 101
    invoke-static {v2, p3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_5

    .line 106
    .line 107
    sget-object p1, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 108
    .line 109
    invoke-interface {p1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    if-eqz p2, :cond_4

    .line 114
    .line 115
    new-instance p2, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string p3, "Reusing existing session "

    .line 121
    .line 122
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :cond_4
    invoke-virtual {v1}, Lvd/z;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .line 137
    .line 138
    monitor-exit p0

    .line 139
    return-object v1

    .line 140
    :cond_5
    :try_start_1
    sget-object v2, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 141
    .line 142
    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    if-eqz v3, :cond_3

    .line 147
    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    const-string v4, "Existing session "

    .line 154
    .line 155
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v1, " does not match "

    .line 162
    .line 163
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-interface {p1}, Lvc/b;->g()Lvd/a;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-interface {v2, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_6
    invoke-interface {p1}, Lvc/b;->e()Lvc/f;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    check-cast v0, Lwc/a;

    .line 186
    .line 187
    iget v0, v0, Lwc/a;->D:I

    .line 188
    .line 189
    if-lez v0, :cond_c

    .line 190
    .line 191
    iget-wide v0, p0, Lvd/b0;->w:J

    .line 192
    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 194
    .line 195
    .line 196
    move-result-wide v2

    .line 197
    cmp-long v4, v0, v2

    .line 198
    .line 199
    if-gez v4, :cond_c

    .line 200
    .line 201
    invoke-interface {p1}, Lvc/b;->e()Lvc/f;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    check-cast v0, Lwc/a;

    .line 206
    .line 207
    iget v0, v0, Lwc/a;->D:I

    .line 208
    .line 209
    int-to-long v0, v0

    .line 210
    add-long/2addr v0, v2

    .line 211
    iput-wide v0, p0, Lvd/b0;->w:J

    .line 212
    .line 213
    iget-object v0, p0, Lvd/b0;->x:Ljava/util/LinkedList;

    .line 214
    .line 215
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-eqz v1, :cond_c

    .line 224
    .line 225
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    check-cast v1, Lvd/z;

    .line 230
    .line 231
    iget-wide v4, v1, Lvd/z;->e:J

    .line 232
    .line 233
    const/4 v6, 0x0

    .line 234
    const-wide/16 v7, 0x0

    .line 235
    .line 236
    cmp-long v9, v4, v7

    .line 237
    .line 238
    if-lez v9, :cond_8

    .line 239
    .line 240
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    goto :goto_3

    .line 245
    :cond_8
    move-object v4, v6

    .line 246
    :goto_3
    if-eqz v4, :cond_7

    .line 247
    .line 248
    iget-wide v4, v1, Lvd/z;->e:J

    .line 249
    .line 250
    cmp-long v9, v4, v7

    .line 251
    .line 252
    if-lez v9, :cond_9

    .line 253
    .line 254
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 255
    .line 256
    .line 257
    move-result-object v6

    .line 258
    :cond_9
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 259
    .line 260
    .line 261
    move-result-wide v4

    .line 262
    cmp-long v6, v4, v2

    .line 263
    .line 264
    if-gez v6, :cond_7

    .line 265
    .line 266
    iget-object v4, v1, Lvd/z;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 267
    .line 268
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 269
    .line 270
    .line 271
    move-result-wide v4

    .line 272
    cmp-long v6, v4, v7

    .line 273
    .line 274
    if-lez v6, :cond_a

    .line 275
    .line 276
    goto :goto_2

    .line 277
    :cond_a
    sget-object v4, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 278
    .line 279
    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    if-eqz v5, :cond_b

    .line 284
    .line 285
    new-instance v5, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .line 289
    .line 290
    const-string v6, "Closing session after timeout "

    .line 291
    .line 292
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v5

    .line 302
    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    :cond_b
    const/4 v4, 0x0

    .line 306
    invoke-virtual {v1, v4, v4}, Lvd/z;->M(ZZ)Z

    .line 307
    .line 308
    .line 309
    goto :goto_2

    .line 310
    :cond_c
    new-instance v0, Lvd/z;

    .line 311
    .line 312
    invoke-direct {v0, p1, p2, p3, p0}, Lvd/z;-><init>(Lvc/b;Ljava/lang/String;Ljava/lang/String;Lvd/b0;)V

    .line 313
    .line 314
    .line 315
    sget-object p1, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 316
    .line 317
    invoke-interface {p1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 318
    .line 319
    .line 320
    move-result p2

    .line 321
    if-eqz p2, :cond_d

    .line 322
    .line 323
    new-instance p2, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .line 327
    .line 328
    const-string p3, "Establishing new session "

    .line 329
    .line 330
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    const-string p3, " on "

    .line 337
    .line 338
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    iget-object p3, p0, Lhe/e;->b:Ljava/lang/String;

    .line 342
    .line 343
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object p2

    .line 350
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    :cond_d
    iget-object p1, p0, Lvd/b0;->x:Ljava/util/LinkedList;

    .line 354
    .line 355
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    .line 357
    .line 358
    monitor-exit p0

    .line 359
    return-object v0

    .line 360
    :goto_4
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 361
    goto :goto_6

    .line 362
    :goto_5
    throw p1

    .line 363
    :goto_6
    goto :goto_5
.end method

.method public final n0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lvd/b0;->k:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lvd/b0;->l0()Lad/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v0, v0, Lod/f;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method public final o0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lvd/b0;->A:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lvd/b0;->l0()Lad/k;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lad/k;->Q()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public final p0(I)La2/w0;
    .locals 8

    .line 1
    iget-object v0, p0, Lhe/e;->e:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/16 v1, 0x8b

    .line 5
    .line 6
    if-ne p1, v1, :cond_0

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lvd/b0;->x0()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    if-nez p1, :cond_1

    .line 16
    .line 17
    const/16 p1, 0x1bd

    .line 18
    .line 19
    :cond_1
    new-instance v1, Ljava/net/Socket;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lvd/b0;->p:Ljava/net/Socket;

    .line 25
    .line 26
    iget-object v2, p0, Lvd/b0;->l:Ljava/net/InetAddress;

    .line 27
    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    new-instance v2, Ljava/net/InetSocketAddress;

    .line 31
    .line 32
    iget-object v3, p0, Lvd/b0;->l:Ljava/net/InetAddress;

    .line 33
    .line 34
    iget v4, p0, Lvd/b0;->m:I

    .line 35
    .line 36
    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    iget-object v1, p0, Lvd/b0;->p:Ljava/net/Socket;

    .line 43
    .line 44
    new-instance v2, Ljava/net/InetSocketAddress;

    .line 45
    .line 46
    iget-object v3, p0, Lvd/b0;->n:Lsd/k;

    .line 47
    .line 48
    invoke-virtual {v3}, Lsd/k;->b()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-direct {v2, v3, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lvd/b0;->z:Lvc/b;

    .line 56
    .line 57
    invoke-interface {p1}, Lvc/b;->e()Lvc/f;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Lwc/a;

    .line 62
    .line 63
    iget p1, p1, Lwc/a;->C:I

    .line 64
    .line 65
    invoke-virtual {v1, v2, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lvd/b0;->p:Ljava/net/Socket;

    .line 69
    .line 70
    iget-object v1, p0, Lvd/b0;->z:Lvc/b;

    .line 71
    .line 72
    invoke-interface {v1}, Lvc/b;->e()Lvc/f;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Lwc/a;

    .line 77
    .line 78
    iget v1, v1, Lwc/a;->B:I

    .line 79
    .line 80
    invoke-virtual {p1, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lvd/b0;->p:Ljava/net/Socket;

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iput-object p1, p0, Lvd/b0;->s:Ljava/io/OutputStream;

    .line 90
    .line 91
    iget-object p1, p0, Lvd/b0;->p:Ljava/net/Socket;

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iput-object p1, p0, Lvd/b0;->t:Ljava/io/InputStream;

    .line 98
    .line 99
    :goto_0
    iget-object p1, p0, Lvd/b0;->D:Ljava/util/concurrent/Semaphore;

    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-nez p1, :cond_3

    .line 106
    .line 107
    sget-object p1, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 108
    .line 109
    const-string v1, "It appears we previously lost some credits"

    .line 110
    .line 111
    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_3
    iget-boolean p1, p0, Lvd/b0;->k:Z

    .line 115
    .line 116
    const/4 v5, 0x0

    .line 117
    if-nez p1, :cond_d

    .line 118
    .line 119
    iget-object p1, p0, Lvd/b0;->z:Lvc/b;

    .line 120
    .line 121
    invoke-interface {p1}, Lvc/b;->e()Lvc/f;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    check-cast p1, Lwc/a;

    .line 126
    .line 127
    iget-boolean p1, p1, Lwc/a;->n:Z

    .line 128
    .line 129
    if-eqz p1, :cond_4

    .line 130
    .line 131
    goto/16 :goto_1

    .line 132
    .line 133
    :cond_4
    new-instance v2, Lfd/i;

    .line 134
    .line 135
    iget-object p1, p0, Lvd/b0;->z:Lvc/b;

    .line 136
    .line 137
    invoke-interface {p1}, Lvc/b;->e()Lvc/f;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    iget-boolean v1, p0, Lvd/b0;->A:Z

    .line 142
    .line 143
    invoke-direct {v2, p1, v1}, Lfd/i;-><init>(Lvc/f;Z)V

    .line 144
    .line 145
    .line 146
    const/4 p1, 0x1

    .line 147
    invoke-virtual {p0, v2, p1}, Lvd/b0;->s0(Lad/c;Z)I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    invoke-virtual {p0}, Lvd/b0;->r0()V

    .line 152
    .line 153
    .line 154
    iget-boolean v3, p0, Lvd/b0;->k:Z

    .line 155
    .line 156
    const/4 v4, 0x0

    .line 157
    const/4 v6, 0x4

    .line 158
    if-nez v3, :cond_8

    .line 159
    .line 160
    iget-object p1, p0, Lvd/b0;->z:Lvc/b;

    .line 161
    .line 162
    invoke-interface {p1}, Lvc/b;->e()Lvc/f;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    check-cast p1, Lwc/a;

    .line 167
    .line 168
    iget-object p1, p1, Lwc/a;->q0:Lvc/i;

    .line 169
    .line 170
    iget-boolean p1, p1, Lvc/i;->a:Z

    .line 171
    .line 172
    if-nez p1, :cond_7

    .line 173
    .line 174
    new-instance v3, Lfd/j;

    .line 175
    .line 176
    iget-object p1, p0, Lvd/b0;->z:Lvc/b;

    .line 177
    .line 178
    invoke-direct {v3, p1}, Lfd/j;-><init>(Lvc/b;)V

    .line 179
    .line 180
    .line 181
    iget-object p1, p0, Lvd/b0;->v:[B

    .line 182
    .line 183
    invoke-virtual {v3, p1}, Led/c;->decode([B)I

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3}, Led/c;->C()V

    .line 187
    .line 188
    .line 189
    sget-object p1, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 190
    .line 191
    invoke-interface {p1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 192
    .line 193
    .line 194
    move-result v7

    .line 195
    if-eqz v7, :cond_5

    .line 196
    .line 197
    invoke-virtual {v3}, Lfd/j;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v7

    .line 201
    invoke-interface {p1, v7}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    iget-object v7, p0, Lvd/b0;->v:[B

    .line 205
    .line 206
    invoke-static {v7, v6, v1}, Lge/a;->m([BII)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    :cond_5
    iget p1, v3, Lfd/j;->K:I

    .line 214
    .line 215
    if-lez p1, :cond_6

    .line 216
    .line 217
    iget-object v1, p0, Lvd/b0;->D:Ljava/util/concurrent/Semaphore;

    .line 218
    .line 219
    invoke-virtual {v1, p1}, Ljava/util/concurrent/Semaphore;->release(I)V

    .line 220
    .line 221
    .line 222
    :cond_6
    iget-object p1, p0, Lvd/b0;->v:[B

    .line 223
    .line 224
    invoke-static {p1, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 225
    .line 226
    .line 227
    new-instance p1, La2/w0;

    .line 228
    .line 229
    const/4 v6, 0x1

    .line 230
    move-object v1, p1

    .line 231
    move-object v4, v5

    .line 232
    invoke-direct/range {v1 .. v6}, La2/w0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 233
    .line 234
    .line 235
    monitor-exit v0

    .line 236
    return-object p1

    .line 237
    :cond_7
    new-instance p1, Lvc/c;

    .line 238
    .line 239
    const-string v1, "Server does not support SMB2"

    .line 240
    .line 241
    invoke-direct {p1, v1}, Lvc/c;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    throw p1

    .line 245
    :cond_8
    new-instance v3, Lod/f;

    .line 246
    .line 247
    iget-object v1, p0, Lvd/b0;->z:Lvc/b;

    .line 248
    .line 249
    invoke-interface {v1}, Lvc/b;->e()Lvc/f;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-direct {v3, v1}, Lod/f;-><init>(Lvc/f;)V

    .line 254
    .line 255
    .line 256
    iget-object v1, p0, Lvd/b0;->v:[B

    .line 257
    .line 258
    invoke-virtual {v3, v6, v1, v4}, Lid/b;->h0(I[BZ)I

    .line 259
    .line 260
    .line 261
    invoke-virtual {v3}, Lid/d;->C()V

    .line 262
    .line 263
    .line 264
    iget v1, v3, Lod/f;->E:I

    .line 265
    .line 266
    const/16 v2, 0x2ff

    .line 267
    .line 268
    if-ne v1, v2, :cond_9

    .line 269
    .line 270
    invoke-virtual {p0, v3}, Lvd/b0;->q0(Lod/f;)La2/w0;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    monitor-exit v0

    .line 275
    return-object p1

    .line 276
    :cond_9
    const/16 v2, 0x202

    .line 277
    .line 278
    if-ne v1, v2, :cond_c

    .line 279
    .line 280
    iget v1, v3, Lid/b;->k:I

    .line 281
    .line 282
    if-lez v1, :cond_a

    .line 283
    .line 284
    iget-object v2, p0, Lvd/b0;->D:Ljava/util/concurrent/Semaphore;

    .line 285
    .line 286
    invoke-virtual {v2, v1}, Ljava/util/concurrent/Semaphore;->release(I)V

    .line 287
    .line 288
    .line 289
    :cond_a
    iget-object v1, p0, Lvd/b0;->v:[B

    .line 290
    .line 291
    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 292
    .line 293
    .line 294
    new-instance v7, La2/w0;

    .line 295
    .line 296
    new-instance v2, Lod/e;

    .line 297
    .line 298
    iget-object v1, p0, Lvd/b0;->z:Lvc/b;

    .line 299
    .line 300
    invoke-interface {v1}, Lvc/b;->e()Lvc/f;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    iget-boolean v4, p0, Lvd/b0;->A:Z

    .line 305
    .line 306
    if-eqz v4, :cond_b

    .line 307
    .line 308
    const/4 p1, 0x2

    .line 309
    :cond_b
    invoke-direct {v2, v1, p1}, Lod/e;-><init>(Lvc/f;I)V

    .line 310
    .line 311
    .line 312
    const/4 v6, 0x1

    .line 313
    move-object v1, v7

    .line 314
    move-object v4, v5

    .line 315
    invoke-direct/range {v1 .. v6}, La2/w0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 316
    .line 317
    .line 318
    monitor-exit v0

    .line 319
    return-object v7

    .line 320
    :cond_c
    new-instance p1, Lvc/c;

    .line 321
    .line 322
    const-string v1, "Server returned invalid dialect verison in multi protocol negotiation"

    .line 323
    .line 324
    invoke-direct {p1, v1}, Lvc/c;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    throw p1

    .line 328
    :cond_d
    :goto_1
    sget-object p1, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 329
    .line 330
    const-string v1, "Using SMB2 only negotiation"

    .line 331
    .line 332
    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {p0, v5}, Lvd/b0;->q0(Lod/f;)La2/w0;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    monitor-exit v0

    .line 340
    return-object p1

    .line 341
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    throw p1
.end method

.method public final q0(Lod/f;)La2/w0;
    .locals 10

    .line 1
    iget-boolean v0, p0, Lvd/b0;->A:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lod/f;->Q()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    const/4 v0, 0x3

    .line 18
    :goto_1
    new-instance v3, Lod/e;

    .line 19
    .line 20
    iget-object v2, p0, Lvd/b0;->z:Lvc/b;

    .line 21
    .line 22
    invoke-interface {v2}, Lvc/b;->e()Lvc/f;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-direct {v3, v2, v0}, Lod/e;-><init>(Lvc/f;I)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    const/4 v8, 0x0

    .line 31
    :try_start_0
    iget-object v2, p0, Lvd/b0;->D:Ljava/util/concurrent/Semaphore;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    rsub-int v2, v2, 0x200

    .line 38
    .line 39
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    iput v2, v3, Lid/b;->k:I

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    const/4 p1, 0x0

    .line 50
    :goto_2
    invoke-virtual {p0, v3, p1}, Lvd/b0;->s0(Lad/c;Z)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    iget-object v2, p0, Lvd/b0;->z:Lvc/b;

    .line 55
    .line 56
    invoke-interface {v2}, Lvc/b;->e()Lvc/f;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Lwc/a;

    .line 61
    .line 62
    iget-object v2, v2, Lwc/a;->r0:Lvc/i;

    .line 63
    .line 64
    sget-object v4, Lvc/i;->g:Lvc/i;

    .line 65
    .line 66
    invoke-virtual {v2, v4}, Lvc/i;->a(Lvc/i;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    const/4 v4, 0x4

    .line 71
    if-eqz v2, :cond_3

    .line 72
    .line 73
    new-array v5, p1, [B

    .line 74
    .line 75
    iget-object v6, p0, Lvd/b0;->v:[B

    .line 76
    .line 77
    invoke-static {v6, v4, v5, v8, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    .line 79
    .line 80
    goto :goto_3

    .line 81
    :catchall_0
    move-exception p1

    .line 82
    goto :goto_6

    .line 83
    :cond_3
    move-object v5, v0

    .line 84
    :goto_3
    invoke-virtual {p0}, Lvd/b0;->r0()V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lvd/b0;->z:Lvc/b;

    .line 88
    .line 89
    invoke-virtual {v3, p1}, Lid/c;->r0(Lvc/b;)Lid/d;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Lod/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    :try_start_1
    iget-object v6, p0, Lvd/b0;->v:[B

    .line 96
    .line 97
    invoke-virtual {p1, v4, v6, v8}, Lid/b;->h0(I[BZ)I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    invoke-virtual {p1}, Lid/d;->C()V

    .line 102
    .line 103
    .line 104
    if-eqz v2, :cond_4

    .line 105
    .line 106
    new-array v0, v6, [B

    .line 107
    .line 108
    iget-object v2, p0, Lvd/b0;->v:[B

    .line 109
    .line 110
    invoke-static {v2, v4, v0, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    .line 112
    .line 113
    move-object v6, v0

    .line 114
    goto :goto_4

    .line 115
    :catchall_1
    move-exception v0

    .line 116
    move-object v9, v0

    .line 117
    move-object v0, p1

    .line 118
    move-object p1, v9

    .line 119
    goto :goto_6

    .line 120
    :cond_4
    move-object v5, v0

    .line 121
    move-object v6, v5

    .line 122
    :goto_4
    sget-object v0, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 123
    .line 124
    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_5

    .line 129
    .line 130
    invoke-virtual {p1}, Lod/f;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object v2, p0, Lvd/b0;->v:[B

    .line 138
    .line 139
    invoke-static {v2, v4, v8}, Lge/a;->m([BII)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    :cond_5
    new-instance v0, La2/w0;

    .line 147
    .line 148
    const/4 v7, 0x1

    .line 149
    move-object v2, v0

    .line 150
    move-object v4, p1

    .line 151
    invoke-direct/range {v2 .. v7}, La2/w0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 152
    .line 153
    .line 154
    iget p1, p1, Lid/b;->k:I

    .line 155
    .line 156
    if-nez p1, :cond_6

    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_6
    move v1, p1

    .line 160
    :goto_5
    iget-object p1, p0, Lvd/b0;->D:Ljava/util/concurrent/Semaphore;

    .line 161
    .line 162
    invoke-virtual {p1, v1}, Ljava/util/concurrent/Semaphore;->release(I)V

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lvd/b0;->v:[B

    .line 166
    .line 167
    invoke-static {p1, v8}, Ljava/util/Arrays;->fill([BB)V

    .line 168
    .line 169
    .line 170
    return-object v0

    .line 171
    :goto_6
    if-eqz v0, :cond_7

    .line 172
    .line 173
    iget v0, v0, Lid/b;->k:I

    .line 174
    .line 175
    goto :goto_7

    .line 176
    :cond_7
    const/4 v0, 0x0

    .line 177
    :goto_7
    if-nez v0, :cond_8

    .line 178
    .line 179
    goto :goto_8

    .line 180
    :cond_8
    move v1, v0

    .line 181
    :goto_8
    iget-object v0, p0, Lvd/b0;->D:Ljava/util/concurrent/Semaphore;

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore;->release(I)V

    .line 184
    .line 185
    .line 186
    iget-object v0, p0, Lvd/b0;->v:[B

    .line 187
    .line 188
    invoke-static {v0, v8}, Ljava/util/Arrays;->fill([BB)V

    .line 189
    .line 190
    .line 191
    throw p1
.end method

.method public final r0()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lvd/b0;->p:Ljava/net/Socket;

    .line 2
    .line 3
    iget-object v1, p0, Lvd/b0;->z:Lvc/b;

    .line 4
    .line 5
    invoke-interface {v1}, Lvc/b;->e()Lvc/f;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lwc/a;

    .line 10
    .line 11
    iget v1, v1, Lwc/a;->C:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lvd/b0;->W()Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-object v0, p0, Lvd/b0;->p:Ljava/net/Socket;

    .line 23
    .line 24
    iget-object v1, p0, Lvd/b0;->z:Lvc/b;

    .line 25
    .line 26
    invoke-interface {v1}, Lvc/b;->e()Lvc/f;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lwc/a;

    .line 31
    .line 32
    iget v1, v1, Lwc/a;->B:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lvd/b0;->v:[B

    .line 38
    .line 39
    const/4 v1, 0x2

    .line 40
    invoke-static {v1, v0}, Lge/a;->a(I[B)S

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const v1, 0xffff

    .line 45
    .line 46
    .line 47
    and-int/2addr v0, v1

    .line 48
    const/16 v1, 0x21

    .line 49
    .line 50
    if-lt v0, v1, :cond_1

    .line 51
    .line 52
    add-int/lit8 v1, v0, 0x4

    .line 53
    .line 54
    iget-object v2, p0, Lvd/b0;->v:[B

    .line 55
    .line 56
    array-length v3, v2

    .line 57
    if-gt v1, v3, :cond_1

    .line 58
    .line 59
    iget-boolean v1, p0, Lvd/b0;->k:Z

    .line 60
    .line 61
    if-eqz v1, :cond_0

    .line 62
    .line 63
    const/16 v1, 0x40

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const/16 v1, 0x20

    .line 67
    .line 68
    :goto_0
    iget-object v3, p0, Lvd/b0;->t:Ljava/io/InputStream;

    .line 69
    .line 70
    add-int/lit8 v4, v1, 0x4

    .line 71
    .line 72
    sub-int/2addr v0, v1

    .line 73
    invoke-static {v3, v2, v4, v0}, Lhe/e;->X(Ljava/io/InputStream;[BII)I

    .line 74
    .line 75
    .line 76
    sget-object v0, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 77
    .line 78
    const-string v1, "Read negotiate response"

    .line 79
    .line 80
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_1
    new-instance v1, Ljava/io/IOException;

    .line 85
    .line 86
    const-string v2, "Invalid payload size: "

    .line 87
    .line 88
    invoke-static {v0, v2}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v1

    .line 96
    :cond_2
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    .line 97
    .line 98
    const-string v1, "transport closed in negotiate"

    .line 99
    .line 100
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    :catchall_0
    move-exception v0

    .line 105
    iget-object v1, p0, Lvd/b0;->p:Ljava/net/Socket;

    .line 106
    .line 107
    iget-object v2, p0, Lvd/b0;->z:Lvc/b;

    .line 108
    .line 109
    invoke-interface {v2}, Lvc/b;->e()Lvc/f;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    check-cast v2, Lwc/a;

    .line 114
    .line 115
    iget v2, v2, Lwc/a;->B:I

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 118
    .line 119
    .line 120
    throw v0
.end method

.method public final s0(Lad/c;Z)I
    .locals 4

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lvd/b0;->V(Lad/c;)J

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    invoke-interface {p1, v0, v1}, Lad/b;->a(J)V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Lvd/b0;->r:Ljava/util/concurrent/atomic/AtomicLong;

    .line 13
    .line 14
    const-wide/16 v0, 0x1

    .line 15
    .line 16
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 17
    .line 18
    .line 19
    :goto_0
    iget-object p2, p0, Lvd/b0;->v:[B

    .line 20
    .line 21
    const/4 v0, 0x4

    .line 22
    invoke-interface {p1, v0, p2}, Lad/b;->c(I[B)I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    const v1, 0xffff

    .line 27
    .line 28
    .line 29
    and-int/2addr v1, p2

    .line 30
    iget-object v2, p0, Lvd/b0;->v:[B

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-static {v1, v3, v2}, Lge/a;->f(II[B)V

    .line 34
    .line 35
    .line 36
    sget-object v1, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 37
    .line 38
    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-interface {v1, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lvd/b0;->v:[B

    .line 52
    .line 53
    invoke-static {p1, v0, p2}, Lge/a;->m([BII)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-interface {v1, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    iget-object p1, p0, Lvd/b0;->s:Ljava/io/OutputStream;

    .line 61
    .line 62
    iget-object v0, p0, Lvd/b0;->v:[B

    .line 63
    .line 64
    add-int/lit8 v2, p2, 0x4

    .line 65
    .line 66
    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lvd/b0;->s:Ljava/io/OutputStream;

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 72
    .line 73
    .line 74
    const-string p1, "Wrote negotiate request"

    .line 75
    .line 76
    invoke-interface {v1, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return p2
.end method

.method public final t0(Lad/c;Lad/d;Ljava/util/Set;)Lad/d;
    .locals 3

    .line 1
    const-string v0, "Sending "

    .line 2
    .line 3
    invoke-virtual {p0}, Lvd/b0;->j0()Z

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lvd/b0;->k:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    instance-of v2, p1, Lid/b;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance p2, Lvd/r;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string p3, "Not an SMB2 request "

    .line 26
    .line 27
    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p2, p1}, Lvd/r;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p2

    .line 35
    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 36
    .line 37
    instance-of v1, p1, Led/c;

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    new-instance p1, Lvd/r;

    .line 43
    .line 44
    const-string p2, "Not an SMB1 request"

    .line 45
    .line 46
    invoke-direct {p1, p2}, Lvd/r;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_3
    :goto_1
    iget-object v1, p0, Lvd/b0;->B:Ljava/lang/Object;

    .line 51
    .line 52
    invoke-interface {v1, p1}, Lad/k;->z(Lad/c;)V

    .line 53
    .line 54
    .line 55
    if-eqz p2, :cond_4

    .line 56
    .line 57
    invoke-interface {p1, p2}, Lad/b;->s(Lad/d;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {p1}, Lad/b;->getDigest()Lad/h;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-interface {p2, v1}, Lad/b;->i(Lad/h;)V

    .line 65
    .line 66
    .line 67
    :cond_4
    :try_start_0
    sget-object v1, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 68
    .line 69
    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_5

    .line 74
    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :catch_0
    move-exception p1

    .line 92
    goto :goto_4

    .line 93
    :catch_1
    move-exception p1

    .line 94
    goto :goto_5

    .line 95
    :cond_5
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    instance-of v0, p1, Lgd/a;

    .line 99
    .line 100
    if-eqz v0, :cond_6

    .line 101
    .line 102
    invoke-virtual {p0, p1, p2, p3}, Lvd/b0;->v0(Lad/c;Lad/d;Ljava/util/Set;)V

    .line 103
    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_6
    if-eqz p2, :cond_7

    .line 107
    .line 108
    invoke-interface {p1}, Lad/b;->y()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    invoke-interface {p2, v0}, Lad/b;->S(I)V

    .line 113
    .line 114
    .line 115
    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lvd/b0;->w0(Lad/c;Lad/d;Ljava/util/Set;)Lad/d;

    .line 116
    .line 117
    .line 118
    move-result-object p2
    :try_end_0
    .catch Lvd/r; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_3
    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 120
    .line 121
    .line 122
    move-result p3

    .line 123
    if-eqz p3, :cond_8

    .line 124
    .line 125
    new-instance p3, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string v0, "Response is "

    .line 128
    .line 129
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p3

    .line 139
    invoke-interface {v1, p3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :cond_8
    invoke-virtual {p0, p1}, Lvd/b0;->e0(Lad/c;)Z

    .line 143
    .line 144
    .line 145
    return-object p2

    .line 146
    :goto_4
    new-instance p2, Lvd/r;

    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p3

    .line 152
    invoke-direct {p2, p3, p1}, Lvd/r;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 153
    .line 154
    .line 155
    throw p2

    .line 156
    :goto_5
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lhe/e;->b:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "["

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lvd/b0;->n:Lsd/k;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, ":"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget v1, p0, Lvd/b0;->q:I

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ",state="

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget v1, p0, Lhe/e;->a:I

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, ",signingEnforced="

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-boolean v1, p0, Lvd/b0;->A:Z

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, ",usage="

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lhe/e;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 59
    .line 60
    .line 61
    move-result-wide v1

    .line 62
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v1, "]"

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    return-object v0
.end method

.method public final u0(Lad/c;Led/c;)V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, p2, v0}, Lvd/b0;->t0(Lad/c;Lad/d;Ljava/util/Set;)Lad/d;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final v0(Lad/c;Lad/d;Ljava/util/Set;)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-interface {p1}, Lad/b;->y()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    invoke-interface {p2, v2}, Lad/b;->S(I)V

    .line 8
    .line 9
    .line 10
    check-cast p1, Lgd/a;

    .line 11
    .line 12
    check-cast p2, Lgd/b;

    .line 13
    .line 14
    invoke-virtual {p2}, Lgd/b;->reset()V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    :try_start_0
    iget-object v3, p0, Lvd/b0;->z:Lvc/b;

    .line 19
    .line 20
    invoke-interface {v3}, Lvc/b;->h()La0/h;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, La0/h;->l()[B

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    iput-object v3, p1, Lgd/a;->O0:[B

    .line 29
    .line 30
    invoke-virtual {p1}, Lgd/a;->s0()V

    .line 31
    .line 32
    .line 33
    iget-boolean v3, p1, Lgd/a;->I:Z

    .line 34
    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    new-instance v3, Lfd/c;

    .line 38
    .line 39
    iget-object v4, p0, Lvd/b0;->z:Lvc/b;

    .line 40
    .line 41
    invoke-interface {v4}, Lvc/b;->e()Lvc/f;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-direct {v3, v4}, Lfd/c;-><init>(Lvc/f;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1, v3, p3}, Lhe/e;->Z(Lad/c;Lad/d;Ljava/util/Set;)Lhe/d;

    .line 49
    .line 50
    .line 51
    iget v4, v3, Led/c;->f:I

    .line 52
    .line 53
    if-eqz v4, :cond_0

    .line 54
    .line 55
    invoke-virtual {p0, p1, v3}, Lvd/b0;->f0(Led/c;Led/c;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p2

    .line 60
    goto/16 :goto_a

    .line 61
    .line 62
    :catch_0
    move-exception p2

    .line 63
    goto/16 :goto_9

    .line 64
    .line 65
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lgd/a;->s0()V

    .line 66
    .line 67
    .line 68
    iget v3, p1, Led/c;->j:I

    .line 69
    .line 70
    int-to-long v3, v3

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {p0, p1}, Lvd/b0;->V(Lad/c;)J

    .line 73
    .line 74
    .line 75
    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :goto_1
    :try_start_1
    iput-boolean v1, p2, Led/c;->q:Z

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Lvd/b0;->R(Lad/c;)I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    int-to-long v5, v5

    .line 83
    sget-object v7, Lvd/l;->a:Lvd/l;

    .line 84
    .line 85
    invoke-interface {p3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    if-nez v7, :cond_2

    .line 90
    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 92
    .line 93
    .line 94
    move-result-wide v7

    .line 95
    add-long/2addr v7, v5

    .line 96
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    iput-object v7, p2, Led/c;->y:Ljava/lang/Long;

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :catchall_1
    move-exception p3

    .line 104
    goto/16 :goto_8

    .line 105
    .line 106
    :cond_2
    iput-object v2, p2, Led/c;->y:Ljava/lang/Long;

    .line 107
    .line 108
    :goto_2
    iget-object v7, p0, Lvd/b0;->z:Lvc/b;

    .line 109
    .line 110
    invoke-interface {v7}, Lvc/b;->h()La0/h;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    invoke-virtual {v7}, La0/h;->l()[B

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    iput-object v7, p2, Lgd/b;->h0:[B

    .line 119
    .line 120
    iget-object v7, p0, Lhe/e;->g:Lj$/util/concurrent/ConcurrentHashMap;

    .line 121
    .line 122
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    invoke-virtual {v7, v8, p2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 127
    .line 128
    .line 129
    :goto_3
    :try_start_2
    invoke-virtual {p0, p1}, Lvd/b0;->P(Lad/c;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 130
    .line 131
    .line 132
    :try_start_3
    iget-boolean v7, p1, Lgd/a;->I:Z

    .line 133
    .line 134
    if-eqz v7, :cond_3

    .line 135
    .line 136
    invoke-virtual {p1}, Lgd/a;->s0()V

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_3
    monitor-enter p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 141
    :goto_4
    :try_start_4
    iget-boolean v0, p2, Led/c;->q:Z

    .line 142
    .line 143
    if-eqz v0, :cond_7

    .line 144
    .line 145
    invoke-virtual {p2}, Lgd/b;->hasMoreElements()Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_4

    .line 150
    .line 151
    goto :goto_5

    .line 152
    :cond_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 153
    :try_start_5
    iget-boolean p3, p2, Led/c;->q:Z

    .line 154
    .line 155
    if-eqz p3, :cond_6

    .line 156
    .line 157
    iget p3, p2, Led/c;->f:I

    .line 158
    .line 159
    if-eqz p3, :cond_5

    .line 160
    .line 161
    invoke-virtual {p0, p1, p2}, Lvd/b0;->f0(Led/c;Led/c;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 162
    .line 163
    .line 164
    :cond_5
    :try_start_6
    iget-object p3, p0, Lhe/e;->g:Lj$/util/concurrent/ConcurrentHashMap;

    .line 165
    .line 166
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {p3, v0}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    iget-object p3, p0, Lvd/b0;->z:Lvc/b;

    .line 174
    .line 175
    invoke-interface {p3}, Lvc/b;->h()La0/h;

    .line 176
    .line 177
    .line 178
    move-result-object p3

    .line 179
    iget-object v0, p2, Lgd/b;->h0:[B

    .line 180
    .line 181
    iput-object v2, p2, Lgd/b;->h0:[B

    .line 182
    .line 183
    invoke-virtual {p3, v0}, La0/h;->m([B)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 184
    .line 185
    .line 186
    iget-object p2, p0, Lvd/b0;->z:Lvc/b;

    .line 187
    .line 188
    invoke-interface {p2}, Lvc/b;->h()La0/h;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    iget-object p3, p1, Lgd/a;->O0:[B

    .line 193
    .line 194
    iput-object v2, p1, Lgd/a;->O0:[B

    .line 195
    .line 196
    invoke-virtual {p2, p3}, La0/h;->m([B)V

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    :cond_6
    :try_start_7
    new-instance p3, Lhe/f;

    .line 201
    .line 202
    const-string v0, "Failed to read response"

    .line 203
    .line 204
    invoke-direct {p3, v0}, Lhe/f;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    throw p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 208
    :catchall_2
    move-exception p3

    .line 209
    goto :goto_6

    .line 210
    :cond_7
    :goto_5
    :try_start_8
    sget-object v0, Lvd/l;->a:Lvd/l;

    .line 211
    .line 212
    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-nez v0, :cond_9

    .line 217
    .line 218
    invoke-virtual {p2, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 219
    .line 220
    .line 221
    iget-object v0, p2, Led/c;->y:Ljava/lang/Long;

    .line 222
    .line 223
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 224
    .line 225
    .line 226
    move-result-wide v0

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 228
    .line 229
    .line 230
    move-result-wide v5

    .line 231
    sub-long v5, v0, v5

    .line 232
    .line 233
    const-wide/16 v0, 0x0

    .line 234
    .line 235
    cmp-long v7, v5, v0

    .line 236
    .line 237
    if-lez v7, :cond_8

    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_8
    new-instance p3, Lhe/f;

    .line 241
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    const-string v1, " timedout waiting for response to "

    .line 251
    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-direct {p3, v0}, Lhe/f;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    throw p3

    .line 266
    :cond_9
    invoke-virtual {p2}, Ljava/lang/Object;->wait()V

    .line 267
    .line 268
    .line 269
    sget-object v0, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 270
    .line 271
    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    if-eqz v1, :cond_a

    .line 276
    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .line 281
    .line 282
    const-string v7, "Wait returned "

    .line 283
    .line 284
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {p0}, Lvd/b0;->T()Z

    .line 288
    .line 289
    .line 290
    move-result v7

    .line 291
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    :cond_a
    invoke-virtual {p0}, Lvd/b0;->T()Z

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    if-nez v0, :cond_b

    .line 306
    .line 307
    goto/16 :goto_4

    .line 308
    .line 309
    :cond_b
    new-instance p3, Ljava/io/EOFException;

    .line 310
    .line 311
    const-string v0, "Transport closed while waiting for result"

    .line 312
    .line 313
    invoke-direct {p3, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    throw p3

    .line 317
    :goto_6
    monitor-exit p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 318
    :try_start_9
    throw p3

    .line 319
    :catch_1
    move-exception p3

    .line 320
    const-string v5, "send failed"

    .line 321
    .line 322
    sget-object v6, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 323
    .line 324
    invoke-interface {v6, v5, p3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 325
    .line 326
    .line 327
    :try_start_a
    invoke-virtual {p0}, Lhe/e;->J()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 328
    .line 329
    .line 330
    goto :goto_7

    .line 331
    :catch_2
    move-exception v5

    .line 332
    :try_start_b
    const-class v7, Ljava/lang/Throwable;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 333
    .line 334
    :try_start_c
    const-string v8, "addSuppressed"

    .line 335
    .line 336
    new-array v9, v0, [Ljava/lang/Class;

    .line 337
    .line 338
    aput-object v7, v9, v1

    .line 339
    .line 340
    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 341
    .line 342
    .line 343
    move-result-object v7

    .line 344
    new-array v0, v0, [Ljava/lang/Object;

    .line 345
    .line 346
    aput-object v5, v0, v1

    .line 347
    .line 348
    invoke-virtual {v7, p3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 349
    .line 350
    .line 351
    :catch_3
    :try_start_d
    const-string v0, "disconnect failed"

    .line 352
    .line 353
    invoke-interface {v6, v0, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 354
    .line 355
    .line 356
    :goto_7
    throw p3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 357
    :goto_8
    :try_start_e
    iget-object v0, p0, Lhe/e;->g:Lj$/util/concurrent/ConcurrentHashMap;

    .line 358
    .line 359
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    iget-object v0, p0, Lvd/b0;->z:Lvc/b;

    .line 367
    .line 368
    invoke-interface {v0}, Lvc/b;->h()La0/h;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    iget-object v1, p2, Lgd/b;->h0:[B

    .line 373
    .line 374
    iput-object v2, p2, Lgd/b;->h0:[B

    .line 375
    .line 376
    invoke-virtual {v0, v1}, La0/h;->m([B)V

    .line 377
    .line 378
    .line 379
    throw p3
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 380
    :goto_9
    :try_start_f
    new-instance p3, Lhe/f;

    .line 381
    .line 382
    invoke-direct {p3, p2}, Lhe/f;-><init>(Ljava/lang/Exception;)V

    .line 383
    .line 384
    .line 385
    throw p3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 386
    :goto_a
    iget-object p3, p0, Lvd/b0;->z:Lvc/b;

    .line 387
    .line 388
    invoke-interface {p3}, Lvc/b;->h()La0/h;

    .line 389
    .line 390
    .line 391
    move-result-object p3

    .line 392
    iget-object v0, p1, Lgd/a;->O0:[B

    .line 393
    .line 394
    iput-object v2, p1, Lgd/a;->O0:[B

    .line 395
    .line 396
    invoke-virtual {p3, v0}, La0/h;->m([B)V

    .line 397
    .line 398
    .line 399
    goto :goto_c

    .line 400
    :goto_b
    throw p2

    .line 401
    :goto_c
    goto :goto_b
.end method

.method public final w0(Lad/c;Lad/d;Ljava/util/Set;)Lad/d;
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    const/4 v7, 0x1

    .line 10
    instance-of v8, v0, Lad/e;

    .line 11
    .line 12
    if-eqz v8, :cond_2

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    move-object v2, v0

    .line 17
    check-cast v2, Lad/e;

    .line 18
    .line 19
    iget-object v8, v1, Lvd/b0;->z:Lvc/b;

    .line 20
    .line 21
    invoke-interface {v2, v8}, Lad/e;->M(Lvc/b;)Lad/d;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lvd/b0;->n0()Z

    .line 27
    .line 28
    .line 29
    move-result v8

    .line 30
    if-nez v8, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 34
    .line 35
    const-string v2, "Should not provide response argument for SMB2"

    .line 36
    .line 37
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :cond_2
    instance-of v8, v0, Led/a;

    .line 42
    .line 43
    if-eqz v8, :cond_5

    .line 44
    .line 45
    instance-of v8, v2, Led/a;

    .line 46
    .line 47
    if-eqz v8, :cond_5

    .line 48
    .line 49
    move-object v8, v0

    .line 50
    check-cast v8, Led/a;

    .line 51
    .line 52
    move-object v9, v2

    .line 53
    check-cast v9, Led/a;

    .line 54
    .line 55
    :goto_0
    invoke-virtual {v8, v9}, Led/c;->s(Lad/d;)V

    .line 56
    .line 57
    .line 58
    iget-object v8, v8, Led/a;->I:Led/c;

    .line 59
    .line 60
    if-nez v8, :cond_3

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    iget-object v9, v9, Led/a;->I:Led/c;

    .line 64
    .line 65
    invoke-virtual {v8, v8}, Led/c;->s(Lad/d;)V

    .line 66
    .line 67
    .line 68
    instance-of v10, v8, Led/a;

    .line 69
    .line 70
    if-eqz v10, :cond_6

    .line 71
    .line 72
    instance-of v10, v9, Led/a;

    .line 73
    .line 74
    if-nez v10, :cond_4

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    check-cast v8, Led/a;

    .line 78
    .line 79
    check-cast v9, Led/a;

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_5
    invoke-interface/range {p1 .. p2}, Lad/b;->s(Lad/d;)V

    .line 83
    .line 84
    .line 85
    :cond_6
    :goto_1
    if-eqz v2, :cond_33

    .line 86
    .line 87
    iget-object v8, v1, Lvd/b0;->z:Lvc/b;

    .line 88
    .line 89
    invoke-interface {v8}, Lvc/b;->e()Lvc/f;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    check-cast v8, Lwc/a;

    .line 94
    .line 95
    iget v8, v8, Lwc/a;->h0:I

    .line 96
    .line 97
    move-object v9, v0

    .line 98
    :goto_2
    if-eqz v9, :cond_31

    .line 99
    .line 100
    move-object v11, v9

    .line 101
    const/4 v12, 0x0

    .line 102
    const/4 v13, 0x0

    .line 103
    const/4 v14, 0x0

    .line 104
    :goto_3
    if-eqz v11, :cond_11

    .line 105
    .line 106
    add-int/2addr v12, v7

    .line 107
    invoke-interface {v11}, Lad/c;->size()I

    .line 108
    .line 109
    .line 110
    move-result v15

    .line 111
    invoke-interface {v11}, Lad/c;->getNext()Lad/c;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    sget-object v4, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 116
    .line 117
    invoke-interface {v4}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 118
    .line 119
    .line 120
    move-result v16

    .line 121
    if-eqz v16, :cond_7

    .line 122
    .line 123
    const-string v5, "%s costs %d avail %d (%s)"

    .line 124
    .line 125
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    move-result-object v17

    .line 129
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v17

    .line 133
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v18

    .line 137
    iget-object v7, v1, Lvd/b0;->D:Ljava/util/concurrent/Semaphore;

    .line 138
    .line 139
    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    .line 140
    .line 141
    .line 142
    move-result v7

    .line 143
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    iget-object v6, v1, Lhe/e;->b:Ljava/lang/String;

    .line 148
    .line 149
    move/from16 v20, v12

    .line 150
    .line 151
    const/4 v12, 0x4

    .line 152
    new-array v12, v12, [Ljava/lang/Object;

    .line 153
    .line 154
    const/16 v19, 0x0

    .line 155
    .line 156
    aput-object v17, v12, v19

    .line 157
    .line 158
    const/16 v17, 0x1

    .line 159
    .line 160
    aput-object v18, v12, v17

    .line 161
    .line 162
    const/16 v16, 0x2

    .line 163
    .line 164
    aput-object v7, v12, v16

    .line 165
    .line 166
    const/4 v7, 0x3

    .line 167
    aput-object v6, v12, v7

    .line 168
    .line 169
    invoke-static {v5, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_7
    move/from16 v20, v12

    .line 178
    .line 179
    :goto_4
    if-eqz v10, :cond_8

    .line 180
    .line 181
    invoke-interface {v11, v10}, Lad/c;->u(Lad/c;)Z

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    if-eqz v5, :cond_9

    .line 186
    .line 187
    :cond_8
    add-int v5, v13, v15

    .line 188
    .line 189
    if-ge v5, v8, :cond_9

    .line 190
    .line 191
    iget-object v6, v1, Lvd/b0;->D:Ljava/util/concurrent/Semaphore;

    .line 192
    .line 193
    const/4 v7, 0x1

    .line 194
    invoke-virtual {v6, v7}, Ljava/util/concurrent/Semaphore;->tryAcquire(I)Z

    .line 195
    .line 196
    .line 197
    move-result v6

    .line 198
    if-eqz v6, :cond_9

    .line 199
    .line 200
    move v13, v5

    .line 201
    move-object v14, v11

    .line 202
    move/from16 v12, v20

    .line 203
    .line 204
    const/4 v7, 0x1

    .line 205
    move-object v11, v10

    .line 206
    goto :goto_3

    .line 207
    :cond_9
    if-nez v14, :cond_a

    .line 208
    .line 209
    add-int/2addr v13, v15

    .line 210
    if-gt v13, v8, :cond_b

    .line 211
    .line 212
    :cond_a
    const/4 v5, 0x3

    .line 213
    const/4 v6, 0x2

    .line 214
    const/16 v19, 0x0

    .line 215
    .line 216
    goto :goto_5

    .line 217
    :cond_b
    new-instance v0, Lvd/r;

    .line 218
    .line 219
    const-string v2, "Request size %d exceeds allowable size %d: %s"

    .line 220
    .line 221
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    const/4 v5, 0x3

    .line 230
    new-array v5, v5, [Ljava/lang/Object;

    .line 231
    .line 232
    const/16 v19, 0x0

    .line 233
    .line 234
    aput-object v3, v5, v19

    .line 235
    .line 236
    const/4 v3, 0x1

    .line 237
    aput-object v4, v5, v3

    .line 238
    .line 239
    const/4 v6, 0x2

    .line 240
    aput-object v11, v5, v6

    .line 241
    .line 242
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    invoke-direct {v0, v2}, Lvd/r;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    throw v0

    .line 250
    :goto_5
    if-nez v14, :cond_f

    .line 251
    .line 252
    :try_start_0
    invoke-virtual {v1, v11}, Lvd/b0;->R(Lad/c;)I

    .line 253
    .line 254
    .line 255
    move-result v7

    .line 256
    int-to-long v12, v7

    .line 257
    sget-object v7, Lvd/l;->a:Lvd/l;

    .line 258
    .line 259
    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v7

    .line 263
    if-eqz v7, :cond_c

    .line 264
    .line 265
    iget-object v7, v1, Lvd/b0;->D:Ljava/util/concurrent/Semaphore;

    .line 266
    .line 267
    const/4 v10, 0x1

    .line 268
    invoke-virtual {v7, v10}, Ljava/util/concurrent/Semaphore;->acquire(I)V

    .line 269
    .line 270
    .line 271
    goto :goto_6

    .line 272
    :catch_0
    move-exception v0

    .line 273
    goto :goto_a

    .line 274
    :cond_c
    const/4 v10, 0x1

    .line 275
    iget-object v7, v1, Lvd/b0;->D:Ljava/util/concurrent/Semaphore;

    .line 276
    .line 277
    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 278
    .line 279
    invoke-virtual {v7, v10, v12, v13, v14}, Ljava/util/concurrent/Semaphore;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z

    .line 280
    .line 281
    .line 282
    move-result v7

    .line 283
    if-eqz v7, :cond_e

    .line 284
    .line 285
    :goto_6
    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :try_start_1
    invoke-interface {v11}, Lad/c;->e0()Lad/c;

    .line 287
    .line 288
    .line 289
    move-result-object v10

    .line 290
    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 291
    .line 292
    .line 293
    move-result v7

    .line 294
    if-eqz v7, :cond_d

    .line 295
    .line 296
    if-eqz v10, :cond_d

    .line 297
    .line 298
    new-instance v7, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .line 302
    .line 303
    const-string v12, "Insufficient credits, send only first "

    .line 304
    .line 305
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    const-string v12, " next is "

    .line 312
    .line 313
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v7

    .line 323
    invoke-interface {v4, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    goto :goto_7

    .line 327
    :catchall_0
    move-exception v0

    .line 328
    goto :goto_9

    .line 329
    :cond_d
    :goto_7
    monitor-exit v11

    .line 330
    :goto_8
    move/from16 v12, v20

    .line 331
    .line 332
    goto :goto_b

    .line 333
    :goto_9
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    :try_start_2
    throw v0

    .line 335
    :cond_e
    new-instance v0, Lvd/r;

    .line 336
    .line 337
    const-string v2, "Failed to acquire credits in time"

    .line 338
    .line 339
    invoke-direct {v0, v2}, Lvd/r;-><init>(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 343
    :goto_a
    new-instance v2, Ljava/io/InterruptedIOException;

    .line 344
    .line 345
    const-string v3, "Interrupted while acquiring credits"

    .line 346
    .line 347
    invoke-direct {v2, v3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 351
    .line 352
    .line 353
    throw v2

    .line 354
    :cond_f
    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 355
    .line 356
    .line 357
    move-result v7

    .line 358
    if-eqz v7, :cond_10

    .line 359
    .line 360
    new-instance v7, Ljava/lang/StringBuilder;

    .line 361
    .line 362
    const-string v10, "Not enough credits, split at "

    .line 363
    .line 364
    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v7

    .line 374
    invoke-interface {v4, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    :cond_10
    monitor-enter v14

    .line 378
    :try_start_3
    invoke-interface {v14}, Lad/c;->e0()Lad/c;

    .line 379
    .line 380
    .line 381
    move-result-object v10

    .line 382
    monitor-exit v14

    .line 383
    goto :goto_8

    .line 384
    :catchall_1
    move-exception v0

    .line 385
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 386
    throw v0

    .line 387
    :cond_11
    const/4 v5, 0x3

    .line 388
    const/4 v6, 0x2

    .line 389
    const/16 v19, 0x0

    .line 390
    .line 391
    const/4 v10, 0x0

    .line 392
    :goto_b
    iget-object v4, v1, Lvd/b0;->D:Ljava/util/concurrent/Semaphore;

    .line 393
    .line 394
    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    .line 395
    .line 396
    .line 397
    move-result v4

    .line 398
    rsub-int v4, v4, 0x200

    .line 399
    .line 400
    sub-int/2addr v4, v12

    .line 401
    const/4 v7, 0x1

    .line 402
    add-int/2addr v4, v7

    .line 403
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    .line 404
    .line 405
    .line 406
    move-result v4

    .line 407
    sget-object v11, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 408
    .line 409
    invoke-interface {v11}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 410
    .line 411
    .line 412
    move-result v13

    .line 413
    if-eqz v13, :cond_12

    .line 414
    .line 415
    new-instance v13, Ljava/lang/StringBuilder;

    .line 416
    .line 417
    const-string v14, "Request credits "

    .line 418
    .line 419
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v13

    .line 429
    invoke-interface {v11, v13}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    :cond_12
    invoke-interface {v0, v4}, Lad/c;->v(I)V

    .line 433
    .line 434
    .line 435
    :try_start_4
    invoke-interface {v9}, Lad/b;->b()Lad/d;

    .line 436
    .line 437
    .line 438
    move-result-object v4

    .line 439
    invoke-interface {v11}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 440
    .line 441
    .line 442
    move-result v13

    .line 443
    if-eqz v13, :cond_13

    .line 444
    .line 445
    new-instance v13, Ljava/lang/StringBuilder;

    .line 446
    .line 447
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 448
    .line 449
    .line 450
    const-string v14, "Sending "

    .line 451
    .line 452
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v13

    .line 462
    invoke-interface {v11, v13}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    goto :goto_c

    .line 466
    :catchall_2
    move-exception v0

    .line 467
    goto/16 :goto_16

    .line 468
    .line 469
    :cond_13
    :goto_c
    invoke-virtual {v1, v9, v4, v3}, Lhe/e;->Z(Lad/c;Lad/d;Ljava/util/Set;)Lhe/d;

    .line 470
    .line 471
    .line 472
    move-result-object v4

    .line 473
    check-cast v4, Lad/d;

    .line 474
    .line 475
    invoke-virtual {v1, v9}, Lvd/b0;->e0(Lad/c;)Z

    .line 476
    .line 477
    .line 478
    move-result v13

    .line 479
    if-nez v13, :cond_1d

    .line 480
    .line 481
    invoke-interface {v11}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 482
    .line 483
    .line 484
    move-result v0

    .line 485
    if-eqz v0, :cond_14

    .line 486
    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    .line 488
    .line 489
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 490
    .line 491
    .line 492
    const-string v3, "Breaking on error "

    .line 493
    .line 494
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    invoke-interface {v11, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 505
    .line 506
    .line 507
    :cond_14
    const/4 v6, 0x0

    .line 508
    :goto_d
    invoke-interface {v9}, Lad/c;->I()Z

    .line 509
    .line 510
    .line 511
    move-result v0

    .line 512
    if-eqz v0, :cond_15

    .line 513
    .line 514
    sget-object v0, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 515
    .line 516
    const-string v3, "Async"

    .line 517
    .line 518
    invoke-interface {v0, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    goto :goto_f

    .line 522
    :cond_15
    invoke-interface {v9}, Lad/b;->b()Lad/d;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    if-nez v0, :cond_16

    .line 527
    .line 528
    sget-object v0, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 529
    .line 530
    new-instance v3, Ljava/lang/StringBuilder;

    .line 531
    .line 532
    const-string v4, "Response not properly set up for"

    .line 533
    .line 534
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v3

    .line 544
    invoke-interface {v0, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    goto :goto_e

    .line 548
    :cond_16
    invoke-interface {v0}, Lhe/d;->c0()Z

    .line 549
    .line 550
    .line 551
    move-result v3

    .line 552
    if-eqz v3, :cond_17

    .line 553
    .line 554
    invoke-interface {v0}, Lhe/d;->e()I

    .line 555
    .line 556
    .line 557
    move-result v0

    .line 558
    add-int/2addr v0, v6

    .line 559
    move v6, v0

    .line 560
    :cond_17
    :goto_e
    invoke-interface {v9}, Lad/c;->getNext()Lad/c;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    if-nez v0, :cond_1c

    .line 565
    .line 566
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lvd/b0;->T()Z

    .line 567
    .line 568
    .line 569
    move-result v0

    .line 570
    if-nez v0, :cond_1a

    .line 571
    .line 572
    invoke-interface {v9}, Lad/c;->I()Z

    .line 573
    .line 574
    .line 575
    move-result v0

    .line 576
    if-nez v0, :cond_1a

    .line 577
    .line 578
    invoke-interface {v9}, Lad/b;->b()Lad/d;

    .line 579
    .line 580
    .line 581
    move-result-object v0

    .line 582
    invoke-interface {v0}, Lad/d;->Y()Z

    .line 583
    .line 584
    .line 585
    move-result v0

    .line 586
    if-nez v0, :cond_1a

    .line 587
    .line 588
    invoke-interface {v9}, Lad/b;->b()Lad/d;

    .line 589
    .line 590
    .line 591
    move-result-object v0

    .line 592
    invoke-interface {v0}, Lhe/d;->T()Z

    .line 593
    .line 594
    .line 595
    move-result v0

    .line 596
    if-nez v0, :cond_1a

    .line 597
    .line 598
    if-nez v6, :cond_1a

    .line 599
    .line 600
    iget-object v0, v1, Lvd/b0;->D:Ljava/util/concurrent/Semaphore;

    .line 601
    .line 602
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    .line 603
    .line 604
    .line 605
    move-result v0

    .line 606
    if-gtz v0, :cond_19

    .line 607
    .line 608
    if-lez v12, :cond_18

    .line 609
    .line 610
    goto :goto_10

    .line 611
    :cond_18
    sget-object v0, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 612
    .line 613
    new-instance v3, Ljava/lang/StringBuilder;

    .line 614
    .line 615
    const-string v4, "Server "

    .line 616
    .line 617
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    const-string v4, " took away all our credits"

    .line 624
    .line 625
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v3

    .line 632
    invoke-interface {v0, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 633
    .line 634
    .line 635
    goto/16 :goto_1c

    .line 636
    .line 637
    :cond_19
    :goto_10
    sget-object v0, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 638
    .line 639
    new-instance v3, Ljava/lang/StringBuilder;

    .line 640
    .line 641
    const-string v4, "Server "

    .line 642
    .line 643
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 644
    .line 645
    .line 646
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    const-string v4, " returned zero credits for "

    .line 650
    .line 651
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    .line 653
    .line 654
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v3

    .line 661
    invoke-interface {v0, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 662
    .line 663
    .line 664
    goto/16 :goto_1c

    .line 665
    .line 666
    :cond_1a
    invoke-interface {v9}, Lad/c;->I()Z

    .line 667
    .line 668
    .line 669
    move-result v0

    .line 670
    if-nez v0, :cond_31

    .line 671
    .line 672
    sget-object v0, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 673
    .line 674
    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 675
    .line 676
    .line 677
    move-result v3

    .line 678
    if-eqz v3, :cond_1b

    .line 679
    .line 680
    new-instance v3, Ljava/lang/StringBuilder;

    .line 681
    .line 682
    const-string v4, "Adding credits "

    .line 683
    .line 684
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 685
    .line 686
    .line 687
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 688
    .line 689
    .line 690
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v3

    .line 694
    invoke-interface {v0, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 695
    .line 696
    .line 697
    :cond_1b
    iget-object v0, v1, Lvd/b0;->D:Ljava/util/concurrent/Semaphore;

    .line 698
    .line 699
    invoke-virtual {v0, v6}, Ljava/util/concurrent/Semaphore;->release(I)V

    .line 700
    .line 701
    .line 702
    goto/16 :goto_1c

    .line 703
    .line 704
    :cond_1c
    move-object v9, v0

    .line 705
    goto/16 :goto_d

    .line 706
    .line 707
    :cond_1d
    if-eqz v10, :cond_1e

    .line 708
    .line 709
    :try_start_5
    invoke-interface {v4, v10}, Lad/d;->E(Lad/c;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 710
    .line 711
    .line 712
    :cond_1e
    const/4 v4, 0x0

    .line 713
    :goto_11
    invoke-interface {v9}, Lad/c;->I()Z

    .line 714
    .line 715
    .line 716
    move-result v11

    .line 717
    if-eqz v11, :cond_1f

    .line 718
    .line 719
    sget-object v11, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 720
    .line 721
    const-string v13, "Async"

    .line 722
    .line 723
    invoke-interface {v11, v13}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 724
    .line 725
    .line 726
    goto :goto_13

    .line 727
    :cond_1f
    invoke-interface {v9}, Lad/b;->b()Lad/d;

    .line 728
    .line 729
    .line 730
    move-result-object v11

    .line 731
    if-nez v11, :cond_20

    .line 732
    .line 733
    sget-object v11, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 734
    .line 735
    new-instance v13, Ljava/lang/StringBuilder;

    .line 736
    .line 737
    const-string v14, "Response not properly set up for"

    .line 738
    .line 739
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 740
    .line 741
    .line 742
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 743
    .line 744
    .line 745
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object v13

    .line 749
    invoke-interface {v11, v13}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 750
    .line 751
    .line 752
    goto :goto_12

    .line 753
    :cond_20
    invoke-interface {v11}, Lhe/d;->c0()Z

    .line 754
    .line 755
    .line 756
    move-result v13

    .line 757
    if-eqz v13, :cond_21

    .line 758
    .line 759
    invoke-interface {v11}, Lhe/d;->e()I

    .line 760
    .line 761
    .line 762
    move-result v11

    .line 763
    add-int/2addr v11, v4

    .line 764
    move v4, v11

    .line 765
    :cond_21
    :goto_12
    invoke-interface {v9}, Lad/c;->getNext()Lad/c;

    .line 766
    .line 767
    .line 768
    move-result-object v11

    .line 769
    if-nez v11, :cond_27

    .line 770
    .line 771
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lvd/b0;->T()Z

    .line 772
    .line 773
    .line 774
    move-result v11

    .line 775
    if-nez v11, :cond_24

    .line 776
    .line 777
    invoke-interface {v9}, Lad/c;->I()Z

    .line 778
    .line 779
    .line 780
    move-result v11

    .line 781
    if-nez v11, :cond_24

    .line 782
    .line 783
    invoke-interface {v9}, Lad/b;->b()Lad/d;

    .line 784
    .line 785
    .line 786
    move-result-object v11

    .line 787
    invoke-interface {v11}, Lad/d;->Y()Z

    .line 788
    .line 789
    .line 790
    move-result v11

    .line 791
    if-nez v11, :cond_24

    .line 792
    .line 793
    invoke-interface {v9}, Lad/b;->b()Lad/d;

    .line 794
    .line 795
    .line 796
    move-result-object v11

    .line 797
    invoke-interface {v11}, Lhe/d;->T()Z

    .line 798
    .line 799
    .line 800
    move-result v11

    .line 801
    if-nez v11, :cond_24

    .line 802
    .line 803
    if-nez v4, :cond_24

    .line 804
    .line 805
    iget-object v4, v1, Lvd/b0;->D:Ljava/util/concurrent/Semaphore;

    .line 806
    .line 807
    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    .line 808
    .line 809
    .line 810
    move-result v4

    .line 811
    if-gtz v4, :cond_23

    .line 812
    .line 813
    if-lez v12, :cond_22

    .line 814
    .line 815
    goto :goto_14

    .line 816
    :cond_22
    sget-object v4, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 817
    .line 818
    new-instance v9, Ljava/lang/StringBuilder;

    .line 819
    .line 820
    const-string v11, "Server "

    .line 821
    .line 822
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 823
    .line 824
    .line 825
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 826
    .line 827
    .line 828
    const-string v11, " took away all our credits"

    .line 829
    .line 830
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    .line 832
    .line 833
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 834
    .line 835
    .line 836
    move-result-object v9

    .line 837
    invoke-interface {v4, v9}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 838
    .line 839
    .line 840
    goto :goto_15

    .line 841
    :cond_23
    :goto_14
    sget-object v4, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 842
    .line 843
    new-instance v11, Ljava/lang/StringBuilder;

    .line 844
    .line 845
    const-string v12, "Server "

    .line 846
    .line 847
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 848
    .line 849
    .line 850
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 851
    .line 852
    .line 853
    const-string v12, " returned zero credits for "

    .line 854
    .line 855
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    .line 857
    .line 858
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 859
    .line 860
    .line 861
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 862
    .line 863
    .line 864
    move-result-object v9

    .line 865
    invoke-interface {v4, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 866
    .line 867
    .line 868
    goto :goto_15

    .line 869
    :cond_24
    invoke-interface {v9}, Lad/c;->I()Z

    .line 870
    .line 871
    .line 872
    move-result v9

    .line 873
    if-nez v9, :cond_26

    .line 874
    .line 875
    sget-object v9, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 876
    .line 877
    invoke-interface {v9}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 878
    .line 879
    .line 880
    move-result v11

    .line 881
    if-eqz v11, :cond_25

    .line 882
    .line 883
    new-instance v11, Ljava/lang/StringBuilder;

    .line 884
    .line 885
    const-string v12, "Adding credits "

    .line 886
    .line 887
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 888
    .line 889
    .line 890
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 891
    .line 892
    .line 893
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 894
    .line 895
    .line 896
    move-result-object v11

    .line 897
    invoke-interface {v9, v11}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 898
    .line 899
    .line 900
    :cond_25
    iget-object v9, v1, Lvd/b0;->D:Ljava/util/concurrent/Semaphore;

    .line 901
    .line 902
    invoke-virtual {v9, v4}, Ljava/util/concurrent/Semaphore;->release(I)V

    .line 903
    .line 904
    .line 905
    :cond_26
    :goto_15
    move-object v9, v10

    .line 906
    goto/16 :goto_2

    .line 907
    .line 908
    :cond_27
    move-object v9, v11

    .line 909
    goto/16 :goto_11

    .line 910
    .line 911
    :goto_16
    const/4 v6, 0x0

    .line 912
    :goto_17
    invoke-interface {v9}, Lad/c;->I()Z

    .line 913
    .line 914
    .line 915
    move-result v2

    .line 916
    if-eqz v2, :cond_28

    .line 917
    .line 918
    sget-object v2, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 919
    .line 920
    const-string v3, "Async"

    .line 921
    .line 922
    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 923
    .line 924
    .line 925
    goto :goto_19

    .line 926
    :cond_28
    invoke-interface {v9}, Lad/b;->b()Lad/d;

    .line 927
    .line 928
    .line 929
    move-result-object v2

    .line 930
    if-nez v2, :cond_29

    .line 931
    .line 932
    sget-object v2, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 933
    .line 934
    new-instance v3, Ljava/lang/StringBuilder;

    .line 935
    .line 936
    const-string v4, "Response not properly set up for"

    .line 937
    .line 938
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 939
    .line 940
    .line 941
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 942
    .line 943
    .line 944
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 945
    .line 946
    .line 947
    move-result-object v3

    .line 948
    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 949
    .line 950
    .line 951
    goto :goto_18

    .line 952
    :cond_29
    invoke-interface {v2}, Lhe/d;->c0()Z

    .line 953
    .line 954
    .line 955
    move-result v3

    .line 956
    if-eqz v3, :cond_2a

    .line 957
    .line 958
    invoke-interface {v2}, Lhe/d;->e()I

    .line 959
    .line 960
    .line 961
    move-result v2

    .line 962
    add-int/2addr v2, v6

    .line 963
    move v6, v2

    .line 964
    :cond_2a
    :goto_18
    invoke-interface {v9}, Lad/c;->getNext()Lad/c;

    .line 965
    .line 966
    .line 967
    move-result-object v2

    .line 968
    if-nez v2, :cond_30

    .line 969
    .line 970
    :goto_19
    invoke-virtual/range {p0 .. p0}, Lvd/b0;->T()Z

    .line 971
    .line 972
    .line 973
    move-result v2

    .line 974
    if-nez v2, :cond_2d

    .line 975
    .line 976
    invoke-interface {v9}, Lad/c;->I()Z

    .line 977
    .line 978
    .line 979
    move-result v2

    .line 980
    if-nez v2, :cond_2d

    .line 981
    .line 982
    invoke-interface {v9}, Lad/b;->b()Lad/d;

    .line 983
    .line 984
    .line 985
    move-result-object v2

    .line 986
    invoke-interface {v2}, Lad/d;->Y()Z

    .line 987
    .line 988
    .line 989
    move-result v2

    .line 990
    if-nez v2, :cond_2d

    .line 991
    .line 992
    invoke-interface {v9}, Lad/b;->b()Lad/d;

    .line 993
    .line 994
    .line 995
    move-result-object v2

    .line 996
    invoke-interface {v2}, Lhe/d;->T()Z

    .line 997
    .line 998
    .line 999
    move-result v2

    .line 1000
    if-nez v2, :cond_2d

    .line 1001
    .line 1002
    if-nez v6, :cond_2d

    .line 1003
    .line 1004
    iget-object v2, v1, Lvd/b0;->D:Ljava/util/concurrent/Semaphore;

    .line 1005
    .line 1006
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    .line 1007
    .line 1008
    .line 1009
    move-result v2

    .line 1010
    if-gtz v2, :cond_2c

    .line 1011
    .line 1012
    if-lez v12, :cond_2b

    .line 1013
    .line 1014
    goto :goto_1a

    .line 1015
    :cond_2b
    sget-object v2, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 1016
    .line 1017
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1018
    .line 1019
    const-string v4, "Server "

    .line 1020
    .line 1021
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1022
    .line 1023
    .line 1024
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1025
    .line 1026
    .line 1027
    const-string v4, " took away all our credits"

    .line 1028
    .line 1029
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    .line 1031
    .line 1032
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v3

    .line 1036
    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 1037
    .line 1038
    .line 1039
    goto :goto_1b

    .line 1040
    :cond_2c
    :goto_1a
    sget-object v2, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 1041
    .line 1042
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1043
    .line 1044
    const-string v4, "Server "

    .line 1045
    .line 1046
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1047
    .line 1048
    .line 1049
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1050
    .line 1051
    .line 1052
    const-string v4, " returned zero credits for "

    .line 1053
    .line 1054
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    .line 1056
    .line 1057
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1058
    .line 1059
    .line 1060
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v3

    .line 1064
    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 1065
    .line 1066
    .line 1067
    goto :goto_1b

    .line 1068
    :cond_2d
    invoke-interface {v9}, Lad/c;->I()Z

    .line 1069
    .line 1070
    .line 1071
    move-result v2

    .line 1072
    if-nez v2, :cond_2f

    .line 1073
    .line 1074
    sget-object v2, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 1075
    .line 1076
    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 1077
    .line 1078
    .line 1079
    move-result v3

    .line 1080
    if-eqz v3, :cond_2e

    .line 1081
    .line 1082
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1083
    .line 1084
    const-string v4, "Adding credits "

    .line 1085
    .line 1086
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1087
    .line 1088
    .line 1089
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v3

    .line 1096
    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 1097
    .line 1098
    .line 1099
    :cond_2e
    iget-object v2, v1, Lvd/b0;->D:Ljava/util/concurrent/Semaphore;

    .line 1100
    .line 1101
    invoke-virtual {v2, v6}, Ljava/util/concurrent/Semaphore;->release(I)V

    .line 1102
    .line 1103
    .line 1104
    :cond_2f
    :goto_1b
    throw v0

    .line 1105
    :cond_30
    move-object v9, v2

    .line 1106
    goto/16 :goto_17

    .line 1107
    .line 1108
    :cond_31
    :goto_1c
    invoke-interface {v2}, Lhe/d;->c0()Z

    .line 1109
    .line 1110
    .line 1111
    move-result v0

    .line 1112
    if-eqz v0, :cond_32

    .line 1113
    .line 1114
    return-object v2

    .line 1115
    :cond_32
    new-instance v0, Ljava/io/IOException;

    .line 1116
    .line 1117
    const-string v3, "No response"

    .line 1118
    .line 1119
    invoke-interface {v2}, Lhe/d;->getException()Ljava/lang/Exception;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v2

    .line 1123
    invoke-direct {v0, v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1124
    .line 1125
    .line 1126
    throw v0

    .line 1127
    :cond_33
    new-instance v0, Ljava/io/IOException;

    .line 1128
    .line 1129
    const-string v2, "Invalid response"

    .line 1130
    .line 1131
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1132
    .line 1133
    .line 1134
    goto :goto_1e

    .line 1135
    :goto_1d
    throw v0

    .line 1136
    :goto_1e
    goto :goto_1d
.end method

.method public final x0()V
    .locals 15

    .line 1
    iget-object v0, p0, Lvd/b0;->z:Lvc/b;

    .line 2
    .line 3
    new-instance v1, Lsd/b;

    .line 4
    .line 5
    invoke-interface {v0}, Lvc/b;->e()Lvc/f;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v3, p0, Lvd/b0;->n:Lsd/k;

    .line 10
    .line 11
    iget-object v4, v3, Lsd/k;->a:Ljava/lang/Object;

    .line 12
    .line 13
    instance-of v5, v4, Lsd/h;

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v7, 0x1

    .line 17
    const-string v8, "*SMBSERVER     "

    .line 18
    .line 19
    if-eqz v5, :cond_4

    .line 20
    .line 21
    check-cast v4, Lsd/h;

    .line 22
    .line 23
    iget-object v3, v4, Lsd/h;->a:Lsd/b;

    .line 24
    .line 25
    iget-object v3, v3, Lsd/b;->a:Ljava/lang/String;

    .line 26
    .line 27
    iput-object v3, v4, Lsd/h;->d:Ljava/lang/String;

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    const-string v9, "*SMBSERVER     "

    .line 39
    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    iget-object v3, v4, Lsd/h;->d:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    iget-object v10, v4, Lsd/h;->d:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    .line 51
    .line 52
    .line 53
    move-result-object v10

    .line 54
    const/4 v11, 0x0

    .line 55
    :goto_0
    if-ge v5, v3, :cond_3

    .line 56
    .line 57
    add-int/lit8 v12, v5, 0x1

    .line 58
    .line 59
    aget-char v13, v10, v5

    .line 60
    .line 61
    invoke-static {v13}, Ljava/lang/Character;->isDigit(C)Z

    .line 62
    .line 63
    .line 64
    move-result v13

    .line 65
    if-eqz v13, :cond_3

    .line 66
    .line 67
    if-ne v12, v3, :cond_0

    .line 68
    .line 69
    const/4 v13, 0x3

    .line 70
    if-ne v11, v13, :cond_0

    .line 71
    .line 72
    iput-object v9, v4, Lsd/h;->d:Ljava/lang/String;

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_0
    if-ge v12, v3, :cond_1

    .line 76
    .line 77
    aget-char v13, v10, v12

    .line 78
    .line 79
    const/16 v14, 0x2e

    .line 80
    .line 81
    if-ne v13, v14, :cond_1

    .line 82
    .line 83
    add-int/lit8 v11, v11, 0x1

    .line 84
    .line 85
    add-int/lit8 v5, v5, 0x2

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    move v5, v12

    .line 89
    goto :goto_0

    .line 90
    :cond_2
    iget-object v3, v4, Lsd/h;->a:Lsd/b;

    .line 91
    .line 92
    iget v3, v3, Lsd/b;->c:I

    .line 93
    .line 94
    packed-switch v3, :pswitch_data_0

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :pswitch_0
    iput-object v9, v4, Lsd/h;->d:Ljava/lang/String;

    .line 99
    .line 100
    :cond_3
    :goto_1
    iget-object v3, v4, Lsd/h;->d:Ljava/lang/String;

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_4
    check-cast v4, Ljava/net/InetAddress;

    .line 104
    .line 105
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    iput-object v4, v3, Lsd/k;->b:Ljava/lang/String;

    .line 110
    .line 111
    invoke-static {v4}, Lsd/k;->d(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-eqz v4, :cond_5

    .line 116
    .line 117
    iput-object v8, v3, Lsd/k;->b:Ljava/lang/String;

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_5
    iget-object v4, v3, Lsd/k;->b:Ljava/lang/String;

    .line 121
    .line 122
    const/16 v5, 0x2e

    .line 123
    .line 124
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    const/16 v5, 0xf

    .line 129
    .line 130
    if-le v4, v7, :cond_6

    .line 131
    .line 132
    if-ge v4, v5, :cond_6

    .line 133
    .line 134
    iget-object v5, v3, Lsd/k;->b:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    iput-object v4, v3, Lsd/k;->b:Ljava/lang/String;

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_6
    iget-object v4, v3, Lsd/k;->b:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    if-le v4, v5, :cond_7

    .line 154
    .line 155
    iput-object v8, v3, Lsd/k;->b:Ljava/lang/String;

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_7
    iget-object v4, v3, Lsd/k;->b:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    iput-object v4, v3, Lsd/k;->b:Ljava/lang/String;

    .line 165
    .line 166
    :goto_2
    iget-object v3, v3, Lsd/k;->b:Ljava/lang/String;

    .line 167
    .line 168
    :goto_3
    const/16 v4, 0x20

    .line 169
    .line 170
    const/4 v5, 0x0

    .line 171
    invoke-direct {v1, v2, v3, v4, v5}, Lsd/b;-><init>(Lvc/f;Ljava/lang/String;ILjava/lang/String;)V

    .line 172
    .line 173
    .line 174
    :goto_4
    new-instance v2, Ljava/net/Socket;

    .line 175
    .line 176
    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    .line 177
    .line 178
    .line 179
    iput-object v2, p0, Lvd/b0;->p:Ljava/net/Socket;

    .line 180
    .line 181
    iget-object v3, p0, Lvd/b0;->l:Ljava/net/InetAddress;

    .line 182
    .line 183
    if-eqz v3, :cond_8

    .line 184
    .line 185
    new-instance v3, Ljava/net/InetSocketAddress;

    .line 186
    .line 187
    iget-object v4, p0, Lvd/b0;->l:Ljava/net/InetAddress;

    .line 188
    .line 189
    iget v9, p0, Lvd/b0;->m:I

    .line 190
    .line 191
    invoke-direct {v3, v4, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2, v3}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 195
    .line 196
    .line 197
    :cond_8
    iget-object v2, p0, Lvd/b0;->p:Ljava/net/Socket;

    .line 198
    .line 199
    new-instance v3, Ljava/net/InetSocketAddress;

    .line 200
    .line 201
    iget-object v4, p0, Lvd/b0;->n:Lsd/k;

    .line 202
    .line 203
    invoke-virtual {v4}, Lsd/k;->b()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    const/16 v9, 0x8b

    .line 208
    .line 209
    invoke-direct {v3, v4, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 210
    .line 211
    .line 212
    invoke-interface {v0}, Lvc/b;->e()Lvc/f;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    check-cast v4, Lwc/a;

    .line 217
    .line 218
    iget v4, v4, Lwc/a;->C:I

    .line 219
    .line 220
    invoke-virtual {v2, v3, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 221
    .line 222
    .line 223
    iget-object v2, p0, Lvd/b0;->p:Ljava/net/Socket;

    .line 224
    .line 225
    invoke-interface {v0}, Lvc/b;->e()Lvc/f;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    check-cast v3, Lwc/a;

    .line 230
    .line 231
    iget v3, v3, Lwc/a;->B:I

    .line 232
    .line 233
    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 234
    .line 235
    .line 236
    iget-object v2, p0, Lvd/b0;->p:Ljava/net/Socket;

    .line 237
    .line 238
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    iput-object v2, p0, Lvd/b0;->s:Ljava/io/OutputStream;

    .line 243
    .line 244
    iget-object v2, p0, Lvd/b0;->p:Ljava/net/Socket;

    .line 245
    .line 246
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    iput-object v2, p0, Lvd/b0;->t:Ljava/io/InputStream;

    .line 251
    .line 252
    invoke-interface {v0}, Lvc/b;->e()Lvc/f;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-interface {v0}, Lvc/b;->i()Lvc/k;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    check-cast v3, Lsd/f;

    .line 261
    .line 262
    iget-object v3, v3, Lsd/f;->t:Lsd/h;

    .line 263
    .line 264
    if-eqz v3, :cond_9

    .line 265
    .line 266
    iget-object v3, v3, Lsd/h;->a:Lsd/b;

    .line 267
    .line 268
    goto :goto_5

    .line 269
    :cond_9
    move-object v3, v5

    .line 270
    :goto_5
    new-instance v4, Lsd/b;

    .line 271
    .line 272
    invoke-direct {v4, v2, v1}, Lsd/b;-><init>(Lvc/f;Lsd/b;)V

    .line 273
    .line 274
    .line 275
    new-instance v9, Lsd/b;

    .line 276
    .line 277
    invoke-direct {v9, v2, v3}, Lsd/b;-><init>(Lvc/f;Lsd/b;)V

    .line 278
    .line 279
    .line 280
    iget-object v2, p0, Lvd/b0;->s:Ljava/io/OutputStream;

    .line 281
    .line 282
    iget-object v3, p0, Lvd/b0;->v:[B

    .line 283
    .line 284
    const/4 v10, 0x4

    .line 285
    invoke-virtual {v4, v10, v3}, Lsd/b;->c(I[B)I

    .line 286
    .line 287
    .line 288
    move-result v4

    .line 289
    add-int/2addr v4, v10

    .line 290
    invoke-virtual {v9, v4, v3}, Lsd/b;->c(I[B)I

    .line 291
    .line 292
    .line 293
    move-result v9

    .line 294
    add-int/2addr v9, v4

    .line 295
    add-int/lit8 v4, v9, -0x4

    .line 296
    .line 297
    const/16 v11, 0x81

    .line 298
    .line 299
    int-to-byte v11, v11

    .line 300
    aput-byte v11, v3, v6

    .line 301
    .line 302
    const v11, 0xffff

    .line 303
    .line 304
    .line 305
    if-le v4, v11, :cond_a

    .line 306
    .line 307
    aput-byte v7, v3, v7

    .line 308
    .line 309
    :cond_a
    shr-int/lit8 v11, v4, 0x8

    .line 310
    .line 311
    and-int/lit16 v11, v11, 0xff

    .line 312
    .line 313
    int-to-byte v11, v11

    .line 314
    const/4 v12, 0x2

    .line 315
    aput-byte v11, v3, v12

    .line 316
    .line 317
    and-int/lit16 v4, v4, 0xff

    .line 318
    .line 319
    int-to-byte v4, v4

    .line 320
    const/4 v11, 0x3

    .line 321
    aput-byte v4, v3, v11

    .line 322
    .line 323
    invoke-virtual {v2, v3, v6, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 324
    .line 325
    .line 326
    iget-object v2, p0, Lvd/b0;->t:Ljava/io/InputStream;

    .line 327
    .line 328
    iget-object v3, p0, Lvd/b0;->v:[B

    .line 329
    .line 330
    invoke-static {v2, v3, v6, v10}, Lhe/e;->X(Ljava/io/InputStream;[BII)I

    .line 331
    .line 332
    .line 333
    move-result v2

    .line 334
    sget-object v3, Lvd/b0;->F:Lorg/slf4j/Logger;

    .line 335
    .line 336
    if-lt v2, v10, :cond_1a

    .line 337
    .line 338
    iget-object v2, p0, Lvd/b0;->v:[B

    .line 339
    .line 340
    aget-byte v2, v2, v6

    .line 341
    .line 342
    and-int/lit16 v2, v2, 0xff

    .line 343
    .line 344
    const/4 v4, -0x1

    .line 345
    if-eq v2, v4, :cond_19

    .line 346
    .line 347
    const/16 v4, 0x82

    .line 348
    .line 349
    if-eq v2, v4, :cond_17

    .line 350
    .line 351
    const/16 v3, 0x83

    .line 352
    .line 353
    if-ne v2, v3, :cond_16

    .line 354
    .line 355
    iget-object v2, p0, Lvd/b0;->t:Ljava/io/InputStream;

    .line 356
    .line 357
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    and-int/lit16 v2, v2, 0xff

    .line 362
    .line 363
    const/16 v3, 0x80

    .line 364
    .line 365
    if-eq v2, v3, :cond_c

    .line 366
    .line 367
    if-ne v2, v4, :cond_b

    .line 368
    .line 369
    goto :goto_6

    .line 370
    :cond_b
    invoke-virtual {p0}, Lhe/e;->J()V

    .line 371
    .line 372
    .line 373
    new-instance v0, Lsd/i;

    .line 374
    .line 375
    invoke-direct {v0, v2}, Lsd/i;-><init>(I)V

    .line 376
    .line 377
    .line 378
    throw v0

    .line 379
    :cond_c
    :goto_6
    iget-object v2, p0, Lvd/b0;->p:Ljava/net/Socket;

    .line 380
    .line 381
    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 382
    .line 383
    .line 384
    iget-object v2, p0, Lvd/b0;->n:Lsd/k;

    .line 385
    .line 386
    iget-object v3, v2, Lsd/k;->a:Ljava/lang/Object;

    .line 387
    .line 388
    instance-of v4, v3, Lsd/h;

    .line 389
    .line 390
    if-eqz v4, :cond_12

    .line 391
    .line 392
    check-cast v3, Lsd/h;

    .line 393
    .line 394
    iget-object v2, v3, Lsd/h;->d:Ljava/lang/String;

    .line 395
    .line 396
    iget-object v4, v3, Lsd/h;->a:Lsd/b;

    .line 397
    .line 398
    iget-object v4, v4, Lsd/b;->a:Ljava/lang/String;

    .line 399
    .line 400
    const-string v9, "*SMBSERVER     "

    .line 401
    .line 402
    if-ne v2, v4, :cond_d

    .line 403
    .line 404
    iput-object v9, v3, Lsd/h;->d:Ljava/lang/String;

    .line 405
    .line 406
    goto :goto_8

    .line 407
    :cond_d
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 408
    .line 409
    .line 410
    move-result v2

    .line 411
    const/4 v4, 0x0

    .line 412
    if-eqz v2, :cond_10

    .line 413
    .line 414
    :try_start_0
    invoke-interface {v0}, Lvc/b;->i()Lvc/k;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    check-cast v2, Lsd/f;

    .line 419
    .line 420
    invoke-virtual {v2, v3}, Lsd/f;->j(Lsd/h;)[Lvc/l;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    iget-object v9, v3, Lsd/h;->a:Lsd/b;

    .line 425
    .line 426
    iget v9, v9, Lsd/b;->c:I

    .line 427
    .line 428
    const/16 v10, 0x1d

    .line 429
    .line 430
    if-ne v9, v10, :cond_f

    .line 431
    .line 432
    const/4 v9, 0x0

    .line 433
    :goto_7
    array-length v10, v2

    .line 434
    if-ge v9, v10, :cond_14

    .line 435
    .line 436
    aget-object v10, v2, v9

    .line 437
    .line 438
    move-object v11, v10

    .line 439
    check-cast v11, Lsd/h;

    .line 440
    .line 441
    iget-object v11, v11, Lsd/h;->a:Lsd/b;

    .line 442
    .line 443
    iget v11, v11, Lsd/b;->c:I

    .line 444
    .line 445
    const/16 v12, 0x20

    .line 446
    .line 447
    if-ne v11, v12, :cond_e

    .line 448
    .line 449
    check-cast v10, Lsd/h;

    .line 450
    .line 451
    invoke-virtual {v10}, Lsd/h;->c()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v4

    .line 455
    goto :goto_9

    .line 456
    :cond_e
    add-int/lit8 v9, v9, 0x1

    .line 457
    .line 458
    goto :goto_7

    .line 459
    :cond_f
    iget-boolean v2, v3, Lsd/h;->c:Z

    .line 460
    .line 461
    if-eqz v2, :cond_11

    .line 462
    .line 463
    iput-object v4, v3, Lsd/h;->d:Ljava/lang/String;

    .line 464
    .line 465
    invoke-virtual {v3}, Lsd/h;->c()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v4
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    goto :goto_9

    .line 470
    :catch_0
    iput-object v4, v3, Lsd/h;->d:Ljava/lang/String;

    .line 471
    .line 472
    goto :goto_8

    .line 473
    :cond_10
    iput-object v4, v3, Lsd/h;->d:Ljava/lang/String;

    .line 474
    .line 475
    :cond_11
    :goto_8
    iget-object v4, v3, Lsd/h;->d:Ljava/lang/String;

    .line 476
    .line 477
    goto :goto_9

    .line 478
    :cond_12
    iget-object v3, v2, Lsd/k;->b:Ljava/lang/String;

    .line 479
    .line 480
    if-eq v3, v8, :cond_13

    .line 481
    .line 482
    iput-object v8, v2, Lsd/k;->b:Ljava/lang/String;

    .line 483
    .line 484
    move-object v4, v8

    .line 485
    goto :goto_9

    .line 486
    :cond_13
    move-object v4, v5

    .line 487
    :cond_14
    :goto_9
    iput-object v4, v1, Lsd/b;->a:Ljava/lang/String;

    .line 488
    .line 489
    if-eqz v4, :cond_15

    .line 490
    .line 491
    goto/16 :goto_4

    .line 492
    .line 493
    :cond_15
    new-instance v0, Ljava/io/IOException;

    .line 494
    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    .line 496
    .line 497
    const-string v2, "Failed to establish session with "

    .line 498
    .line 499
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    iget-object v2, p0, Lvd/b0;->n:Lsd/k;

    .line 503
    .line 504
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v1

    .line 511
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    throw v0

    .line 515
    :cond_16
    invoke-virtual {p0}, Lhe/e;->J()V

    .line 516
    .line 517
    .line 518
    new-instance v0, Lsd/i;

    .line 519
    .line 520
    invoke-direct {v0, v6}, Lsd/i;-><init>(I)V

    .line 521
    .line 522
    .line 523
    throw v0

    .line 524
    :cond_17
    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 525
    .line 526
    .line 527
    move-result v0

    .line 528
    if-eqz v0, :cond_18

    .line 529
    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    .line 531
    .line 532
    const-string v1, "session established ok with "

    .line 533
    .line 534
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    iget-object v1, p0, Lvd/b0;->n:Lsd/k;

    .line 538
    .line 539
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    invoke-interface {v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    :cond_18
    return-void

    .line 550
    :cond_19
    invoke-virtual {p0}, Lhe/e;->J()V

    .line 551
    .line 552
    .line 553
    new-instance v0, Lsd/i;

    .line 554
    .line 555
    invoke-direct {v0, v4}, Lsd/i;-><init>(I)V

    .line 556
    .line 557
    .line 558
    throw v0

    .line 559
    :cond_1a
    :try_start_1
    iget-object v0, p0, Lvd/b0;->p:Ljava/net/Socket;

    .line 560
    .line 561
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 562
    .line 563
    .line 564
    goto :goto_a

    .line 565
    :catch_1
    move-exception v0

    .line 566
    const-string v1, "Failed to close socket"

    .line 567
    .line 568
    invoke-interface {v3, v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 569
    .line 570
    .line 571
    :goto_a
    new-instance v0, Lvd/r;

    .line 572
    .line 573
    const-string v1, "EOF during NetBIOS session request"

    .line 574
    .line 575
    invoke-direct {v0, v1}, Lvd/r;-><init>(Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    goto :goto_c

    .line 579
    :goto_b
    throw v0

    .line 580
    :goto_c
    goto :goto_b

    .line 581
    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final y0(Ljava/lang/Class;)Lvd/b0;
    .locals 1

    .line 1
    const-class v0, Lvd/b0;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 13
    .line 14
    .line 15
    throw p1
.end method

.method public final z0([B)V
    .locals 3

    .line 1
    iget-object v0, p0, Lvd/b0;->E:[B

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    array-length v1, p1

    .line 5
    iget-object v2, p0, Lvd/b0;->E:[B

    .line 6
    .line 7
    invoke-virtual {p0, v1, p1, v2}, Lvd/b0;->c0(I[B[B)[B

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lvd/b0;->E:[B

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p1
.end method
