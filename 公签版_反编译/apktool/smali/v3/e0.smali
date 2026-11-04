.class public final Lv3/e0;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:Z

.field public C:Ljava/lang/CharSequence;

.field public D:I

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public final a:Lv3/a0;

.field public final b:Landroidx/media3/ui/AspectRatioFrameLayout;

.field public final c:Landroid/view/View;

.field public final d:Landroid/view/View;

.field public final e:Z

.field public final f:Lv3/d0;

.field public final g:Landroid/widget/ImageView;

.field public final h:Landroid/widget/ImageView;

.field public final i:Landroidx/media3/ui/SubtitleView;

.field public final j:Landroid/view/View;

.field public final k:Landroid/widget/TextView;

.field public final l:Lv3/t;

.field public final m:Landroid/widget/FrameLayout;

.field public final n:Landroid/widget/FrameLayout;

.field public final p:Landroid/os/Handler;

.field public final q:Ljava/lang/Class;

.field public final r:Ljava/lang/reflect/Method;

.field public final s:Ljava/lang/Object;

.field public t:Lr1/m0;

.field public v:Z

.field public w:Lv3/s;

.field public x:I

.field public y:I

.field public z:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-direct {p0, p1, v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    .line 6
    .line 7
    new-instance v3, Lv3/a0;

    .line 8
    .line 9
    invoke-direct {v3, p0}, Lv3/a0;-><init>(Lv3/e0;)V

    .line 10
    .line 11
    .line 12
    iput-object v3, p0, Lv3/e0;->a:Lv3/a0;

    .line 13
    .line 14
    new-instance v4, Landroid/os/Handler;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 21
    .line 22
    .line 23
    iput-object v4, p0, Lv3/e0;->p:Landroid/os/Handler;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    iput-object v2, p0, Lv3/e0;->b:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 32
    .line 33
    iput-object v2, p0, Lv3/e0;->c:Landroid/view/View;

    .line 34
    .line 35
    iput-object v2, p0, Lv3/e0;->d:Landroid/view/View;

    .line 36
    .line 37
    iput-boolean v1, p0, Lv3/e0;->e:Z

    .line 38
    .line 39
    iput-object v2, p0, Lv3/e0;->f:Lv3/d0;

    .line 40
    .line 41
    iput-object v2, p0, Lv3/e0;->g:Landroid/widget/ImageView;

    .line 42
    .line 43
    iput-object v2, p0, Lv3/e0;->h:Landroid/widget/ImageView;

    .line 44
    .line 45
    iput-object v2, p0, Lv3/e0;->i:Landroidx/media3/ui/SubtitleView;

    .line 46
    .line 47
    iput-object v2, p0, Lv3/e0;->j:Landroid/view/View;

    .line 48
    .line 49
    iput-object v2, p0, Lv3/e0;->k:Landroid/widget/TextView;

    .line 50
    .line 51
    iput-object v2, p0, Lv3/e0;->l:Lv3/t;

    .line 52
    .line 53
    iput-object v2, p0, Lv3/e0;->m:Landroid/widget/FrameLayout;

    .line 54
    .line 55
    iput-object v2, p0, Lv3/e0;->n:Landroid/widget/FrameLayout;

    .line 56
    .line 57
    iput-object v2, p0, Lv3/e0;->q:Ljava/lang/Class;

    .line 58
    .line 59
    iput-object v2, p0, Lv3/e0;->r:Ljava/lang/reflect/Method;

    .line 60
    .line 61
    iput-object v2, p0, Lv3/e0;->s:Ljava/lang/Object;

    .line 62
    .line 63
    new-instance v0, Landroid/widget/ImageView;

    .line 64
    .line 65
    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const v2, 0x7f0800d5

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {v1, v2, p1}, Ltb/b;->g(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v1}, Lr8/a;->b(Landroid/content/res/Resources;)I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 94
    .line 95
    .line 96
    goto/16 :goto_7

    .line 97
    .line 98
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    const v5, 0x7f0e010e

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4, v5, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    const/high16 v4, 0x40000

    .line 109
    .line 110
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 111
    .line 112
    .line 113
    const v4, 0x7f0b0113

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    check-cast v4, Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 121
    .line 122
    iput-object v4, p0, Lv3/e0;->b:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 123
    .line 124
    if-eqz v4, :cond_1

    .line 125
    .line 126
    invoke-virtual {v4, v1}, Landroidx/media3/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    .line 127
    .line 128
    .line 129
    :cond_1
    const v5, 0x7f0b0136

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    iput-object v5, p0, Lv3/e0;->c:Landroid/view/View;

    .line 137
    .line 138
    const/16 v5, 0x22

    .line 139
    .line 140
    if-eqz v4, :cond_3

    .line 141
    .line 142
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    .line 143
    .line 144
    const/4 v7, -0x1

    .line 145
    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 146
    .line 147
    .line 148
    new-instance v7, Landroid/view/SurfaceView;

    .line 149
    .line 150
    invoke-direct {v7, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 151
    .line 152
    .line 153
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 154
    .line 155
    if-lt v8, v5, :cond_2

    .line 156
    .line 157
    invoke-static {v7}, La2/b1;->i(Landroid/view/SurfaceView;)V

    .line 158
    .line 159
    .line 160
    :cond_2
    iput-object v7, p0, Lv3/e0;->d:Landroid/view/View;

    .line 161
    .line 162
    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v7, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v7, v1}, Landroid/view/View;->setClickable(Z)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4, v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 172
    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_3
    iput-object v2, p0, Lv3/e0;->d:Landroid/view/View;

    .line 176
    .line 177
    :goto_0
    iput-boolean v1, p0, Lv3/e0;->e:Z

    .line 178
    .line 179
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 180
    .line 181
    if-ne v3, v5, :cond_4

    .line 182
    .line 183
    new-instance v3, Lv3/d0;

    .line 184
    .line 185
    invoke-direct {v3}, Lv3/d0;-><init>()V

    .line 186
    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_4
    move-object v3, v2

    .line 190
    :goto_1
    iput-object v3, p0, Lv3/e0;->f:Lv3/d0;

    .line 191
    .line 192
    const v3, 0x7f0b010b

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    check-cast v3, Landroid/widget/FrameLayout;

    .line 200
    .line 201
    iput-object v3, p0, Lv3/e0;->m:Landroid/widget/FrameLayout;

    .line 202
    .line 203
    const v3, 0x7f0b0127

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    check-cast v3, Landroid/widget/FrameLayout;

    .line 211
    .line 212
    iput-object v3, p0, Lv3/e0;->n:Landroid/widget/FrameLayout;

    .line 213
    .line 214
    const v3, 0x7f0b011f

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    check-cast v3, Landroid/widget/ImageView;

    .line 222
    .line 223
    iput-object v3, p0, Lv3/e0;->g:Landroid/widget/ImageView;

    .line 224
    .line 225
    iput v1, p0, Lv3/e0;->y:I

    .line 226
    .line 227
    :try_start_0
    const-class v3, Landroidx/media3/exoplayer/ExoPlayer;

    .line 228
    .line 229
    const-class v4, Landroidx/media3/exoplayer/image/ImageOutput;

    .line 230
    .line 231
    const-string v5, "setImageOutput"

    .line 232
    .line 233
    new-array v6, v0, [Ljava/lang/Class;

    .line 234
    .line 235
    aput-object v4, v6, v1

    .line 236
    .line 237
    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    new-array v7, v0, [Ljava/lang/Class;

    .line 246
    .line 247
    aput-object v4, v7, v1

    .line 248
    .line 249
    new-instance v4, Lv3/z;

    .line 250
    .line 251
    invoke-direct {v4, p0}, Lv3/z;-><init>(Lv3/e0;)V

    .line 252
    .line 253
    .line 254
    invoke-static {v6, v7, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    goto :goto_2

    .line 259
    :catch_0
    move-object v3, v2

    .line 260
    move-object v4, v3

    .line 261
    move-object v5, v4

    .line 262
    :goto_2
    iput-object v3, p0, Lv3/e0;->q:Ljava/lang/Class;

    .line 263
    .line 264
    iput-object v5, p0, Lv3/e0;->r:Ljava/lang/reflect/Method;

    .line 265
    .line 266
    iput-object v4, p0, Lv3/e0;->s:Ljava/lang/Object;

    .line 267
    .line 268
    const v3, 0x7f0b010c

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    check-cast v3, Landroid/widget/ImageView;

    .line 276
    .line 277
    iput-object v3, p0, Lv3/e0;->h:Landroid/widget/ImageView;

    .line 278
    .line 279
    if-eqz v3, :cond_5

    .line 280
    .line 281
    const/4 v3, 0x1

    .line 282
    goto :goto_3

    .line 283
    :cond_5
    const/4 v3, 0x0

    .line 284
    :goto_3
    iput v3, p0, Lv3/e0;->x:I

    .line 285
    .line 286
    const v3, 0x7f0b0139

    .line 287
    .line 288
    .line 289
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    check-cast v3, Landroidx/media3/ui/SubtitleView;

    .line 294
    .line 295
    iput-object v3, p0, Lv3/e0;->i:Landroidx/media3/ui/SubtitleView;

    .line 296
    .line 297
    if-eqz v3, :cond_6

    .line 298
    .line 299
    invoke-virtual {v3}, Landroidx/media3/ui/SubtitleView;->a()V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v3}, Landroidx/media3/ui/SubtitleView;->b()V

    .line 303
    .line 304
    .line 305
    :cond_6
    const v3, 0x7f0b0110

    .line 306
    .line 307
    .line 308
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    iput-object v3, p0, Lv3/e0;->j:Landroid/view/View;

    .line 313
    .line 314
    const/16 v4, 0x8

    .line 315
    .line 316
    if-eqz v3, :cond_7

    .line 317
    .line 318
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 319
    .line 320
    .line 321
    :cond_7
    iput v1, p0, Lv3/e0;->A:I

    .line 322
    .line 323
    const v3, 0x7f0b0118

    .line 324
    .line 325
    .line 326
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    check-cast v3, Landroid/widget/TextView;

    .line 331
    .line 332
    iput-object v3, p0, Lv3/e0;->k:Landroid/widget/TextView;

    .line 333
    .line 334
    if-eqz v3, :cond_8

    .line 335
    .line 336
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 337
    .line 338
    .line 339
    :cond_8
    const v3, 0x7f0b0114

    .line 340
    .line 341
    .line 342
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 343
    .line 344
    .line 345
    move-result-object v4

    .line 346
    check-cast v4, Lv3/t;

    .line 347
    .line 348
    const v5, 0x7f0b0115

    .line 349
    .line 350
    .line 351
    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 352
    .line 353
    .line 354
    move-result-object v5

    .line 355
    if-eqz v4, :cond_9

    .line 356
    .line 357
    iput-object v4, p0, Lv3/e0;->l:Lv3/t;

    .line 358
    .line 359
    goto :goto_4

    .line 360
    :cond_9
    if-eqz v5, :cond_a

    .line 361
    .line 362
    new-instance v2, Lv3/t;

    .line 363
    .line 364
    invoke-direct {v2, p1}, Lv3/t;-><init>(Landroid/content/ContextWrapper;)V

    .line 365
    .line 366
    .line 367
    iput-object v2, p0, Lv3/e0;->l:Lv3/t;

    .line 368
    .line 369
    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 373
    .line 374
    .line 375
    move-result-object p1

    .line 376
    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 380
    .line 381
    .line 382
    move-result-object p1

    .line 383
    check-cast p1, Landroid/view/ViewGroup;

    .line 384
    .line 385
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 386
    .line 387
    .line 388
    move-result v3

    .line 389
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 393
    .line 394
    .line 395
    goto :goto_4

    .line 396
    :cond_a
    iput-object v2, p0, Lv3/e0;->l:Lv3/t;

    .line 397
    .line 398
    :goto_4
    iget-object p1, p0, Lv3/e0;->l:Lv3/t;

    .line 399
    .line 400
    if-eqz p1, :cond_b

    .line 401
    .line 402
    const/16 v2, 0x1388

    .line 403
    .line 404
    goto :goto_5

    .line 405
    :cond_b
    const/4 v2, 0x0

    .line 406
    :goto_5
    iput v2, p0, Lv3/e0;->D:I

    .line 407
    .line 408
    iput-boolean v0, p0, Lv3/e0;->G:Z

    .line 409
    .line 410
    iput-boolean v0, p0, Lv3/e0;->E:Z

    .line 411
    .line 412
    iput-boolean v0, p0, Lv3/e0;->F:Z

    .line 413
    .line 414
    if-eqz p1, :cond_c

    .line 415
    .line 416
    const/4 v1, 0x1

    .line 417
    :cond_c
    iput-boolean v1, p0, Lv3/e0;->v:Z

    .line 418
    .line 419
    if-eqz p1, :cond_f

    .line 420
    .line 421
    iget-object p1, p1, Lv3/t;->a:Lv3/y;

    .line 422
    .line 423
    iget v1, p1, Lv3/y;->A:I

    .line 424
    .line 425
    const/4 v2, 0x3

    .line 426
    if-eq v1, v2, :cond_e

    .line 427
    .line 428
    const/4 v2, 0x2

    .line 429
    if-ne v1, v2, :cond_d

    .line 430
    .line 431
    goto :goto_6

    .line 432
    :cond_d
    invoke-virtual {p1}, Lv3/y;->f()V

    .line 433
    .line 434
    .line 435
    invoke-virtual {p1, v2}, Lv3/y;->i(I)V

    .line 436
    .line 437
    .line 438
    :cond_e
    :goto_6
    iget-object p1, p0, Lv3/e0;->l:Lv3/t;

    .line 439
    .line 440
    iget-object v1, p0, Lv3/e0;->a:Lv3/a0;

    .line 441
    .line 442
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 446
    .line 447
    .line 448
    iget-object p1, p1, Lv3/t;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 449
    .line 450
    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    :cond_f
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {p0}, Lv3/e0;->m()V

    .line 457
    .line 458
    .line 459
    :goto_7
    return-void
.end method

.method public static a(Lv3/e0;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0}, Lv3/e0;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lv3/e0;->c()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iget-object v0, p0, Lv3/e0;->g:Landroid/widget/ImageView;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lv3/e0;->p()V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object p0, p0, Lv3/e0;->c:Landroid/view/View;

    .line 34
    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method private setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/e0;->g:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lv3/e0;->p()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private setImageOutput(Lr1/m0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lv3/e0;->q:Ljava/lang/Class;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    :try_start_0
    iget-object v0, p0, Lv3/e0;->r:Ljava/lang/reflect/Method;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lv3/e0;->s:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    new-array v2, v2, [Ljava/lang/Object;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    aput-object v1, v2, v3

    .line 30
    .line 31
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :catch_0
    move-exception p1

    .line 36
    goto :goto_0

    .line 37
    :catch_1
    move-exception p1

    .line 38
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 39
    .line 40
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    throw v0

    .line 44
    :cond_0
    :goto_1
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lv3/e0;->t:Lr1/m0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lv3/e0;->s:Ljava/lang/Object;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/16 v1, 0x1e

    .line 10
    .line 11
    move-object v2, v0

    .line 12
    check-cast v2, La/b;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, La/b;->i(I)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    check-cast v0, Ly1/x;

    .line 21
    .line 22
    invoke-virtual {v0}, Ly1/x;->F()Lr1/x0;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x4

    .line 27
    invoke-virtual {v0, v1}, Lr1/x0;->a(I)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    :goto_0
    return v0
.end method

.method public final c()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lv3/e0;->t:Lr1/m0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x1e

    .line 6
    .line 7
    move-object v2, v0

    .line 8
    check-cast v2, La/b;

    .line 9
    .line 10
    invoke-virtual {v2, v1}, La/b;->i(I)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    check-cast v0, Ly1/x;

    .line 17
    .line 18
    invoke-virtual {v0}, Ly1/x;->F()Lr1/x0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x2

    .line 23
    invoke-virtual {v0, v1}, Lr1/x0;->a(I)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lv3/e0;->g:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const v1, 0x106000d

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v0, 0x22

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lv3/e0;->f:Lv3/d0;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-boolean v0, p0, Lv3/e0;->H:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p1, Lv3/d0;->a:Landroid/window/SurfaceSyncGroup;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {v0}, La2/b1;->j(Landroid/window/SurfaceSyncGroup;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-object v0, p1, Lv3/d0;->a:Landroid/window/SurfaceSyncGroup;

    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lv3/e0;->t:Lr1/m0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x10

    .line 6
    .line 7
    check-cast v0, La/b;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, La/b;->i(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lv3/e0;->t:Lr1/m0;

    .line 16
    .line 17
    check-cast v0, Ly1/x;

    .line 18
    .line 19
    invoke-virtual {v0}, Ly1/x;->N()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/16 v1, 0x13

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    const/4 v3, 0x1

    .line 38
    if-eq v0, v1, :cond_2

    .line 39
    .line 40
    const/16 v1, 0x10e

    .line 41
    .line 42
    if-eq v0, v1, :cond_2

    .line 43
    .line 44
    const/16 v1, 0x16

    .line 45
    .line 46
    if-eq v0, v1, :cond_2

    .line 47
    .line 48
    const/16 v1, 0x10f

    .line 49
    .line 50
    if-eq v0, v1, :cond_2

    .line 51
    .line 52
    const/16 v1, 0x14

    .line 53
    .line 54
    if-eq v0, v1, :cond_2

    .line 55
    .line 56
    const/16 v1, 0x10d

    .line 57
    .line 58
    if-eq v0, v1, :cond_2

    .line 59
    .line 60
    const/16 v1, 0x15

    .line 61
    .line 62
    if-eq v0, v1, :cond_2

    .line 63
    .line 64
    const/16 v1, 0x10c

    .line 65
    .line 66
    if-eq v0, v1, :cond_2

    .line 67
    .line 68
    const/16 v1, 0x17

    .line 69
    .line 70
    if-ne v0, v1, :cond_1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    const/4 v0, 0x0

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 76
    :goto_1
    iget-object v1, p0, Lv3/e0;->l:Lv3/t;

    .line 77
    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    invoke-virtual {p0}, Lv3/e0;->q()Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_3

    .line 85
    .line 86
    invoke-virtual {v1}, Lv3/t;->j()Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-nez v4, :cond_3

    .line 91
    .line 92
    invoke-virtual {p0, v3}, Lv3/e0;->f(Z)V

    .line 93
    .line 94
    .line 95
    :goto_2
    const/4 v2, 0x1

    .line 96
    goto :goto_4

    .line 97
    :cond_3
    invoke-virtual {p0}, Lv3/e0;->q()Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_4

    .line 102
    .line 103
    invoke-virtual {v1, p1}, Lv3/t;->d(Landroid/view/KeyEvent;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_4

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-eqz p1, :cond_5

    .line 115
    .line 116
    :goto_3
    invoke-virtual {p0, v3}, Lv3/e0;->f(Z)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_5
    if-eqz v0, :cond_6

    .line 121
    .line 122
    invoke-virtual {p0}, Lv3/e0;->q()Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-eqz p1, :cond_6

    .line 127
    .line 128
    invoke-virtual {p0, v3}, Lv3/e0;->f(Z)V

    .line 129
    .line 130
    .line 131
    :cond_6
    :goto_4
    return v2
.end method

.method public final e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lv3/e0;->t:Lr1/m0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x10

    .line 6
    .line 7
    check-cast v0, La/b;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, La/b;->i(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lv3/e0;->t:Lr1/m0;

    .line 16
    .line 17
    check-cast v0, Ly1/x;

    .line 18
    .line 19
    invoke-virtual {v0}, Ly1/x;->N()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lv3/e0;->t:Lr1/m0;

    .line 26
    .line 27
    check-cast v0, Ly1/x;

    .line 28
    .line 29
    invoke-virtual {v0}, Ly1/x;->I()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 38
    :goto_0
    return v0
.end method

.method public final f(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lv3/e0;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lv3/e0;->F:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Lv3/e0;->q()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    iget-object v0, p0, Lv3/e0;->l:Lv3/t;

    .line 19
    .line 20
    invoke-virtual {v0}, Lv3/t;->j()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lv3/t;->getShowTimeoutMs()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-gtz v0, :cond_1

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    :goto_0
    invoke-virtual {p0}, Lv3/e0;->h()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    :cond_2
    invoke-virtual {p0, v1}, Lv3/e0;->i(Z)V

    .line 46
    .line 47
    .line 48
    :cond_3
    return-void
.end method

.method public final g(Landroid/graphics/drawable/Drawable;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lv3/e0;->h:Landroid/widget/ImageView;

    .line 3
    .line 4
    if-eqz v1, :cond_2

    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-lez v2, :cond_2

    .line 17
    .line 18
    if-lez v3, :cond_2

    .line 19
    .line 20
    int-to-float v2, v2

    .line 21
    int-to-float v3, v3

    .line 22
    div-float/2addr v2, v3

    .line 23
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 24
    .line 25
    iget v4, p0, Lv3/e0;->x:I

    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    if-ne v4, v5, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    int-to-float v2, v2

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    int-to-float v3, v3

    .line 40
    div-float/2addr v2, v3

    .line 41
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 42
    .line 43
    :cond_0
    iget-object v4, p0, Lv3/e0;->b:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 44
    .line 45
    if-eqz v4, :cond_1

    .line 46
    .line 47
    invoke-virtual {v4, v2}, Landroidx/media3/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    const/4 p1, 0x1

    .line 60
    return p1

    .line 61
    :cond_2
    return v0
.end method

.method public getAdOverlayInfos()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ll5/y;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lv3/e0;->n:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v2, Ll5/y;

    .line 11
    .line 12
    const/16 v3, 0xd

    .line 13
    .line 14
    invoke-direct {v2, v3, v1}, Ll5/y;-><init>(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Lv3/e0;->l:Lv3/t;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    new-instance v2, Ll5/y;

    .line 25
    .line 26
    const/16 v3, 0xd

    .line 27
    .line 28
    invoke-direct {v2, v3, v1}, Ll5/y;-><init>(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-static {v0}, Lu7/g0;->m(Ljava/util/Collection;)Lu7/g0;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0
.end method

.method public getAdViewGroup()Landroid/view/ViewGroup;
    .locals 2

    .line 1
    iget-object v0, p0, Lv3/e0;->m:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    const-string v1, "exo_ad_overlay must be present for ad playback"

    .line 4
    .line 5
    invoke-static {v0, v1}, La9/o;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public getArtworkDisplayMode()I
    .locals 1

    .line 1
    iget v0, p0, Lv3/e0;->x:I

    .line 2
    .line 3
    return v0
.end method

.method public getControllerAutoShow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lv3/e0;->E:Z

    .line 2
    .line 3
    return v0
.end method

.method public getControllerHideOnTouch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lv3/e0;->G:Z

    .line 2
    .line 3
    return v0
.end method

.method public getControllerShowTimeoutMs()I
    .locals 1

    .line 1
    iget v0, p0, Lv3/e0;->D:I

    .line 2
    .line 3
    return v0
.end method

.method public getDefaultArtwork()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/e0;->z:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getImageDisplayMode()I
    .locals 1

    .line 1
    iget v0, p0, Lv3/e0;->y:I

    .line 2
    .line 3
    return v0
.end method

.method public getOverlayFrameLayout()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/e0;->n:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlayer()Lr1/m0;
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/e0;->t:Lr1/m0;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResizeMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/e0;->b:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/media3/ui/AspectRatioFrameLayout;->getResizeMode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public getSubtitleView()Landroidx/media3/ui/SubtitleView;
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/e0;->i:Landroidx/media3/ui/SubtitleView;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUseArtwork()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lv3/e0;->x:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public getUseController()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lv3/e0;->v:Z

    .line 2
    .line 3
    return v0
.end method

.method public getVideoSurfaceView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/e0;->d:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lv3/e0;->t:Lr1/m0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast v0, Ly1/x;

    .line 8
    .line 9
    invoke-virtual {v0}, Ly1/x;->J()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-boolean v2, p0, Lv3/e0;->E:Z

    .line 14
    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    iget-object v2, p0, Lv3/e0;->t:Lr1/m0;

    .line 18
    .line 19
    const/16 v3, 0x11

    .line 20
    .line 21
    check-cast v2, La/b;

    .line 22
    .line 23
    invoke-virtual {v2, v3}, La/b;->i(I)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    iget-object v2, p0, Lv3/e0;->t:Lr1/m0;

    .line 30
    .line 31
    check-cast v2, Ly1/x;

    .line 32
    .line 33
    invoke-virtual {v2}, Ly1/x;->E()Lr1/q0;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lr1/q0;->p()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_2

    .line 42
    .line 43
    :cond_1
    if-eq v0, v1, :cond_3

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    if-eq v0, v2, :cond_3

    .line 47
    .line 48
    iget-object v0, p0, Lv3/e0;->t:Lr1/m0;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    check-cast v0, Ly1/x;

    .line 54
    .line 55
    invoke-virtual {v0}, Ly1/x;->I()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const/4 v1, 0x0

    .line 63
    :cond_3
    :goto_0
    return v1
.end method

.method public final i(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lv3/e0;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget p1, p0, Lv3/e0;->D:I

    .line 14
    .line 15
    :goto_0
    iget-object v1, p0, Lv3/e0;->l:Lv3/t;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Lv3/t;->setShowTimeoutMs(I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, v1, Lv3/t;->a:Lv3/y;

    .line 21
    .line 22
    iget-object v1, p1, Lv3/y;->a:Lv3/t;

    .line 23
    .line 24
    invoke-virtual {v1}, Lv3/t;->l()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_2

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lv3/t;->m()V

    .line 34
    .line 35
    .line 36
    iget-object v0, v1, Lv3/t;->x:Landroid/widget/ImageView;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-virtual {p1}, Lv3/y;->k()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final j()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lv3/e0;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lv3/e0;->t:Lr1/m0;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lv3/e0;->l:Lv3/t;

    .line 13
    .line 14
    invoke-virtual {v0}, Lv3/t;->j()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-virtual {p0, v0}, Lv3/e0;->f(Z)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-boolean v1, p0, Lv3/e0;->G:Z

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Lv3/t;->g()V

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_0
    return-void
.end method

.method public final k()V
    .locals 4

    .line 1
    iget-object v0, p0, Lv3/e0;->t:Lr1/m0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Ly1/x;

    .line 6
    .line 7
    invoke-virtual {v0}, Ly1/x;->h0()V

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, Ly1/x;->a1:Lr1/b1;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object v0, Lr1/b1;->d:Lr1/b1;

    .line 14
    .line 15
    :goto_0
    iget v1, v0, Lr1/b1;->a:I

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    iget v3, v0, Lr1/b1;->b:I

    .line 19
    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    int-to-float v1, v1

    .line 26
    iget v0, v0, Lr1/b1;->c:F

    .line 27
    .line 28
    mul-float v1, v1, v0

    .line 29
    .line 30
    int-to-float v0, v3

    .line 31
    div-float/2addr v1, v0

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 34
    :goto_2
    iget-boolean v0, p0, Lv3/e0;->e:Z

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_3
    move v2, v1

    .line 40
    :goto_3
    iget-object v0, p0, Lv3/e0;->b:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Landroidx/media3/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 45
    .line 46
    .line 47
    :cond_4
    return-void
.end method

.method public final l()V
    .locals 5

    .line 1
    iget-object v0, p0, Lv3/e0;->j:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, p0, Lv3/e0;->t:Lr1/m0;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v1, Ly1/x;

    .line 11
    .line 12
    invoke-virtual {v1}, Ly1/x;->J()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v3, 0x2

    .line 17
    if-ne v1, v3, :cond_0

    .line 18
    .line 19
    iget v1, p0, Lv3/e0;->A:I

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    if-eq v1, v3, :cond_1

    .line 23
    .line 24
    if-ne v1, v4, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, Lv3/e0;->t:Lr1/m0;

    .line 27
    .line 28
    check-cast v1, Ly1/x;

    .line 29
    .line 30
    invoke-virtual {v1}, Ly1/x;->I()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v4, 0x0

    .line 38
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const/16 v2, 0x8

    .line 42
    .line 43
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    :cond_3
    return-void
.end method

.method public final m()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lv3/e0;->l:Lv3/t;

    .line 3
    .line 4
    if-eqz v1, :cond_3

    .line 5
    .line 6
    iget-boolean v2, p0, Lv3/e0;->v:Z

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v1}, Lv3/t;->j()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    iget-boolean v1, p0, Lv3/e0;->G:Z

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const v1, 0x7f13005a

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const v1, 0x7f130068

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    :goto_1
    return-void
.end method

.method public final n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lv3/e0;->k:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Lv3/e0;->C:Ljava/lang/CharSequence;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v1, p0, Lv3/e0;->t:Lr1/m0;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    check-cast v1, Ly1/x;

    .line 22
    .line 23
    invoke-virtual {v1}, Ly1/x;->h0()V

    .line 24
    .line 25
    .line 26
    iget-object v1, v1, Ly1/x;->f1:Ly1/v0;

    .line 27
    .line 28
    iget-object v1, v1, Ly1/v0;->f:Ly1/k;

    .line 29
    .line 30
    :cond_1
    const/16 v1, 0x8

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    :cond_2
    return-void
.end method

.method public final o(Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lv3/e0;->t:Lr1/m0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/16 v3, 0x1e

    .line 8
    .line 9
    move-object v4, v0

    .line 10
    check-cast v4, La/b;

    .line 11
    .line 12
    invoke-virtual {v4, v3}, La/b;->i(I)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    move-object v3, v0

    .line 19
    check-cast v3, Ly1/x;

    .line 20
    .line 21
    invoke-virtual {v3}, Ly1/x;->F()Lr1/x0;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v3, v3, Lr1/x0;->a:Lu7/g0;

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_0

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v3, 0x0

    .line 36
    :goto_0
    iget-boolean v4, p0, Lv3/e0;->B:Z

    .line 37
    .line 38
    const v5, 0x106000d

    .line 39
    .line 40
    .line 41
    const/4 v6, 0x4

    .line 42
    iget-object v7, p0, Lv3/e0;->h:Landroid/widget/ImageView;

    .line 43
    .line 44
    iget-object v8, p0, Lv3/e0;->c:Landroid/view/View;

    .line 45
    .line 46
    if-nez v4, :cond_4

    .line 47
    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    if-eqz p1, :cond_4

    .line 51
    .line 52
    :cond_1
    if-eqz v7, :cond_2

    .line 53
    .line 54
    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    :cond_2
    if-eqz v8, :cond_3

    .line 61
    .line 62
    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    :cond_3
    invoke-virtual {p0}, Lv3/e0;->d()V

    .line 66
    .line 67
    .line 68
    :cond_4
    if-nez v3, :cond_5

    .line 69
    .line 70
    return-void

    .line 71
    :cond_5
    invoke-virtual {p0}, Lv3/e0;->c()Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    invoke-virtual {p0}, Lv3/e0;->b()Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-nez p1, :cond_7

    .line 80
    .line 81
    if-nez v3, :cond_7

    .line 82
    .line 83
    if-eqz v8, :cond_6

    .line 84
    .line 85
    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    :cond_6
    invoke-virtual {p0}, Lv3/e0;->d()V

    .line 89
    .line 90
    .line 91
    :cond_7
    iget-object v4, p0, Lv3/e0;->g:Landroid/widget/ImageView;

    .line 92
    .line 93
    if-eqz v8, :cond_9

    .line 94
    .line 95
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    if-ne v9, v6, :cond_9

    .line 100
    .line 101
    if-nez v4, :cond_8

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_8
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    if-eqz v9, :cond_9

    .line 109
    .line 110
    invoke-static {v9}, Lm0/h;->d(Landroid/graphics/drawable/Drawable;)I

    .line 111
    .line 112
    .line 113
    move-result v9

    .line 114
    if-eqz v9, :cond_9

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_9
    :goto_1
    const/4 v1, 0x0

    .line 118
    :goto_2
    if-eqz v3, :cond_b

    .line 119
    .line 120
    if-nez p1, :cond_b

    .line 121
    .line 122
    if-eqz v1, :cond_b

    .line 123
    .line 124
    if-eqz v8, :cond_a

    .line 125
    .line 126
    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    .line 127
    .line 128
    .line 129
    :cond_a
    if-eqz v4, :cond_c

    .line 130
    .line 131
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Lv3/e0;->p()V

    .line 135
    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_b
    if-eqz p1, :cond_c

    .line 139
    .line 140
    if-nez v3, :cond_c

    .line 141
    .line 142
    if-eqz v1, :cond_c

    .line 143
    .line 144
    invoke-virtual {p0}, Lv3/e0;->d()V

    .line 145
    .line 146
    .line 147
    :cond_c
    :goto_3
    if-nez p1, :cond_11

    .line 148
    .line 149
    if-nez v3, :cond_11

    .line 150
    .line 151
    iget p1, p0, Lv3/e0;->x:I

    .line 152
    .line 153
    if-eqz p1, :cond_11

    .line 154
    .line 155
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    if-eqz v0, :cond_f

    .line 159
    .line 160
    const/16 p1, 0x12

    .line 161
    .line 162
    move-object v1, v0

    .line 163
    check-cast v1, La/b;

    .line 164
    .line 165
    invoke-virtual {v1, p1}, La/b;->i(I)Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-nez p1, :cond_d

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_d
    check-cast v0, Ly1/x;

    .line 173
    .line 174
    invoke-virtual {v0}, Ly1/x;->h0()V

    .line 175
    .line 176
    .line 177
    iget-object p1, v0, Ly1/x;->Z:Lr1/b0;

    .line 178
    .line 179
    iget-object p1, p1, Lr1/b0;->f:[B

    .line 180
    .line 181
    if-nez p1, :cond_e

    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_e
    array-length v0, p1

    .line 185
    invoke-static {p1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 190
    .line 191
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, v0}, Lv3/e0;->g(Landroid/graphics/drawable/Drawable;)Z

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    :cond_f
    :goto_4
    if-eqz v2, :cond_10

    .line 203
    .line 204
    return-void

    .line 205
    :cond_10
    iget-object p1, p0, Lv3/e0;->z:Landroid/graphics/drawable/Drawable;

    .line 206
    .line 207
    invoke-virtual {p0, p1}, Lv3/e0;->g(Landroid/graphics/drawable/Drawable;)Z

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    if-eqz p1, :cond_11

    .line 212
    .line 213
    return-void

    .line 214
    :cond_11
    if-eqz v7, :cond_12

    .line 215
    .line 216
    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    .line 221
    .line 222
    :cond_12
    return-void
.end method

.method public final onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lv3/e0;->q()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Lv3/e0;->t:Lr1/m0;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, p1}, Lv3/e0;->f(Z)V

    .line 14
    .line 15
    .line 16
    return p1

    .line 17
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 18
    return p1
.end method

.method public final p()V
    .locals 5

    .line 1
    iget-object v0, p0, Lv3/e0;->g:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-lez v2, :cond_5

    .line 22
    .line 23
    if-gtz v1, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    int-to-float v2, v2

    .line 27
    int-to-float v1, v1

    .line 28
    div-float/2addr v2, v1

    .line 29
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 30
    .line 31
    iget v3, p0, Lv3/e0;->y:I

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    if-ne v3, v4, :cond_3

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    int-to-float v1, v1

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    int-to-float v2, v2

    .line 46
    div-float v2, v1, v2

    .line 47
    .line 48
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 49
    .line 50
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-nez v3, :cond_4

    .line 55
    .line 56
    iget-object v3, p0, Lv3/e0;->b:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 57
    .line 58
    if-eqz v3, :cond_4

    .line 59
    .line 60
    invoke-virtual {v3, v2}, Landroidx/media3/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 61
    .line 62
    .line 63
    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 64
    .line 65
    .line 66
    :cond_5
    :goto_0
    return-void
.end method

.method public final performClick()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lv3/e0;->j()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lv3/e0;->v:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lv3/e0;->l:Lv3/t;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0
.end method

.method public setArtworkDisplayMode(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object v1, p0, Lv3/e0;->h:Landroid/widget/ImageView;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 12
    :goto_1
    invoke-static {v1}, La9/o;->t(Z)V

    .line 13
    .line 14
    .line 15
    iget v1, p0, Lv3/e0;->x:I

    .line 16
    .line 17
    if-eq v1, p1, :cond_2

    .line 18
    .line 19
    iput p1, p0, Lv3/e0;->x:I

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lv3/e0;->o(Z)V

    .line 22
    .line 23
    .line 24
    :cond_2
    return-void
.end method

.method public setAspectRatioListener(Lv3/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/e0;->b:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroidx/media3/ui/AspectRatioFrameLayout;->setAspectRatioListener(Lv3/a;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setControllerAnimationEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/e0;->l:Lv3/t;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lv3/t;->setAnimationEnabled(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setControllerAutoShow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lv3/e0;->E:Z

    .line 2
    .line 3
    return-void
.end method

.method public setControllerHideDuringAds(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lv3/e0;->F:Z

    .line 2
    .line 3
    return-void
.end method

.method public setControllerHideOnTouch(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/e0;->l:Lv3/t;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iput-boolean p1, p0, Lv3/e0;->G:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lv3/e0;->m()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setControllerOnFullScreenModeChangedListener(Lv3/i;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lv3/e0;->l:Lv3/t;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lv3/t;->setOnFullScreenModeChangedListener(Lv3/i;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setControllerShowTimeoutMs(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/e0;->l:Lv3/t;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iput p1, p0, Lv3/e0;->D:I

    .line 7
    .line 8
    invoke-virtual {v0}, Lv3/t;->j()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lv3/e0;->h()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {p0, p1}, Lv3/e0;->i(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public setControllerVisibilityListener(Lv3/b0;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Lv3/e0;->setControllerVisibilityListener(Lv3/s;)V

    :cond_0
    return-void
.end method

.method public setControllerVisibilityListener(Lv3/s;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lv3/e0;->l:Lv3/t;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v1, p0, Lv3/e0;->w:Lv3/s;

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    if-eqz v1, :cond_1

    .line 3
    iget-object v2, v0, Lv3/t;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    :cond_1
    iput-object p1, p0, Lv3/e0;->w:Lv3/s;

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    iget-object v0, v0, Lv3/t;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lv3/e0;->setControllerVisibilityListener(Lv3/b0;)V

    :cond_2
    return-void
.end method

.method public setCustomErrorMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/e0;->k:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-static {v0}, La9/o;->t(Z)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lv3/e0;->C:Ljava/lang/CharSequence;

    .line 12
    .line 13
    invoke-virtual {p0}, Lv3/e0;->n()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setDefaultArtwork(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/e0;->z:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lv3/e0;->z:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lv3/e0;->o(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setEnableComposeSurfaceSyncWorkaround(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lv3/e0;->H:Z

    .line 2
    .line 3
    return-void
.end method

.method public setErrorMessageProvider(Lr1/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr1/m;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lv3/e0;->n()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public setFullscreenButtonClickListener(Lv3/c0;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lv3/e0;->l:Lv3/t;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lv3/e0;->a:Lv3/a0;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lv3/t;->setOnFullScreenModeChangedListener(Lv3/i;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setFullscreenButtonState(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/e0;->l:Lv3/t;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lv3/t;->o(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setImageDisplayMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/e0;->g:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-static {v0}, La9/o;->t(Z)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lv3/e0;->y:I

    .line 12
    .line 13
    if-eq v0, p1, :cond_1

    .line 14
    .line 15
    iput p1, p0, Lv3/e0;->y:I

    .line 16
    .line 17
    invoke-virtual {p0}, Lv3/e0;->p()V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public setKeepContentOnPlayerReset(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lv3/e0;->B:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lv3/e0;->B:Z

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lv3/e0;->o(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setMediaRouteButtonViewProvider(Lr1/c1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/e0;->l:Lv3/t;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lv3/t;->setMediaRouteButtonViewProvider(Lr1/c1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setPlayer(Lr1/m0;)V
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    invoke-static {v0}, La9/o;->t(Z)V

    .line 17
    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    move-object v0, p1

    .line 22
    check-cast v0, Ly1/x;

    .line 23
    .line 24
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v0, v0, Ly1/x;->v:Landroid/os/Looper;

    .line 29
    .line 30
    if-ne v0, v1, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 36
    :goto_2
    invoke-static {v0}, La9/o;->k(Z)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lv3/e0;->t:Lr1/m0;

    .line 40
    .line 41
    if-ne v0, p1, :cond_3

    .line 42
    .line 43
    return-void

    .line 44
    :cond_3
    iget-object v1, p0, Lv3/e0;->d:Landroid/view/View;

    .line 45
    .line 46
    const/16 v4, 0x1b

    .line 47
    .line 48
    iget-object v5, p0, Lv3/e0;->a:Lv3/a0;

    .line 49
    .line 50
    const/4 v6, 0x0

    .line 51
    if-eqz v0, :cond_7

    .line 52
    .line 53
    move-object v7, v0

    .line 54
    check-cast v7, Ly1/x;

    .line 55
    .line 56
    invoke-virtual {v7, v5}, Ly1/x;->U(Lr1/k0;)V

    .line 57
    .line 58
    .line 59
    move-object v8, v0

    .line 60
    check-cast v8, La/b;

    .line 61
    .line 62
    invoke-virtual {v8, v4}, La/b;->i(I)Z

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    if-eqz v8, :cond_6

    .line 67
    .line 68
    instance-of v8, v1, Landroid/view/TextureView;

    .line 69
    .line 70
    if-eqz v8, :cond_4

    .line 71
    .line 72
    move-object v8, v1

    .line 73
    check-cast v8, Landroid/view/TextureView;

    .line 74
    .line 75
    invoke-virtual {v7}, Ly1/x;->h0()V

    .line 76
    .line 77
    .line 78
    if-eqz v8, :cond_6

    .line 79
    .line 80
    iget-object v9, v7, Ly1/x;->P0:Landroid/view/TextureView;

    .line 81
    .line 82
    if-ne v8, v9, :cond_6

    .line 83
    .line 84
    invoke-virtual {v7}, Ly1/x;->u()V

    .line 85
    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_4
    instance-of v8, v1, Landroid/view/SurfaceView;

    .line 89
    .line 90
    if-eqz v8, :cond_6

    .line 91
    .line 92
    move-object v8, v1

    .line 93
    check-cast v8, Landroid/view/SurfaceView;

    .line 94
    .line 95
    invoke-virtual {v7}, Ly1/x;->h0()V

    .line 96
    .line 97
    .line 98
    if-nez v8, :cond_5

    .line 99
    .line 100
    move-object v8, v6

    .line 101
    goto :goto_3

    .line 102
    :cond_5
    invoke-virtual {v8}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    :goto_3
    invoke-virtual {v7}, Ly1/x;->h0()V

    .line 107
    .line 108
    .line 109
    if-eqz v8, :cond_6

    .line 110
    .line 111
    iget-object v9, v7, Ly1/x;->M0:Landroid/view/SurfaceHolder;

    .line 112
    .line 113
    if-ne v8, v9, :cond_6

    .line 114
    .line 115
    invoke-virtual {v7}, Ly1/x;->u()V

    .line 116
    .line 117
    .line 118
    :cond_6
    :goto_4
    iget-object v7, p0, Lv3/e0;->q:Ljava/lang/Class;

    .line 119
    .line 120
    if-eqz v7, :cond_7

    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    if-eqz v7, :cond_7

    .line 131
    .line 132
    :try_start_0
    iget-object v7, p0, Lv3/e0;->r:Ljava/lang/reflect/Method;

    .line 133
    .line 134
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    new-array v8, v2, [Ljava/lang/Object;

    .line 138
    .line 139
    aput-object v6, v8, v3

    .line 140
    .line 141
    invoke-virtual {v7, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .line 143
    .line 144
    goto :goto_6

    .line 145
    :catch_0
    move-exception p1

    .line 146
    goto :goto_5

    .line 147
    :catch_1
    move-exception p1

    .line 148
    :goto_5
    new-instance v0, Ljava/lang/RuntimeException;

    .line 149
    .line 150
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 151
    .line 152
    .line 153
    throw v0

    .line 154
    :cond_7
    :goto_6
    iget-object v0, p0, Lv3/e0;->i:Landroidx/media3/ui/SubtitleView;

    .line 155
    .line 156
    if-eqz v0, :cond_8

    .line 157
    .line 158
    invoke-virtual {v0, v6}, Landroidx/media3/ui/SubtitleView;->setCues(Ljava/util/List;)V

    .line 159
    .line 160
    .line 161
    :cond_8
    iput-object p1, p0, Lv3/e0;->t:Lr1/m0;

    .line 162
    .line 163
    invoke-virtual {p0}, Lv3/e0;->q()Z

    .line 164
    .line 165
    .line 166
    move-result v7

    .line 167
    iget-object v8, p0, Lv3/e0;->l:Lv3/t;

    .line 168
    .line 169
    if-eqz v7, :cond_9

    .line 170
    .line 171
    invoke-virtual {v8, p1}, Lv3/t;->setPlayer(Lr1/m0;)V

    .line 172
    .line 173
    .line 174
    :cond_9
    invoke-virtual {p0}, Lv3/e0;->l()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0}, Lv3/e0;->n()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v2}, Lv3/e0;->o(Z)V

    .line 181
    .line 182
    .line 183
    if-eqz p1, :cond_1c

    .line 184
    .line 185
    move-object v7, p1

    .line 186
    check-cast v7, La/b;

    .line 187
    .line 188
    invoke-virtual {v7, v4}, La/b;->i(I)Z

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    if-eqz v4, :cond_1a

    .line 193
    .line 194
    instance-of v4, v1, Landroid/view/TextureView;

    .line 195
    .line 196
    if-eqz v4, :cond_e

    .line 197
    .line 198
    check-cast v1, Landroid/view/TextureView;

    .line 199
    .line 200
    move-object v4, p1

    .line 201
    check-cast v4, Ly1/x;

    .line 202
    .line 203
    invoke-virtual {v4}, Ly1/x;->h0()V

    .line 204
    .line 205
    .line 206
    if-nez v1, :cond_a

    .line 207
    .line 208
    invoke-virtual {v4}, Ly1/x;->u()V

    .line 209
    .line 210
    .line 211
    goto/16 :goto_9

    .line 212
    .line 213
    :cond_a
    invoke-virtual {v4}, Ly1/x;->V()V

    .line 214
    .line 215
    .line 216
    iput-object v1, v4, Ly1/x;->P0:Landroid/view/TextureView;

    .line 217
    .line 218
    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    .line 219
    .line 220
    .line 221
    move-result-object v8

    .line 222
    if-eqz v8, :cond_b

    .line 223
    .line 224
    const-string v8, "Replacing existing SurfaceTextureListener."

    .line 225
    .line 226
    invoke-static {v8}, Lu1/a;->p(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    :cond_b
    iget-object v8, v4, Ly1/x;->y:Ly1/t;

    .line 230
    .line 231
    invoke-virtual {v1, v8}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1}, Landroid/view/TextureView;->isAvailable()Z

    .line 235
    .line 236
    .line 237
    move-result v8

    .line 238
    if-eqz v8, :cond_c

    .line 239
    .line 240
    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 241
    .line 242
    .line 243
    move-result-object v8

    .line 244
    goto :goto_7

    .line 245
    :cond_c
    move-object v8, v6

    .line 246
    :goto_7
    if-nez v8, :cond_d

    .line 247
    .line 248
    invoke-virtual {v4, v6}, Ly1/x;->b0(Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v4, v3, v3}, Ly1/x;->R(II)V

    .line 252
    .line 253
    .line 254
    goto/16 :goto_9

    .line 255
    .line 256
    :cond_d
    new-instance v6, Landroid/view/Surface;

    .line 257
    .line 258
    invoke-direct {v6, v8}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v4, v6}, Ly1/x;->b0(Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    iput-object v6, v4, Ly1/x;->t0:Landroid/view/Surface;

    .line 265
    .line 266
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 267
    .line 268
    .line 269
    move-result v6

    .line 270
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    invoke-virtual {v4, v6, v1}, Ly1/x;->R(II)V

    .line 275
    .line 276
    .line 277
    goto/16 :goto_9

    .line 278
    .line 279
    :cond_e
    instance-of v4, v1, Landroid/view/SurfaceView;

    .line 280
    .line 281
    if-eqz v4, :cond_14

    .line 282
    .line 283
    check-cast v1, Landroid/view/SurfaceView;

    .line 284
    .line 285
    move-object v4, p1

    .line 286
    check-cast v4, Ly1/x;

    .line 287
    .line 288
    invoke-virtual {v4}, Ly1/x;->h0()V

    .line 289
    .line 290
    .line 291
    instance-of v8, v1, Landroidx/media3/exoplayer/video/w;

    .line 292
    .line 293
    if-eqz v8, :cond_f

    .line 294
    .line 295
    invoke-virtual {v4}, Ly1/x;->V()V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v4, v1}, Ly1/x;->b0(Ljava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    invoke-virtual {v4, v1}, Ly1/x;->Y(Landroid/view/SurfaceHolder;)V

    .line 306
    .line 307
    .line 308
    goto/16 :goto_9

    .line 309
    .line 310
    :cond_f
    instance-of v8, v1, Lk2/k;

    .line 311
    .line 312
    iget-object v9, v4, Ly1/x;->y:Ly1/t;

    .line 313
    .line 314
    if-eqz v8, :cond_10

    .line 315
    .line 316
    invoke-virtual {v4}, Ly1/x;->V()V

    .line 317
    .line 318
    .line 319
    move-object v6, v1

    .line 320
    check-cast v6, Lk2/k;

    .line 321
    .line 322
    iput-object v6, v4, Ly1/x;->N0:Lk2/k;

    .line 323
    .line 324
    iget-object v6, v4, Ly1/x;->z:Ly1/u;

    .line 325
    .line 326
    invoke-virtual {v4, v6}, Ly1/x;->v(Ly1/x0;)Ly1/y0;

    .line 327
    .line 328
    .line 329
    move-result-object v6

    .line 330
    iget-boolean v8, v6, Ly1/y0;->f:Z

    .line 331
    .line 332
    xor-int/2addr v8, v2

    .line 333
    invoke-static {v8}, La9/o;->t(Z)V

    .line 334
    .line 335
    .line 336
    const/16 v8, 0x2710

    .line 337
    .line 338
    iput v8, v6, Ly1/y0;->c:I

    .line 339
    .line 340
    iget-object v8, v4, Ly1/x;->N0:Lk2/k;

    .line 341
    .line 342
    iget-boolean v10, v6, Ly1/y0;->f:Z

    .line 343
    .line 344
    xor-int/2addr v10, v2

    .line 345
    invoke-static {v10}, La9/o;->t(Z)V

    .line 346
    .line 347
    .line 348
    iput-object v8, v6, Ly1/y0;->d:Ljava/lang/Object;

    .line 349
    .line 350
    invoke-virtual {v6}, Ly1/y0;->b()V

    .line 351
    .line 352
    .line 353
    iget-object v6, v4, Ly1/x;->N0:Lk2/k;

    .line 354
    .line 355
    iget-object v6, v6, Lk2/k;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 356
    .line 357
    invoke-virtual {v6, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    iget-object v6, v4, Ly1/x;->N0:Lk2/k;

    .line 361
    .line 362
    invoke-virtual {v6}, Lk2/k;->getVideoSurface()Landroid/view/Surface;

    .line 363
    .line 364
    .line 365
    move-result-object v6

    .line 366
    invoke-virtual {v4, v6}, Ly1/x;->b0(Ljava/lang/Object;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    invoke-virtual {v4, v1}, Ly1/x;->Y(Landroid/view/SurfaceHolder;)V

    .line 374
    .line 375
    .line 376
    goto :goto_9

    .line 377
    :cond_10
    if-nez v1, :cond_11

    .line 378
    .line 379
    move-object v1, v6

    .line 380
    goto :goto_8

    .line 381
    :cond_11
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    :goto_8
    invoke-virtual {v4}, Ly1/x;->h0()V

    .line 386
    .line 387
    .line 388
    if-nez v1, :cond_12

    .line 389
    .line 390
    invoke-virtual {v4}, Ly1/x;->u()V

    .line 391
    .line 392
    .line 393
    goto :goto_9

    .line 394
    :cond_12
    invoke-virtual {v4}, Ly1/x;->V()V

    .line 395
    .line 396
    .line 397
    iput-boolean v2, v4, Ly1/x;->O0:Z

    .line 398
    .line 399
    iput-object v1, v4, Ly1/x;->M0:Landroid/view/SurfaceHolder;

    .line 400
    .line 401
    invoke-interface {v1, v9}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 402
    .line 403
    .line 404
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 405
    .line 406
    .line 407
    move-result-object v8

    .line 408
    if-eqz v8, :cond_13

    .line 409
    .line 410
    invoke-virtual {v8}, Landroid/view/Surface;->isValid()Z

    .line 411
    .line 412
    .line 413
    move-result v9

    .line 414
    if-eqz v9, :cond_13

    .line 415
    .line 416
    invoke-virtual {v4, v8}, Ly1/x;->b0(Ljava/lang/Object;)V

    .line 417
    .line 418
    .line 419
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 424
    .line 425
    .line 426
    move-result v6

    .line 427
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 428
    .line 429
    .line 430
    move-result v1

    .line 431
    invoke-virtual {v4, v6, v1}, Ly1/x;->R(II)V

    .line 432
    .line 433
    .line 434
    goto :goto_9

    .line 435
    :cond_13
    invoke-virtual {v4, v6}, Ly1/x;->b0(Ljava/lang/Object;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v4, v3, v3}, Ly1/x;->R(II)V

    .line 439
    .line 440
    .line 441
    :cond_14
    :goto_9
    const/16 v1, 0x1e

    .line 442
    .line 443
    invoke-virtual {v7, v1}, La/b;->i(I)Z

    .line 444
    .line 445
    .line 446
    move-result v1

    .line 447
    if-eqz v1, :cond_19

    .line 448
    .line 449
    move-object v1, p1

    .line 450
    check-cast v1, Ly1/x;

    .line 451
    .line 452
    invoke-virtual {v1}, Ly1/x;->F()Lr1/x0;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    const/4 v4, 0x0

    .line 457
    :goto_a
    iget-object v6, v1, Lr1/x0;->a:Lu7/g0;

    .line 458
    .line 459
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->size()I

    .line 460
    .line 461
    .line 462
    move-result v8

    .line 463
    if-ge v4, v8, :cond_18

    .line 464
    .line 465
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v8

    .line 469
    check-cast v8, Lr1/w0;

    .line 470
    .line 471
    invoke-virtual {v8}, Lr1/w0;->a()I

    .line 472
    .line 473
    .line 474
    move-result v8

    .line 475
    const/4 v9, 0x2

    .line 476
    if-ne v8, v9, :cond_17

    .line 477
    .line 478
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v6

    .line 482
    check-cast v6, Lr1/w0;

    .line 483
    .line 484
    const/4 v8, 0x0

    .line 485
    :goto_b
    iget-object v9, v6, Lr1/w0;->d:[I

    .line 486
    .line 487
    array-length v9, v9

    .line 488
    if-ge v8, v9, :cond_16

    .line 489
    .line 490
    invoke-virtual {v6, v8}, Lr1/w0;->b(I)Z

    .line 491
    .line 492
    .line 493
    move-result v9

    .line 494
    if-eqz v9, :cond_15

    .line 495
    .line 496
    const/4 v6, 0x1

    .line 497
    goto :goto_c

    .line 498
    :cond_15
    add-int/2addr v8, v2

    .line 499
    goto :goto_b

    .line 500
    :cond_16
    const/4 v6, 0x0

    .line 501
    :goto_c
    if-eqz v6, :cond_17

    .line 502
    .line 503
    goto :goto_d

    .line 504
    :cond_17
    add-int/2addr v4, v2

    .line 505
    goto :goto_a

    .line 506
    :cond_18
    const/4 v2, 0x0

    .line 507
    :goto_d
    if-eqz v2, :cond_1a

    .line 508
    .line 509
    :cond_19
    invoke-virtual {p0}, Lv3/e0;->k()V

    .line 510
    .line 511
    .line 512
    :cond_1a
    if-eqz v0, :cond_1b

    .line 513
    .line 514
    const/16 v1, 0x1c

    .line 515
    .line 516
    invoke-virtual {v7, v1}, La/b;->i(I)Z

    .line 517
    .line 518
    .line 519
    move-result v1

    .line 520
    if-eqz v1, :cond_1b

    .line 521
    .line 522
    move-object v1, p1

    .line 523
    check-cast v1, Ly1/x;

    .line 524
    .line 525
    invoke-virtual {v1}, Ly1/x;->h0()V

    .line 526
    .line 527
    .line 528
    iget-object v1, v1, Ly1/x;->V0:Lt1/c;

    .line 529
    .line 530
    iget-object v1, v1, Lt1/c;->a:Lu7/y0;

    .line 531
    .line 532
    invoke-virtual {v0, v1}, Landroidx/media3/ui/SubtitleView;->setCues(Ljava/util/List;)V

    .line 533
    .line 534
    .line 535
    :cond_1b
    move-object v0, p1

    .line 536
    check-cast v0, Ly1/x;

    .line 537
    .line 538
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 539
    .line 540
    .line 541
    iget-object v0, v0, Ly1/x;->m:Lu1/m;

    .line 542
    .line 543
    invoke-virtual {v0, v5}, Lu1/m;->a(Ljava/lang/Object;)V

    .line 544
    .line 545
    .line 546
    invoke-direct {p0, p1}, Lv3/e0;->setImageOutput(Lr1/m0;)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {p0, v3}, Lv3/e0;->f(Z)V

    .line 550
    .line 551
    .line 552
    goto :goto_e

    .line 553
    :cond_1c
    if-eqz v8, :cond_1d

    .line 554
    .line 555
    invoke-virtual {v8}, Lv3/t;->g()V

    .line 556
    .line 557
    .line 558
    :cond_1d
    :goto_e
    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/e0;->l:Lv3/t;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lv3/t;->setRepeatToggleModes(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setResizeMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/e0;->b:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroidx/media3/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setShowBuffering(I)V
    .locals 1

    .line 1
    iget v0, p0, Lv3/e0;->A:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lv3/e0;->A:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lv3/e0;->l()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/e0;->l:Lv3/t;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lv3/t;->setShowFastForwardButton(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lv3/e0;->l:Lv3/t;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lv3/t;->setShowMultiWindowTimeBar(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setShowNextButton(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/e0;->l:Lv3/t;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lv3/t;->setShowNextButton(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setShowPlayButtonIfPlaybackIsSuppressed(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/e0;->l:Lv3/t;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lv3/t;->setShowPlayButtonIfPlaybackIsSuppressed(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setShowPreviousButton(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/e0;->l:Lv3/t;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lv3/t;->setShowPreviousButton(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setShowRewindButton(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/e0;->l:Lv3/t;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lv3/t;->setShowRewindButton(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/e0;->l:Lv3/t;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lv3/t;->setShowShuffleButton(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setShowSubtitleButton(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/e0;->l:Lv3/t;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lv3/t;->setShowSubtitleButton(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setShowVrButton(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/e0;->l:Lv3/t;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lv3/t;->setShowVrButton(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setShutterBackgroundColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/e0;->c:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setTimeBarScrubbingEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/e0;->l:Lv3/t;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lv3/t;->setTimeBarScrubbingEnabled(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setUseArtwork(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    xor-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lv3/e0;->setArtworkDisplayMode(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setUseController(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lv3/e0;->l:Lv3/t;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v3, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 13
    :goto_1
    invoke-static {v3}, La9/o;->t(Z)V

    .line 14
    .line 15
    .line 16
    if-nez p1, :cond_3

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_2
    const/4 v0, 0x0

    .line 26
    :cond_3
    :goto_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 27
    .line 28
    .line 29
    iget-boolean v0, p0, Lv3/e0;->v:Z

    .line 30
    .line 31
    if-ne v0, p1, :cond_4

    .line 32
    .line 33
    return-void

    .line 34
    :cond_4
    iput-boolean p1, p0, Lv3/e0;->v:Z

    .line 35
    .line 36
    invoke-virtual {p0}, Lv3/e0;->q()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_5

    .line 41
    .line 42
    iget-object p1, p0, Lv3/e0;->t:Lr1/m0;

    .line 43
    .line 44
    invoke-virtual {v2, p1}, Lv3/t;->setPlayer(Lr1/m0;)V

    .line 45
    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_5
    if-eqz v2, :cond_6

    .line 49
    .line 50
    invoke-virtual {v2}, Lv3/t;->g()V

    .line 51
    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    invoke-virtual {v2, p1}, Lv3/t;->setPlayer(Lr1/m0;)V

    .line 55
    .line 56
    .line 57
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lv3/e0;->m()V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lv3/e0;->d:Landroid/view/View;

    .line 5
    .line 6
    instance-of v1, v0, Landroid/view/SurfaceView;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
