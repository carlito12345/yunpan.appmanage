.class public final Lha/rb;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public final g:Lua/d8;

.field public h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public i:Lx9/r4;

.field public j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public k:Lx9/b5;

.field public l:Landroidx/recyclerview/widget/RecyclerView;

.field public m:Lx9/q4;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lua/d8;)V
    .locals 1

    .line 1
    const v0, 0x7f0e00e8

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    iput-object p3, p0, Lha/rb;->g:Lua/d8;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0b048c

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/widget/ImageView;

    .line 14
    .line 15
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 16
    .line 17
    iget-boolean v3, v2, Lcom/yunpan/appmanage/util/w;->w0:Z

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    const v3, 0x7f080234

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const v3, 0x7f080237

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 29
    .line 30
    .line 31
    const v3, 0x7f0b048b

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    new-instance v4, Lha/f;

    .line 39
    .line 40
    const/4 v5, 0x3

    .line 41
    invoke-direct {v4, p1, v5}, Lha/f;-><init>(Landroid/widget/ImageView;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    .line 46
    .line 47
    const p1, 0x7f0b0508

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 55
    .line 56
    iput-object p1, p0, Lha/rb;->l:Landroidx/recyclerview/widget/RecyclerView;

    .line 57
    .line 58
    new-instance p1, Lx9/q4;

    .line 59
    .line 60
    invoke-direct {p1}, Lx9/q4;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object p1, p0, Lha/rb;->m:Lx9/q4;

    .line 64
    .line 65
    new-instance v3, Lx9/x0;

    .line 66
    .line 67
    iget-boolean v4, v2, Lcom/yunpan/appmanage/util/w;->t0:Z

    .line 68
    .line 69
    const-string v5, "\u540d\u79f0\u6392\u5e8f"

    .line 70
    .line 71
    invoke-direct {v3, v5, v4}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lha/rb;->m:Lx9/q4;

    .line 78
    .line 79
    new-instance v3, Lx9/x0;

    .line 80
    .line 81
    iget-boolean v4, v2, Lcom/yunpan/appmanage/util/w;->t0:Z

    .line 82
    .line 83
    xor-int/2addr v4, v1

    .line 84
    const-string v5, "\u65f6\u95f4\u6392\u5e8f"

    .line 85
    .line 86
    invoke-direct {v3, v5, v4}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lha/rb;->m:Lx9/q4;

    .line 93
    .line 94
    new-instance v3, Lx9/x0;

    .line 95
    .line 96
    iget-boolean v4, v2, Lcom/yunpan/appmanage/util/w;->u0:Z

    .line 97
    .line 98
    const-string v5, "\u5305\u62ec\u9690\u85cf\u6587\u4ef6"

    .line 99
    .line 100
    invoke-direct {v3, v5, v4}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 107
    .line 108
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 109
    .line 110
    iget-boolean v3, p1, Lcom/yunpan/appmanage/util/k;->K:Z

    .line 111
    .line 112
    if-eqz v3, :cond_1

    .line 113
    .line 114
    iget-object v3, p0, Lha/rb;->m:Lx9/q4;

    .line 115
    .line 116
    new-instance v4, Lx9/x0;

    .line 117
    .line 118
    iget-boolean v2, v2, Lcom/yunpan/appmanage/util/w;->v0:Z

    .line 119
    .line 120
    const-string v5, "\u5305\u62ec/Android/data/"

    .line 121
    .line 122
    invoke-direct {v4, v5, v2}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3, v4}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    :cond_1
    iget-object v2, p0, Lha/rb;->l:Landroidx/recyclerview/widget/RecyclerView;

    .line 129
    .line 130
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 131
    .line 132
    iget-object v4, p0, Lha/a4;->b:Landroid/content/Context;

    .line 133
    .line 134
    invoke-direct {v3, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 138
    .line 139
    .line 140
    iget-object v2, p0, Lha/rb;->l:Landroidx/recyclerview/widget/RecyclerView;

    .line 141
    .line 142
    iget-object v3, p0, Lha/rb;->m:Lx9/q4;

    .line 143
    .line 144
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 145
    .line 146
    .line 147
    iget-object v2, p0, Lha/rb;->m:Lx9/q4;

    .line 148
    .line 149
    new-instance v3, Lha/pb;

    .line 150
    .line 151
    invoke-direct {v3, p0, v0}, Lha/pb;-><init>(Lha/rb;I)V

    .line 152
    .line 153
    .line 154
    iput-object v3, v2, Lc6/g;->e:Lc6/e;

    .line 155
    .line 156
    const v2, 0x7f0b0509

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    check-cast v2, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 164
    .line 165
    iput-object v2, p0, Lha/rb;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 166
    .line 167
    new-instance v3, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 168
    .line 169
    invoke-direct {v3, v4, v0, v0}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 173
    .line 174
    .line 175
    new-instance v2, Lx9/r4;

    .line 176
    .line 177
    invoke-direct {v2}, Lx9/r4;-><init>()V

    .line 178
    .line 179
    .line 180
    iput-object v2, p0, Lha/rb;->i:Lx9/r4;

    .line 181
    .line 182
    sget-object v2, Lfa/g0;->a:Lfa/h0;

    .line 183
    .line 184
    invoke-virtual {v2}, Lfa/h0;->d()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    if-nez v3, :cond_2

    .line 193
    .line 194
    iget-object v3, p0, Lha/rb;->i:Lx9/r4;

    .line 195
    .line 196
    new-instance v5, Lx9/w3;

    .line 197
    .line 198
    invoke-virtual {v2}, Lfa/h0;->d()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    const-string v6, "\u5185\u90e8\u5b58\u50a8"

    .line 203
    .line 204
    invoke-direct {v5, v6, v0, v2, v1}, Lx9/w3;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v3, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    :cond_2
    iget-object p1, p1, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 211
    .line 212
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    if-eqz v2, :cond_3

    .line 221
    .line 222
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    check-cast v2, Ljava/lang/String;

    .line 227
    .line 228
    iget-object v3, p0, Lha/rb;->i:Lx9/r4;

    .line 229
    .line 230
    new-instance v5, Lx9/w3;

    .line 231
    .line 232
    sget-object v6, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 233
    .line 234
    iget-boolean v6, v6, Lcom/yunpan/appmanage/util/w;->x0:Z

    .line 235
    .line 236
    const-string v7, "U\u76d8"

    .line 237
    .line 238
    invoke-direct {v5, v7, v0, v2, v6}, Lx9/w3;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v3, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    goto :goto_1

    .line 245
    :cond_3
    iget-object p1, p0, Lha/rb;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 246
    .line 247
    iget-object v2, p0, Lha/rb;->i:Lx9/r4;

    .line 248
    .line 249
    invoke-virtual {p1, v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 250
    .line 251
    .line 252
    iget-object p1, p0, Lha/rb;->i:Lx9/r4;

    .line 253
    .line 254
    new-instance v2, Lha/pb;

    .line 255
    .line 256
    const/4 v3, 0x2

    .line 257
    invoke-direct {v2, p0, v3}, Lha/pb;-><init>(Lha/rb;I)V

    .line 258
    .line 259
    .line 260
    iput-object v2, p1, Lc6/g;->e:Lc6/e;

    .line 261
    .line 262
    sget-object p1, Lfa/g0;->a:Lfa/h0;

    .line 263
    .line 264
    invoke-virtual {p1}, Lfa/h0;->d()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 269
    .line 270
    .line 271
    move-result p1

    .line 272
    const v2, 0x7f0b058f

    .line 273
    .line 274
    .line 275
    const/16 v3, 0x8

    .line 276
    .line 277
    if-nez p1, :cond_4

    .line 278
    .line 279
    iget-object p1, p0, Lha/rb;->i:Lx9/r4;

    .line 280
    .line 281
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 282
    .line 283
    .line 284
    move-result p1

    .line 285
    if-ne p1, v1, :cond_4

    .line 286
    .line 287
    iget-object p1, p0, Lha/rb;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 288
    .line 289
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 297
    .line 298
    .line 299
    goto :goto_2

    .line 300
    :cond_4
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 301
    .line 302
    iget-boolean p1, p1, Lcom/yunpan/appmanage/util/k;->w:Z

    .line 303
    .line 304
    if-eqz p1, :cond_5

    .line 305
    .line 306
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 307
    .line 308
    iput-boolean v0, p1, Lcom/yunpan/appmanage/util/w;->x0:Z

    .line 309
    .line 310
    const-string v5, "mFile_search_usb"

    .line 311
    .line 312
    :try_start_0
    iget-object v6, p1, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 313
    .line 314
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 315
    .line 316
    invoke-virtual {v6, v5, v7}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    .line 318
    .line 319
    :catch_0
    invoke-virtual {p1}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 320
    .line 321
    .line 322
    iget-object p1, p0, Lha/rb;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 323
    .line 324
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 332
    .line 333
    .line 334
    :cond_5
    :goto_2
    const p1, 0x7f0b04f1

    .line 335
    .line 336
    .line 337
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 342
    .line 343
    iput-object p1, p0, Lha/rb;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 344
    .line 345
    new-instance p1, Lx9/b5;

    .line 346
    .line 347
    invoke-direct {p1}, Lx9/b5;-><init>()V

    .line 348
    .line 349
    .line 350
    iput-object p1, p0, Lha/rb;->k:Lx9/b5;

    .line 351
    .line 352
    iget-object p1, p0, Lha/rb;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 353
    .line 354
    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 355
    .line 356
    const/4 v3, 0x5

    .line 357
    invoke-direct {v2, v4, v3}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 361
    .line 362
    .line 363
    iget-object p1, p0, Lha/rb;->k:Lx9/b5;

    .line 364
    .line 365
    const-string v2, "\u5b89\u88c5\u5305"

    .line 366
    .line 367
    invoke-virtual {p1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 368
    .line 369
    .line 370
    iget-object p1, p0, Lha/rb;->k:Lx9/b5;

    .line 371
    .line 372
    const-string v2, "\u56fe\u7247"

    .line 373
    .line 374
    invoke-virtual {p1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    iget-object p1, p0, Lha/rb;->k:Lx9/b5;

    .line 378
    .line 379
    const-string v2, "\u89c6\u9891"

    .line 380
    .line 381
    invoke-virtual {p1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    iget-object p1, p0, Lha/rb;->k:Lx9/b5;

    .line 385
    .line 386
    const-string v2, "\u97f3\u4e50"

    .line 387
    .line 388
    invoke-virtual {p1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 389
    .line 390
    .line 391
    iget-object p1, p0, Lha/rb;->k:Lx9/b5;

    .line 392
    .line 393
    const-string v2, "\u6587\u6863"

    .line 394
    .line 395
    invoke-virtual {p1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 396
    .line 397
    .line 398
    iget-object p1, p0, Lha/rb;->k:Lx9/b5;

    .line 399
    .line 400
    const-string v2, "\u538b\u7f29\u5305"

    .line 401
    .line 402
    invoke-virtual {p1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 403
    .line 404
    .line 405
    iget-object p1, p0, Lha/rb;->k:Lx9/b5;

    .line 406
    .line 407
    const-string v2, "\u5173\u952e\u5b57"

    .line 408
    .line 409
    invoke-virtual {p1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 410
    .line 411
    .line 412
    iget-object p1, p0, Lha/rb;->k:Lx9/b5;

    .line 413
    .line 414
    const-string v2, ">10M"

    .line 415
    .line 416
    invoke-virtual {p1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 417
    .line 418
    .line 419
    iget-object p1, p0, Lha/rb;->k:Lx9/b5;

    .line 420
    .line 421
    const-string v2, ">100M"

    .line 422
    .line 423
    invoke-virtual {p1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 424
    .line 425
    .line 426
    iget-object p1, p0, Lha/rb;->k:Lx9/b5;

    .line 427
    .line 428
    const-string v2, "\u4e24\u5929\u5185"

    .line 429
    .line 430
    invoke-virtual {p1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 431
    .line 432
    .line 433
    iget-object p1, p0, Lha/rb;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 434
    .line 435
    iget-object v2, p0, Lha/rb;->k:Lx9/b5;

    .line 436
    .line 437
    invoke-virtual {p1, v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 438
    .line 439
    .line 440
    iget-object p1, p0, Lha/rb;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 441
    .line 442
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 443
    .line 444
    .line 445
    iget-object p1, p0, Lha/rb;->k:Lx9/b5;

    .line 446
    .line 447
    new-instance v0, Lha/pb;

    .line 448
    .line 449
    invoke-direct {v0, p0, v1}, Lha/pb;-><init>(Lha/rb;I)V

    .line 450
    .line 451
    .line 452
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 453
    .line 454
    iget-object p1, p0, Lha/rb;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 455
    .line 456
    new-instance v0, Lg2/c;

    .line 457
    .line 458
    const/16 v1, 0x19

    .line 459
    .line 460
    invoke-direct {v0, v1}, Lg2/c;-><init>(I)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 464
    .line 465
    .line 466
    iget-object p1, p0, Lha/rb;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 467
    .line 468
    new-instance v0, Lha/qb;

    .line 469
    .line 470
    invoke-direct {v0}, Lha/qb;-><init>()V

    .line 471
    .line 472
    .line 473
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnItemListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;)V

    .line 474
    .line 475
    .line 476
    return-void
.end method
