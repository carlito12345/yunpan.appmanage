.class public abstract Lq/i;
.super Landroidx/fragment/app/j0;
.source "SourceFile"

# interfaces
.implements Lq/j;


# instance fields
.field public z:Lq/a0;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/j0;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/activity/m;->e:Lb4/f;

    .line 5
    .line 6
    iget-object v0, v0, Lb4/f;->b:Lb4/e;

    .line 7
    .line 8
    new-instance v1, Lb4/a;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lb4/a;-><init>(Lq/i;)V

    .line 11
    .line 12
    .line 13
    const-string v2, "androidx:appcompat"

    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Lb4/e;->c(Ljava/lang/String;Lb4/d;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lq/h;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lq/h;-><init>(Lq/i;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroidx/activity/m;->o(Lm/a;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lq/i;->s()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lq/i;->r()Lq/m;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lq/a0;

    .line 9
    .line 10
    invoke-virtual {v0}, Lq/a0;->u()V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lq/a0;->C:Landroid/view/ViewGroup;

    .line 14
    .line 15
    const v2, 0x1020002

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/view/ViewGroup;

    .line 23
    .line 24
    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, v0, Lq/a0;->m:Lq/w;

    .line 28
    .line 29
    iget-object p2, v0, Lq/a0;->l:Landroid/view/Window;

    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p1, p2}, Lq/w;->a(Landroid/view/Window$Callback;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lq/i;->r()Lq/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lq/a0;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, Lq/a0;->S:Z

    .line 9
    .line 10
    iget v2, v0, Lq/a0;->Y:I

    .line 11
    .line 12
    const/16 v3, -0x64

    .line 13
    .line 14
    if-eq v2, v3, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget v2, Lq/m;->b:I

    .line 18
    .line 19
    :goto_0
    invoke-virtual {v0, p1, v2}, Lq/a0;->B(Landroid/content/Context;I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {p1}, Lq/m;->a(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_7

    .line 28
    .line 29
    invoke-static {p1}, Lq/m;->a(Landroid/content/Context;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    goto :goto_4

    .line 36
    :cond_1
    invoke-static {}, Lt0/b;->a()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    sget-boolean v2, Lq/m;->f:Z

    .line 43
    .line 44
    if-nez v2, :cond_7

    .line 45
    .line 46
    sget-object v2, Lq/m;->a:Lq/g0;

    .line 47
    .line 48
    new-instance v3, Lcom/yunpan/appmanage/util/i;

    .line 49
    .line 50
    const/4 v4, 0x1

    .line 51
    invoke-direct {v3, p1, v4}, Lcom/yunpan/appmanage/util/i;-><init>(Landroid/content/Context;I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v3}, Lq/g0;->execute(Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    goto :goto_4

    .line 58
    :cond_2
    sget-object v2, Lq/m;->i:Ljava/lang/Object;

    .line 59
    .line 60
    monitor-enter v2

    .line 61
    :try_start_0
    sget-object v3, Lq/m;->c:Lt0/j;

    .line 62
    .line 63
    if-nez v3, :cond_5

    .line 64
    .line 65
    sget-object v3, Lq/m;->d:Lt0/j;

    .line 66
    .line 67
    if-nez v3, :cond_3

    .line 68
    .line 69
    invoke-static {p1}, La9/o;->a0(Landroid/content/Context;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-static {v3}, Lt0/j;->c(Ljava/lang/String;)Lt0/j;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    sput-object v3, Lq/m;->d:Lt0/j;

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    goto :goto_3

    .line 82
    :cond_3
    :goto_1
    sget-object v3, Lq/m;->d:Lt0/j;

    .line 83
    .line 84
    iget-object v3, v3, Lt0/j;->a:Lt0/l;

    .line 85
    .line 86
    invoke-interface {v3}, Lt0/l;->isEmpty()Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_4

    .line 91
    .line 92
    monitor-exit v2

    .line 93
    goto :goto_4

    .line 94
    :cond_4
    sget-object v3, Lq/m;->d:Lt0/j;

    .line 95
    .line 96
    sput-object v3, Lq/m;->c:Lt0/j;

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_5
    sget-object v4, Lq/m;->d:Lt0/j;

    .line 100
    .line 101
    invoke-virtual {v3, v4}, Lt0/j;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-nez v3, :cond_6

    .line 106
    .line 107
    sget-object v3, Lq/m;->c:Lt0/j;

    .line 108
    .line 109
    sput-object v3, Lq/m;->d:Lt0/j;

    .line 110
    .line 111
    iget-object v3, v3, Lt0/j;->a:Lt0/l;

    .line 112
    .line 113
    invoke-interface {v3}, Lt0/l;->a()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-static {p1, v3}, La9/o;->Y(Landroid/content/Context;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :cond_6
    :goto_2
    monitor-exit v2

    .line 121
    goto :goto_4

    .line 122
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    throw p1

    .line 124
    :cond_7
    :goto_4
    invoke-static {p1}, Lq/a0;->n(Landroid/content/Context;)Lt0/j;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    sget-boolean v3, Lq/a0;->c1:Z

    .line 129
    .line 130
    const/4 v4, 0x0

    .line 131
    const/4 v5, 0x0

    .line 132
    if-eqz v3, :cond_8

    .line 133
    .line 134
    instance-of v3, p1, Landroid/view/ContextThemeWrapper;

    .line 135
    .line 136
    if-eqz v3, :cond_8

    .line 137
    .line 138
    invoke-static {p1, v0, v2, v5, v4}, Lq/a0;->r(Landroid/content/Context;ILt0/j;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    :try_start_1
    move-object v6, p1

    .line 143
    check-cast v6, Landroid/view/ContextThemeWrapper;

    .line 144
    .line 145
    invoke-virtual {v6, v3}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 146
    .line 147
    .line 148
    goto/16 :goto_7

    .line 149
    .line 150
    :catch_0
    nop

    .line 151
    :cond_8
    instance-of v3, p1, Lu/d;

    .line 152
    .line 153
    if-eqz v3, :cond_9

    .line 154
    .line 155
    invoke-static {p1, v0, v2, v5, v4}, Lq/a0;->r(Landroid/content/Context;ILt0/j;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    :try_start_2
    move-object v4, p1

    .line 160
    check-cast v4, Lu/d;

    .line 161
    .line 162
    invoke-virtual {v4, v3}, Lu/d;->a(Landroid/content/res/Configuration;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 163
    .line 164
    .line 165
    goto/16 :goto_7

    .line 166
    .line 167
    :catch_1
    nop

    .line 168
    :cond_9
    sget-boolean v3, Lq/a0;->b1:Z

    .line 169
    .line 170
    if-nez v3, :cond_a

    .line 171
    .line 172
    goto/16 :goto_7

    .line 173
    .line 174
    :cond_a
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 175
    .line 176
    new-instance v4, Landroid/content/res/Configuration;

    .line 177
    .line 178
    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    .line 179
    .line 180
    .line 181
    const/4 v6, -0x1

    .line 182
    iput v6, v4, Landroid/content/res/Configuration;->uiMode:I

    .line 183
    .line 184
    const/4 v6, 0x0

    .line 185
    iput v6, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 186
    .line 187
    invoke-virtual {p1, v4}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 200
    .line 201
    .line 202
    move-result-object v7

    .line 203
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 204
    .line 205
    .line 206
    move-result-object v7

    .line 207
    iget v8, v7, Landroid/content/res/Configuration;->uiMode:I

    .line 208
    .line 209
    iput v8, v4, Landroid/content/res/Configuration;->uiMode:I

    .line 210
    .line 211
    invoke-virtual {v4, v7}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    .line 212
    .line 213
    .line 214
    move-result v8

    .line 215
    if-nez v8, :cond_22

    .line 216
    .line 217
    new-instance v5, Landroid/content/res/Configuration;

    .line 218
    .line 219
    invoke-direct {v5}, Landroid/content/res/Configuration;-><init>()V

    .line 220
    .line 221
    .line 222
    iput v6, v5, Landroid/content/res/Configuration;->fontScale:F

    .line 223
    .line 224
    invoke-virtual {v4, v7}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    .line 225
    .line 226
    .line 227
    move-result v6

    .line 228
    if-nez v6, :cond_b

    .line 229
    .line 230
    goto/16 :goto_6

    .line 231
    .line 232
    :cond_b
    iget v6, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 233
    .line 234
    iget v8, v7, Landroid/content/res/Configuration;->fontScale:F

    .line 235
    .line 236
    cmpl-float v6, v6, v8

    .line 237
    .line 238
    if-eqz v6, :cond_c

    .line 239
    .line 240
    iput v8, v5, Landroid/content/res/Configuration;->fontScale:F

    .line 241
    .line 242
    :cond_c
    iget v6, v4, Landroid/content/res/Configuration;->mcc:I

    .line 243
    .line 244
    iget v8, v7, Landroid/content/res/Configuration;->mcc:I

    .line 245
    .line 246
    if-eq v6, v8, :cond_d

    .line 247
    .line 248
    iput v8, v5, Landroid/content/res/Configuration;->mcc:I

    .line 249
    .line 250
    :cond_d
    iget v6, v4, Landroid/content/res/Configuration;->mnc:I

    .line 251
    .line 252
    iget v8, v7, Landroid/content/res/Configuration;->mnc:I

    .line 253
    .line 254
    if-eq v6, v8, :cond_e

    .line 255
    .line 256
    iput v8, v5, Landroid/content/res/Configuration;->mnc:I

    .line 257
    .line 258
    :cond_e
    const/16 v6, 0x18

    .line 259
    .line 260
    if-lt v3, v6, :cond_f

    .line 261
    .line 262
    invoke-static {v4, v7, v5}, Lq/u;->a(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 263
    .line 264
    .line 265
    goto :goto_5

    .line 266
    :cond_f
    iget-object v6, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 267
    .line 268
    iget-object v8, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 269
    .line 270
    invoke-static {v6, v8}, Lqf/c;->o(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v6

    .line 274
    if-nez v6, :cond_10

    .line 275
    .line 276
    iget-object v6, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 277
    .line 278
    iput-object v6, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 279
    .line 280
    :cond_10
    :goto_5
    iget v6, v4, Landroid/content/res/Configuration;->touchscreen:I

    .line 281
    .line 282
    iget v8, v7, Landroid/content/res/Configuration;->touchscreen:I

    .line 283
    .line 284
    if-eq v6, v8, :cond_11

    .line 285
    .line 286
    iput v8, v5, Landroid/content/res/Configuration;->touchscreen:I

    .line 287
    .line 288
    :cond_11
    iget v6, v4, Landroid/content/res/Configuration;->keyboard:I

    .line 289
    .line 290
    iget v8, v7, Landroid/content/res/Configuration;->keyboard:I

    .line 291
    .line 292
    if-eq v6, v8, :cond_12

    .line 293
    .line 294
    iput v8, v5, Landroid/content/res/Configuration;->keyboard:I

    .line 295
    .line 296
    :cond_12
    iget v6, v4, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 297
    .line 298
    iget v8, v7, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 299
    .line 300
    if-eq v6, v8, :cond_13

    .line 301
    .line 302
    iput v8, v5, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 303
    .line 304
    :cond_13
    iget v6, v4, Landroid/content/res/Configuration;->navigation:I

    .line 305
    .line 306
    iget v8, v7, Landroid/content/res/Configuration;->navigation:I

    .line 307
    .line 308
    if-eq v6, v8, :cond_14

    .line 309
    .line 310
    iput v8, v5, Landroid/content/res/Configuration;->navigation:I

    .line 311
    .line 312
    :cond_14
    iget v6, v4, Landroid/content/res/Configuration;->navigationHidden:I

    .line 313
    .line 314
    iget v8, v7, Landroid/content/res/Configuration;->navigationHidden:I

    .line 315
    .line 316
    if-eq v6, v8, :cond_15

    .line 317
    .line 318
    iput v8, v5, Landroid/content/res/Configuration;->navigationHidden:I

    .line 319
    .line 320
    :cond_15
    iget v6, v4, Landroid/content/res/Configuration;->orientation:I

    .line 321
    .line 322
    iget v8, v7, Landroid/content/res/Configuration;->orientation:I

    .line 323
    .line 324
    if-eq v6, v8, :cond_16

    .line 325
    .line 326
    iput v8, v5, Landroid/content/res/Configuration;->orientation:I

    .line 327
    .line 328
    :cond_16
    iget v6, v4, Landroid/content/res/Configuration;->screenLayout:I

    .line 329
    .line 330
    and-int/lit8 v6, v6, 0xf

    .line 331
    .line 332
    iget v8, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 333
    .line 334
    and-int/lit8 v8, v8, 0xf

    .line 335
    .line 336
    if-eq v6, v8, :cond_17

    .line 337
    .line 338
    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    .line 339
    .line 340
    or-int/2addr v6, v8

    .line 341
    iput v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    .line 342
    .line 343
    :cond_17
    iget v6, v4, Landroid/content/res/Configuration;->screenLayout:I

    .line 344
    .line 345
    and-int/lit16 v6, v6, 0xc0

    .line 346
    .line 347
    iget v8, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 348
    .line 349
    and-int/lit16 v8, v8, 0xc0

    .line 350
    .line 351
    if-eq v6, v8, :cond_18

    .line 352
    .line 353
    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    .line 354
    .line 355
    or-int/2addr v6, v8

    .line 356
    iput v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    .line 357
    .line 358
    :cond_18
    iget v6, v4, Landroid/content/res/Configuration;->screenLayout:I

    .line 359
    .line 360
    and-int/lit8 v6, v6, 0x30

    .line 361
    .line 362
    iget v8, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 363
    .line 364
    and-int/lit8 v8, v8, 0x30

    .line 365
    .line 366
    if-eq v6, v8, :cond_19

    .line 367
    .line 368
    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    .line 369
    .line 370
    or-int/2addr v6, v8

    .line 371
    iput v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    .line 372
    .line 373
    :cond_19
    iget v6, v4, Landroid/content/res/Configuration;->screenLayout:I

    .line 374
    .line 375
    and-int/lit16 v6, v6, 0x300

    .line 376
    .line 377
    iget v8, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 378
    .line 379
    and-int/lit16 v8, v8, 0x300

    .line 380
    .line 381
    if-eq v6, v8, :cond_1a

    .line 382
    .line 383
    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    .line 384
    .line 385
    or-int/2addr v6, v8

    .line 386
    iput v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    .line 387
    .line 388
    :cond_1a
    const/16 v6, 0x1a

    .line 389
    .line 390
    if-lt v3, v6, :cond_1c

    .line 391
    .line 392
    invoke-static {v4}, Ln5/a;->b(Landroid/content/res/Configuration;)I

    .line 393
    .line 394
    .line 395
    move-result v3

    .line 396
    and-int/lit8 v3, v3, 0x3

    .line 397
    .line 398
    invoke-static {v7}, Ln5/a;->b(Landroid/content/res/Configuration;)I

    .line 399
    .line 400
    .line 401
    move-result v6

    .line 402
    and-int/lit8 v6, v6, 0x3

    .line 403
    .line 404
    if-eq v3, v6, :cond_1b

    .line 405
    .line 406
    invoke-static {v5}, Ln5/a;->b(Landroid/content/res/Configuration;)I

    .line 407
    .line 408
    .line 409
    move-result v3

    .line 410
    invoke-static {v7}, Ln5/a;->b(Landroid/content/res/Configuration;)I

    .line 411
    .line 412
    .line 413
    move-result v6

    .line 414
    and-int/lit8 v6, v6, 0x3

    .line 415
    .line 416
    or-int/2addr v3, v6

    .line 417
    invoke-static {v5, v3}, Ln5/a;->n(Landroid/content/res/Configuration;I)V

    .line 418
    .line 419
    .line 420
    :cond_1b
    invoke-static {v4}, Ln5/a;->b(Landroid/content/res/Configuration;)I

    .line 421
    .line 422
    .line 423
    move-result v3

    .line 424
    and-int/lit8 v3, v3, 0xc

    .line 425
    .line 426
    invoke-static {v7}, Ln5/a;->b(Landroid/content/res/Configuration;)I

    .line 427
    .line 428
    .line 429
    move-result v6

    .line 430
    and-int/lit8 v6, v6, 0xc

    .line 431
    .line 432
    if-eq v3, v6, :cond_1c

    .line 433
    .line 434
    invoke-static {v5}, Ln5/a;->b(Landroid/content/res/Configuration;)I

    .line 435
    .line 436
    .line 437
    move-result v3

    .line 438
    invoke-static {v7}, Ln5/a;->b(Landroid/content/res/Configuration;)I

    .line 439
    .line 440
    .line 441
    move-result v6

    .line 442
    and-int/lit8 v6, v6, 0xc

    .line 443
    .line 444
    or-int/2addr v3, v6

    .line 445
    invoke-static {v5, v3}, Ln5/a;->n(Landroid/content/res/Configuration;I)V

    .line 446
    .line 447
    .line 448
    :cond_1c
    iget v3, v4, Landroid/content/res/Configuration;->uiMode:I

    .line 449
    .line 450
    and-int/lit8 v3, v3, 0xf

    .line 451
    .line 452
    iget v6, v7, Landroid/content/res/Configuration;->uiMode:I

    .line 453
    .line 454
    and-int/lit8 v6, v6, 0xf

    .line 455
    .line 456
    if-eq v3, v6, :cond_1d

    .line 457
    .line 458
    iget v3, v5, Landroid/content/res/Configuration;->uiMode:I

    .line 459
    .line 460
    or-int/2addr v3, v6

    .line 461
    iput v3, v5, Landroid/content/res/Configuration;->uiMode:I

    .line 462
    .line 463
    :cond_1d
    iget v3, v4, Landroid/content/res/Configuration;->uiMode:I

    .line 464
    .line 465
    and-int/lit8 v3, v3, 0x30

    .line 466
    .line 467
    iget v6, v7, Landroid/content/res/Configuration;->uiMode:I

    .line 468
    .line 469
    and-int/lit8 v6, v6, 0x30

    .line 470
    .line 471
    if-eq v3, v6, :cond_1e

    .line 472
    .line 473
    iget v3, v5, Landroid/content/res/Configuration;->uiMode:I

    .line 474
    .line 475
    or-int/2addr v3, v6

    .line 476
    iput v3, v5, Landroid/content/res/Configuration;->uiMode:I

    .line 477
    .line 478
    :cond_1e
    iget v3, v4, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 479
    .line 480
    iget v6, v7, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 481
    .line 482
    if-eq v3, v6, :cond_1f

    .line 483
    .line 484
    iput v6, v5, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 485
    .line 486
    :cond_1f
    iget v3, v4, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 487
    .line 488
    iget v6, v7, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 489
    .line 490
    if-eq v3, v6, :cond_20

    .line 491
    .line 492
    iput v6, v5, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 493
    .line 494
    :cond_20
    iget v3, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 495
    .line 496
    iget v6, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 497
    .line 498
    if-eq v3, v6, :cond_21

    .line 499
    .line 500
    iput v6, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 501
    .line 502
    :cond_21
    iget v3, v4, Landroid/content/res/Configuration;->densityDpi:I

    .line 503
    .line 504
    iget v4, v7, Landroid/content/res/Configuration;->densityDpi:I

    .line 505
    .line 506
    if-eq v3, v4, :cond_22

    .line 507
    .line 508
    iput v4, v5, Landroid/content/res/Configuration;->densityDpi:I

    .line 509
    .line 510
    :cond_22
    :goto_6
    invoke-static {p1, v0, v2, v5, v1}, Lq/a0;->r(Landroid/content/Context;ILt0/j;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    new-instance v1, Lu/d;

    .line 515
    .line 516
    const v2, 0x7f140262

    .line 517
    .line 518
    .line 519
    invoke-direct {v1, p1, v2}, Lu/d;-><init>(Landroid/content/Context;I)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v1, v0}, Lu/d;->a(Landroid/content/res/Configuration;)V

    .line 523
    .line 524
    .line 525
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 526
    .line 527
    .line 528
    move-result-object p1
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    .line 529
    if-eqz p1, :cond_23

    .line 530
    .line 531
    invoke-virtual {v1}, Lu/d;->getTheme()Landroid/content/res/Resources$Theme;

    .line 532
    .line 533
    .line 534
    move-result-object p1

    .line 535
    invoke-static {p1}, Lo0/b;->l(Landroid/content/res/Resources$Theme;)V

    .line 536
    .line 537
    .line 538
    :catch_2
    :cond_23
    move-object p1, v1

    .line 539
    :goto_7
    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    .line 540
    .line 541
    .line 542
    return-void
.end method

.method public final closeOptionsMenu()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lq/i;->r()Lq/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lq/a0;

    .line 6
    .line 7
    invoke-virtual {v0}, Lq/a0;->z()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-super {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lq/i;->r()Lq/m;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lq/a0;

    .line 9
    .line 10
    invoke-virtual {v0}, Lq/a0;->z()V

    .line 11
    .line 12
    .line 13
    invoke-super {p0, p1}, Lm0/k;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq/i;->r()Lq/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lq/a0;

    .line 6
    .line 7
    invoke-virtual {v0}, Lq/a0;->u()V

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, Lq/a0;->l:Landroid/view/Window;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lq/i;->r()Lq/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lq/a0;

    .line 6
    .line 7
    iget-object v1, v0, Lq/a0;->q:Lu/i;

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Lq/a0;->z()V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lu/i;

    .line 15
    .line 16
    iget-object v2, v0, Lq/a0;->p:Lq/m0;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v2}, Lq/m0;->l0()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v2, v0, Lq/a0;->k:Landroid/content/Context;

    .line 26
    .line 27
    :goto_0
    invoke-direct {v1, v2}, Lu/i;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, v0, Lq/a0;->q:Lu/i;

    .line 31
    .line 32
    :cond_1
    iget-object v0, v0, Lq/a0;->q:Lu/i;

    .line 33
    .line 34
    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 1
    sget v0, Lw/s3;->b:I

    .line 2
    .line 3
    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final invalidateOptionsMenu()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lq/i;->r()Lq/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lq/a0;

    .line 6
    .line 7
    iget-object v1, v0, Lq/a0;->p:Lq/m0;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lq/a0;->z()V

    .line 12
    .line 13
    .line 14
    iget-object v1, v0, Lq/a0;->p:Lq/m0;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Lq/a0;->A(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/m;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lq/i;->r()Lq/m;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lq/a0;

    .line 9
    .line 10
    iget-boolean v0, p1, Lq/a0;->H:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-boolean v0, p1, Lq/a0;->B:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Lq/a0;->z()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p1, Lq/a0;->p:Lq/m0;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v1, v0, Lq/m0;->b:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/high16 v2, 0x7f050000

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {v0, v1}, Lq/m0;->o0(Z)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-static {}, Lw/s;->a()Lw/s;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p1, Lq/a0;->k:Landroid/content/Context;

    .line 45
    .line 46
    monitor-enter v0

    .line 47
    :try_start_0
    iget-object v2, v0, Lw/s;->a:Lw/p2;

    .line 48
    .line 49
    invoke-virtual {v2, v1}, Lw/p2;->l(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    monitor-exit v0

    .line 53
    new-instance v0, Landroid/content/res/Configuration;

    .line 54
    .line 55
    iget-object v1, p1, Lq/a0;->k:Landroid/content/Context;

    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 66
    .line 67
    .line 68
    iput-object v0, p1, Lq/a0;->X:Landroid/content/res/Configuration;

    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, v0, v0}, Lq/a0;->l(ZZ)Z

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :catchall_0
    move-exception p1

    .line 76
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    throw p1
.end method

.method public final onContentChanged()V
    .locals 0

    .line 1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/j0;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lq/i;->r()Lq/m;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lq/m;->c()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-static {v0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0, p2}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    const/4 p1, 0x1

    .line 62
    return p1

    .line 63
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    return p1
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/j0;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lq/i;->r()Lq/m;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lq/a0;

    .line 14
    .line 15
    invoke-virtual {p1}, Lq/a0;->z()V

    .line 16
    .line 17
    .line 18
    iget-object p1, p1, Lq/a0;->p:Lq/m0;

    .line 19
    .line 20
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    const v1, 0x102002c

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-ne p2, v1, :cond_8

    .line 29
    .line 30
    if-eqz p1, :cond_8

    .line 31
    .line 32
    iget-object p1, p1, Lq/m0;->f:Lw/m1;

    .line 33
    .line 34
    check-cast p1, Lw/n3;

    .line 35
    .line 36
    iget p1, p1, Lw/n3;->b:I

    .line 37
    .line 38
    and-int/lit8 p1, p1, 0x4

    .line 39
    .line 40
    if-eqz p1, :cond_8

    .line 41
    .line 42
    invoke-static {p0}, Lm0/c0;->c(Lq/i;)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_7

    .line 47
    .line 48
    invoke-static {p0, p1}, Lm0/m;->c(Landroid/app/Activity;Landroid/content/Intent;)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_6

    .line 53
    .line 54
    new-instance p1, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-static {p0}, Lm0/c0;->c(Lq/i;)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    if-nez p2, :cond_1

    .line 64
    .line 65
    invoke-static {p0}, Lm0/c0;->c(Lq/i;)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    :cond_1
    if-eqz p2, :cond_4

    .line 70
    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    if-nez v1, :cond_2

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {p2, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    :try_start_0
    invoke-static {p0, v1}, Lm0/c0;->d(Lq/i;Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    :goto_0
    if-eqz v1, :cond_3

    .line 94
    .line 95
    invoke-virtual {p1, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-static {p0, v1}, Lm0/c0;->d(Lq/i;Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 103
    .line 104
    .line 105
    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_0

    .line 107
    :catch_0
    move-exception p1

    .line 108
    goto :goto_1

    .line 109
    :cond_3
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :goto_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 114
    .line 115
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    throw p2

    .line 119
    :cond_4
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    if-nez p2, :cond_5

    .line 124
    .line 125
    new-array p2, v2, [Landroid/content/Intent;

    .line 126
    .line 127
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    check-cast p1, [Landroid/content/Intent;

    .line 132
    .line 133
    new-instance p2, Landroid/content/Intent;

    .line 134
    .line 135
    aget-object v1, p1, v2

    .line 136
    .line 137
    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 138
    .line 139
    .line 140
    const v1, 0x1000c000

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    aput-object p2, p1, v2

    .line 148
    .line 149
    const/4 p2, 0x0

    .line 150
    invoke-static {p0, p1, p2}, Ln0/a;->a(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 151
    .line 152
    .line 153
    :try_start_1
    invoke-static {p0}, Lm0/a;->a(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 154
    .line 155
    .line 156
    goto :goto_3

    .line 157
    :catch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 162
    .line 163
    const-string p2, "No intents added to TaskStackBuilder; cannot startActivities"

    .line 164
    .line 165
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw p1

    .line 169
    :cond_6
    invoke-static {p0, p1}, Lm0/m;->b(Landroid/app/Activity;Landroid/content/Intent;)Z

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_7
    const/4 v0, 0x0

    .line 174
    :goto_3
    return v0

    .line 175
    :cond_8
    return v2
.end method

.method public final onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lq/i;->r()Lq/m;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lq/a0;

    .line 9
    .line 10
    invoke-virtual {p1}, Lq/a0;->u()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onPostResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/j0;->onPostResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lq/i;->r()Lq/m;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lq/a0;

    .line 9
    .line 10
    invoke-virtual {v0}, Lq/a0;->z()V

    .line 11
    .line 12
    .line 13
    iget-object v0, v0, Lq/a0;->p:Lq/m0;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    iput-boolean v1, v0, Lq/m0;->u:Z

    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/j0;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lq/i;->r()Lq/m;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lq/a0;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Lq/a0;->l(ZZ)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/j0;->onStop()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lq/i;->r()Lq/m;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lq/a0;

    .line 9
    .line 10
    invoke-virtual {v0}, Lq/a0;->z()V

    .line 11
    .line 12
    .line 13
    iget-object v0, v0, Lq/a0;->p:Lq/m0;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput-boolean v1, v0, Lq/m0;->u:Z

    .line 19
    .line 20
    iget-object v0, v0, Lq/m0;->t:Lu/k;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Lu/k;->a()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lq/i;->r()Lq/m;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-virtual {p2, p1}, Lq/m;->k(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final openOptionsMenu()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lq/i;->r()Lq/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lq/a0;

    .line 6
    .line 7
    invoke-virtual {v0}, Lq/a0;->z()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-super {p0}, Landroid/app/Activity;->openOptionsMenu()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final r()Lq/m;
    .locals 2

    .line 1
    iget-object v0, p0, Lq/i;->z:Lq/a0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lq/m;->a:Lq/g0;

    .line 6
    .line 7
    new-instance v0, Lq/a0;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, p0, v1, p0, p0}, Lq/a0;-><init>(Landroid/content/Context;Landroid/view/Window;Lq/j;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lq/i;->z:Lq/a0;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lq/i;->z:Lq/a0;

    .line 16
    .line 17
    return-object v0
.end method

.method public final s()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0, p0}, Landroidx/lifecycle/l0;->h(Landroid/view/View;Landroidx/lifecycle/t;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "<this>"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const v2, 0x7f0b0626

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0, p0}, Lnh/b;->j0(Landroid/view/View;Lb4/g;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0, v1}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const v1, 0x7f0b0624

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq/i;->s()V

    .line 2
    invoke-virtual {p0}, Lq/i;->r()Lq/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lq/m;->h(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lq/i;->s()V

    .line 4
    invoke-virtual {p0}, Lq/i;->r()Lq/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lq/m;->i(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Lq/i;->s()V

    .line 6
    invoke-virtual {p0}, Lq/i;->r()Lq/m;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lq/m;->j(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setTheme(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lq/i;->r()Lq/m;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lq/a0;

    .line 9
    .line 10
    iput p1, v0, Lq/a0;->Z:I

    .line 11
    .line 12
    return-void
.end method
