.class public final Lw/n3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw/m1;


# instance fields
.field public final a:Landroidx/appcompat/widget/Toolbar;

.field public b:I

.field public final c:Landroid/view/View;

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:Landroid/graphics/drawable/Drawable;

.field public final f:Landroid/graphics/drawable/Drawable;

.field public final g:Z

.field public h:Ljava/lang/CharSequence;

.field public final i:Ljava/lang/CharSequence;

.field public final j:Ljava/lang/CharSequence;

.field public k:Landroid/view/Window$Callback;

.field public l:Z

.field public m:Lw/j;

.field public final n:I

.field public final o:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lw/n3;->n:I

    .line 6
    .line 7
    iput-object p1, p0, Lw/n3;->a:Landroidx/appcompat/widget/Toolbar;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, p0, Lw/n3;->h:Ljava/lang/CharSequence;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, p0, Lw/n3;->i:Ljava/lang/CharSequence;

    .line 20
    .line 21
    iget-object v1, p0, Lw/n3;->h:Ljava/lang/CharSequence;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    if-eqz v1, :cond_0

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
    iput-boolean v1, p0, Lw/n3;->g:Z

    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iput-object v1, p0, Lw/n3;->f:Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    sget-object v3, Lp/a;->a:[I

    .line 42
    .line 43
    const v4, 0x7f040008

    .line 44
    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    invoke-static {v1, v5, v3, v4}, Ls4/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ls4/a;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const/16 v3, 0xf

    .line 52
    .line 53
    invoke-virtual {v1, v3}, Ls4/a;->e(I)Landroid/graphics/drawable/Drawable;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    iput-object v3, p0, Lw/n3;->o:Landroid/graphics/drawable/Drawable;

    .line 58
    .line 59
    iget-object v3, v1, Ls4/a;->c:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v3, Landroid/content/res/TypedArray;

    .line 62
    .line 63
    const/16 v4, 0x1b

    .line 64
    .line 65
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-nez v6, :cond_1

    .line 74
    .line 75
    iput-boolean v2, p0, Lw/n3;->g:Z

    .line 76
    .line 77
    iput-object v4, p0, Lw/n3;->h:Ljava/lang/CharSequence;

    .line 78
    .line 79
    iget v2, p0, Lw/n3;->b:I

    .line 80
    .line 81
    and-int/lit8 v2, v2, 0x8

    .line 82
    .line 83
    if-eqz v2, :cond_1

    .line 84
    .line 85
    iget-object v2, p0, Lw/n3;->a:Landroidx/appcompat/widget/Toolbar;

    .line 86
    .line 87
    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    iget-boolean v6, p0, Lw/n3;->g:Z

    .line 91
    .line 92
    if-eqz v6, :cond_1

    .line 93
    .line 94
    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-static {v2, v4}, Lx0/b1;->z(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    :cond_1
    const/16 v2, 0x19

    .line 102
    .line 103
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-nez v4, :cond_2

    .line 112
    .line 113
    iput-object v2, p0, Lw/n3;->i:Ljava/lang/CharSequence;

    .line 114
    .line 115
    iget v4, p0, Lw/n3;->b:I

    .line 116
    .line 117
    and-int/lit8 v4, v4, 0x8

    .line 118
    .line 119
    if-eqz v4, :cond_2

    .line 120
    .line 121
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    :cond_2
    const/16 v2, 0x14

    .line 125
    .line 126
    invoke-virtual {v1, v2}, Ls4/a;->e(I)Landroid/graphics/drawable/Drawable;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    if-eqz v2, :cond_3

    .line 131
    .line 132
    iput-object v2, p0, Lw/n3;->e:Landroid/graphics/drawable/Drawable;

    .line 133
    .line 134
    invoke-virtual {p0}, Lw/n3;->c()V

    .line 135
    .line 136
    .line 137
    :cond_3
    const/16 v2, 0x11

    .line 138
    .line 139
    invoke-virtual {v1, v2}, Ls4/a;->e(I)Landroid/graphics/drawable/Drawable;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    if-eqz v2, :cond_4

    .line 144
    .line 145
    iput-object v2, p0, Lw/n3;->d:Landroid/graphics/drawable/Drawable;

    .line 146
    .line 147
    invoke-virtual {p0}, Lw/n3;->c()V

    .line 148
    .line 149
    .line 150
    :cond_4
    iget-object v2, p0, Lw/n3;->f:Landroid/graphics/drawable/Drawable;

    .line 151
    .line 152
    if-nez v2, :cond_6

    .line 153
    .line 154
    iget-object v2, p0, Lw/n3;->o:Landroid/graphics/drawable/Drawable;

    .line 155
    .line 156
    if-eqz v2, :cond_6

    .line 157
    .line 158
    iput-object v2, p0, Lw/n3;->f:Landroid/graphics/drawable/Drawable;

    .line 159
    .line 160
    iget v4, p0, Lw/n3;->b:I

    .line 161
    .line 162
    and-int/lit8 v4, v4, 0x4

    .line 163
    .line 164
    iget-object v6, p0, Lw/n3;->a:Landroidx/appcompat/widget/Toolbar;

    .line 165
    .line 166
    if-eqz v4, :cond_5

    .line 167
    .line 168
    invoke-virtual {v6, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_5
    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 173
    .line 174
    .line 175
    :cond_6
    :goto_1
    const/16 v2, 0xa

    .line 176
    .line 177
    invoke-virtual {v3, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    invoke-virtual {p0, v2}, Lw/n3;->a(I)V

    .line 182
    .line 183
    .line 184
    const/16 v2, 0x9

    .line 185
    .line 186
    invoke-virtual {v3, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-eqz v2, :cond_9

    .line 191
    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    invoke-virtual {v4, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    iget-object v4, p0, Lw/n3;->c:Landroid/view/View;

    .line 205
    .line 206
    if-eqz v4, :cond_7

    .line 207
    .line 208
    iget v6, p0, Lw/n3;->b:I

    .line 209
    .line 210
    and-int/lit8 v6, v6, 0x10

    .line 211
    .line 212
    if-eqz v6, :cond_7

    .line 213
    .line 214
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 215
    .line 216
    .line 217
    :cond_7
    iput-object v2, p0, Lw/n3;->c:Landroid/view/View;

    .line 218
    .line 219
    if-eqz v2, :cond_8

    .line 220
    .line 221
    iget v4, p0, Lw/n3;->b:I

    .line 222
    .line 223
    and-int/lit8 v4, v4, 0x10

    .line 224
    .line 225
    if-eqz v4, :cond_8

    .line 226
    .line 227
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 228
    .line 229
    .line 230
    :cond_8
    iget v2, p0, Lw/n3;->b:I

    .line 231
    .line 232
    or-int/lit8 v2, v2, 0x10

    .line 233
    .line 234
    invoke-virtual {p0, v2}, Lw/n3;->a(I)V

    .line 235
    .line 236
    .line 237
    :cond_9
    const/16 v2, 0xd

    .line 238
    .line 239
    invoke-virtual {v3, v2, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-lez v2, :cond_a

    .line 244
    .line 245
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 250
    .line 251
    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    .line 253
    .line 254
    :cond_a
    const/4 v2, 0x7

    .line 255
    const/4 v4, -0x1

    .line 256
    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    const/4 v6, 0x3

    .line 261
    invoke-virtual {v3, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 262
    .line 263
    .line 264
    move-result v4

    .line 265
    if-gez v2, :cond_b

    .line 266
    .line 267
    if-ltz v4, :cond_d

    .line 268
    .line 269
    :cond_b
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    .line 274
    .line 275
    .line 276
    move-result v4

    .line 277
    iget-object v6, p1, Landroidx/appcompat/widget/Toolbar;->v:Lw/r2;

    .line 278
    .line 279
    if-nez v6, :cond_c

    .line 280
    .line 281
    new-instance v6, Lw/r2;

    .line 282
    .line 283
    invoke-direct {v6}, Lw/r2;-><init>()V

    .line 284
    .line 285
    .line 286
    iput-object v6, p1, Landroidx/appcompat/widget/Toolbar;->v:Lw/r2;

    .line 287
    .line 288
    :cond_c
    iget-object v6, p1, Landroidx/appcompat/widget/Toolbar;->v:Lw/r2;

    .line 289
    .line 290
    invoke-virtual {v6, v2, v4}, Lw/r2;->a(II)V

    .line 291
    .line 292
    .line 293
    :cond_d
    const/16 v2, 0x1c

    .line 294
    .line 295
    invoke-virtual {v3, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    if-eqz v2, :cond_e

    .line 300
    .line 301
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    iput v2, p1, Landroidx/appcompat/widget/Toolbar;->l:I

    .line 306
    .line 307
    iget-object v6, p1, Landroidx/appcompat/widget/Toolbar;->b:Lw/b1;

    .line 308
    .line 309
    if-eqz v6, :cond_e

    .line 310
    .line 311
    invoke-virtual {v6, v4, v2}, Lw/b1;->setTextAppearance(Landroid/content/Context;I)V

    .line 312
    .line 313
    .line 314
    :cond_e
    const/16 v2, 0x1a

    .line 315
    .line 316
    invoke-virtual {v3, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 317
    .line 318
    .line 319
    move-result v2

    .line 320
    if-eqz v2, :cond_f

    .line 321
    .line 322
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 323
    .line 324
    .line 325
    move-result-object v4

    .line 326
    iput v2, p1, Landroidx/appcompat/widget/Toolbar;->m:I

    .line 327
    .line 328
    iget-object v6, p1, Landroidx/appcompat/widget/Toolbar;->c:Lw/b1;

    .line 329
    .line 330
    if-eqz v6, :cond_f

    .line 331
    .line 332
    invoke-virtual {v6, v4, v2}, Lw/b1;->setTextAppearance(Landroid/content/Context;I)V

    .line 333
    .line 334
    .line 335
    :cond_f
    const/16 v2, 0x16

    .line 336
    .line 337
    invoke-virtual {v3, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 338
    .line 339
    .line 340
    move-result v0

    .line 341
    if-eqz v0, :cond_10

    .line 342
    .line 343
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setPopupTheme(I)V

    .line 344
    .line 345
    .line 346
    :cond_10
    invoke-virtual {v1}, Ls4/a;->r()V

    .line 347
    .line 348
    .line 349
    iget v0, p0, Lw/n3;->n:I

    .line 350
    .line 351
    const v1, 0x7f130002

    .line 352
    .line 353
    .line 354
    if-ne v1, v0, :cond_11

    .line 355
    .line 356
    goto :goto_3

    .line 357
    :cond_11
    iput v1, p0, Lw/n3;->n:I

    .line 358
    .line 359
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    if-eqz v0, :cond_13

    .line 368
    .line 369
    iget v0, p0, Lw/n3;->n:I

    .line 370
    .line 371
    if-nez v0, :cond_12

    .line 372
    .line 373
    goto :goto_2

    .line 374
    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v5

    .line 382
    :goto_2
    iput-object v5, p0, Lw/n3;->j:Ljava/lang/CharSequence;

    .line 383
    .line 384
    invoke-virtual {p0}, Lw/n3;->b()V

    .line 385
    .line 386
    .line 387
    :cond_13
    :goto_3
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    iput-object v0, p0, Lw/n3;->j:Ljava/lang/CharSequence;

    .line 392
    .line 393
    new-instance v0, Lw/m3;

    .line 394
    .line 395
    invoke-direct {v0, p0}, Lw/m3;-><init>(Lw/n3;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    .line 400
    .line 401
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .line 1
    iget v0, p0, Lw/n3;->b:I

    .line 2
    .line 3
    xor-int/2addr v0, p1

    .line 4
    iput p1, p0, Lw/n3;->b:I

    .line 5
    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    and-int/lit8 v1, v0, 0x4

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    and-int/lit8 v1, p1, 0x4

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lw/n3;->b()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget v1, p0, Lw/n3;->b:I

    .line 21
    .line 22
    and-int/lit8 v1, v1, 0x4

    .line 23
    .line 24
    iget-object v3, p0, Lw/n3;->a:Landroidx/appcompat/widget/Toolbar;

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    iget-object v1, p0, Lw/n3;->f:Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v1, p0, Lw/n3;->o:Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    :goto_0
    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 40
    .line 41
    .line 42
    :cond_3
    :goto_1
    and-int/lit8 v1, v0, 0x3

    .line 43
    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    invoke-virtual {p0}, Lw/n3;->c()V

    .line 47
    .line 48
    .line 49
    :cond_4
    and-int/lit8 v1, v0, 0x8

    .line 50
    .line 51
    iget-object v3, p0, Lw/n3;->a:Landroidx/appcompat/widget/Toolbar;

    .line 52
    .line 53
    if-eqz v1, :cond_6

    .line 54
    .line 55
    and-int/lit8 v1, p1, 0x8

    .line 56
    .line 57
    if-eqz v1, :cond_5

    .line 58
    .line 59
    iget-object v1, p0, Lw/n3;->h:Ljava/lang/CharSequence;

    .line 60
    .line 61
    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lw/n3;->i:Ljava/lang/CharSequence;

    .line 65
    .line 66
    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_5
    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    :cond_6
    :goto_2
    and-int/lit8 v0, v0, 0x10

    .line 77
    .line 78
    if-eqz v0, :cond_8

    .line 79
    .line 80
    iget-object v0, p0, Lw/n3;->c:Landroid/view/View;

    .line 81
    .line 82
    if-eqz v0, :cond_8

    .line 83
    .line 84
    and-int/lit8 p1, p1, 0x10

    .line 85
    .line 86
    if-eqz p1, :cond_7

    .line 87
    .line 88
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 89
    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_7
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 93
    .line 94
    .line 95
    :cond_8
    :goto_3
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget v0, p0, Lw/n3;->b:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lw/n3;->j:Ljava/lang/CharSequence;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lw/n3;->a:Landroidx/appcompat/widget/Toolbar;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget v0, p0, Lw/n3;->n:I

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lw/n3;->j:Ljava/lang/CharSequence;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget v0, p0, Lw/n3;->b:I

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x2

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lw/n3;->e:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lw/n3;->d:Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Lw/n3;->d:Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    const/4 v0, 0x0

    .line 23
    :goto_0
    iget-object v1, p0, Lw/n3;->a:Landroidx/appcompat/widget/Toolbar;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
