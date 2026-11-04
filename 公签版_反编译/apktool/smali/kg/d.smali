.class public final Lkg/d;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public b:J

.field public final c:[B

.field public final d:[B

.field public final e:I

.field public f:Z

.field public g:J

.field public h:J

.field public i:Ljava/util/ArrayList;

.field public j:I

.field public k:Lkg/c;

.field public final l:Llg/a;

.field public m:Ljava/util/HashMap;

.field public final n:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    sget v0, Lsg/a;->a:I

    .line 2
    .line 3
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    new-array p1, p1, [B

    .line 12
    .line 13
    iput-object p1, p0, Lkg/d;->a:[B

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 18
    .line 19
    .line 20
    :cond_0
    const/16 p1, 0x100

    .line 21
    .line 22
    new-array p1, p1, [B

    .line 23
    .line 24
    iput-object p1, p0, Lkg/d;->c:[B

    .line 25
    .line 26
    new-instance p1, Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lkg/d;->m:Ljava/util/HashMap;

    .line 32
    .line 33
    new-instance p1, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lkg/d;->n:Ljava/util/ArrayList;

    .line 39
    .line 40
    sget p1, Llg/c;->a:I

    .line 41
    .line 42
    new-instance p1, Llg/a;

    .line 43
    .line 44
    :try_start_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 45
    .line 46
    .line 47
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_0

    .line 49
    :catch_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    :goto_0
    invoke-direct {p1, v0}, Llg/a;-><init>(Ljava/nio/charset/Charset;)V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lkg/d;->l:Llg/a;

    .line 57
    .line 58
    const/16 p1, 0x200

    .line 59
    .line 60
    new-array p1, p1, [B

    .line 61
    .line 62
    iput-object p1, p0, Lkg/d;->d:[B

    .line 63
    .line 64
    const/16 p1, 0x2800

    .line 65
    .line 66
    iput p1, p0, Lkg/d;->e:I

    .line 67
    .line 68
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 14

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lkg/d;->j:I

    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lkg/d;->i:Ljava/util/ArrayList;

    .line 10
    .line 11
    iget-object v0, p0, Lkg/d;->k:Lkg/c;

    .line 12
    .line 13
    iget-object v1, v0, Lkg/c;->e:Ljava/util/ArrayList;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    const-wide/16 v3, 0x0

    .line 17
    .line 18
    if-eqz v1, :cond_7

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    goto/16 :goto_3

    .line 27
    .line 28
    :cond_0
    iget-object v1, v0, Lkg/c;->e:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-static {v1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    new-instance v5, Leh/h;

    .line 35
    .line 36
    const/4 v6, 0x3

    .line 37
    invoke-direct {v5, v6}, Leh/h;-><init>(I)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v1, v5}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    new-instance v5, Ljg/q;

    .line 45
    .line 46
    const/4 v6, 0x1

    .line 47
    invoke-direct {v5, v6}, Ljg/q;-><init>(I)V

    .line 48
    .line 49
    .line 50
    invoke-static {v5}, Lj$/util/Comparator$-CC;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-interface {v1, v5}, Lj$/util/stream/Stream;->sorted(Ljava/util/Comparator;)Lj$/util/stream/Stream;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-interface {v1, v5}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    const/4 v6, 0x0

    .line 73
    :goto_0
    if-ge v6, v5, :cond_4

    .line 74
    .line 75
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    check-cast v7, Lkg/f;

    .line 80
    .line 81
    add-int/lit8 v6, v6, 0x1

    .line 82
    .line 83
    if-ge v6, v5, :cond_2

    .line 84
    .line 85
    iget-wide v8, v7, Lkg/f;->a:J

    .line 86
    .line 87
    iget-wide v10, v7, Lkg/f;->b:J

    .line 88
    .line 89
    add-long/2addr v8, v10

    .line 90
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v10

    .line 94
    check-cast v10, Lkg/f;

    .line 95
    .line 96
    iget-wide v10, v10, Lkg/f;->a:J

    .line 97
    .line 98
    cmp-long v12, v8, v10

    .line 99
    .line 100
    if-gtz v12, :cond_1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_1
    new-instance v1, Ljava/io/IOException;

    .line 104
    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v3, "Corrupted TAR archive. Sparse blocks for "

    .line 108
    .line 109
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object v0, v0, Lkg/c;->a:Ljava/lang/String;

    .line 113
    .line 114
    const-string v3, " overlap each other."

    .line 115
    .line 116
    invoke-static {v0, v3, v2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v1

    .line 124
    :cond_2
    :goto_1
    iget-wide v8, v7, Lkg/f;->a:J

    .line 125
    .line 126
    iget-wide v10, v7, Lkg/f;->b:J

    .line 127
    .line 128
    add-long/2addr v8, v10

    .line 129
    cmp-long v7, v8, v3

    .line 130
    .line 131
    if-ltz v7, :cond_3

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_3
    new-instance v1, Ljava/io/IOException;

    .line 135
    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string v3, "Unreadable TAR archive. Offset and numbytes for sparse block in "

    .line 139
    .line 140
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-object v0, v0, Lkg/c;->a:Ljava/lang/String;

    .line 144
    .line 145
    const-string v3, " too large."

    .line 146
    .line 147
    invoke-static {v0, v3, v2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw v1

    .line 155
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    if-nez v6, :cond_8

    .line 160
    .line 161
    add-int/lit8 v5, v5, -0x1

    .line 162
    .line 163
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    check-cast v5, Lkg/f;

    .line 168
    .line 169
    iget-wide v6, v5, Lkg/f;->a:J

    .line 170
    .line 171
    iget-wide v8, v5, Lkg/f;->b:J

    .line 172
    .line 173
    add-long/2addr v6, v8

    .line 174
    invoke-virtual {v0}, Lkg/c;->d()Z

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    if-nez v5, :cond_5

    .line 179
    .line 180
    iget-wide v8, v0, Lkg/c;->c:J

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_5
    iget-wide v8, v0, Lkg/c;->g:J

    .line 184
    .line 185
    :goto_2
    cmp-long v0, v6, v8

    .line 186
    .line 187
    if-gtz v0, :cond_6

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_6
    new-instance v0, Ljava/io/IOException;

    .line 191
    .line 192
    const-string v1, "Corrupted TAR archive. Sparse block extends beyond real size of the entry"

    .line 193
    .line 194
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    throw v0

    .line 198
    :cond_7
    :goto_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    :cond_8
    :goto_4
    new-instance v0, Lkg/e;

    .line 203
    .line 204
    invoke-direct {v0}, Lkg/e;-><init>()V

    .line 205
    .line 206
    .line 207
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    move-wide v5, v3

    .line 212
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 213
    .line 214
    .line 215
    move-result v7

    .line 216
    if-eqz v7, :cond_c

    .line 217
    .line 218
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v7

    .line 222
    check-cast v7, Lkg/f;

    .line 223
    .line 224
    iget-wide v8, v7, Lkg/f;->a:J

    .line 225
    .line 226
    sub-long/2addr v8, v5

    .line 227
    cmp-long v10, v8, v3

    .line 228
    .line 229
    if-ltz v10, :cond_b

    .line 230
    .line 231
    const-wide/16 v10, -0x1

    .line 232
    .line 233
    cmp-long v12, v8, v3

    .line 234
    .line 235
    if-lez v12, :cond_9

    .line 236
    .line 237
    iget-object v8, p0, Lkg/d;->i:Ljava/util/ArrayList;

    .line 238
    .line 239
    new-instance v9, Lxg/a;

    .line 240
    .line 241
    invoke-direct {v9}, Lxg/a;-><init>()V

    .line 242
    .line 243
    .line 244
    new-instance v12, Ltg/a;

    .line 245
    .line 246
    const/4 v13, 0x1

    .line 247
    invoke-direct {v12, v13, v0}, Ltg/a;-><init>(ILjava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    iput-object v12, v9, Ltg/b;->b:Ljava/lang/Object;

    .line 251
    .line 252
    iget-wide v12, v7, Lkg/f;->a:J

    .line 253
    .line 254
    sub-long/2addr v12, v5

    .line 255
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    .line 256
    .line 257
    .line 258
    move-result-wide v5

    .line 259
    iput-wide v5, v9, Lxg/a;->e:J

    .line 260
    .line 261
    new-instance v5, Lxg/b;

    .line 262
    .line 263
    invoke-direct {v5, v9}, Lxg/b;-><init>(Lxg/a;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    :cond_9
    iget-wide v5, v7, Lkg/f;->b:J

    .line 270
    .line 271
    cmp-long v8, v5, v3

    .line 272
    .line 273
    if-lez v8, :cond_a

    .line 274
    .line 275
    iget-object v5, p0, Lkg/d;->i:Ljava/util/ArrayList;

    .line 276
    .line 277
    new-instance v6, Lxg/a;

    .line 278
    .line 279
    invoke-direct {v6}, Lxg/a;-><init>()V

    .line 280
    .line 281
    .line 282
    iget-object v8, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 283
    .line 284
    invoke-virtual {v6, v8}, Ltg/b;->P0(Ljava/io/InputStream;)V

    .line 285
    .line 286
    .line 287
    iget-wide v8, v7, Lkg/f;->b:J

    .line 288
    .line 289
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 290
    .line 291
    .line 292
    move-result-wide v8

    .line 293
    iput-wide v8, v6, Lxg/a;->e:J

    .line 294
    .line 295
    new-instance v8, Lxg/b;

    .line 296
    .line 297
    invoke-direct {v8, v6}, Lxg/b;-><init>(Lxg/a;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    :cond_a
    iget-wide v5, v7, Lkg/f;->a:J

    .line 304
    .line 305
    iget-wide v7, v7, Lkg/f;->b:J

    .line 306
    .line 307
    add-long/2addr v5, v7

    .line 308
    goto :goto_5

    .line 309
    :cond_b
    new-instance v0, Ljava/io/IOException;

    .line 310
    .line 311
    const-string v1, "Corrupted struct sparse detected"

    .line 312
    .line 313
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    throw v0

    .line 317
    :cond_c
    iget-object v0, p0, Lkg/d;->i:Ljava/util/ArrayList;

    .line 318
    .line 319
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 320
    .line 321
    .line 322
    move-result v0

    .line 323
    if-nez v0, :cond_d

    .line 324
    .line 325
    iput v2, p0, Lkg/d;->j:I

    .line 326
    .line 327
    :cond_d
    return-void
.end method

.method public final J(J)V
    .locals 3

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    iget-wide v0, p0, Lkg/d;->b:J

    .line 8
    .line 9
    add-long/2addr v0, p1

    .line 10
    iput-wide v0, p0, Lkg/d;->b:J

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final K()[B
    .locals 4

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    :goto_0
    iget-object v1, p0, Lkg/d;->c:[B

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-ltz v2, :cond_0

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lkg/d;->L()Lkg/c;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lkg/d;->k:Lkg/c;

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    return-object v0

    .line 28
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    array-length v1, v0

    .line 33
    :goto_1
    if-lez v1, :cond_2

    .line 34
    .line 35
    add-int/lit8 v2, v1, -0x1

    .line 36
    .line 37
    aget-byte v2, v0, v2

    .line 38
    .line 39
    if-nez v2, :cond_2

    .line 40
    .line 41
    add-int/lit8 v1, v1, -0x1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    array-length v2, v0

    .line 45
    if-eq v1, v2, :cond_3

    .line 46
    .line 47
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :cond_3
    return-object v0
.end method

.method public final L()Lkg/c;
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-boolean v1, p0, Lkg/d;->f:Z

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-object v2

    .line 8
    :cond_0
    iget-object v1, p0, Lkg/d;->k:Lkg/c;

    .line 9
    .line 10
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    sget v1, Lrg/d;->a:I

    .line 15
    .line 16
    new-instance v1, Lah/a;

    .line 17
    .line 18
    invoke-direct {v1, v0}, Lah/a;-><init>(I)V

    .line 19
    .line 20
    .line 21
    const-wide v5, 0x7fffffffffffffffL

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    invoke-static {p0, v5, v6, v1}, Lsg/b;->a(Ljava/io/InputStream;JLjava/util/function/Supplier;)J

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lkg/d;->N()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_3

    .line 34
    .line 35
    iget-wide v5, p0, Lkg/d;->g:J

    .line 36
    .line 37
    cmp-long v1, v5, v3

    .line 38
    .line 39
    if-lez v1, :cond_3

    .line 40
    .line 41
    iget-object v1, p0, Lkg/d;->d:[B

    .line 42
    .line 43
    array-length v1, v1

    .line 44
    int-to-long v7, v1

    .line 45
    rem-long/2addr v5, v7

    .line 46
    cmp-long v1, v5, v3

    .line 47
    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    int-to-long v5, v1

    .line 57
    iget-wide v7, p0, Lkg/d;->g:J

    .line 58
    .line 59
    iget-object v1, p0, Lkg/d;->d:[B

    .line 60
    .line 61
    array-length v9, v1

    .line 62
    int-to-long v9, v9

    .line 63
    div-long v9, v7, v9

    .line 64
    .line 65
    const-wide/16 v11, 0x1

    .line 66
    .line 67
    add-long/2addr v9, v11

    .line 68
    array-length v1, v1

    .line 69
    int-to-long v11, v1

    .line 70
    mul-long v9, v9, v11

    .line 71
    .line 72
    sub-long/2addr v9, v7

    .line 73
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 74
    .line 75
    new-instance v7, Lah/a;

    .line 76
    .line 77
    invoke-direct {v7, v0}, Lah/a;-><init>(I)V

    .line 78
    .line 79
    .line 80
    invoke-static {v1, v9, v10, v7}, Lsg/b;->a(Ljava/io/InputStream;JLjava/util/function/Supplier;)J

    .line 81
    .line 82
    .line 83
    move-result-wide v7

    .line 84
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 85
    .line 86
    instance-of v1, v1, Ljava/io/FileInputStream;

    .line 87
    .line 88
    if-eqz v1, :cond_1

    .line 89
    .line 90
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 91
    .line 92
    .line 93
    move-result-wide v7

    .line 94
    :cond_1
    cmp-long v1, v7, v9

    .line 95
    .line 96
    if-nez v1, :cond_2

    .line 97
    .line 98
    invoke-virtual {p0, v7, v8}, Lkg/d;->J(J)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 103
    .line 104
    const-string v1, "Truncated TAR archive"

    .line 105
    .line 106
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw v0

    .line 110
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lkg/d;->M()[B

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    if-nez v1, :cond_4

    .line 115
    .line 116
    iput-object v2, p0, Lkg/d;->k:Lkg/c;

    .line 117
    .line 118
    return-object v2

    .line 119
    :cond_4
    :try_start_0
    new-instance v5, Lkg/c;

    .line 120
    .line 121
    iget-object v6, p0, Lkg/d;->m:Ljava/util/HashMap;

    .line 122
    .line 123
    iget-object v7, p0, Lkg/d;->l:Llg/a;

    .line 124
    .line 125
    const/4 v8, 0x0

    .line 126
    invoke-direct {v5, v8}, Lkg/c;-><init>(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 127
    .line 128
    .line 129
    :try_start_1
    invoke-virtual {v5, v6, v1, v7}, Lkg/c;->f(Ljava/util/HashMap;[BLlg/a;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 130
    .line 131
    .line 132
    :try_start_2
    iput-object v5, p0, Lkg/d;->k:Lkg/c;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 133
    .line 134
    iput-wide v3, p0, Lkg/d;->h:J

    .line 135
    .line 136
    iget-wide v3, v5, Lkg/c;->c:J

    .line 137
    .line 138
    iput-wide v3, p0, Lkg/d;->g:J

    .line 139
    .line 140
    iget-byte v1, v5, Lkg/c;->d:B

    .line 141
    .line 142
    const/16 v3, 0x4b

    .line 143
    .line 144
    if-ne v1, v3, :cond_6

    .line 145
    .line 146
    invoke-virtual {p0}, Lkg/d;->K()[B

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    if-nez v1, :cond_5

    .line 151
    .line 152
    return-object v2

    .line 153
    :cond_5
    iget-object v3, p0, Lkg/d;->k:Lkg/c;

    .line 154
    .line 155
    iget-object v4, p0, Lkg/d;->l:Llg/a;

    .line 156
    .line 157
    invoke-virtual {v4, v1}, Llg/a;->decode([B)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    :cond_6
    iget-object v1, p0, Lkg/d;->k:Lkg/c;

    .line 164
    .line 165
    iget-byte v1, v1, Lkg/c;->d:B

    .line 166
    .line 167
    const/16 v3, 0x4c

    .line 168
    .line 169
    if-ne v1, v3, :cond_8

    .line 170
    .line 171
    invoke-virtual {p0}, Lkg/d;->K()[B

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    if-nez v1, :cond_7

    .line 176
    .line 177
    return-object v2

    .line 178
    :cond_7
    iget-object v2, p0, Lkg/d;->l:Llg/a;

    .line 179
    .line 180
    invoke-virtual {v2, v1}, Llg/a;->decode([B)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    iget-object v2, p0, Lkg/d;->k:Lkg/c;

    .line 185
    .line 186
    invoke-virtual {v2, v1}, Lkg/c;->g(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    iget-object v2, p0, Lkg/d;->k:Lkg/c;

    .line 190
    .line 191
    invoke-virtual {v2}, Lkg/c;->b()Z

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    if-eqz v2, :cond_8

    .line 196
    .line 197
    const-string v2, "/"

    .line 198
    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    if-nez v3, :cond_8

    .line 204
    .line 205
    iget-object v3, p0, Lkg/d;->k:Lkg/c;

    .line 206
    .line 207
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-virtual {v3, v1}, Lkg/c;->g(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    :cond_8
    iget-object v1, p0, Lkg/d;->k:Lkg/c;

    .line 215
    .line 216
    iget-byte v1, v1, Lkg/c;->d:B

    .line 217
    .line 218
    const/16 v2, 0x67

    .line 219
    .line 220
    if-ne v1, v2, :cond_9

    .line 221
    .line 222
    const/4 v1, 0x1

    .line 223
    goto :goto_1

    .line 224
    :cond_9
    const/4 v1, 0x0

    .line 225
    :goto_1
    const-string v2, "Error detected parsing the pax header"

    .line 226
    .line 227
    if-eqz v1, :cond_b

    .line 228
    .line 229
    iget-object v1, p0, Lkg/d;->n:Ljava/util/ArrayList;

    .line 230
    .line 231
    iget-object v3, p0, Lkg/d;->m:Ljava/util/HashMap;

    .line 232
    .line 233
    iget-wide v4, p0, Lkg/d;->g:J

    .line 234
    .line 235
    invoke-static {p0, v1, v3, v4, v5}, Lkg/g;->e(Lkg/d;Ljava/util/ArrayList;Ljava/util/HashMap;J)Ljava/util/HashMap;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    iput-object v1, p0, Lkg/d;->m:Ljava/util/HashMap;

    .line 240
    .line 241
    invoke-virtual {p0}, Lkg/d;->L()Lkg/c;

    .line 242
    .line 243
    .line 244
    iget-object v1, p0, Lkg/d;->k:Lkg/c;

    .line 245
    .line 246
    if-eqz v1, :cond_a

    .line 247
    .line 248
    goto :goto_2

    .line 249
    :cond_a
    new-instance v0, Ljava/io/IOException;

    .line 250
    .line 251
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    throw v0

    .line 255
    :cond_b
    :goto_2
    :try_start_3
    iget-object v1, p0, Lkg/d;->k:Lkg/c;

    .line 256
    .line 257
    iget-byte v1, v1, Lkg/c;->d:B

    .line 258
    .line 259
    const/16 v3, 0x78

    .line 260
    .line 261
    if-eq v1, v3, :cond_d

    .line 262
    .line 263
    const/16 v3, 0x58

    .line 264
    .line 265
    if-ne v1, v3, :cond_c

    .line 266
    .line 267
    goto :goto_3

    .line 268
    :cond_c
    const/4 v1, 0x0

    .line 269
    goto :goto_4

    .line 270
    :cond_d
    :goto_3
    const/4 v1, 0x1

    .line 271
    :goto_4
    if-eqz v1, :cond_e

    .line 272
    .line 273
    invoke-virtual {p0}, Lkg/d;->O()V

    .line 274
    .line 275
    .line 276
    goto :goto_5

    .line 277
    :catch_0
    move-exception v0

    .line 278
    goto :goto_8

    .line 279
    :cond_e
    iget-object v1, p0, Lkg/d;->m:Ljava/util/HashMap;

    .line 280
    .line 281
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-nez v1, :cond_f

    .line 286
    .line 287
    iget-object v1, p0, Lkg/d;->m:Ljava/util/HashMap;

    .line 288
    .line 289
    iget-object v3, p0, Lkg/d;->n:Ljava/util/ArrayList;

    .line 290
    .line 291
    invoke-virtual {p0, v1, v3}, Lkg/d;->r(Ljava/util/HashMap;Ljava/util/ArrayList;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    .line 292
    .line 293
    .line 294
    :cond_f
    :goto_5
    iget-object v1, p0, Lkg/d;->k:Lkg/c;

    .line 295
    .line 296
    iget-byte v2, v1, Lkg/c;->d:B

    .line 297
    .line 298
    const/16 v3, 0x53

    .line 299
    .line 300
    if-ne v2, v3, :cond_14

    .line 301
    .line 302
    iget-boolean v1, v1, Lkg/c;->f:Z

    .line 303
    .line 304
    if-eqz v1, :cond_13

    .line 305
    .line 306
    :cond_10
    invoke-virtual {p0}, Lkg/d;->M()[B

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    if-eqz v1, :cond_12

    .line 311
    .line 312
    new-instance v2, Ljava/util/ArrayList;

    .line 313
    .line 314
    const/16 v3, 0x15

    .line 315
    .line 316
    invoke-static {v8, v3, v1}, Lkg/g;->g(II[B)Ljava/util/List;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 321
    .line 322
    .line 323
    const/16 v3, 0x1f8

    .line 324
    .line 325
    aget-byte v1, v1, v3

    .line 326
    .line 327
    if-ne v1, v0, :cond_11

    .line 328
    .line 329
    const/4 v1, 0x1

    .line 330
    goto :goto_6

    .line 331
    :cond_11
    const/4 v1, 0x0

    .line 332
    :goto_6
    iget-object v3, p0, Lkg/d;->k:Lkg/c;

    .line 333
    .line 334
    iget-object v3, v3, Lkg/c;->e:Ljava/util/ArrayList;

    .line 335
    .line 336
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 337
    .line 338
    .line 339
    if-nez v1, :cond_10

    .line 340
    .line 341
    goto :goto_7

    .line 342
    :cond_12
    new-instance v0, Ljava/io/IOException;

    .line 343
    .line 344
    const-string v1, "premature end of tar archive. Didn\'t find extended_header after header with extended flag."

    .line 345
    .line 346
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    throw v0

    .line 350
    :cond_13
    :goto_7
    invoke-virtual {p0}, Lkg/d;->A()V

    .line 351
    .line 352
    .line 353
    :cond_14
    iget-object v0, p0, Lkg/d;->k:Lkg/c;

    .line 354
    .line 355
    iget-wide v1, v0, Lkg/c;->c:J

    .line 356
    .line 357
    iput-wide v1, p0, Lkg/d;->g:J

    .line 358
    .line 359
    return-object v0

    .line 360
    :goto_8
    new-instance v1, Ljava/io/IOException;

    .line 361
    .line 362
    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 363
    .line 364
    .line 365
    throw v1

    .line 366
    :catch_1
    move-exception v0

    .line 367
    goto :goto_9

    .line 368
    :catch_2
    move-exception v0

    .line 369
    :try_start_4
    new-instance v1, Ljava/io/IOException;

    .line 370
    .line 371
    const-string v2, "Corrupted TAR archive."

    .line 372
    .line 373
    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 374
    .line 375
    .line 376
    throw v1
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    .line 377
    :goto_9
    new-instance v1, Ljava/io/IOException;

    .line 378
    .line 379
    const-string v2, "Error detected parsing the header"

    .line 380
    .line 381
    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 382
    .line 383
    .line 384
    goto :goto_b

    .line 385
    :goto_a
    throw v1

    .line 386
    :goto_b
    goto :goto_a
.end method

.method public final M()[B
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lkg/d;->P()[B

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v3, p0, Lkg/d;->d:[B

    .line 10
    .line 11
    array-length v3, v3

    .line 12
    const/4 v4, 0x0

    .line 13
    :goto_0
    if-ge v4, v3, :cond_1

    .line 14
    .line 15
    aget-byte v5, v1, v4

    .line 16
    .line 17
    if-eqz v5, :cond_0

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    add-int/2addr v4, v0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v3, 0x1

    .line 24
    :goto_1
    iput-boolean v3, p0, Lkg/d;->f:Z

    .line 25
    .line 26
    if-eqz v3, :cond_8

    .line 27
    .line 28
    if-eqz v1, :cond_8

    .line 29
    .line 30
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    iget-object v3, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 39
    .line 40
    iget-object v4, p0, Lkg/d;->d:[B

    .line 41
    .line 42
    array-length v4, v4

    .line 43
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->mark(I)V

    .line 44
    .line 45
    .line 46
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lkg/d;->P()[B

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    if-eqz v3, :cond_4

    .line 51
    .line 52
    iget-object v4, p0, Lkg/d;->d:[B

    .line 53
    .line 54
    array-length v4, v4

    .line 55
    const/4 v5, 0x0

    .line 56
    :goto_2
    if-ge v5, v4, :cond_4

    .line 57
    .line 58
    aget-byte v6, v3, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    if-eqz v6, :cond_3

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_3
    add-int/2addr v5, v0

    .line 64
    goto :goto_2

    .line 65
    :cond_4
    const/4 v2, 0x1

    .line 66
    :goto_3
    if-nez v2, :cond_5

    .line 67
    .line 68
    if-eqz v1, :cond_5

    .line 69
    .line 70
    iget-object v1, p0, Lkg/d;->d:[B

    .line 71
    .line 72
    array-length v1, v1

    .line 73
    int-to-long v1, v1

    .line 74
    iget-wide v3, p0, Lkg/d;->b:J

    .line 75
    .line 76
    sub-long/2addr v3, v1

    .line 77
    iput-wide v3, p0, Lkg/d;->b:J

    .line 78
    .line 79
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    .line 82
    .line 83
    .line 84
    :cond_5
    iget-wide v1, p0, Lkg/d;->b:J

    .line 85
    .line 86
    iget v3, p0, Lkg/d;->e:I

    .line 87
    .line 88
    int-to-long v3, v3

    .line 89
    rem-long/2addr v1, v3

    .line 90
    const-wide/16 v3, 0x0

    .line 91
    .line 92
    cmp-long v5, v1, v3

    .line 93
    .line 94
    if-lez v5, :cond_6

    .line 95
    .line 96
    iget-object v3, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 97
    .line 98
    iget v4, p0, Lkg/d;->e:I

    .line 99
    .line 100
    int-to-long v4, v4

    .line 101
    sub-long/2addr v4, v1

    .line 102
    sget v1, Lrg/d;->a:I

    .line 103
    .line 104
    new-instance v1, Lah/a;

    .line 105
    .line 106
    invoke-direct {v1, v0}, Lah/a;-><init>(I)V

    .line 107
    .line 108
    .line 109
    invoke-static {v3, v4, v5, v1}, Lsg/b;->a(Ljava/io/InputStream;JLjava/util/function/Supplier;)J

    .line 110
    .line 111
    .line 112
    move-result-wide v0

    .line 113
    invoke-virtual {p0, v0, v1}, Lkg/d;->J(J)V

    .line 114
    .line 115
    .line 116
    :cond_6
    const/4 v1, 0x0

    .line 117
    goto :goto_4

    .line 118
    :catchall_0
    move-exception v0

    .line 119
    if-eqz v1, :cond_7

    .line 120
    .line 121
    iget-object v1, p0, Lkg/d;->d:[B

    .line 122
    .line 123
    array-length v1, v1

    .line 124
    int-to-long v1, v1

    .line 125
    iget-wide v3, p0, Lkg/d;->b:J

    .line 126
    .line 127
    sub-long/2addr v3, v1

    .line 128
    iput-wide v3, p0, Lkg/d;->b:J

    .line 129
    .line 130
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    .line 133
    .line 134
    .line 135
    :cond_7
    throw v0

    .line 136
    :cond_8
    :goto_4
    return-object v1
.end method

.method public final N()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/d;->k:Lkg/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lkg/c;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public final O()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Lkg/d;->m:Ljava/util/HashMap;

    .line 9
    .line 10
    iget-wide v3, v0, Lkg/d;->g:J

    .line 11
    .line 12
    invoke-static {v0, v1, v2, v3, v4}, Lkg/g;->e(Lkg/d;Ljava/util/ArrayList;Ljava/util/HashMap;J)Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string v3, "GNU.sparse.map"

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const-wide/16 v5, 0x0

    .line 23
    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v8, 0x1

    .line 26
    if-eqz v4, :cond_4

    .line 27
    .line 28
    new-instance v1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Ljava/lang/String;

    .line 35
    .line 36
    new-instance v4, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v9, ","

    .line 42
    .line 43
    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    array-length v9, v3

    .line 48
    rem-int/lit8 v9, v9, 0x2

    .line 49
    .line 50
    if-eq v9, v8, :cond_3

    .line 51
    .line 52
    const/4 v9, 0x0

    .line 53
    :goto_0
    array-length v10, v3

    .line 54
    if-ge v9, v10, :cond_2

    .line 55
    .line 56
    aget-object v10, v3, v9

    .line 57
    .line 58
    invoke-static {v10}, Lrg/b;->e(Ljava/lang/String;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v10

    .line 62
    cmp-long v12, v10, v5

    .line 63
    .line 64
    if-ltz v12, :cond_1

    .line 65
    .line 66
    add-int/lit8 v12, v9, 0x1

    .line 67
    .line 68
    aget-object v12, v3, v12

    .line 69
    .line 70
    invoke-static {v12}, Lrg/b;->e(Ljava/lang/String;)J

    .line 71
    .line 72
    .line 73
    move-result-wide v12

    .line 74
    cmp-long v14, v12, v5

    .line 75
    .line 76
    if-ltz v14, :cond_0

    .line 77
    .line 78
    new-instance v14, Lkg/f;

    .line 79
    .line 80
    invoke-direct {v14, v10, v11, v12, v13}, Lkg/f;-><init>(JJ)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    add-int/lit8 v9, v9, 0x2

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    new-instance v1, Ljava/io/IOException;

    .line 90
    .line 91
    const-string v2, "Corrupted TAR archive. Sparse struct numbytes contains negative value"

    .line 92
    .line 93
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw v1

    .line 97
    :cond_1
    new-instance v1, Ljava/io/IOException;

    .line 98
    .line 99
    const-string v2, "Corrupted TAR archive. Sparse struct offset contains negative value"

    .line 100
    .line 101
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v1

    .line 105
    :cond_2
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    new-instance v1, Ljava/io/IOException;

    .line 114
    .line 115
    const-string v2, "Corrupted TAR archive. Bad format in GNU.sparse.map PAX Header"

    .line 116
    .line 117
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v1

    .line 121
    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lkg/d;->L()Lkg/c;

    .line 122
    .line 123
    .line 124
    iget-object v3, v0, Lkg/d;->k:Lkg/c;

    .line 125
    .line 126
    if-eqz v3, :cond_a

    .line 127
    .line 128
    invoke-virtual {v0, v2, v1}, Lkg/d;->r(Ljava/util/HashMap;Ljava/util/ArrayList;)V

    .line 129
    .line 130
    .line 131
    iget-object v1, v0, Lkg/d;->k:Lkg/c;

    .line 132
    .line 133
    iget-boolean v1, v1, Lkg/c;->i:Z

    .line 134
    .line 135
    if-eqz v1, :cond_9

    .line 136
    .line 137
    iget-object v1, v0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 138
    .line 139
    iget-object v2, v0, Lkg/d;->d:[B

    .line 140
    .line 141
    array-length v2, v2

    .line 142
    new-instance v3, Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-static {v1}, Lkg/g;->f(Ljava/io/InputStream;)[J

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    aget-wide v9, v4, v7

    .line 152
    .line 153
    cmp-long v11, v9, v5

    .line 154
    .line 155
    if-ltz v11, :cond_8

    .line 156
    .line 157
    aget-wide v11, v4, v8

    .line 158
    .line 159
    :goto_2
    const-wide/16 v13, 0x1

    .line 160
    .line 161
    sub-long v13, v9, v13

    .line 162
    .line 163
    cmp-long v4, v9, v5

    .line 164
    .line 165
    if-lez v4, :cond_7

    .line 166
    .line 167
    invoke-static {v1}, Lkg/g;->f(Ljava/io/InputStream;)[J

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    aget-wide v9, v4, v7

    .line 172
    .line 173
    cmp-long v15, v9, v5

    .line 174
    .line 175
    if-ltz v15, :cond_6

    .line 176
    .line 177
    aget-wide v15, v4, v8

    .line 178
    .line 179
    add-long/2addr v11, v15

    .line 180
    invoke-static {v1}, Lkg/g;->f(Ljava/io/InputStream;)[J

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    move-wide/from16 v16, v9

    .line 185
    .line 186
    aget-wide v8, v4, v7

    .line 187
    .line 188
    cmp-long v10, v8, v5

    .line 189
    .line 190
    if-ltz v10, :cond_5

    .line 191
    .line 192
    const/4 v10, 0x1

    .line 193
    aget-wide v18, v4, v10

    .line 194
    .line 195
    add-long v11, v11, v18

    .line 196
    .line 197
    new-instance v4, Lkg/f;

    .line 198
    .line 199
    move-wide/from16 v5, v16

    .line 200
    .line 201
    invoke-direct {v4, v5, v6, v8, v9}, Lkg/f;-><init>(JJ)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-wide v9, v13

    .line 208
    const-wide/16 v5, 0x0

    .line 209
    .line 210
    const/4 v8, 0x1

    .line 211
    goto :goto_2

    .line 212
    :cond_5
    new-instance v1, Ljava/io/IOException;

    .line 213
    .line 214
    const-string v2, "Corrupted TAR archive. Sparse header block numbytes contains negative value"

    .line 215
    .line 216
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw v1

    .line 220
    :cond_6
    new-instance v1, Ljava/io/IOException;

    .line 221
    .line 222
    const-string v2, "Corrupted TAR archive. Sparse header block offset contains negative value"

    .line 223
    .line 224
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw v1

    .line 228
    :cond_7
    int-to-long v4, v2

    .line 229
    rem-long/2addr v11, v4

    .line 230
    sub-long/2addr v4, v11

    .line 231
    sget v2, Lrg/d;->a:I

    .line 232
    .line 233
    new-instance v2, Lah/a;

    .line 234
    .line 235
    const/4 v6, 0x1

    .line 236
    invoke-direct {v2, v6}, Lah/a;-><init>(I)V

    .line 237
    .line 238
    .line 239
    invoke-static {v1, v4, v5, v2}, Lsg/b;->a(Ljava/io/InputStream;JLjava/util/function/Supplier;)J

    .line 240
    .line 241
    .line 242
    iget-object v1, v0, Lkg/d;->k:Lkg/c;

    .line 243
    .line 244
    iput-object v3, v1, Lkg/c;->e:Ljava/util/ArrayList;

    .line 245
    .line 246
    goto :goto_3

    .line 247
    :cond_8
    new-instance v1, Ljava/io/IOException;

    .line 248
    .line 249
    const-string v2, "Corrupted TAR archive. Negative value in sparse headers block"

    .line 250
    .line 251
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    throw v1

    .line 255
    :cond_9
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lkg/d;->A()V

    .line 256
    .line 257
    .line 258
    return-void

    .line 259
    :cond_a
    new-instance v1, Ljava/io/IOException;

    .line 260
    .line 261
    const-string v2, "premature end of tar archive. Didn\'t find any entry after PAX header."

    .line 262
    .line 263
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    goto :goto_5

    .line 267
    :goto_4
    throw v1

    .line 268
    :goto_5
    goto :goto_4
.end method

.method public final P()[B
    .locals 6

    .line 1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 2
    .line 3
    iget-object v1, p0, Lkg/d;->d:[B

    .line 4
    .line 5
    sget v2, Lrg/d;->a:I

    .line 6
    .line 7
    array-length v2, v1

    .line 8
    if-ltz v2, :cond_5

    .line 9
    .line 10
    array-length v3, v1

    .line 11
    if-gt v2, v3, :cond_5

    .line 12
    .line 13
    if-ltz v2, :cond_5

    .line 14
    .line 15
    sget-object v3, Lsg/b;->a:[B

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    goto :goto_2

    .line 21
    :cond_0
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    if-ltz v2, :cond_4

    .line 25
    .line 26
    move v3, v2

    .line 27
    :goto_0
    if-lez v3, :cond_2

    .line 28
    .line 29
    sub-int v4, v2, v3

    .line 30
    .line 31
    invoke-virtual {v0, v1, v4, v3}, Ljava/io/InputStream;->read([BII)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    const/4 v5, -0x1

    .line 36
    if-ne v5, v4, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    sub-int/2addr v3, v4

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    :goto_1
    sub-int v0, v2, v3

    .line 42
    .line 43
    :goto_2
    int-to-long v1, v0

    .line 44
    invoke-virtual {p0, v1, v2}, Lkg/d;->J(J)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lkg/d;->d:[B

    .line 48
    .line 49
    array-length v2, v1

    .line 50
    if-eq v0, v2, :cond_3

    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    return-object v0

    .line 54
    :cond_3
    return-object v1

    .line 55
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 56
    .line 57
    const-string v1, "Length must not be negative: "

    .line 58
    .line 59
    invoke-static {v2, v1}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :cond_5
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 70
    .line 71
    .line 72
    goto :goto_4

    .line 73
    :goto_3
    throw v0

    .line 74
    :goto_4
    goto :goto_3
.end method

.method public final Q(II[B)I
    .locals 4

    .line 1
    iget-object v0, p0, Lkg/d;->i:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget v0, p0, Lkg/d;->j:I

    .line 13
    .line 14
    iget-object v1, p0, Lkg/d;->i:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, -0x1

    .line 21
    if-lt v0, v1, :cond_1

    .line 22
    .line 23
    return v2

    .line 24
    :cond_1
    iget-object v0, p0, Lkg/d;->i:Ljava/util/ArrayList;

    .line 25
    .line 26
    iget v1, p0, Lkg/d;->j:I

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/io/InputStream;

    .line 33
    .line 34
    invoke-virtual {v0, p3, p1, p2}, Ljava/io/InputStream;->read([BII)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iget v1, p0, Lkg/d;->j:I

    .line 39
    .line 40
    iget-object v3, p0, Lkg/d;->i:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    add-int/lit8 v3, v3, -0x1

    .line 47
    .line 48
    if-ne v1, v3, :cond_2

    .line 49
    .line 50
    return v0

    .line 51
    :cond_2
    if-ne v0, v2, :cond_3

    .line 52
    .line 53
    iget v0, p0, Lkg/d;->j:I

    .line 54
    .line 55
    add-int/lit8 v0, v0, 0x1

    .line 56
    .line 57
    iput v0, p0, Lkg/d;->j:I

    .line 58
    .line 59
    invoke-virtual {p0, p1, p2, p3}, Lkg/d;->Q(II[B)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    return p1

    .line 64
    :cond_3
    if-ge v0, p2, :cond_5

    .line 65
    .line 66
    iget v1, p0, Lkg/d;->j:I

    .line 67
    .line 68
    add-int/lit8 v1, v1, 0x1

    .line 69
    .line 70
    iput v1, p0, Lkg/d;->j:I

    .line 71
    .line 72
    add-int/2addr p1, v0

    .line 73
    sub-int/2addr p2, v0

    .line 74
    invoke-virtual {p0, p1, p2, p3}, Lkg/d;->Q(II[B)I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-ne p1, v2, :cond_4

    .line 79
    .line 80
    return v0

    .line 81
    :cond_4
    add-int/2addr v0, p1

    .line 82
    :cond_5
    return v0

    .line 83
    :cond_6
    :goto_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 84
    .line 85
    invoke-virtual {v0, p3, p1, p2}, Ljava/io/InputStream;->read([BII)I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    return p1
.end method

.method public final available()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lkg/d;->N()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    iget-object v0, p0, Lkg/d;->k:Lkg/c;

    .line 10
    .line 11
    invoke-virtual {v0}, Lkg/c;->d()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    iget-wide v0, v0, Lkg/c;->c:J

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-wide v0, v0, Lkg/c;->g:J

    .line 21
    .line 22
    :goto_0
    iget-wide v2, p0, Lkg/d;->h:J

    .line 23
    .line 24
    sub-long/2addr v0, v2

    .line 25
    const-wide/32 v2, 0x7fffffff

    .line 26
    .line 27
    .line 28
    cmp-long v4, v0, v2

    .line 29
    .line 30
    if-lez v4, :cond_2

    .line 31
    .line 32
    const v0, 0x7fffffff

    .line 33
    .line 34
    .line 35
    return v0

    .line 36
    :cond_2
    long-to-int v1, v0

    .line 37
    return v1
.end method

.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lkg/d;->i:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/io/InputStream;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final declared-synchronized mark(I)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    monitor-exit p0

    .line 3
    return-void
.end method

.method public final markSupported()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final r(Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 10

    .line 1
    const-string v0, "GNU.sparse.size"

    .line 2
    .line 3
    const-string v1, "GNU.sparse.realsize"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Lkg/d;->k:Lkg/c;

    .line 7
    .line 8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    :cond_0
    :goto_0
    :pswitch_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-eqz v5, :cond_18

    .line 24
    .line 25
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Ljava/util/Map$Entry;

    .line 30
    .line 31
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    check-cast v6, Ljava/lang/String;

    .line 36
    .line 37
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    check-cast v5, Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    const-string v7, "GNU.sparse.name"

    .line 47
    .line 48
    const/4 v8, -0x1

    .line 49
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    sparse-switch v9, :sswitch_data_0

    .line 54
    .line 55
    .line 56
    goto/16 :goto_1

    .line 57
    .line 58
    :sswitch_0
    const-string v9, "linkpath"

    .line 59
    .line 60
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v9

    .line 64
    if-nez v9, :cond_1

    .line 65
    .line 66
    goto/16 :goto_1

    .line 67
    .line 68
    :cond_1
    const/16 v8, 0xf

    .line 69
    .line 70
    goto/16 :goto_1

    .line 71
    .line 72
    :sswitch_1
    const-string v9, "SCHILY.filetype"

    .line 73
    .line 74
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    if-nez v9, :cond_2

    .line 79
    .line 80
    goto/16 :goto_1

    .line 81
    .line 82
    :cond_2
    const/16 v8, 0xe

    .line 83
    .line 84
    goto/16 :goto_1

    .line 85
    .line 86
    :sswitch_2
    const-string v9, "LIBARCHIVE.creationtime"

    .line 87
    .line 88
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    if-nez v9, :cond_3

    .line 93
    .line 94
    goto/16 :goto_1

    .line 95
    .line 96
    :cond_3
    const/16 v8, 0xd

    .line 97
    .line 98
    goto/16 :goto_1

    .line 99
    .line 100
    :sswitch_3
    const-string v9, "uname"

    .line 101
    .line 102
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v9

    .line 106
    if-nez v9, :cond_4

    .line 107
    .line 108
    goto/16 :goto_1

    .line 109
    .line 110
    :cond_4
    const/16 v8, 0xc

    .line 111
    .line 112
    goto/16 :goto_1

    .line 113
    .line 114
    :sswitch_4
    const-string v9, "mtime"

    .line 115
    .line 116
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v9

    .line 120
    if-nez v9, :cond_5

    .line 121
    .line 122
    goto/16 :goto_1

    .line 123
    .line 124
    :cond_5
    const/16 v8, 0xb

    .line 125
    .line 126
    goto/16 :goto_1

    .line 127
    .line 128
    :sswitch_5
    const-string v9, "gname"

    .line 129
    .line 130
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v9

    .line 134
    if-nez v9, :cond_6

    .line 135
    .line 136
    goto/16 :goto_1

    .line 137
    .line 138
    :cond_6
    const/16 v8, 0xa

    .line 139
    .line 140
    goto/16 :goto_1

    .line 141
    .line 142
    :sswitch_6
    const-string v9, "ctime"

    .line 143
    .line 144
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v9

    .line 148
    if-nez v9, :cond_7

    .line 149
    .line 150
    goto/16 :goto_1

    .line 151
    .line 152
    :cond_7
    const/16 v8, 0x9

    .line 153
    .line 154
    goto/16 :goto_1

    .line 155
    .line 156
    :sswitch_7
    const-string v9, "atime"

    .line 157
    .line 158
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v9

    .line 162
    if-nez v9, :cond_8

    .line 163
    .line 164
    goto/16 :goto_1

    .line 165
    .line 166
    :cond_8
    const/16 v8, 0x8

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :sswitch_8
    const-string v9, "size"

    .line 170
    .line 171
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v9

    .line 175
    if-nez v9, :cond_9

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_9
    const/4 v8, 0x7

    .line 179
    goto :goto_1

    .line 180
    :sswitch_9
    const-string v9, "path"

    .line 181
    .line 182
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v9

    .line 186
    if-nez v9, :cond_a

    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_a
    const/4 v8, 0x6

    .line 190
    goto :goto_1

    .line 191
    :sswitch_a
    const-string v9, "uid"

    .line 192
    .line 193
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v9

    .line 197
    if-nez v9, :cond_b

    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_b
    const/4 v8, 0x5

    .line 201
    goto :goto_1

    .line 202
    :sswitch_b
    const-string v9, "gid"

    .line 203
    .line 204
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v9

    .line 208
    if-nez v9, :cond_c

    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_c
    const/4 v8, 0x4

    .line 212
    goto :goto_1

    .line 213
    :sswitch_c
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v9

    .line 217
    if-nez v9, :cond_d

    .line 218
    .line 219
    goto :goto_1

    .line 220
    :cond_d
    const/4 v8, 0x3

    .line 221
    goto :goto_1

    .line 222
    :sswitch_d
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v9

    .line 226
    if-nez v9, :cond_e

    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_e
    const/4 v8, 0x2

    .line 230
    goto :goto_1

    .line 231
    :sswitch_e
    const-string v9, "SCHILY.devminor"

    .line 232
    .line 233
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v9

    .line 237
    if-nez v9, :cond_f

    .line 238
    .line 239
    goto :goto_1

    .line 240
    :cond_f
    const/4 v8, 0x1

    .line 241
    goto :goto_1

    .line 242
    :sswitch_f
    const-string v9, "SCHILY.devmajor"

    .line 243
    .line 244
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v9

    .line 248
    if-nez v9, :cond_10

    .line 249
    .line 250
    goto :goto_1

    .line 251
    :cond_10
    const/4 v8, 0x0

    .line 252
    :goto_1
    packed-switch v8, :pswitch_data_0

    .line 253
    .line 254
    .line 255
    iget-object v7, v3, Lkg/c;->k:Ljava/util/HashMap;

    .line 256
    .line 257
    invoke-virtual {v7, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    goto/16 :goto_0

    .line 261
    .line 262
    :pswitch_1
    const-string v6, "sparse"

    .line 263
    .line 264
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v5

    .line 268
    if-eqz v5, :cond_0

    .line 269
    .line 270
    iput-boolean v2, v3, Lkg/c;->j:Z

    .line 271
    .line 272
    const-string v5, "SCHILY.realsize"

    .line 273
    .line 274
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v6

    .line 278
    if-eqz v6, :cond_0

    .line 279
    .line 280
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v5

    .line 284
    check-cast v5, Ljava/lang/String;

    .line 285
    .line 286
    invoke-static {v5}, Lrg/b;->e(Ljava/lang/String;)J

    .line 287
    .line 288
    .line 289
    move-result-wide v5

    .line 290
    iput-wide v5, v3, Lkg/c;->g:J

    .line 291
    .line 292
    goto/16 :goto_0

    .line 293
    .line 294
    :pswitch_2
    invoke-static {v5}, Lkg/c;->e(Ljava/lang/String;)Lj$/time/Instant;

    .line 295
    .line 296
    .line 297
    move-result-object v5

    .line 298
    invoke-static {v5}, Lkg/b;->a(Lj$/time/Instant;)V

    .line 299
    .line 300
    .line 301
    goto/16 :goto_0

    .line 302
    .line 303
    :pswitch_3
    invoke-static {v5}, Lkg/c;->e(Ljava/lang/String;)Lj$/time/Instant;

    .line 304
    .line 305
    .line 306
    move-result-object v5

    .line 307
    invoke-static {v5}, Lkg/a;->a(Lj$/time/Instant;)Ljava/nio/file/attribute/FileTime;

    .line 308
    .line 309
    .line 310
    move-result-object v5

    .line 311
    const-string v6, "time"

    .line 312
    .line 313
    invoke-static {v5, v6}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    invoke-static {v5}, Leg/a;->q(Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    goto/16 :goto_0

    .line 320
    .line 321
    :pswitch_4
    invoke-static {v5}, Lkg/c;->e(Ljava/lang/String;)Lj$/time/Instant;

    .line 322
    .line 323
    .line 324
    move-result-object v5

    .line 325
    invoke-static {v5}, Lkg/b;->a(Lj$/time/Instant;)V

    .line 326
    .line 327
    .line 328
    goto/16 :goto_0

    .line 329
    .line 330
    :pswitch_5
    invoke-static {v5}, Lkg/c;->e(Ljava/lang/String;)Lj$/time/Instant;

    .line 331
    .line 332
    .line 333
    move-result-object v5

    .line 334
    invoke-static {v5}, Lkg/b;->a(Lj$/time/Instant;)V

    .line 335
    .line 336
    .line 337
    goto/16 :goto_0

    .line 338
    .line 339
    :pswitch_6
    invoke-static {v5}, Lrg/b;->e(Ljava/lang/String;)J

    .line 340
    .line 341
    .line 342
    move-result-wide v5

    .line 343
    const-wide/16 v7, 0x0

    .line 344
    .line 345
    cmp-long v9, v5, v7

    .line 346
    .line 347
    if-ltz v9, :cond_12

    .line 348
    .line 349
    cmp-long v9, v5, v7

    .line 350
    .line 351
    if-ltz v9, :cond_11

    .line 352
    .line 353
    iput-wide v5, v3, Lkg/c;->c:J

    .line 354
    .line 355
    goto/16 :goto_0

    .line 356
    .line 357
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 358
    .line 359
    const-string p2, "Size is out of range: "

    .line 360
    .line 361
    invoke-static {v5, v6, p2}, Lta/q;->j(JLjava/lang/String;)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object p2

    .line 365
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    throw p1

    .line 369
    :cond_12
    new-instance p1, Ljava/io/IOException;

    .line 370
    .line 371
    const-string p2, "Corrupted TAR archive. Entry size is negative"

    .line 372
    .line 373
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    throw p1

    .line 377
    :pswitch_7
    invoke-virtual {v3, v5}, Lkg/c;->g(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    goto/16 :goto_0

    .line 381
    .line 382
    :pswitch_8
    invoke-static {v5}, Lrg/b;->e(Ljava/lang/String;)J

    .line 383
    .line 384
    .line 385
    goto/16 :goto_0

    .line 386
    .line 387
    :pswitch_9
    invoke-static {v5}, Lrg/b;->e(Ljava/lang/String;)J

    .line 388
    .line 389
    .line 390
    goto/16 :goto_0

    .line 391
    .line 392
    :pswitch_a
    iput-boolean v2, v3, Lkg/c;->h:Z

    .line 393
    .line 394
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v5

    .line 398
    check-cast v5, Ljava/lang/String;

    .line 399
    .line 400
    invoke-static {v5}, Lrg/b;->d(Ljava/lang/String;)I

    .line 401
    .line 402
    .line 403
    move-result v5

    .line 404
    int-to-long v5, v5

    .line 405
    iput-wide v5, v3, Lkg/c;->g:J

    .line 406
    .line 407
    invoke-virtual {p1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 408
    .line 409
    .line 410
    move-result v5

    .line 411
    if-eqz v5, :cond_0

    .line 412
    .line 413
    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v5

    .line 417
    check-cast v5, Ljava/lang/String;

    .line 418
    .line 419
    iput-object v5, v3, Lkg/c;->a:Ljava/lang/String;

    .line 420
    .line 421
    goto/16 :goto_0

    .line 422
    .line 423
    :pswitch_b
    iput-boolean v2, v3, Lkg/c;->h:Z

    .line 424
    .line 425
    iput-boolean v2, v3, Lkg/c;->i:Z

    .line 426
    .line 427
    invoke-virtual {p1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move-result v5

    .line 431
    if-eqz v5, :cond_13

    .line 432
    .line 433
    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v5

    .line 437
    check-cast v5, Ljava/lang/String;

    .line 438
    .line 439
    iput-object v5, v3, Lkg/c;->a:Ljava/lang/String;

    .line 440
    .line 441
    :cond_13
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 442
    .line 443
    .line 444
    move-result v5

    .line 445
    if-eqz v5, :cond_0

    .line 446
    .line 447
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v5

    .line 451
    check-cast v5, Ljava/lang/String;

    .line 452
    .line 453
    invoke-static {v5}, Lrg/b;->d(Ljava/lang/String;)I

    .line 454
    .line 455
    .line 456
    move-result v5

    .line 457
    int-to-long v5, v5

    .line 458
    iput-wide v5, v3, Lkg/c;->g:J

    .line 459
    .line 460
    goto/16 :goto_0

    .line 461
    .line 462
    :pswitch_c
    invoke-static {v5}, Lrg/b;->d(Ljava/lang/String;)I

    .line 463
    .line 464
    .line 465
    move-result v5

    .line 466
    if-ltz v5, :cond_15

    .line 467
    .line 468
    if-ltz v5, :cond_14

    .line 469
    .line 470
    goto/16 :goto_0

    .line 471
    .line 472
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 473
    .line 474
    const-string p2, "Minor device number is out of range: "

    .line 475
    .line 476
    invoke-static {v5, p2}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object p2

    .line 480
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    throw p1

    .line 484
    :cond_15
    new-instance p1, Ljava/io/IOException;

    .line 485
    .line 486
    const-string p2, "Corrupted TAR archive. Dev-Minor is negative"

    .line 487
    .line 488
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    throw p1

    .line 492
    :pswitch_d
    invoke-static {v5}, Lrg/b;->d(Ljava/lang/String;)I

    .line 493
    .line 494
    .line 495
    move-result v5

    .line 496
    if-ltz v5, :cond_17

    .line 497
    .line 498
    if-ltz v5, :cond_16

    .line 499
    .line 500
    goto/16 :goto_0

    .line 501
    .line 502
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 503
    .line 504
    const-string p2, "Major device number is out of range: "

    .line 505
    .line 506
    invoke-static {v5, p2}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object p2

    .line 510
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    throw p1

    .line 514
    :cond_17
    new-instance p1, Ljava/io/IOException;

    .line 515
    .line 516
    const-string p2, "Corrupted TAR archive. Dev-Major is negative"

    .line 517
    .line 518
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    throw p1

    .line 522
    :cond_18
    iget-object p1, p0, Lkg/d;->k:Lkg/c;

    .line 523
    .line 524
    iput-object p2, p1, Lkg/c;->e:Ljava/util/ArrayList;

    .line 525
    .line 526
    return-void

    .line 527
    :sswitch_data_0
    .sparse-switch
        -0x7240fdec -> :sswitch_f
        -0x723d4bf0 -> :sswitch_e
        -0x108a42f3 -> :sswitch_d
        -0x98f3691 -> :sswitch_c
        0x18fc2 -> :sswitch_b
        0x1c450 -> :sswitch_a
        0x346425 -> :sswitch_9
        0x35e001 -> :sswitch_8
        0x58d3aae -> :sswitch_7
        0x5a969b0 -> :sswitch_6
        0x5deef72 -> :sswitch_5
        0x63654ba -> :sswitch_4
        0x6a43880 -> :sswitch_3
        0x122211dd -> :sswitch_2
        0x1fa1f206 -> :sswitch_1
        0x473a871f -> :sswitch_0
    .end sparse-switch

    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final read()I
    .locals 4

    const/4 v0, 0x1

    .line 1
    iget-object v1, p0, Lkg/d;->a:[B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lkg/d;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    aget-byte v0, v1, v2

    and-int/lit16 v3, v0, 0xff

    :goto_0
    return v3
.end method

.method public final read([BII)I
    .locals 6

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    iget-boolean v0, p0, Lkg/d;->f:Z

    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 4
    invoke-virtual {p0}, Lkg/d;->N()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    .line 5
    :cond_1
    iget-object v0, p0, Lkg/d;->k:Lkg/c;

    if-eqz v0, :cond_7

    .line 6
    iget-wide v2, p0, Lkg/d;->h:J

    .line 7
    invoke-virtual {v0}, Lkg/c;->d()Z

    move-result v4

    if-nez v4, :cond_2

    .line 8
    iget-wide v4, v0, Lkg/c;->c:J

    goto :goto_0

    .line 9
    :cond_2
    iget-wide v4, v0, Lkg/c;->g:J

    :goto_0
    cmp-long v0, v2, v4

    if-ltz v0, :cond_3

    return v1

    .line 10
    :cond_3
    invoke-virtual {p0}, Lkg/d;->available()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 11
    iget-object v0, p0, Lkg/d;->k:Lkg/c;

    invoke-virtual {v0}, Lkg/c;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {p0, p2, p3, p1}, Lkg/d;->Q(II[B)I

    move-result p1

    goto :goto_1

    .line 13
    :cond_4
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    :goto_1
    if-ne p1, v1, :cond_6

    if-gtz p3, :cond_5

    const/4 p2, 0x1

    .line 14
    iput-boolean p2, p0, Lkg/d;->f:Z

    goto :goto_2

    .line 15
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Truncated TAR archive"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    int-to-long p2, p1

    .line 16
    invoke-virtual {p0, p2, p3}, Lkg/d;->J(J)V

    .line 17
    iget-wide v0, p0, Lkg/d;->h:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lkg/d;->h:J

    :goto_2
    return p1

    .line 18
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No current tar entry"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_3
    return v1
.end method

.method public final declared-synchronized reset()V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    monitor-exit p0

    .line 3
    return-void
.end method

.method public final skip(J)J
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    cmp-long v3, p1, v1

    .line 5
    .line 6
    if-lez v3, :cond_8

    .line 7
    .line 8
    invoke-virtual {p0}, Lkg/d;->N()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    goto/16 :goto_4

    .line 15
    .line 16
    :cond_0
    iget-object v3, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    int-to-long v3, v3

    .line 23
    iget-object v5, p0, Lkg/d;->k:Lkg/c;

    .line 24
    .line 25
    invoke-virtual {v5}, Lkg/c;->d()Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-nez v6, :cond_1

    .line 30
    .line 31
    iget-wide v5, v5, Lkg/c;->c:J

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-wide v5, v5, Lkg/c;->g:J

    .line 35
    .line 36
    :goto_0
    iget-wide v7, p0, Lkg/d;->h:J

    .line 37
    .line 38
    sub-long/2addr v5, v7

    .line 39
    invoke-static {p1, p2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 40
    .line 41
    .line 42
    move-result-wide p1

    .line 43
    iget-object v5, p0, Lkg/d;->k:Lkg/c;

    .line 44
    .line 45
    invoke-virtual {v5}, Lkg/c;->d()Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-nez v5, :cond_4

    .line 50
    .line 51
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 52
    .line 53
    sget v2, Lrg/d;->a:I

    .line 54
    .line 55
    new-instance v2, Lah/a;

    .line 56
    .line 57
    invoke-direct {v2, v0}, Lah/a;-><init>(I)V

    .line 58
    .line 59
    .line 60
    invoke-static {v1, p1, p2, v2}, Lsg/b;->a(Ljava/io/InputStream;JLjava/util/function/Supplier;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v0

    .line 64
    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 65
    .line 66
    instance-of v2, v2, Ljava/io/FileInputStream;

    .line 67
    .line 68
    if-eqz v2, :cond_2

    .line 69
    .line 70
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 71
    .line 72
    .line 73
    move-result-wide v0

    .line 74
    :cond_2
    cmp-long v2, v0, p1

    .line 75
    .line 76
    if-nez v2, :cond_3

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 80
    .line 81
    const-string p2, "Truncated TAR archive"

    .line 82
    .line 83
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p1

    .line 87
    :cond_4
    iget-object v3, p0, Lkg/d;->i:Ljava/util/ArrayList;

    .line 88
    .line 89
    if-eqz v3, :cond_7

    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_5

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_5
    :goto_1
    cmp-long v3, v1, p1

    .line 99
    .line 100
    if-gez v3, :cond_6

    .line 101
    .line 102
    iget v3, p0, Lkg/d;->j:I

    .line 103
    .line 104
    iget-object v4, p0, Lkg/d;->i:Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-ge v3, v4, :cond_6

    .line 111
    .line 112
    iget-object v3, p0, Lkg/d;->i:Ljava/util/ArrayList;

    .line 113
    .line 114
    iget v4, p0, Lkg/d;->j:I

    .line 115
    .line 116
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    check-cast v3, Ljava/io/InputStream;

    .line 121
    .line 122
    sub-long v4, p1, v1

    .line 123
    .line 124
    invoke-virtual {v3, v4, v5}, Ljava/io/InputStream;->skip(J)J

    .line 125
    .line 126
    .line 127
    move-result-wide v3

    .line 128
    add-long/2addr v1, v3

    .line 129
    cmp-long v3, v1, p1

    .line 130
    .line 131
    if-gez v3, :cond_5

    .line 132
    .line 133
    iget v3, p0, Lkg/d;->j:I

    .line 134
    .line 135
    add-int/2addr v3, v0

    .line 136
    iput v3, p0, Lkg/d;->j:I

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_6
    move-wide v0, v1

    .line 140
    goto :goto_3

    .line 141
    :cond_7
    :goto_2
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 142
    .line 143
    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    .line 144
    .line 145
    .line 146
    move-result-wide p1

    .line 147
    move-wide v0, p1

    .line 148
    :goto_3
    invoke-virtual {p0, v0, v1}, Lkg/d;->J(J)V

    .line 149
    .line 150
    .line 151
    iget-wide p1, p0, Lkg/d;->h:J

    .line 152
    .line 153
    add-long/2addr p1, v0

    .line 154
    iput-wide p1, p0, Lkg/d;->h:J

    .line 155
    .line 156
    return-wide v0

    .line 157
    :cond_8
    :goto_4
    return-wide v1
.end method
