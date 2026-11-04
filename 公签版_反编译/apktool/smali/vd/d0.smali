.class public final Lvd/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvc/o;


# static fields
.field public static final e:Lorg/slf4j/Logger;


# instance fields
.field public final a:Ljava/util/LinkedList;

.field public final b:Ljava/util/LinkedList;

.field public final c:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final d:Lj$/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lvd/d0;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lvd/d0;->e:Lorg/slf4j/Logger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lvd/d0;->a:Ljava/util/LinkedList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lvd/d0;->b:Ljava/util/LinkedList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lvd/d0;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 24
    .line 25
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 26
    .line 27
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lvd/d0;->d:Lj$/util/concurrent/ConcurrentHashMap;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lvd/d0;->a:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :goto_0
    :try_start_0
    iget-object v1, p0, Lvd/d0;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lvd/b0;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    sget-object v2, Lvd/d0;->e:Lorg/slf4j/Logger;

    .line 15
    .line 16
    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v4, "Removing transport connection "

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v4, " ("

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v4, ")"

    .line 48
    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catchall_0
    move-exception v1

    .line 61
    goto :goto_2

    .line 62
    :cond_0
    :goto_1
    iget-object v2, p0, Lvd/d0;->a:Ljava/util/LinkedList;

    .line 63
    .line 64
    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    iget-object v2, p0, Lvd/d0;->b:Ljava/util/LinkedList;

    .line 68
    .line 69
    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    monitor-exit v0

    .line 74
    return-void

    .line 75
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    goto :goto_4

    .line 77
    :goto_3
    throw v1

    .line 78
    :goto_4
    goto :goto_3
.end method

