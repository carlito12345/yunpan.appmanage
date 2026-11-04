.class public Lua/i9;
.super Lda/h;
.source "SourceFile"


# instance fields
.field public A:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public B:Landroid/widget/TextView;

.field public final C:Ljava/util/concurrent/atomic/AtomicInteger;

.field public D:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public F:Lx9/c6;

.field public G:Landroid/widget/LinearLayout;

.field public H:Landroid/widget/TextView;

.field public I:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public K:Landroid/widget/TextView;

.field public L:Landroid/widget/LinearLayout;

.field public M:Landroid/widget/ImageView;

.field public N:Landroid/widget/TextView;

.field public O:Landroid/widget/LinearLayout;

.field public P:Landroid/widget/ImageView;

.field public R:Landroid/widget/TextView;

.field public S:Lcom/yunpan/appmanage/view/HiveProgressView;

.field public T:I

.field public V:I

.field public X:Landroid/view/View;

.field public final Y:Ljava/util/ArrayList;

.field public final Z:Lcom/yunpan/appmanage/carsdk/u;

.field public g:Lha/ve;

.field public h:Lha/u9;

.field public i:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public j:Lx9/o5;

.field public k:Lcom/recycleview/MyRecycleView;

.field public l:Lx9/s5;

.field public m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public n:Lx9/a6;

.field public p:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public q:Lx9/y5;

.field public r:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public s:Lx9/h0;

.field public t:Lcom/recycleview/MyRecycleView;

.field public v:Lx9/s5;

.field public w:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public x:Lx9/g0;

