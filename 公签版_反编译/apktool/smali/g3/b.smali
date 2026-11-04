.class public final Lg3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg3/g;


# instance fields
.field public final a:Lg3/f;

.field public final b:J

.field public final c:J

.field public final d:Lg3/i;

.field public e:I

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:J

.field public k:J

.field public l:J


# direct methods
.method public constructor <init>(Lg3/i;JJJJZ)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    cmp-long v3, p2, v0

    .line 8
    .line 9
    if-ltz v3, :cond_0

    .line 10
    .line 11
    cmp-long v0, p4, p2

    .line 12
    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-static {v0}, La9/o;->k(Z)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lg3/b;->d:Lg3/i;

    .line 22
    .line 23
    iput-wide p2, p0, Lg3/b;->b:J

    .line 24
    .line 25
    iput-wide p4, p0, Lg3/b;->c:J

    .line 26
    .line 27
    sub-long/2addr p4, p2

    .line 28
    cmp-long p1, p6, p4

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    if-eqz p10, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iput v2, p0, Lg3/b;->e:I

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    :goto_1
    iput-wide p8, p0, Lg3/b;->f:J

    .line 39
    .line 40
    const/4 p1, 0x4

    .line 41
    iput p1, p0, Lg3/b;->e:I

    .line 42
    .line 43
    :goto_2
    new-instance p1, Lg3/f;

    .line 44
    .line 45
    invoke-direct {p1}, Lg3/f;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lg3/b;->a:Lg3/f;

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final c(Ll2/l;)J
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lg3/b;->e:I

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    const-wide/16 v5, -0x1

    .line 10
    .line 11
    const/4 v7, 0x0

    .line 12
    iget-wide v8, v0, Lg3/b;->c:J

    .line 13
    .line 14
    iget-object v10, v0, Lg3/b;->a:Lg3/f;

    .line 15
    .line 16
    const/4 v11, 0x1

    .line 17
    const/4 v12, 0x4

    .line 18
    if-eqz v2, :cond_e

    .line 19
    .line 20
    if-eq v2, v11, :cond_c

    .line 21
    .line 22
    const/4 v8, 0x2

    .line 23
    const/4 v9, 0x3

    .line 24
    if-eq v2, v8, :cond_2

    .line 25
    .line 26
    if-eq v2, v9, :cond_1

    .line 27
    .line 28
    if-ne v2, v12, :cond_0

    .line 29
    .line 30
    return-wide v5

    .line 31
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 34
    .line 35
    .line 36
    throw v1

    .line 37
    :cond_1
    move-wide v2, v5

    .line 38
    move-object/from16 v17, v10

    .line 39
    .line 40
    goto/16 :goto_5

    .line 41
    .line 42
    :cond_2
    iget-wide v13, v0, Lg3/b;->i:J

    .line 43
    .line 44
    iget-wide v5, v0, Lg3/b;->j:J

    .line 45
    .line 46
    cmp-long v2, v13, v5

    .line 47
    .line 48
    if-nez v2, :cond_3

    .line 49
    .line 50
    :goto_0
    move-object/from16 v17, v10

    .line 51
    .line 52
    const-wide/16 v2, -0x1

    .line 53
    .line 54
    const-wide/16 v15, -0x1

    .line 55
    .line 56
    goto/16 :goto_4

    .line 57
    .line 58
    :cond_3
    iget-wide v13, v1, Ll2/l;->d:J

    .line 59
    .line 60
    invoke-virtual {v10, v1, v5, v6}, Lg3/f;->b(Ll2/l;J)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-nez v2, :cond_5

    .line 65
    .line 66
    iget-wide v2, v0, Lg3/b;->i:J

    .line 67
    .line 68
    cmp-long v4, v2, v13

    .line 69
    .line 70
    if-eqz v4, :cond_4

    .line 71
    .line 72
    move-wide v15, v2

    .line 73
    move-object/from16 v17, v10

    .line 74
    .line 75
    :goto_1
    const-wide/16 v2, -0x1

    .line 76
    .line 77
    goto/16 :goto_4

    .line 78
    .line 79
    :cond_4
    new-instance v1, Ljava/io/IOException;

    .line 80
    .line 81
    const-string v2, "No ogg page can be found."

    .line 82
    .line 83
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v1

    .line 87
    :cond_5
    invoke-virtual {v10, v1, v7}, Lg3/f;->a(Ll2/l;Z)Z

    .line 88
    .line 89
    .line 90
    iput v7, v1, Ll2/l;->f:I

    .line 91
    .line 92
    iget-wide v5, v0, Lg3/b;->h:J

    .line 93
    .line 94
    iget-wide v7, v10, Lg3/f;->b:J

    .line 95
    .line 96
    sub-long/2addr v5, v7

    .line 97
    iget v11, v10, Lg3/f;->d:I

    .line 98
    .line 99
    iget v2, v10, Lg3/f;->e:I

    .line 100
    .line 101
    add-int/2addr v11, v2

    .line 102
    cmp-long v2, v3, v5

    .line 103
    .line 104
    if-gtz v2, :cond_6

    .line 105
    .line 106
    const-wide/32 v17, 0x11940

    .line 107
    .line 108
    .line 109
    cmp-long v2, v5, v17

    .line 110
    .line 111
    if-gez v2, :cond_6

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_6
    cmp-long v2, v5, v3

    .line 115
    .line 116
    if-gez v2, :cond_7

    .line 117
    .line 118
    iput-wide v13, v0, Lg3/b;->j:J

    .line 119
    .line 120
    iput-wide v7, v0, Lg3/b;->l:J

    .line 121
    .line 122
    move-object/from16 v17, v10

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_7
    iget-wide v13, v1, Ll2/l;->d:J

    .line 126
    .line 127
    move-object/from16 v17, v10

    .line 128
    .line 129
    int-to-long v9, v11

    .line 130
    add-long/2addr v13, v9

    .line 131
    iput-wide v13, v0, Lg3/b;->i:J

    .line 132
    .line 133
    iput-wide v7, v0, Lg3/b;->k:J

    .line 134
    .line 135
    :goto_2
    iget-wide v7, v0, Lg3/b;->j:J

    .line 136
    .line 137
    iget-wide v9, v0, Lg3/b;->i:J

    .line 138
    .line 139
    sub-long v13, v7, v9

    .line 140
    .line 141
    const-wide/32 v18, 0x186a0

    .line 142
    .line 143
    .line 144
    cmp-long v20, v13, v18

    .line 145
    .line 146
    if-gez v20, :cond_8

    .line 147
    .line 148
    iput-wide v9, v0, Lg3/b;->j:J

    .line 149
    .line 150
    move-wide v15, v9

    .line 151
    goto :goto_1

    .line 152
    :cond_8
    int-to-long v13, v11

    .line 153
    const-wide/16 v18, 0x1

    .line 154
    .line 155
    cmp-long v11, v5, v3

    .line 156
    .line 157
    if-gtz v11, :cond_9

    .line 158
    .line 159
    const-wide/16 v3, 0x2

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_9
    move-wide/from16 v3, v18

    .line 163
    .line 164
    :goto_3
    mul-long v13, v13, v3

    .line 165
    .line 166
    iget-wide v3, v1, Ll2/l;->d:J

    .line 167
    .line 168
    sub-long/2addr v3, v13

    .line 169
    sub-long v13, v7, v9

    .line 170
    .line 171
    mul-long v13, v13, v5

    .line 172
    .line 173
    iget-wide v5, v0, Lg3/b;->l:J

    .line 174
    .line 175
    move-wide/from16 v20, v3

    .line 176
    .line 177
    iget-wide v2, v0, Lg3/b;->k:J

    .line 178
    .line 179
    sub-long/2addr v5, v2

    .line 180
    div-long/2addr v13, v5

    .line 181
    add-long v2, v13, v20

    .line 182
    .line 183
    sub-long v22, v7, v18

    .line 184
    .line 185
    move-wide/from16 v18, v2

    .line 186
    .line 187
    move-wide/from16 v20, v9

    .line 188
    .line 189
    invoke-static/range {v18 .. v23}, Lu1/f0;->h(JJJ)J

    .line 190
    .line 191
    .line 192
    move-result-wide v2

    .line 193
    move-wide v15, v2

    .line 194
    goto :goto_1

    .line 195
    :goto_4
    cmp-long v4, v15, v2

    .line 196
    .line 197
    if-eqz v4, :cond_a

    .line 198
    .line 199
    return-wide v15

    .line 200
    :cond_a
    const/4 v4, 0x3

    .line 201
    iput v4, v0, Lg3/b;->e:I

    .line 202
    .line 203
    :goto_5
    move-object/from16 v5, v17

    .line 204
    .line 205
    :goto_6
    invoke-virtual {v5, v1, v2, v3}, Lg3/f;->b(Ll2/l;J)Z

    .line 206
    .line 207
    .line 208
    const/4 v2, 0x0

    .line 209
    invoke-virtual {v5, v1, v2}, Lg3/f;->a(Ll2/l;Z)Z

    .line 210
    .line 211
    .line 212
    iget-wide v3, v5, Lg3/f;->b:J

    .line 213
    .line 214
    iget-wide v6, v0, Lg3/b;->h:J

    .line 215
    .line 216
    cmp-long v8, v3, v6

    .line 217
    .line 218
    if-lez v8, :cond_b

    .line 219
    .line 220
    iput v2, v1, Ll2/l;->f:I

    .line 221
    .line 222
    iput v12, v0, Lg3/b;->e:I

    .line 223
    .line 224
    iget-wide v1, v0, Lg3/b;->k:J

    .line 225
    .line 226
    const-wide/16 v6, 0x2

    .line 227
    .line 228
    add-long/2addr v1, v6

    .line 229
    neg-long v1, v1

    .line 230
    return-wide v1

    .line 231
    :cond_b
    const-wide/16 v6, 0x2

    .line 232
    .line 233
    iget v3, v5, Lg3/f;->d:I

    .line 234
    .line 235
    iget v4, v5, Lg3/f;->e:I

    .line 236
    .line 237
    add-int/2addr v3, v4

    .line 238
    invoke-virtual {v1, v3, v2}, Ll2/l;->o(IZ)Z

    .line 239
    .line 240
    .line 241
    iget-wide v3, v1, Ll2/l;->d:J

    .line 242
    .line 243
    iput-wide v3, v0, Lg3/b;->i:J

    .line 244
    .line 245
    iget-wide v3, v5, Lg3/f;->b:J

    .line 246
    .line 247
    iput-wide v3, v0, Lg3/b;->k:J

    .line 248
    .line 249
    const-wide/16 v2, -0x1

    .line 250
    .line 251
    goto :goto_6

    .line 252
    :cond_c
    move-object v5, v10

    .line 253
    :cond_d
    const/4 v2, 0x0

    .line 254
    goto :goto_7

    .line 255
    :cond_e
    move-object v5, v10

    .line 256
    iget-wide v6, v1, Ll2/l;->d:J

    .line 257
    .line 258
    iput-wide v6, v0, Lg3/b;->g:J

    .line 259
    .line 260
    iput v11, v0, Lg3/b;->e:I

    .line 261
    .line 262
    const-wide/32 v13, 0xff1b

    .line 263
    .line 264
    .line 265
    sub-long v13, v8, v13

    .line 266
    .line 267
    cmp-long v10, v13, v6

    .line 268
    .line 269
    if-lez v10, :cond_d

    .line 270
    .line 271
    return-wide v13

    .line 272
    :goto_7
    iput v2, v5, Lg3/f;->a:I

    .line 273
    .line 274
    iput-wide v3, v5, Lg3/f;->b:J

    .line 275
    .line 276
    iput v2, v5, Lg3/f;->c:I

    .line 277
    .line 278
    iput v2, v5, Lg3/f;->d:I

    .line 279
    .line 280
    iput v2, v5, Lg3/f;->e:I

    .line 281
    .line 282
    const-wide/16 v3, -0x1

    .line 283
    .line 284
    invoke-virtual {v5, v1, v3, v4}, Lg3/f;->b(Ll2/l;J)Z

    .line 285
    .line 286
    .line 287
    move-result v6

    .line 288
    if-eqz v6, :cond_10

    .line 289
    .line 290
    invoke-virtual {v5, v1, v2}, Lg3/f;->a(Ll2/l;Z)Z

    .line 291
    .line 292
    .line 293
    iget v3, v5, Lg3/f;->d:I

    .line 294
    .line 295
    iget v4, v5, Lg3/f;->e:I

    .line 296
    .line 297
    add-int/2addr v3, v4

    .line 298
    invoke-virtual {v1, v3, v2}, Ll2/l;->o(IZ)Z

    .line 299
    .line 300
    .line 301
    iget-wide v3, v5, Lg3/f;->b:J

    .line 302
    .line 303
    :goto_8
    iget v6, v5, Lg3/f;->a:I

    .line 304
    .line 305
    and-int/2addr v6, v12

    .line 306
    if-eq v6, v12, :cond_f

    .line 307
    .line 308
    const-wide/16 v6, -0x1

    .line 309
    .line 310
    invoke-virtual {v5, v1, v6, v7}, Lg3/f;->b(Ll2/l;J)Z

    .line 311
    .line 312
    .line 313
    move-result v10

    .line 314
    if-eqz v10, :cond_f

    .line 315
    .line 316
    iget-wide v13, v1, Ll2/l;->d:J

    .line 317
    .line 318
    cmp-long v10, v13, v8

    .line 319
    .line 320
    if-gez v10, :cond_f

    .line 321
    .line 322
    invoke-virtual {v5, v1, v11}, Lg3/f;->a(Ll2/l;Z)Z

    .line 323
    .line 324
    .line 325
    move-result v10

    .line 326
    if-eqz v10, :cond_f

    .line 327
    .line 328
    iget v10, v5, Lg3/f;->d:I

    .line 329
    .line 330
    iget v13, v5, Lg3/f;->e:I

    .line 331
    .line 332
    add-int/2addr v10, v13

    .line 333
    const/4 v2, 0x0

    .line 334
    :try_start_0
    invoke-virtual {v1, v10, v2}, Ll2/l;->o(IZ)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    .line 336
    .line 337
    iget-wide v3, v5, Lg3/f;->b:J

    .line 338
    .line 339
    goto :goto_8

    .line 340
    :catch_0
    :cond_f
    iput-wide v3, v0, Lg3/b;->f:J

    .line 341
    .line 342
    iput v12, v0, Lg3/b;->e:I

    .line 343
    .line 344
    iget-wide v1, v0, Lg3/b;->g:J

    .line 345
    .line 346
    return-wide v1

    .line 347
    :cond_10
    new-instance v1, Ljava/io/EOFException;

    .line 348
    .line 349
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    .line 350
    .line 351
    .line 352
    goto :goto_a

    .line 353
    :goto_9
    throw v1

    .line 354
    :goto_a
    goto :goto_9