.method public final b(Lvc/b;Lsd/k;ILjava/net/InetAddress;ILjava/lang/String;ZZ)Lvd/b0;
    .locals 7

    .line 1
    sget-object v0, Lvd/d0;->e:Lorg/slf4j/Logger;

    .line 2
    .line 3
    iget-object v1, p0, Lvd/d0;->a:Ljava/util/LinkedList;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_f

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lvd/b0;

    .line 20
    .line 21
    iget v3, v2, Lhe/e;->a:I

    .line 22
    .line 23
    const/4 v4, 0x5

    .line 24
    if-eq v3, v4, :cond_0

    .line 25
    .line 26
    iget v3, v2, Lhe/e;->a:I

    .line 27
    .line 28
    const/4 v5, 0x6

    .line 29
    if-ne v3, v5, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    if-nez p6, :cond_2

    .line 33
    .line 34
    invoke-virtual {p2}, Lsd/k;->c()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move-object v3, p6

    .line 40
    :goto_1
    iget-object v6, v2, Lvd/b0;->y:Ljava/lang/String;

    .line 41
    .line 42
    if-eqz v6, :cond_3

    .line 43
    .line 44
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_0

    .line 49
    .line 50
    :cond_3
    iget-object v3, v2, Lvd/b0;->n:Lsd/k;

    .line 51
    .line 52
    invoke-virtual {p2, v3}, Lsd/k;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_0

    .line 57
    .line 58
    if-eqz p3, :cond_4

    .line 59
    .line 60
    iget v3, v2, Lvd/b0;->q:I

    .line 61
    .line 62
    if-eq p3, v3, :cond_4

    .line 63
    .line 64
    const/16 v6, 0x1bd

    .line 65
    .line 66
    if-ne p3, v6, :cond_0

    .line 67
    .line 68
    const/16 v6, 0x8b

    .line 69
    .line 70
    if-ne v3, v6, :cond_0

    .line 71
    .line 72
    :cond_4
    iget-object v3, v2, Lvd/b0;->l:Ljava/net/InetAddress;

    .line 73
    .line 74
    if-eq p4, v3, :cond_5

    .line 75
    .line 76
    if-eqz p4, :cond_0

    .line 77
    .line 78
    invoke-virtual {p4, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_0

    .line 83
    .line 84
    :cond_5
    iget v3, v2, Lvd/b0;->m:I

    .line 85
    .line 86
    if-ne p5, v3, :cond_0

    .line 87
    .line 88
    invoke-interface {p1}, Lvc/b;->e()Lvc/f;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Lwc/a;

    .line 93
    .line 94
    iget v3, v3, Lwc/a;->z:I

    .line 95
    .line 96
    if-eqz v3, :cond_6

    .line 97
    .line 98
    iget-object v3, v2, Lvd/b0;->x:Ljava/util/LinkedList;

    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    invoke-interface {p1}, Lvc/b;->e()Lvc/f;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    check-cast v6, Lwc/a;

    .line 109
    .line 110
    iget v6, v6, Lwc/a;->z:I

    .line 111
    .line 112
    if-ge v3, v6, :cond_0

    .line 113
    .line 114
    :cond_6
    :try_start_0
    iget-object v3, v2, Lvd/b0;->p:Ljava/net/Socket;

    .line 115
    .line 116
    iget v6, v2, Lhe/e;->a:I

    .line 117
    .line 118
    if-eq v6, v4, :cond_9

    .line 119
    .line 120
    iget v4, v2, Lhe/e;->a:I

    .line 121
    .line 122
    if-ne v4, v5, :cond_7

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_7
    if-eqz v3, :cond_9

    .line 126
    .line 127
    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-eqz v3, :cond_8

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_8
    const/4 v3, 0x0

    .line 135
    goto :goto_3

    .line 136
    :cond_9
    :goto_2
    const/4 v3, 0x1

    .line 137
    :goto_3
    if-nez v3, :cond_0

    .line 138
    .line 139
    if-eqz p8, :cond_a

    .line 140
    .line 141
    invoke-virtual {v2}, Lvd/b0;->T()Z

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    if-eqz v3, :cond_a

    .line 146
    .line 147
    goto/16 :goto_0

    .line 148
    .line 149
    :catch_0
    move-exception v2

    .line 150
    goto/16 :goto_4

    .line 151
    .line 152
    :cond_a
    if-eqz p7, :cond_b

    .line 153
    .line 154
    invoke-virtual {v2}, Lvd/b0;->o0()Z

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    if-nez v3, :cond_b

    .line 159
    .line 160
    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    if-eqz v3, :cond_0

    .line 165
    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    const-string v4, "Cannot reuse, signing enforced but connection does not have it enabled "

    .line 172
    .line 173
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :cond_b
    if-nez p7, :cond_c

    .line 189
    .line 190
    invoke-interface {p1}, Lvc/b;->e()Lvc/f;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    check-cast v3, Lwc/a;

    .line 195
    .line 196
    iget-boolean v3, v3, Lwc/a;->h:Z

    .line 197
    .line 198
    if-nez v3, :cond_c

    .line 199
    .line 200
    invoke-virtual {v2}, Lvd/b0;->o0()Z

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    if-eqz v3, :cond_c

    .line 205
    .line 206
    invoke-virtual {v2}, Lvd/b0;->l0()Lad/k;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    invoke-interface {v3}, Lad/k;->Q()Z

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    if-nez v3, :cond_c

    .line 215
    .line 216
    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    if-eqz v3, :cond_0

    .line 221
    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    const-string v4, "Cannot reuse, signing enforced on connection "

    .line 228
    .line 229
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    goto/16 :goto_0

    .line 243
    .line 244
    :cond_c
    invoke-virtual {v2}, Lvd/b0;->l0()Lad/k;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    invoke-interface {v3, p1}, Lad/k;->J(Lvc/b;)Z

    .line 249
    .line 250
    .line 251
    move-result v3

    .line 252
    if-nez v3, :cond_d

    .line 253
    .line 254
    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 255
    .line 256
    .line 257
    move-result v3

    .line 258
    if-eqz v3, :cond_0

    .line 259
    .line 260
    new-instance v3, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .line 264
    .line 265
    const-string v4, "Cannot reuse, different config "

    .line 266
    .line 267
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V
    :try_end_0
    .catch Lvc/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .line 279
    .line 280
    goto/16 :goto_0

    .line 281
    .line 282
    :cond_d
    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    if-eqz p1, :cond_e

    .line 287
    .line 288
    new-instance p1, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    const-string p2, "Reusing transport connection "

    .line 291
    .line 292
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    :cond_e
    invoke-virtual {v2}, Lvd/b0;->b0()V

    .line 306
    .line 307
    .line 308
    return-object v2

    .line 309
    :goto_4
    const-string v3, "Error while checking for reuse"

    .line 310
    .line 311
    invoke-interface {v0, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 312
    .line 313
    .line 314
    goto/16 :goto_0

    .line 315
    .line 316
    :cond_f
    const/4 p1, 0x0

    .line 317
    return-object p1
.end method

.method public final c(Lvc/b;Ljava/lang/String;IZZ)Lvd/b0;
    .locals 18

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    const/4 v11, 0x0

    .line 6
    const/4 v12, 0x1

    .line 7
    invoke-interface/range {p1 .. p1}, Lvc/b;->i()Lvc/k;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lsd/f;

    .line 12
    .line 13
    invoke-virtual {v1, v0, v12}, Lsd/f;->e(Ljava/lang/String;Z)[Lsd/k;

    .line 14
    .line 15
    .line 16
    move-result-object v13

    .line 17
    array-length v1, v13

    .line 18
    if-eqz v1, :cond_6

    .line 19
    .line 20
    new-instance v1, Lua/k0;

    .line 21
    .line 22
    invoke-direct {v1, v12, v10}, Lua/k0;-><init>(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v13, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 26
    .line 27
    .line 28
    iget-object v14, v10, Lvd/d0;->a:Ljava/util/LinkedList;

    .line 29
    .line 30
    monitor-enter v14

    .line 31
    :try_start_0
    array-length v15, v13

    .line 32
    const/4 v9, 0x0

    .line 33
    :goto_0
    if-ge v9, v15, :cond_1

    .line 34
    .line 35
    aget-object v3, v13, v9

    .line 36
    .line 37
    invoke-interface/range {p1 .. p1}, Lvc/b;->e()Lvc/f;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lwc/a;

    .line 42
    .line 43
    iget-object v5, v1, Lwc/a;->E:Ljava/net/InetAddress;

    .line 44
    .line 45
    invoke-interface/range {p1 .. p1}, Lvc/b;->e()Lvc/f;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lwc/a;

    .line 50
    .line 51
    iget v6, v1, Lwc/a;->F:I

    .line 52
    .line 53
    const/16 v16, 0x1

    .line 54
    .line 55
    move-object/from16 v1, p0

    .line 56
    .line 57
    move-object/from16 v2, p1

    .line 58
    .line 59
    move/from16 v4, p3

    .line 60
    .line 61
    move-object/from16 v7, p2

    .line 62
    .line 63
    move/from16 v8, p5

    .line 64
    .line 65
    move/from16 v17, v9

    .line 66
    .line 67
    move/from16 v9, v16

    .line 68
    .line 69
    invoke-virtual/range {v1 .. v9}, Lvd/d0;->b(Lvc/b;Lsd/k;ILjava/net/InetAddress;ILjava/lang/String;ZZ)Lvd/b0;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    if-eqz v1, :cond_0

    .line 74
    .line 75
    monitor-exit v14

    .line 76
    goto :goto_2

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    goto/16 :goto_6

    .line 79
    .line 80
    :cond_0
    add-int/lit8 v9, v17, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    array-length v7, v13

    .line 85
    const/4 v0, 0x0

    .line 86
    const/4 v8, 0x0

    .line 87
    :goto_1
    if-ge v8, v7, :cond_4

    .line 88
    .line 89
    aget-object v9, v13, v8

    .line 90
    .line 91
    sget-object v0, Lvd/d0;->e:Lorg/slf4j/Logger;

    .line 92
    .line 93
    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_2

    .line 98
    .line 99
    const-string v1, "Trying address {}"

    .line 100
    .line 101
    invoke-interface {v0, v1, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    move-object/from16 v1, p0

    .line 105
    .line 106
    move-object/from16 v2, p1

    .line 107
    .line 108
    move-object v3, v9

    .line 109
    move/from16 v4, p3

    .line 110
    .line 111
    move/from16 v5, p4

    .line 112
    .line 113
    move/from16 v6, p5

    .line 114
    .line 115
    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lvd/d0;->d(Lvc/b;Lsd/k;IZZ)Lvd/b0;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    const-class v0, Lvd/b0;

    .line 120
    .line 121
    invoke-virtual {v1, v0}, Lvd/b0;->y0(Ljava/lang/Class;)Lvd/b0;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 122
    .line 123
    .line 124
    :try_start_2
    invoke-virtual {v1}, Lvd/b0;->j0()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 125
    .line 126
    .line 127
    :try_start_3
    invoke-virtual {v1}, Lvd/b0;->b0()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 128
    .line 129
    .line 130
    :try_start_4
    invoke-virtual {v1}, Lhe/e;->Y()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 131
    .line 132
    .line 133
    :goto_2
    return-object v1

    .line 134
    :catchall_1
    move-exception v0

    .line 135
    move-object v2, v0

    .line 136
    goto :goto_3

    .line 137
    :catch_0
    move-exception v0

    .line 138
    move-object v2, v0

    .line 139
    :try_start_5
    invoke-virtual {v10, v1}, Lvd/d0;->e(Lvd/b0;)V

    .line 140
    .line 141
    .line 142
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 143
    :goto_3
    :try_start_6
    invoke-virtual {v1}, Lhe/e;->Y()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 144
    .line 145
    .line 146
    goto :goto_4

    .line 147
    :catchall_2
    move-exception v0

    .line 148
    move-object v1, v0

    .line 149
    :try_start_7
    const-class v0, Ljava/lang/Throwable;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 150
    .line 151
    :try_start_8
    const-string v3, "addSuppressed"

    .line 152
    .line 153
    new-array v4, v12, [Ljava/lang/Class;

    .line 154
    .line 155
    aput-object v0, v4, v11

    .line 156
    .line 157
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    new-array v3, v12, [Ljava/lang/Object;

    .line 162
    .line 163
    aput-object v1, v3, v11

    .line 164
    .line 165
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 166
    .line 167
    .line 168
    :catch_1
    :goto_4
    :try_start_9
    throw v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 169
    :catch_2
    move-exception v0

    .line 170
    invoke-virtual {v9}, Lsd/k;->b()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    iget-object v2, v10, Lvd/d0;->d:Lj$/util/concurrent/ConcurrentHashMap;

    .line 175
    .line 176
    invoke-virtual {v2, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    check-cast v2, Ljava/lang/Integer;

    .line 181
    .line 182
    if-nez v2, :cond_3

    .line 183
    .line 184
    iget-object v2, v10, Lvd/d0;->d:Lj$/util/concurrent/ConcurrentHashMap;

    .line 185
    .line 186
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v2, v1, v3}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_3
    iget-object v3, v10, Lvd/d0;->d:Lj$/util/concurrent/ConcurrentHashMap;

    .line 195
    .line 196
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    add-int/2addr v2, v12

    .line 201
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-virtual {v3, v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    :goto_5
    add-int/2addr v8, v12

    .line 209
    goto :goto_1

    .line 210
    :cond_4
    if-eqz v0, :cond_5

    .line 211
    .line 212
    throw v0

    .line 213
    :cond_5
    new-instance v0, Lhe/f;

    .line 214
    .line 215
    const-string v1, "All connection attempts failed"

    .line 216
    .line 217
    invoke-direct {v0, v1}, Lhe/f;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw v0

    .line 221
    :goto_6
    :try_start_a
    monitor-exit v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 222
    throw v0

    .line 223
    :cond_6
    new-instance v1, Ljava/net/UnknownHostException;

    .line 224
    .line 225
    invoke-direct {v1, v0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    goto :goto_8

    .line 229
    :goto_7
    throw v1

    .line 230
    :goto_8
    goto :goto_7
.end method

.method public final d(Lvc/b;Lsd/k;IZZ)Lvd/b0;
    .locals 17

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move/from16 v0, p4

    .line 4
    .line 5
    invoke-interface/range {p1 .. p1}, Lvc/b;->e()Lvc/f;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lwc/a;

    .line 10
    .line 11
    iget-object v11, v1, Lwc/a;->E:Ljava/net/InetAddress;

    .line 12
    .line 13
    invoke-interface/range {p1 .. p1}, Lvc/b;->e()Lvc/f;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lwc/a;

    .line 18
    .line 19
    iget v12, v1, Lwc/a;->F:I

    .line 20
    .line 21
    const-string v13, "New transport connection "

    .line 22
    .line 23
    const-string v1, "Exclusive "

    .line 24
    .line 25
    if-gtz p3, :cond_0

    .line 26
    .line 27
    const/16 v2, 0x1bd

    .line 28
    .line 29
    const/16 v14, 0x1bd

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move/from16 v14, p3

    .line 33
    .line 34
    :goto_0
    iget-object v15, v10, Lvd/d0;->a:Ljava/util/LinkedList;

    .line 35
    .line 36
    monitor-enter v15

    .line 37
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lvd/d0;->a()V

    .line 38
    .line 39
    .line 40
    sget-object v9, Lvd/d0;->e:Lorg/slf4j/Logger;

    .line 41
    .line 42
    invoke-interface {v9}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, " enforced signing "

    .line 57
    .line 58
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    move/from16 v8, p5

    .line 62
    .line 63
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-interface {v9, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    goto/16 :goto_4

    .line 76
    .line 77
    :cond_1
    move/from16 v8, p5

    .line 78
    .line 79
    :goto_1
    if-nez v0, :cond_2

    .line 80
    .line 81
    invoke-interface/range {p1 .. p1}, Lvc/b;->e()Lvc/f;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Lwc/a;

    .line 86
    .line 87
    iget v1, v1, Lwc/a;->z:I

    .line 88
    .line 89
    const/4 v2, 0x1

    .line 90
    if-eq v1, v2, :cond_2

    .line 91
    .line 92
    const/16 v16, 0x0

    .line 93
    .line 94
    const/4 v7, 0x0

    .line 95
    move-object/from16 v1, p0

    .line 96
    .line 97
    move-object/from16 v2, p1

    .line 98
    .line 99
    move-object/from16 v3, p2

    .line 100
    .line 101
    move v4, v14

    .line 102
    move-object v5, v11

    .line 103
    move v6, v12

    .line 104
    move/from16 v8, p5

    .line 105
    .line 106
    move-object/from16 p3, v9

    .line 107
    .line 108
    move/from16 v9, v16

    .line 109
    .line 110
    invoke-virtual/range {v1 .. v9}, Lvd/d0;->b(Lvc/b;Lsd/k;ILjava/net/InetAddress;ILjava/lang/String;ZZ)Lvd/b0;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    if-eqz v1, :cond_3

    .line 115
    .line 116
    monitor-exit v15

    .line 117
    goto :goto_3

    .line 118
    :cond_2
    move-object/from16 p3, v9

    .line 119
    .line 120
    :cond_3
    new-instance v1, Lvd/b0;

    .line 121
    .line 122
    move-object v2, v1

    .line 123
    move-object/from16 v3, p1

    .line 124
    .line 125
    move-object/from16 v4, p2

    .line 126
    .line 127
    move v5, v14

    .line 128
    move-object v6, v11

    .line 129
    move v7, v12

    .line 130
    move/from16 v8, p5

    .line 131
    .line 132
    invoke-direct/range {v2 .. v8}, Lvd/b0;-><init>(Lvc/b;Lsd/k;ILjava/net/InetAddress;IZ)V

    .line 133
    .line 134
    .line 135
    invoke-interface/range {p3 .. p3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-eqz v2, :cond_4

    .line 140
    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    move-object/from16 v3, p3

    .line 154
    .line 155
    invoke-interface {v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    :cond_4
    if-eqz v0, :cond_5

    .line 159
    .line 160
    iget-object v0, v10, Lvd/d0;->b:Ljava/util/LinkedList;

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_5
    iget-object v0, v10, Lvd/d0;->a:Ljava/util/LinkedList;

    .line 167
    .line 168
    const/4 v2, 0x0

    .line 169
    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    :goto_2
    monitor-exit v15

    .line 173
    :goto_3
    return-object v1

    .line 174
    :goto_4
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    throw v0
.end method

.method public final e(Lvd/b0;)V
    .locals 3

    .line 1
    sget-object v0, Lvd/d0;->e:Lorg/slf4j/Logger;

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
    const-string v2, "Scheduling transport connection for removal "

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, " ("

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, ")"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object v0, p0, Lvd/d0;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    return-void
.end method
