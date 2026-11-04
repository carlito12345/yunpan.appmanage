.class public final Landroidx/media3/exoplayer/video/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/media3/exoplayer/video/m;

.field public final b:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

.field public final c:J

.field public d:Z

.field public e:I

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:Z

.field public k:F

.field public l:Lu1/z;

.field public m:Z

.field public n:Z

.field public final o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/video/m;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/media3/exoplayer/video/z;->a:Landroidx/media3/exoplayer/video/m;

    .line 5
    .line 6
    iput-wide p3, p0, Landroidx/media3/exoplayer/video/z;->c:J

    .line 7
    .line 8
    new-instance p2, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 9
    .line 10
    invoke-direct {p2, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Landroidx/media3/exoplayer/video/z;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput p1, p0, Landroidx/media3/exoplayer/video/z;->e:I

    .line 17
    .line 18
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/z;->f:J

    .line 24
    .line 25
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/z;->h:J

    .line 26
    .line 27
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/z;->i:J

    .line 28
    .line 29
    const/high16 p1, 0x3f800000    # 1.0f

    .line 30
    .line 31
    iput p1, p0, Landroidx/media3/exoplayer/video/z;->k:F

    .line 32
    .line 33
    sget-object p1, Lu1/z;->a:Lu1/z;

    .line 34
    .line 35
    iput-object p1, p0, Landroidx/media3/exoplayer/video/z;->l:Lu1/z;

    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/z;->o:Z

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final a(JJJJZZLandroidx/media3/exoplayer/video/y;)I
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v4, p3

    .line 6
    .line 7
    move-object/from16 v8, p11

    .line 8
    .line 9
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    iput-wide v6, v8, Landroidx/media3/exoplayer/video/y;->b:J

    .line 15
    .line 16
    iput-wide v6, v8, Landroidx/media3/exoplayer/video/y;->c:J

    .line 17
    .line 18
    iget-boolean v3, v0, Landroidx/media3/exoplayer/video/z;->d:Z

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    iget-wide v9, v0, Landroidx/media3/exoplayer/video/z;->f:J

    .line 23
    .line 24
    cmp-long v3, v9, v6

    .line 25
    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    iput-wide v4, v0, Landroidx/media3/exoplayer/video/z;->f:J

    .line 29
    .line 30
    :cond_0
    iget-wide v9, v0, Landroidx/media3/exoplayer/video/z;->h:J

    .line 31
    .line 32
    iget-object v3, v0, Landroidx/media3/exoplayer/video/z;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 33
    .line 34
    cmp-long v11, v9, v1

    .line 35
    .line 36
    if-eqz v11, :cond_1

    .line 37
    .line 38
    invoke-virtual {v3, v1, v2}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->onNextFrame(J)V

    .line 39
    .line 40
    .line 41
    iput-wide v1, v0, Landroidx/media3/exoplayer/video/z;->h:J

    .line 42
    .line 43
    :cond_1
    sub-long v9, v1, v4

    .line 44
    .line 45
    long-to-double v9, v9

    .line 46
    iget v11, v0, Landroidx/media3/exoplayer/video/z;->k:F

    .line 47
    .line 48
    float-to-double v11, v11

    .line 49
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    .line 50
    .line 51
    .line 52
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    .line 53
    .line 54
    .line 55
    div-double/2addr v9, v11

    .line 56
    double-to-long v9, v9

    .line 57
    iget-boolean v11, v0, Landroidx/media3/exoplayer/video/z;->d:Z

    .line 58
    .line 59
    if-eqz v11, :cond_2

    .line 60
    .line 61
    iget-object v11, v0, Landroidx/media3/exoplayer/video/z;->l:Lu1/z;

    .line 62
    .line 63
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 67
    .line 68
    .line 69
    move-result-wide v11

    .line 70
    invoke-static {v11, v12}, Lu1/f0;->G(J)J

    .line 71
    .line 72
    .line 73
    move-result-wide v11

    .line 74
    sub-long v11, v11, p5

    .line 75
    .line 76
    sub-long/2addr v9, v11

    .line 77
    :cond_2
    iput-wide v9, v8, Landroidx/media3/exoplayer/video/y;->b:J

    .line 78
    .line 79
    const/4 v11, 0x3

    .line 80
    if-eqz p9, :cond_3

    .line 81
    .line 82
    if-nez p10, :cond_3

    .line 83
    .line 84
    return v11

    .line 85
    :cond_3
    iget-boolean v12, v0, Landroidx/media3/exoplayer/video/z;->m:Z

    .line 86
    .line 87
    iget-boolean v13, v0, Landroidx/media3/exoplayer/video/z;->o:Z

    .line 88
    .line 89
    iget-object v14, v0, Landroidx/media3/exoplayer/video/z;->a:Landroidx/media3/exoplayer/video/m;

    .line 90
    .line 91
    const/4 v15, 0x4

    .line 92
    const/16 v16, 0x5

    .line 93
    .line 94
    const/4 v11, 0x1

    .line 95
    if-nez v12, :cond_6

    .line 96
    .line 97
    if-eqz v13, :cond_6

    .line 98
    .line 99
    const/4 v7, 0x1

    .line 100
    move-object v1, v14

    .line 101
    move-wide v2, v9

    .line 102
    move-wide/from16 v4, p3

    .line 103
    .line 104
    move/from16 v6, p10

    .line 105
    .line 106
    invoke-virtual/range {v1 .. v7}, Landroidx/media3/exoplayer/video/m;->N0(JJZZ)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_4

    .line 111
    .line 112
    return v15

    .line 113
    :cond_4
    iget-boolean v1, v0, Landroidx/media3/exoplayer/video/z;->d:Z

    .line 114
    .line 115
    if-eqz v1, :cond_5

    .line 116
    .line 117
    iget-wide v1, v8, Landroidx/media3/exoplayer/video/y;->b:J

    .line 118
    .line 119
    const-wide/16 v3, 0x7530

    .line 120
    .line 121
    cmp-long v5, v1, v3

    .line 122
    .line 123
    if-gez v5, :cond_5

    .line 124
    .line 125
    const/4 v1, 0x3

    .line 126
    return v1

    .line 127
    :cond_5
    iput-boolean v11, v0, Landroidx/media3/exoplayer/video/z;->n:Z

    .line 128
    .line 129
    return v16

    .line 130
    :cond_6
    if-nez v13, :cond_7

    .line 131
    .line 132
    iput-boolean v11, v0, Landroidx/media3/exoplayer/video/z;->n:Z

    .line 133
    .line 134
    :cond_7
    iget-wide v12, v0, Landroidx/media3/exoplayer/video/z;->i:J

    .line 135
    .line 136
    const-wide/16 v17, -0x7530

    .line 137
    .line 138
    const/4 v15, 0x2

    .line 139
    const/16 v19, 0x0

    .line 140
    .line 141
    cmp-long v20, v12, v6

    .line 142
    .line 143
    if-eqz v20, :cond_8

    .line 144
    .line 145
    iget-boolean v12, v0, Landroidx/media3/exoplayer/video/z;->j:Z

    .line 146
    .line 147
    if-nez v12, :cond_8

    .line 148
    .line 149
    const/4 v9, 0x0

    .line 150
    const/4 v13, 0x3

    .line 151
    goto :goto_2

    .line 152
    :cond_8
    iget v12, v0, Landroidx/media3/exoplayer/video/z;->e:I

    .line 153
    .line 154
    if-eqz v12, :cond_d

    .line 155
    .line 156
    if-eq v12, v11, :cond_c

    .line 157
    .line 158
    if-eq v12, v15, :cond_b

    .line 159
    .line 160
    const/4 v13, 0x3

    .line 161
    if-ne v12, v13, :cond_a

    .line 162
    .line 163
    iget-object v12, v0, Landroidx/media3/exoplayer/video/z;->l:Lu1/z;

    .line 164
    .line 165
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 169
    .line 170
    .line 171
    move-result-wide v20

    .line 172
    invoke-static/range {v20 .. v21}, Lu1/f0;->G(J)J

    .line 173
    .line 174
    .line 175
    move-result-wide v20

    .line 176
    iget-wide v11, v0, Landroidx/media3/exoplayer/video/z;->g:J

    .line 177
    .line 178
    sub-long v20, v20, v11

    .line 179
    .line 180
    iget-boolean v11, v0, Landroidx/media3/exoplayer/video/z;->d:Z

    .line 181
    .line 182
    if-eqz v11, :cond_9

    .line 183
    .line 184
    iget-wide v11, v0, Landroidx/media3/exoplayer/video/z;->f:J

    .line 185
    .line 186
    cmp-long v22, v11, v6

    .line 187
    .line 188
    if-eqz v22, :cond_9

    .line 189
    .line 190
    cmp-long v22, v11, v4

    .line 191
    .line 192
    if-eqz v22, :cond_9

    .line 193
    .line 194
    cmp-long v11, v9, v17

    .line 195
    .line 196
    if-gez v11, :cond_9

    .line 197
    .line 198
    const-wide/32 v9, 0x186a0

    .line 199
    .line 200
    .line 201
    cmp-long v11, v20, v9

    .line 202
    .line 203
    if-lez v11, :cond_9

    .line 204
    .line 205
    :goto_0
    goto :goto_1

    .line 206
    :cond_9
    const/4 v9, 0x0

    .line 207
    goto :goto_2

    .line 208
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 209
    .line 210
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 211
    .line 212
    .line 213
    throw v1

    .line 214
    :cond_b
    const/4 v13, 0x3

    .line 215
    cmp-long v9, v4, p7

    .line 216
    .line 217
    if-ltz v9, :cond_9

    .line 218
    .line 219
    goto :goto_0

    .line 220
    :cond_c
    const/4 v13, 0x3

    .line 221
    :goto_1
    const/4 v9, 0x1

    .line 222
    goto :goto_2

    .line 223
    :cond_d
    const/4 v13, 0x3

    .line 224
    iget-boolean v9, v0, Landroidx/media3/exoplayer/video/z;->d:Z

    .line 225
    .line 226
    :goto_2
    if-eqz v9, :cond_e

    .line 227
    .line 228
    return v19

    .line 229
    :cond_e
    iget-boolean v9, v0, Landroidx/media3/exoplayer/video/z;->d:Z

    .line 230
    .line 231
    if-eqz v9, :cond_16

    .line 232
    .line 233
    iget-wide v9, v0, Landroidx/media3/exoplayer/video/z;->f:J

    .line 234
    .line 235
    cmp-long v11, v4, v9

    .line 236
    .line 237
    if-nez v11, :cond_f

    .line 238
    .line 239
    goto :goto_5

    .line 240
    :cond_f
    iget-object v9, v0, Landroidx/media3/exoplayer/video/z;->l:Lu1/z;

    .line 241
    .line 242
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 246
    .line 247
    .line 248
    move-result-wide v9

    .line 249
    iget-wide v11, v8, Landroidx/media3/exoplayer/video/y;->b:J

    .line 250
    .line 251
    const-wide/16 v20, 0x3e8

    .line 252
    .line 253
    mul-long v11, v11, v20

    .line 254
    .line 255
    add-long/2addr v11, v9

    .line 256
    invoke-virtual {v3, v11, v12, v1, v2}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->adjustReleaseTime(JJ)J

    .line 257
    .line 258
    .line 259
    move-result-wide v1

    .line 260
    iput-wide v1, v8, Landroidx/media3/exoplayer/video/y;->c:J

    .line 261
    .line 262
    sub-long/2addr v1, v9

    .line 263
    div-long v2, v1, v20

    .line 264
    .line 265
    iput-wide v2, v8, Landroidx/media3/exoplayer/video/y;->b:J

    .line 266
    .line 267
    iget-wide v9, v0, Landroidx/media3/exoplayer/video/z;->i:J

    .line 268
    .line 269
    cmp-long v1, v9, v6

    .line 270
    .line 271
    if-eqz v1, :cond_10

    .line 272
    .line 273
    iget-boolean v1, v0, Landroidx/media3/exoplayer/video/z;->j:Z

    .line 274
    .line 275
    if-nez v1, :cond_10

    .line 276
    .line 277
    const/4 v9, 0x1

    .line 278
    goto :goto_3

    .line 279
    :cond_10
    const/4 v9, 0x0

    .line 280
    :goto_3
    move-object v1, v14

    .line 281
    move-wide/from16 v4, p3

    .line 282
    .line 283
    move/from16 v6, p10

    .line 284
    .line 285
    move v7, v9

    .line 286
    invoke-virtual/range {v1 .. v7}, Landroidx/media3/exoplayer/video/m;->N0(JJZZ)Z

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    if-eqz v1, :cond_11

    .line 291
    .line 292
    const/4 v1, 0x4

    .line 293
    return v1

    .line 294
    :cond_11
    iget-wide v1, v8, Landroidx/media3/exoplayer/video/y;->b:J

    .line 295
    .line 296
    cmp-long v3, v1, v17

    .line 297
    .line 298
    if-gez v3, :cond_12

    .line 299
    .line 300
    if-nez p10, :cond_12

    .line 301
    .line 302
    const/16 v19, 0x1

    .line 303
    .line 304
    :cond_12
    if-eqz v19, :cond_14

    .line 305
    .line 306
    if-eqz v9, :cond_13

    .line 307
    .line 308
    const/4 v11, 0x3

    .line 309
    goto :goto_4

    .line 310
    :cond_13
    const/4 v11, 0x2

    .line 311
    :goto_4
    return v11

    .line 312
    :cond_14
    const-wide/32 v3, 0xc350

    .line 313
    .line 314
    .line 315
    cmp-long v5, v1, v3

    .line 316
    .line 317
    if-lez v5, :cond_15

    .line 318
    .line 319
    return v16

    .line 320
    :cond_15
    const/4 v1, 0x1

    .line 321
    return v1

    .line 322
    :cond_16
    :goto_5
    return v16
.end method

.method public final b(Z)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget p1, p0, Landroidx/media3/exoplayer/video/z;->e:I

    .line 10
    .line 11
    const/4 v3, 0x3

    .line 12
    if-eq p1, v3, :cond_0

    .line 13
    .line 14
    iget-boolean p1, p0, Landroidx/media3/exoplayer/video/z;->n:Z

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-boolean p1, p0, Landroidx/media3/exoplayer/video/z;->m:Z

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-boolean p1, p0, Landroidx/media3/exoplayer/video/z;->o:Z

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    :cond_0
    iput-wide v1, p0, Landroidx/media3/exoplayer/video/z;->i:J

    .line 27
    .line 28
    return v0

    .line 29
    :cond_1
    iget-wide v3, p0, Landroidx/media3/exoplayer/video/z;->i:J

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    cmp-long v5, v3, v1

    .line 33
    .line 34
    if-nez v5, :cond_2

    .line 35
    .line 36
    return p1

    .line 37
    :cond_2
    iget-object v3, p0, Landroidx/media3/exoplayer/video/z;->l:Lu1/z;

    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 43
    .line 44
    .line 45
    move-result-wide v3

    .line 46
    iget-wide v5, p0, Landroidx/media3/exoplayer/video/z;->i:J

    .line 47
    .line 48
    cmp-long v7, v3, v5

    .line 49
    .line 50
    if-gez v7, :cond_3

    .line 51
    .line 52
    return v0

    .line 53
    :cond_3
    iput-wide v1, p0, Landroidx/media3/exoplayer/video/z;->i:J

    .line 54
    .line 55
    return p1
.end method

.method public final c(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/z;->j:Z

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    iget-wide v2, p0, Landroidx/media3/exoplayer/video/z;->c:J

    .line 6
    .line 7
    cmp-long p1, v2, v0

    .line 8
    .line 9
    if-lez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Landroidx/media3/exoplayer/video/z;->l:Lu1/z;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    add-long/2addr v0, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    :goto_0
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/z;->i:J

    .line 28
    .line 29
    return-void
.end method

.method public final d(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iget p1, p0, Landroidx/media3/exoplayer/video/z;->e:I

    .line 10
    .line 11
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput p1, p0, Landroidx/media3/exoplayer/video/z;->e:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    const/4 p1, 0x0

    .line 25
    iput p1, p0, Landroidx/media3/exoplayer/video/z;->e:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    iput v0, p0, Landroidx/media3/exoplayer/video/z;->e:I

    .line 29
    .line 30
    :goto_0
    iget-object p1, p0, Landroidx/media3/exoplayer/video/z;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->onPositionReset()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final e(Landroid/view/Surface;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v2, 0x0

    .line 8
    :goto_0
    iput-boolean v2, p0, Landroidx/media3/exoplayer/video/z;->m:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/z;->n:Z

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/media3/exoplayer/video/z;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->onSurfaceChanged(Landroid/view/Surface;)V

    .line 15
    .line 16
    .line 17
    iget p1, p0, Landroidx/media3/exoplayer/video/z;->e:I

    .line 18
    .line 19
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iput p1, p0, Landroidx/media3/exoplayer/video/z;->e:I

    .line 24
    .line 25
    return-void
.end method
