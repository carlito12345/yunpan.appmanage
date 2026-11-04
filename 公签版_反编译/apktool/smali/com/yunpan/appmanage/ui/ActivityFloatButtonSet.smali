.class public Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic E:I


# instance fields
.field public C:Landroid/widget/ImageView;

.field public D:I


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
    const v0, 0x7f0e0035

    return v0
.end method

.method public final u()V
    .locals 12

    .line 1
    invoke-static {p0}, Lq4/a;->n(Landroid/content/Context;)Lz7/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lz7/s;->a:Lb8/n;

    .line 6
    .line 7
    const-string v2, "allow_move_outer_edge"

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    const-string v1, "ico"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iput v1, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->D:I

    .line 31
    .line 32
    const v1, 0x7f0b04b5

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroid/widget/ImageView;

    .line 40
    .line 41
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->C:Landroid/widget/ImageView;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->x()V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->C:Landroid/widget/ImageView;

    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const-string v3, "size"

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3}, Lz7/p;->e()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 63
    .line 64
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 65
    .line 66
    iget-object v3, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->C:Landroid/widget/ImageView;

    .line 67
    .line 68
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    .line 70
    .line 71
    const v3, 0x7f0b0563

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v3}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    move-object v6, v3

    .line 79
    check-cast v6, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 80
    .line 81
    const/16 v3, 0x64

    .line 82
    .line 83
    invoke-virtual {v6, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 84
    .line 85
    .line 86
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 87
    .line 88
    div-int/lit8 v3, v3, 0x5

    .line 89
    .line 90
    invoke-virtual {v6, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 91
    .line 92
    .line 93
    const v3, 0x7f0b0565

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v3}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    move-object v7, v3

    .line 101
    check-cast v7, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 102
    .line 103
    const/16 v3, 0xff

    .line 104
    .line 105
    invoke-virtual {v7, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 106
    .line 107
    .line 108
    const-string v3, "trans"

    .line 109
    .line 110
    invoke-virtual {v0, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-virtual {v4}, Lz7/p;->e()I

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    invoke-virtual {v7, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 119
    .line 120
    .line 121
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->C:Landroid/widget/ImageView;

    .line 122
    .line 123
    invoke-virtual {v0, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v3}, Lz7/p;->e()I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 132
    .line 133
    .line 134
    new-instance v3, Lha/u4;

    .line 135
    .line 136
    const/4 v4, 0x1

    .line 137
    invoke-direct {v3, p0, v4, v1}, Lha/u4;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v6, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 141
    .line 142
    .line 143
    new-instance v1, Lha/v;

    .line 144
    .line 145
    const/4 v3, 0x3

    .line 146
    invoke-direct {v1, v3, p0}, Lha/v;-><init>(ILjava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v7, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 150
    .line 151
    .line 152
    const v1, 0x7f0b0502

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    check-cast v1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 160
    .line 161
    new-instance v3, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 162
    .line 163
    iget-object v4, p0, Lda/g;->A:Lda/g;

    .line 164
    .line 165
    const/4 v5, 0x0

    .line 166
    invoke-direct {v3, v4, v5, v5}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 170
    .line 171
    .line 172
    new-instance v3, Lx9/l2;

    .line 173
    .line 174
    invoke-direct {v3}, Lx9/l2;-><init>()V

    .line 175
    .line 176
    .line 177
    const v4, 0x7f080128

    .line 178
    .line 179
    .line 180
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    invoke-virtual {v3, v4}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    const v4, 0x7f080129

    .line 188
    .line 189
    .line 190
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    invoke-virtual {v3, v4}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    const v4, 0x7f08012a

    .line 198
    .line 199
    .line 200
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    invoke-virtual {v3, v4}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    const v4, 0x7f08012b

    .line 208
    .line 209
    .line 210
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    invoke-virtual {v3, v4}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    const v4, 0x7f0802bd

    .line 218
    .line 219
    .line 220
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    invoke-virtual {v3, v4}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    const v4, 0x7f080216

    .line 228
    .line 229
    .line 230
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    invoke-virtual {v3, v4}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1, v3}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 238
    .line 239
    .line 240
    new-instance v1, Lma/b;

    .line 241
    .line 242
    const/16 v4, 0xf

    .line 243
    .line 244
    invoke-direct {v1, p0, v4, v3}, Lma/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    iput-object v1, v3, Lc6/g;->e:Lc6/e;

    .line 248
    .line 249
    const v1, 0x7f0b050c

    .line 250
    .line 251
    .line 252
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    check-cast v1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 257
    .line 258
    new-instance v3, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 259
    .line 260
    iget-object v4, p0, Lda/g;->A:Lda/g;

    .line 261
    .line 262
    const/4 v8, 0x1

    .line 263
    invoke-direct {v3, v4, v8, v5}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 267
    .line 268
    .line 269
    new-instance v3, Lx9/w0;

    .line 270
    .line 271
    invoke-direct {v3}, Lx9/w0;-><init>()V

    .line 272
    .line 273
    .line 274
    new-instance v4, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 275
    .line 276
    const-string v9, "auto_hide"

    .line 277
    .line 278
    invoke-virtual {v0, v9}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 279
    .line 280
    .line 281
    move-result-object v9

    .line 282
    invoke-virtual {v9}, Lz7/p;->b()Z

    .line 283
    .line 284
    .line 285
    move-result v9

    .line 286
    const-string v10, "60\u79d2\u672a\u89e6\u6478\u5c4f\u5e55\u65f6\u81ea\u52a8\u9690\u85cf(\u9632\u70e7\u5c4f\u51a0\u519b)"

    .line 287
    .line 288
    invoke-direct {v4, v10, v5, v9}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;IZ)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v3, v4}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    new-instance v4, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 295
    .line 296
    const-string v9, "auto_trans"

    .line 297
    .line 298
    invoke-virtual {v0, v9}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 299
    .line 300
    .line 301
    move-result-object v9

    .line 302
    invoke-virtual {v9}, Lz7/p;->b()Z

    .line 303
    .line 304
    .line 305
    move-result v9

    .line 306
    const-string v10, "60\u79d2\u672a\u89e6\u6478\u5c4f\u5e55\u65f6\u589e\u52a0\u900f\u660e(\u9632\u70e7\u5c4f\u4e9a\u519b)"

    .line 307
    .line 308
    invoke-direct {v4, v10, v8, v9}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;IZ)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v3, v4}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    new-instance v4, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 315
    .line 316
    const-string v9, "antiBurnScreen"

    .line 317
    .line 318
    invoke-virtual {v0, v9}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 319
    .line 320
    .line 321
    move-result-object v9

    .line 322
    invoke-virtual {v9}, Lz7/p;->b()Z

    .line 323
    .line 324
    .line 325
    move-result v9

    .line 326
    const-string v10, "\u9632\u70e7\u5c4f\u63aa\u65bd(\u8f7b\u5fae\u79fb\u52a8\u7b49\u63aa\u65bd\uff0c\u9632\u70e7\u5c4f\u5b63\u519b)"

    .line 327
    .line 328
    const/4 v11, 0x2

    .line 329
    invoke-direct {v4, v10, v11, v9}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;IZ)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v3, v4}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    new-instance v4, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 336
    .line 337
    invoke-virtual {v0, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    invoke-virtual {v2}, Lz7/p;->b()Z

    .line 342
    .line 343
    .line 344
    move-result v2

    .line 345
    const-string v9, "\u5141\u8bb8\u62d6\u5230\u5c4f\u5e55\u5916(\u6309\u94ae\u7684\u4e00\u534a\u5728\u5c4f\u5e55\u5916\u9762)"

    .line 346
    .line 347
    const/4 v10, 0x3

    .line 348
    invoke-direct {v4, v9, v10, v2}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;IZ)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v3, v4}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 352
    .line 353
    .line 354
    new-instance v2, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 355
    .line 356
    iget-object v4, v0, Lz7/s;->a:Lb8/n;

    .line 357
    .line 358
    const-string v9, "lock"

    .line 359
    .line 360
    invoke-virtual {v4, v9}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    move-result v4

    .line 364
    if-eqz v4, :cond_1

    .line 365
    .line 366
    invoke-virtual {v0, v9}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    invoke-virtual {v0}, Lz7/p;->b()Z

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    if-eqz v0, :cond_1

    .line 375
    .line 376
    const/4 v5, 0x1

    .line 377
    :cond_1
    const-string v0, "\u9501\u5b9a\u4f4d\u7f6e(\u4e5f\u53ef\u4ee5\u7528\u6620\u5c04\u6765\u9501\u5b9a \u548c \u89e3\u9664)"

    .line 378
    .line 379
    const/4 v4, 0x4

    .line 380
    invoke-direct {v2, v0, v4, v5}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;IZ)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v3, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v1, v3}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 387
    .line 388
    .line 389
    new-instance v0, Lph/j;

    .line 390
    .line 391
    const/16 v1, 0x11

    .line 392
    .line 393
    invoke-direct {v0, v1, v3}, Lph/j;-><init>(ILjava/lang/Object;)V

    .line 394
    .line 395
    .line 396
    iput-object v0, v3, Lc6/g;->e:Lc6/e;

    .line 397
    .line 398
    const v0, 0x7f0b03ad

    .line 399
    .line 400
    .line 401
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    new-instance v1, Lua/g1;

    .line 406
    .line 407
    const/4 v2, 0x3

    .line 408
    invoke-direct {v1, p0, v2}, Lua/g1;-><init>(Lda/g;I)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    .line 413
    .line 414
    const v0, 0x7f0b03f3

    .line 415
    .line 416
    .line 417
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    new-instance v1, Lha/tc;

    .line 422
    .line 423
    const/4 v9, 0x1

    .line 424
    move-object v4, v1

    .line 425
    move-object v5, p0

    .line 426
    move-object v8, v3

    .line 427
    invoke-direct/range {v4 .. v9}, Lha/tc;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    .line 432
    .line 433
    return-void
