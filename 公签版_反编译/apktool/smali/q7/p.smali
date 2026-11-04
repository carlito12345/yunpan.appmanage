.class public final Lq7/p;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/material/textfield/TextInputLayout;

.field public final b:Landroid/widget/FrameLayout;

.field public final c:Lcom/google/android/material/internal/CheckableImageButton;

.field public d:Landroid/content/res/ColorStateList;

.field public e:Landroid/graphics/PorterDuff$Mode;

.field public f:Landroid/view/View$OnLongClickListener;

.field public final g:Lcom/google/android/material/internal/CheckableImageButton;

.field public final h:La9/a;

.field public i:I

.field public final j:Ljava/util/LinkedHashSet;

.field public k:Landroid/content/res/ColorStateList;

.field public l:Landroid/graphics/PorterDuff$Mode;

.field public m:I

.field public n:Landroid/widget/ImageView$ScaleType;

.field public p:Landroid/view/View$OnLongClickListener;

.field public q:Ljava/lang/CharSequence;

.field public final r:Lw/b1;

.field public s:Z

.field public t:Landroid/widget/EditText;

.field public final v:Landroid/view/accessibility/AccessibilityManager;

.field public w:Ly0/d;

.field public final x:Lq7/m;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;Ls4/a;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    iput v3, v0, Lq7/p;->i:I

    .line 16
    .line 17
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 18
    .line 19
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v4, v0, Lq7/p;->j:Ljava/util/LinkedHashSet;

    .line 23
    .line 24
    new-instance v4, Lq7/m;

    .line 25
    .line 26
    invoke-direct {v4, v0}, Lq7/m;-><init>(Lq7/p;)V

    .line 27
    .line 28
    .line 29
    iput-object v4, v0, Lq7/p;->x:Lq7/m;

    .line 30
    .line 31
    new-instance v4, Lq7/n;

    .line 32
    .line 33
    invoke-direct {v4, v0}, Lq7/n;-><init>(Lq7/p;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    const-string v6, "accessibility"

    .line 41
    .line 42
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Landroid/view/accessibility/AccessibilityManager;

    .line 47
    .line 48
    iput-object v5, v0, Lq7/p;->v:Landroid/view/accessibility/AccessibilityManager;

    .line 49
    .line 50
    iput-object v1, v0, Lq7/p;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 51
    .line 52
    const/16 v5, 0x8

    .line 53
    .line 54
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 58
    .line 59
    .line 60
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 61
    .line 62
    const/4 v7, -0x2

    .line 63
    const/4 v8, -0x1

    .line 64
    const v9, 0x800005

    .line 65
    .line 66
    .line 67
    invoke-direct {v6, v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    .line 72
    .line 73
    new-instance v6, Landroid/widget/FrameLayout;

    .line 74
    .line 75
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    invoke-direct {v6, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 80
    .line 81
    .line 82
    iput-object v6, v0, Lq7/p;->b:Landroid/widget/FrameLayout;

    .line 83
    .line 84
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 88
    .line 89
    invoke-direct {v9, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v6, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    const v10, 0x7f0b02ed

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v0, v9, v10}, Lq7/p;->a(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;I)Lcom/google/android/material/internal/CheckableImageButton;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    iput-object v10, v0, Lq7/p;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 111
    .line 112
    const v11, 0x7f0b02ec

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v6, v9, v11}, Lq7/p;->a(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;I)Lcom/google/android/material/internal/CheckableImageButton;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    iput-object v9, v0, Lq7/p;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 120
    .line 121
    new-instance v11, La9/a;

    .line 122
    .line 123
    invoke-direct {v11, v0, v2}, La9/a;-><init>(Lq7/p;Ls4/a;)V

    .line 124
    .line 125
    .line 126
    iput-object v11, v0, Lq7/p;->h:La9/a;

    .line 127
    .line 128
    new-instance v11, Lw/b1;

    .line 129
    .line 130
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 131
    .line 132
    .line 133
    move-result-object v12

    .line 134
    const/4 v13, 0x0

    .line 135
    invoke-direct {v11, v12, v13}, Lw/b1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 136
    .line 137
    .line 138
    iput-object v11, v0, Lq7/p;->r:Lw/b1;

    .line 139
    .line 140
    iget-object v12, v2, Ls4/a;->c:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v12, Landroid/content/res/TypedArray;

    .line 143
    .line 144
    const/16 v14, 0x26

    .line 145
    .line 146
    invoke-virtual {v12, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 147
    .line 148
    .line 149
    move-result v15

    .line 150
    if-eqz v15, :cond_0

    .line 151
    .line 152
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 153
    .line 154
    .line 155
    move-result-object v15

    .line 156
    invoke-static {v15, v2, v14}, Lcom/bumptech/glide/c;->x(Landroid/content/Context;Ls4/a;I)Landroid/content/res/ColorStateList;

    .line 157
    .line 158
    .line 159
    move-result-object v14

    .line 160
    iput-object v14, v0, Lq7/p;->d:Landroid/content/res/ColorStateList;

    .line 161
    .line 162
    :cond_0
    const/16 v14, 0x27

    .line 163
    .line 164
    invoke-virtual {v12, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 165
    .line 166
    .line 167
    move-result v15

    .line 168
    if-eqz v15, :cond_1

    .line 169
    .line 170
    invoke-virtual {v12, v14, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 171
    .line 172
    .line 173
    move-result v14

    .line 174
    invoke-static {v14, v13}, Lg7/l;->h(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 175
    .line 176
    .line 177
    move-result-object v14

    .line 178
    iput-object v14, v0, Lq7/p;->e:Landroid/graphics/PorterDuff$Mode;

    .line 179
    .line 180
    :cond_1
    const/16 v14, 0x25

    .line 181
    .line 182
    invoke-virtual {v12, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 183
    .line 184
    .line 185
    move-result v15

    .line 186
    if-eqz v15, :cond_2

    .line 187
    .line 188
    invoke-virtual {v2, v14}, Ls4/a;->e(I)Landroid/graphics/drawable/Drawable;

    .line 189
    .line 190
    .line 191
    move-result-object v14

    .line 192
    invoke-virtual {v0, v14}, Lq7/p;->i(Landroid/graphics/drawable/Drawable;)V

    .line 193
    .line 194
    .line 195
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 196
    .line 197
    .line 198
    move-result-object v14

    .line 199
    const v15, 0x7f130053

    .line 200
    .line 201
    .line 202
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 203
    .line 204
    .line 205
    move-result-object v14

    .line 206
    invoke-virtual {v10, v14}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 207
    .line 208
    .line 209
    const/4 v14, 0x2

    .line 210
    invoke-static {v10, v14}, Lx0/b1;->B(Landroid/view/View;I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v10, v3}, Landroid/view/View;->setClickable(Z)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v10, v3}, Lcom/google/android/material/internal/CheckableImageButton;->setPressable(Z)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v10, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 220
    .line 221
    .line 222
    const/16 v14, 0x35

    .line 223
    .line 224
    invoke-virtual {v12, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 225
    .line 226
    .line 227
    move-result v15

    .line 228
    if-nez v15, :cond_4

    .line 229
    .line 230
    const/16 v15, 0x20

    .line 231
    .line 232
    invoke-virtual {v12, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 233
    .line 234
    .line 235
    move-result v16

    .line 236
    if-eqz v16, :cond_3

    .line 237
    .line 238
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 239
    .line 240
    .line 241
    move-result-object v7

    .line 242
    invoke-static {v7, v2, v15}, Lcom/bumptech/glide/c;->x(Landroid/content/Context;Ls4/a;I)Landroid/content/res/ColorStateList;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    iput-object v7, v0, Lq7/p;->k:Landroid/content/res/ColorStateList;

    .line 247
    .line 248
    :cond_3
    const/16 v7, 0x21

    .line 249
    .line 250
    invoke-virtual {v12, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 251
    .line 252
    .line 253
    move-result v15

    .line 254
    if-eqz v15, :cond_4

    .line 255
    .line 256
    invoke-virtual {v12, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 257
    .line 258
    .line 259
    move-result v7

    .line 260
    invoke-static {v7, v13}, Lg7/l;->h(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 261
    .line 262
    .line 263
    move-result-object v7

    .line 264
    iput-object v7, v0, Lq7/p;->l:Landroid/graphics/PorterDuff$Mode;

    .line 265
    .line 266
    :cond_4
    const/16 v7, 0x1e

    .line 267
    .line 268
    invoke-virtual {v12, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 269
    .line 270
    .line 271
    move-result v15

    .line 272
    const/4 v5, 0x1

    .line 273
    if-eqz v15, :cond_6

    .line 274
    .line 275
    invoke-virtual {v12, v7, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 276
    .line 277
    .line 278
    move-result v7

    .line 279
    invoke-virtual {v0, v7}, Lq7/p;->g(I)V

    .line 280
    .line 281
    .line 282
    const/16 v7, 0x1b

    .line 283
    .line 284
    invoke-virtual {v12, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 285
    .line 286
    .line 287
    move-result v14

    .line 288
    if-eqz v14, :cond_5

    .line 289
    .line 290
    invoke-virtual {v12, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 291
    .line 292
    .line 293
    move-result-object v7

    .line 294
    invoke-virtual {v9}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 295
    .line 296
    .line 297
    move-result-object v14

    .line 298
    if-eq v14, v7, :cond_5

    .line 299
    .line 300
    invoke-virtual {v9, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 301
    .line 302
    .line 303
    :cond_5
    const/16 v7, 0x1a

    .line 304
    .line 305
    invoke-virtual {v12, v7, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 306
    .line 307
    .line 308
    move-result v7

    .line 309
    invoke-virtual {v9, v7}, Lcom/google/android/material/internal/CheckableImageButton;->setCheckable(Z)V

    .line 310
    .line 311
    .line 312
    goto :goto_0

    .line 313
    :cond_6
    invoke-virtual {v12, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 314
    .line 315
    .line 316
    move-result v7

    .line 317
    if-eqz v7, :cond_9

    .line 318
    .line 319
    const/16 v7, 0x36

    .line 320
    .line 321
    invoke-virtual {v12, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 322
    .line 323
    .line 324
    move-result v15

    .line 325
    if-eqz v15, :cond_7

    .line 326
    .line 327
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 328
    .line 329
    .line 330
    move-result-object v15

    .line 331
    invoke-static {v15, v2, v7}, Lcom/bumptech/glide/c;->x(Landroid/content/Context;Ls4/a;I)Landroid/content/res/ColorStateList;

    .line 332
    .line 333
    .line 334
    move-result-object v7

    .line 335
    iput-object v7, v0, Lq7/p;->k:Landroid/content/res/ColorStateList;

    .line 336
    .line 337
    :cond_7
    const/16 v7, 0x37

    .line 338
    .line 339
    invoke-virtual {v12, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 340
    .line 341
    .line 342
    move-result v15

    .line 343
    if-eqz v15, :cond_8

    .line 344
    .line 345
    invoke-virtual {v12, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 346
    .line 347
    .line 348
    move-result v7

    .line 349
    invoke-static {v7, v13}, Lg7/l;->h(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 350
    .line 351
    .line 352
    move-result-object v7

    .line 353
    iput-object v7, v0, Lq7/p;->l:Landroid/graphics/PorterDuff$Mode;

    .line 354
    .line 355
    :cond_8
    invoke-virtual {v12, v14, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 356
    .line 357
    .line 358
    move-result v7

    .line 359
    invoke-virtual {v0, v7}, Lq7/p;->g(I)V

    .line 360
    .line 361
    .line 362
    const/16 v7, 0x33

    .line 363
    .line 364
    invoke-virtual {v12, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 365
    .line 366
    .line 367
    move-result-object v7

    .line 368
    invoke-virtual {v9}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 369
    .line 370
    .line 371
    move-result-object v14

    .line 372
    if-eq v14, v7, :cond_9

    .line 373
    .line 374
    invoke-virtual {v9, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 375
    .line 376
    .line 377
    :cond_9
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 378
    .line 379
    .line 380
    move-result-object v7

    .line 381
    const v14, 0x7f070576

    .line 382
    .line 383
    .line 384
    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 385
    .line 386
    .line 387
    move-result v7

    .line 388
    const/16 v14, 0x1d

    .line 389
    .line 390
    invoke-virtual {v12, v14, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 391
    .line 392
    .line 393
    move-result v7

    .line 394
    if-ltz v7, :cond_f

    .line 395
    .line 396
    iget v14, v0, Lq7/p;->m:I

    .line 397
    .line 398
    if-eq v7, v14, :cond_a

    .line 399
    .line 400
    iput v7, v0, Lq7/p;->m:I

    .line 401
    .line 402
    invoke-virtual {v9, v7}, Landroid/view/View;->setMinimumWidth(I)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v9, v7}, Landroid/view/View;->setMinimumHeight(I)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v10, v7}, Landroid/view/View;->setMinimumWidth(I)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v10, v7}, Landroid/view/View;->setMinimumHeight(I)V

    .line 412
    .line 413
    .line 414
    :cond_a
    const/16 v7, 0x1f

    .line 415
    .line 416
    invoke-virtual {v12, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 417
    .line 418
    .line 419
    move-result v14

    .line 420
    if-eqz v14, :cond_b

    .line 421
    .line 422
    invoke-virtual {v12, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 423
    .line 424
    .line 425
    move-result v7

    .line 426
    invoke-static {v7}, Lnh/b;->m(I)Landroid/widget/ImageView$ScaleType;

    .line 427
    .line 428
    .line 429
    move-result-object v7

    .line 430
    iput-object v7, v0, Lq7/p;->n:Landroid/widget/ImageView$ScaleType;

    .line 431
    .line 432
    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 436
    .line 437
    .line 438
    :cond_b
    const/16 v7, 0x8

    .line 439
    .line 440
    invoke-virtual {v11, v7}, Landroid/view/View;->setVisibility(I)V

    .line 441
    .line 442
    .line 443
    const v7, 0x7f0b02f4

    .line 444
    .line 445
    .line 446
    invoke-virtual {v11, v7}, Landroid/view/View;->setId(I)V

    .line 447
    .line 448
    .line 449
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 450
    .line 451
    const/high16 v8, 0x42a00000    # 80.0f

    .line 452
    .line 453
    const/4 v14, -0x2

    .line 454
    invoke-direct {v7, v14, v14, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v11, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    .line 459
    .line 460
    invoke-static {v11, v5}, Lx0/b1;->y(Landroid/widget/TextView;I)V

    .line 461
    .line 462
    .line 463
    const/16 v5, 0x48

    .line 464
    .line 465
    invoke-virtual {v12, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 466
    .line 467
    .line 468
    move-result v3

    .line 469
    invoke-static {v11, v3}, Ld/b;->o0(Landroid/widget/TextView;I)V

    .line 470
    .line 471
    .line 472
    const/16 v3, 0x49

    .line 473
    .line 474
    invoke-virtual {v12, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 475
    .line 476
    .line 477
    move-result v5

    .line 478
    if-eqz v5, :cond_c

    .line 479
    .line 480
    invoke-virtual {v2, v3}, Ls4/a;->d(I)Landroid/content/res/ColorStateList;

    .line 481
    .line 482
    .line 483
    move-result-object v2

    .line 484
    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 485
    .line 486
    .line 487
    :cond_c
    const/16 v2, 0x47

    .line 488
    .line 489
    invoke-virtual {v12, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 490
    .line 491
    .line 492
    move-result-object v2

    .line 493
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 494
    .line 495
    .line 496
    move-result v3

    .line 497
    if-eqz v3, :cond_d

    .line 498
    .line 499
    goto :goto_1

    .line 500
    :cond_d
    move-object v13, v2

    .line 501
    :goto_1
    iput-object v13, v0, Lq7/p;->q:Ljava/lang/CharSequence;

    .line 502
    .line 503
    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    .line 505
    .line 506
    invoke-virtual/range {p0 .. p0}, Lq7/p;->n()V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 519
    .line 520
    .line 521
    iget-object v2, v1, Lcom/google/android/material/textfield/TextInputLayout;->U0:Ljava/util/LinkedHashSet;

    .line 522
    .line 523
    invoke-virtual {v2, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 524
    .line 525
    .line 526
    iget-object v2, v1, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 527
    .line 528
    if-eqz v2, :cond_e

    .line 529
    .line 530
    invoke-virtual {v4, v1}, Lq7/n;->a(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 531
    .line 532
    .line 533
    :cond_e
    new-instance v1, Lq7/o;

    .line 534
    .line 535
    const/4 v2, 0x0

    .line 536
    invoke-direct {v1, v2, v0}, Lq7/o;-><init>(ILjava/lang/Object;)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 540
    .line 541
    .line 542
    return-void

    .line 543
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 544
    .line 545
    const-string v2, "endIconSize cannot be less than 0"

    .line 546
    .line 547
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    throw v1
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;I)Lcom/google/android/material/internal/CheckableImageButton;
    .locals 2

    .line 1
    const v0, 0x7f0e0074

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/google/android/material/internal/CheckableImageButton;

    .line 10
    .line 11
    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lnh/b;->k0(Lcom/google/android/material/internal/CheckableImageButton;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-static {p2}, Lcom/bumptech/glide/c;->K(Landroid/content/Context;)Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 32
    .line 33
    invoke-static {p2, v1}, Lx0/p;->h(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-object p1
.end method

.method public final b()Lq7/q;
    .locals 5

    .line 1
    iget v0, p0, Lq7/p;->i:I

    .line 2
    .line 3
    iget-object v1, p0, Lq7/p;->h:La9/a;

    .line 4
    .line 5
    iget-object v2, v1, La9/a;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    check-cast v3, Lq7/q;

    .line 14
    .line 15
    if-nez v3, :cond_5

    .line 16
    .line 17
    const/4 v3, -0x1

    .line 18
    iget-object v4, v1, La9/a;->e:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v4, Lq7/p;

    .line 21
    .line 22
    if-eq v0, v3, :cond_4

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    if-eq v0, v3, :cond_2

    .line 28
    .line 29
    const/4 v1, 0x2

    .line 30
    if-eq v0, v1, :cond_1

    .line 31
    .line 32
    const/4 v1, 0x3

    .line 33
    if-ne v0, v1, :cond_0

    .line 34
    .line 35
    new-instance v1, Lq7/l;

    .line 36
    .line 37
    invoke-direct {v1, v4}, Lq7/l;-><init>(Lq7/p;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    move-object v3, v1

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    const-string v2, "Invalid end icon mode: "

    .line 45
    .line 46
    invoke-static {v0, v2}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v1

    .line 54
    :cond_1
    new-instance v1, Lq7/c;

    .line 55
    .line 56
    invoke-direct {v1, v4}, Lq7/c;-><init>(Lq7/p;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    new-instance v3, Lq7/x;

    .line 61
    .line 62
    iget v1, v1, La9/a;->c:I

    .line 63
    .line 64
    invoke-direct {v3, v4, v1}, Lq7/x;-><init>(Lq7/p;I)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    new-instance v1, Lq7/d;

    .line 69
    .line 70
    const/4 v3, 0x1

    .line 71
    invoke-direct {v1, v4, v3}, Lq7/d;-><init>(Lq7/p;I)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    new-instance v1, Lq7/d;

    .line 76
    .line 77
    const/4 v3, 0x0

    .line 78
    invoke-direct {v1, v4, v3}, Lq7/d;-><init>(Lq7/p;I)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :goto_1
    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :cond_5
    return-object v3
.end method

.method public final c()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lq7/p;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lq7/p;->e()Z

    .line 8
    .line 9
    .line 10
    move-result v0

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
    iget-object v0, p0, Lq7/p;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 27
    .line 28
    invoke-static {v0}, Lx0/p;->c(Landroid/view/ViewGroup$MarginLayoutParams;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    add-int/2addr v0, v1

    .line 33
    :goto_1
    sget-object v1, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 34
    .line 35
    invoke-static {p0}, Lx0/k0;->e(Landroid/view/View;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iget-object v2, p0, Lq7/p;->r:Lw/b1;

    .line 40
    .line 41
    invoke-static {v2}, Lx0/k0;->e(Landroid/view/View;)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    add-int/2addr v2, v1

    .line 46
    add-int/2addr v2, v0

    .line 47
    return v2
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lq7/p;->b:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lq7/p;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lq7/p;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public final f(Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lq7/p;->b()Lq7/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lq7/q;->k()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lq7/p;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-boolean v1, v2, Lcom/google/android/material/internal/CheckableImageButton;->d:Z

    .line 15
    .line 16
    invoke-virtual {v0}, Lq7/q;->l()Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eq v1, v4, :cond_0

    .line 21
    .line 22
    xor-int/2addr v1, v3

    .line 23
    invoke-virtual {v2, v1}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    :goto_0
    instance-of v4, v0, Lq7/l;

    .line 30
    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/view/View;->isActivated()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-virtual {v0}, Lq7/q;->j()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eq v4, v0, :cond_1

    .line 42
    .line 43
    xor-int/lit8 v0, v4, 0x1

    .line 44
    .line 45
    invoke-virtual {v2, v0}, Landroid/view/View;->setActivated(Z)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move v3, v1

    .line 50
    :goto_1
    if-nez p1, :cond_2

    .line 51
    .line 52
    if-eqz v3, :cond_3

    .line 53
    .line 54
    :cond_2
    iget-object p1, p0, Lq7/p;->k:Landroid/content/res/ColorStateList;

    .line 55
    .line 56
    iget-object v0, p0, Lq7/p;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 57
    .line 58
    invoke-static {v0, v2, p1}, Lnh/b;->h0(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    .line 59
    .line 60
    .line 61
    :cond_3
    return-void
.end method

.method public final g(I)V
    .locals 9

    .line 1
    iget v0, p0, Lq7/p;->i:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lq7/p;->b()Lq7/q;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lq7/p;->w:Ly0/d;

    .line 11
    .line 12
    const/16 v2, 0x13

    .line 13
    .line 14
    iget-object v3, p0, Lq7/p;->v:Landroid/view/accessibility/AccessibilityManager;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    if-lt v4, v2, :cond_1

    .line 23
    .line 24
    invoke-static {v3, v1}, Ly0/c;->b(Landroid/view/accessibility/AccessibilityManager;Ly0/d;)Z

    .line 25
    .line 26
    .line 27
    :cond_1
    const/4 v1, 0x0

    .line 28
    iput-object v1, p0, Lq7/p;->w:Ly0/d;

    .line 29
    .line 30
    invoke-virtual {v0}, Lq7/q;->s()V

    .line 31
    .line 32
    .line 33
    iput p1, p0, Lq7/p;->i:I

    .line 34
    .line 35
    iget-object v0, p0, Lq7/p;->j:Ljava/util/LinkedHashSet;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_b

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    const/4 v4, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 v4, 0x0

    .line 53
    :goto_0
    invoke-virtual {p0, v4}, Lq7/p;->h(Z)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lq7/p;->b()Lq7/q;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    iget-object v5, p0, Lq7/p;->h:La9/a;

    .line 61
    .line 62
    iget v5, v5, La9/a;->b:I

    .line 63
    .line 64
    if-nez v5, :cond_3

    .line 65
    .line 66
    invoke-virtual {v4}, Lq7/q;->d()I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    :cond_3
    if-eqz v5, :cond_4

    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-static {v6, v5}, Lcom/bumptech/glide/d;->x(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    goto :goto_1

    .line 81
    :cond_4
    move-object v5, v1

    .line 82
    :goto_1
    iget-object v6, p0, Lq7/p;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 83
    .line 84
    invoke-virtual {v6, v5}, Lw/w;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    .line 86
    .line 87
    iget-object v7, p0, Lq7/p;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 88
    .line 89
    if-eqz v5, :cond_5

    .line 90
    .line 91
    iget-object v5, p0, Lq7/p;->k:Landroid/content/res/ColorStateList;

    .line 92
    .line 93
    iget-object v8, p0, Lq7/p;->l:Landroid/graphics/PorterDuff$Mode;

    .line 94
    .line 95
    invoke-static {v7, v6, v5, v8}, Lnh/b;->f(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 96
    .line 97
    .line 98
    iget-object v5, p0, Lq7/p;->k:Landroid/content/res/ColorStateList;

    .line 99
    .line 100
    invoke-static {v7, v6, v5}, Lnh/b;->h0(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    .line 101
    .line 102
    .line 103
    :cond_5
    invoke-virtual {v4}, Lq7/q;->c()I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-eqz v5, :cond_6

    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    :cond_6
    invoke-virtual {v6}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    if-eq v5, v1, :cond_7

    .line 122
    .line 123
    invoke-virtual {v6, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 124
    .line 125
    .line 126
    :cond_7
    invoke-virtual {v4}, Lq7/q;->k()Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    invoke-virtual {v6, v1}, Lcom/google/android/material/internal/CheckableImageButton;->setCheckable(Z)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v7}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    invoke-virtual {v4, v1}, Lq7/q;->i(I)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_a

    .line 142
    .line 143
    invoke-virtual {v4}, Lq7/q;->r()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4}, Lq7/q;->h()Ly0/d;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    iput-object p1, p0, Lq7/p;->w:Ly0/d;

    .line 151
    .line 152
    if-eqz p1, :cond_8

    .line 153
    .line 154
    if-eqz v3, :cond_8

    .line 155
    .line 156
    invoke-static {p0}, Lx0/b1;->l(Landroid/view/View;)Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    if-eqz p1, :cond_8

    .line 161
    .line 162
    iget-object p1, p0, Lq7/p;->w:Ly0/d;

    .line 163
    .line 164
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 165
    .line 166
    if-lt v1, v2, :cond_8

    .line 167
    .line 168
    invoke-static {v3, p1}, Ly0/c;->a(Landroid/view/accessibility/AccessibilityManager;Ly0/d;)Z

    .line 169
    .line 170
    .line 171
    :cond_8
    invoke-virtual {v4}, Lq7/q;->f()Landroid/view/View$OnClickListener;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    iget-object v1, p0, Lq7/p;->p:Landroid/view/View$OnLongClickListener;

    .line 176
    .line 177
    invoke-virtual {v6, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    .line 179
    .line 180
    invoke-static {v6, v1}, Lnh/b;->l0(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    .line 181
    .line 182
    .line 183
    iget-object p1, p0, Lq7/p;->t:Landroid/widget/EditText;

    .line 184
    .line 185
    if-eqz p1, :cond_9

    .line 186
    .line 187
    invoke-virtual {v4, p1}, Lq7/q;->m(Landroid/widget/EditText;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0, v4}, Lq7/p;->j(Lq7/q;)V

    .line 191
    .line 192
    .line 193
    :cond_9
    iget-object p1, p0, Lq7/p;->k:Landroid/content/res/ColorStateList;

    .line 194
    .line 195
    iget-object v1, p0, Lq7/p;->l:Landroid/graphics/PorterDuff$Mode;

    .line 196
    .line 197
    invoke-static {v7, v6, p1, v1}, Lnh/b;->f(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0, v0}, Lq7/p;->f(Z)V

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 205
    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    const-string v2, "The current box background mode "

    .line 209
    .line 210
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v7}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string v2, " is not supported by the end icon mode "

    .line 221
    .line 222
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw v0

    .line 236
    :cond_b
    invoke-static {v0}, Ll2/z;->d(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    throw p1
.end method

.method public final h(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq7/p;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq v0, p1, :cond_1

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 p1, 0x8

    .line 12
    .line 13
    :goto_0
    iget-object v0, p0, Lq7/p;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lq7/p;->k()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lq7/p;->m()V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lq7/p;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->q()Z

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public final i(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lq7/p;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lw/w;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lq7/p;->l()V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lq7/p;->d:Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    iget-object v1, p0, Lq7/p;->e:Landroid/graphics/PorterDuff$Mode;

    .line 12
    .line 13
    iget-object v2, p0, Lq7/p;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 14
    .line 15
    invoke-static {v2, v0, p1, v1}, Lnh/b;->f(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final j(Lq7/q;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lq7/p;->t:Landroid/widget/EditText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lq7/q;->e()Landroid/view/View$OnFocusChangeListener;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lq7/p;->t:Landroid/widget/EditText;

    .line 13
    .line 14
    invoke-virtual {p1}, Lq7/q;->e()Landroid/view/View$OnFocusChangeListener;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {p1}, Lq7/q;->g()Landroid/view/View$OnFocusChangeListener;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lq7/p;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 28
    .line 29
    invoke-virtual {p1}, Lq7/q;->g()Landroid/view/View$OnFocusChangeListener;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    return-void
.end method

.method public final k()V
    .locals 4

    .line 1
    iget-object v0, p0, Lq7/p;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lq7/p;->e()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/16 v0, 0x8

    .line 21
    .line 22
    :goto_0
    iget-object v3, p0, Lq7/p;->b:Landroid/widget/FrameLayout;

    .line 23
    .line 24
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lq7/p;->q:Ljava/lang/CharSequence;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-boolean v0, p0, Lq7/p;->s:Z

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/16 v0, 0x8

    .line 38
    .line 39
    :goto_1
    invoke-virtual {p0}, Lq7/p;->d()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0}, Lq7/p;->e()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_2

    .line 50
    .line 51
    if-nez v0, :cond_3

    .line 52
    .line 53
    :cond_2
    const/4 v1, 0x0

    .line 54
    :cond_3
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final l()V
    .locals 3

    .line 1
    iget-object v0, p0, Lq7/p;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lq7/p;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, v2, Lcom/google/android/material/textfield/TextInputLayout;->j:Lq7/t;

    .line 12
    .line 13
    iget-boolean v1, v1, Lq7/t;->q:Z

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->m()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/16 v1, 0x8

    .line 26
    .line 27
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lq7/p;->k()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lq7/p;->m()V

    .line 34
    .line 35
    .line 36
    iget v0, p0, Lq7/p;->i:I

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->q()Z

    .line 42
    .line 43
    .line 44
    :goto_1
    return-void
.end method

.method public final m()V
    .locals 5

    .line 1
    iget-object v0, p0, Lq7/p;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lq7/p;->d()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0}, Lq7/p;->e()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 22
    .line 23
    sget-object v2, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 24
    .line 25
    invoke-static {v1}, Lx0/k0;->e(Landroid/view/View;)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 31
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const v3, 0x7f0704f4

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    iget-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 47
    .line 48
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    sget-object v4, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 59
    .line 60
    iget-object v4, p0, Lq7/p;->r:Lw/b1;

    .line 61
    .line 62
    invoke-static {v4, v2, v3, v1, v0}, Lx0/k0;->k(Landroid/view/View;IIII)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final n()V
    .locals 4

    .line 1
    iget-object v0, p0, Lq7/p;->r:Lw/b1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lq7/p;->q:Ljava/lang/CharSequence;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    iget-boolean v2, p0, Lq7/p;->s:Z

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v2, 0x8

    .line 19
    .line 20
    :goto_0
    if-eq v1, v2, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Lq7/p;->b()Lq7/q;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    :cond_1
    invoke-virtual {v1, v3}, Lq7/q;->p(Z)V

    .line 30
    .line 31
    .line 32
    :cond_2
    invoke-virtual {p0}, Lq7/p;->k()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lq7/p;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->q()Z

    .line 41
    .line 42
    .line 43
    return-void
.end method
