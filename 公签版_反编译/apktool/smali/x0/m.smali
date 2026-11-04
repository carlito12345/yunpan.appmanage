.class public final Lx0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx0/l;


# static fields
.field public static final x:I

.field public static final y:I


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Lcom/yunpan/appmanage/carsdk/u;

.field public final f:Landroidx/recyclerview/widget/q0;

.field public final g:Landroid/view/GestureDetector$OnDoubleTapListener;

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Landroid/view/MotionEvent;

.field public n:Landroid/view/MotionEvent;

.field public p:Z

.field public q:F

.field public r:F

.field public s:F

.field public t:F

.field public final v:Z

.field public w:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput v0, Lx0/m;->x:I

    .line 6
    .line 7
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sput v0, Lx0/m;->y:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/q0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/yunpan/appmanage/carsdk/u;

    .line 5
    .line 6
    const/16 v1, 0x19

    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Lcom/yunpan/appmanage/carsdk/u;-><init>(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lx0/m;->e:Lcom/yunpan/appmanage/carsdk/u;

    .line 12
    .line 13
    iput-object p2, p0, Lx0/m;->f:Landroidx/recyclerview/widget/q0;

    .line 14
    .line 15
    instance-of v0, p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iput-object p2, p0, Lx0/m;->g:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 20
    .line 21
    :cond_0
    if-eqz p1, :cond_2

    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    const/4 p2, 0x1

    .line 26
    iput-boolean p2, p0, Lx0/m;->v:Z

    .line 27
    .line 28
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    iput v1, p0, Lx0/m;->c:I

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    iput p1, p0, Lx0/m;->d:I

    .line 51
    .line 52
    mul-int p2, p2, p2

    .line 53
    .line 54
    iput p2, p0, Lx0/m;->a:I

    .line 55
    .line 56
    mul-int v0, v0, v0

    .line 57
    .line 58
    iput v0, p0, Lx0/m;->b:I

    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 62
    .line 63
    const-string p2, "OnGestureListener must not be null"

    .line 64
    .line 65
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p1

    .line 69
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 70
    .line 71
    const-string p2, "Context must not be null"

    .line 72
    .line 73
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1
.end method


# virtual methods
.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget-object v3, v0, Lx0/m;->w:Landroid/view/VelocityTracker;

    .line 10
    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iput-object v3, v0, Lx0/m;->w:Landroid/view/VelocityTracker;

    .line 18
    .line 19
    :cond_0
    iget-object v3, v0, Lx0/m;->w:Landroid/view/VelocityTracker;

    .line 20
    .line 21
    invoke-virtual {v3, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 22
    .line 23
    .line 24
    and-int/lit16 v2, v2, 0xff

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    const/4 v4, 0x6

    .line 28
    const/4 v5, 0x0

    .line 29
    if-ne v2, v4, :cond_1

    .line 30
    .line 31
    const/4 v6, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v6, 0x0

    .line 34
    :goto_0
    if-eqz v6, :cond_2

    .line 35
    .line 36
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const/4 v7, -0x1

    .line 42
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    const/4 v9, 0x0

    .line 47
    const/4 v10, 0x0

    .line 48
    const/4 v11, 0x0

    .line 49
    const/4 v12, 0x0

    .line 50
    :goto_2
    if-ge v10, v8, :cond_4

    .line 51
    .line 52
    if-ne v7, v10, :cond_3

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_3
    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getX(I)F

    .line 56
    .line 57
    .line 58
    move-result v13

    .line 59
    add-float/2addr v11, v13

    .line 60
    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getY(I)F

    .line 61
    .line 62
    .line 63
    move-result v13

    .line 64
    add-float/2addr v12, v13

    .line 65
    :goto_3
    add-int/lit8 v10, v10, 0x1

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_4
    if-eqz v6, :cond_5

    .line 69
    .line 70
    add-int/lit8 v6, v8, -0x1

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_5
    move v6, v8

    .line 74
    :goto_4
    int-to-float v6, v6

    .line 75
    div-float/2addr v11, v6

    .line 76
    div-float/2addr v12, v6

    .line 77
    iget-object v6, v0, Lx0/m;->f:Landroidx/recyclerview/widget/q0;

    .line 78
    .line 79
    const/4 v7, 0x2

    .line 80
    const/4 v10, 0x3

    .line 81
    iget-object v13, v0, Lx0/m;->e:Lcom/yunpan/appmanage/carsdk/u;

    .line 82
    .line 83
    if-eqz v2, :cond_1b

    .line 84
    .line 85
    const/4 v14, 0x0

    .line 86
    const/16 v15, 0x3e8

    .line 87
    .line 88
    if-eq v2, v3, :cond_12

    .line 89
    .line 90
    if-eq v2, v7, :cond_b

    .line 91
    .line 92
    if-eq v2, v10, :cond_a

    .line 93
    .line 94
    const/4 v6, 0x5

    .line 95
    if-eq v2, v6, :cond_9

    .line 96
    .line 97
    if-eq v2, v4, :cond_6

    .line 98
    .line 99
    goto/16 :goto_8

    .line 100
    .line 101
    :cond_6
    iput v11, v0, Lx0/m;->q:F

    .line 102
    .line 103
    iput v11, v0, Lx0/m;->s:F

    .line 104
    .line 105
    iput v12, v0, Lx0/m;->r:F

    .line 106
    .line 107
    iput v12, v0, Lx0/m;->t:F

    .line 108
    .line 109
    iget-object v2, v0, Lx0/m;->w:Landroid/view/VelocityTracker;

    .line 110
    .line 111
    iget v3, v0, Lx0/m;->d:I

    .line 112
    .line 113
    int-to-float v3, v3

    .line 114
    invoke-virtual {v2, v15, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 115
    .line 116
    .line 117
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    iget-object v4, v0, Lx0/m;->w:Landroid/view/VelocityTracker;

    .line 126
    .line 127
    invoke-virtual {v4, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    iget-object v6, v0, Lx0/m;->w:Landroid/view/VelocityTracker;

    .line 132
    .line 133
    invoke-virtual {v6, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    const/4 v6, 0x0

    .line 138
    :goto_5
    if-ge v6, v8, :cond_10

    .line 139
    .line 140
    if-ne v6, v2, :cond_7

    .line 141
    .line 142
    goto :goto_6

    .line 143
    :cond_7
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    iget-object v10, v0, Lx0/m;->w:Landroid/view/VelocityTracker;

    .line 148
    .line 149
    invoke-virtual {v10, v7}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 150
    .line 151
    .line 152
    move-result v10

    .line 153
    mul-float v10, v10, v4

    .line 154
    .line 155
    iget-object v11, v0, Lx0/m;->w:Landroid/view/VelocityTracker;

    .line 156
    .line 157
    invoke-virtual {v11, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 158
    .line 159
    .line 160
    move-result v7

    .line 161
    mul-float v7, v7, v3

    .line 162
    .line 163
    add-float/2addr v7, v10

    .line 164
    cmpg-float v7, v7, v9

    .line 165
    .line 166
    if-gez v7, :cond_8

    .line 167
    .line 168
    iget-object v1, v0, Lx0/m;->w:Landroid/view/VelocityTracker;

    .line 169
    .line 170
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 171
    .line 172
    .line 173
    goto/16 :goto_8

    .line 174
    .line 175
    :cond_8
    :goto_6
    add-int/lit8 v6, v6, 0x1

    .line 176
    .line 177
    goto :goto_5

    .line 178
    :cond_9
    iput v11, v0, Lx0/m;->q:F

    .line 179
    .line 180
    iput v11, v0, Lx0/m;->s:F

    .line 181
    .line 182
    iput v12, v0, Lx0/m;->r:F

    .line 183
    .line 184
    iput v12, v0, Lx0/m;->t:F

    .line 185
    .line 186
    invoke-virtual {v13, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v13, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v13, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 193
    .line 194
    .line 195
    iput-boolean v5, v0, Lx0/m;->p:Z

    .line 196
    .line 197
    iput-boolean v5, v0, Lx0/m;->k:Z

    .line 198
    .line 199
    iput-boolean v5, v0, Lx0/m;->l:Z

    .line 200
    .line 201
    iput-boolean v5, v0, Lx0/m;->i:Z

    .line 202
    .line 203
    iget-boolean v1, v0, Lx0/m;->j:Z

    .line 204
    .line 205
    if-eqz v1, :cond_10

    .line 206
    .line 207
    iput-boolean v5, v0, Lx0/m;->j:Z

    .line 208
    .line 209
    goto/16 :goto_8

    .line 210
    .line 211
    :cond_a
    invoke-virtual {v13, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v13, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v13, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 218
    .line 219
    .line 220
    iget-object v1, v0, Lx0/m;->w:Landroid/view/VelocityTracker;

    .line 221
    .line 222
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 223
    .line 224
    .line 225
    iput-object v14, v0, Lx0/m;->w:Landroid/view/VelocityTracker;

    .line 226
    .line 227
    iput-boolean v5, v0, Lx0/m;->p:Z

    .line 228
    .line 229
    iput-boolean v5, v0, Lx0/m;->h:Z

    .line 230
    .line 231
    iput-boolean v5, v0, Lx0/m;->k:Z

    .line 232
    .line 233
    iput-boolean v5, v0, Lx0/m;->l:Z

    .line 234
    .line 235
    iput-boolean v5, v0, Lx0/m;->i:Z

    .line 236
    .line 237
    iget-boolean v1, v0, Lx0/m;->j:Z

    .line 238
    .line 239
    if-eqz v1, :cond_10

    .line 240
    .line 241
    iput-boolean v5, v0, Lx0/m;->j:Z

    .line 242
    .line 243
    goto :goto_8

    .line 244
    :cond_b
    iget-boolean v2, v0, Lx0/m;->j:Z

    .line 245
    .line 246
    if-eqz v2, :cond_c

    .line 247
    .line 248
    goto :goto_8

    .line 249
    :cond_c
    iget v2, v0, Lx0/m;->q:F

    .line 250
    .line 251
    sub-float/2addr v2, v11

    .line 252
    iget v4, v0, Lx0/m;->r:F

    .line 253
    .line 254
    sub-float/2addr v4, v12

    .line 255
    iget-boolean v8, v0, Lx0/m;->p:Z

    .line 256
    .line 257
    if-eqz v8, :cond_d

    .line 258
    .line 259
    iget-object v2, v0, Lx0/m;->g:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 260
    .line 261
    invoke-interface {v2, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    .line 262
    .line 263
    .line 264
    move-result v3

    .line 265
    goto/16 :goto_10

    .line 266
    .line 267
    :cond_d
    iget-boolean v8, v0, Lx0/m;->k:Z

    .line 268
    .line 269
    if-eqz v8, :cond_f

    .line 270
    .line 271
    iget v8, v0, Lx0/m;->s:F

    .line 272
    .line 273
    sub-float v8, v11, v8

    .line 274
    .line 275
    float-to-int v8, v8

    .line 276
    iget v9, v0, Lx0/m;->t:F

    .line 277
    .line 278
    sub-float v9, v12, v9

    .line 279
    .line 280
    float-to-int v9, v9

    .line 281
    mul-int v8, v8, v8

    .line 282
    .line 283
    mul-int v9, v9, v9

    .line 284
    .line 285
    add-int/2addr v9, v8

    .line 286
    iget v8, v0, Lx0/m;->a:I

    .line 287
    .line 288
    if-le v9, v8, :cond_e

    .line 289
    .line 290
    iget-object v8, v0, Lx0/m;->m:Landroid/view/MotionEvent;

    .line 291
    .line 292
    invoke-virtual {v6, v8, v1, v2, v4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    iput v11, v0, Lx0/m;->q:F

    .line 297
    .line 298
    iput v12, v0, Lx0/m;->r:F

    .line 299
    .line 300
    iput-boolean v5, v0, Lx0/m;->k:Z

    .line 301
    .line 302
    invoke-virtual {v13, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v13, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v13, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 309
    .line 310
    .line 311
    move v3, v1

    .line 312
    goto :goto_7

    .line 313
    :cond_e
    const/4 v3, 0x0

    .line 314
    :goto_7
    iget v1, v0, Lx0/m;->a:I

    .line 315
    .line 316
    if-le v9, v1, :cond_24

    .line 317
    .line 318
    iput-boolean v5, v0, Lx0/m;->l:Z

    .line 319
    .line 320
    goto/16 :goto_10

    .line 321
    .line 322
    :cond_f
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 323
    .line 324
    .line 325
    move-result v3

    .line 326
    const/high16 v7, 0x3f800000    # 1.0f

    .line 327
    .line 328
    cmpl-float v3, v3, v7

    .line 329
    .line 330
    if-gez v3, :cond_11

    .line 331
    .line 332
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 333
    .line 334
    .line 335
    move-result v3

    .line 336
    cmpl-float v3, v3, v7

    .line 337
    .line 338
    if-ltz v3, :cond_10

    .line 339
    .line 340
    goto :goto_9

    .line 341
    :cond_10
    :goto_8
    const/4 v3, 0x0

    .line 342
    goto/16 :goto_10

    .line 343
    .line 344
    :cond_11
    :goto_9
    iget-object v3, v0, Lx0/m;->m:Landroid/view/MotionEvent;

    .line 345
    .line 346
    invoke-virtual {v6, v3, v1, v2, v4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 347
    .line 348
    .line 349
    move-result v3

    .line 350
    iput v11, v0, Lx0/m;->q:F

    .line 351
    .line 352
    iput v12, v0, Lx0/m;->r:F

    .line 353
    .line 354
    goto/16 :goto_10

    .line 355
    .line 356
    :cond_12
    iput-boolean v5, v0, Lx0/m;->h:Z

    .line 357
    .line 358
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    iget-boolean v4, v0, Lx0/m;->p:Z

    .line 363
    .line 364
    if-eqz v4, :cond_13

    .line 365
    .line 366
    iget-object v4, v0, Lx0/m;->g:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 367
    .line 368
    invoke-interface {v4, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    .line 369
    .line 370
    .line 371
    move-result v1

    .line 372
    goto :goto_c

    .line 373
    :cond_13
    iget-boolean v4, v0, Lx0/m;->j:Z

    .line 374
    .line 375
    if-eqz v4, :cond_14

    .line 376
    .line 377
    invoke-virtual {v13, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 378
    .line 379
    .line 380
    iput-boolean v5, v0, Lx0/m;->j:Z

    .line 381
    .line 382
    goto :goto_a

    .line 383
    :cond_14
    iget-boolean v4, v0, Lx0/m;->k:Z

    .line 384
    .line 385
    if-eqz v4, :cond_16

    .line 386
    .line 387
    invoke-virtual {v6, v1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    .line 388
    .line 389
    .line 390
    move-result v4

    .line 391
    iget-boolean v6, v0, Lx0/m;->i:Z

    .line 392
    .line 393
    if-eqz v6, :cond_15

    .line 394
    .line 395
    iget-object v6, v0, Lx0/m;->g:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 396
    .line 397
    if-eqz v6, :cond_15

    .line 398
    .line 399
    invoke-interface {v6, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    .line 400
    .line 401
    .line 402
    :cond_15
    move v1, v4

    .line 403
    goto :goto_c

    .line 404
    :cond_16
    iget-object v4, v0, Lx0/m;->w:Landroid/view/VelocityTracker;

    .line 405
    .line 406
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 407
    .line 408
    .line 409
    move-result v8

    .line 410
    iget v9, v0, Lx0/m;->d:I

    .line 411
    .line 412
    int-to-float v9, v9

    .line 413
    invoke-virtual {v4, v15, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v4, v8}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 417
    .line 418
    .line 419
    move-result v9

    .line 420
    invoke-virtual {v4, v8}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 421
    .line 422
    .line 423
    move-result v4

    .line 424
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 425
    .line 426
    .line 427
    move-result v8

    .line 428
    iget v10, v0, Lx0/m;->c:I

    .line 429
    .line 430
    int-to-float v10, v10

    .line 431
    cmpl-float v8, v8, v10

    .line 432
    .line 433
    if-gtz v8, :cond_18

    .line 434
    .line 435
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 436
    .line 437
    .line 438
    move-result v8

    .line 439
    iget v10, v0, Lx0/m;->c:I

    .line 440
    .line 441
    int-to-float v10, v10

    .line 442
    cmpl-float v8, v8, v10

    .line 443
    .line 444
    if-lez v8, :cond_17

    .line 445
    .line 446
    goto :goto_b

    .line 447
    :cond_17
    :goto_a
    const/4 v1, 0x0

    .line 448
    goto :goto_c

    .line 449
    :cond_18
    :goto_b
    iget-object v8, v0, Lx0/m;->m:Landroid/view/MotionEvent;

    .line 450
    .line 451
    invoke-virtual {v6, v8, v1, v4, v9}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 452
    .line 453
    .line 454
    move-result v1

    .line 455
    :goto_c
    iget-object v4, v0, Lx0/m;->n:Landroid/view/MotionEvent;

    .line 456
    .line 457
    if-eqz v4, :cond_19

    .line 458
    .line 459
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 460
    .line 461
    .line 462
    :cond_19
    iput-object v2, v0, Lx0/m;->n:Landroid/view/MotionEvent;

    .line 463
    .line 464
    iget-object v2, v0, Lx0/m;->w:Landroid/view/VelocityTracker;

    .line 465
    .line 466
    if-eqz v2, :cond_1a

    .line 467
    .line 468
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    .line 469
    .line 470
    .line 471
    iput-object v14, v0, Lx0/m;->w:Landroid/view/VelocityTracker;

    .line 472
    .line 473
    :cond_1a
    iput-boolean v5, v0, Lx0/m;->p:Z

    .line 474
    .line 475
    iput-boolean v5, v0, Lx0/m;->i:Z

    .line 476
    .line 477
    invoke-virtual {v13, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v13, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 481
    .line 482
    .line 483
    move v3, v1

    .line 484
    goto/16 :goto_10

    .line 485
    .line 486
    :cond_1b
    iget-object v2, v0, Lx0/m;->g:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 487
    .line 488
    if-eqz v2, :cond_21

    .line 489
    .line 490
    invoke-virtual {v13, v10}, Landroid/os/Handler;->hasMessages(I)Z

    .line 491
    .line 492
    .line 493
    move-result v2

    .line 494
    if-eqz v2, :cond_1c

    .line 495
    .line 496
    invoke-virtual {v13, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 497
    .line 498
    .line 499
    :cond_1c
    iget-object v4, v0, Lx0/m;->m:Landroid/view/MotionEvent;

    .line 500
    .line 501
    sget v8, Lx0/m;->y:I

    .line 502
    .line 503
    if-eqz v4, :cond_1f

    .line 504
    .line 505
    iget-object v9, v0, Lx0/m;->n:Landroid/view/MotionEvent;

    .line 506
    .line 507
    if-eqz v9, :cond_1f

    .line 508
    .line 509
    if-eqz v2, :cond_1f

    .line 510
    .line 511
    iget-boolean v2, v0, Lx0/m;->l:Z

    .line 512
    .line 513
    if-nez v2, :cond_1d

    .line 514
    .line 515
    goto :goto_d

    .line 516
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 517
    .line 518
    .line 519
    move-result-wide v14

    .line 520
    invoke-virtual {v9}, Landroid/view/MotionEvent;->getEventTime()J

    .line 521
    .line 522
    .line 523
    move-result-wide v16

    .line 524
    sub-long v14, v14, v16

    .line 525
    .line 526
    move-object v9, v6

    .line 527
    int-to-long v5, v8

    .line 528
    cmp-long v16, v14, v5

    .line 529
    .line 530
    if-lez v16, :cond_1e

    .line 531
    .line 532
    goto :goto_e

    .line 533
    :cond_1e
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    .line 534
    .line 535
    .line 536
    move-result v5

    .line 537
    float-to-int v5, v5

    .line 538
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 539
    .line 540
    .line 541
    move-result v6

    .line 542
    float-to-int v6, v6

    .line 543
    sub-int/2addr v5, v6

    .line 544
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    .line 545
    .line 546
    .line 547
    move-result v4

    .line 548
    float-to-int v4, v4

    .line 549
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 550
    .line 551
    .line 552
    move-result v6

    .line 553
    float-to-int v6, v6

    .line 554
    sub-int/2addr v4, v6

    .line 555
    mul-int v5, v5, v5

    .line 556
    .line 557
    mul-int v4, v4, v4

    .line 558
    .line 559
    add-int/2addr v4, v5

    .line 560
    iget v5, v0, Lx0/m;->b:I

    .line 561
    .line 562
    if-ge v4, v5, :cond_20

    .line 563
    .line 564
    iput-boolean v3, v0, Lx0/m;->p:Z

    .line 565
    .line 566
    iget-object v4, v0, Lx0/m;->g:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 567
    .line 568
    iget-object v5, v0, Lx0/m;->m:Landroid/view/MotionEvent;

    .line 569
    .line 570
    invoke-interface {v4, v5}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    .line 571
    .line 572
    .line 573
    iget-object v4, v0, Lx0/m;->g:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 574
    .line 575
    invoke-interface {v4, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    .line 576
    .line 577
    .line 578
    goto :goto_f

    .line 579
    :cond_1f
    :goto_d
    move-object v9, v6

    .line 580
    :cond_20
    :goto_e
    int-to-long v4, v8

    .line 581
    invoke-virtual {v13, v10, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 582
    .line 583
    .line 584
    goto :goto_f

    .line 585
    :cond_21
    move-object v9, v6

    .line 586
    :goto_f
    iput v11, v0, Lx0/m;->q:F

    .line 587
    .line 588
    iput v11, v0, Lx0/m;->s:F

    .line 589
    .line 590
    iput v12, v0, Lx0/m;->r:F

    .line 591
    .line 592
    iput v12, v0, Lx0/m;->t:F

    .line 593
    .line 594
    iget-object v4, v0, Lx0/m;->m:Landroid/view/MotionEvent;

    .line 595
    .line 596
    if-eqz v4, :cond_22

    .line 597
    .line 598
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 599
    .line 600
    .line 601
    :cond_22
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 602
    .line 603
    .line 604
    move-result-object v1

    .line 605
    iput-object v1, v0, Lx0/m;->m:Landroid/view/MotionEvent;

    .line 606
    .line 607
    iput-boolean v3, v0, Lx0/m;->k:Z

    .line 608
    .line 609
    iput-boolean v3, v0, Lx0/m;->l:Z

    .line 610
    .line 611
    iput-boolean v3, v0, Lx0/m;->h:Z

    .line 612
    .line 613
    const/4 v1, 0x0

    .line 614
    iput-boolean v1, v0, Lx0/m;->j:Z

    .line 615
    .line 616
    iput-boolean v1, v0, Lx0/m;->i:Z

    .line 617
    .line 618
    iget-boolean v1, v0, Lx0/m;->v:Z

    .line 619
    .line 620
    sget v2, Lx0/m;->x:I

    .line 621
    .line 622
    if-eqz v1, :cond_23

    .line 623
    .line 624
    invoke-virtual {v13, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 625
    .line 626
    .line 627
    iget-object v1, v0, Lx0/m;->m:Landroid/view/MotionEvent;

    .line 628
    .line 629
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 630
    .line 631
    .line 632
    move-result-wide v4

    .line 633
    int-to-long v10, v2

    .line 634
    add-long/2addr v4, v10

    .line 635
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 636
    .line 637
    .line 638
    move-result v1

    .line 639
    int-to-long v10, v1

    .line 640
    add-long/2addr v4, v10

    .line 641
    invoke-virtual {v13, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 642
    .line 643
    .line 644
    :cond_23
    iget-object v1, v0, Lx0/m;->m:Landroid/view/MotionEvent;

    .line 645
    .line 646
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 647
    .line 648
    .line 649
    move-result-wide v4

    .line 650
    int-to-long v1, v2

    .line 651
    add-long/2addr v4, v1

    .line 652
    invoke-virtual {v13, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 653
    .line 654
    .line 655
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 656
    .line 657
    .line 658
    :cond_24
    :goto_10
    return v3
.end method
