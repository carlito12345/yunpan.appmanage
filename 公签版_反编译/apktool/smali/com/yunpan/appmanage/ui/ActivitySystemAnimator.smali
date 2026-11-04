.class public Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic K:I


# instance fields
.field public C:Landroid/widget/TextView;

.field public D:Landroidx/recyclerview/widget/RecyclerView;

.field public E:Lx9/c0;

.field public F:Landroidx/recyclerview/widget/RecyclerView;

.field public G:Lx9/c0;

.field public H:Landroidx/recyclerview/widget/RecyclerView;

.field public I:Lx9/c0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0057

    return v0
.end method

.method public final u()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const v1, 0x7f0b03ad

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroid/widget/TextView;

    .line 11
    .line 12
    iput-object v1, v0, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->C:Landroid/widget/TextView;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 15
    .line 16
    .line 17
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->C:Landroid/widget/TextView;

    .line 18
    .line 19
    new-instance v2, Lua/z6;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-direct {v2, v3, v0}, Lua/z6;-><init>(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    .line 27
    .line 28
    const v1, 0x7f0b0511

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 36
    .line 37
    iput-object v1, v0, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->D:Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    .line 39
    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 40
    .line 41
    iget-object v3, v0, Lda/g;->A:Lda/g;

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-direct {v2, v3, v4, v4}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-string v2, "window_animation_scale"

    .line 55
    .line 56
    const/high16 v3, 0x3f800000    # 1.0f

    .line 57
    .line 58
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    new-instance v2, Lx9/c0;

    .line 63
    .line 64
    invoke-direct {v2}, Lx9/c0;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v2, v0, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->E:Lx9/c0;

    .line 68
    .line 69
    new-instance v5, Lx9/x0;

    .line 70
    .line 71
    const/4 v7, 0x0

    .line 72
    cmpl-float v8, v1, v7

    .line 73
    .line 74
    if-nez v8, :cond_0

    .line 75
    .line 76
    const/4 v8, 0x1

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    const/4 v8, 0x0

    .line 79
    :goto_0
    const-string v9, "\u5173\u95ed\u52a8\u753b"

    .line 80
    .line 81
    invoke-direct {v5, v9, v8}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->E:Lx9/c0;

    .line 88
    .line 89
    new-instance v5, Lx9/x0;

    .line 90
    .line 91
    const/high16 v8, 0x3e800000    # 0.25f

    .line 92
    .line 93
    cmpl-float v10, v1, v8

    .line 94
    .line 95
    if-nez v10, :cond_1

    .line 96
    .line 97
    const/4 v10, 0x1

    .line 98
    goto :goto_1

    .line 99
    :cond_1
    const/4 v10, 0x0

    .line 100
    :goto_1
    const-string v11, "0.25x"

    .line 101
    .line 102
    invoke-direct {v5, v11, v10}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->E:Lx9/c0;

    .line 109
    .line 110
    new-instance v5, Lx9/x0;

    .line 111
    .line 112
    const/high16 v10, 0x3f000000    # 0.5f

    .line 113
    .line 114
    cmpl-float v12, v1, v10

    .line 115
    .line 116
    if-nez v12, :cond_2

    .line 117
    .line 118
    const/4 v12, 0x1

    .line 119
    goto :goto_2

    .line 120
    :cond_2
    const/4 v12, 0x0

    .line 121
    :goto_2
    const-string v13, "0.5x"

    .line 122
    .line 123
    invoke-direct {v5, v13, v12}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->E:Lx9/c0;

    .line 130
    .line 131
    new-instance v5, Lx9/x0;

    .line 132
    .line 133
    const/high16 v12, 0x3f400000    # 0.75f

    .line 134
    .line 135
    cmpl-float v14, v1, v12

    .line 136
    .line 137
    if-nez v14, :cond_3

    .line 138
    .line 139
    const/4 v14, 0x1

    .line 140
    goto :goto_3

    .line 141
    :cond_3
    const/4 v14, 0x0

    .line 142
    :goto_3
    const-string v15, "0.75x"

    .line 143
    .line 144
    invoke-direct {v5, v15, v14}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->E:Lx9/c0;

    .line 151
    .line 152
    new-instance v5, Lx9/x0;

    .line 153
    .line 154
    cmpl-float v14, v1, v3

    .line 155
    .line 156
    if-nez v14, :cond_4

    .line 157
    .line 158
    const/4 v14, 0x1

    .line 159
    goto :goto_4

    .line 160
    :cond_4
    const/4 v14, 0x0

    .line 161
    :goto_4
    const-string v6, "1.0x"

    .line 162
    .line 163
    invoke-direct {v5, v6, v14}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->E:Lx9/c0;

    .line 170
    .line 171
    new-instance v5, Lx9/x0;

    .line 172
    .line 173
    const/high16 v14, 0x3fa00000    # 1.25f

    .line 174
    .line 175
    cmpl-float v16, v1, v14

    .line 176
    .line 177
    if-nez v16, :cond_5

    .line 178
    .line 179
    const/4 v14, 0x1

    .line 180
    goto :goto_5

    .line 181
    :cond_5
    const/4 v14, 0x0

    .line 182
    :goto_5
    const-string v12, "1.25x"

    .line 183
    .line 184
    invoke-direct {v5, v12, v14}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->E:Lx9/c0;

    .line 191
    .line 192
    new-instance v5, Lx9/x0;

    .line 193
    .line 194
    const/high16 v14, 0x3fc00000    # 1.5f

    .line 195
    .line 196
    cmpl-float v1, v1, v14

    .line 197
    .line 198
    if-nez v1, :cond_6

    .line 199
    .line 200
    const/4 v1, 0x1

    .line 201
    goto :goto_6

    .line 202
    :cond_6
    const/4 v1, 0x0

    .line 203
    :goto_6
    const-string v14, "1.5x"

    .line 204
    .line 205
    invoke-direct {v5, v14, v1}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->D:Landroidx/recyclerview/widget/RecyclerView;

    .line 212
    .line 213
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->E:Lx9/c0;

    .line 214
    .line 215
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 216
    .line 217
    .line 218
    const v1, 0x7f0b0510

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 226
    .line 227
    iput-object v1, v0, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->F:Landroidx/recyclerview/widget/RecyclerView;

    .line 228
    .line 229
    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 230
    .line 231
    iget-object v5, v0, Lda/g;->A:Lda/g;

    .line 232
    .line 233
    invoke-direct {v2, v5, v4, v4}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    const-string v2, "transition_animation_scale"

    .line 244
    .line 245
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    new-instance v2, Lx9/c0;

    .line 250
    .line 251
    invoke-direct {v2}, Lx9/c0;-><init>()V

    .line 252
    .line 253
    .line 254
    iput-object v2, v0, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->G:Lx9/c0;

    .line 255
    .line 256
    new-instance v5, Lx9/x0;

    .line 257
    .line 258
    cmpl-float v17, v1, v7

    .line 259
    .line 260
    if-nez v17, :cond_7

    .line 261
    .line 262
    const/4 v7, 0x1

    .line 263
    goto :goto_7

    .line 264
    :cond_7
    const/4 v7, 0x0

    .line 265
    :goto_7
    invoke-direct {v5, v9, v7}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v2, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->G:Lx9/c0;

    .line 272
    .line 273
    new-instance v5, Lx9/x0;

    .line 274
    .line 275
    cmpl-float v7, v1, v8

    .line 276
    .line 277
    if-nez v7, :cond_8

    .line 278
    .line 279
    const/4 v7, 0x1

    .line 280
    goto :goto_8

    .line 281
    :cond_8
    const/4 v7, 0x0

    .line 282
    :goto_8
    invoke-direct {v5, v11, v7}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v2, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->G:Lx9/c0;

    .line 289
    .line 290
    new-instance v5, Lx9/x0;

    .line 291
    .line 292
    cmpl-float v7, v1, v10

    .line 293
    .line 294
    if-nez v7, :cond_9

    .line 295
    .line 296
    const/4 v7, 0x1

    .line 297
    goto :goto_9

    .line 298
    :cond_9
    const/4 v7, 0x0

    .line 299
    :goto_9
    invoke-direct {v5, v13, v7}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v2, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 303
    .line 304
    .line 305
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->G:Lx9/c0;

    .line 306
    .line 307
    new-instance v5, Lx9/x0;

    .line 308
    .line 309
    const/high16 v7, 0x3f400000    # 0.75f

    .line 310
    .line 311
    cmpl-float v18, v1, v7

    .line 312
    .line 313
    if-nez v18, :cond_a

    .line 314
    .line 315
    const/4 v7, 0x1

    .line 316
    goto :goto_a

    .line 317
    :cond_a
    const/4 v7, 0x0

    .line 318
    :goto_a
    invoke-direct {v5, v15, v7}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v2, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->G:Lx9/c0;

    .line 325
    .line 326
    new-instance v5, Lx9/x0;

    .line 327
    .line 328
    cmpl-float v7, v1, v3

    .line 329
    .line 330
    if-nez v7, :cond_b

    .line 331
    .line 332
    const/4 v7, 0x1

    .line 333
    goto :goto_b

    .line 334
    :cond_b
    const/4 v7, 0x0

    .line 335
    :goto_b
    invoke-direct {v5, v6, v7}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v2, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->G:Lx9/c0;

    .line 342
    .line 343
    new-instance v5, Lx9/x0;

    .line 344
    .line 345
    const/high16 v7, 0x3fa00000    # 1.25f

    .line 346
    .line 347
    cmpl-float v18, v1, v7

    .line 348
    .line 349
    if-nez v18, :cond_c

    .line 350
    .line 351
    const/4 v7, 0x1

    .line 352
    goto :goto_c

    .line 353
    :cond_c
    const/4 v7, 0x0

    .line 354
    :goto_c
    invoke-direct {v5, v12, v7}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v2, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->G:Lx9/c0;

    .line 361
    .line 362
    new-instance v5, Lx9/x0;

    .line 363
    .line 364
    const/high16 v7, 0x3fc00000    # 1.5f

    .line 365
    .line 366
    cmpl-float v1, v1, v7

    .line 367
    .line 368
    if-nez v1, :cond_d

    .line 369
    .line 370
    const/4 v1, 0x1

    .line 371
    goto :goto_d

    .line 372
    :cond_d
    const/4 v1, 0x0

    .line 373
    :goto_d
    invoke-direct {v5, v14, v1}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v2, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 377
    .line 378
    .line 379
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->F:Landroidx/recyclerview/widget/RecyclerView;

    .line 380
    .line 381
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->G:Lx9/c0;

    .line 382
    .line 383
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 384
    .line 385
    .line 386
    const v1, 0x7f0b050f

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 394
    .line 395
    iput-object v1, v0, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->H:Landroidx/recyclerview/widget/RecyclerView;

    .line 396
    .line 397
    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 398
    .line 399
    iget-object v5, v0, Lda/g;->A:Lda/g;

    .line 400
    .line 401
    invoke-direct {v2, v5, v4, v4}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    const-string v2, "animator_duration_scale"

    .line 412
    .line 413
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 414
    .line 415
    .line 416
    move-result v1

    .line 417
    new-instance v2, Lx9/c0;

    .line 418
    .line 419
    invoke-direct {v2}, Lx9/c0;-><init>()V

    .line 420
    .line 421
    .line 422
    iput-object v2, v0, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->I:Lx9/c0;

    .line 423
    .line 424
    new-instance v5, Lx9/x0;

    .line 425
    .line 426
    const/4 v7, 0x0

    .line 427
    cmpl-float v7, v1, v7

    .line 428
    .line 429
    if-nez v7, :cond_e

    .line 430
    .line 431
    const/4 v7, 0x1

    .line 432
    goto :goto_e

    .line 433
    :cond_e
    const/4 v7, 0x0

    .line 434
    :goto_e
    invoke-direct {v5, v9, v7}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v2, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 438
    .line 439
    .line 440
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->I:Lx9/c0;

    .line 441
    .line 442
    new-instance v5, Lx9/x0;

    .line 443
    .line 444
    cmpl-float v7, v1, v8

    .line 445
    .line 446
    if-nez v7, :cond_f

    .line 447
    .line 448
    const/4 v7, 0x1

    .line 449
    goto :goto_f

    .line 450
    :cond_f
    const/4 v7, 0x0

    .line 451
    :goto_f
    invoke-direct {v5, v11, v7}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v2, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 455
    .line 456
    .line 457
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->I:Lx9/c0;

    .line 458
    .line 459
    new-instance v5, Lx9/x0;

    .line 460
    .line 461
    cmpl-float v7, v1, v10

    .line 462
    .line 463
    if-nez v7, :cond_10

    .line 464
    .line 465
    const/4 v7, 0x1

    .line 466
    goto :goto_10

    .line 467
    :cond_10
    const/4 v7, 0x0

    .line 468
    :goto_10
    invoke-direct {v5, v13, v7}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v2, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 472
    .line 473
    .line 474
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->I:Lx9/c0;

    .line 475
    .line 476
    new-instance v5, Lx9/x0;

    .line 477
    .line 478
    const/high16 v7, 0x3f400000    # 0.75f

    .line 479
    .line 480
    cmpl-float v7, v1, v7

    .line 481
    .line 482
    if-nez v7, :cond_11

    .line 483
    .line 484
    const/4 v7, 0x1

    .line 485
    goto :goto_11

    .line 486
    :cond_11
    const/4 v7, 0x0

    .line 487
    :goto_11
    invoke-direct {v5, v15, v7}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v2, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 491
    .line 492
    .line 493
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->I:Lx9/c0;

    .line 494
    .line 495
    new-instance v5, Lx9/x0;

    .line 496
    .line 497
    cmpl-float v3, v1, v3

    .line 498
    .line 499
    if-nez v3, :cond_12

    .line 500
    .line 501
    const/4 v3, 0x1

    .line 502
    goto :goto_12

    .line 503
    :cond_12
    const/4 v3, 0x0

    .line 504
    :goto_12
    invoke-direct {v5, v6, v3}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v2, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 508
    .line 509
    .line 510
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->I:Lx9/c0;

    .line 511
    .line 512
    new-instance v3, Lx9/x0;

    .line 513
    .line 514
    const/high16 v5, 0x3fa00000    # 1.25f

    .line 515
    .line 516
    cmpl-float v5, v1, v5

    .line 517
    .line 518
    if-nez v5, :cond_13

    .line 519
    .line 520
    const/4 v5, 0x1

    .line 521
    goto :goto_13

    .line 522
    :cond_13
    const/4 v5, 0x0

    .line 523
    :goto_13
    invoke-direct {v3, v12, v5}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v2, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 527
    .line 528
    .line 529
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->I:Lx9/c0;

    .line 530
    .line 531
    new-instance v3, Lx9/x0;

    .line 532
    .line 533
    const/high16 v5, 0x3fc00000    # 1.5f

    .line 534
    .line 535
    cmpl-float v1, v1, v5

    .line 536
    .line 537
    if-nez v1, :cond_14

    .line 538
    .line 539
    const/4 v4, 0x1

    .line 540
    :cond_14
    invoke-direct {v3, v14, v4}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {v2, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 544
    .line 545
    .line 546
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->H:Landroidx/recyclerview/widget/RecyclerView;

    .line 547
    .line 548
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->I:Lx9/c0;

    .line 549
    .line 550
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 551
    .line 552
    .line 553
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->E:Lx9/c0;

    .line 554
    .line 555
    new-instance v2, Lua/a7;

    .line 556
    .line 557
    const/4 v3, 0x0

    .line 558
    invoke-direct {v2, v0, v3}, Lua/a7;-><init>(Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;I)V

    .line 559
    .line 560
    .line 561
    iput-object v2, v1, Lc6/g;->e:Lc6/e;

    .line 562
    .line 563
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->G:Lx9/c0;

    .line 564
    .line 565
    new-instance v2, Lua/a7;

    .line 566
    .line 567
    const/4 v3, 0x1

    .line 568
    invoke-direct {v2, v0, v3}, Lua/a7;-><init>(Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;I)V

    .line 569
    .line 570
    .line 571
    iput-object v2, v1, Lc6/g;->e:Lc6/e;

    .line 572
    .line 573
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->I:Lx9/c0;

    .line 574
    .line 575
    new-instance v2, Lua/a7;

    .line 576
    .line 577
    const/4 v3, 0x2

    .line 578
    invoke-direct {v2, v0, v3}, Lua/a7;-><init>(Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;I)V

    .line 579
    .line 580
    .line 581
    iput-object v2, v1, Lc6/g;->e:Lc6/e;

    .line 582
    .line 583
    return-void
.end method

.method public final x(II)V
    .locals 3

    .line 1
    new-instance v0, Lha/e8;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lha/e8;-><init>(Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;II)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lmc/c;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Lua/b7;

    .line 27
    .line 28
    invoke-direct {v1, p0, p1, p2}, Lua/b7;-><init>(Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;II)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