.end method

.method public final x()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->D:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->C:Landroid/widget/ImageView;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lda/g;->A:Lda/g;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, "/FloatButtonIco"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v1, 0x1

    .line 40
    const v2, 0x7f080128

    .line 41
    .line 42
    .line 43
    if-ne v0, v1, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->C:Landroid/widget/ImageView;

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 v1, 0x2

    .line 52
    if-ne v0, v1, :cond_2

    .line 53
    .line 54
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->C:Landroid/widget/ImageView;

    .line 55
    .line 56
    const v1, 0x7f080129

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    const/4 v1, 0x3

    .line 64
    if-ne v0, v1, :cond_3

    .line 65
    .line 66
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->C:Landroid/widget/ImageView;

    .line 67
    .line 68
    const v1, 0x7f08012a

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    const/4 v1, 0x4

    .line 76
    if-ne v0, v1, :cond_4

    .line 77
    .line 78
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->C:Landroid/widget/ImageView;

    .line 79
    .line 80
    const v1, 0x7f08012b

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    const/4 v1, 0x5

    .line 88
    if-ne v0, v1, :cond_5

    .line 89
    .line 90
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->C:Landroid/widget/ImageView;

    .line 91
    .line 92
    const v1, 0x7f0802bd

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_5
    :try_start_0
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->C:Landroid/widget/ImageView;

    .line 100
    .line 101
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :catch_0
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->C:Landroid/widget/ImageView;

    .line 106
    .line 107
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    .line 109
    .line 110
    :goto_0
    return-void
.end method
