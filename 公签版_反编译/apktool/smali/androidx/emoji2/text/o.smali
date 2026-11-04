.class public final Landroidx/emoji2/text/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/emoji2/text/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Landroidx/emoji2/text/o;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lya/e;->b()Lya/e;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    :try_start_0
    iget-object v2, v1, Lya/e;->i:Landroid/widget/ImageView;

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    goto/16 :goto_3

    .line 23
    .line 24
    :cond_0
    iget-object v2, v1, Lya/e;->j:Landroid/view/WindowManager$LayoutParams;

    .line 25
    .line 26
    iget-object v3, v1, Lya/e;->b:Landroid/content/SharedPreferences;

    .line 27
    .line 28
    const-string v4, "floatButton_x"

    .line 29
    .line 30
    iget-object v5, v1, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 31
    .line 32
    iget-object v5, v5, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 33
    .line 34
    iget-object v5, v5, Ly3/a;->e:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v5, Landroid/graphics/Point;

    .line 37
    .line 38
    iget v5, v5, Landroid/graphics/Point;->x:I

    .line 39
    .line 40
    div-int/lit8 v5, v5, 0x2

    .line 41
    .line 42
    iget v6, v1, Lya/e;->y:I

    .line 43
    .line 44
    sub-int/2addr v5, v6

    .line 45
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    iget-object v4, v1, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 50
    .line 51
    iget-object v4, v4, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 52
    .line 53
    iget-object v5, v4, Ly3/a;->d:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v5, Lcom/yunpan/appmanage/bean/FloatWindowInsets;

    .line 56
    .line 57
    iget v5, v5, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->left:I

    .line 58
    .line 59
    sub-int/2addr v3, v5

    .line 60
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 61
    .line 62
    iget-object v2, v1, Lya/e;->j:Landroid/view/WindowManager$LayoutParams;

    .line 63
    .line 64
    iget-object v3, v1, Lya/e;->b:Landroid/content/SharedPreferences;

    .line 65
    .line 66
    const-string v5, "floatButton_y"

    .line 67
    .line 68
    iget-object v4, v4, Ly3/a;->e:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v4, Landroid/graphics/Point;

    .line 71
    .line 72
    iget v4, v4, Landroid/graphics/Point;->y:I

    .line 73
    .line 74
    div-int/lit8 v4, v4, 0x2

    .line 75
    .line 76
    iget v6, v1, Lya/e;->y:I

    .line 77
    .line 78
    sub-int/2addr v4, v6

    .line 79
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    iget-object v4, v1, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 84
    .line 85
    iget-object v4, v4, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 86
    .line 87
    iget-object v5, v4, Ly3/a;->d:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v5, Lcom/yunpan/appmanage/bean/FloatWindowInsets;

    .line 90
    .line 91
    iget v6, v5, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->top:I

    .line 92
    .line 93
    sub-int/2addr v3, v6

    .line 94
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 95
    .line 96
    iget-object v2, v4, Ly3/a;->e:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v2, Landroid/graphics/Point;

    .line 99
    .line 100
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 101
    .line 102
    iget v4, v1, Lya/e;->v:I

    .line 103
    .line 104
    sub-int/2addr v3, v4

    .line 105
    iget v5, v5, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->left:I

    .line 106
    .line 107
    sub-int/2addr v3, v5

    .line 108
    iget-object v7, v1, Lya/e;->j:Landroid/view/WindowManager$LayoutParams;

    .line 109
    .line 110
    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 111
    .line 112
    const/4 v9, 0x0

    .line 113
    if-le v8, v3, :cond_1

    .line 114
    .line 115
    iput v3, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    goto :goto_2

    .line 120
    :cond_1
    neg-int v3, v5

    .line 121
    if-ge v8, v3, :cond_2

    .line 122
    .line 123
    iput v9, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 124
    .line 125
    :cond_2
    :goto_0
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 126
    .line 127
    sub-int/2addr v2, v4

    .line 128
    sub-int/2addr v2, v6

    .line 129
    iget v3, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 130
    .line 131
    if-le v3, v2, :cond_3

    .line 132
    .line 133
    iput v2, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_3
    neg-int v2, v6

    .line 137
    if-ge v3, v2, :cond_4

    .line 138
    .line 139
    iput v9, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 140
    .line 141
    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    iget-object v0, v1, Lya/e;->g:Landroid/view/WindowManager;

    .line 145
    .line 146
    iget-object v2, v1, Lya/e;->i:Landroid/widget/ImageView;

    .line 147
    .line 148
    iget-object v3, v1, Lya/e;->j:Landroid/view/WindowManager$LayoutParams;

    .line 149
    .line 150
    invoke-interface {v0, v2, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    .line 152
    .line 153
    iget-boolean v0, v1, Lya/e;->z:Z

    .line 154
    .line 155
    if-nez v0, :cond_5

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_5
    iget-object v0, v1, Lya/e;->k:Landroid/view/WindowManager$LayoutParams;

    .line 159
    .line 160
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 161
    .line 162
    iget-object v3, v1, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 163
    .line 164
    iget-object v3, v3, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 165
    .line 166
    iget-object v4, v3, Ly3/a;->e:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast v4, Landroid/graphics/Point;

    .line 169
    .line 170
    iget v5, v4, Landroid/graphics/Point;->x:I

    .line 171
    .line 172
    if-eq v2, v5, :cond_6

    .line 173
    .line 174
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 175
    .line 176
    iget v2, v4, Landroid/graphics/Point;->y:I

    .line 177
    .line 178
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 179
    .line 180
    :cond_6
    iget-object v2, v3, Ly3/a;->d:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v2, Lcom/yunpan/appmanage/bean/FloatWindowInsets;

    .line 183
    .line 184
    iget v3, v2, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->left:I

    .line 185
    .line 186
    neg-int v3, v3

    .line 187
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 188
    .line 189
    iget v2, v2, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->top:I

    .line 190
    .line 191
    neg-int v2, v2

    .line 192
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 193
    .line 194
    iget-object v2, v1, Lya/e;->g:Landroid/view/WindowManager;

    .line 195
    .line 196
    iget-object v1, v1, Lya/e;->h:Landroid/view/View;

    .line 197
    .line 198
    invoke-interface {v2, v1, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .line 200
    .line 201
    goto :goto_3

    .line 202
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 203
    .line 204
    .line 205
    :goto_3
    invoke-static {}, Lya/h;->a()Lya/h;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    iget-object v1, v0, Lya/h;->c:Landroid/view/WindowManager;

    .line 210
    .line 211
    if-nez v1, :cond_7

    .line 212
    .line 213
    goto/16 :goto_4

    .line 214
    .line 215
    :cond_7
    iget-object v2, v0, Lya/h;->d:Landroid/view/View;

    .line 216
    .line 217
    if-eqz v2, :cond_8

    .line 218
    .line 219
    iget-object v3, v0, Lya/h;->e:Landroid/view/WindowManager$LayoutParams;

    .line 220
    .line 221
    iget-object v4, v0, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 222
    .line 223
    iget-object v4, v4, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 224
    .line 225
    iget-object v5, v4, Ly3/a;->d:Ljava/lang/Object;

    .line 226
    .line 227
    check-cast v5, Lcom/yunpan/appmanage/bean/FloatWindowInsets;

    .line 228
    .line 229
    iget v6, v5, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->left:I

    .line 230
    .line 231
    neg-int v6, v6

    .line 232
    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 233
    .line 234
    iget v6, v0, Lya/h;->q:I

    .line 235
    .line 236
    iget v5, v5, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->top:I

    .line 237
    .line 238
    sub-int v5, v6, v5

    .line 239
    .line 240
    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 241
    .line 242
    iget-object v4, v4, Ly3/a;->e:Ljava/lang/Object;

    .line 243
    .line 244
    check-cast v4, Landroid/graphics/Point;

    .line 245
    .line 246
    iget v4, v4, Landroid/graphics/Point;->y:I

    .line 247
    .line 248
    sub-int/2addr v4, v6

    .line 249
    iget v5, v0, Lya/h;->r:I

    .line 250
    .line 251
    sub-int/2addr v4, v5

    .line 252
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 253
    .line 254
    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    .line 256
    .line 257
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 258
    .line 259
    iget-object v2, v0, Lya/h;->e:Landroid/view/WindowManager$LayoutParams;

    .line 260
    .line 261
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 262
    .line 263
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    .line 265
    .line 266
    :cond_8
    iget-object v1, v0, Lya/h;->f:Landroid/view/View;

    .line 267
    .line 268
    if-eqz v1, :cond_9

    .line 269
    .line 270
    iget-object v2, v0, Lya/h;->g:Landroid/view/WindowManager$LayoutParams;

    .line 271
    .line 272
    iget-object v3, v0, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 273
    .line 274
    iget-object v3, v3, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 275
    .line 276
    iget-object v4, v3, Ly3/a;->d:Ljava/lang/Object;

    .line 277
    .line 278
    check-cast v4, Lcom/yunpan/appmanage/bean/FloatWindowInsets;

    .line 279
    .line 280
    iget v5, v4, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->right:I

    .line 281
    .line 282
    neg-int v5, v5

    .line 283
    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 284
    .line 285
    iget v5, v0, Lya/h;->s:I

    .line 286
    .line 287
    iget v4, v4, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->top:I

    .line 288
    .line 289
    sub-int v4, v5, v4

    .line 290
    .line 291
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 292
    .line 293
    iget-object v3, v3, Ly3/a;->e:Ljava/lang/Object;

    .line 294
    .line 295
    check-cast v3, Landroid/graphics/Point;

    .line 296
    .line 297
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 298
    .line 299
    sub-int/2addr v3, v5

    .line 300
    iget v4, v0, Lya/h;->t:I

    .line 301
    .line 302
    sub-int/2addr v3, v4

    .line 303
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 304
    .line 305
    iget-object v3, v0, Lya/h;->c:Landroid/view/WindowManager;

    .line 306
    .line 307
    invoke-interface {v3, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    .line 309
    .line 310
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 311
    .line 312
    iget-object v2, v0, Lya/h;->g:Landroid/view/WindowManager$LayoutParams;

    .line 313
    .line 314
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 315
    .line 316
    iget-object v2, v0, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 317
    .line 318
    iget-object v2, v2, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 319
    .line 320
    iget-object v2, v2, Ly3/a;->d:Ljava/lang/Object;

    .line 321
    .line 322
    check-cast v2, Lcom/yunpan/appmanage/bean/FloatWindowInsets;

    .line 323
    .line 324
    iget v2, v2, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->right:I

    .line 325
    .line 326
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    .line 328
    .line 329
    :cond_9
    iget-object v1, v0, Lya/h;->h:Landroid/view/View;

    .line 330
    .line 331
    if-eqz v1, :cond_a

    .line 332
    .line 333
    iget-object v2, v0, Lya/h;->i:Landroid/view/WindowManager$LayoutParams;

    .line 334
    .line 335
    iget v3, v0, Lya/h;->u:I

    .line 336
    .line 337
    iget-object v4, v0, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 338
    .line 339
    iget-object v4, v4, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 340
    .line 341
    iget-object v5, v4, Ly3/a;->d:Ljava/lang/Object;

    .line 342
    .line 343
    check-cast v5, Lcom/yunpan/appmanage/bean/FloatWindowInsets;

    .line 344
    .line 345
    iget v6, v5, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->left:I

    .line 346
    .line 347
    sub-int v6, v3, v6

    .line 348
    .line 349
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 350
    .line 351
    iget v5, v5, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->bottom:I

    .line 352
    .line 353
    neg-int v5, v5

    .line 354
    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 355
    .line 356
    iget-object v4, v4, Ly3/a;->e:Ljava/lang/Object;

    .line 357
    .line 358
    check-cast v4, Landroid/graphics/Point;

    .line 359
    .line 360
    iget v4, v4, Landroid/graphics/Point;->x:I

    .line 361
    .line 362
    sub-int/2addr v4, v3

    .line 363
    iget v3, v0, Lya/h;->v:I

    .line 364
    .line 365
    sub-int/2addr v4, v3

    .line 366
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 367
    .line 368
    iget-object v3, v0, Lya/h;->c:Landroid/view/WindowManager;

    .line 369
    .line 370
    invoke-interface {v3, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    .line 372
    .line 373
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 374
    .line 375
    iget-object v2, v0, Lya/h;->i:Landroid/view/WindowManager$LayoutParams;

    .line 376
    .line 377
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 378
    .line 379
    iget-object v0, v0, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 380
    .line 381
    iget-object v0, v0, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 382
    .line 383
    iget-object v0, v0, Ly3/a;->d:Ljava/lang/Object;

    .line 384
    .line 385
    check-cast v0, Lcom/yunpan/appmanage/bean/FloatWindowInsets;

    .line 386
    .line 387
    iget v0, v0, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->bottom:I

    .line 388
    .line 389
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 390
    .line 391
    .line 392
    :cond_a
    :goto_4
    return-void

    .line 393
    :pswitch_0
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    iget-object v0, v0, Lwa/s;->c:Lv8/a;

    .line 398
    .line 399
    if-eqz v0, :cond_b

    .line 400
    .line 401
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    iget-object v0, v0, Lwa/s;->c:Lv8/a;

    .line 406
    .line 407
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 408
    .line 409
    .line 410
    sget-object v1, Lv8/i;->a:Landroid/os/Handler;

    .line 411
    .line 412
    iget-object v2, v0, Lv8/a;->p:Ljava/lang/Runnable;

    .line 413
    .line 414
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 415
    .line 416
    .line 417
    const-wide/16 v3, 0x0

    .line 418
    .line 419
    invoke-virtual {v0, v2, v3, v4}, Lv8/a;->i(Ljava/lang/Runnable;J)V

    .line 420
    .line 421
    .line 422
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    const/4 v1, 0x0

    .line 427
    iput-object v1, v0, Lwa/s;->c:Lv8/a;

    .line 428
    .line 429
    :cond_b
    return-void

    .line 430
    :pswitch_1
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    const/16 v1, 0x271c

    .line 435
    .line 436
    invoke-virtual {v0, v1}, Lwa/s;->i(I)V

    .line 437
    .line 438
    .line 439
    return-void

    .line 440
    :pswitch_2
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    const/16 v1, 0x271b

    .line 445
    .line 446
    invoke-virtual {v0, v1}, Lwa/s;->i(I)V

    .line 447
    .line 448
    .line 449
    return-void

    .line 450
    :pswitch_3
    new-instance v0, Ljava/util/ArrayList;

    .line 451
    .line 452
    sget-object v1, Loc/q;->d:Lj$/util/concurrent/ConcurrentHashMap;

    .line 453
    .line 454
    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 466
    .line 467
    .line 468
    move-result v1

    .line 469
    if-eqz v1, :cond_d

    .line 470
    .line 471
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    check-cast v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 476
    .line 477
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 478
    .line 479
    .line 480
    move-result v2

    .line 481
    if-eqz v2, :cond_c

    .line 482
    .line 483
    sget-object v2, Loc/q;->d:Lj$/util/concurrent/ConcurrentHashMap;

    .line 484
    .line 485
    invoke-virtual {v2, v1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    goto :goto_5

    .line 489
    :cond_c
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->purge()V

    .line 490
    .line 491
    .line 492
    goto :goto_5

    .line 493
    :cond_d
    :pswitch_4
    return-void

    .line 494
    :pswitch_5
    :try_start_1
    const-string v0, "EmojiCompat.EmojiCompatInitializer.run"

    .line 495
    .line 496
    invoke-static {v0}, Lt0/o;->a(Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    sget-object v0, Landroidx/emoji2/text/l;->j:Landroidx/emoji2/text/l;

    .line 500
    .line 501
    if-eqz v0, :cond_e

    .line 502
    .line 503
    const/4 v0, 0x1

    .line 504
    goto :goto_6

    .line 505
    :cond_e
    const/4 v0, 0x0

    .line 506
    :goto_6
    if-eqz v0, :cond_f

    .line 507
    .line 508
    invoke-static {}, Landroidx/emoji2/text/l;->a()Landroidx/emoji2/text/l;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    invoke-virtual {v0}, Landroidx/emoji2/text/l;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 513
    .line 514
    .line 515
    goto :goto_7

    .line 516
    :catchall_0
    move-exception v0

    .line 517
    goto :goto_8

    .line 518
    :cond_f
    :goto_7
    invoke-static {}, Lt0/o;->b()V

    .line 519
    .line 520
    .line 521
    return-void

    .line 522
    :goto_8
    invoke-static {}, Lt0/o;->b()V

    .line 523
    .line 524
    .line 525
    goto :goto_a

    .line 526
    :goto_9
    throw v0

    .line 527
    :goto_a
    goto :goto_9

    .line 528
    nop

    .line 529
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Landroidx/emoji2/text/o;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    const-string v0, "EmptyRunnable"

    .line 12
    .line 13
    return-object v0

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
