.class public final Li4/s;
.super Li4/j;
.source "SourceFile"


# static fields
.field public static final j:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field public b:Li4/q;

.field public c:Landroid/graphics/PorterDuffColorFilter;

.field public d:Landroid/graphics/ColorFilter;

.field public e:Z

.field public f:Z

.field public final g:[F

.field public final h:Landroid/graphics/Matrix;

.field public final i:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 2
    .line 3
    sput-object v0, Li4/s;->j:Landroid/graphics/PorterDuff$Mode;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Li4/j;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li4/s;->f:Z

    const/16 v0, 0x9

    .line 3
    new-array v0, v0, [F

    iput-object v0, p0, Li4/s;->g:[F

    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Li4/s;->h:Landroid/graphics/Matrix;

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Li4/s;->i:Landroid/graphics/Rect;

    .line 6
    new-instance v0, Li4/q;

    invoke-direct {v0}, Li4/q;-><init>()V

    iput-object v0, p0, Li4/s;->b:Li4/q;

    return-void
.end method

.method public constructor <init>(Li4/q;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Li4/j;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Li4/s;->f:Z

    const/16 v0, 0x9

    .line 9
    new-array v0, v0, [F

    iput-object v0, p0, Li4/s;->g:[F

    .line 10
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Li4/s;->h:Landroid/graphics/Matrix;

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Li4/s;->i:Landroid/graphics/Rect;

    .line 12
    iput-object p1, p0, Li4/s;->b:Li4/q;

    .line 13
    iget-object v0, p1, Li4/q;->c:Landroid/content/res/ColorStateList;

    iget-object p1, p1, Li4/q;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, p1}, Li4/s;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Li4/s;->c:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Li4/j;->getState()[I

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 16
    .line 17
    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 22
    return-object p1
.end method

.method public final canApplyTheme()Z
    .locals 3

    .line 1
    iget-object v0, p0, Li4/j;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v2, 0x15

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, Lq0/b;->b(Landroid/graphics/drawable/Drawable;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Li4/j;->a:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v2, v0, Li4/s;->i:Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-lez v3, :cond_d

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-gtz v3, :cond_1

    .line 29
    .line 30
    goto/16 :goto_4

    .line 31
    .line 32
    :cond_1
    iget-object v3, v0, Li4/s;->d:Landroid/graphics/ColorFilter;

    .line 33
    .line 34
    if-nez v3, :cond_2

    .line 35
    .line 36
    iget-object v3, v0, Li4/s;->c:Landroid/graphics/PorterDuffColorFilter;

    .line 37
    .line 38
    :cond_2
    iget-object v4, v0, Li4/s;->h:Landroid/graphics/Matrix;

    .line 39
    .line 40
    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 41
    .line 42
    .line 43
    iget-object v5, v0, Li4/s;->g:[F

    .line 44
    .line 45
    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 46
    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    aget v6, v5, v4

    .line 50
    .line 51
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    const/4 v7, 0x4

    .line 56
    aget v7, v5, v7

    .line 57
    .line 58
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    const/4 v8, 0x1

    .line 63
    aget v9, v5, v8

    .line 64
    .line 65
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    const/4 v10, 0x3

    .line 70
    aget v5, v5, v10

    .line 71
    .line 72
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    const/high16 v10, 0x3f800000    # 1.0f

    .line 77
    .line 78
    const/4 v11, 0x0

    .line 79
    cmpl-float v9, v9, v11

    .line 80
    .line 81
    if-nez v9, :cond_3

    .line 82
    .line 83
    cmpl-float v5, v5, v11

    .line 84
    .line 85
    if-eqz v5, :cond_4

    .line 86
    .line 87
    :cond_3
    const/high16 v6, 0x3f800000    # 1.0f

    .line 88
    .line 89
    const/high16 v7, 0x3f800000    # 1.0f

    .line 90
    .line 91
    :cond_4
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    int-to-float v5, v5

    .line 96
    mul-float v5, v5, v6

    .line 97
    .line 98
    float-to-int v5, v5

    .line 99
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    int-to-float v6, v6

    .line 104
    mul-float v6, v6, v7

    .line 105
    .line 106
    float-to-int v6, v6

    .line 107
    const/16 v7, 0x800

    .line 108
    .line 109
    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    if-lez v5, :cond_d

    .line 118
    .line 119
    if-gtz v6, :cond_5

    .line 120
    .line 121
    goto/16 :goto_4

    .line 122
    .line 123
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    iget v9, v2, Landroid/graphics/Rect;->left:I

    .line 128
    .line 129
    int-to-float v9, v9

    .line 130
    iget v12, v2, Landroid/graphics/Rect;->top:I

    .line 131
    .line 132
    int-to-float v12, v12

    .line 133
    invoke-virtual {v1, v9, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 134
    .line 135
    .line 136
    invoke-virtual/range {p0 .. p0}, Li4/s;->isAutoMirrored()Z

    .line 137
    .line 138
    .line 139
    move-result v9

    .line 140
    if-eqz v9, :cond_6

    .line 141
    .line 142
    invoke-static/range {p0 .. p0}, Lcom/bumptech/glide/c;->F(Landroid/graphics/drawable/Drawable;)I

    .line 143
    .line 144
    .line 145
    move-result v9

    .line 146
    if-ne v9, v8, :cond_6

    .line 147
    .line 148
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 149
    .line 150
    .line 151
    move-result v9

    .line 152
    int-to-float v9, v9

    .line 153
    invoke-virtual {v1, v9, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 154
    .line 155
    .line 156
    const/high16 v9, -0x40800000    # -1.0f

    .line 157
    .line 158
    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 159
    .line 160
    .line 161
    :cond_6
    invoke-virtual {v2, v4, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 162
    .line 163
    .line 164
    iget-object v9, v0, Li4/s;->b:Li4/q;

    .line 165
    .line 166
    iget-object v10, v9, Li4/q;->f:Landroid/graphics/Bitmap;

    .line 167
    .line 168
    if-eqz v10, :cond_7

    .line 169
    .line 170
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    .line 171
    .line 172
    .line 173
    move-result v10

    .line 174
    if-ne v5, v10, :cond_7

    .line 175
    .line 176
    iget-object v10, v9, Li4/q;->f:Landroid/graphics/Bitmap;

    .line 177
    .line 178
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    .line 179
    .line 180
    .line 181
    move-result v10

    .line 182
    if-ne v6, v10, :cond_7

    .line 183
    .line 184
    goto :goto_0

    .line 185
    :cond_7
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 186
    .line 187
    invoke-static {v5, v6, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 188
    .line 189
    .line 190
    move-result-object v10

    .line 191
    iput-object v10, v9, Li4/q;->f:Landroid/graphics/Bitmap;

    .line 192
    .line 193
    iput-boolean v8, v9, Li4/q;->k:Z

    .line 194
    .line 195
    :goto_0
    iget-boolean v9, v0, Li4/s;->f:Z

    .line 196
    .line 197
    if-nez v9, :cond_8

    .line 198
    .line 199
    iget-object v9, v0, Li4/s;->b:Li4/q;

    .line 200
    .line 201
    iget-object v10, v9, Li4/q;->f:Landroid/graphics/Bitmap;

    .line 202
    .line 203
    invoke-virtual {v10, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 204
    .line 205
    .line 206
    new-instance v15, Landroid/graphics/Canvas;

    .line 207
    .line 208
    iget-object v4, v9, Li4/q;->f:Landroid/graphics/Bitmap;

    .line 209
    .line 210
    invoke-direct {v15, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 211
    .line 212
    .line 213
    iget-object v12, v9, Li4/q;->b:Li4/p;

    .line 214
    .line 215
    sget-object v14, Li4/p;->p:Landroid/graphics/Matrix;

    .line 216
    .line 217
    iget-object v13, v12, Li4/p;->g:Li4/m;

    .line 218
    .line 219
    move/from16 v16, v5

    .line 220
    .line 221
    move/from16 v17, v6

    .line 222
    .line 223
    invoke-virtual/range {v12 .. v17}, Li4/p;->a(Li4/m;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V

    .line 224
    .line 225
    .line 226
    goto :goto_1

    .line 227
    :cond_8
    iget-object v9, v0, Li4/s;->b:Li4/q;

    .line 228
    .line 229
    iget-boolean v10, v9, Li4/q;->k:Z

    .line 230
    .line 231
    if-nez v10, :cond_9

    .line 232
    .line 233
    iget-object v10, v9, Li4/q;->g:Landroid/content/res/ColorStateList;

    .line 234
    .line 235
    iget-object v11, v9, Li4/q;->c:Landroid/content/res/ColorStateList;

    .line 236
    .line 237
    if-ne v10, v11, :cond_9

    .line 238
    .line 239
    iget-object v10, v9, Li4/q;->h:Landroid/graphics/PorterDuff$Mode;

    .line 240
    .line 241
    iget-object v11, v9, Li4/q;->d:Landroid/graphics/PorterDuff$Mode;

    .line 242
    .line 243
    if-ne v10, v11, :cond_9

    .line 244
    .line 245
    iget-boolean v10, v9, Li4/q;->j:Z

    .line 246
    .line 247
    iget-boolean v11, v9, Li4/q;->e:Z

    .line 248
    .line 249
    if-ne v10, v11, :cond_9

    .line 250
    .line 251
    iget v10, v9, Li4/q;->i:I

    .line 252
    .line 253
    iget-object v9, v9, Li4/q;->b:Li4/p;

    .line 254
    .line 255
    invoke-virtual {v9}, Li4/p;->getRootAlpha()I

    .line 256
    .line 257
    .line 258
    move-result v9

    .line 259
    if-ne v10, v9, :cond_9

    .line 260
    .line 261
    goto :goto_1

    .line 262
    :cond_9
    iget-object v9, v0, Li4/s;->b:Li4/q;

    .line 263
    .line 264
    iget-object v10, v9, Li4/q;->f:Landroid/graphics/Bitmap;

    .line 265
    .line 266
    invoke-virtual {v10, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 267
    .line 268
    .line 269
    new-instance v15, Landroid/graphics/Canvas;

    .line 270
    .line 271
    iget-object v10, v9, Li4/q;->f:Landroid/graphics/Bitmap;

    .line 272
    .line 273
    invoke-direct {v15, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 274
    .line 275
    .line 276
    iget-object v12, v9, Li4/q;->b:Li4/p;

    .line 277
    .line 278
    sget-object v14, Li4/p;->p:Landroid/graphics/Matrix;

    .line 279
    .line 280
    iget-object v13, v12, Li4/p;->g:Li4/m;

    .line 281
    .line 282
    move/from16 v16, v5

    .line 283
    .line 284
    move/from16 v17, v6

    .line 285
    .line 286
    invoke-virtual/range {v12 .. v17}, Li4/p;->a(Li4/m;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V

    .line 287
    .line 288
    .line 289
    iget-object v5, v0, Li4/s;->b:Li4/q;

    .line 290
    .line 291
    iget-object v6, v5, Li4/q;->c:Landroid/content/res/ColorStateList;

    .line 292
    .line 293
    iput-object v6, v5, Li4/q;->g:Landroid/content/res/ColorStateList;

    .line 294
    .line 295
    iget-object v6, v5, Li4/q;->d:Landroid/graphics/PorterDuff$Mode;

    .line 296
    .line 297
    iput-object v6, v5, Li4/q;->h:Landroid/graphics/PorterDuff$Mode;

    .line 298
    .line 299
    iget-object v6, v5, Li4/q;->b:Li4/p;

    .line 300
    .line 301
    invoke-virtual {v6}, Li4/p;->getRootAlpha()I

    .line 302
    .line 303
    .line 304
    move-result v6

    .line 305
    iput v6, v5, Li4/q;->i:I

    .line 306
    .line 307
    iget-boolean v6, v5, Li4/q;->e:Z

    .line 308
    .line 309
    iput-boolean v6, v5, Li4/q;->j:Z

    .line 310
    .line 311
    iput-boolean v4, v5, Li4/q;->k:Z

    .line 312
    .line 313
    :goto_1
    iget-object v4, v0, Li4/s;->b:Li4/q;

    .line 314
    .line 315
    iget-object v5, v4, Li4/q;->b:Li4/p;

    .line 316
    .line 317
    invoke-virtual {v5}, Li4/p;->getRootAlpha()I

    .line 318
    .line 319
    .line 320
    move-result v5

    .line 321
    const/16 v6, 0xff

    .line 322
    .line 323
    const/4 v9, 0x0

    .line 324
    if-ge v5, v6, :cond_a

    .line 325
    .line 326
    goto :goto_2

    .line 327
    :cond_a
    if-nez v3, :cond_b

    .line 328
    .line 329
    move-object v3, v9

    .line 330
    goto :goto_3

    .line 331
    :cond_b
    :goto_2
    iget-object v5, v4, Li4/q;->l:Landroid/graphics/Paint;

    .line 332
    .line 333
    if-nez v5, :cond_c

    .line 334
    .line 335
    new-instance v5, Landroid/graphics/Paint;

    .line 336
    .line 337
    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 338
    .line 339
    .line 340
    iput-object v5, v4, Li4/q;->l:Landroid/graphics/Paint;

    .line 341
    .line 342
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 343
    .line 344
    .line 345
    :cond_c
    iget-object v5, v4, Li4/q;->l:Landroid/graphics/Paint;

    .line 346
    .line 347
    iget-object v6, v4, Li4/q;->b:Li4/p;

    .line 348
    .line 349
    invoke-virtual {v6}, Li4/p;->getRootAlpha()I

    .line 350
    .line 351
    .line 352
    move-result v6

    .line 353
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 354
    .line 355
    .line 356
    iget-object v5, v4, Li4/q;->l:Landroid/graphics/Paint;

    .line 357
    .line 358
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 359
    .line 360
    .line 361
    iget-object v3, v4, Li4/q;->l:Landroid/graphics/Paint;

    .line 362
    .line 363
    :goto_3
    iget-object v4, v4, Li4/q;->f:Landroid/graphics/Bitmap;

    .line 364
    .line 365
    invoke-virtual {v1, v4, v9, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 369
    .line 370
    .line 371
    :cond_d
    :goto_4
    return-void
.end method

.method public final getAlpha()I
    .locals 3

    .line 1
    iget-object v0, p0, Li4/j;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v2, 0x13

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, Lq0/a;->a(Landroid/graphics/drawable/Drawable;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0

    .line 18
    :cond_1
    iget-object v0, p0, Li4/s;->b:Li4/q;

    .line 19
    .line 20
    iget-object v0, v0, Li4/q;->b:Li4/p;

    .line 21
    .line 22
    invoke-virtual {v0}, Li4/p;->getRootAlpha()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    return v0
.end method

.method public final getChangingConfigurations()I
    .locals 2

    .line 1
    iget-object v0, p0, Li4/j;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Li4/s;->b:Li4/q;

    .line 15
    .line 16
    invoke-virtual {v1}, Li4/q;->getChangingConfigurations()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    or-int/2addr v0, v1

    .line 21
    return v0
.end method

.method public final getColorFilter()Landroid/graphics/ColorFilter;
    .locals 3

    .line 1
    iget-object v0, p0, Li4/j;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v2, 0x15

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, Lq0/b;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return-object v0

    .line 18
    :cond_1
    iget-object v0, p0, Li4/s;->d:Landroid/graphics/ColorFilter;

    .line 19
    .line 20
    return-object v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .line 1
    iget-object v0, p0, Li4/j;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v1, 0x18

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    new-instance v0, Li4/r;

    .line 12
    .line 13
    iget-object v1, p0, Li4/j;->a:Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Li4/r;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    iget-object v0, p0, Li4/s;->b:Li4/q;

    .line 24
    .line 25
    invoke-virtual {p0}, Li4/s;->getChangingConfigurations()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iput v1, v0, Li4/q;->a:I

    .line 30
    .line 31
    iget-object v0, p0, Li4/s;->b:Li4/q;

    .line 32
    .line 33
    return-object v0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Li4/j;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    iget-object v0, p0, Li4/s;->b:Li4/q;

    .line 11
    .line 12
    iget-object v0, v0, Li4/q;->b:Li4/p;

    .line 13
    .line 14
    iget v0, v0, Li4/p;->i:F

    .line 15
    .line 16
    float-to-int v0, v0

    .line 17
    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Li4/j;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    iget-object v0, p0, Li4/s;->b:Li4/q;

    .line 11
    .line 12
    iget-object v0, v0, Li4/q;->b:Li4/p;

    .line 13
    .line 14
    iget v0, v0, Li4/p;->h:F

    .line 15
    .line 16
    float-to-int v0, v0

    .line 17
    return v0
.end method

.method public final getOpacity()I
    .locals 1

    .line 1
    iget-object v0, p0, Li4/j;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, -0x3

    .line 11
    return v0
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li4/j;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Li4/s;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 4
    iget-object v5, v0, Li4/j;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    .line 5
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_0

    .line 6
    invoke-static {v5, v1, v2, v3, v4}, Lq0/b;->d(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v5, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    :goto_0
    return-void

    .line 8
    :cond_1
    iget-object v5, v0, Li4/s;->b:Li4/q;

    .line 9
    new-instance v6, Li4/p;

    invoke-direct {v6}, Li4/p;-><init>()V

    .line 10
    iput-object v6, v5, Li4/q;->b:Li4/p;

    .line 11
    sget-object v6, Li4/a;->a:[I

    invoke-static {v1, v4, v3, v6}, Lo0/b;->g(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 12
    iget-object v7, v0, Li4/s;->b:Li4/q;

    .line 13
    iget-object v8, v7, Li4/q;->b:Li4/p;

    .line 14
    const-string v9, "tintMode"

    invoke-static {v2, v9}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x6

    const/4 v11, -0x1

    if-nez v9, :cond_2

    const/4 v9, -0x1

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 16
    :goto_1
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v13, 0x3

    const/16 v14, 0x9

    const/4 v15, 0x5

    if-eq v9, v13, :cond_4

    if-eq v9, v15, :cond_5

    if-eq v9, v14, :cond_3

    packed-switch v9, :pswitch_data_0

    goto :goto_2

    .line 17
    :pswitch_0
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2

    .line 18
    :pswitch_1
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2

    .line 19
    :pswitch_2
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2

    .line 20
    :cond_3
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2

    .line 21
    :cond_4
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 22
    :cond_5
    :goto_2
    iput-object v12, v7, Li4/q;->d:Landroid/graphics/PorterDuff$Mode;

    .line 23
    const-string v9, "tint"

    invoke-static {v2, v9}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    const/4 v12, 0x1

    const/16 v16, 0x0

    const/4 v10, 0x2

    const/4 v14, 0x0

    if-eqz v9, :cond_6

    .line 24
    new-instance v9, Landroid/util/TypedValue;

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    .line 25
    invoke-virtual {v6, v12, v9}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 26
    iget v11, v9, Landroid/util/TypedValue;->type:I

    if-eq v11, v10, :cond_8

    const/16 v10, 0x1c

    if-lt v11, v10, :cond_7

    const/16 v10, 0x1f

    if-gt v11, v10, :cond_7

    .line 27
    iget v9, v9, Landroid/util/TypedValue;->data:I

    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v16

    :cond_6
    :goto_3
    move-object/from16 v9, v16

    goto :goto_4

    .line 28
    :cond_7
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 29
    invoke-virtual {v6, v12, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 30
    sget-object v11, Lo0/c;->a:Ljava/lang/ThreadLocal;

    .line 31
    :try_start_0
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    .line 32
    invoke-static {v9, v10, v4}, Lo0/c;->a(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    nop

    goto :goto_3

    .line 33
    :cond_8
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to resolve attribute at index 1: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_4
    if-eqz v9, :cond_9

    .line 34
    iput-object v9, v7, Li4/q;->c:Landroid/content/res/ColorStateList;

    .line 35
    :cond_9
    iget-boolean v9, v7, Li4/q;->e:Z

    .line 36
    const-string v10, "autoMirrored"

    invoke-static {v2, v10}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a

    goto :goto_5

    .line 37
    :cond_a
    invoke-virtual {v6, v15, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 38
    :goto_5
    iput-boolean v9, v7, Li4/q;->e:Z

    .line 39
    iget v7, v8, Li4/p;->j:F

    .line 40
    const-string v9, "viewportWidth"

    invoke-static {v2, v9}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x7

    if-nez v9, :cond_b

    goto :goto_6

    .line 41
    :cond_b
    invoke-virtual {v6, v10, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 42
    :goto_6
    iput v7, v8, Li4/p;->j:F

    .line 43
    iget v7, v8, Li4/p;->k:F

    .line 44
    const-string v9, "viewportHeight"

    invoke-static {v2, v9}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    const/16 v11, 0x8

    if-nez v9, :cond_c

    goto :goto_7

    .line 45
    :cond_c
    invoke-virtual {v6, v11, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 46
    :goto_7
    iput v7, v8, Li4/p;->k:F

    .line 47
    iget v9, v8, Li4/p;->j:F

    const/16 v16, 0x0

    cmpg-float v9, v9, v16

    if-lez v9, :cond_3a

    cmpg-float v7, v7, v16

    if-lez v7, :cond_39

    .line 48
    iget v7, v8, Li4/p;->h:F

    invoke-virtual {v6, v13, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, v8, Li4/p;->h:F

    .line 49
    iget v7, v8, Li4/p;->i:F

    const/4 v9, 0x2

    invoke-virtual {v6, v9, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, v8, Li4/p;->i:F

    .line 50
    iget v9, v8, Li4/p;->h:F

    cmpg-float v9, v9, v16

    if-lez v9, :cond_38

    cmpg-float v7, v7, v16

    if-lez v7, :cond_37

    .line 51
    invoke-virtual {v8}, Li4/p;->getAlpha()F

    move-result v7

    .line 52
    const-string v9, "alpha"

    invoke-static {v2, v9}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    const/4 v15, 0x4

    if-nez v9, :cond_d

    goto :goto_8

    .line 53
    :cond_d
    invoke-virtual {v6, v15, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 54
    :goto_8
    invoke-virtual {v8, v7}, Li4/p;->setAlpha(F)V

    .line 55
    invoke-virtual {v6, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 56
    iput-object v7, v8, Li4/p;->m:Ljava/lang/String;

    .line 57
    iget-object v9, v8, Li4/p;->o:La0/e;

    invoke-virtual {v9, v7, v8}, La0/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_e
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    invoke-virtual/range {p0 .. p0}, Li4/s;->getChangingConfigurations()I

    move-result v6

    iput v6, v5, Li4/q;->a:I

    .line 60
    iput-boolean v12, v5, Li4/q;->k:Z

    .line 61
    iget-object v6, v0, Li4/s;->b:Li4/q;

    .line 62
    iget-object v7, v6, Li4/q;->b:Li4/p;

    .line 63
    new-instance v8, Ljava/util/ArrayDeque;

    invoke-direct {v8}, Ljava/util/ArrayDeque;-><init>()V

    .line 64
    iget-object v9, v7, Li4/p;->g:Li4/m;

    invoke-virtual {v8, v9}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 65
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    .line 66
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v17

    add-int/lit8 v10, v17, 0x1

    const/16 v17, 0x1

    :goto_9
    if-eq v9, v12, :cond_35

    .line 67
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    if-ge v15, v10, :cond_f

    if-eq v9, v13, :cond_35

    .line 68
    :cond_f
    const-string v15, "group"

    const/4 v13, 0x2

    if-ne v9, v13, :cond_33

    .line 69
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 70
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Li4/m;

    .line 71
    const-string v11, "path"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iget-object v12, v7, Li4/p;->o:La0/e;

    const-string v14, "fillType"

    move-object/from16 v18, v7

    const-string v7, "pathData"

    if-eqz v11, :cond_24

    .line 72
    new-instance v9, Li4/l;

    invoke-direct {v9}, Li4/l;-><init>()V

    .line 73
    sget-object v11, Li4/a;->c:[I

    invoke-static {v1, v4, v3, v11}, Lo0/b;->g(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 74
    invoke-static {v2, v7}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_10

    move/from16 v19, v10

    goto/16 :goto_16

    :cond_10
    const/4 v7, 0x0

    .line 75
    invoke-virtual {v11, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_11

    .line 76
    iput-object v15, v9, Li4/o;->b:Ljava/lang/String;

    :cond_11
    const/4 v7, 0x2

    .line 77
    invoke-virtual {v11, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_12

    .line 78
    invoke-static {v15}, Lif/a;->t(Ljava/lang/String;)[Lp0/f;

    move-result-object v7

    iput-object v7, v9, Li4/o;->a:[Lp0/f;

    .line 79
    :cond_12
    const-string v7, "fillColor"

    const/4 v15, 0x1

    invoke-static {v11, v2, v4, v7, v15}, Lo0/b;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Landroidx/room/s;

    move-result-object v7

    iput-object v7, v9, Li4/l;->f:Landroidx/room/s;

    .line 80
    iget v7, v9, Li4/l;->h:F

    .line 81
    const-string v15, "fillAlpha"

    invoke-static {v2, v15}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_13

    goto :goto_a

    :cond_13
    const/16 v15, 0xc

    .line 82
    invoke-virtual {v11, v15, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 83
    :goto_a
    iput v7, v9, Li4/l;->h:F

    .line 84
    const-string v7, "strokeLineCap"

    invoke-static {v2, v7}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_14

    const/4 v7, -0x1

    goto :goto_b

    :cond_14
    const/4 v7, -0x1

    const/16 v15, 0x8

    .line 85
    invoke-virtual {v11, v15, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v7, v17

    .line 86
    :goto_b
    iget-object v15, v9, Li4/l;->l:Landroid/graphics/Paint$Cap;

    if-eqz v7, :cond_17

    move/from16 v19, v10

    const/4 v10, 0x1

    if-eq v7, v10, :cond_16

    const/4 v10, 0x2

    if-eq v7, v10, :cond_15

    goto :goto_c

    .line 87
    :cond_15
    sget-object v15, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_c

    .line 88
    :cond_16
    sget-object v15, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_c

    :cond_17
    move/from16 v19, v10

    .line 89
    sget-object v15, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 90
    :goto_c
    iput-object v15, v9, Li4/l;->l:Landroid/graphics/Paint$Cap;

    .line 91
    const-string v7, "strokeLineJoin"

    invoke-static {v2, v7}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_18

    const/4 v10, -0x1

    const/4 v15, -0x1

    goto :goto_d

    :cond_18
    const/16 v7, 0x9

    const/4 v10, -0x1

    .line 92
    invoke-virtual {v11, v7, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 93
    :goto_d
    iget-object v7, v9, Li4/l;->m:Landroid/graphics/Paint$Join;

    if-eqz v15, :cond_1b

    const/4 v10, 0x1

    if-eq v15, v10, :cond_1a

    const/4 v10, 0x2

    if-eq v15, v10, :cond_19

    goto :goto_e

    .line 94
    :cond_19
    sget-object v7, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_e

    .line 95
    :cond_1a
    sget-object v7, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_e

    .line 96
    :cond_1b
    sget-object v7, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    .line 97
    :goto_e
    iput-object v7, v9, Li4/l;->m:Landroid/graphics/Paint$Join;

    .line 98
    iget v7, v9, Li4/l;->n:F

    .line 99
    const-string v10, "strokeMiterLimit"

    invoke-static {v2, v10}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1c

    goto :goto_f

    :cond_1c
    const/16 v10, 0xa

    .line 100
    invoke-virtual {v11, v10, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 101
    :goto_f
    iput v7, v9, Li4/l;->n:F

    .line 102
    const-string v7, "strokeColor"

    const/4 v10, 0x3

    invoke-static {v11, v2, v4, v7, v10}, Lo0/b;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Landroidx/room/s;

    move-result-object v7

    iput-object v7, v9, Li4/l;->d:Landroidx/room/s;

    .line 103
    iget v7, v9, Li4/l;->g:F

    .line 104
    const-string v10, "strokeAlpha"

    invoke-static {v2, v10}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1d

    goto :goto_10

    :cond_1d
    const/16 v10, 0xb

    .line 105
    invoke-virtual {v11, v10, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 106
    :goto_10
    iput v7, v9, Li4/l;->g:F

    .line 107
    iget v7, v9, Li4/l;->e:F

    .line 108
    const-string v10, "strokeWidth"

    invoke-static {v2, v10}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1e

    goto :goto_11

    :cond_1e
    const/4 v10, 0x4

    .line 109
    invoke-virtual {v11, v10, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 110
    :goto_11
    iput v7, v9, Li4/l;->e:F

    .line 111
    iget v7, v9, Li4/l;->j:F

    .line 112
    const-string v10, "trimPathEnd"

    invoke-static {v2, v10}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1f

    goto :goto_12

    :cond_1f
    const/4 v10, 0x6

    .line 113
    invoke-virtual {v11, v10, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 114
    :goto_12
    iput v7, v9, Li4/l;->j:F

    .line 115
    iget v7, v9, Li4/l;->k:F

    .line 116
    const-string v10, "trimPathOffset"

    invoke-static {v2, v10}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_20

    goto :goto_13

    :cond_20
    const/4 v10, 0x7

    .line 117
    invoke-virtual {v11, v10, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 118
    :goto_13
    iput v7, v9, Li4/l;->k:F

    .line 119
    iget v7, v9, Li4/l;->i:F

    .line 120
    const-string v10, "trimPathStart"

    invoke-static {v2, v10}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_21

    goto :goto_14

    :cond_21
    const/4 v10, 0x5

    .line 121
    invoke-virtual {v11, v10, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 122
    :goto_14
    iput v7, v9, Li4/l;->i:F

    .line 123
    iget v7, v9, Li4/o;->c:I

    .line 124
    invoke-static {v2, v14}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_22

    goto :goto_15

    :cond_22
    const/16 v10, 0xd

    .line 125
    invoke-virtual {v11, v10, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 126
    :goto_15
    iput v7, v9, Li4/o;->c:I

    .line 127
    :goto_16
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 128
    iget-object v7, v13, Li4/m;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {v9}, Li4/o;->getPathName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_23

    .line 130
    invoke-virtual {v9}, Li4/o;->getPathName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7, v9}, La0/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_23
    iget v7, v6, Li4/q;->a:I

    iput v7, v6, Li4/q;->a:I

    const/4 v10, 0x0

    const/4 v14, 0x5

    const/4 v15, 0x1

    const/16 v17, 0x0

    goto/16 :goto_1e

    :cond_24
    move/from16 v19, v10

    const/16 v11, 0x8

    .line 132
    const-string v10, "clip-path"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2b

    .line 133
    new-instance v9, Li4/k;

    invoke-direct {v9}, Li4/k;-><init>()V

    .line 134
    invoke-static {v2, v7}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_25

    goto :goto_18

    .line 135
    :cond_25
    sget-object v7, Li4/a;->d:[I

    invoke-static {v1, v4, v3, v7}, Lo0/b;->g(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    const/4 v10, 0x0

    .line 136
    invoke-virtual {v7, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_26

    .line 137
    iput-object v15, v9, Li4/o;->b:Ljava/lang/String;

    :cond_26
    const/4 v10, 0x1

    .line 138
    invoke-virtual {v7, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_27

    .line 139
    invoke-static {v15}, Lif/a;->t(Ljava/lang/String;)[Lp0/f;

    move-result-object v10

    iput-object v10, v9, Li4/o;->a:[Lp0/f;

    .line 140
    :cond_27
    invoke-static {v2, v14}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_28

    const/4 v15, 0x0

    goto :goto_17

    :cond_28
    const/4 v10, 0x2

    const/4 v14, 0x0

    .line 141
    invoke-virtual {v7, v10, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 142
    :goto_17
    iput v15, v9, Li4/o;->c:I

    .line 143
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 144
    :goto_18
    iget-object v7, v13, Li4/m;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-virtual {v9}, Li4/o;->getPathName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_29

    .line 146
    invoke-virtual {v9}, Li4/o;->getPathName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7, v9}, La0/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_29
    iget v7, v6, Li4/q;->a:I

    iput v7, v6, Li4/q;->a:I

    :cond_2a
    const/4 v10, 0x0

    const/4 v14, 0x5

    const/4 v15, 0x1

    goto/16 :goto_1e

    .line 148
    :cond_2b
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 149
    new-instance v7, Li4/m;

    invoke-direct {v7}, Li4/m;-><init>()V

    .line 150
    sget-object v9, Li4/a;->b:[I

    invoke-static {v1, v4, v3, v9}, Lo0/b;->g(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 151
    iget v10, v7, Li4/m;->c:F

    .line 152
    const-string v14, "rotation"

    invoke-static {v2, v14}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2c

    const/4 v14, 0x5

    goto :goto_19

    :cond_2c
    const/4 v14, 0x5

    .line 153
    invoke-virtual {v9, v14, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    .line 154
    :goto_19
    iput v10, v7, Li4/m;->c:F

    .line 155
    iget v10, v7, Li4/m;->d:F

    const/4 v15, 0x1

    invoke-virtual {v9, v15, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    iput v10, v7, Li4/m;->d:F

    .line 156
    iget v10, v7, Li4/m;->e:F

    const/4 v11, 0x2

    invoke-virtual {v9, v11, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    iput v10, v7, Li4/m;->e:F

    .line 157
    iget v10, v7, Li4/m;->f:F

    .line 158
    const-string v11, "scaleX"

    invoke-static {v2, v11}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2d

    goto :goto_1a

    :cond_2d
    const/4 v11, 0x3

    .line 159
    invoke-virtual {v9, v11, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    .line 160
    :goto_1a
    iput v10, v7, Li4/m;->f:F

    .line 161
    iget v10, v7, Li4/m;->g:F

    .line 162
    const-string v11, "scaleY"

    invoke-static {v2, v11}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2e

    const/4 v11, 0x4

    goto :goto_1b

    :cond_2e
    const/4 v11, 0x4

    .line 163
    invoke-virtual {v9, v11, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    .line 164
    :goto_1b
    iput v10, v7, Li4/m;->g:F

    .line 165
    iget v10, v7, Li4/m;->h:F

    .line 166
    const-string v11, "translateX"

    invoke-static {v2, v11}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2f

    const/4 v11, 0x6

    goto :goto_1c

    :cond_2f
    const/4 v11, 0x6

    .line 167
    invoke-virtual {v9, v11, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    .line 168
    :goto_1c
    iput v10, v7, Li4/m;->h:F

    .line 169
    iget v10, v7, Li4/m;->i:F

    .line 170
    const-string v11, "translateY"

    invoke-static {v2, v11}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_30

    const/4 v11, 0x7

    goto :goto_1d

    :cond_30
    const/4 v11, 0x7

    .line 171
    invoke-virtual {v9, v11, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    .line 172
    :goto_1d
    iput v10, v7, Li4/m;->i:F

    const/4 v10, 0x0

    .line 173
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_31

    .line 174
    iput-object v11, v7, Li4/m;->k:Ljava/lang/String;

    .line 175
    :cond_31
    invoke-virtual {v7}, Li4/m;->c()V

    .line 176
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 177
    iget-object v9, v13, Li4/m;->b:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-virtual {v8, v7}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 179
    invoke-virtual {v7}, Li4/m;->getGroupName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_32

    .line 180
    invoke-virtual {v7}, Li4/m;->getGroupName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9, v7}, La0/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_32
    iget v7, v6, Li4/q;->a:I

    iput v7, v6, Li4/q;->a:I

    :goto_1e
    const/4 v7, 0x3

    const/4 v11, 0x1

    goto :goto_1f

    :cond_33
    move-object/from16 v18, v7

    move/from16 v19, v10

    const/4 v7, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v14, 0x5

    if-ne v9, v7, :cond_34

    .line 182
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 183
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_34

    .line 184
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 185
    :cond_34
    :goto_1f
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move-object/from16 v7, v18

    move/from16 v10, v19

    const/16 v11, 0x8

    const/4 v12, 0x1

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x4

    goto/16 :goto_9

    :cond_35
    if-nez v17, :cond_36

    .line 186
    iget-object v1, v5, Li4/q;->c:Landroid/content/res/ColorStateList;

    iget-object v2, v5, Li4/q;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Li4/s;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, v0, Li4/s;->c:Landroid/graphics/PorterDuffColorFilter;

    return-void

    .line 187
    :cond_36
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "no path defined"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 188
    :cond_37
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires height > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    :cond_38
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires width > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 190
    :cond_39
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 191
    :cond_3a
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    goto :goto_21

    :goto_20
    throw v1

    :goto_21
    goto :goto_20

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invalidateSelf()V
    .locals 1

    .line 1
    iget-object v0, p0, Li4/j;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final isAutoMirrored()Z
    .locals 3

    .line 1
    iget-object v0, p0, Li4/j;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v2, 0x13

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, Lq0/a;->d(Landroid/graphics/drawable/Drawable;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0

    .line 18
    :cond_1
    iget-object v0, p0, Li4/s;->b:Li4/q;

    .line 19
    .line 20
    iget-boolean v0, v0, Li4/q;->e:Z

    .line 21
    .line 22
    return v0
.end method

.method public final isStateful()Z
    .locals 2

    .line 1
    iget-object v0, p0, Li4/j;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_3

    .line 15
    .line 16
    iget-object v0, p0, Li4/s;->b:Li4/q;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-object v0, v0, Li4/q;->b:Li4/p;

    .line 21
    .line 22
    iget-object v1, v0, Li4/p;->n:Ljava/lang/Boolean;

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    iget-object v1, v0, Li4/p;->g:Li4/m;

    .line 27
    .line 28
    invoke-virtual {v1}, Li4/m;->a()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, v0, Li4/p;->n:Ljava/lang/Boolean;

    .line 37
    .line 38
    :cond_1
    iget-object v0, v0, Li4/p;->n:Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_3

    .line 45
    .line 46
    iget-object v0, p0, Li4/s;->b:Li4/q;

    .line 47
    .line 48
    iget-object v0, v0, Li4/q;->c:Landroid/content/res/ColorStateList;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const/4 v0, 0x0

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 62
    :goto_1
    return v0
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Li4/j;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    iget-boolean v0, p0, Li4/s;->e:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-ne v0, p0, :cond_1

    .line 18
    .line 19
    new-instance v0, Li4/q;

    .line 20
    .line 21
    iget-object v1, p0, Li4/s;->b:Li4/q;

    .line 22
    .line 23
    invoke-direct {v0, v1}, Li4/q;-><init>(Li4/q;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Li4/s;->b:Li4/q;

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Li4/s;->e:Z

    .line 30
    .line 31
    :cond_1
    return-object p0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li4/j;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final onStateChange([I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Li4/j;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    iget-object v0, p0, Li4/s;->b:Li4/q;

    .line 11
    .line 12
    iget-object v1, v0, Li4/q;->c:Landroid/content/res/ColorStateList;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v3, v0, Li4/q;->d:Landroid/graphics/PorterDuff$Mode;

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, v1, v3}, Li4/s;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iput-object v1, p0, Li4/s;->c:Landroid/graphics/PorterDuffColorFilter;

    .line 26
    .line 27
    invoke-virtual {p0}, Li4/s;->invalidateSelf()V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v1, 0x0

    .line 33
    :goto_0
    iget-object v3, v0, Li4/q;->b:Li4/p;

    .line 34
    .line 35
    iget-object v4, v3, Li4/p;->n:Ljava/lang/Boolean;

    .line 36
    .line 37
    if-nez v4, :cond_2

    .line 38
    .line 39
    iget-object v4, v3, Li4/p;->g:Li4/m;

    .line 40
    .line 41
    invoke-virtual {v4}, Li4/m;->a()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    iput-object v4, v3, Li4/p;->n:Ljava/lang/Boolean;

    .line 50
    .line 51
    :cond_2
    iget-object v3, v3, Li4/p;->n:Ljava/lang/Boolean;

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_3

    .line 58
    .line 59
    iget-object v3, v0, Li4/q;->b:Li4/p;

    .line 60
    .line 61
    iget-object v3, v3, Li4/p;->g:Li4/m;

    .line 62
    .line 63
    invoke-virtual {v3, p1}, Li4/m;->b([I)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    iget-boolean v3, v0, Li4/q;->k:Z

    .line 68
    .line 69
    or-int/2addr v3, p1

    .line 70
    iput-boolean v3, v0, Li4/q;->k:Z

    .line 71
    .line 72
    if-eqz p1, :cond_3

    .line 73
    .line 74
    invoke-virtual {p0}, Li4/s;->invalidateSelf()V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    move v2, v1

    .line 79
    :goto_1
    return v2
.end method

.method public final scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Li4/j;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Li4/j;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Li4/s;->b:Li4/q;

    .line 10
    .line 11
    iget-object v0, v0, Li4/q;->b:Li4/p;

    .line 12
    .line 13
    invoke-virtual {v0}, Li4/p;->getRootAlpha()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eq v0, p1, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Li4/s;->b:Li4/q;

    .line 20
    .line 21
    iget-object v0, v0, Li4/q;->b:Li4/p;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Li4/p;->setRootAlpha(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Li4/s;->invalidateSelf()V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public final setAutoMirrored(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Li4/j;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/bumptech/glide/c;->a0(Landroid/graphics/drawable/Drawable;Z)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Li4/s;->b:Li4/q;

    .line 10
    .line 11
    iput-boolean p1, v0, Li4/q;->e:Z

    .line 12
    .line 13
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li4/j;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iput-object p1, p0, Li4/s;->d:Landroid/graphics/ColorFilter;

    .line 10
    .line 11
    invoke-virtual {p0}, Li4/s;->invalidateSelf()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setTint(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Li4/j;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/bumptech/glide/c;->e0(Landroid/graphics/drawable/Drawable;I)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Li4/s;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li4/j;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/bumptech/glide/c;->f0(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Li4/s;->b:Li4/q;

    .line 10
    .line 11
    iget-object v1, v0, Li4/q;->c:Landroid/content/res/ColorStateList;

    .line 12
    .line 13
    if-eq v1, p1, :cond_1

    .line 14
    .line 15
    iput-object p1, v0, Li4/q;->c:Landroid/content/res/ColorStateList;

    .line 16
    .line 17
    iget-object v0, v0, Li4/q;->d:Landroid/graphics/PorterDuff$Mode;

    .line 18
    .line 19
    invoke-virtual {p0, p1, v0}, Li4/s;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Li4/s;->c:Landroid/graphics/PorterDuffColorFilter;

    .line 24
    .line 25
    invoke-virtual {p0}, Li4/s;->invalidateSelf()V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li4/j;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/bumptech/glide/c;->g0(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Li4/s;->b:Li4/q;

    .line 10
    .line 11
    iget-object v1, v0, Li4/q;->d:Landroid/graphics/PorterDuff$Mode;

    .line 12
    .line 13
    if-eq v1, p1, :cond_1

    .line 14
    .line 15
    iput-object p1, v0, Li4/q;->d:Landroid/graphics/PorterDuff$Mode;

    .line 16
    .line 17
    iget-object v0, v0, Li4/q;->c:Landroid/content/res/ColorStateList;

    .line 18
    .line 19
    invoke-virtual {p0, v0, p1}, Li4/s;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Li4/s;->c:Landroid/graphics/PorterDuffColorFilter;

    .line 24
    .line 25
    invoke-virtual {p0}, Li4/s;->invalidateSelf()V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public final setVisible(ZZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Li4/j;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li4/j;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