.field public y:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public z:Lx9/f0;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lda/h;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lua/i9;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lua/i9;->T:I

    .line 14
    .line 15
    iput v0, p0, Lua/i9;->V:I

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lua/i9;->Y:Ljava/util/ArrayList;

    .line 23
    .line 24
    new-instance v0, Lcom/yunpan/appmanage/carsdk/u;

    .line 25
    .line 26
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const/16 v2, 0x18

    .line 31
    .line 32
    invoke-direct {v0, p0, v1, v2}, Lcom/yunpan/appmanage/carsdk/u;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lua/i9;->Z:Lcom/yunpan/appmanage/carsdk/u;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 11

    .line 1
    const/4 v0, 0x7

    .line 2
    const/4 v1, 0x5

    .line 3
    const/16 v2, 0x14

    .line 4
    .line 5
    const/4 v3, 0x3

    .line 6
    const/4 v4, 0x1

    .line 7
    const/4 v5, 0x0

    .line 8
    iget-object v6, p0, Lua/i9;->j:Lx9/o5;

    .line 9
    .line 10
    iget v7, p0, Lua/i9;->T:I

    .line 11
    .line 12
    invoke-virtual {v6, v7}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v6

    .line 16
    check-cast v6, Lx9/n5;

    .line 17
    .line 18
    iget-object v7, v6, Lx9/n5;->g:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    if-eqz v7, :cond_0

    .line 25
    .line 26
    invoke-virtual {v6}, Lx9/n5;->b()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    invoke-static {v7}, Lif/a;->p0(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    iput-object v7, v6, Lx9/n5;->g:Ljava/lang/String;

    .line 35
    .line 36
    :cond_0
    sget-object v7, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 37
    .line 38
    sget-object v7, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 39
    .line 40
    new-instance v8, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    iget-object v9, v7, Lcom/yunpan/appmanage/util/k;->z:Ljava/lang/String;

    .line 46
    .line 47
    const-string v10, "wp_image_cache/"

    .line 48
    .line 49
    invoke-static {v9, v10, v8}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    iput-object v8, v7, Lcom/yunpan/appmanage/util/k;->Y:Ljava/lang/String;

    .line 54
    .line 55
    :try_start_0
    new-instance v8, Ljava/io/File;

    .line 56
    .line 57
    iget-object v7, v7, Lcom/yunpan/appmanage/util/k;->Y:Ljava/lang/String;

    .line 58
    .line 59
    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    :catch_0
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    sget-object v8, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 71
    .line 72
    iget-object v8, v8, Lcom/yunpan/appmanage/util/k;->Y:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget-object v8, v6, Lx9/n5;->g:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v8, "/"

    .line 83
    .line 84
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    new-instance v8, Ljava/io/File;

    .line 92
    .line 93
    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :catch_1
    nop

    .line 101
    :goto_0
    iget-object v7, p0, Lua/i9;->n:Lx9/a6;

    .line 102
    .line 103
    new-instance v8, Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v7, v8}, Lc6/g;->E(Ljava/util/List;)V

    .line 109
    .line 110
    .line 111
    iget-object v7, p0, Lua/i9;->q:Lx9/y5;

    .line 112
    .line 113
    new-instance v8, Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v7, v8}, Lc6/g;->E(Ljava/util/List;)V

    .line 119
    .line 120
    .line 121
    iget-object v7, p0, Lua/i9;->I:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 122
    .line 123
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    iget-object v7, p0, Lua/i9;->K:Landroid/widget/TextView;

    .line 127
    .line 128
    const-string v8, "\u9a8c\u8bc1\u4e2d"

    .line 129
    .line 130
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    .line 132
    .line 133
    iget v7, v6, Lx9/n5;->a:I

    .line 134
    .line 135
    if-ne v7, v4, :cond_1

    .line 136
    .line 137
    new-instance v0, Lba/f;

    .line 138
    .line 139
    invoke-direct {v0, v4, v6}, Lba/f;-><init>(ILx9/n5;)V

    .line 140
    .line 141
    .line 142
    new-instance v1, Lmc/c;

    .line 143
    .line 144
    invoke-direct {v1, v5, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 148
    .line 149
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    goto/16 :goto_1

    .line 162
    .line 163
    :cond_1
    const/4 v4, 0x2

    .line 164
    if-ne v7, v4, :cond_2

    .line 165
    .line 166
    new-instance v0, Lba/f;

    .line 167
    .line 168
    invoke-direct {v0, v3, v6}, Lba/f;-><init>(ILx9/n5;)V

    .line 169
    .line 170
    .line 171
    new-instance v1, Lmc/c;

    .line 172
    .line 173
    invoke-direct {v1, v5, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 177
    .line 178
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    goto/16 :goto_1

    .line 191
    .line 192
    :cond_2
    if-ne v7, v2, :cond_3

    .line 193
    .line 194
    new-instance v0, Lba/f;

    .line 195
    .line 196
    invoke-direct {v0, v1, v6}, Lba/f;-><init>(ILx9/n5;)V

    .line 197
    .line 198
    .line 199
    new-instance v1, Lmc/c;

    .line 200
    .line 201
    invoke-direct {v1, v5, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 205
    .line 206
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    goto/16 :goto_1

    .line 219
    .line 220
    :cond_3
    const/16 v4, 0x15

    .line 221
    .line 222
    if-ne v7, v4, :cond_4

    .line 223
    .line 224
    new-instance v0, Lba/f;

    .line 225
    .line 226
    invoke-direct {v0, v5, v6}, Lba/f;-><init>(ILx9/n5;)V

    .line 227
    .line 228
    .line 229
    new-instance v1, Lmc/c;

    .line 230
    .line 231
    invoke-direct {v1, v5, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 235
    .line 236
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    goto/16 :goto_1

    .line 249
    .line 250
    :cond_4
    if-ne v7, v3, :cond_5

    .line 251
    .line 252
    new-instance v0, Lba/f;

    .line 253
    .line 254
    const/16 v1, 0x10

    .line 255
    .line 256
    invoke-direct {v0, v1, v6}, Lba/f;-><init>(ILx9/n5;)V

    .line 257
    .line 258
    .line 259
    new-instance v1, Lmc/c;

    .line 260
    .line 261
    invoke-direct {v1, v5, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 265
    .line 266
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    goto/16 :goto_1

    .line 279
    .line 280
    :cond_5
    const/4 v3, 0x4

    .line 281
    if-ne v7, v3, :cond_6

    .line 282
    .line 283
    new-instance v1, Lba/f;

    .line 284
    .line 285
    invoke-direct {v1, v0, v6}, Lba/f;-><init>(ILx9/n5;)V

    .line 286
    .line 287
    .line 288
    new-instance v0, Lmc/c;

    .line 289
    .line 290
    invoke-direct {v0, v5, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 294
    .line 295
    invoke-virtual {v0, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    goto :goto_1

    .line 308
    :cond_6
    if-ne v7, v1, :cond_7

    .line 309
    .line 310
    new-instance v0, Lba/f;

    .line 311
    .line 312
    const/16 v1, 0xa

    .line 313
    .line 314
    invoke-direct {v0, v1, v6}, Lba/f;-><init>(ILx9/n5;)V

    .line 315
    .line 316
    .line 317
    new-instance v1, Lmc/c;

    .line 318
    .line 319
    invoke-direct {v1, v5, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 323
    .line 324
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    goto :goto_1

    .line 337
    :cond_7
    const/4 v1, 0x6

    .line 338
    if-ne v7, v1, :cond_8

    .line 339
    .line 340
    new-instance v0, Lba/f;

    .line 341
    .line 342
    const/16 v1, 0xd

    .line 343
    .line 344
    invoke-direct {v0, v1, v6}, Lba/f;-><init>(ILx9/n5;)V

    .line 345
    .line 346
    .line 347
    new-instance v1, Lmc/c;

    .line 348
    .line 349
    invoke-direct {v1, v5, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 353
    .line 354
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    goto :goto_1

    .line 367
    :cond_8
    if-ne v7, v0, :cond_9

    .line 368
    .line 369
    new-instance v0, Lba/f;

    .line 370
    .line 371
    const/16 v1, 0x11

    .line 372
    .line 373
    invoke-direct {v0, v1, v6}, Lba/f;-><init>(ILx9/n5;)V

    .line 374
    .line 375
    .line 376
    new-instance v1, Lmc/c;

    .line 377
    .line 378
    invoke-direct {v1, v5, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 379
    .line 380
    .line 381
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 382
    .line 383
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    :goto_1
    new-instance v1, Lha/h3;

    .line 396
    .line 397
    invoke-direct {v1, p0, v2, v6}, Lha/h3;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 401
    .line 402
    .line 403
    :cond_9
    return-void
.end method

.method public final j()I
    .locals 1

    .line 1
    const v0, 0x7f0e0116

    .line 2
    .line 3
    .line 4
    return v0
.end method

.method public final k()V
    .locals 10

    .line 1
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lkh/e;->j(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lha/ve;

    .line 9
    .line 10
    iget-object v1, p0, Lda/h;->f:Landroid/app/Activity;

    .line 11
    .line 12
    iget-object v2, p0, Lda/h;->e:Landroid/content/Context;

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Lha/ve;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lua/i9;->g:Lha/ve;

    .line 18
    .line 19
    new-instance v0, Lha/u9;

    .line 20
    .line 21
    iget-object v1, p0, Lda/h;->f:Landroid/app/Activity;

    .line 22
    .line 23
    iget-object v2, p0, Lda/h;->e:Landroid/content/Context;

    .line 24
    .line 25
    invoke-direct {v0, v1, v2}, Lha/u9;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lua/i9;->h:Lha/u9;

    .line 29
    .line 30
    const v0, 0x7f0b0513

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lda/h;->i(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 38
    .line 39
    iput-object v0, p0, Lua/i9;->I:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 40
    .line 41
    const/16 v1, 0x8

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    const v0, 0x7f0b0514

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lda/h;->i(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroid/widget/TextView;

    .line 54
    .line 55
    iput-object v0, p0, Lua/i9;->K:Landroid/widget/TextView;

    .line 56
    .line 57
    const v0, 0x7f0b04ab

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0}, Lda/h;->i(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 65
    .line 66
    iput-object v0, p0, Lua/i9;->i:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 67
    .line 68
    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 69
    .line 70
    iget-object v3, p0, Lda/h;->e:Landroid/content/Context;

    .line 71
    .line 72
    const/4 v4, 0x0

    .line 73
    invoke-direct {v2, v3, v4, v4}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 77
    .line 78
    .line 79
    new-instance v0, Lx9/o5;

    .line 80
    .line 81
    invoke-direct {v0}, Lx9/o5;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object v0, p0, Lua/i9;->j:Lx9/o5;

    .line 85
    .line 86
    iget-object v2, p0, Lua/i9;->i:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 87
    .line 88
    invoke-virtual {v2, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 89
    .line 90
    .line 91
    const v0, 0x7f0b0425

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v0}, Lda/h;->i(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Lcom/recycleview/MyRecycleView;

    .line 99
    .line 100
    iput-object v0, p0, Lua/i9;->k:Lcom/recycleview/MyRecycleView;

    .line 101
    .line 102
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 103
    .line 104
    invoke-direct {v2, v4, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 108
    .line 109
    .line 110
    new-instance v0, Lx9/s5;

    .line 111
    .line 112
    invoke-direct {v0}, Lx9/s5;-><init>()V

    .line 113
    .line 114
    .line 115
    iput-object v0, p0, Lua/i9;->l:Lx9/s5;

    .line 116
    .line 117
    const-string v2, "\u5207\u6362"

    .line 118
    .line 119
    invoke-virtual {v0, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lua/i9;->l:Lx9/s5;

    .line 123
    .line 124
    const-string v3, "\u65b0\u5efa"

    .line 125
    .line 126
    invoke-virtual {v0, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lua/i9;->l:Lx9/s5;

    .line 130
    .line 131
    const-string v5, "\u5237\u65b0"

    .line 132
    .line 133
    invoke-virtual {v0, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lua/i9;->k:Lcom/recycleview/MyRecycleView;

    .line 137
    .line 138
    iget-object v5, p0, Lua/i9;->l:Lx9/s5;

    .line 139
    .line 140
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 141
    .line 142
    .line 143
    const v0, 0x7f0b0532

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v0}, Lda/h;->i(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 151
    .line 152
    iput-object v0, p0, Lua/i9;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 153
    .line 154
    new-instance v5, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 155
    .line 156
    iget-object v6, p0, Lda/h;->e:Landroid/content/Context;

    .line 157
    .line 158
    invoke-direct {v5, v6, v4, v4}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 162
    .line 163
    .line 164
    new-instance v0, Lx9/a6;

    .line 165
    .line 166
    invoke-direct {v0}, Lx9/a6;-><init>()V

    .line 167
    .line 168
    .line 169
    iput-object v0, p0, Lua/i9;->n:Lx9/a6;

    .line 170
    .line 171
    iget-object v5, p0, Lua/i9;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 172
    .line 173
    invoke-virtual {v5, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 174
    .line 175
    .line 176
    const v0, 0x7f0b047b

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0, v0}, Lda/h;->i(I)Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 184
    .line 185
    iput-object v0, p0, Lua/i9;->p:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 186
    .line 187
    const/4 v5, 0x1

    .line 188
    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 189
    .line 190
    .line 191
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 192
    .line 193
    iget v6, v0, Lcom/yunpan/appmanage/util/w;->I0:I

    .line 194
    .line 195
    const/4 v7, 0x2

    .line 196
    if-nez v6, :cond_0

    .line 197
    .line 198
    iget-object v6, p0, Lua/i9;->p:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 199
    .line 200
    new-instance v8, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 201
    .line 202
    iget-object v9, p0, Lda/h;->e:Landroid/content/Context;

    .line 203
    .line 204
    invoke-direct {v8, v9, v5, v4}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 208
    .line 209
    .line 210
    goto :goto_0

    .line 211
    :cond_0
    iget-object v6, p0, Lua/i9;->p:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 212
    .line 213
    new-instance v8, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 214
    .line 215
    iget-object v9, p0, Lda/h;->e:Landroid/content/Context;

    .line 216
    .line 217
    invoke-direct {v8, v9, v7}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 221
    .line 222
    .line 223
    :goto_0
    new-instance v6, Lx9/y5;

    .line 224
    .line 225
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 226
    .line 227
    .line 228
    move-result-object v8

    .line 229
    iget-object v9, p0, Lua/i9;->Z:Lcom/yunpan/appmanage/carsdk/u;

    .line 230
    .line 231
    invoke-direct {v6, v8, v9}, Lx9/y5;-><init>(Landroid/content/Context;Lcom/yunpan/appmanage/carsdk/u;)V

    .line 232
    .line 233
    .line 234
    iput-object v6, p0, Lua/i9;->q:Lx9/y5;

    .line 235
    .line 236
    iget-object v8, p0, Lua/i9;->p:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 237
    .line 238
    invoke-virtual {v8, v6}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 239
    .line 240
    .line 241
    const v6, 0x7f0b0515

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0, v6}, Lda/h;->i(I)Landroid/view/View;

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    check-cast v6, Landroid/widget/LinearLayout;

    .line 249
    .line 250
    iput-object v6, p0, Lua/i9;->G:Landroid/widget/LinearLayout;

    .line 251
    .line 252
    const v6, 0x7f0b0516

    .line 253
    .line 254
    .line 255
    invoke-virtual {p0, v6}, Lda/h;->i(I)Landroid/view/View;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    check-cast v6, Landroid/widget/TextView;

    .line 260
    .line 261
    iput-object v6, p0, Lua/i9;->H:Landroid/widget/TextView;

    .line 262
    .line 263
    iget-object v6, p0, Lua/i9;->G:Landroid/widget/LinearLayout;

    .line 264
    .line 265
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 266
    .line 267
    .line 268
    iget-object v6, p0, Lua/i9;->p:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 269
    .line 270
    const/4 v8, 0x3

    .line 271
    invoke-virtual {v6, v8}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setLoadMoreBeforehandCount(I)V

    .line 272
    .line 273
    .line 274
    iget-object v6, p0, Lua/i9;->p:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 275
    .line 276
    new-instance v8, Lua/r8;

    .line 277
    .line 278
    const/16 v9, 0xd

    .line 279
    .line 280
    invoke-direct {v8, p0, v9}, Lua/r8;-><init>(Lua/i9;I)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v6, v8}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnLoadMoreListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnLoadMoreListener;)V

    .line 284
    .line 285
    .line 286
    const v6, 0x7f0b04ac

    .line 287
    .line 288
    .line 289
    invoke-virtual {p0, v6}, Lda/h;->i(I)Landroid/view/View;

    .line 290
    .line 291
    .line 292
    move-result-object v6

    .line 293
    check-cast v6, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 294
    .line 295
    iput-object v6, p0, Lua/i9;->r:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 296
    .line 297
    new-instance v8, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 298
    .line 299
    iget-object v9, p0, Lda/h;->e:Landroid/content/Context;

    .line 300
    .line 301
    invoke-direct {v8, v9, v4, v4}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 305
    .line 306
    .line 307
    new-instance v6, Lx9/h0;

    .line 308
    .line 309
    invoke-direct {v6}, Lx9/h0;-><init>()V

    .line 310
    .line 311
    .line 312
    iput-object v6, p0, Lua/i9;->s:Lx9/h0;

    .line 313
    .line 314
    iget-object v8, p0, Lua/i9;->r:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 315
    .line 316
    invoke-virtual {v8, v6}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 317
    .line 318
    .line 319
    const v6, 0x7f0b0426

    .line 320
    .line 321
    .line 322
    invoke-virtual {p0, v6}, Lda/h;->i(I)Landroid/view/View;

    .line 323
    .line 324
    .line 325
    move-result-object v6

    .line 326
    check-cast v6, Lcom/recycleview/MyRecycleView;

    .line 327
    .line 328
    iput-object v6, p0, Lua/i9;->t:Lcom/recycleview/MyRecycleView;

    .line 329
    .line 330
    new-instance v8, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 331
    .line 332
    invoke-direct {v8, v4, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 336
    .line 337
    .line 338
    new-instance v6, Lx9/s5;

    .line 339
    .line 340
    invoke-direct {v6}, Lx9/s5;-><init>()V

    .line 341
    .line 342
    .line 343
    iput-object v6, p0, Lua/i9;->v:Lx9/s5;

    .line 344
    .line 345
    invoke-virtual {v6, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    iget-object v3, p0, Lua/i9;->v:Lx9/s5;

    .line 349
    .line 350
    invoke-virtual {v3, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 351
    .line 352
    .line 353
    iget-object v2, p0, Lua/i9;->t:Lcom/recycleview/MyRecycleView;

    .line 354
    .line 355
    iget-object v3, p0, Lua/i9;->v:Lx9/s5;

    .line 356
    .line 357
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 358
    .line 359
    .line 360
    const v2, 0x7f0b0533

    .line 361
    .line 362
    .line 363
    invoke-virtual {p0, v2}, Lda/h;->i(I)Landroid/view/View;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    check-cast v2, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 368
    .line 369
    iput-object v2, p0, Lua/i9;->w:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 370
    .line 371
    new-instance v3, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 372
    .line 373
    iget-object v6, p0, Lda/h;->e:Landroid/content/Context;

    .line 374
    .line 375
    invoke-direct {v3, v6, v4, v4}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 379
    .line 380
    .line 381
    new-instance v2, Lx9/g0;

    .line 382
    .line 383
    invoke-direct {v2}, Lx9/g0;-><init>()V

    .line 384
    .line 385
    .line 386
    iput-object v2, p0, Lua/i9;->x:Lx9/g0;

    .line 387
    .line 388
    iget-object v3, p0, Lua/i9;->w:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 389
    .line 390
    invoke-virtual {v3, v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 391
    .line 392
    .line 393
    const v2, 0x7f0b047c

    .line 394
    .line 395
    .line 396
    invoke-virtual {p0, v2}, Lda/h;->i(I)Landroid/view/View;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    check-cast v2, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 401
    .line 402
    iput-object v2, p0, Lua/i9;->y:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 403
    .line 404
    invoke-virtual {v2, v5}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 405
    .line 406
    .line 407
    iget v0, v0, Lcom/yunpan/appmanage/util/w;->J0:I

    .line 408
    .line 409
    if-nez v0, :cond_1

    .line 410
    .line 411
    iget-object v0, p0, Lua/i9;->y:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 412
    .line 413
    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 414
    .line 415
    iget-object v3, p0, Lda/h;->e:Landroid/content/Context;

    .line 416
    .line 417
    invoke-direct {v2, v3, v5, v4}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 421
    .line 422
    .line 423
    goto :goto_1

    .line 424
    :cond_1
    iget-object v0, p0, Lua/i9;->y:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 425
    .line 426
    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 427
    .line 428
    iget-object v3, p0, Lda/h;->e:Landroid/content/Context;

    .line 429
    .line 430
    invoke-direct {v2, v3, v7}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 434
    .line 435
    .line 436
    :goto_1
    new-instance v0, Lx9/f0;

    .line 437
    .line 438
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 439
    .line 440
    .line 441
    move-result-object v2

    .line 442
    invoke-direct {v0, v2}, Lx9/f0;-><init>(Landroid/content/Context;)V

    .line 443
    .line 444
    .line 445
    iput-object v0, p0, Lua/i9;->z:Lx9/f0;

    .line 446
    .line 447
    iget-object v2, p0, Lua/i9;->y:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 448
    .line 449
    invoke-virtual {v2, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 450
    .line 451
    .line 452
    const v0, 0x7f0b04ae

    .line 453
    .line 454
    .line 455
    invoke-virtual {p0, v0}, Lda/h;->i(I)Landroid/view/View;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    check-cast v0, Landroid/widget/TextView;

    .line 460
    .line 461
    const v0, 0x7f0b0536

    .line 462
    .line 463
    .line 464
    invoke-virtual {p0, v0}, Lda/h;->i(I)Landroid/view/View;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    check-cast v0, Landroid/widget/TextView;

    .line 469
    .line 470
    const v0, 0x7f0b054a

    .line 471
    .line 472
    .line 473
    invoke-virtual {p0, v0}, Lda/h;->i(I)Landroid/view/View;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    check-cast v0, Landroid/widget/LinearLayout;

    .line 478
    .line 479
    iput-object v0, p0, Lua/i9;->L:Landroid/widget/LinearLayout;

    .line 480
    .line 481
    const v0, 0x7f0b0547

    .line 482
    .line 483
    .line 484
    invoke-virtual {p0, v0}, Lda/h;->i(I)Landroid/view/View;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    check-cast v0, Landroid/widget/ImageView;

    .line 489
    .line 490
    iput-object v0, p0, Lua/i9;->M:Landroid/widget/ImageView;

    .line 491
    .line 492
    const v0, 0x7f0b054d

    .line 493
    .line 494
    .line 495
    invoke-virtual {p0, v0}, Lda/h;->i(I)Landroid/view/View;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    check-cast v0, Landroid/widget/TextView;

    .line 500
    .line 501
    iput-object v0, p0, Lua/i9;->N:Landroid/widget/TextView;

    .line 502
    .line 503
    iget-object v0, p0, Lua/i9;->L:Landroid/widget/LinearLayout;

    .line 504
    .line 505
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 506
    .line 507
    .line 508
    const v0, 0x7f0b054b

    .line 509
    .line 510
    .line 511
    invoke-virtual {p0, v0}, Lda/h;->i(I)Landroid/view/View;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    check-cast v0, Landroid/widget/LinearLayout;

    .line 516
    .line 517
    iput-object v0, p0, Lua/i9;->O:Landroid/widget/LinearLayout;

    .line 518
    .line 519
    const v0, 0x7f0b0548

    .line 520
    .line 521
    .line 522
    invoke-virtual {p0, v0}, Lda/h;->i(I)Landroid/view/View;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    check-cast v0, Landroid/widget/ImageView;

    .line 527
    .line 528
    iput-object v0, p0, Lua/i9;->P:Landroid/widget/ImageView;

    .line 529
    .line 530
    const v0, 0x7f0b054e

    .line 531
    .line 532
    .line 533
    invoke-virtual {p0, v0}, Lda/h;->i(I)Landroid/view/View;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    check-cast v0, Landroid/widget/TextView;

    .line 538
    .line 539
    iput-object v0, p0, Lua/i9;->R:Landroid/widget/TextView;

    .line 540
    .line 541
    iget-object v0, p0, Lua/i9;->O:Landroid/widget/LinearLayout;

    .line 542
    .line 543
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 544
    .line 545
    .line 546
    const v0, 0x7f0b0545

    .line 547
    .line 548
    .line 549
    invoke-virtual {p0, v0}, Lda/h;->i(I)Landroid/view/View;

    .line 550
    .line 551
    .line 552
    move-result-object v0

    .line 553
    check-cast v0, Lcom/yunpan/appmanage/view/HiveProgressView;

    .line 554
    .line 555
    iput-object v0, p0, Lua/i9;->S:Lcom/yunpan/appmanage/view/HiveProgressView;

    .line 556
    .line 557
    invoke-virtual {v0, v1}, Lcom/yunpan/appmanage/view/HiveProgressView;->setVisibility(I)V

    .line 558
    .line 559
    .line 560
    const v0, 0x7f0b058d

    .line 561
    .line 562
    .line 563
    invoke-virtual {p0, v0}, Lda/h;->i(I)Landroid/view/View;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 568
    .line 569
    iput-object v0, p0, Lua/i9;->D:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 570
    .line 571
    new-instance v1, Lua/v8;

    .line 572
    .line 573
    const/4 v2, 0x0

    .line 574
    invoke-direct {v1, p0, v2}, Lua/v8;-><init>(Lua/i9;I)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 578
    .line 579
    .line 580
    const v0, 0x7f0b058c

    .line 581
    .line 582
    .line 583
    invoke-virtual {p0, v0}, Lda/h;->i(I)Landroid/view/View;

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 588
    .line 589
    iput-object v0, p0, Lua/i9;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 590
    .line 591
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 592
    .line 593
    iget-object v2, p0, Lda/h;->e:Landroid/content/Context;

    .line 594
    .line 595
    invoke-direct {v1, v2, v5, v4}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 599
    .line 600
    .line 601
    new-instance v0, Lx9/c6;

    .line 602
    .line 603
    invoke-direct {v0}, Lx9/c6;-><init>()V

    .line 604
    .line 605
    .line 606
    iput-object v0, p0, Lua/i9;->F:Lx9/c6;

    .line 607
    .line 608
    iget-object v1, p0, Lua/i9;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 609
    .line 610
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 611
    .line 612
    .line 613
    iget-object v0, p0, Lua/i9;->F:Lx9/c6;

    .line 614
    .line 615
    new-instance v1, Lua/r8;

    .line 616
    .line 617
    const/16 v2, 0x8

    .line 618
    .line 619
    invoke-direct {v1, p0, v2}, Lua/r8;-><init>(Lua/i9;I)V

    .line 620
    .line 621
    .line 622
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 623
    .line 624
    const v0, 0x7f0b03dc

    .line 625
    .line 626
    .line 627
    invoke-virtual {p0, v0}, Lda/h;->i(I)Landroid/view/View;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 632
    .line 633
    iput-object v0, p0, Lua/i9;->A:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 634
    .line 635
    const v0, 0x7f0b03dd

    .line 636
    .line 637
    .line 638
    invoke-virtual {p0, v0}, Lda/h;->i(I)Landroid/view/View;

    .line 639
    .line 640
    .line 641
    move-result-object v0

    .line 642
    check-cast v0, Landroid/widget/TextView;

    .line 643
    .line 644
    iput-object v0, p0, Lua/i9;->B:Landroid/widget/TextView;

    .line 645
    .line 646
    iget-object v0, p0, Lua/i9;->A:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 647
    .line 648
    new-instance v1, Lua/v8;

    .line 649
    .line 650
    const/4 v2, 0x1

    .line 651
    invoke-direct {v1, p0, v2}, Lua/v8;-><init>(Lua/i9;I)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 655
    .line 656
    .line 657
    iget-object v0, p0, Lua/i9;->j:Lx9/o5;

    .line 658
    .line 659
    new-instance v1, Lua/r8;

    .line 660
    .line 661
    const/4 v2, 0x0

    .line 662
    invoke-direct {v1, p0, v2}, Lua/r8;-><init>(Lua/i9;I)V

    .line 663
    .line 664
    .line 665
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 666
    .line 667
    new-instance v1, Lua/r8;

    .line 668
    .line 669
    const/4 v2, 0x7

    .line 670
    invoke-direct {v1, p0, v2}, Lua/r8;-><init>(Lua/i9;I)V

    .line 671
    .line 672
    .line 673
    iput-object v1, v0, Lc6/g;->f:Lc6/f;

    .line 674
    .line 675
    iget-object v0, p0, Lua/i9;->l:Lx9/s5;

    .line 676
    .line 677
    new-instance v1, Lua/r8;

    .line 678
    .line 679
    const/16 v2, 0xe

    .line 680
    .line 681
    invoke-direct {v1, p0, v2}, Lua/r8;-><init>(Lua/i9;I)V

    .line 682
    .line 683
    .line 684
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 685
    .line 686
    iget-object v0, p0, Lua/i9;->n:Lx9/a6;

    .line 687
    .line 688
    new-instance v1, Lua/r8;

    .line 689
    .line 690
    const/16 v2, 0x11

    .line 691
    .line 692
    invoke-direct {v1, p0, v2}, Lua/r8;-><init>(Lua/i9;I)V

    .line 693
    .line 694
    .line 695
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 696
    .line 697
    iget-object v0, p0, Lua/i9;->q:Lx9/y5;

    .line 698
    .line 699
    new-instance v1, Lua/r8;

    .line 700
    .line 701
    const/16 v2, 0x13

    .line 702
    .line 703
    invoke-direct {v1, p0, v2}, Lua/r8;-><init>(Lua/i9;I)V

    .line 704
    .line 705
    .line 706
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 707
    .line 708
    new-instance v1, Lua/r8;

    .line 709
    .line 710
    const/16 v2, 0x14

    .line 711
    .line 712
    invoke-direct {v1, p0, v2}, Lua/r8;-><init>(Lua/i9;I)V

    .line 713
    .line 714
    .line 715
    iput-object v1, v0, Lc6/g;->f:Lc6/f;

    .line 716
    .line 717
    iget-object v0, p0, Lua/i9;->s:Lx9/h0;

    .line 718
    .line 719
    new-instance v1, Lua/r8;

    .line 720
    .line 721
    const/4 v2, 0x2

    .line 722
    invoke-direct {v1, p0, v2}, Lua/r8;-><init>(Lua/i9;I)V

    .line 723
    .line 724
    .line 725
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 726
    .line 727
    iget-object v0, p0, Lua/i9;->v:Lx9/s5;

    .line 728
    .line 729
    new-instance v1, Lua/r8;

    .line 730
    .line 731
    const/4 v2, 0x3

    .line 732
    invoke-direct {v1, p0, v2}, Lua/r8;-><init>(Lua/i9;I)V

    .line 733
    .line 734
    .line 735
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 736
    .line 737
    iget-object v0, p0, Lua/i9;->x:Lx9/g0;

    .line 738
    .line 739
    new-instance v1, Lua/r8;

    .line 740
    .line 741
    const/4 v2, 0x4

    .line 742
    invoke-direct {v1, p0, v2}, Lua/r8;-><init>(Lua/i9;I)V

    .line 743
    .line 744
    .line 745
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 746
    .line 747
    iget-object v0, p0, Lua/i9;->z:Lx9/f0;

    .line 748
    .line 749
    new-instance v1, Lua/r8;

    .line 750
    .line 751
    const/4 v2, 0x5

    .line 752
    invoke-direct {v1, p0, v2}, Lua/r8;-><init>(Lua/i9;I)V

    .line 753
    .line 754
    .line 755
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 756
    .line 757
    new-instance v1, Lua/r8;

    .line 758
    .line 759
    const/4 v2, 0x6

    .line 760
    invoke-direct {v1, p0, v2}, Lua/r8;-><init>(Lua/i9;I)V

    .line 761
    .line 762
    .line 763
    iput-object v1, v0, Lc6/g;->f:Lc6/f;

    .line 764
    .line 765
    iget-object v0, p0, Lua/i9;->i:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 766
    .line 767
    new-instance v1, Lua/r8;

    .line 768
    .line 769
    const/16 v2, 0x15

    .line 770
    .line 771
    invoke-direct {v1, p0, v2}, Lua/r8;-><init>(Lua/i9;I)V

    .line 772
    .line 773
    .line 774
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 775
    .line 776
    .line 777
    iget-object v0, p0, Lua/i9;->i:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 778
    .line 779
    new-instance v1, Lua/d9;

    .line 780
    .line 781
    invoke-direct {v1, p0}, Lua/d9;-><init>(Lua/i9;)V

    .line 782
    .line 783
    .line 784
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnItemListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;)V

    .line 785
    .line 786
    .line 787
    iget-object v0, p0, Lua/i9;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 788
    .line 789
    new-instance v1, Lua/r8;

    .line 790
    .line 791
    const/16 v2, 0x16

    .line 792
    .line 793
    invoke-direct {v1, p0, v2}, Lua/r8;-><init>(Lua/i9;I)V

    .line 794
    .line 795
    .line 796
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 797
    .line 798
    .line 799
    iget-object v0, p0, Lua/i9;->l:Lx9/s5;

    .line 800
    .line 801
    new-instance v1, Lua/s8;

    .line 802
    .line 803
    const/4 v2, 0x0

    .line 804
    invoke-direct {v1, p0, v2}, Lua/s8;-><init>(Lua/i9;I)V

    .line 805
    .line 806
    .line 807
    iput-object v1, v0, Lx9/s5;->i:Landroid/view/View$OnKeyListener;

    .line 808
    .line 809
    iget-object v0, p0, Lua/i9;->p:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 810
    .line 811
    new-instance v1, Lua/r8;

    .line 812
    .line 813
    const/4 v2, 0x1

    .line 814
    invoke-direct {v1, p0, v2}, Lua/r8;-><init>(Lua/i9;I)V

    .line 815
    .line 816
    .line 817
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 818
    .line 819
    .line 820
    iget-object v0, p0, Lua/i9;->p:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 821
    .line 822
    new-instance v1, Lua/e9;

    .line 823
    .line 824
    invoke-direct {v1, p0}, Lua/e9;-><init>(Lua/i9;)V

    .line 825
    .line 826
    .line 827
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnItemListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;)V

    .line 828
    .line 829
    .line 830
    iget-object v0, p0, Lua/i9;->A:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 831
    .line 832
    new-instance v1, Lua/s8;

    .line 833
    .line 834
    const/4 v2, 0x1

    .line 835
    invoke-direct {v1, p0, v2}, Lua/s8;-><init>(Lua/i9;I)V

    .line 836
    .line 837
    .line 838
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 839
    .line 840
    .line 841
    iget-object v0, p0, Lua/i9;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 842
    .line 843
    new-instance v1, Lua/r8;

    .line 844
    .line 845
    const/16 v2, 0x9

    .line 846
    .line 847
    invoke-direct {v1, p0, v2}, Lua/r8;-><init>(Lua/i9;I)V

    .line 848
    .line 849
    .line 850
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 851
    .line 852
    .line 853
    iget-object v0, p0, Lua/i9;->r:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 854
    .line 855
    new-instance v1, Lua/f9;

    .line 856
    .line 857
    invoke-direct {v1, p0}, Lua/f9;-><init>(Lua/i9;)V

    .line 858
    .line 859
    .line 860
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnItemListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;)V

    .line 861
    .line 862
    .line 863
    iget-object v0, p0, Lua/i9;->r:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 864
    .line 865
    new-instance v1, Lua/r8;

    .line 866
    .line 867
    const/16 v2, 0xa

    .line 868
    .line 869
    invoke-direct {v1, p0, v2}, Lua/r8;-><init>(Lua/i9;I)V

    .line 870
    .line 871
    .line 872
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 873
    .line 874
    .line 875
    iget-object v0, p0, Lua/i9;->v:Lx9/s5;

    .line 876
    .line 877
    new-instance v1, Lua/s8;

    .line 878
    .line 879
    const/4 v2, 0x2

    .line 880
    invoke-direct {v1, p0, v2}, Lua/s8;-><init>(Lua/i9;I)V

    .line 881
    .line 882
    .line 883
    iput-object v1, v0, Lx9/s5;->i:Landroid/view/View$OnKeyListener;

    .line 884
    .line 885
    iget-object v0, p0, Lua/i9;->w:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 886
    .line 887
    new-instance v1, Lua/r8;

    .line 888
    .line 889
    const/16 v2, 0xb

    .line 890
    .line 891
    invoke-direct {v1, p0, v2}, Lua/r8;-><init>(Lua/i9;I)V

    .line 892
    .line 893
    .line 894
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 895
    .line 896
    .line 897
    iget-object v0, p0, Lua/i9;->y:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 898
    .line 899
    new-instance v1, Lua/r8;

    .line 900
    .line 901
    const/16 v2, 0xc

    .line 902
    .line 903
    invoke-direct {v1, p0, v2}, Lua/r8;-><init>(Lua/i9;I)V

    .line 904
    .line 905
    .line 906
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 907
    .line 908
    .line 909
    iget-object v0, p0, Lua/i9;->y:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 910
    .line 911
    new-instance v1, Lua/g9;

    .line 912
    .line 913
    invoke-direct {v1, p0}, Lua/g9;-><init>(Lua/i9;)V

    .line 914
    .line 915
    .line 916
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnItemListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;)V

    .line 917
    .line 918
    .line 919
    iget-object v0, p0, Lua/i9;->j:Lx9/o5;

    .line 920
    .line 921
    sget-object v1, Lcom/yunpan/appmanage/util/e0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 922
    .line 923
    invoke-virtual {v1}, Lcom/yunpan/appmanage/util/d0;->c()Ljava/util/ArrayList;

    .line 924
    .line 925
    .line 926
    move-result-object v1

    .line 927
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 928
    .line 929
    .line 930
    iget-object v0, p0, Lua/i9;->j:Lx9/o5;

    .line 931
    .line 932
    new-instance v1, Lx9/n5;

    .line 933
    .line 934
    invoke-direct {v1}, Lx9/n5;-><init>()V

    .line 935
    .line 936
    .line 937
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 938
    .line 939
    .line 940
    invoke-virtual {p0}, Lua/i9;->r()V

    .line 941
    .line 942
    .line 943
    return-void
.end method

.method public final m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lua/i9;->i:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lua/i9;->r()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final n(Lx9/w3;Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lua/i9;->y:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/i9;->z:Lx9/f0;

    .line 7
    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lua/i9;->S:Lcom/yunpan/appmanage/view/HiveProgressView;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Lcom/yunpan/appmanage/view/HiveProgressView;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v0, v1, v1}, Lua/i9;->v(Ljava/lang/String;IZ)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v1, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v8, Lua/y7;

    .line 37
    .line 38
    const/4 v7, 0x1

    .line 39
    move-object v2, v8

    .line 40
    move v3, p2

    .line 41
    move-object v4, p1

    .line 42
    move-object v5, v0

    .line 43
    move-object v6, v1

    .line 44
    invoke-direct/range {v2 .. v7}, Lua/y7;-><init>(ZLx9/w3;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 45
    .line 46
    .line 47
    new-instance p2, Lmc/c;

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-direct {p2, v2, v8}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    sget-object v2, Lrc/f;->b:Lec/j;

    .line 54
    .line 55
    invoke-virtual {p2, v2}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {p2, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    new-instance v8, Lua/q1;

    .line 68
    .line 69
    const/4 v7, 0x3

    .line 70
    move-object v2, v8

    .line 71
    move-object v3, p0

    .line 72
    move-object v4, p1

    .line 73
    move-object v5, v0

    .line 74
    move-object v6, v1

    .line 75
    invoke-direct/range {v2 .. v7}, Lua/q1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, v8}, Lec/b;->b(Lec/e;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public final o(IZ)V
    .locals 4

    .line 1
    new-instance v0, Lha/h4;

    .line 2
    .line 3
    iget-object v1, p0, Lda/h;->f:Landroid/app/Activity;

    .line 4
    .line 5
    iget-object v2, p0, Lda/h;->e:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lha/h4;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    const-string v1, "\u526a\u5207"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v1, "\u590d\u5236"

    .line 16
    .line 17
    :goto_0
    const-string v2, "\u5230"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Lua/i9;->x:Lx9/g0;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v2, v3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lx9/w3;

    .line 31
    .line 32
    new-instance v3, Lua/u6;

    .line 33
    .line 34
    invoke-direct {v3, p0, p1, p2}, Lua/u6;-><init>(Lua/i9;IZ)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 38
    .line 39
    .line 40
    iput-object v3, v0, Lha/h4;->s:Lha/g4;

    .line 41
    .line 42
    iget-object p1, v0, Lha/h4;->g:Landroid/widget/TextView;

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, v0, Lha/h4;->i:Lx9/g0;

    .line 48
    .line 49
    invoke-virtual {p1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lha/h4;->a()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/i9;->Z:Lcom/yunpan/appmanage/carsdk/u;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Lkh/e;->l(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onReceiveMsg(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkh/j;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "\u653e\u5f00\u83dc\u5355\u952e"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    iget-object p1, p0, Lua/i9;->i:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget p1, p0, Lua/i9;->V:I

    .line 24
    .line 25
    if-ltz p1, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lua/i9;->j:Lx9/o5;

    .line 28
    .line 29
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    add-int/lit8 v0, v0, -0x1

    .line 34
    .line 35
    if-eq p1, v0, :cond_2

    .line 36
    .line 37
    iget p1, p0, Lua/i9;->V:I

    .line 38
    .line 39
    iget-object v0, p0, Lua/i9;->X:Landroid/view/View;

    .line 40
    .line 41
    invoke-virtual {p0, p1, v0}, Lua/i9;->x(ILandroid/view/View;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object p1, p0, Lua/i9;->p:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    iget p1, p0, Lua/i9;->V:I

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lua/i9;->y(I)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iget-object p1, p0, Lua/i9;->y:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    iget p1, p0, Lua/i9;->V:I

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Lua/i9;->w(I)V

    .line 70
    .line 71
    .line 72
    :cond_2
    :goto_0
    return-void
.end method

.method public final p(ILjava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lua/i9;->z:Lx9/f0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lx9/w3;

    .line 8
    .line 9
    new-instance v1, Ljava/io/File;

    .line 10
    .line 11
    iget-object v0, v0, Lx9/w3;->b:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const-string v4, "."

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    const/4 v5, -0x1

    .line 48
    if-ne v3, v5, :cond_0

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v5, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    const/4 v5, 0x0

    .line 68
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    :goto_0
    invoke-static {v3, v2, v0}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_1

    .line 81
    .line 82
    const-string p1, "\u6587\u4ef6\u5939\u5df2\u5b58\u5728,\u8bf7\u5148\u5220\u9664\u76f8\u540c\u547d\u540d\u7684\u6587\u4ef6\u5939"

    .line 83
    .line 84
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_1
    new-instance v2, Lgf/g;

    .line 89
    .line 90
    const/16 v3, 0xd

    .line 91
    .line 92
    invoke-direct {v2, v3}, Lgf/g;-><init>(I)V

    .line 93
    .line 94
    .line 95
    sget-object v3, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 96
    .line 97
    iget-boolean v3, v3, Lcom/yunpan/appmanage/util/w;->r0:Z

    .line 98
    .line 99
    if-eqz v3, :cond_2

    .line 100
    .line 101
    new-instance v3, Lca/a;

    .line 102
    .line 103
    invoke-direct {v3, v1, v0, p2, v2}, Lca/a;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lgf/g;)V

    .line 104
    .line 105
    .line 106
    new-instance p2, Lmc/c;

    .line 107
    .line 108
    const/4 v1, 0x0

    .line 109
    invoke-direct {p2, v1, v3}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 113
    .line 114
    invoke-virtual {p2, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {p2, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    goto :goto_1

    .line 127
    :cond_2
    new-instance v2, Lca/a;

    .line 128
    .line 129
    invoke-direct {v2, v1, v0, p2}, Lca/a;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    new-instance p2, Lmc/c;

    .line 133
    .line 134
    const/4 v1, 0x0

    .line 135
    invoke-direct {p2, v1, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 139
    .line 140
    invoke-virtual {p2, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {p2, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    :goto_1
    new-instance v1, Lha/l4;

    .line 153
    .line 154
    const/4 v2, 0x5

    .line 155
    invoke-direct {v1, p0, p1, v0, v2}, Lha/l4;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2, v1}, Lec/b;->b(Lec/e;)V

    .line 159
    .line 160
    .line 161
    return-void
.end method

.method public final q(IZ)V
    .locals 16

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move/from16 v4, p2

    .line 4
    .line 5
    const/4 v0, 0x7

    .line 6
    const/4 v1, 0x4

    .line 7
    const/4 v2, 0x6

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v5, 0x0

    .line 10
    const-string v7, ""

    .line 11
    .line 12
    if-eqz v4, :cond_2

    .line 13
    .line 14
    sget-object v8, Lfa/g0;->a:Lfa/h0;

    .line 15
    .line 16
    invoke-virtual {v8}, Lfa/h0;->d()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v9

    .line 20
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v9

    .line 24
    if-nez v9, :cond_0

    .line 25
    .line 26
    new-instance v7, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v8}, Lfa/h0;->d()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v8, "/."

    .line 39
    .line 40
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-object v8, v6, Lda/h;->e:Landroid/content/Context;

    .line 44
    .line 45
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v8, "/cache/"

    .line 53
    .line 54
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    new-instance v8, Ljava/io/File;

    .line 62
    .line 63
    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    sget-object v8, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 71
    .line 72
    sget-object v8, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 73
    .line 74
    iget-object v9, v8, Lcom/yunpan/appmanage/util/k;->s:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    if-nez v9, :cond_1

    .line 81
    .line 82
    iget-boolean v9, v8, Lcom/yunpan/appmanage/util/k;->L:Z

    .line 83
    .line 84
    if-eqz v9, :cond_1

    .line 85
    .line 86
    iget-object v7, v8, Lcom/yunpan/appmanage/util/k;->s:Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {v7}, Lcom/yunpan/appmanage/util/a0;->d(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    if-nez v8, :cond_1

    .line 93
    .line 94
    const-string v8, "/data"

    .line 95
    .line 96
    const-string v9, "/\u200bdata"

    .line 97
    .line 98
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    :cond_1
    :goto_0
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    move-result v8

    .line 106
    if-eqz v8, :cond_2

    .line 107
    .line 108
    iget-object v8, v6, Lua/i9;->s:Lx9/h0;

    .line 109
    .line 110
    invoke-virtual {v8}, Lc6/g;->b()I

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    if-nez v8, :cond_2

    .line 115
    .line 116
    iget-object v7, v6, Lda/h;->e:Landroid/content/Context;

    .line 117
    .line 118
    invoke-virtual {v7}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 127
    .line 128
    .line 129
    move-result v8

    .line 130
    const/4 v9, 0x1

    .line 131
    if-eqz v8, :cond_5

    .line 132
    .line 133
    iget-object v7, v6, Lua/i9;->s:Lx9/h0;

    .line 134
    .line 135
    invoke-virtual {v7}, Lc6/g;->b()I

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    if-nez v7, :cond_3

    .line 140
    .line 141
    const-string v0, "\u4f60\u7684\u8bbe\u5907\u6ca1\u6709(SD\u5361\u6216U\u76d8)\uff0c\u65e0\u6cd5\u4e0b\u8f7d\u4fdd\u5b58"

    .line 142
    .line 143
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_3
    iget-object v7, v6, Lua/i9;->x:Lx9/g0;

    .line 148
    .line 149
    invoke-virtual {v7}, Lc6/g;->b()I

    .line 150
    .line 151
    .line 152
    move-result v7

    .line 153
    if-nez v7, :cond_4

    .line 154
    .line 155
    const-string v0, "\u8bf7\u5728\u53f3\u4fa7\u6253\u5f00\u672c\u5730\u5b58\u50a8(SD\u5361\u6216U\u76d8)"

    .line 156
    .line 157
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_4
    iget-object v7, v6, Lua/i9;->x:Lx9/g0;

    .line 162
    .line 163
    invoke-static {v7, v9}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v7

    .line 167
    check-cast v7, Lx9/w3;

    .line 168
    .line 169
    iget-object v7, v7, Lx9/w3;->b:Ljava/lang/String;

    .line 170
    .line 171
    invoke-static {v7}, Lcom/yunpan/appmanage/util/a0;->d(Ljava/lang/String;)Z

    .line 172
    .line 173
    .line 174
    move-result v8

    .line 175
    if-nez v8, :cond_5

    .line 176
    .line 177
    const-string v0, "\u672c\u5730\u76ee\u5f55\u65e0\u6743\u9650\u5199\u5165\u6587\u4ef6"

    .line 178
    .line 179
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :cond_5
    iget-object v8, v6, Lua/i9;->j:Lx9/o5;

    .line 184
    .line 185
    iget v10, v6, Lua/i9;->T:I

    .line 186
    .line 187
    invoke-virtual {v8, v10}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v8

    .line 191
    check-cast v8, Lx9/n5;

    .line 192
    .line 193
    iget-object v10, v6, Lua/i9;->q:Lx9/y5;

    .line 194
    .line 195
    move/from16 v11, p1

    .line 196
    .line 197
    invoke-virtual {v10, v11}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v10

    .line 201
    check-cast v10, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 202
    .line 203
    iget v11, v8, Lx9/n5;->a:I

    .line 204
    .line 205
    if-eq v11, v9, :cond_12

    .line 206
    .line 207
    if-eq v11, v3, :cond_12

    .line 208
    .line 209
    const/16 v12, 0x14

    .line 210
    .line 211
    if-eq v11, v12, :cond_12

    .line 212
    .line 213
    const/16 v12, 0x15

    .line 214
    .line 215
    if-ne v11, v12, :cond_6

    .line 216
    .line 217
    goto/16 :goto_5

    .line 218
    .line 219
    :cond_6
    const/4 v12, 0x5

    .line 220
    const/4 v13, 0x3

    .line 221
    if-eq v11, v13, :cond_7

    .line 222
    .line 223
    if-eq v11, v1, :cond_7

    .line 224
    .line 225
    if-eq v11, v12, :cond_7

    .line 226
    .line 227
    if-eq v11, v2, :cond_7

    .line 228
    .line 229
    if-ne v11, v0, :cond_14

    .line 230
    .line 231
    :cond_7
    new-instance v14, Ljava/util/ArrayList;

    .line 232
    .line 233
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    new-instance v15, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;

    .line 240
    .line 241
    invoke-direct {v15}, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;-><init>()V

    .line 242
    .line 243
    .line 244
    iput-object v8, v15, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->userInfo:Lx9/n5;

    .line 245
    .line 246
    iput-object v14, v15, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->paths:Ljava/util/List;

    .line 247
    .line 248
    const-string v3, "/"

    .line 249
    .line 250
    if-ne v11, v13, :cond_8

    .line 251
    .line 252
    new-instance v8, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .line 256
    .line 257
    new-instance v9, Ljava/io/File;

    .line 258
    .line 259
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v14

    .line 263
    check-cast v14, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 264
    .line 265
    iget-object v14, v14, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 266
    .line 267
    invoke-direct {v9, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v9}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v9

    .line 274
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v8

    .line 284
    iput-object v8, v15, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_form:Ljava/lang/String;

    .line 285
    .line 286
    goto :goto_2

    .line 287
    :cond_8
    if-ne v11, v0, :cond_b

    .line 288
    .line 289
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v14

    .line 293
    check-cast v14, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 294
    .line 295
    iget-object v14, v14, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 296
    .line 297
    iput-object v14, v15, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_form:Ljava/lang/String;

    .line 298
    .line 299
    iget-object v8, v8, Lx9/n5;->c:Ljava/lang/String;

    .line 300
    .line 301
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v8

    .line 305
    if-eqz v8, :cond_9

    .line 306
    .line 307
    goto :goto_1

    .line 308
    :cond_9
    iget-object v8, v15, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_form:Ljava/lang/String;

    .line 309
    .line 310
    invoke-virtual {v8, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 311
    .line 312
    .line 313
    move-result v8

    .line 314
    if-eqz v8, :cond_a

    .line 315
    .line 316
    iget-object v8, v15, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_form:Ljava/lang/String;

    .line 317
    .line 318
    invoke-static {v9, v5, v8}, Landroid/support/v4/media/session/a;->l(IILjava/lang/String;)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v8

    .line 322
    iput-object v8, v15, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_form:Ljava/lang/String;

    .line 323
    .line 324
    :cond_a
    :goto_1
    iget-object v8, v15, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_form:Ljava/lang/String;

    .line 325
    .line 326
    invoke-virtual {v8, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 327
    .line 328
    .line 329
    move-result v9

    .line 330
    invoke-virtual {v8, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v8

    .line 334
    iput-object v8, v15, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_form:Ljava/lang/String;

    .line 335
    .line 336
    goto :goto_2

    .line 337
    :cond_b
    new-instance v8, Ljava/io/File;

    .line 338
    .line 339
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v9

    .line 343
    check-cast v9, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 344
    .line 345
    iget-object v9, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 346
    .line 347
    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v8

    .line 354
    iput-object v8, v15, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_form:Ljava/lang/String;

    .line 355
    .line 356
    :goto_2
    iget-object v8, v15, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_form:Ljava/lang/String;

    .line 357
    .line 358
    const-string v9, "//"

    .line 359
    .line 360
    invoke-virtual {v8, v9, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v3

    .line 364
    iput-object v3, v15, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_form:Ljava/lang/String;

    .line 365
    .line 366
    if-ne v11, v0, :cond_c

    .line 367
    .line 368
    const-string v8, ":/"

    .line 369
    .line 370
    const-string v9, "://"

    .line 371
    .line 372
    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v3

    .line 376
    iput-object v3, v15, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_form:Ljava/lang/String;

    .line 377
    .line 378
    :cond_c
    iput-object v7, v15, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_to:Ljava/lang/String;

    .line 379
    .line 380
    new-instance v3, Lha/v9;

    .line 381
    .line 382
    iget-object v7, v6, Lda/h;->f:Landroid/app/Activity;

    .line 383
    .line 384
    iget-object v8, v6, Lda/h;->e:Landroid/content/Context;

    .line 385
    .line 386
    invoke-direct {v3, v7, v8}, Lha/v9;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 387
    .line 388
    .line 389
    const-string v7, "\u6b63\u5728\u4e0b\u8f7d"

    .line 390
    .line 391
    invoke-virtual {v3, v7, v15}, Lha/v9;->c(Ljava/lang/String;Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;)V

    .line 392
    .line 393
    .line 394
    if-ne v11, v13, :cond_d

    .line 395
    .line 396
    new-instance v0, Lqa/d;

    .line 397
    .line 398
    invoke-direct {v0, v15, v2}, Lqa/d;-><init>(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;I)V

    .line 399
    .line 400
    .line 401
    new-instance v1, Lmc/c;

    .line 402
    .line 403
    invoke-direct {v1, v5, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 404
    .line 405
    .line 406
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 407
    .line 408
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    :goto_3
    move-object v7, v0

    .line 421
    goto :goto_4

    .line 422
    :cond_d
    if-ne v11, v1, :cond_e

    .line 423
    .line 424
    new-instance v0, Lqa/d;

    .line 425
    .line 426
    invoke-direct {v0, v15, v5}, Lqa/d;-><init>(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;I)V

    .line 427
    .line 428
    .line 429
    new-instance v1, Lmc/c;

    .line 430
    .line 431
    invoke-direct {v1, v5, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 432
    .line 433
    .line 434
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 435
    .line 436
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    goto :goto_3

    .line 449
    :cond_e
    if-ne v11, v12, :cond_f

    .line 450
    .line 451
    new-instance v0, Lqa/d;

    .line 452
    .line 453
    const/4 v1, 0x2

    .line 454
    invoke-direct {v0, v15, v1}, Lqa/d;-><init>(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;I)V

    .line 455
    .line 456
    .line 457
    new-instance v1, Lmc/c;

    .line 458
    .line 459
    invoke-direct {v1, v5, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 460
    .line 461
    .line 462
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 463
    .line 464
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    goto :goto_3

    .line 477
    :cond_f
    if-ne v11, v2, :cond_10

    .line 478
    .line 479
    new-instance v0, Lqa/d;

    .line 480
    .line 481
    invoke-direct {v0, v15, v1}, Lqa/d;-><init>(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;I)V

    .line 482
    .line 483
    .line 484
    new-instance v1, Lmc/c;

    .line 485
    .line 486
    invoke-direct {v1, v5, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 487
    .line 488
    .line 489
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 490
    .line 491
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 496
    .line 497
    .line 498
    move-result-object v1

    .line 499
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    goto :goto_3

    .line 504
    :cond_10
    if-ne v11, v0, :cond_11

    .line 505
    .line 506
    new-instance v1, Lqa/d;

    .line 507
    .line 508
    invoke-direct {v1, v15, v0}, Lqa/d;-><init>(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;I)V

    .line 509
    .line 510
    .line 511
    new-instance v0, Lmc/c;

    .line 512
    .line 513
    invoke-direct {v0, v5, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 514
    .line 515
    .line 516
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 517
    .line 518
    invoke-virtual {v0, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 523
    .line 524
    .line 525
    move-result-object v1

    .line 526
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    goto :goto_3

    .line 531
    :goto_4
    new-instance v8, Lua/c9;

    .line 532
    .line 533
    move-object v0, v8

    .line 534
    move-object/from16 v1, p0

    .line 535
    .line 536
    move-object v2, v3

    .line 537
    move-object v3, v15

    .line 538
    move/from16 v4, p2

    .line 539
    .line 540
    move-object v5, v10

    .line 541
    invoke-direct/range {v0 .. v5}, Lua/c9;-><init>(Lua/i9;Lha/v9;Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;ZLcom/yunpan/appmanage/bean/WpPathBean;)V

    .line 542
    .line 543
    .line 544
    invoke-virtual {v7, v8}, Lec/b;->b(Lec/e;)V

    .line 545
    .line 546
    .line 547
    goto :goto_6

    .line 548
    :cond_11
    return-void

    .line 549
    :cond_12
    :goto_5
    new-instance v0, Lha/w;

    .line 550
    .line 551
    iget-object v1, v6, Lda/h;->f:Landroid/app/Activity;

    .line 552
    .line 553
    iget-object v2, v6, Lda/h;->e:Landroid/content/Context;

    .line 554
    .line 555
    invoke-direct {v0, v1, v2}, Lha/w;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 556
    .line 557
    .line 558
    new-instance v1, Lha/h2;

    .line 559
    .line 560
    const/16 v2, 0x9

    .line 561
    .line 562
    invoke-direct {v1, v6, v4, v2}, Lha/h2;-><init>(Ljava/lang/Object;ZI)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 566
    .line 567
    .line 568
    iput-object v8, v0, Lha/w;->k:Ljava/lang/Object;

    .line 569
    .line 570
    iput-object v10, v0, Lha/w;->l:Ljava/lang/Object;

    .line 571
    .line 572
    iput-object v7, v0, Lha/w;->q:Ljava/lang/Object;

    .line 573
    .line 574
    iput-object v1, v0, Lha/w;->p:Ljava/lang/Object;

    .line 575
    .line 576
    iput-boolean v5, v10, Lcom/yunpan/appmanage/bean/WpPathBean;->isStopDown:Z

    .line 577
    .line 578
    iget-object v1, v0, Lha/w;->h:Landroid/widget/TextView;

    .line 579
    .line 580
    iget-object v2, v10, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 581
    .line 582
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    .line 584
    .line 585
    const/4 v1, 0x2

    .line 586
    if-ne v11, v1, :cond_13

    .line 587
    .line 588
    iget-boolean v1, v10, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 589
    .line 590
    if-eqz v1, :cond_13

    .line 591
    .line 592
    iget-object v1, v0, Lha/w;->h:Landroid/widget/TextView;

    .line 593
    .line 594
    new-instance v2, Ljava/lang/StringBuilder;

    .line 595
    .line 596
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 597
    .line 598
    .line 599
    iget-object v3, v10, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 600
    .line 601
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    const-string v3, ".rar"

    .line 605
    .line 606
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v2

    .line 613
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    .line 615
    .line 616
    :cond_13
    iget-object v1, v0, Lha/w;->i:Landroid/widget/TextView;

    .line 617
    .line 618
    new-instance v2, Ljava/lang/StringBuilder;

    .line 619
    .line 620
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 621
    .line 622
    .line 623
    iget-object v3, v10, Lcom/yunpan/appmanage/bean/WpPathBean;->time_txt:Ljava/lang/String;

    .line 624
    .line 625
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    const-string v3, "  "

    .line 629
    .line 630
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    .line 632
    .line 633
    iget-object v3, v10, Lcom/yunpan/appmanage/bean/WpPathBean;->size_txt:Ljava/lang/String;

    .line 634
    .line 635
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    .line 637
    .line 638
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v2

    .line 642
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    .line 644
    .line 645
    iget-object v1, v0, Lha/w;->m:Landroid/view/View;

    .line 646
    .line 647
    check-cast v1, Lcom/yunpan/appmanage/view/MyProgressViewTest;

    .line 648
    .line 649
    const/high16 v2, 0x42c80000    # 100.0f

    .line 650
    .line 651
    invoke-virtual {v1, v2}, Lcom/yunpan/appmanage/view/MyProgressViewTest;->setMaxCount(F)V

    .line 652
    .line 653
    .line 654
    iget-object v1, v0, Lha/w;->m:Landroid/view/View;

    .line 655
    .line 656
    check-cast v1, Lcom/yunpan/appmanage/view/MyProgressViewTest;

    .line 657
    .line 658
    const/4 v2, 0x0

    .line 659
    invoke-virtual {v1, v2}, Lcom/yunpan/appmanage/view/MyProgressViewTest;->setCurrentCount(F)V

    .line 660
    .line 661
    .line 662
    invoke-virtual {v0}, Lha/w;->a()V

    .line 663
    .line 664
    .line 665
    :cond_14
    :goto_6
    return-void
.end method

.method public final r()V
    .locals 8

    .line 1
    iget-object v0, p0, Lua/i9;->s:Lx9/h0;

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 12
    .line 13
    invoke-virtual {v0}, Lfa/h0;->d()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lua/i9;->s:Lx9/h0;

    .line 24
    .line 25
    new-instance v2, Lx9/w3;

    .line 26
    .line 27
    invoke-virtual {v0}, Lfa/h0;->d()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v3, "\u5185\u90e8\u5b58\u50a8"

    .line 32
    .line 33
    invoke-direct {v2, v3, v0}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    const/4 v0, 0x1

    .line 40
    const/4 v1, 0x0

    .line 41
    :try_start_0
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 42
    .line 43
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 44
    .line 45
    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const/4 v3, 0x0

    .line 52
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_1

    .line 57
    .line 58
    add-int/2addr v3, v0

    .line 59
    iget-object v4, p0, Lua/i9;->s:Lx9/h0;

    .line 60
    .line 61
    new-instance v5, Lx9/w3;

    .line 62
    .line 63
    new-instance v6, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v7, "U\u76d8"

    .line 69
    .line 70
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    check-cast v7, Ljava/lang/String;

    .line 85
    .line 86
    invoke-direct {v5, v6, v7}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v5}, Lc6/g;->q(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :catch_0
    nop

    .line 94
    :cond_1
    iget-object v2, p0, Lua/i9;->s:Lx9/h0;

    .line 95
    .line 96
    invoke-virtual {v2}, Lc6/g;->b()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-lez v2, :cond_4

    .line 101
    .line 102
    iget-object v2, p0, Lua/i9;->x:Lx9/g0;

    .line 103
    .line 104
    invoke-virtual {v2}, Lc6/g;->b()I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-nez v2, :cond_3

    .line 109
    .line 110
    iget-object v0, p0, Lua/i9;->s:Lx9/h0;

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Lx9/w3;

    .line 117
    .line 118
    iget-object v2, p0, Lua/i9;->x:Lx9/g0;

    .line 119
    .line 120
    invoke-virtual {v2, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    iget-object v3, v0, Lx9/w3;->b:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v3, "/Download"

    .line 134
    .line 135
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-nez v2, :cond_2

    .line 147
    .line 148
    :try_start_1
    new-instance v2, Ljava/io/File;

    .line 149
    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    iget-object v5, v0, Lx9/w3;->b:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 171
    .line 172
    .line 173
    :catch_1
    :cond_2
    iget-object v2, p0, Lua/i9;->x:Lx9/g0;

    .line 174
    .line 175
    new-instance v4, Lx9/w3;

    .line 176
    .line 177
    new-instance v5, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    iget-object v6, v0, Lx9/w3;->b:Ljava/lang/String;

    .line 183
    .line 184
    invoke-static {v6, v3, v5}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    invoke-direct {v4, v3}, Lx9/w3;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2, v4}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_3
    iget-object v2, p0, Lua/i9;->x:Lx9/g0;

    .line 196
    .line 197
    invoke-static {v2, v0}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    check-cast v0, Lx9/w3;

    .line 202
    .line 203
    :goto_1
    invoke-virtual {p0, v0, v1}, Lua/i9;->n(Lx9/w3;Z)V

    .line 204
    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_4
    const v1, 0x7f08029e

    .line 208
    .line 209
    .line 210
    const-string v2, "\u4e0d\u5b58\u5728SD\u5361\u3001U\u76d8"

    .line 211
    .line 212
    invoke-virtual {p0, v2, v1, v0}, Lua/i9;->v(Ljava/lang/String;IZ)V

    .line 213
    .line 214
    .line 215
    iget-object v0, p0, Lua/i9;->x:Lx9/g0;

    .line 216
    .line 217
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-lez v0, :cond_5

    .line 222
    .line 223
    iget-object v0, p0, Lua/i9;->x:Lx9/g0;

    .line 224
    .line 225
    new-instance v1, Ljava/util/ArrayList;

    .line 226
    .line 227
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 231
    .line 232
    .line 233
    iget-object v0, p0, Lua/i9;->z:Lx9/f0;

    .line 234
    .line 235
    new-instance v1, Ljava/util/ArrayList;

    .line 236
    .line 237
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 241
    .line 242
    .line 243
    :cond_5
    :goto_2
    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lb8/a;

    .line 2
    .line 3
    const/16 v1, 0x12

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Lb8/a;-><init>(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lmc/c;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {p1, v1, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    new-instance v0, Lua/a9;

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-direct {v0, p0, v1}, Lua/a9;-><init>(Lua/i9;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lec/b;->b(Lec/e;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final t(Lx9/n5;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lua/i9;->j:Lx9/o5;

    .line 3
    .line 4
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, -0x1

    .line 9
    if-ge v0, v1, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lua/i9;->j:Lx9/o5;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lx9/n5;

    .line 18
    .line 19
    iget v1, v1, Lx9/n5;->a:I

    .line 20
    .line 21
    iget v3, p1, Lx9/n5;->a:I

    .line 22
    .line 23
    if-ne v1, v3, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lua/i9;->j:Lx9/o5;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lx9/n5;

    .line 32
    .line 33
    iget-object v1, v1, Lx9/n5;->e:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v3, p1, Lx9/n5;->e:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    iget-object v1, p0, Lua/i9;->j:Lx9/o5;

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lx9/n5;

    .line 50
    .line 51
    iget-object v1, v1, Lx9/n5;->c:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v3, p1, Lx9/n5;->c:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_0

    .line 60
    .line 61
    const-string v1, "\u5df2\u5b58\u5728"

    .line 62
    .line 63
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const/4 v0, -0x1

    .line 71
    :goto_1
    if-ne v0, v2, :cond_2

    .line 72
    .line 73
    iget-object v0, p0, Lua/i9;->j:Lx9/o5;

    .line 74
    .line 75
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    add-int/lit8 v1, v1, -0x1

    .line 80
    .line 81
    invoke-virtual {v0, v1, p1}, Lc6/g;->p(ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    sget-object v0, Lcom/yunpan/appmanage/util/e0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 85
    .line 86
    invoke-virtual {v0, p1}, Lcom/yunpan/appmanage/util/d0;->a(Lx9/n5;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lua/i9;->j:Lx9/o5;

    .line 90
    .line 91
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    add-int/lit8 p1, p1, -0x2

    .line 96
    .line 97
    iput p1, p0, Lua/i9;->T:I

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_2
    iget-object v1, p0, Lua/i9;->j:Lx9/o5;

    .line 101
    .line 102
    invoke-virtual {v1, v0, p1}, Lc6/g;->p(ILjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    sget-object v1, Lcom/yunpan/appmanage/util/e0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 106
    .line 107
    invoke-virtual {v1, v0, p1}, Lcom/yunpan/appmanage/util/d0;->h(ILx9/n5;)V

    .line 108
    .line 109
    .line 110
    iput v0, p0, Lua/i9;->T:I

    .line 111
    .line 112
    :goto_2
    invoke-virtual {p0}, Lua/i9;->A()V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public final u(Ljava/lang/String;IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/i9;->L:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/16 v1, 0x8

    .line 8
    .line 9
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    if-eqz p3, :cond_1

    .line 13
    .line 14
    iget-object p3, p0, Lua/i9;->M:Landroid/widget/ImageView;

    .line 15
    .line 16
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lua/i9;->N:Landroid/widget/TextView;

    .line 20
    .line 21
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final v(Ljava/lang/String;IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/i9;->O:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/16 v1, 0x8

    .line 8
    .line 9
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    if-eqz p3, :cond_1

    .line 13
    .line 14
    iget-object p3, p0, Lua/i9;->P:Landroid/widget/ImageView;

    .line 15
    .line 16
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lua/i9;->R:Landroid/widget/TextView;

    .line 20
    .line 21
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final w(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lua/i9;->z:Lx9/f0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lx9/w3;

    .line 8
    .line 9
    new-instance v1, Lha/c4;

    .line 10
    .line 11
    iget-object v2, p0, Lda/h;->f:Landroid/app/Activity;

    .line 12
    .line 13
    iget-object v3, p0, Lda/h;->e:Landroid/content/Context;

    .line 14
    .line 15
    invoke-direct {v1, v2, v3}, Lha/c4;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    new-instance v2, Lua/u8;

    .line 19
    .line 20
    invoke-direct {v2, p0, p1, v0}, Lua/u8;-><init>(Lua/i9;ILx9/w3;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 24
    .line 25
    .line 26
    iput-object v0, v1, Lha/c4;->k:Lx9/w3;

    .line 27
    .line 28
    iput-object v2, v1, Lha/c4;->j:Lua/u8;

    .line 29
    .line 30
    iget-object p1, v1, Lha/c4;->h:Lx9/z5;

    .line 31
    .line 32
    new-instance v2, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v2}, Lc6/g;->E(Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    iget-boolean p1, v0, Lx9/w3;->c:Z

    .line 41
    .line 42
    if-nez p1, :cond_4

    .line 43
    .line 44
    iget-object p1, v0, Lx9/w3;->a:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {p1}, Lif/a;->X(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_0

    .line 51
    .line 52
    iget-object p1, v1, Lha/c4;->h:Lx9/z5;

    .line 53
    .line 54
    const-string v0, "\u5b89\u88c5"

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    iget-object p1, v0, Lx9/w3;->a:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {p1}, Lza/g;->g(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_1

    .line 67
    .line 68
    iget-object p1, v1, Lha/c4;->h:Lx9/z5;

    .line 69
    .line 70
    const-string v0, "\u89e3\u538b"

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    :goto_0
    iget-object p1, v1, Lha/c4;->h:Lx9/z5;

    .line 76
    .line 77
    const-string v0, "\u6253\u5f00"

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, v1, Lha/c4;->k:Lx9/w3;

    .line 83
    .line 84
    iget-object p1, p1, Lx9/w3;->a:Ljava/lang/String;

    .line 85
    .line 86
    const-string v0, "."

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-lez p1, :cond_2

    .line 93
    .line 94
    iget-object v0, v1, Lha/c4;->k:Lx9/w3;

    .line 95
    .line 96
    iget-object v0, v0, Lx9/w3;->a:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iput-object p1, v1, Lha/c4;->l:Ljava/lang/String;

    .line 111
    .line 112
    :cond_2
    iget-object p1, v1, Lha/c4;->l:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-nez p1, :cond_3

    .line 119
    .line 120
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 121
    .line 122
    iget-object v0, v1, Lha/c4;->l:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Lcom/yunpan/appmanage/util/w;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-nez p1, :cond_3

    .line 133
    .line 134
    iget-object p1, v1, Lha/c4;->i:Landroid/widget/TextView;

    .line 135
    .line 136
    const/4 v0, 0x0

    .line 137
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 138
    .line 139
    .line 140
    :cond_3
    iget-object p1, v1, Lha/c4;->h:Lx9/z5;

    .line 141
    .line 142
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    const/4 v0, 0x2

    .line 147
    if-ge p1, v0, :cond_4

    .line 148
    .line 149
    iget-object p1, v1, Lha/c4;->h:Lx9/z5;

    .line 150
    .line 151
    const-string v0, "\u53d6\u6d88"

    .line 152
    .line 153
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    :cond_4
    iget-object p1, v1, Lha/c4;->h:Lx9/z5;

    .line 157
    .line 158
    const-string v0, "\u4e0a\u4f20"

    .line 159
    .line 160
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    iget-object p1, v1, Lha/c4;->h:Lx9/z5;

    .line 164
    .line 165
    const-string v0, "\u6539\u540d"

    .line 166
    .line 167
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    iget-object p1, v1, Lha/c4;->h:Lx9/z5;

    .line 171
    .line 172
    const-string v0, "\u5220\u9664"

    .line 173
    .line 174
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    iget-object p1, v1, Lha/c4;->h:Lx9/z5;

    .line 178
    .line 179
    const-string v0, "\u538b\u7f29"

    .line 180
    .line 181
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    iget-object p1, v1, Lha/c4;->h:Lx9/z5;

    .line 185
    .line 186
    const-string v0, "\u79fb\u52a8"

    .line 187
    .line 188
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    iget-object p1, v1, Lha/c4;->h:Lx9/z5;

    .line 192
    .line 193
    const-string v0, "\u590d\u5236"

    .line 194
    .line 195
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    return-void
.end method

.method public final x(ILandroid/view/View;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/PopupMenu;

    .line 2
    .line 3
    iget-object v1, p0, Lda/h;->e:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    const v1, 0x7f100006

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {p2, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 20
    .line 21
    .line 22
    new-instance p2, Lua/y8;

    .line 23
    .line 24
    invoke-direct {p2, p0, p1}, Lua/y8;-><init>(Lua/i9;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final y(I)V
    .locals 14

    .line 1
    iget-object v0, p0, Lua/i9;->n:Lx9/a6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x15

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-ne v0, v3, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lua/i9;->n:Lx9/a6;

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lua/i9;->j:Lx9/o5;

    .line 30
    .line 31
    iget v4, p0, Lua/i9;->T:I

    .line 32
    .line 33
    invoke-virtual {v0, v4}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lx9/n5;

    .line 38
    .line 39
    iget v0, v0, Lx9/n5;->a:I

    .line 40
    .line 41
    if-eq v0, v1, :cond_0

    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lua/i9;->q:Lx9/y5;

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 51
    .line 52
    iget-object v4, p0, Lua/i9;->g:Lha/ve;

    .line 53
    .line 54
    iget-object v5, p0, Lua/i9;->j:Lx9/o5;

    .line 55
    .line 56
    iget v6, p0, Lua/i9;->T:I

    .line 57
    .line 58
    invoke-virtual {v5, v6}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    check-cast v5, Lx9/n5;

    .line 63
    .line 64
    new-instance v6, Lua/t8;

    .line 65
    .line 66
    const/4 v7, 0x0

    .line 67
    invoke-direct {v6, p0, p1, v7}, Lua/t8;-><init>(Lua/i9;II)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4}, Lha/a4;->show()V

    .line 71
    .line 72
    .line 73
    iput-object v5, v4, Lha/ve;->j:Lx9/n5;

    .line 74
    .line 75
    iput-object v0, v4, Lha/ve;->k:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 76
    .line 77
    iput-object v6, v4, Lha/ve;->i:Lua/t8;

    .line 78
    .line 79
    iget-object p1, v4, Lha/ve;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 80
    .line 81
    const/16 v0, 0x8

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    iget-object p1, v4, Lha/ve;->m:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 92
    .line 93
    new-instance v0, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 99
    .line 100
    .line 101
    iget-object p1, v4, Lha/ve;->j:Lx9/n5;

    .line 102
    .line 103
    iget p1, p1, Lx9/n5;->a:I

    .line 104
    .line 105
    const-string v0, "\u5b89\u88c5"

    .line 106
    .line 107
    const-string v5, "\u63cf\u8ff0"

    .line 108
    .line 109
    const-string v6, "\u4e0b\u8f7d"

    .line 110
    .line 111
    const-string v7, "\u8fd4\u56de"

    .line 112
    .line 113
    const-string v8, "\u79fb\u52a8"

    .line 114
    .line 115
    const-string v9, "\u5206\u4eab"

    .line 116
    .line 117
    const-string v10, "\u6539\u540d"

    .line 118
    .line 119
    const-string v11, "\u5220\u9664"

    .line 120
    .line 121
    if-ne p1, v3, :cond_2

    .line 122
    .line 123
    iget-object p1, v4, Lha/ve;->k:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 124
    .line 125
    iget-boolean p1, p1, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 126
    .line 127
    if-eqz p1, :cond_1

    .line 128
    .line 129
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 130
    .line 131
    invoke-virtual {p1, v11}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 135
    .line 136
    invoke-virtual {p1, v10}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 140
    .line 141
    invoke-virtual {p1, v9}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 145
    .line 146
    invoke-virtual {p1, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    goto/16 :goto_2

    .line 150
    .line 151
    :cond_1
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 152
    .line 153
    invoke-virtual {p1, v6}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 157
    .line 158
    invoke-virtual {p1, v11}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 162
    .line 163
    invoke-virtual {p1, v10}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 167
    .line 168
    invoke-virtual {p1, v8}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 172
    .line 173
    invoke-virtual {p1, v9}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 177
    .line 178
    invoke-virtual {p1, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    iget-object p1, v4, Lha/ve;->k:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 182
    .line 183
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 184
    .line 185
    invoke-static {p1}, Lif/a;->X(Ljava/lang/String;)Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-eqz p1, :cond_f

    .line 190
    .line 191
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 192
    .line 193
    invoke-virtual {p1, v2, v0}, Lc6/g;->p(ILjava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 197
    .line 198
    invoke-virtual {p1, v7}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    goto/16 :goto_2

    .line 202
    .line 203
    :cond_2
    const/4 v12, 0x2

    .line 204
    const-string v13, "\u590d\u5236"

    .line 205
    .line 206
    if-eq p1, v12, :cond_c

    .line 207
    .line 208
    if-ne p1, v1, :cond_3

    .line 209
    .line 210
    goto/16 :goto_1

    .line 211
    .line 212
    :cond_3
    const/16 v1, 0x14

    .line 213
    .line 214
    if-ne p1, v1, :cond_5

    .line 215
    .line 216
    iget-object p1, v4, Lha/ve;->k:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 217
    .line 218
    iget-boolean p1, p1, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 219
    .line 220
    if-eqz p1, :cond_4

    .line 221
    .line 222
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 223
    .line 224
    invoke-virtual {p1, v11}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 228
    .line 229
    invoke-virtual {p1, v10}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 233
    .line 234
    invoke-virtual {p1, v8}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 238
    .line 239
    invoke-virtual {p1, v9}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 243
    .line 244
    invoke-virtual {p1, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 248
    .line 249
    invoke-virtual {p1, v7}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    goto/16 :goto_2

    .line 253
    .line 254
    :cond_4
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 255
    .line 256
    invoke-virtual {p1, v6}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 260
    .line 261
    invoke-virtual {p1, v11}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 265
    .line 266
    invoke-virtual {p1, v10}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 270
    .line 271
    invoke-virtual {p1, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 275
    .line 276
    invoke-virtual {p1, v8}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 280
    .line 281
    invoke-virtual {p1, v9}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    iget-object p1, v4, Lha/ve;->k:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 285
    .line 286
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 287
    .line 288
    invoke-static {p1}, Lif/a;->X(Ljava/lang/String;)Z

    .line 289
    .line 290
    .line 291
    move-result p1

    .line 292
    if-eqz p1, :cond_f

    .line 293
    .line 294
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 295
    .line 296
    invoke-virtual {p1, v2, v0}, Lc6/g;->p(ILjava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 300
    .line 301
    invoke-virtual {p1, v3, v7}, Lc6/g;->p(ILjava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    goto/16 :goto_2

    .line 305
    .line 306
    :cond_5
    const/4 v1, 0x3

    .line 307
    const/4 v5, 0x6

    .line 308
    if-eq p1, v1, :cond_6

    .line 309
    .line 310
    const/4 v1, 0x4

    .line 311
    if-eq p1, v1, :cond_6

    .line 312
    .line 313
    const/4 v1, 0x5

    .line 314
    if-eq p1, v1, :cond_6

    .line 315
    .line 316
    if-eq p1, v5, :cond_6

    .line 317
    .line 318
    const/4 v1, 0x7

    .line 319
    if-ne p1, v1, :cond_f

    .line 320
    .line 321
    :cond_6
    iget-object p1, v4, Lha/ve;->k:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 322
    .line 323
    iget-boolean p1, p1, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 324
    .line 325
    if-eqz p1, :cond_7

    .line 326
    .line 327
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 328
    .line 329
    invoke-virtual {p1, v11}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 333
    .line 334
    invoke-virtual {p1, v10}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 338
    .line 339
    invoke-virtual {p1, v8}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 343
    .line 344
    invoke-virtual {p1, v13}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 348
    .line 349
    invoke-virtual {p1, v6}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 353
    .line 354
    invoke-virtual {p1, v7}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 355
    .line 356
    .line 357
    goto/16 :goto_2

    .line 358
    .line 359
    :cond_7
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 360
    .line 361
    invoke-virtual {p1, v6}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 362
    .line 363
    .line 364
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 365
    .line 366
    invoke-virtual {p1, v11}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 367
    .line 368
    .line 369
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 370
    .line 371
    invoke-virtual {p1, v10}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 372
    .line 373
    .line 374
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 375
    .line 376
    invoke-virtual {p1, v8}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 377
    .line 378
    .line 379
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 380
    .line 381
    invoke-virtual {p1, v13}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    iget-object p1, v4, Lha/ve;->k:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 385
    .line 386
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 387
    .line 388
    invoke-static {p1}, Lif/a;->X(Ljava/lang/String;)Z

    .line 389
    .line 390
    .line 391
    move-result p1

    .line 392
    if-eqz p1, :cond_8

    .line 393
    .line 394
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 395
    .line 396
    invoke-virtual {p1, v2, v0}, Lc6/g;->p(ILjava/lang/Object;)V

    .line 397
    .line 398
    .line 399
    goto/16 :goto_2

    .line 400
    .line 401
    :cond_8
    iget-object p1, v4, Lha/ve;->k:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 402
    .line 403
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 404
    .line 405
    invoke-static {p1}, Lif/a;->j0(Ljava/lang/String;)Z

    .line 406
    .line 407
    .line 408
    move-result p1

    .line 409
    if-nez p1, :cond_b

    .line 410
    .line 411
    iget-object p1, v4, Lha/ve;->k:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 412
    .line 413
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 414
    .line 415
    invoke-static {p1}, Lif/a;->f0(Ljava/lang/String;)Z

    .line 416
    .line 417
    .line 418
    move-result p1

    .line 419
    if-eqz p1, :cond_9

    .line 420
    .line 421
    goto :goto_0

    .line 422
    :cond_9
    iget-object p1, v4, Lha/ve;->k:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 423
    .line 424
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 425
    .line 426
    invoke-static {p1}, Lif/a;->c0(Ljava/lang/String;)Z

    .line 427
    .line 428
    .line 429
    move-result p1

    .line 430
    if-eqz p1, :cond_a

    .line 431
    .line 432
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 433
    .line 434
    const-string v0, "\u770b\u56fe"

    .line 435
    .line 436
    invoke-virtual {p1, v3, v0}, Lc6/g;->p(ILjava/lang/Object;)V

    .line 437
    .line 438
    .line 439
    goto/16 :goto_2

    .line 440
    .line 441
    :cond_a
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 442
    .line 443
    invoke-virtual {p1, v7}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 444
    .line 445
    .line 446
    goto :goto_2

    .line 447
    :cond_b
    :goto_0
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 448
    .line 449
    invoke-virtual {p1, v3, v7}, Lc6/g;->p(ILjava/lang/Object;)V

    .line 450
    .line 451
    .line 452
    iget-object p1, v4, Lha/ve;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 453
    .line 454
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 455
    .line 456
    .line 457
    iget-object p1, v4, Lha/ve;->j:Lx9/n5;

    .line 458
    .line 459
    iget p1, p1, Lx9/n5;->a:I

    .line 460
    .line 461
    if-eq p1, v5, :cond_f

    .line 462
    .line 463
    iget-object p1, v4, Lha/ve;->m:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 464
    .line 465
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 466
    .line 467
    .line 468
    goto :goto_2

    .line 469
    :cond_c
    :goto_1
    iget-object p1, v4, Lha/ve;->k:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 470
    .line 471
    iget-boolean p1, p1, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 472
    .line 473
    if-eqz p1, :cond_d

    .line 474
    .line 475
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 476
    .line 477
    invoke-virtual {p1, v11}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 478
    .line 479
    .line 480
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 481
    .line 482
    invoke-virtual {p1, v10}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 483
    .line 484
    .line 485
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 486
    .line 487
    invoke-virtual {p1, v8}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 488
    .line 489
    .line 490
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 491
    .line 492
    invoke-virtual {p1, v13}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 493
    .line 494
    .line 495
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 496
    .line 497
    invoke-virtual {p1, v9}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 498
    .line 499
    .line 500
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 501
    .line 502
    invoke-virtual {p1, v6}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 503
    .line 504
    .line 505
    goto :goto_2

    .line 506
    :cond_d
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 507
    .line 508
    invoke-virtual {p1, v6}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 509
    .line 510
    .line 511
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 512
    .line 513
    invoke-virtual {p1, v11}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 514
    .line 515
    .line 516
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 517
    .line 518
    invoke-virtual {p1, v10}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 519
    .line 520
    .line 521
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 522
    .line 523
    invoke-virtual {p1, v8}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 524
    .line 525
    .line 526
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 527
    .line 528
    invoke-virtual {p1, v13}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 529
    .line 530
    .line 531
    iget-object p1, v4, Lha/ve;->k:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 532
    .line 533
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 534
    .line 535
    invoke-static {p1}, Lif/a;->X(Ljava/lang/String;)Z

    .line 536
    .line 537
    .line 538
    move-result p1

    .line 539
    if-eqz p1, :cond_e

    .line 540
    .line 541
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 542
    .line 543
    invoke-virtual {p1, v2, v0}, Lc6/g;->p(ILjava/lang/Object;)V

    .line 544
    .line 545
    .line 546
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 547
    .line 548
    invoke-virtual {p1, v9}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 549
    .line 550
    .line 551
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 552
    .line 553
    invoke-virtual {p1, v7}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 554
    .line 555
    .line 556
    goto :goto_2

    .line 557
    :cond_e
    iget-object p1, v4, Lha/ve;->h:Lx9/z5;

    .line 558
    .line 559
    invoke-virtual {p1, v3, v9}, Lc6/g;->p(ILjava/lang/Object;)V

    .line 560
    .line 561
    .line 562
    :cond_f
    :goto_2
    return-void
.end method

.method public final z(Z)V
    .locals 9

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x0

    .line 6
    iget-object v4, p0, Lua/i9;->n:Lx9/a6;

    .line 7
    .line 8
    invoke-virtual {v4}, Lc6/g;->b()I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    if-nez v4, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v4, p0, Lua/i9;->j:Lx9/o5;

    .line 16
    .line 17
    iget v5, p0, Lua/i9;->T:I

    .line 18
    .line 19
    invoke-virtual {v4, v5}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    check-cast v4, Lx9/n5;

    .line 24
    .line 25
    iget-object v5, p0, Lua/i9;->n:Lx9/a6;

    .line 26
    .line 27
    invoke-virtual {v5}, Lc6/g;->b()I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    const/4 v7, 0x1

    .line 32
    sub-int/2addr v6, v7

    .line 33
    invoke-virtual {v5, v6}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    check-cast v5, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 38
    .line 39
    sget-object v6, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 40
    .line 41
    sget-object v6, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 42
    .line 43
    iput-object v4, v6, Lcom/yunpan/appmanage/util/k;->A:Lx9/n5;

    .line 44
    .line 45
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 46
    .line 47
    iget-object v8, v4, Lx9/n5;->g:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    iget-object v6, p0, Lua/i9;->G:Landroid/widget/LinearLayout;

    .line 55
    .line 56
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    iget-object v6, p0, Lua/i9;->H:Landroid/widget/TextView;

    .line 60
    .line 61
    const-string v8, "\u6b63\u5728\u52a0\u8f7d\u66f4\u591a"

    .line 62
    .line 63
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    iget-object v6, p0, Lua/i9;->q:Lx9/y5;

    .line 68
    .line 69
    invoke-virtual {v6}, Lc6/g;->b()I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-lez v6, :cond_2

    .line 74
    .line 75
    iget-object v6, p0, Lua/i9;->q:Lx9/y5;

    .line 76
    .line 77
    new-instance v8, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v6, v8}, Lc6/g;->E(Ljava/util/List;)V

    .line 83
    .line 84
    .line 85
    :cond_2
    const-string v6, ""

    .line 86
    .line 87
    invoke-virtual {p0, v6, v3, v3}, Lua/i9;->u(Ljava/lang/String;IZ)V

    .line 88
    .line 89
    .line 90
    iget-object v6, p0, Lua/i9;->I:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 91
    .line 92
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    iget-object v6, p0, Lua/i9;->K:Landroid/widget/TextView;

    .line 96
    .line 97
    const-string v8, "\u8bfb\u53d6\u4e2d"

    .line 98
    .line 99
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    iput v7, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->page:I

    .line 103
    .line 104
    iput-boolean v3, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->hasMoreData:Z

    .line 105
    .line 106
    iget-object v6, p0, Lua/i9;->p:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 107
    .line 108
    invoke-virtual {v6, v3}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setHasMoreData(Z)V

    .line 109
    .line 110
    .line 111
    :goto_0
    iget v6, v4, Lx9/n5;->a:I

    .line 112
    .line 113
    if-ne v6, v7, :cond_3

    .line 114
    .line 115
    new-instance v0, Lba/b;

    .line 116
    .line 117
    invoke-direct {v0, v5, v4, v2}, Lba/b;-><init>(Lcom/yunpan/appmanage/bean/WpPathBean;Lx9/n5;I)V

    .line 118
    .line 119
    .line 120
    new-instance v1, Lmc/c;

    .line 121
    .line 122
    invoke-direct {v1, v3, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 126
    .line 127
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    goto/16 :goto_1

    .line 140
    .line 141
    :cond_3
    if-ne v6, v2, :cond_4

    .line 142
    .line 143
    new-instance v0, Lba/b;

    .line 144
    .line 145
    invoke-direct {v0, v4, v5, v1}, Lba/b;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 146
    .line 147
    .line 148
    new-instance v1, Lmc/c;

    .line 149
    .line 150
    invoke-direct {v1, v3, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 154
    .line 155
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    goto/16 :goto_1

    .line 168
    .line 169
    :cond_4
    const/4 v7, 0x3

    .line 170
    if-ne v6, v7, :cond_5

    .line 171
    .line 172
    new-instance v0, Lba/b;

    .line 173
    .line 174
    const/16 v1, 0xe

    .line 175
    .line 176
    invoke-direct {v0, v4, v5, v1}, Lba/b;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 177
    .line 178
    .line 179
    new-instance v1, Lmc/c;

    .line 180
    .line 181
    invoke-direct {v1, v3, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 185
    .line 186
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    goto/16 :goto_1

    .line 199
    .line 200
    :cond_5
    const/4 v7, 0x4

    .line 201
    if-ne v6, v7, :cond_6

    .line 202
    .line 203
    new-instance v1, Lba/b;

    .line 204
    .line 205
    invoke-direct {v1, v4, v5, v0}, Lba/b;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 206
    .line 207
    .line 208
    new-instance v0, Lmc/c;

    .line 209
    .line 210
    invoke-direct {v0, v3, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 214
    .line 215
    invoke-virtual {v0, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    goto/16 :goto_1

    .line 228
    .line 229
    :cond_6
    const/4 v7, 0x5

    .line 230
    if-ne v6, v7, :cond_7

    .line 231
    .line 232
    new-instance v0, Lba/b;

    .line 233
    .line 234
    const/16 v1, 0xc

    .line 235
    .line 236
    invoke-direct {v0, v4, v5, v1}, Lba/b;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 237
    .line 238
    .line 239
    new-instance v1, Lmc/c;

    .line 240
    .line 241
    invoke-direct {v1, v3, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 245
    .line 246
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    goto/16 :goto_1

    .line 259
    .line 260
    :cond_7
    const/4 v7, 0x6

    .line 261
    if-ne v6, v7, :cond_8

    .line 262
    .line 263
    new-instance v1, Lba/f;

    .line 264
    .line 265
    invoke-direct {v1, v4, v5, v0}, Lba/f;-><init>(Lx9/n5;Ljava/lang/Object;I)V

    .line 266
    .line 267
    .line 268
    new-instance v0, Lmc/c;

    .line 269
    .line 270
    invoke-direct {v0, v3, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 274
    .line 275
    invoke-virtual {v0, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    goto :goto_1

    .line 288
    :cond_8
    if-ne v6, v1, :cond_9

    .line 289
    .line 290
    new-instance v0, Lba/b;

    .line 291
    .line 292
    const/16 v1, 0xf

    .line 293
    .line 294
    invoke-direct {v0, v5, v4, v1}, Lba/b;-><init>(Lcom/yunpan/appmanage/bean/WpPathBean;Lx9/n5;I)V

    .line 295
    .line 296
    .line 297
    new-instance v1, Lmc/c;

    .line 298
    .line 299
    invoke-direct {v1, v3, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 303
    .line 304
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    goto :goto_1

    .line 317
    :cond_9
    const/16 v0, 0x14

    .line 318
    .line 319
    if-ne v6, v0, :cond_a

    .line 320
    .line 321
    new-instance v0, Lba/b;

    .line 322
    .line 323
    const/16 v1, 0x9

    .line 324
    .line 325
    invoke-direct {v0, v4, v5, v1}, Lba/b;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 326
    .line 327
    .line 328
    new-instance v1, Lmc/c;

    .line 329
    .line 330
    invoke-direct {v1, v3, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 334
    .line 335
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    goto :goto_1

    .line 348
    :cond_a
    const/16 v0, 0x15

    .line 349
    .line 350
    if-ne v6, v0, :cond_b

    .line 351
    .line 352
    new-instance v0, Lba/b;

    .line 353
    .line 354
    invoke-direct {v0, v4, v5, v3}, Lba/b;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 355
    .line 356
    .line 357
    new-instance v1, Lmc/c;

    .line 358
    .line 359
    invoke-direct {v1, v3, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 360
    .line 361
    .line 362
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 363
    .line 364
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    goto :goto_1

    .line 377
    :cond_b
    const/4 v0, 0x0

    .line 378
    :goto_1
    new-instance v1, Lua/z3;

    .line 379
    .line 380
    invoke-direct {v1, v2, p0, v5, p1}, Lua/z3;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 384
    .line 385
    .line 386
    return-void
.end method
