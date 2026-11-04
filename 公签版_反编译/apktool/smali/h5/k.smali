.class public final Lh5/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Ljava/util/List;

.field public final c:Lt5/a;

.field public final d:Lv3/f;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lt5/a;Lv3/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh5/k;->a:Ljava/lang/Class;

    .line 5
    .line 6
    iput-object p4, p0, Lh5/k;->b:Ljava/util/List;

    .line 7
    .line 8
    iput-object p5, p0, Lh5/k;->c:Lt5/a;

    .line 9
    .line 10
    iput-object p6, p0, Lh5/k;->d:Lv3/f;

    .line 11
    .line 12
    new-instance p4, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string p5, "Failed DecodePath{"

    .line 15
    .line 16
    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, "->"

    .line 27
    .line 28
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p1, "}"

    .line 49
    .line 50
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Lh5/k;->e:Ljava/lang/String;

    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final a(IILa2/g1;Lcom/bumptech/glide/load/data/g;Lf5/i;)Lh5/z;
    .locals 17

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v0, p3

    .line 4
    .line 5
    iget-object v8, v7, Lh5/k;->d:Lv3/f;

    .line 6
    .line 7
    invoke-virtual {v8}, Lv3/f;->l()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    move-object v9, v1

    .line 12
    check-cast v9, Ljava/util/List;

    .line 13
    .line 14
    move-object/from16 v1, p0

    .line 15
    .line 16
    move-object/from16 v2, p4

    .line 17
    .line 18
    move/from16 v3, p1

    .line 19
    .line 20
    move/from16 v4, p2

    .line 21
    .line 22
    move-object/from16 v5, p5

    .line 23
    .line 24
    move-object v6, v9

    .line 25
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lh5/k;->b(Lcom/bumptech/glide/load/data/g;IILf5/i;Ljava/util/List;)Lh5/z;

    .line 26
    .line 27
    .line 28
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-virtual {v8, v9}, Lv3/f;->L(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    iget-object v2, v0, La2/g1;->c:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v2, Lh5/j;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-interface {v1}, Lh5/z;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    move-result-object v15

    .line 47
    sget-object v3, Lf5/a;->d:Lf5/a;

    .line 48
    .line 49
    iget-object v0, v0, La2/g1;->b:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Lf5/a;

    .line 52
    .line 53
    iget-object v4, v2, Lh5/j;->a:Lh5/h;

    .line 54
    .line 55
    const/4 v5, 0x0

    .line 56
    if-eq v0, v3, :cond_0

    .line 57
    .line 58
    invoke-virtual {v4, v15}, Lh5/h;->e(Ljava/lang/Class;)Lf5/m;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    iget-object v6, v2, Lh5/j;->h:Lcom/bumptech/glide/f;

    .line 63
    .line 64
    iget v8, v2, Lh5/j;->l:I

    .line 65
    .line 66
    iget v9, v2, Lh5/j;->m:I

    .line 67
    .line 68
    invoke-interface {v3, v6, v1, v8, v9}, Lf5/m;->a(Lcom/bumptech/glide/f;Lh5/z;II)Lh5/z;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    move-object v14, v3

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    move-object v6, v1

    .line 75
    move-object v14, v5

    .line 76
    :goto_0
    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-nez v3, :cond_1

    .line 81
    .line 82
    invoke-interface {v1}, Lh5/z;->recycle()V

    .line 83
    .line 84
    .line 85
    :cond_1
    iget-object v1, v4, Lh5/h;->c:Lcom/bumptech/glide/f;

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/bumptech/glide/f;->b()Lcom/bumptech/glide/k;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iget-object v1, v1, Lcom/bumptech/glide/k;->d:Lag/c;

    .line 92
    .line 93
    invoke-interface {v6}, Lh5/z;->a()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v1, v3}, Lag/c;->h(Ljava/lang/Class;)Lf5/l;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    if-eqz v1, :cond_3

    .line 102
    .line 103
    iget-object v1, v4, Lh5/h;->c:Lcom/bumptech/glide/f;

    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/bumptech/glide/f;->b()Lcom/bumptech/glide/k;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    invoke-interface {v6}, Lh5/z;->a()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    iget-object v1, v1, Lcom/bumptech/glide/k;->d:Lag/c;

    .line 117
    .line 118
    invoke-virtual {v1, v3}, Lag/c;->h(Ljava/lang/Class;)Lf5/l;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    if-eqz v5, :cond_2

    .line 123
    .line 124
    iget-object v1, v2, Lh5/j;->p:Lf5/i;

    .line 125
    .line 126
    invoke-interface {v5, v1}, Lf5/l;->f(Lf5/i;)I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    goto :goto_1

    .line 131
    :cond_2
    new-instance v0, Lcom/bumptech/glide/j;

    .line 132
    .line 133
    invoke-interface {v6}, Lh5/z;->a()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    const/4 v2, 0x2

    .line 138
    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/j;-><init>(Ljava/lang/Class;I)V

    .line 139
    .line 140
    .line 141
    throw v0

    .line 142
    :cond_3
    const/4 v1, 0x3

    .line 143
    :goto_1
    iget-object v3, v2, Lh5/j;->w:Lf5/f;

    .line 144
    .line 145
    invoke-virtual {v4}, Lh5/h;->b()Ljava/util/ArrayList;

    .line 146
    .line 147
    .line 148
    move-result-object v8

    .line 149
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 150
    .line 151
    .line 152
    move-result v9

    .line 153
    const/4 v13, 0x0

    .line 154
    const/4 v10, 0x0

    .line 155
    :goto_2
    const/4 v12, 0x1

    .line 156
    if-ge v10, v9, :cond_5

    .line 157
    .line 158
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v11

    .line 162
    check-cast v11, Ll5/p;

    .line 163
    .line 164
    iget-object v11, v11, Ll5/p;->a:Lf5/f;

    .line 165
    .line 166
    invoke-interface {v11, v3}, Lf5/f;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v11

    .line 170
    if-eqz v11, :cond_4

    .line 171
    .line 172
    const/4 v3, 0x1

    .line 173
    goto :goto_3

    .line 174
    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_5
    const/4 v3, 0x0

    .line 178
    :goto_3
    iget-object v8, v2, Lh5/j;->n:Lh5/l;

    .line 179
    .line 180
    iget v8, v8, Lh5/l;->a:I

    .line 181
    .line 182
    packed-switch v8, :pswitch_data_0

    .line 183
    .line 184
    .line 185
    if-nez v3, :cond_6

    .line 186
    .line 187
    sget-object v3, Lf5/a;->c:Lf5/a;

    .line 188
    .line 189
    if-eq v0, v3, :cond_7

    .line 190
    .line 191
    :cond_6
    sget-object v3, Lf5/a;->a:Lf5/a;

    .line 192
    .line 193
    if-ne v0, v3, :cond_8

    .line 194
    .line 195
    :cond_7
    const/4 v0, 0x2

    .line 196
    if-ne v1, v0, :cond_8

    .line 197
    .line 198
    const/4 v0, 0x1

    .line 199
    goto :goto_4

    .line 200
    :cond_8
    :pswitch_0
    const/4 v0, 0x0

    .line 201
    :goto_4
    if-eqz v0, :cond_f

    .line 202
    .line 203
    if-eqz v5, :cond_e

    .line 204
    .line 205
    invoke-static {v1}, Ld0/f;->c(I)I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    if-eqz v0, :cond_d

    .line 210
    .line 211
    if-ne v0, v12, :cond_9

    .line 212
    .line 213
    new-instance v0, Lh5/b0;

    .line 214
    .line 215
    iget-object v1, v4, Lh5/h;->c:Lcom/bumptech/glide/f;

    .line 216
    .line 217
    iget-object v9, v1, Lcom/bumptech/glide/f;->a:La2/k1;

    .line 218
    .line 219
    iget-object v10, v2, Lh5/j;->w:Lf5/f;

    .line 220
    .line 221
    iget-object v11, v2, Lh5/j;->i:Lf5/f;

    .line 222
    .line 223
    iget v1, v2, Lh5/j;->l:I

    .line 224
    .line 225
    iget v3, v2, Lh5/j;->m:I

    .line 226
    .line 227
    iget-object v4, v2, Lh5/j;->p:Lf5/i;

    .line 228
    .line 229
    move-object v8, v0

    .line 230
    move-object/from16 p1, v0

    .line 231
    .line 232
    const/4 v0, 0x1

    .line 233
    move v12, v1

    .line 234
    const/4 v1, 0x0

    .line 235
    move v13, v3

    .line 236
    move-object/from16 v16, v4

    .line 237
    .line 238
    invoke-direct/range {v8 .. v16}, Lh5/b0;-><init>(La2/k1;Lf5/f;Lf5/f;IILf5/m;Ljava/lang/Class;Lf5/i;)V

    .line 239
    .line 240
    .line 241
    move-object/from16 v1, p1

    .line 242
    .line 243
    const/4 v3, 0x0

    .line 244
    goto :goto_6

    .line 245
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 246
    .line 247
    const/4 v2, 0x1

    .line 248
    if-eq v1, v2, :cond_c

    .line 249
    .line 250
    const/4 v2, 0x2

    .line 251
    if-eq v1, v2, :cond_b

    .line 252
    .line 253
    const/4 v2, 0x3

    .line 254
    if-eq v1, v2, :cond_a

    .line 255
    .line 256
    const-string v1, "null"

    .line 257
    .line 258
    goto :goto_5

    .line 259
    :cond_a
    const-string v1, "NONE"

    .line 260
    .line 261
    goto :goto_5

    .line 262
    :cond_b
    const-string v1, "TRANSFORMED"

    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_c
    const-string v1, "SOURCE"

    .line 266
    .line 267
    :goto_5
    const-string v2, "Unknown strategy: "

    .line 268
    .line 269
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    throw v0

    .line 277
    :cond_d
    const/4 v0, 0x1

    .line 278
    const/4 v3, 0x0

    .line 279
    new-instance v1, Lh5/e;

    .line 280
    .line 281
    iget-object v4, v2, Lh5/j;->w:Lf5/f;

    .line 282
    .line 283
    iget-object v8, v2, Lh5/j;->i:Lf5/f;

    .line 284
    .line 285
    invoke-direct {v1, v4, v8}, Lh5/e;-><init>(Lf5/f;Lf5/f;)V

    .line 286
    .line 287
    .line 288
    :goto_6
    sget-object v4, Lh5/y;->e:Lv3/f;

    .line 289
    .line 290
    invoke-virtual {v4}, Lv3/f;->l()Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v4

    .line 294
    check-cast v4, Lh5/y;

    .line 295
    .line 296
    iput-boolean v3, v4, Lh5/y;->d:Z

    .line 297
    .line 298
    iput-boolean v0, v4, Lh5/y;->c:Z

    .line 299
    .line 300
    iput-object v6, v4, Lh5/y;->b:Lh5/z;

    .line 301
    .line 302
    iget-object v0, v2, Lh5/j;->f:Lv3/f;

    .line 303
    .line 304
    iput-object v1, v0, Lv3/f;->b:Ljava/lang/Object;

    .line 305
    .line 306
    iput-object v5, v0, Lv3/f;->c:Ljava/lang/Object;

    .line 307
    .line 308
    iput-object v4, v0, Lv3/f;->d:Ljava/lang/Object;

    .line 309
    .line 310
    move-object v6, v4

    .line 311
    goto :goto_7

    .line 312
    :cond_e
    new-instance v0, Lcom/bumptech/glide/j;

    .line 313
    .line 314
    invoke-interface {v6}, Lh5/z;->get()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    const/4 v2, 0x2

    .line 323
    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/j;-><init>(Ljava/lang/Class;I)V

    .line 324
    .line 325
    .line 326
    throw v0

    .line 327
    :cond_f
    :goto_7
    iget-object v0, v7, Lh5/k;->c:Lt5/a;

    .line 328
    .line 329
    move-object/from16 v1, p5

    .line 330
    .line 331
    invoke-interface {v0, v6, v1}, Lt5/a;->c(Lh5/z;Lf5/i;)Lh5/z;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    return-object v0

    .line 336
    :catchall_0
    move-exception v0

    .line 337
    move-object v1, v0

    .line 338
    invoke-virtual {v8, v9}, Lv3/f;->L(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    goto :goto_9

    .line 342
    :goto_8
    throw v1

    .line 343
    :goto_9
    goto :goto_8

    .line 344
    nop

    .line 345
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lcom/bumptech/glide/load/data/g;IILf5/i;Ljava/util/List;)Lh5/z;
    .locals 8

    .line 1
    iget-object v0, p0, Lh5/k;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v3, v1, :cond_3

    .line 10
    .line 11
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Lf5/k;

    .line 16
    .line 17
    :try_start_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/g;->d()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-interface {v4, v5, p4}, Lf5/k;->b(Ljava/lang/Object;Lf5/i;)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eqz v5, :cond_1

    .line 26
    .line 27
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/g;->d()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-interface {v4, v5, p2, p3, p4}, Lf5/k;->a(Ljava/lang/Object;IILf5/i;)Lh5/z;

    .line 32
    .line 33
    .line 34
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_2

    .line 36
    :catch_0
    move-exception v5

    .line 37
    goto :goto_1

    .line 38
    :catch_1
    move-exception v5

    .line 39
    goto :goto_1

    .line 40
    :catch_2
    move-exception v5

    .line 41
    :goto_1
    const-string v6, "DecodePath"

    .line 42
    .line 43
    const/4 v7, 0x2

    .line 44
    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-eqz v6, :cond_0

    .line 49
    .line 50
    if-eqz v4, :cond_0

    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    :cond_0
    invoke-interface {p5, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    :goto_3
    if-eqz v2, :cond_4

    .line 65
    .line 66
    return-object v2

    .line 67
    :cond_4
    new-instance p1, Lh5/v;

    .line 68
    .line 69
    new-instance p2, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {p2, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 72
    .line 73
    .line 74
    iget-object p3, p0, Lh5/k;->e:Ljava/lang/String;

    .line 75
    .line 76
    invoke-direct {p1, p3, p2}, Lh5/v;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 77
    .line 78
    .line 79
    goto :goto_5

    .line 80
    :goto_4
    throw p1

    .line 81
    :goto_5
    goto :goto_4
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DecodePath{ dataClass="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lh5/k;->a:Ljava/lang/Class;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", decoders="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lh5/k;->b:Ljava/util/List;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", transcoder="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lh5/k;->c:Lt5/a;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/16 v1, 0x7d

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method
