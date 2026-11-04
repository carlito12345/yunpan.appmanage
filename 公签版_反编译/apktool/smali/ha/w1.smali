.class public final Lha/w1;
.super Lha/a4;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public A:Ljava/lang/String;

.field public B:Lz7/o;

.field public final g:Lz7/s;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/ImageView;

.field public k:Landroid/widget/EditText;

.field public l:Landroidx/recyclerview/widget/RecyclerView;

.field public m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public n:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public p:Lha/n6;

.field public q:Lx9/w0;

.field public r:Lx9/i4;

.field public s:Lx9/s2;

.field public t:Z

.field public v:Ljava/lang/String;

.field public w:I

.field public x:I

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lda/g;Lz7/s;)V
    .locals 1

    .line 1
    const v0, 0x7f0e0088

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lha/w1;->t:Z

    .line 9
    .line 10
    const-string p2, ""

    .line 11
    .line 12
    iput-object p2, p0, Lha/w1;->v:Ljava/lang/String;

    .line 13
    .line 14
    iput p1, p0, Lha/w1;->w:I

    .line 15
    .line 16
    iput p1, p0, Lha/w1;->x:I

    .line 17
    .line 18
    iput-object p2, p0, Lha/w1;->y:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p2, p0, Lha/w1;->z:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p2, p0, Lha/w1;->A:Ljava/lang/String;

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lha/w1;->B:Lz7/o;

    .line 26
    .line 27
    iput-object p3, p0, Lha/w1;->g:Lz7/s;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x7f0b03b4

    .line 6
    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lha/w1;->p:Lha/n6;

    .line 11
    .line 12
    new-instance v0, Lha/u1;

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    invoke-direct {v0, p0, v1}, Lha/u1;-><init>(Lha/w1;I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p1, Lha/n6;->g:Lea/g;

    .line 19
    .line 20
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 21
    .line 22
    .line 23
    goto/16 :goto_5

    .line 24
    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const v1, 0x7f0b03ad

    .line 30
    .line 31
    .line 32
    if-ne v0, v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_5

    .line 38
    .line 39
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const v1, 0x7f0b0524

    .line 44
    .line 45
    .line 46
    if-ne v0, v1, :cond_2

    .line 47
    .line 48
    iget-object p1, p0, Lha/w1;->k:Landroid/widget/EditText;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object v0, p0, Lha/w1;->k:Landroid/widget/EditText;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    const-string v1, "\n\n"

    .line 61
    .line 62
    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 63
    .line 64
    .line 65
    goto/16 :goto_5

    .line 66
    .line 67
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    const v1, 0x7f0b0568

    .line 72
    .line 73
    .line 74
    if-ne v0, v1, :cond_4

    .line 75
    .line 76
    iget-boolean p1, p0, Lha/w1;->t:Z

    .line 77
    .line 78
    xor-int/lit8 v0, p1, 0x1

    .line 79
    .line 80
    iput-boolean v0, p0, Lha/w1;->t:Z

    .line 81
    .line 82
    iget-object v0, p0, Lha/w1;->j:Landroid/widget/ImageView;

    .line 83
    .line 84
    if-nez p1, :cond_3

    .line 85
    .line 86
    const p1, 0x7f080234

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    const p1, 0x7f080237

    .line 91
    .line 92
    .line 93
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    .line 95
    .line 96
    goto/16 :goto_5

    .line 97
    .line 98
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    iget-object v1, p0, Lha/a4;->a:Landroid/app/Activity;

    .line 103
    .line 104
    iget-object v2, p0, Lha/a4;->b:Landroid/content/Context;

    .line 105
    .line 106
    const v3, 0x7f0b03ba

    .line 107
    .line 108
    .line 109
    if-ne v0, v3, :cond_5

    .line 110
    .line 111
    new-instance p1, Lha/q2;

    .line 112
    .line 113
    new-instance v0, Lha/u1;

    .line 114
    .line 115
    const/4 v3, 0x4

    .line 116
    invoke-direct {v0, p0, v3}, Lha/u1;-><init>(Lha/w1;I)V

    .line 117
    .line 118
    .line 119
    const/4 v3, 0x3

    .line 120
    invoke-direct {p1, v1, v2, v3, v0}, Lha/q2;-><init>(Landroid/app/Activity;Landroid/content/Context;ILha/p2;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 124
    .line 125
    .line 126
    goto/16 :goto_5

    .line 127
    .line 128
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    const v3, 0x7f0b034a

    .line 133
    .line 134
    .line 135
    const-string v4, "maps"

    .line 136
    .line 137
    const-string v5, "isOpen"

    .line 138
    .line 139
    if-ne v0, v3, :cond_6

    .line 140
    .line 141
    new-instance p1, Lz7/s;

    .line 142
    .line 143
    invoke-direct {p1}, Lz7/s;-><init>()V

    .line 144
    .line 145
    .line 146
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 147
    .line 148
    invoke-virtual {p1, v5, v0}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 149
    .line 150
    .line 151
    const-string v0, "name"

    .line 152
    .line 153
    const-string v3, ""

    .line 154
    .line 155
    invoke-virtual {p1, v0, v3}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    new-instance v0, Lz7/o;

    .line 159
    .line 160
    invoke-direct {v0}, Lz7/o;-><init>()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, v4, v0}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 164
    .line 165
    .line 166
    new-instance v0, Lha/z1;

    .line 167
    .line 168
    new-instance v3, Ld2/w;

    .line 169
    .line 170
    const/16 v4, 0x9

    .line 171
    .line 172
    invoke-direct {v3, p0, v4, p1}, Ld2/w;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    invoke-direct {v0, v1, v2, p1, v3}, Lha/z1;-><init>(Landroid/app/Activity;Landroid/content/Context;Lz7/s;Lea/b;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 179
    .line 180
    .line 181
    goto/16 :goto_5

    .line 182
    .line 183
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    const v3, 0x7f0b056a

    .line 188
    .line 189
    .line 190
    if-ne v0, v3, :cond_7

    .line 191
    .line 192
    new-instance p1, Lha/d2;

    .line 193
    .line 194
    iget-object v0, p0, Lha/w1;->A:Ljava/lang/String;

    .line 195
    .line 196
    new-instance v3, Lha/u1;

    .line 197
    .line 198
    const/4 v4, 0x5

    .line 199
    invoke-direct {v3, p0, v4}, Lha/u1;-><init>(Lha/w1;I)V

    .line 200
    .line 201
    .line 202
    invoke-direct {p1, v1, v2, v0, v3}, Lha/d2;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Lha/u1;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 206
    .line 207
    .line 208
    goto/16 :goto_5

    .line 209
    .line 210
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    const v0, 0x7f0b03f3

    .line 215
    .line 216
    .line 217
    if-ne p1, v0, :cond_11

    .line 218
    .line 219
    iget-object p1, p0, Lha/w1;->k:Landroid/widget/EditText;

    .line 220
    .line 221
    invoke-static {p1}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    iget-boolean v0, p0, Lha/w1;->t:Z

    .line 226
    .line 227
    const/4 v1, 0x1

    .line 228
    const/4 v3, 0x0

    .line 229
    if-eqz v0, :cond_e

    .line 230
    .line 231
    iget-object v0, p0, Lha/w1;->v:Ljava/lang/String;

    .line 232
    .line 233
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-nez v0, :cond_d

    .line 238
    .line 239
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-eqz v0, :cond_8

    .line 244
    .line 245
    goto :goto_2

    .line 246
    :cond_8
    iget-object v0, p0, Lha/w1;->s:Lx9/s2;

    .line 247
    .line 248
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    if-nez v0, :cond_9

    .line 253
    .line 254
    iget-object v0, p0, Lha/w1;->q:Lx9/w0;

    .line 255
    .line 256
    invoke-virtual {v0, v3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    check-cast v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 261
    .line 262
    iget-boolean v0, v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->boolValue:Z

    .line 263
    .line 264
    if-nez v0, :cond_9

    .line 265
    .line 266
    iget-object v0, p0, Lha/w1;->q:Lx9/w0;

    .line 267
    .line 268
    invoke-virtual {v0, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    check-cast v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 273
    .line 274
    iget-boolean v0, v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->boolValue:Z

    .line 275
    .line 276
    if-nez v0, :cond_9

    .line 277
    .line 278
    const-string p1, "\u8bf7\u6dfb\u52a0\u81f3\u5c11\u4e00\u4e2a\u6620\u5c04"

    .line 279
    .line 280
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 281
    .line 282
    .line 283
    return-void

    .line 284
    :cond_9
    iget v0, p0, Lha/w1;->w:I

    .line 285
    .line 286
    if-nez v0, :cond_a

    .line 287
    .line 288
    iget-object v0, p0, Lha/w1;->k:Landroid/widget/EditText;

    .line 289
    .line 290
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    const-string v6, "\n"

    .line 299
    .line 300
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    if-nez v0, :cond_e

    .line 305
    .line 306
    const-string p1, "\u8bf7\u7528\u6362\u884c\u6765\u5206\u5272\u8bed\u97f3\u65e5\u5fd7\u7684\u524d\u4e0e\u540e\uff0c\u6293\u53d6\u6587\u5b57"

    .line 307
    .line 308
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 309
    .line 310
    .line 311
    return-void

    .line 312
    :cond_a
    if-ne v0, v1, :cond_e

    .line 313
    .line 314
    const-string v0, "("

    .line 315
    .line 316
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    const-string v6, "\u8bf7\u586b\u5199\u6b63\u786e\u7684\u6b63\u5219\u8868\u8fbe\u5f0f"

    .line 321
    .line 322
    if-eqz v0, :cond_c

    .line 323
    .line 324
    const-string v0, ")"

    .line 325
    .line 326
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 327
    .line 328
    .line 329
    move-result v0

    .line 330
    if-nez v0, :cond_b

    .line 331
    .line 332
    goto :goto_1

    .line 333
    :cond_b
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    .line 335
    .line 336
    goto :goto_3

    .line 337
    :catch_0
    invoke-static {v6}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 338
    .line 339
    .line 340
    return-void

    .line 341
    :cond_c
    :goto_1
    invoke-static {v6}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 342
    .line 343
    .line 344
    return-void

    .line 345
    :cond_d
    :goto_2
    const-string p1, "\u8bf7\u9009\u62e9\u65e5\u5fd7"

    .line 346
    .line 347
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 348
    .line 349
    .line 350
    return-void

    .line 351
    :cond_e
    :goto_3
    new-instance v0, Lz7/s;

    .line 352
    .line 353
    invoke-direct {v0}, Lz7/s;-><init>()V

    .line 354
    .line 355
    .line 356
    iget-boolean v6, p0, Lha/w1;->t:Z

    .line 357
    .line 358
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 359
    .line 360
    .line 361
    move-result-object v6

    .line 362
    invoke-virtual {v0, v5, v6}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 363
    .line 364
    .line 365
    iget v5, p0, Lha/w1;->w:I

    .line 366
    .line 367
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 368
    .line 369
    .line 370
    move-result-object v5

    .line 371
    const-string v6, "mode"

    .line 372
    .line 373
    invoke-virtual {v0, v6, v5}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 374
    .line 375
    .line 376
    iget v5, p0, Lha/w1;->x:I

    .line 377
    .line 378
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 379
    .line 380
    .line 381
    move-result-object v5

    .line 382
    const-string v6, "mapIndex"

    .line 383
    .line 384
    invoke-virtual {v0, v6, v5}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 385
    .line 386
    .line 387
    const-string v5, "mapAppName"

    .line 388
    .line 389
    iget-object v6, p0, Lha/w1;->y:Ljava/lang/String;

    .line 390
    .line 391
    invoke-virtual {v0, v5, v6}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    const-string v5, "mapAppPackage"

    .line 395
    .line 396
    iget-object v6, p0, Lha/w1;->z:Ljava/lang/String;

    .line 397
    .line 398
    invoke-virtual {v0, v5, v6}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    const-string v5, "tag"

    .line 402
    .line 403
    iget-object v6, p0, Lha/w1;->v:Ljava/lang/String;

    .line 404
    .line 405
    invoke-virtual {v0, v5, v6}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    const-string v5, "log"

    .line 409
    .line 410
    invoke-virtual {v0, v5, p1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    const-string p1, "nav_guidewords"

    .line 414
    .line 415
    iget-object v5, p0, Lha/w1;->A:Ljava/lang/String;

    .line 416
    .line 417
    invoke-virtual {v0, p1, v5}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    iget-object p1, p0, Lha/w1;->q:Lx9/w0;

    .line 421
    .line 422
    invoke-virtual {p1, v3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object p1

    .line 426
    check-cast p1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 427
    .line 428
    iget-boolean p1, p1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->boolValue:Z

    .line 429
    .line 430
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 431
    .line 432
    .line 433
    move-result-object p1

    .line 434
    const-string v5, "isNavTo"

    .line 435
    .line 436
    invoke-virtual {v0, v5, p1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 437
    .line 438
    .line 439
    iget-object p1, p0, Lha/w1;->q:Lx9/w0;

    .line 440
    .line 441
    invoke-virtual {p1, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object p1

    .line 445
    check-cast p1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 446
    .line 447
    iget-boolean p1, p1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->boolValue:Z

    .line 448
    .line 449
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 450
    .line 451
    .line 452
    move-result-object p1

    .line 453
    const-string v1, "isOpenUserApp"

    .line 454
    .line 455
    invoke-virtual {v0, v1, p1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 456
    .line 457
    .line 458
    iget-object p1, p0, Lha/w1;->q:Lx9/w0;

    .line 459
    .line 460
    const/4 v1, 0x2

    .line 461
    invoke-virtual {p1, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object p1

    .line 465
    check-cast p1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 466
    .line 467
    iget-boolean p1, p1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->boolValue:Z

    .line 468
    .line 469
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 470
    .line 471
    .line 472
    move-result-object p1

    .line 473
    const-string v1, "isShowText"

    .line 474
    .line 475
    invoke-virtual {v0, v1, p1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 476
    .line 477
    .line 478
    iget-object p1, p0, Lha/w1;->B:Lz7/o;

    .line 479
    .line 480
    if-eqz p1, :cond_f

    .line 481
    .line 482
    iget-object p1, p1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 483
    .line 484
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 485
    .line 486
    .line 487
    move-result p1

    .line 488
    if-nez p1, :cond_f

    .line 489
    .line 490
    const-string p1, "match_map"

    .line 491
    .line 492
    iget-object v1, p0, Lha/w1;->B:Lz7/o;

    .line 493
    .line 494
    invoke-virtual {v0, p1, v1}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 495
    .line 496
    .line 497
    :cond_f
    new-instance p1, Lz7/o;

    .line 498
    .line 499
    invoke-direct {p1}, Lz7/o;-><init>()V

    .line 500
    .line 501
    .line 502
    :goto_4
    iget-object v1, p0, Lha/w1;->s:Lx9/s2;

    .line 503
    .line 504
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 505
    .line 506
    .line 507
    move-result v1

    .line 508
    if-ge v3, v1, :cond_10

    .line 509
    .line 510
    iget-object v1, p0, Lha/w1;->s:Lx9/s2;

    .line 511
    .line 512
    invoke-virtual {v1, v3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v1

    .line 516
    check-cast v1, Lz7/p;

    .line 517
    .line 518
    invoke-virtual {p1, v1}, Lz7/o;->k(Lz7/p;)V

    .line 519
    .line 520
    .line 521
    add-int/lit8 v3, v3, 0x1

    .line 522
    .line 523
    goto :goto_4

    .line 524
    :cond_10
    invoke-virtual {v0, v4, p1}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 525
    .line 526
    .line 527
    iget-object p1, p0, Lha/w1;->g:Lz7/s;

    .line 528
    .line 529
    const-string v1, "voice"

    .line 530
    .line 531
    invoke-virtual {p1, v1, v0}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 532
    .line 533
    .line 534
    invoke-static {v2, p1}, Lq4/a;->V(Landroid/content/Context;Lz7/s;)V

    .line 535
    .line 536
    .line 537
    invoke-static {v2}, Lta/m;->g(Landroid/content/Context;)V

    .line 538
    .line 539
    .line 540
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 541
    .line 542
    .line 543
    :cond_11
    :goto_5
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lha/w1;->g:Lz7/s;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const-string p1, "\u6ca1\u6709\u6570\u636e"

    .line 9
    .line 10
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const v0, 0x7f0b056a

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    .line 26
    .line 27
    const v0, 0x7f0b05c2

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/widget/TextView;

    .line 35
    .line 36
    iput-object v0, p0, Lha/w1;->h:Landroid/widget/TextView;

    .line 37
    .line 38
    const v0, 0x7f0b03b4

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    .line 47
    .line 48
    const v0, 0x7f0b03ad

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    .line 57
    .line 58
    const v0, 0x7f0b034a

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    .line 67
    .line 68
    const v0, 0x7f0b03f3

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    .line 77
    .line 78
    const v0, 0x7f0b0568

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    .line 87
    .line 88
    const v0, 0x7f0b03ba

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    .line 97
    .line 98
    const v0, 0x7f0b0524

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    .line 107
    .line 108
    const v0, 0x7f0b0569

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Landroid/widget/ImageView;

    .line 116
    .line 117
    iput-object v0, p0, Lha/w1;->j:Landroid/widget/ImageView;

    .line 118
    .line 119
    const v0, 0x7f0b043a

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    check-cast v0, Landroid/widget/EditText;

    .line 127
    .line 128
    iput-object v0, p0, Lha/w1;->k:Landroid/widget/EditText;

    .line 129
    .line 130
    const v0, 0x7f0b0507

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 138
    .line 139
    iput-object v0, p0, Lha/w1;->l:Landroidx/recyclerview/widget/RecyclerView;

    .line 140
    .line 141
    const v0, 0x7f0b0506

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 149
    .line 150
    iput-object v0, p0, Lha/w1;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 151
    .line 152
    const v0, 0x7f0b04f8

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 160
    .line 161
    iput-object v0, p0, Lha/w1;->n:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 162
    .line 163
    const v0, 0x7f0b0591

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    check-cast v0, Landroid/widget/TextView;

    .line 171
    .line 172
    iput-object v0, p0, Lha/w1;->i:Landroid/widget/TextView;

    .line 173
    .line 174
    iget-object v0, p0, Lha/w1;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 175
    .line 176
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 177
    .line 178
    iget-object v2, p0, Lha/a4;->b:Landroid/content/Context;

    .line 179
    .line 180
    const/4 v3, 0x3

    .line 181
    invoke-direct {v1, v2, v3}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 185
    .line 186
    .line 187
    new-instance v0, Lx9/s2;

    .line 188
    .line 189
    invoke-direct {v0}, Lx9/s2;-><init>()V

    .line 190
    .line 191
    .line 192
    iput-object v0, p0, Lha/w1;->s:Lx9/s2;

    .line 193
    .line 194
    iget-object v1, p0, Lha/w1;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 195
    .line 196
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 197
    .line 198
    .line 199
    new-instance v0, Ld6/a;

    .line 200
    .line 201
    invoke-direct {v0}, Ld6/a;-><init>()V

    .line 202
    .line 203
    .line 204
    const/16 v1, 0xf

    .line 205
    .line 206
    iput v1, v0, Ld6/a;->h:I

    .line 207
    .line 208
    const/4 v1, 0x0

    .line 209
    iput-boolean v1, v0, Ld6/a;->g:Z

    .line 210
    .line 211
    iget-object v4, p0, Lha/w1;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 212
    .line 213
    invoke-virtual {v0, v4}, Ld6/a;->d(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 214
    .line 215
    .line 216
    iget-object v4, p0, Lha/w1;->s:Lx9/s2;

    .line 217
    .line 218
    invoke-virtual {v0, v4}, Ld6/a;->g(Le6/a;)V

    .line 219
    .line 220
    .line 221
    iget-object v0, p0, Lha/w1;->s:Lx9/s2;

    .line 222
    .line 223
    new-instance v4, Lha/u1;

    .line 224
    .line 225
    const/4 v5, 0x0

    .line 226
    invoke-direct {v4, p0, v5}, Lha/u1;-><init>(Lha/w1;I)V

    .line 227
    .line 228
    .line 229
    iput-object v4, v0, Lc6/g;->e:Lc6/e;

    .line 230
    .line 231
    iget-object v0, p0, Lha/w1;->n:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 232
    .line 233
    new-instance v4, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 234
    .line 235
    const/4 v5, 0x1

    .line 236
    invoke-direct {v4, v2, v5, v1}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 240
    .line 241
    .line 242
    new-instance v0, Lx9/w0;

    .line 243
    .line 244
    invoke-direct {v0}, Lx9/w0;-><init>()V

    .line 245
    .line 246
    .line 247
    iput-object v0, p0, Lha/w1;->q:Lx9/w0;

    .line 248
    .line 249
    new-instance v4, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 250
    .line 251
    const-string v6, "\u5bfc\u822a\u5230XXX \u3001\u5bfc\u822a\u5230\u5bb6\u3001\u5bfc\u822a\u5230\u516c\u53f8(\u5982\u679c\u60a8\u8bed\u97f3\u672c\u8eab\u5c31\u652f\u6301\uff0c\u90a3\u4e48\u4e0d\u8981\u52fe\u9009)"

    .line 252
    .line 253
    invoke-direct {v4, v6, v1, v1}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;IZ)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v4}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    iget-object v0, p0, Lha/w1;->q:Lx9/w0;

    .line 260
    .line 261
    new-instance v4, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 262
    .line 263
    const-string v6, "\u6253\u5f00XXX (\u4e2a\u4eba\u5e94\u7528\u7684\u5168\u79f0\uff0c\u5982\u679c\u60a8\u8bed\u97f3\u672c\u8eab\u5c31\u652f\u6301\uff0c\u90a3\u4e48\u4e0d\u8981\u52fe\u9009)"

    .line 264
    .line 265
    invoke-direct {v4, v6, v1, v1}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;IZ)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v4}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    iget-object v0, p0, Lha/w1;->q:Lx9/w0;

    .line 272
    .line 273
    new-instance v4, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 274
    .line 275
    const-string v6, "\u5f39\u7a97\u663e\u793a\u8bc6\u522b\u540e\u7684\u6587\u672c (\u65b9\u4fbf\u6d4b\u8bd5\u662f\u5426\u80fd\u6b63\u5e38\u83b7\u53d6\u8bc6\u522b\u540e\u7684\u6587\u672c)"

    .line 276
    .line 277
    invoke-direct {v4, v6, v1, v1}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;IZ)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0, v4}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    iget-object v0, p0, Lha/w1;->q:Lx9/w0;

    .line 284
    .line 285
    new-instance v4, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 286
    .line 287
    const-string v6, "\u5339\u914d\u5230\u5173\u952e\u5b57\u65f6\uff0c\u6267\u884c\u67d0\u4e9b\u7279\u6b8a\u64cd\u4f5c(\u7528\u4e8e\u4e2d\u65ad\u8bed\u97f3\u6216\u4e2d\u65ad\u7cfb\u7edf\u63d0\u793a)"

    .line 288
    .line 289
    invoke-direct {v4, v6, v1, v1}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;IZ)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, v4}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    iget-object v0, p0, Lha/w1;->n:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 296
    .line 297
    iget-object v4, p0, Lha/w1;->q:Lx9/w0;

    .line 298
    .line 299
    invoke-virtual {v0, v4}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 300
    .line 301
    .line 302
    iget-object v0, p0, Lha/w1;->q:Lx9/w0;

    .line 303
    .line 304
    new-instance v4, Lha/u1;

    .line 305
    .line 306
    const/4 v6, 0x1

    .line 307
    invoke-direct {v4, p0, v6}, Lha/u1;-><init>(Lha/w1;I)V

    .line 308
    .line 309
    .line 310
    iput-object v4, v0, Lc6/g;->e:Lc6/e;

    .line 311
    .line 312
    iget-object v0, p1, Lz7/s;->a:Lb8/n;

    .line 313
    .line 314
    const-string v4, "voice"

    .line 315
    .line 316
    invoke-virtual {v0, v4}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    if-eqz v0, :cond_b

    .line 321
    .line 322
    invoke-virtual {p1, v4}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    const-string v0, "isOpen"

    .line 327
    .line 328
    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-virtual {v0}, Lz7/p;->b()Z

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    iput-boolean v0, p0, Lha/w1;->t:Z

    .line 337
    .line 338
    const-string v0, "mode"

    .line 339
    .line 340
    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    invoke-virtual {v0}, Lz7/p;->e()I

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    iput v0, p0, Lha/w1;->w:I

    .line 349
    .line 350
    iget-object v0, p1, Lz7/s;->a:Lb8/n;

    .line 351
    .line 352
    const-string v4, "mapIndex"

    .line 353
    .line 354
    invoke-virtual {v0, v4}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v6

    .line 358
    if-eqz v6, :cond_1

    .line 359
    .line 360
    invoke-virtual {p1, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 361
    .line 362
    .line 363
    move-result-object v4

    .line 364
    invoke-virtual {v4}, Lz7/p;->e()I

    .line 365
    .line 366
    .line 367
    move-result v4

    .line 368
    iput v4, p0, Lha/w1;->x:I

    .line 369
    .line 370
    :cond_1
    const-string v4, "tag"

    .line 371
    .line 372
    invoke-virtual {p1, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 373
    .line 374
    .line 375
    move-result-object v4

    .line 376
    invoke-virtual {v4}, Lz7/p;->i()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v4

    .line 380
    iput-object v4, p0, Lha/w1;->v:Ljava/lang/String;

    .line 381
    .line 382
    iget-object v4, p0, Lha/w1;->k:Landroid/widget/EditText;

    .line 383
    .line 384
    new-instance v6, Ljava/lang/StringBuilder;

    .line 385
    .line 386
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    .line 388
    .line 389
    const-string v7, "log"

    .line 390
    .line 391
    invoke-virtual {p1, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 392
    .line 393
    .line 394
    move-result-object v8

    .line 395
    invoke-virtual {v8}, Lz7/p;->i()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v8

    .line 399
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {p1, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 403
    .line 404
    .line 405
    move-result-object v7

    .line 406
    invoke-virtual {v7}, Lz7/p;->i()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v7

    .line 410
    const-string v8, "\n"

    .line 411
    .line 412
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 413
    .line 414
    .line 415
    move-result v7

    .line 416
    if-eqz v7, :cond_2

    .line 417
    .line 418
    const-string v7, ""

    .line 419
    .line 420
    goto :goto_0

    .line 421
    :cond_2
    move-object v7, v8

    .line 422
    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v6

    .line 429
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    .line 431
    .line 432
    const-string v4, "mapAppName"

    .line 433
    .line 434
    invoke-virtual {v0, v4}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    move-result v6

    .line 438
    if-eqz v6, :cond_3

    .line 439
    .line 440
    invoke-virtual {p1, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 441
    .line 442
    .line 443
    move-result-object v4

    .line 444
    invoke-virtual {v4}, Lz7/p;->i()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v4

    .line 448
    iput-object v4, p0, Lha/w1;->y:Ljava/lang/String;

    .line 449
    .line 450
    :cond_3
    const-string v4, "mapAppPackage"

    .line 451
    .line 452
    invoke-virtual {v0, v4}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    move-result v6

    .line 456
    if-eqz v6, :cond_4

    .line 457
    .line 458
    invoke-virtual {p1, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 459
    .line 460
    .line 461
    move-result-object v4

    .line 462
    invoke-virtual {v4}, Lz7/p;->i()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v4

    .line 466
    iput-object v4, p0, Lha/w1;->z:Ljava/lang/String;

    .line 467
    .line 468
    :cond_4
    iget-object v4, p0, Lha/w1;->z:Ljava/lang/String;

    .line 469
    .line 470
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 471
    .line 472
    .line 473
    move-result v4

    .line 474
    if-nez v4, :cond_5

    .line 475
    .line 476
    iget-object v4, p0, Lha/w1;->i:Landroid/widget/TextView;

    .line 477
    .line 478
    new-instance v6, Ljava/lang/StringBuilder;

    .line 479
    .line 480
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 481
    .line 482
    .line 483
    iget-object v7, p0, Lha/w1;->y:Ljava/lang/String;

    .line 484
    .line 485
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    iget-object v7, p0, Lha/w1;->z:Ljava/lang/String;

    .line 492
    .line 493
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v6

    .line 500
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    .line 502
    .line 503
    :cond_5
    const-string v4, "nav_guidewords"

    .line 504
    .line 505
    invoke-virtual {v0, v4}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 506
    .line 507
    .line 508
    move-result v6

    .line 509
    if-eqz v6, :cond_6

    .line 510
    .line 511
    invoke-virtual {p1, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 512
    .line 513
    .line 514
    move-result-object v4

    .line 515
    invoke-virtual {v4}, Lz7/p;->i()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v4

    .line 519
    iput-object v4, p0, Lha/w1;->A:Ljava/lang/String;

    .line 520
    .line 521
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 522
    .line 523
    .line 524
    move-result v4

    .line 525
    if-nez v4, :cond_6

    .line 526
    .line 527
    iget-object v4, p0, Lha/w1;->q:Lx9/w0;

    .line 528
    .line 529
    invoke-virtual {v4, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v4

    .line 533
    check-cast v4, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 534
    .line 535
    new-instance v6, Ljava/lang/StringBuilder;

    .line 536
    .line 537
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 538
    .line 539
    .line 540
    iget-object v7, p0, Lha/w1;->A:Ljava/lang/String;

    .line 541
    .line 542
    const-string v8, "XXX (\u5982\u679c\u60a8\u8bed\u97f3\u672c\u8eab\u5c31\u652f\u6301\uff0c\u90a3\u4e48\u4e0d\u8981\u52fe\u9009)"

    .line 543
    .line 544
    invoke-static {v7, v8, v6}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v6

    .line 548
    iput-object v6, v4, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->strValue:Ljava/lang/String;

    .line 549
    .line 550
    iget-object v6, p0, Lha/w1;->q:Lx9/w0;

    .line 551
    .line 552
    invoke-virtual {v6, v1, v4}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 553
    .line 554
    .line 555
    :cond_6
    const-string v4, "isNavTo"

    .line 556
    .line 557
    invoke-virtual {p1, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 558
    .line 559
    .line 560
    move-result-object v4

    .line 561
    invoke-virtual {v4}, Lz7/p;->b()Z

    .line 562
    .line 563
    .line 564
    move-result v4

    .line 565
    if-eqz v4, :cond_7

    .line 566
    .line 567
    iget-object v4, p0, Lha/w1;->q:Lx9/w0;

    .line 568
    .line 569
    invoke-virtual {v4, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    move-result-object v4

    .line 573
    check-cast v4, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 574
    .line 575
    iput-boolean v5, v4, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->boolValue:Z

    .line 576
    .line 577
    iget-object v6, p0, Lha/w1;->q:Lx9/w0;

    .line 578
    .line 579
    invoke-virtual {v6, v1, v4}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 580
    .line 581
    .line 582
    :cond_7
    const-string v4, "isOpenUserApp"

    .line 583
    .line 584
    invoke-virtual {p1, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 585
    .line 586
    .line 587
    move-result-object v4

    .line 588
    invoke-virtual {v4}, Lz7/p;->b()Z

    .line 589
    .line 590
    .line 591
    move-result v4

    .line 592
    if-eqz v4, :cond_8

    .line 593
    .line 594
    iget-object v4, p0, Lha/w1;->q:Lx9/w0;

    .line 595
    .line 596
    invoke-virtual {v4, v5}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    move-result-object v4

    .line 600
    check-cast v4, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 601
    .line 602
    iput-boolean v5, v4, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->boolValue:Z

    .line 603
    .line 604
    iget-object v6, p0, Lha/w1;->q:Lx9/w0;

    .line 605
    .line 606
    invoke-virtual {v6, v5, v4}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 607
    .line 608
    .line 609
    :cond_8
    const-string v4, "isShowText"

    .line 610
    .line 611
    invoke-virtual {v0, v4}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 612
    .line 613
    .line 614
    move-result v6

    .line 615
    if-eqz v6, :cond_9

    .line 616
    .line 617
    invoke-virtual {p1, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 618
    .line 619
    .line 620
    move-result-object v4

    .line 621
    invoke-virtual {v4}, Lz7/p;->b()Z

    .line 622
    .line 623
    .line 624
    move-result v4

    .line 625
    if-eqz v4, :cond_9

    .line 626
    .line 627
    iget-object v4, p0, Lha/w1;->q:Lx9/w0;

    .line 628
    .line 629
    const/4 v6, 0x2

    .line 630
    invoke-virtual {v4, v6}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 631
    .line 632
    .line 633
    move-result-object v4

    .line 634
    check-cast v4, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 635
    .line 636
    iput-boolean v5, v4, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->boolValue:Z

    .line 637
    .line 638
    iget-object v7, p0, Lha/w1;->q:Lx9/w0;

    .line 639
    .line 640
    invoke-virtual {v7, v6, v4}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 641
    .line 642
    .line 643
    :cond_9
    const-string v4, "match_map"

    .line 644
    .line 645
    invoke-virtual {v0, v4}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 646
    .line 647
    .line 648
    move-result v0

    .line 649
    if-eqz v0, :cond_a

    .line 650
    .line 651
    invoke-virtual {p1, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    invoke-virtual {v0}, Lz7/p;->f()Lz7/o;

    .line 656
    .line 657
    .line 658
    move-result-object v0

    .line 659
    iget-object v0, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 660
    .line 661
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 662
    .line 663
    .line 664
    move-result v0

    .line 665
    if-nez v0, :cond_a

    .line 666
    .line 667
    invoke-virtual {p1, v4}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 668
    .line 669
    .line 670
    move-result-object v0

    .line 671
    iput-object v0, p0, Lha/w1;->B:Lz7/o;

    .line 672
    .line 673
    iget-object v0, p0, Lha/w1;->q:Lx9/w0;

    .line 674
    .line 675
    invoke-virtual {v0, v3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 676
    .line 677
    .line 678
    move-result-object v0

    .line 679
    check-cast v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 680
    .line 681
    iput-boolean v5, v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->boolValue:Z

    .line 682
    .line 683
    iget-object v4, p0, Lha/w1;->q:Lx9/w0;

    .line 684
    .line 685
    invoke-virtual {v4, v3, v0}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 686
    .line 687
    .line 688
    :cond_a
    const-string v0, "maps"

    .line 689
    .line 690
    invoke-virtual {p1, v0}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 691
    .line 692
    .line 693
    move-result-object p1

    .line 694
    const/4 v0, 0x0

    .line 695
    :goto_1
    iget-object v3, p1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 696
    .line 697
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 698
    .line 699
    .line 700
    move-result v3

    .line 701
    if-ge v0, v3, :cond_b

    .line 702
    .line 703
    iget-object v3, p0, Lha/w1;->s:Lx9/s2;

    .line 704
    .line 705
    invoke-virtual {p1, v0}, Lz7/o;->l(I)Lz7/p;

    .line 706
    .line 707
    .line 708
    move-result-object v4

    .line 709
    invoke-virtual {v4}, Lz7/p;->g()Lz7/s;

    .line 710
    .line 711
    .line 712
    move-result-object v4

    .line 713
    invoke-virtual {v4}, Lz7/p;->toString()Ljava/lang/String;

    .line 714
    .line 715
    .line 716
    move-result-object v4

    .line 717
    invoke-static {v4}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 718
    .line 719
    .line 720
    move-result-object v4

    .line 721
    invoke-virtual {v4}, Lz7/p;->g()Lz7/s;

    .line 722
    .line 723
    .line 724
    move-result-object v4

    .line 725
    invoke-virtual {v3, v4}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 726
    .line 727
    .line 728
    add-int/lit8 v0, v0, 0x1

    .line 729
    .line 730
    goto :goto_1

    .line 731
    :cond_b
    iget-object p1, p0, Lha/w1;->j:Landroid/widget/ImageView;

    .line 732
    .line 733
    iget-boolean v0, p0, Lha/w1;->t:Z

    .line 734
    .line 735
    if-eqz v0, :cond_c

    .line 736
    .line 737
    const v0, 0x7f080234

    .line 738
    .line 739
    .line 740
    goto :goto_2

    .line 741
    :cond_c
    const v0, 0x7f080237

    .line 742
    .line 743
    .line 744
    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 745
    .line 746
    .line 747
    iget-object p1, p0, Lha/w1;->l:Landroidx/recyclerview/widget/RecyclerView;

    .line 748
    .line 749
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 750
    .line 751
    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    .line 752
    .line 753
    .line 754
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 755
    .line 756
    .line 757
    new-instance p1, Lx9/i4;

    .line 758
    .line 759
    invoke-direct {p1}, Lx9/i4;-><init>()V

    .line 760
    .line 761
    .line 762
    iput-object p1, p0, Lha/w1;->r:Lx9/i4;

    .line 763
    .line 764
    new-instance v0, Lx9/x0;

    .line 765
    .line 766
    iget v3, p0, Lha/w1;->w:I

    .line 767
    .line 768
    if-nez v3, :cond_d

    .line 769
    .line 770
    const/4 v3, 0x1

    .line 771
    goto :goto_3

    .line 772
    :cond_d
    const/4 v3, 0x0

    .line 773
    :goto_3
    const-string v4, "\u6587\u672c\u53d6\u4e2d\u95f4"

    .line 774
    .line 775
    invoke-direct {v0, v4, v3}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 776
    .line 777
    .line 778
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 779
    .line 780
    .line 781
    iget-object p1, p0, Lha/w1;->r:Lx9/i4;

    .line 782
    .line 783
    new-instance v0, Lx9/x0;

    .line 784
    .line 785
    iget v3, p0, Lha/w1;->w:I

    .line 786
    .line 787
    if-ne v3, v5, :cond_e

    .line 788
    .line 789
    const/4 v1, 0x1

    .line 790
    :cond_e
    const-string v3, "\u6b63\u5219\u8868\u8fbe\u5f0f"

    .line 791
    .line 792
    invoke-direct {v0, v3, v1}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 793
    .line 794
    .line 795
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 796
    .line 797
    .line 798
    iget-object p1, p0, Lha/w1;->l:Landroidx/recyclerview/widget/RecyclerView;

    .line 799
    .line 800
    iget-object v0, p0, Lha/w1;->r:Lx9/i4;

    .line 801
    .line 802
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 803
    .line 804
    .line 805
    iget-object p1, p0, Lha/w1;->r:Lx9/i4;

    .line 806
    .line 807
    new-instance v0, Lha/u1;

    .line 808
    .line 809
    const/4 v1, 0x2

    .line 810
    invoke-direct {v0, p0, v1}, Lha/u1;-><init>(Lha/w1;I)V

    .line 811
    .line 812
    .line 813
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 814
    .line 815
    new-instance p1, Lha/n6;

    .line 816
    .line 817
    iget-object v0, p0, Lha/a4;->a:Landroid/app/Activity;

    .line 818
    .line 819
    invoke-direct {p1, v0, v2}, Lha/n6;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 820
    .line 821
    .line 822
    iput-object p1, p0, Lha/w1;->p:Lha/n6;

    .line 823
    .line 824
    return-void
.end method