.end method

.method public final d()Ll2/c0;
    .locals 5

    .line 1
    iget-wide v0, p0, Lg3/b;->f:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    new-instance v0, Lg3/a;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lg3/a;-><init>(Lg3/b;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return-object v0
.end method

.method public final f(J)V
    .locals 10

    .line 1
    iget-wide v0, p0, Lg3/b;->f:J

    .line 2
    .line 3
    const-wide/16 v2, 0x1

    .line 4
    .line 5
    sub-long v8, v0, v2

    .line 6
    .line 7
    const-wide/16 v6, 0x0

    .line 8
    .line 9
    move-wide v4, p1

    .line 10
    invoke-static/range {v4 .. v9}, Lu1/f0;->h(JJJ)J

    .line 11
    .line 12
    .line 13
    move-result-wide p1

    .line 14
    iput-wide p1, p0, Lg3/b;->h:J

    .line 15
    .line 16
    const/4 p1, 0x2

    .line 17
    iput p1, p0, Lg3/b;->e:I

    .line 18
    .line 19
    iget-wide p1, p0, Lg3/b;->b:J

    .line 20
    .line 21
    iput-wide p1, p0, Lg3/b;->i:J

    .line 22
    .line 23
    iget-wide p1, p0, Lg3/b;->c:J

    .line 24
    .line 25
    iput-wide p1, p0, Lg3/b;->j:J

    .line 26
    .line 27
    const-wide/16 p1, 0x0

    .line 28
    .line 29
    iput-wide p1, p0, Lg3/b;->k:J

    .line 30
    .line 31
    iget-wide p1, p0, Lg3/b;->f:J

    .line 32
    .line 33
    iput-wide p1, p0, Lg3/b;->l:J

    .line 34
    .line 35
    return-void
.end method
