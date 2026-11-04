.class public final Lha/i0;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public final g:Lz7/s;

.field public final h:Lea/e;

.field public i:Landroidx/recyclerview/widget/RecyclerView;

.field public j:Lx9/g;

.field public k:Landroidx/recyclerview/widget/RecyclerView;

.field public l:Lx9/i4;

.field public m:Landroidx/recyclerview/widget/RecyclerView;

.field public n:Lx9/i4;

.field public p:Landroidx/core/widget/NestedScrollView;

.field public q:Landroid/widget/EditText;

.field public r:Landroid/widget/EditText;

.field public s:Landroid/widget/EditText;

.field public t:Landroid/widget/EditText;

.field public v:Landroid/widget/EditText;

.field public w:Landroid/widget/EditText;

.field public x:Landroid/widget/EditText;

.field public y:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lz7/s;Lea/e;)V
    .locals 1

    .line 1
    const v0, 0x7f0e0080

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    iput-object p3, p0, Lha/i0;->g:Lz7/s;

    .line 8
    .line 9
    iput-object p4, p0, Lha/i0;->h:Lea/e;

    .line 10
    .line 11
    if-nez p3, :cond_0

    .line 12
    .line 13
    new-instance p1, Lz7/s;

    .line 14
    .line 15
    invoke-direct {p1}, Lz7/s;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lha/i0;->g:Lz7/s;

    .line 19
    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0b055c

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroidx/core/widget/NestedScrollView;

    .line 12
    .line 13
    iput-object p1, p0, Lha/i0;->p:Landroidx/core/widget/NestedScrollView;

    .line 14
    .line 15
    const p1, 0x7f0b0443

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/widget/EditText;

    .line 23
    .line 24
    iput-object p1, p0, Lha/i0;->q:Landroid/widget/EditText;

    .line 25
    .line 26
    iget-object p1, p0, Lha/i0;->g:Lz7/s;

    .line 27
    .line 28
    iget-object v0, p1, Lz7/s;->a:Lb8/n;

    .line 29
    .line 30
    const-string v1, "name"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iget-object v0, p0, Lha/i0;->q:Landroid/widget/EditText;

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    const v0, 0x7f0b03ad

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    new-instance v1, Lha/h0;

    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    invoke-direct {v1, p0, v2}, Lha/h0;-><init>(Lha/i0;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    .line 66
    .line 67
    const v0, 0x7f0b03f3

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    new-instance v1, Lha/h0;

    .line 75
    .line 76
    const/4 v2, 0x1

    .line 77
    invoke-direct {v1, p0, v2}, Lha/h0;-><init>(Lha/i0;I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p1, Lz7/s;->a:Lb8/n;

    .line 84
    .line 85
    const-string v1, "sendMode"

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    const/4 v3, 0x1

    .line 92
    if-eqz v2, :cond_1

    .line 93
    .line 94
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    goto :goto_0

    .line 103
    :cond_1
    const/4 v1, 0x1

    .line 104
    :goto_0
    const v2, 0x7f0b0507

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 112
    .line 113
    iput-object v2, p0, Lha/i0;->k:Landroidx/recyclerview/widget/RecyclerView;

    .line 114
    .line 115
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 116
    .line 117
    iget-object v5, p0, Lha/a4;->b:Landroid/content/Context;

    .line 118
    .line 119
    const/4 v6, 0x0

    .line 120
    invoke-direct {v4, v6, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 124
    .line 125
    .line 126
    new-instance v2, Lx9/i4;

    .line 127
    .line 128
    invoke-direct {v2}, Lx9/i4;-><init>()V

    .line 129
    .line 130
    .line 131
    iput-object v2, p0, Lha/i0;->l:Lx9/i4;

    .line 132
    .line 133
    new-instance v4, Lx9/x0;

    .line 134
    .line 135
    if-nez v1, :cond_2

    .line 136
    .line 137
    const/4 v7, 0x1

    .line 138
    goto :goto_1

    .line 139
    :cond_2
    const/4 v7, 0x0

    .line 140
    :goto_1
    const-string v8, "\u666e\u901a\u53d1\u9001"

    .line 141
    .line 142
    invoke-direct {v4, v8, v7}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, v4}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    iget-object v2, p0, Lha/i0;->l:Lx9/i4;

    .line 149
    .line 150
    new-instance v4, Lx9/x0;

    .line 151
    .line 152
    if-ne v1, v3, :cond_3

    .line 153
    .line 154
    const/4 v1, 0x1

    .line 155
    goto :goto_2

    .line 156
    :cond_3
    const/4 v1, 0x0

    .line 157
    :goto_2
    const-string v7, "\u540e\u53f0\u53d1\u9001"

    .line 158
    .line 159
    invoke-direct {v4, v7, v1}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, v4}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    iget-object v1, p0, Lha/i0;->k:Landroidx/recyclerview/widget/RecyclerView;

    .line 166
    .line 167
    iget-object v2, p0, Lha/i0;->l:Lx9/i4;

    .line 168
    .line 169
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 170
    .line 171
    .line 172
    iget-object v1, p0, Lha/i0;->l:Lx9/i4;

    .line 173
    .line 174
    new-instance v2, Lha/g0;

    .line 175
    .line 176
    const/4 v4, 0x1

    .line 177
    invoke-direct {v2, p0, v4}, Lha/g0;-><init>(Lha/i0;I)V

    .line 178
    .line 179
    .line 180
    iput-object v2, v1, Lc6/g;->e:Lc6/e;

    .line 181
    .line 182
    const-string v1, "sendType"

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-eqz v2, :cond_4

    .line 189
    .line 190
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    goto :goto_3

    .line 199
    :cond_4
    const/4 v1, 0x1

    .line 200
    :goto_3
    const v2, 0x7f0b050e

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 208
    .line 209
    iput-object v2, p0, Lha/i0;->m:Landroidx/recyclerview/widget/RecyclerView;

    .line 210
    .line 211
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 212
    .line 213
    invoke-direct {v4, v6, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 217
    .line 218
    .line 219
    new-instance v2, Lx9/i4;

    .line 220
    .line 221
    invoke-direct {v2}, Lx9/i4;-><init>()V

    .line 222
    .line 223
    .line 224
    iput-object v2, p0, Lha/i0;->n:Lx9/i4;

    .line 225
    .line 226
    new-instance v4, Lx9/x0;

    .line 227
    .line 228
    if-nez v1, :cond_5

    .line 229
    .line 230
    const/4 v7, 0x1

    .line 231
    goto :goto_4

    .line 232
    :cond_5
    const/4 v7, 0x0

    .line 233
    :goto_4
    const-string v8, "\u6253\u5f00\u5e94\u7528"

    .line 234
    .line 235
    invoke-direct {v4, v8, v7}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2, v4}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    iget-object v2, p0, Lha/i0;->n:Lx9/i4;

    .line 242
    .line 243
    new-instance v4, Lx9/x0;

    .line 244
    .line 245
    if-ne v1, v3, :cond_6

    .line 246
    .line 247
    const/4 v7, 0x1

    .line 248
    goto :goto_5

    .line 249
    :cond_6
    const/4 v7, 0x0

    .line 250
    :goto_5
    const-string v8, "\u53d1\u9001\u5e7f\u64ad"

    .line 251
    .line 252
    invoke-direct {v4, v8, v7}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v2, v4}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    iget-object v2, p0, Lha/i0;->n:Lx9/i4;

    .line 259
    .line 260
    new-instance v4, Lx9/x0;

    .line 261
    .line 262
    const/4 v7, 0x2

    .line 263
    if-ne v1, v7, :cond_7

    .line 264
    .line 265
    const/4 v1, 0x1

    .line 266
    goto :goto_6

    .line 267
    :cond_7
    const/4 v1, 0x0

    .line 268
    :goto_6
    const-string v7, "\u542f\u52a8\u670d\u52a1"

    .line 269
    .line 270
    invoke-direct {v4, v7, v1}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v2, v4}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    iget-object v1, p0, Lha/i0;->m:Landroidx/recyclerview/widget/RecyclerView;

    .line 277
    .line 278
    iget-object v2, p0, Lha/i0;->n:Lx9/i4;

    .line 279
    .line 280
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 281
    .line 282
    .line 283
    iget-object v1, p0, Lha/i0;->n:Lx9/i4;

    .line 284
    .line 285
    new-instance v2, Lha/g0;

    .line 286
    .line 287
    const/4 v4, 0x2

    .line 288
    invoke-direct {v2, p0, v4}, Lha/g0;-><init>(Lha/i0;I)V

    .line 289
    .line 290
    .line 291
    iput-object v2, v1, Lc6/g;->e:Lc6/e;

    .line 292
    .line 293
    iget-object v1, p0, Lha/i0;->q:Landroid/widget/EditText;

    .line 294
    .line 295
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    if-eqz v1, :cond_8

    .line 308
    .line 309
    iget-object v1, p0, Lha/i0;->q:Landroid/widget/EditText;

    .line 310
    .line 311
    iget-object v2, p0, Lha/i0;->n:Lx9/i4;

    .line 312
    .line 313
    invoke-virtual {v2}, Lx9/i4;->F()I

    .line 314
    .line 315
    .line 316
    move-result v4

    .line 317
    invoke-virtual {v2, v4}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    check-cast v2, Lx9/x0;

    .line 322
    .line 323
    iget-object v2, v2, Lx9/x0;->a:Ljava/lang/String;

    .line 324
    .line 325
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    .line 327
    .line 328
    :cond_8
    const v1, 0x7f0b0429

    .line 329
    .line 330
    .line 331
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    check-cast v1, Landroid/widget/EditText;

    .line 336
    .line 337
    iput-object v1, p0, Lha/i0;->r:Landroid/widget/EditText;

    .line 338
    .line 339
    const-string v1, "action"

    .line 340
    .line 341
    invoke-virtual {v0, v1}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v2

    .line 345
    if-eqz v2, :cond_9

    .line 346
    .line 347
    iget-object v2, p0, Lha/i0;->r:Landroid/widget/EditText;

    .line 348
    .line 349
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    .line 359
    .line 360
    :cond_9
    const v1, 0x7f0b042e

    .line 361
    .line 362
    .line 363
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    check-cast v1, Landroid/widget/EditText;

    .line 368
    .line 369
    iput-object v1, p0, Lha/i0;->s:Landroid/widget/EditText;

    .line 370
    .line 371
    const-string v1, "category"

    .line 372
    .line 373
    invoke-virtual {v0, v1}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result v2

    .line 377
    if-eqz v2, :cond_a

    .line 378
    .line 379
    iget-object v2, p0, Lha/i0;->s:Landroid/widget/EditText;

    .line 380
    .line 381
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    .line 391
    .line 392
    :cond_a
    const v1, 0x7f0b05eb

    .line 393
    .line 394
    .line 395
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    check-cast v1, Landroid/widget/ImageView;

    .line 400
    .line 401
    new-instance v2, Lha/h0;

    .line 402
    .line 403
    const/4 v4, 0x2

    .line 404
    invoke-direct {v2, p0, v4}, Lha/h0;-><init>(Lha/i0;I)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    .line 409
    .line 410
    const v1, 0x7f0b0431

    .line 411
    .line 412
    .line 413
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    check-cast v1, Landroid/widget/EditText;

    .line 418
    .line 419
    iput-object v1, p0, Lha/i0;->t:Landroid/widget/EditText;

    .line 420
    .line 421
    const-string v1, "data"

    .line 422
    .line 423
    invoke-virtual {v0, v1}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    move-result v2

    .line 427
    if-eqz v2, :cond_b

    .line 428
    .line 429
    iget-object v2, p0, Lha/i0;->t:Landroid/widget/EditText;

    .line 430
    .line 431
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    .line 441
    .line 442
    :cond_b
    const v1, 0x7f0b05ec

    .line 443
    .line 444
    .line 445
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    check-cast v1, Landroid/widget/ImageView;

    .line 450
    .line 451
    new-instance v2, Lha/h0;

    .line 452
    .line 453
    const/4 v4, 0x3

    .line 454
    invoke-direct {v2, p0, v4}, Lha/h0;-><init>(Lha/i0;I)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    .line 459
    .line 460
    const v1, 0x7f0b0451

    .line 461
    .line 462
    .line 463
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    check-cast v1, Landroid/widget/EditText;

    .line 468
    .line 469
    iput-object v1, p0, Lha/i0;->v:Landroid/widget/EditText;

    .line 470
    .line 471
    const-string v1, "dataType"

    .line 472
    .line 473
    invoke-virtual {v0, v1}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    move-result v2

    .line 477
    if-eqz v2, :cond_c

    .line 478
    .line 479
    iget-object v2, p0, Lha/i0;->v:Landroid/widget/EditText;

    .line 480
    .line 481
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    .line 491
    .line 492
    :cond_c
    const v1, 0x7f0b0444

    .line 493
    .line 494
    .line 495
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 496
    .line 497
    .line 498
    move-result-object v1

    .line 499
    check-cast v1, Landroid/widget/EditText;

    .line 500
    .line 501
    iput-object v1, p0, Lha/i0;->w:Landroid/widget/EditText;

    .line 502
    .line 503
    const-string v1, "package"

    .line 504
    .line 505
    invoke-virtual {v0, v1}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 506
    .line 507
    .line 508
    move-result v2

    .line 509
    if-eqz v2, :cond_d

    .line 510
    .line 511
    iget-object v2, p0, Lha/i0;->w:Landroid/widget/EditText;

    .line 512
    .line 513
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v1

    .line 521
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    .line 523
    .line 524
    :cond_d
    const v1, 0x7f0b042f

    .line 525
    .line 526
    .line 527
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 528
    .line 529
    .line 530
    move-result-object v1

    .line 531
    check-cast v1, Landroid/widget/EditText;

    .line 532
    .line 533
    iput-object v1, p0, Lha/i0;->x:Landroid/widget/EditText;

    .line 534
    .line 535
    const-string v1, "class"

    .line 536
    .line 537
    invoke-virtual {v0, v1}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 538
    .line 539
    .line 540
    move-result v2

    .line 541
    if-eqz v2, :cond_e

    .line 542
    .line 543
    iget-object v2, p0, Lha/i0;->x:Landroid/widget/EditText;

    .line 544
    .line 545
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 546
    .line 547
    .line 548
    move-result-object v1

    .line 549
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v1

    .line 553
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    .line 555
    .line 556
    :cond_e
    const v1, 0x7f0b0435

    .line 557
    .line 558
    .line 559
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 560
    .line 561
    .line 562
    move-result-object v1

    .line 563
    check-cast v1, Landroid/widget/EditText;

    .line 564
    .line 565
    iput-object v1, p0, Lha/i0;->y:Landroid/widget/EditText;

    .line 566
    .line 567
    const-string v1, "flags"

    .line 568
    .line 569
    invoke-virtual {v0, v1}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 570
    .line 571
    .line 572
    move-result v2

    .line 573
    if-eqz v2, :cond_f

    .line 574
    .line 575
    iget-object v2, p0, Lha/i0;->y:Landroid/widget/EditText;

    .line 576
    .line 577
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 578
    .line 579
    .line 580
    move-result-object v1

    .line 581
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 582
    .line 583
    .line 584
    move-result v1

    .line 585
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v1

    .line 589
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    .line 591
    .line 592
    :cond_f
    const v1, 0x7f0b05ee

    .line 593
    .line 594
    .line 595
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 596
    .line 597
    .line 598
    move-result-object v1

    .line 599
    check-cast v1, Landroid/widget/ImageView;

    .line 600
    .line 601
    new-instance v2, Lha/h0;

    .line 602
    .line 603
    const/4 v4, 0x4

    .line 604
    invoke-direct {v2, p0, v4}, Lha/h0;-><init>(Lha/i0;I)V

    .line 605
    .line 606
    .line 607
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 608
    .line 609
    .line 610
    const v1, 0x7f0b05ed

    .line 611
    .line 612
    .line 613
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 614
    .line 615
    .line 616
    move-result-object v1

    .line 617
    check-cast v1, Landroid/widget/ImageView;

    .line 618
    .line 619
    new-instance v2, Lha/h0;

    .line 620
    .line 621
    const/4 v4, 0x5

    .line 622
    invoke-direct {v2, p0, v4}, Lha/h0;-><init>(Lha/i0;I)V

    .line 623
    .line 624
    .line 625
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 626
    .line 627
    .line 628
    const v1, 0x7f0b04fe

    .line 629
    .line 630
    .line 631
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 632
    .line 633
    .line 634
    move-result-object v1

    .line 635
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 636
    .line 637
    iput-object v1, p0, Lha/i0;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 638
    .line 639
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 640
    .line 641
    invoke-direct {v2, v3, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    .line 642
    .line 643
    .line 644
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 645
    .line 646
    .line 647
    new-instance v1, Lx9/g;

    .line 648
    .line 649
    iget-object v2, p0, Lha/a4;->a:Landroid/app/Activity;

    .line 650
    .line 651
    invoke-direct {v1, v2, v5}, Lx9/g;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 652
    .line 653
    .line 654
    iput-object v1, p0, Lha/i0;->j:Lx9/g;

    .line 655
    .line 656
    const-string v1, "extras"

    .line 657
    .line 658
    invoke-virtual {v0, v1}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 659
    .line 660
    .line 661
    move-result v0

    .line 662
    if-eqz v0, :cond_10

    .line 663
    .line 664
    invoke-virtual {p1, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 665
    .line 666
    .line 667
    move-result-object p1

    .line 668
    :goto_7
    iget-object v0, p1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 669
    .line 670
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 671
    .line 672
    .line 673
    move-result v0

    .line 674
    if-ge v6, v0, :cond_10

    .line 675
    .line 676
    iget-object v0, p0, Lha/i0;->j:Lx9/g;

    .line 677
    .line 678
    invoke-virtual {p1, v6}, Lz7/o;->l(I)Lz7/p;

    .line 679
    .line 680
    .line 681
    move-result-object v1

    .line 682
    invoke-virtual {v1}, Lz7/p;->g()Lz7/s;

    .line 683
    .line 684
    .line 685
    move-result-object v1

    .line 686
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 687
    .line 688
    .line 689
    add-int/lit8 v6, v6, 0x1

    .line 690
    .line 691
    goto :goto_7

    .line 692
    :cond_10
    iget-object p1, p0, Lha/i0;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 693
    .line 694
    iget-object v0, p0, Lha/i0;->j:Lx9/g;

    .line 695
    .line 696
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 697
    .line 698
    .line 699
    return-void
.end method
