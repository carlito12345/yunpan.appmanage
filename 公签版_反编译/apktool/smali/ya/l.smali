.class public final Lya/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/view/WindowManager;

.field public b:Lv3/e0;

.field public c:Lcom/yunpan/appmanage/service/AccService;

.field public d:Lz7/s;

.field public e:Landroid/view/WindowManager$LayoutParams;

.field public f:Ly1/x;

.field public g:Landroid/media/AudioManager;

.field public h:Landroid/media/audiofx/LoudnessEnhancer;

.field public i:Landroid/os/Handler;

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/service/AccService;Lz7/s;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lya/l;->c:Lcom/yunpan/appmanage/service/AccService;

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lya/l;->i:Landroid/os/Handler;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lya/l;->j:I

    .line 5
    iput v0, p0, Lya/l;->k:I

    .line 6
    :try_start_0
    iput-object p1, p0, Lya/l;->c:Lcom/yunpan/appmanage/service/AccService;

    .line 7
    iput-object p2, p0, Lya/l;->d:Lz7/s;

    .line 8
    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lya/l;->g:Landroid/media/AudioManager;

    .line 9
    iget-object p1, p0, Lya/l;->c:Lcom/yunpan/appmanage/service/AccService;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lya/l;->a:Landroid/view/WindowManager;

    .line 10
    iget-object p1, p0, Lya/l;->i:Landroid/os/Handler;

    new-instance p2, Lya/j;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lya/j;-><init>(Lya/l;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>(Lz7/s;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lya/l;->c:Lcom/yunpan/appmanage/service/AccService;

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lya/l;->i:Landroid/os/Handler;

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lya/l;->j:I

    .line 15
    iput v0, p0, Lya/l;->k:I

    .line 16
    :try_start_0
    iput-object p1, p0, Lya/l;->d:Lz7/s;

    .line 17
    sget-object p1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 18
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lya/l;->g:Landroid/media/AudioManager;

    .line 19
    sget-object p1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 20
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lya/l;->a:Landroid/view/WindowManager;

    .line 21
    iget-object p1, p0, Lya/l;->i:Landroid/os/Handler;

    new-instance v0, Lya/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lya/j;-><init>(Lya/l;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static a(Lya/l;)V
    .locals 30

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const/4 v2, 0x4

    .line 5
    const/4 v3, 0x1

    .line 6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    new-instance v4, Ly1/m;

    .line 10
    .line 11
    iget-object v5, v1, Lya/l;->c:Lcom/yunpan/appmanage/service/AccService;

    .line 12
    .line 13
    if-eqz v5, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v5, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 17
    .line 18
    :goto_0
    invoke-direct {v4, v5}, Ly1/m;-><init>(Landroid/content/ContextWrapper;)V

    .line 19
    .line 20
    .line 21
    iget-boolean v5, v4, Ly1/m;->y:Z

    .line 22
    .line 23
    xor-int/2addr v5, v3

    .line 24
    invoke-static {v5}, La9/o;->t(Z)V

    .line 25
    .line 26
    .line 27
    iput-boolean v3, v4, Ly1/m;->y:Z

    .line 28
    .line 29
    new-instance v5, Ly1/x;

    .line 30
    .line 31
    invoke-direct {v5, v4}, Ly1/x;-><init>(Ly1/m;)V

    .line 32
    .line 33
    .line 34
    iput-object v5, v1, Lya/l;->f:Ly1/x;

    .line 35
    .line 36
    new-instance v4, Lu1/s;

    .line 37
    .line 38
    invoke-direct {v4, v3, v1}, Lu1/s;-><init>(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object v5, v5, Ly1/x;->m:Lu1/m;

    .line 42
    .line 43
    invoke-virtual {v5, v4}, Lu1/m;->a(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object v4, v1, Lya/l;->b:Lv3/e0;

    .line 47
    .line 48
    iget-object v5, v1, Lya/l;->f:Ly1/x;

    .line 49
    .line 50
    invoke-virtual {v4, v5}, Lv3/e0;->setPlayer(Lr1/m0;)V

    .line 51
    .line 52
    .line 53
    iget-object v4, v1, Lya/l;->d:Lz7/s;

    .line 54
    .line 55
    const-string v5, "files"

    .line 56
    .line 57
    invoke-virtual {v4, v5}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    iget-object v5, v4, Lz7/o;->a:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    const/4 v6, 0x0

    .line 68
    if-le v5, v3, :cond_1

    .line 69
    .line 70
    new-instance v5, Ljava/util/Random;

    .line 71
    .line 72
    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    .line 73
    .line 74
    .line 75
    iget-object v7, v4, Lz7/o;->a:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    invoke-virtual {v5, v7}, Ljava/util/Random;->nextInt(I)I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    const/4 v5, 0x0

    .line 87
    :goto_1
    invoke-virtual {v4, v5}, Lz7/o;->l(I)Lz7/p;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v4}, Lz7/p;->i()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    new-instance v5, Ldd/c;

    .line 96
    .line 97
    invoke-direct {v5, v2}, Ldd/c;-><init>(I)V

    .line 98
    .line 99
    .line 100
    sget-object v7, Lu7/g0;->b:Lu7/e0;

    .line 101
    .line 102
    sget-object v7, Lu7/y0;->e:Lu7/y0;

    .line 103
    .line 104
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v12

    .line 108
    sget-object v13, Lu7/y0;->e:Lu7/y0;

    .line 109
    .line 110
    new-instance v7, Lr1/t;

    .line 111
    .line 112
    invoke-direct {v7}, Lr1/t;-><init>()V

    .line 113
    .line 114
    .line 115
    sget-object v20, Lr1/w;->a:Lr1/w;

    .line 116
    .line 117
    const/4 v11, 0x0

    .line 118
    if-nez v4, :cond_2

    .line 119
    .line 120
    move-object v9, v11

    .line 121
    goto :goto_2

    .line 122
    :cond_2
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    move-object v9, v4

    .line 127
    :goto_2
    if-eqz v9, :cond_3

    .line 128
    .line 129
    new-instance v4, Lr1/v;

    .line 130
    .line 131
    const/4 v10, 0x0

    .line 132
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    move-object v8, v4

    .line 138
    invoke-direct/range {v8 .. v15}, Lr1/v;-><init>(Landroid/net/Uri;Ljava/lang/String;Lif/a;Ljava/util/List;Lu7/g0;J)V

    .line 139
    .line 140
    .line 141
    move-object/from16 v17, v4

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_3
    move-object/from16 v17, v11

    .line 145
    .line 146
    :goto_3
    new-instance v4, Lr1/y;

    .line 147
    .line 148
    new-instance v8, Lr1/s;

    .line 149
    .line 150
    invoke-direct {v8, v5}, Lr1/s;-><init>(Ldd/c;)V

    .line 151
    .line 152
    .line 153
    new-instance v5, Lr1/u;

    .line 154
    .line 155
    invoke-direct {v5, v7}, Lr1/u;-><init>(Lr1/t;)V

    .line 156
    .line 157
    .line 158
    sget-object v19, Lr1/b0;->B:Lr1/b0;

    .line 159
    .line 160
    const-string v15, ""

    .line 161
    .line 162
    move-object v14, v4

    .line 163
    move-object/from16 v16, v8

    .line 164
    .line 165
    move-object/from16 v18, v5

    .line 166
    .line 167
    invoke-direct/range {v14 .. v20}, Lr1/y;-><init>(Ljava/lang/String;Lr1/s;Lr1/v;Lr1/u;Lr1/b0;Lr1/w;)V

    .line 168
    .line 169
    .line 170
    iget-object v5, v1, Lya/l;->f:Ly1/x;

    .line 171
    .line 172
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    invoke-static {v4}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    invoke-virtual {v5}, Ly1/x;->h0()V

    .line 180
    .line 181
    .line 182
    new-instance v7, Ljava/util/ArrayList;

    .line 183
    .line 184
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .line 186
    .line 187
    const/4 v8, 0x0

    .line 188
    :goto_4
    iget v9, v4, Lu7/y0;->d:I

    .line 189
    .line 190
    if-ge v8, v9, :cond_4

    .line 191
    .line 192
    invoke-virtual {v4, v8}, Lu7/y0;->get(I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v9

    .line 196
    check-cast v9, Lr1/y;

    .line 197
    .line 198
    iget-object v10, v5, Ly1/x;->s:Lf2/b0;

    .line 199
    .line 200
    invoke-interface {v10, v9}, Lf2/b0;->b(Lr1/y;)Lf2/a;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    add-int/2addr v8, v3

    .line 208
    goto :goto_4

    .line 209
    :cond_4
    invoke-virtual {v5}, Ly1/x;->h0()V

    .line 210
    .line 211
    .line 212
    iget-object v4, v5, Ly1/x;->f1:Ly1/v0;

    .line 213
    .line 214
    invoke-virtual {v5, v4}, Ly1/x;->G(Ly1/v0;)I

    .line 215
    .line 216
    .line 217
    invoke-virtual {v5}, Ly1/x;->C()J

    .line 218
    .line 219
    .line 220
    iget v4, v5, Ly1/x;->M:I

    .line 221
    .line 222
    add-int/2addr v4, v3

    .line 223
    iput v4, v5, Ly1/x;->M:I

    .line 224
    .line 225
    iget-object v4, v5, Ly1/x;->q:Ljava/util/ArrayList;

    .line 226
    .line 227
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 228
    .line 229
    .line 230
    new-instance v9, Ljava/util/ArrayList;

    .line 231
    .line 232
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .line 234
    .line 235
    const/4 v8, 0x0

    .line 236
    :goto_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 237
    .line 238
    .line 239
    move-result v10

    .line 240
    if-ge v8, v10, :cond_5

    .line 241
    .line 242
    new-instance v10, Ly1/u0;

    .line 243
    .line 244
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v11

    .line 248
    check-cast v11, Lf2/a;

    .line 249
    .line 250
    iget-boolean v12, v5, Ly1/x;->r:Z

    .line 251
    .line 252
    invoke-direct {v10, v11, v12}, Ly1/u0;-><init>(Lf2/a;Z)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    new-instance v11, Ly1/v;

    .line 259
    .line 260
    iget-object v12, v10, Ly1/u0;->b:Ljava/lang/Object;

    .line 261
    .line 262
    iget-object v10, v10, Ly1/u0;->a:Lf2/x;

    .line 263
    .line 264
    invoke-direct {v11, v12, v10}, Ly1/v;-><init>(Ljava/lang/Object;Lf2/x;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v4, v8, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    add-int/2addr v8, v3

    .line 271
    goto :goto_5

    .line 272
    :cond_5
    iget-object v7, v5, Ly1/x;->V:Lf2/e1;

    .line 273
    .line 274
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 275
    .line 276
    .line 277
    move-result v8

    .line 278
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 279
    .line 280
    .line 281
    new-instance v10, Lf2/e1;

    .line 282
    .line 283
    new-instance v11, Ljava/util/Random;

    .line 284
    .line 285
    iget-object v7, v7, Lf2/e1;->a:Ljava/util/Random;

    .line 286
    .line 287
    invoke-virtual {v7}, Ljava/util/Random;->nextLong()J

    .line 288
    .line 289
    .line 290
    move-result-wide v12

    .line 291
    invoke-direct {v11, v12, v13}, Ljava/util/Random;-><init>(J)V

    .line 292
    .line 293
    .line 294
    invoke-direct {v10, v11}, Lf2/e1;-><init>(Ljava/util/Random;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v10, v8}, Lf2/e1;->a(I)Lf2/e1;

    .line 298
    .line 299
    .line 300
    move-result-object v7

    .line 301
    iput-object v7, v5, Ly1/x;->V:Lf2/e1;

    .line 302
    .line 303
    new-instance v7, Ly1/a1;

    .line 304
    .line 305
    iget-object v8, v5, Ly1/x;->V:Lf2/e1;

    .line 306
    .line 307
    invoke-direct {v7, v4, v8}, Ly1/a1;-><init>(Ljava/util/List;Lf2/e1;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v7}, Lr1/q0;->p()Z

    .line 311
    .line 312
    .line 313
    move-result v4

    .line 314
    const/4 v14, -0x1

    .line 315
    iget v8, v7, Ly1/a1;->d:I

    .line 316
    .line 317
    if-nez v4, :cond_7

    .line 318
    .line 319
    if-ge v14, v8, :cond_6

    .line 320
    .line 321
    goto :goto_6

    .line 322
    :cond_6
    new-instance v1, Lhc/d;

    .line 323
    .line 324
    invoke-direct {v1, v0}, Lhc/d;-><init>(I)V

    .line 325
    .line 326
    .line 327
    throw v1

    .line 328
    :cond_7
    :goto_6
    iget-boolean v4, v5, Ly1/x;->L:Z

    .line 329
    .line 330
    invoke-virtual {v7, v4}, Ly1/a1;->a(Z)I

    .line 331
    .line 332
    .line 333
    move-result v11

    .line 334
    iget-object v4, v5, Ly1/x;->f1:Ly1/v0;

    .line 335
    .line 336
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    invoke-virtual {v5, v7, v11, v12, v13}, Ly1/x;->Q(Lr1/q0;IJ)Landroid/util/Pair;

    .line 342
    .line 343
    .line 344
    move-result-object v10

    .line 345
    invoke-virtual {v5, v4, v7, v10}, Ly1/x;->P(Ly1/v0;Lr1/q0;Landroid/util/Pair;)Ly1/v0;

    .line 346
    .line 347
    .line 348
    move-result-object v4

    .line 349
    iget v10, v4, Ly1/v0;->e:I

    .line 350
    .line 351
    if-ne v10, v3, :cond_8

    .line 352
    .line 353
    const/4 v0, 0x1

    .line 354
    goto :goto_8

    .line 355
    :cond_8
    invoke-virtual {v7}, Lr1/q0;->p()Z

    .line 356
    .line 357
    .line 358
    move-result v7

    .line 359
    if-eqz v7, :cond_9

    .line 360
    .line 361
    :goto_7
    const/4 v0, 0x4

    .line 362
    goto :goto_8

    .line 363
    :cond_9
    if-ne v11, v14, :cond_a

    .line 364
    .line 365
    move v0, v10

    .line 366
    goto :goto_8

    .line 367
    :cond_a
    if-lt v11, v8, :cond_b

    .line 368
    .line 369
    goto :goto_7

    .line 370
    :cond_b
    :goto_8
    invoke-static {v4, v0}, Ly1/x;->O(Ly1/v0;I)Ly1/v0;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-static {v12, v13}, Lu1/f0;->G(J)J

    .line 375
    .line 376
    .line 377
    move-result-wide v12

    .line 378
    iget-object v10, v5, Ly1/x;->V:Lf2/e1;

    .line 379
    .line 380
    iget-object v2, v5, Ly1/x;->l:Ly1/f0;

    .line 381
    .line 382
    iget-object v2, v2, Ly1/f0;->h:Lu1/b0;

    .line 383
    .line 384
    new-instance v4, Ly1/c0;

    .line 385
    .line 386
    move-object v8, v4

    .line 387
    invoke-direct/range {v8 .. v13}, Ly1/c0;-><init>(Ljava/util/ArrayList;Lf2/e1;IJ)V

    .line 388
    .line 389
    .line 390
    const/16 v7, 0x11

    .line 391
    .line 392
    invoke-virtual {v2, v7, v4}, Lu1/b0;->b(ILjava/lang/Object;)Lu1/a0;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    invoke-virtual {v2}, Lu1/a0;->b()V

    .line 397
    .line 398
    .line 399
    iget-object v2, v5, Ly1/x;->f1:Ly1/v0;

    .line 400
    .line 401
    iget-object v2, v2, Ly1/v0;->b:Lf2/c0;

    .line 402
    .line 403
    iget-object v2, v2, Lf2/c0;->a:Ljava/lang/Object;

    .line 404
    .line 405
    iget-object v4, v0, Ly1/v0;->b:Lf2/c0;

    .line 406
    .line 407
    iget-object v4, v4, Lf2/c0;->a:Ljava/lang/Object;

    .line 408
    .line 409
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    move-result v2

    .line 413
    if-nez v2, :cond_c

    .line 414
    .line 415
    iget-object v2, v5, Ly1/x;->f1:Ly1/v0;

    .line 416
    .line 417
    iget-object v2, v2, Ly1/v0;->a:Lr1/q0;

    .line 418
    .line 419
    invoke-virtual {v2}, Lr1/q0;->p()Z

    .line 420
    .line 421
    .line 422
    move-result v2

    .line 423
    if-nez v2, :cond_c

    .line 424
    .line 425
    const/16 v24, 0x1

    .line 426
    .line 427
    goto :goto_9

    .line 428
    :cond_c
    const/16 v24, 0x0

    .line 429
    .line 430
    :goto_9
    invoke-virtual {v5, v0}, Ly1/x;->D(Ly1/v0;)J

    .line 431
    .line 432
    .line 433
    move-result-wide v26

    .line 434
    const/16 v23, 0x0

    .line 435
    .line 436
    const/16 v25, 0x4

    .line 437
    .line 438
    const/16 v28, -0x1

    .line 439
    .line 440
    const/16 v29, 0x0

    .line 441
    .line 442
    move-object/from16 v21, v5

    .line 443
    .line 444
    move-object/from16 v22, v0

    .line 445
    .line 446
    invoke-virtual/range {v21 .. v29}, Ly1/x;->f0(Ly1/v0;IZIJIZ)V

    .line 447
    .line 448
    .line 449
    iget-object v0, v1, Lya/l;->d:Lz7/s;

    .line 450
    .line 451
    const-string v2, "isMute"

    .line 452
    .line 453
    invoke-virtual {v0, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    invoke-virtual {v0}, Lz7/p;->b()Z

    .line 458
    .line 459
    .line 460
    move-result v0

    .line 461
    const/4 v2, 0x3

    .line 462
    if-eqz v0, :cond_e

    .line 463
    .line 464
    iget-object v0, v1, Lya/l;->f:Ly1/x;

    .line 465
    .line 466
    invoke-virtual {v0}, Ly1/x;->h0()V

    .line 467
    .line 468
    .line 469
    const/high16 v4, 0x3f800000    # 1.0f

    .line 470
    .line 471
    const/4 v5, 0x0

    .line 472
    invoke-static {v5, v5, v4}, Lu1/f0;->f(FFF)F

    .line 473
    .line 474
    .line 475
    move-result v4

    .line 476
    iget v5, v0, Ly1/x;->T0:F

    .line 477
    .line 478
    cmpl-float v5, v5, v4

    .line 479
    .line 480
    if-nez v5, :cond_d

    .line 481
    .line 482
    goto :goto_a

    .line 483
    :cond_d
    iput v4, v0, Ly1/x;->T0:F

    .line 484
    .line 485
    iget-object v5, v0, Ly1/x;->l:Ly1/f0;

    .line 486
    .line 487
    iget-object v5, v5, Ly1/f0;->h:Lu1/b0;

    .line 488
    .line 489
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 490
    .line 491
    .line 492
    move-result-object v6

    .line 493
    const/16 v7, 0x20

    .line 494
    .line 495
    invoke-virtual {v5, v7, v6}, Lu1/b0;->b(ILjava/lang/Object;)Lu1/a0;

    .line 496
    .line 497
    .line 498
    move-result-object v5

    .line 499
    invoke-virtual {v5}, Lu1/a0;->b()V

    .line 500
    .line 501
    .line 502
    new-instance v5, Ly1/p;

    .line 503
    .line 504
    invoke-direct {v5, v4}, Ly1/p;-><init>(F)V

    .line 505
    .line 506
    .line 507
    iget-object v0, v0, Ly1/x;->m:Lu1/m;

    .line 508
    .line 509
    const/16 v4, 0x16

    .line 510
    .line 511
    invoke-virtual {v0, v4, v5}, Lu1/m;->e(ILu1/j;)V

    .line 512
    .line 513
    .line 514
    :goto_a
    iget-object v0, v1, Lya/l;->f:Ly1/x;

    .line 515
    .line 516
    invoke-virtual {v0}, Ly1/x;->M()Lr1/v0;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    check-cast v0, Lh2/i;

    .line 521
    .line 522
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 523
    .line 524
    .line 525
    new-instance v4, Lh2/h;

    .line 526
    .line 527
    invoke-direct {v4, v0}, Lh2/h;-><init>(Lh2/i;)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v4, v3, v3}, Lh2/h;->i(IZ)Lr1/u0;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v4}, Lr1/u0;->a()Lr1/v0;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    iget-object v4, v1, Lya/l;->f:Ly1/x;

    .line 538
    .line 539
    invoke-virtual {v4, v0}, Ly1/x;->a0(Lr1/v0;)V

    .line 540
    .line 541
    .line 542
    :try_start_0
    new-instance v0, Lr1/d;

    .line 543
    .line 544
    invoke-direct {v0, v2, v3}, Lr1/d;-><init>(II)V

    .line 545
    .line 546
    .line 547
    iget-object v2, v1, Lya/l;->f:Ly1/x;

    .line 548
    .line 549
    invoke-virtual {v2, v0}, Ly1/x;->X(Lr1/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    .line 551
    .line 552
    goto :goto_d

    .line 553
    :catch_0
    move-exception v0

    .line 554
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 555
    .line 556
    .line 557
    goto :goto_d

    .line 558
    :cond_e
    :try_start_1
    iget-object v0, v1, Lya/l;->d:Lz7/s;

    .line 559
    .line 560
    const-string v4, "usage"

    .line 561
    .line 562
    invoke-virtual {v0, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    invoke-virtual {v0}, Lz7/p;->e()I

    .line 567
    .line 568
    .line 569
    move-result v0

    .line 570
    new-instance v4, Lr1/d;

    .line 571
    .line 572
    invoke-direct {v4, v2, v0}, Lr1/d;-><init>(II)V

    .line 573
    .line 574
    .line 575
    iget-object v0, v1, Lya/l;->f:Ly1/x;

    .line 576
    .line 577
    invoke-virtual {v0, v4}, Ly1/x;->X(Lr1/d;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 578
    .line 579
    .line 580
    goto :goto_b

    .line 581
    :catch_1
    move-exception v0

    .line 582
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 583
    .line 584
    .line 585
    :goto_b
    iget-object v0, v1, Lya/l;->d:Lz7/s;

    .line 586
    .line 587
    const-string v2, "AudioDeviceId"

    .line 588
    .line 589
    invoke-virtual {v0, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 590
    .line 591
    .line 592
    move-result-object v0

    .line 593
    invoke-virtual {v0}, Lz7/p;->e()I

    .line 594
    .line 595
    .line 596
    move-result v0

    .line 597
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 598
    .line 599
    const/16 v4, 0x1c

    .line 600
    .line 601
    if-lt v2, v4, :cond_10

    .line 602
    .line 603
    if-eq v0, v14, :cond_10

    .line 604
    .line 605
    iget-object v2, v1, Lya/l;->g:Landroid/media/AudioManager;

    .line 606
    .line 607
    invoke-static {v2}, La2/a;->y(Landroid/media/AudioManager;)[Landroid/media/AudioDeviceInfo;

    .line 608
    .line 609
    .line 610
    move-result-object v2

    .line 611
    array-length v4, v2

    .line 612
    :goto_c
    if-ge v6, v4, :cond_10

    .line 613
    .line 614
    aget-object v5, v2, v6

    .line 615
    .line 616
    invoke-static {v5}, Ld2/c;->c(Landroid/media/AudioDeviceInfo;)I

    .line 617
    .line 618
    .line 619
    move-result v7

    .line 620
    if-ne v7, v0, :cond_f

    .line 621
    .line 622
    iget-object v0, v1, Lya/l;->f:Ly1/x;

    .line 623
    .line 624
    invoke-virtual {v0}, Ly1/x;->h0()V

    .line 625
    .line 626
    .line 627
    const/16 v2, 0xc

    .line 628
    .line 629
    invoke-virtual {v0, v3, v2, v5}, Ly1/x;->W(IILjava/lang/Object;)V

    .line 630
    .line 631
    .line 632
    goto :goto_d

    .line 633
    :cond_f
    add-int/2addr v6, v3

    .line 634
    goto :goto_c

    .line 635
    :cond_10
    :goto_d
    iget-object v0, v1, Lya/l;->f:Ly1/x;

    .line 636
    .line 637
    new-instance v2, Lya/k;

    .line 638
    .line 639
    invoke-direct {v2, v1}, Lya/k;-><init>(Lya/l;)V

    .line 640
    .line 641
    .line 642
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 643
    .line 644
    .line 645
    iget-object v0, v0, Ly1/x;->m:Lu1/m;

    .line 646
    .line 647
    invoke-virtual {v0, v2}, Lu1/m;->a(Ljava/lang/Object;)V

    .line 648
    .line 649
    .line 650
    iget-object v0, v1, Lya/l;->f:Ly1/x;

    .line 651
    .line 652
    invoke-virtual {v0}, Ly1/x;->S()V

    .line 653
    .line 654
    .line 655
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 9

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lv3/e0;

    .line 7
    .line 8
    iget-object v1, p0, Lya/l;->c:Lcom/yunpan/appmanage/service/AccService;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object v1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 14
    .line 15
    :goto_0
    invoke-direct {v0, v1}, Lv3/e0;-><init>(Landroid/content/ContextWrapper;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lya/l;->b:Lv3/e0;

    .line 19
    .line 20
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    .line 21
    .line 22
    const/4 v2, -0x1

    .line 23
    invoke-direct {v1, v2, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lya/l;->b:Lv3/e0;

    .line 30
    .line 31
    new-instance v1, Lua/e8;

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    invoke-direct {v1, v2, p0}, Lua/e8;-><init>(ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lya/l;->b:Lv3/e0;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Lv3/e0;->setUseController(Z)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lya/l;->b:Lv3/e0;

    .line 47
    .line 48
    const/4 v1, 0x4

    .line 49
    invoke-virtual {v0, v1}, Lv3/e0;->setResizeMode(I)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lya/l;->b:Lv3/e0;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    new-instance v1, Lua/c2;

    .line 59
    .line 60
    const/4 v2, 0x5

    .line 61
    invoke-direct {v1, v2, p0}, Lua/c2;-><init>(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lya/l;->c:Lcom/yunpan/appmanage/service/AccService;

    .line 68
    .line 69
    if-eqz v0, :cond_1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 73
    .line 74
    :goto_1
    invoke-static {v0}, Lif/a;->R(Landroid/content/Context;)Landroid/graphics/Point;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object v1, p0, Lya/l;->c:Lcom/yunpan/appmanage/service/AccService;

    .line 79
    .line 80
    const/16 v2, 0x7d2

    .line 81
    .line 82
    if-eqz v1, :cond_2

    .line 83
    .line 84
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 85
    .line 86
    const/16 v3, 0x16

    .line 87
    .line 88
    if-lt v1, v3, :cond_3

    .line 89
    .line 90
    const/16 v2, 0x7f0

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 94
    .line 95
    const/16 v3, 0x1a

    .line 96
    .line 97
    if-lt v1, v3, :cond_3

    .line 98
    .line 99
    const/16 v2, 0x7f6

    .line 100
    .line 101
    :cond_3
    :goto_2
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    iget-boolean v1, v1, Lwa/s;->a:Z

    .line 106
    .line 107
    if-eqz v1, :cond_4

    .line 108
    .line 109
    const/16 v2, 0x7d6

    .line 110
    .line 111
    const/16 v6, 0x7d6

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_4
    move v6, v2

    .line 115
    :goto_3
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    .line 116
    .line 117
    iget v4, v0, Landroid/graphics/Point;->x:I

    .line 118
    .line 119
    iget v5, v0, Landroid/graphics/Point;->y:I

    .line 120
    .line 121
    const/16 v7, 0x328

    .line 122
    .line 123
    const/4 v8, -0x3

    .line 124
    move-object v3, v1

    .line 125
    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 126
    .line 127
    .line 128
    iput-object v1, p0, Lya/l;->e:Landroid/view/WindowManager$LayoutParams;

    .line 129
    .line 130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 131
    .line 132
    const/16 v2, 0x1c

    .line 133
    .line 134
    if-lt v0, v2, :cond_5

    .line 135
    .line 136
    invoke-static {v1}, Landroidx/emoji2/text/b;->x(Landroid/view/WindowManager$LayoutParams;)V

    .line 137
    .line 138
    .line 139
    :cond_5
    iget-object v0, p0, Lya/l;->e:Landroid/view/WindowManager$LayoutParams;

    .line 140
    .line 141
    const v1, 0x800033

    .line 142
    .line 143
    .line 144
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 145
    .line 146
    iget-object v1, p0, Lya/l;->a:Landroid/view/WindowManager;

    .line 147
    .line 148
    iget-object v2, p0, Lya/l;->b:Lv3/e0;

    .line 149
    .line 150
    invoke-interface {v1, v2, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    .line 152
    .line 153
    return-void
.end method

.method public final c()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lya/l;->i:Landroid/os/Handler;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    :catch_0
    :try_start_1
    iget-object v1, p0, Lya/l;->h:Landroid/media/audiofx/LoudnessEnhancer;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-static {v1}, Lcom/hierynomus/security/jce/a;->r(Landroid/media/audiofx/LoudnessEnhancer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 12
    .line 13
    .line 14
    :catch_1
    :cond_0
    :try_start_2
    iget-object v1, p0, Lya/l;->f:Ly1/x;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1}, Ly1/x;->h0()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ly1/x;->c0(Ly1/k;)V

    .line 22
    .line 23
    .line 24
    new-instance v2, Lt1/c;

    .line 25
    .line 26
    sget-object v3, Lu7/y0;->e:Lu7/y0;

    .line 27
    .line 28
    iget-object v4, v1, Ly1/x;->f1:Ly1/v0;

    .line 29
    .line 30
    iget-wide v4, v4, Ly1/v0;->s:J

    .line 31
    .line 32
    invoke-direct {v2, v3}, Lt1/c;-><init>(Ljava/util/List;)V

    .line 33
    .line 34
    .line 35
    iput-object v2, v1, Ly1/x;->V0:Lt1/c;

    .line 36
    .line 37
    iget-object v1, p0, Lya/l;->f:Ly1/x;

    .line 38
    .line 39
    invoke-virtual {v1}, Ly1/x;->T()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 40
    .line 41
    .line 42
    :catch_2
    :cond_1
    :try_start_3
    iget v1, p0, Lya/l;->j:I

    .line 43
    .line 44
    if-ltz v1, :cond_2

    .line 45
    .line 46
    iget v2, p0, Lya/l;->k:I

    .line 47
    .line 48
    if-ltz v2, :cond_2

    .line 49
    .line 50
    iget-object v3, p0, Lya/l;->g:Landroid/media/AudioManager;

    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    invoke-virtual {v3, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 54
    .line 55
    .line 56
    const/4 v1, -0x1

    .line 57
    iput v1, p0, Lya/l;->j:I

    .line 58
    .line 59
    iput v1, p0, Lya/l;->k:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_3
    move-exception v1

    .line 63
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 64
    .line 65
    .line 66
    :cond_2
    :goto_0
    iget-object v1, p0, Lya/l;->a:Landroid/view/WindowManager;

    .line 67
    .line 68
    iget-object v2, p0, Lya/l;->b:Lv3/e0;

    .line 69
    .line 70
    invoke-interface {v1, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, Lya/l;->c:Lcom/yunpan/appmanage/service/AccService;

    .line 74
    .line 75
    iput-object v0, p0, Lya/l;->d:Lz7/s;

    .line 76
    .line 77
    iput-object v0, p0, Lya/l;->a:Landroid/view/WindowManager;

    .line 78
    .line 79
    iput-object v0, p0, Lya/l;->e:Landroid/view/WindowManager$LayoutParams;

    .line 80
    .line 81
    iput-object v0, p0, Lya/l;->g:Landroid/media/AudioManager;

    .line 82
    .line 83
    iput-object v0, p0, Lya/l;->f:Ly1/x;

    .line 84
    .line 85
    iput-object v0, p0, Lya/l;->i:Landroid/os/Handler;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 86
    .line 87
    :catch_4
    return-void
.end method
