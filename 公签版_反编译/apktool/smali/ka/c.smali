.class public final Lka/c;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lka/c;->b:I

    iput-object p2, p0, Lka/c;->c:Ljava/lang/Object;

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "\u65e0\u6cd5\u83b7\u53d6\u6570\u636e"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/16 v3, 0x8

    .line 7
    .line 8
    iget-object v4, p0, Lka/c;->c:Ljava/lang/Object;

    .line 9
    .line 10
    iget v5, p0, Lka/c;->b:I

    .line 11
    .line 12
    packed-switch v5, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    :pswitch_0
    return-void

    .line 16
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v1, "\u5931\u8d25\uff1a"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    check-cast v4, Lcom/yunpan/appmanage/ui/ActivityRunMemory;

    .line 38
    .line 39
    iget-object p1, v4, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->F:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 40
    .line 41
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    iget-object p1, v4, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->E:Lx9/p4;

    .line 45
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    check-cast v4, Lcom/yunpan/appmanage/ui/ActivityPss;

    .line 66
    .line 67
    iget-object p1, v4, Lcom/yunpan/appmanage/ui/ActivityPss;->K:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 68
    .line 69
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    iget-object p1, v4, Lcom/yunpan/appmanage/ui/ActivityPss;->F:Lx9/h4;

    .line 73
    .line 74
    iget-object v0, v4, Lcom/yunpan/appmanage/ui/ActivityPss;->G:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, v4, Lcom/yunpan/appmanage/ui/ActivityPss;->G:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_0

    .line 86
    .line 87
    iget-object p1, v4, Lcom/yunpan/appmanage/ui/ActivityPss;->L:Landroid/widget/LinearLayout;

    .line 88
    .line 89
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    :cond_0
    return-void

    .line 93
    :pswitch_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    check-cast v4, Lcom/yunpan/appmanage/ui/ActivityPs;

    .line 104
    .line 105
    iget-object p1, v4, Lcom/yunpan/appmanage/ui/ActivityPs;->H:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 106
    .line 107
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 108
    .line 109
    .line 110
    iget-object p1, v4, Lcom/yunpan/appmanage/ui/ActivityPs;->D:Lx9/g4;

    .line 111
    .line 112
    iget-object v0, v4, Lcom/yunpan/appmanage/ui/ActivityPs;->E:Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 115
    .line 116
    .line 117
    iget-object p1, v4, Lcom/yunpan/appmanage/ui/ActivityPs;->E:Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_1

    .line 124
    .line 125
    iget-object p1, v4, Lcom/yunpan/appmanage/ui/ActivityPs;->I:Landroid/widget/LinearLayout;

    .line 126
    .line 127
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 128
    .line 129
    .line 130
    :cond_1
    return-void

    .line 131
    :pswitch_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 132
    .line 133
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string v1, "\u83b7\u53d6\u5931\u8d25\uff1a"

    .line 137
    .line 138
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    check-cast v4, Lcom/yunpan/appmanage/ui/ActivityPermissions;

    .line 156
    .line 157
    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :pswitch_5
    const-string p1, "\u5f00\u542f\u5931\u8d25\uff0c\u8bf7\u786e\u4fdd\u662f\u65e5\u4ea7\u8f66\u673a"

    .line 162
    .line 163
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    check-cast v4, Lua/w4;

    .line 167
    .line 168
    iget-object p1, v4, Lua/w4;->b:Lcom/yunpan/appmanage/ui/ActivityNissan;

    .line 169
    .line 170
    sget v0, Lcom/yunpan/appmanage/ui/ActivityNissan;->I:I

    .line 171
    .line 172
    iget-object p1, p1, Lda/g;->A:Lda/g;

    .line 173
    .line 174
    invoke-static {p1}, Lpa/e;->b(Landroid/content/Context;)Z

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-eqz p1, :cond_2

    .line 179
    .line 180
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 181
    .line 182
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 183
    .line 184
    iget-boolean p1, p1, Lcom/yunpan/appmanage/util/k;->j:Z

    .line 185
    .line 186
    if-nez p1, :cond_2

    .line 187
    .line 188
    new-instance p1, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    const-string v0, "\u5f00\u542f\u5931\u8d25\uff0c\u8bf7\u5b89\u88c5 "

    .line 191
    .line 192
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    iget-object v0, v4, Lua/w4;->b:Lcom/yunpan/appmanage/ui/ActivityNissan;

    .line 196
    .line 197
    iget-object v0, v0, Lda/g;->A:Lda/g;

    .line 198
    .line 199
    invoke-virtual {v0}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    const v1, 0x7f13002f

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v0, "-\u516c\u7b7e\u7248"

    .line 214
    .line 215
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-static {p1, v2}, Lcom/yunpan/appmanage/util/a0;->z(Ljava/lang/String;Z)V

    .line 223
    .line 224
    .line 225
    :cond_2
    return-void

    .line 226
    :pswitch_6
    check-cast v4, Lcom/yunpan/appmanage/ui/ActivityInstaller;

    .line 227
    .line 228
    iget-object p1, v4, Lcom/yunpan/appmanage/ui/ActivityInstaller;->C:Landroid/widget/TextView;

    .line 229
    .line 230
    const-string v0, "\u5b89\u88c5\u51fa\u9519"

    .line 231
    .line 232
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    .line 234
    .line 235
    iget-object p1, v4, Lcom/yunpan/appmanage/ui/ActivityInstaller;->D:Landroid/widget/TextView;

    .line 236
    .line 237
    const-string v0, "\u597d\u7684"

    .line 238
    .line 239
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    .line 241
    .line 242
    return-void

    .line 243
    :pswitch_7
    check-cast v4, Lcom/yunpan/appmanage/ui/ActivityGjDiy;

    .line 244
    .line 245
    iget-object p1, v4, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->S:Lha/u9;

    .line 246
    .line 247
    invoke-virtual {p1}, Lha/u9;->a()V

    .line 248
    .line 249
    .line 250
    return-void

    .line 251
    :pswitch_8
    check-cast v4, Lcom/yunpan/appmanage/ui/ActivityDownload;

    .line 252
    .line 253
    iget-object v1, v4, Lcom/yunpan/appmanage/ui/ActivityDownload;->P:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 254
    .line 255
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 256
    .line 257
    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    return-void

    .line 281
    :pswitch_9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    const-string v0, "Bandwidth module disabled"

    .line 289
    .line 290
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    const-string v5, "\u6b64\u8bbe\u5907\u6ca1\u6709\u6b64\u529f\u80fd"

    .line 295
    .line 296
    if-eqz v0, :cond_3

    .line 297
    .line 298
    invoke-static {v5}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    goto :goto_0

    .line 302
    :cond_3
    const-string v0, "\u65e0\u670d\u52a1"

    .line 303
    .line 304
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 305
    .line 306
    .line 307
    move-result p1

    .line 308
    if-eqz p1, :cond_4

    .line 309
    .line 310
    invoke-static {v5}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    goto :goto_0

    .line 314
    :cond_4
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    :goto_0
    check-cast v4, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;

    .line 318
    .line 319
    iget-object p1, v4, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->G:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 320
    .line 321
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 322
    .line 323
    .line 324
    iget-object p1, v4, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->E:Lx9/z;

    .line 325
    .line 326
    iget-object v0, v4, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->F:Ljava/util/ArrayList;

    .line 327
    .line 328
    invoke-virtual {p1, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 329
    .line 330
    .line 331
    iget-object p1, v4, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->F:Ljava/util/ArrayList;

    .line 332
    .line 333
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 334
    .line 335
    .line 336
    move-result p1

    .line 337
    if-eqz p1, :cond_5

    .line 338
    .line 339
    iget-object p1, v4, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->I:Landroid/widget/LinearLayout;

    .line 340
    .line 341
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 342
    .line 343
    .line 344
    :cond_5
    return-void

    .line 345
    :pswitch_a
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 346
    .line 347
    .line 348
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    check-cast v4, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;

    .line 352
    .line 353
    iget-object p1, v4, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;->F:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 354
    .line 355
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 356
    .line 357
    .line 358
    iget-object p1, v4, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;->D:Lx9/i;

    .line 359
    .line 360
    iget-object v0, v4, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;->E:Ljava/util/ArrayList;

    .line 361
    .line 362
    invoke-virtual {p1, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 363
    .line 364
    .line 365
    iget-object p1, v4, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;->E:Ljava/util/ArrayList;

    .line 366
    .line 367
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 368
    .line 369
    .line 370
    move-result p1

    .line 371
    if-eqz p1, :cond_6

    .line 372
    .line 373
    iget-object p1, v4, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;->G:Landroid/widget/LinearLayout;

    .line 374
    .line 375
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 376
    .line 377
    .line 378
    :cond_6
    return-void

    .line 379
    :pswitch_b
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 380
    .line 381
    .line 382
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    check-cast v4, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;

    .line 386
    .line 387
    iget-object p1, v4, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->F:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 388
    .line 389
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 390
    .line 391
    .line 392
    iget-object p1, v4, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->D:Lx9/n;

    .line 393
    .line 394
    iget-object v0, v4, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->E:Ljava/util/ArrayList;

    .line 395
    .line 396
    invoke-virtual {p1, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 397
    .line 398
    .line 399
    iget-object p1, v4, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->E:Ljava/util/ArrayList;

    .line 400
    .line 401
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 402
    .line 403
    .line 404
    move-result p1

    .line 405
    if-eqz p1, :cond_7

    .line 406
    .line 407
    iget-object p1, v4, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->G:Landroid/widget/LinearLayout;

    .line 408
    .line 409
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 410
    .line 411
    .line 412
    :cond_7
    return-void

    .line 413
    :pswitch_c
    check-cast v4, Lcom/yunpan/appmanage/ui/ActivityAccessibility;

    .line 414
    .line 415
    iget-object v0, v4, Lcom/yunpan/appmanage/ui/ActivityAccessibility;->E:Landroid/widget/TextView;

    .line 416
    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    .line 418
    .line 419
    const-string v2, "\u51fa\u9519\uff1a"

    .line 420
    .line 421
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object p1

    .line 428
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object p1

    .line 435
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    .line 437
    .line 438
    return-void

    .line 439
    :pswitch_d
    new-instance v1, Ljava/lang/StringBuilder;

    .line 440
    .line 441
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object p1

    .line 448
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object p1

    .line 455
    const-string v0, "\u672a\u627e\u5230\u7aef\u53e3"

    .line 456
    .line 457
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 458
    .line 459
    .line 460
    move-result p1

    .line 461
    check-cast v4, Lcom/yunpan/appmanage/service/AdbPairService;

    .line 462
    .line 463
    if-eqz p1, :cond_8

    .line 464
    .line 465
    sget p1, Lcom/yunpan/appmanage/service/AdbPairService;->b:I

    .line 466
    .line 467
    const-string p1, "\u672a\u627e\u5230\u7aef\u53e3\uff0c\u8bf7\u91cd\u65b0\u5c1d\u8bd5"

    .line 468
    .line 469
    invoke-virtual {v4, p1, v2}, Lcom/yunpan/appmanage/service/AdbPairService;->a(Ljava/lang/String;Z)V

    .line 470
    .line 471
    .line 472
    goto :goto_1

    .line 473
    :cond_8
    sget p1, Lcom/yunpan/appmanage/service/AdbPairService;->b:I

    .line 474
    .line 475
    const-string p1, "\u914d\u5bf9\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u5c1d\u8bd5"

    .line 476
    .line 477
    invoke-virtual {v4, p1, v2}, Lcom/yunpan/appmanage/service/AdbPairService;->a(Ljava/lang/String;Z)V

    .line 478
    .line 479
    .line 480
    :goto_1
    return-void

    .line 481
    :pswitch_e
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 482
    .line 483
    iget-boolean v0, v0, Lwa/u;->u:Z

    .line 484
    .line 485
    if-eqz v0, :cond_9

    .line 486
    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    .line 488
    .line 489
    const-string v1, "\u3010\u62a5\u9519\u4f4d\u7f6ec\u3011 "

    .line 490
    .line 491
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object p1

    .line 498
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object p1

    .line 505
    invoke-static {p1}, Lwa/w;->b(Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    :cond_9
    return-void

    .line 509
    :pswitch_f
    check-cast v4, Lka/d;

    .line 510
    .line 511
    iget-object p1, v4, Lka/d;->f:Landroid/widget/ProgressBar;

    .line 512
    .line 513
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 514
    .line 515
    .line 516
    iget-object p1, v4, Lka/d;->e:Landroid/widget/TextView;

    .line 517
    .line 518
    const-string v0, "\u83b7\u53d6\u7ec4\u4ef6\u51fa\u9519"

    .line 519
    .line 520
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    .line 522
    .line 523
    return-void

    .line 524
    nop

    .line 525
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public E(Ljava/lang/Object;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget v2, v1, Lka/c;->b:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    :pswitch_0
    return-void

    .line 11
    :pswitch_1
    instance-of v2, v0, Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iget-object v2, v1, Lka/c;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, Lua/y6;

    .line 18
    .line 19
    iget-object v2, v2, Lua/y6;->c:Lcom/yunpan/appmanage/ui/ActivityStudy;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/yunpan/appmanage/ui/ActivityStudy;->E:Lha/u9;

    .line 22
    .line 23
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v2, v0}, Lha/u9;->b(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void

    .line 31
    :pswitch_2
    instance-of v2, v0, Ljava/lang/String;

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    iget-object v2, v1, Lka/c;->c:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v2, Lua/y6;

    .line 38
    .line 39
    iget-object v2, v2, Lua/y6;->c:Lcom/yunpan/appmanage/ui/ActivityStudy;

    .line 40
    .line 41
    iget-object v2, v2, Lcom/yunpan/appmanage/ui/ActivityStudy;->E:Lha/u9;

    .line 42
    .line 43
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v2, v0}, Lha/u9;->b(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void

    .line 51
    :pswitch_3
    instance-of v2, v0, Lcom/yunpan/appmanage/bean/MemBean;

    .line 52
    .line 53
    if-eqz v2, :cond_3

    .line 54
    .line 55
    check-cast v0, Lcom/yunpan/appmanage/bean/MemBean;

    .line 56
    .line 57
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/MemBean;->MemAvailable:Ljava/lang/String;

    .line 58
    .line 59
    const-string v3, "\u7cfb\u7edf\u5185\u5b58\uff1a"

    .line 60
    .line 61
    const-string v4, "   \u5269\u4f59\uff1a"

    .line 62
    .line 63
    const-string v5, "   \u5df2\u4f7f\u7528\uff1a"

    .line 64
    .line 65
    iget-object v6, v1, Lka/c;->c:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v6, Lcom/yunpan/appmanage/ui/ActivityRunMemory;

    .line 68
    .line 69
    if-nez v2, :cond_2

    .line 70
    .line 71
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/MemBean;->MemFree:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 74
    .line 75
    .line 76
    move-result-wide v7

    .line 77
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/MemBean;->Buffers:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 80
    .line 81
    .line 82
    move-result-wide v9

    .line 83
    add-double/2addr v9, v7

    .line 84
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/MemBean;->Cached:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 87
    .line 88
    .line 89
    move-result-wide v7

    .line 90
    add-double/2addr v7, v9

    .line 91
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/MemBean;->Slab:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 94
    .line 95
    .line 96
    move-result-wide v9

    .line 97
    add-double/2addr v9, v7

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/MemBean;->MemTotal:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 106
    .line 107
    .line 108
    move-result-wide v7

    .line 109
    invoke-static {v6, v7, v8}, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->x(Lcom/yunpan/appmanage/ui/ActivityRunMemory;D)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/MemBean;->MemTotal:Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 122
    .line 123
    .line 124
    move-result-wide v7

    .line 125
    sub-double/2addr v7, v9

    .line 126
    invoke-static {v6, v7, v8}, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->x(Lcom/yunpan/appmanage/ui/ActivityRunMemory;D)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-static {v6, v9, v10}, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->x(Lcom/yunpan/appmanage/ui/ActivityRunMemory;D)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    goto :goto_0

    .line 148
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/MemBean;->MemTotal:Ljava/lang/String;

    .line 154
    .line 155
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 156
    .line 157
    .line 158
    move-result-wide v7

    .line 159
    invoke-static {v6, v7, v8}, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->x(Lcom/yunpan/appmanage/ui/ActivityRunMemory;D)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/MemBean;->MemTotal:Ljava/lang/String;

    .line 170
    .line 171
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 172
    .line 173
    .line 174
    move-result-wide v7

    .line 175
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/MemBean;->MemAvailable:Ljava/lang/String;

    .line 176
    .line 177
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 178
    .line 179
    .line 180
    move-result-wide v9

    .line 181
    sub-double/2addr v7, v9

    .line 182
    invoke-static {v6, v7, v8}, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->x(Lcom/yunpan/appmanage/ui/ActivityRunMemory;D)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/MemBean;->MemAvailable:Ljava/lang/String;

    .line 193
    .line 194
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 195
    .line 196
    .line 197
    move-result-wide v7

    .line 198
    invoke-static {v6, v7, v8}, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->x(Lcom/yunpan/appmanage/ui/ActivityRunMemory;D)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    :goto_0
    const-string v3, "\n\u865a\u62df\u5185\u5b58\uff1a"

    .line 210
    .line 211
    invoke-static {v2, v3}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/MemBean;->SwapTotal:Ljava/lang/String;

    .line 216
    .line 217
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 218
    .line 219
    .line 220
    move-result-wide v7

    .line 221
    invoke-static {v6, v7, v8}, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->x(Lcom/yunpan/appmanage/ui/ActivityRunMemory;D)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/MemBean;->SwapTotal:Ljava/lang/String;

    .line 232
    .line 233
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 234
    .line 235
    .line 236
    move-result-wide v7

    .line 237
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/MemBean;->SwapFree:Ljava/lang/String;

    .line 238
    .line 239
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 240
    .line 241
    .line 242
    move-result-wide v9

    .line 243
    sub-double/2addr v7, v9

    .line 244
    invoke-static {v6, v7, v8}, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->x(Lcom/yunpan/appmanage/ui/ActivityRunMemory;D)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    iget-object v0, v0, Lcom/yunpan/appmanage/bean/MemBean;->SwapFree:Ljava/lang/String;

    .line 255
    .line 256
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 257
    .line 258
    .line 259
    move-result-wide v3

    .line 260
    invoke-static {v6, v3, v4}, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->x(Lcom/yunpan/appmanage/ui/ActivityRunMemory;D)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    iget-object v2, v6, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->G:Landroid/widget/TextView;

    .line 272
    .line 273
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    .line 275
    .line 276
    :cond_3
    return-void

    .line 277
    :pswitch_4
    iget-object v2, v1, Lka/c;->c:Ljava/lang/Object;

    .line 278
    .line 279
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcatSet;

    .line 280
    .line 281
    iget-object v2, v2, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcatSet;->E:Landroid/widget/TextView;

    .line 282
    .line 283
    check-cast v0, Ljava/lang/String;

    .line 284
    .line 285
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    .line 287
    .line 288
    return-void

    .line 289
    :pswitch_5
    iget-object v2, v1, Lka/c;->c:Ljava/lang/Object;

    .line 290
    .line 291
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityInstaller;

    .line 292
    .line 293
    iget-object v3, v2, Lcom/yunpan/appmanage/ui/ActivityInstaller;->C:Landroid/widget/TextView;

    .line 294
    .line 295
    move-object v4, v0

    .line 296
    check-cast v4, Ljava/lang/String;

    .line 297
    .line 298
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    .line 300
    .line 301
    const-string v3, "\u5b89\u88c5\u6210\u529f"

    .line 302
    .line 303
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v0

    .line 307
    if-eqz v0, :cond_4

    .line 308
    .line 309
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityInstaller;->H:Lff/c;

    .line 310
    .line 311
    if-eqz v0, :cond_4

    .line 312
    .line 313
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityInstaller;->E:Landroid/widget/TextView;

    .line 314
    .line 315
    const/4 v2, 0x0

    .line 316
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 317
    .line 318
    .line 319
    :cond_4
    return-void

    .line 320
    :pswitch_6
    check-cast v0, Ljava/lang/String;

    .line 321
    .line 322
    iget-object v2, v1, Lka/c;->c:Ljava/lang/Object;

    .line 323
    .line 324
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityImmersive;

    .line 325
    .line 326
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    .line 328
    .line 329
    const-string v3, "null"

    .line 330
    .line 331
    const-string v4, ""

    .line 332
    .line 333
    if-eqz v0, :cond_5

    .line 334
    .line 335
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result v5

    .line 339
    if-eqz v5, :cond_6

    .line 340
    .line 341
    :cond_5
    move-object v0, v4

    .line 342
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    const-string v5, "\n"

    .line 347
    .line 348
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 349
    .line 350
    .line 351
    move-result v6

    .line 352
    const/4 v7, 0x0

    .line 353
    if-eqz v6, :cond_7

    .line 354
    .line 355
    const-string v6, ":/"

    .line 356
    .line 357
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 358
    .line 359
    .line 360
    move-result v8

    .line 361
    if-eqz v8, :cond_7

    .line 362
    .line 363
    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 364
    .line 365
    .line 366
    move-result v8

    .line 367
    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 372
    .line 373
    .line 374
    move-result v8

    .line 375
    if-eqz v8, :cond_7

    .line 376
    .line 377
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 378
    .line 379
    .line 380
    move-result v6

    .line 381
    if-eqz v6, :cond_7

    .line 382
    .line 383
    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 384
    .line 385
    .line 386
    move-result v5

    .line 387
    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    iget-object v5, v2, Lcom/yunpan/appmanage/ui/ActivityImmersive;->D:Landroid/widget/TextView;

    .line 396
    .line 397
    const/16 v6, 0x8

    .line 398
    .line 399
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 400
    .line 401
    .line 402
    const-string v5, "immersive.full="

    .line 403
    .line 404
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 405
    .line 406
    .line 407
    move-result v8

    .line 408
    const-string v9, "immersive.navigation="

    .line 409
    .line 410
    const-string v10, "immersive.status="

    .line 411
    .line 412
    if-eqz v8, :cond_9

    .line 413
    .line 414
    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 415
    .line 416
    .line 417
    move-result v8

    .line 418
    if-nez v8, :cond_8

    .line 419
    .line 420
    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 421
    .line 422
    .line 423
    move-result v8

    .line 424
    if-eqz v8, :cond_9

    .line 425
    .line 426
    :cond_8
    move-object v0, v4

    .line 427
    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 428
    .line 429
    .line 430
    move-result v8

    .line 431
    iget-object v11, v2, Lcom/yunpan/appmanage/ui/ActivityImmersive;->M:Ljava/util/ArrayList;

    .line 432
    .line 433
    const-string v13, "\u7b80\u8981\u8bf4\u660e\uff1a"

    .line 434
    .line 435
    if-nez v8, :cond_a

    .line 436
    .line 437
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    move-result v8

    .line 441
    if-nez v8, :cond_a

    .line 442
    .line 443
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    move-result v8

    .line 447
    if-nez v8, :cond_a

    .line 448
    .line 449
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    move-result v8

    .line 453
    if-nez v8, :cond_a

    .line 454
    .line 455
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    move-result v8

    .line 459
    if-nez v8, :cond_a

    .line 460
    .line 461
    const-string v8, "immersive.preconfirms="

    .line 462
    .line 463
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result v8

    .line 467
    if-eqz v8, :cond_b

    .line 468
    .line 469
    :cond_a
    const/4 v5, 0x0

    .line 470
    goto/16 :goto_15

    .line 471
    .line 472
    :cond_b
    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 473
    .line 474
    .line 475
    move-result v8

    .line 476
    const/16 v6, 0x11

    .line 477
    .line 478
    const-string v7, ",-"

    .line 479
    .line 480
    const-string v14, ",apps,"

    .line 481
    .line 482
    const-string v12, ",*,"

    .line 483
    .line 484
    const-string v15, ","

    .line 485
    .line 486
    if-eqz v8, :cond_1a

    .line 487
    .line 488
    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 489
    .line 490
    .line 491
    move-result v8

    .line 492
    if-eqz v8, :cond_1a

    .line 493
    .line 494
    const-string v8, ":"

    .line 495
    .line 496
    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 497
    .line 498
    .line 499
    move-result v16

    .line 500
    if-eqz v16, :cond_1a

    .line 501
    .line 502
    iget-object v3, v2, Lcom/yunpan/appmanage/ui/ActivityImmersive;->C:Landroid/widget/TextView;

    .line 503
    .line 504
    const-string v5, "\u5728\u4e0b\u9762\u70b9\u51fb\u5e94\u7528\u5355\u72ec\u8bbe\u7f6e\u6bcf\u4e2a\u5e94\u7528\u7684\u6a21\u5f0f"

    .line 505
    .line 506
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    .line 508
    .line 509
    const/4 v3, 0x2

    .line 510
    iput v3, v2, Lcom/yunpan/appmanage/ui/ActivityImmersive;->L:I

    .line 511
    .line 512
    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    array-length v5, v0

    .line 517
    move-object v8, v4

    .line 518
    const/4 v13, 0x0

    .line 519
    :goto_1
    if-ge v13, v5, :cond_e

    .line 520
    .line 521
    aget-object v16, v0, v13

    .line 522
    .line 523
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v3

    .line 527
    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 528
    .line 529
    .line 530
    move-result v3

    .line 531
    if-eqz v3, :cond_c

    .line 532
    .line 533
    new-instance v3, Ljava/lang/StringBuilder;

    .line 534
    .line 535
    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v4

    .line 542
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v4

    .line 546
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v3

    .line 556
    move-object v4, v3

    .line 557
    goto :goto_2

    .line 558
    :cond_c
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v3

    .line 562
    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 563
    .line 564
    .line 565
    move-result v3

    .line 566
    if-eqz v3, :cond_d

    .line 567
    .line 568
    new-instance v3, Ljava/lang/StringBuilder;

    .line 569
    .line 570
    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v8

    .line 577
    const/16 v6, 0x15

    .line 578
    .line 579
    invoke-virtual {v8, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v8

    .line 583
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v3

    .line 593
    move-object v8, v3

    .line 594
    :cond_d
    :goto_2
    add-int/lit8 v13, v13, 0x1

    .line 595
    .line 596
    const/4 v3, 0x2

    .line 597
    const/16 v6, 0x11

    .line 598
    .line 599
    goto :goto_1

    .line 600
    :cond_e
    invoke-virtual {v4, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 601
    .line 602
    .line 603
    move-result v0

    .line 604
    if-nez v0, :cond_10

    .line 605
    .line 606
    invoke-virtual {v4, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 607
    .line 608
    .line 609
    move-result v0

    .line 610
    if-eqz v0, :cond_f

    .line 611
    .line 612
    goto :goto_3

    .line 613
    :cond_f
    const/4 v0, 0x0

    .line 614
    goto :goto_4

    .line 615
    :cond_10
    :goto_3
    const/4 v0, 0x1

    .line 616
    :goto_4
    invoke-virtual {v8, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 617
    .line 618
    .line 619
    move-result v3

    .line 620
    if-nez v3, :cond_12

    .line 621
    .line 622
    invoke-virtual {v8, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 623
    .line 624
    .line 625
    move-result v3

    .line 626
    if-eqz v3, :cond_11

    .line 627
    .line 628
    goto :goto_5

    .line 629
    :cond_11
    const/4 v3, 0x0

    .line 630
    goto :goto_6

    .line 631
    :cond_12
    :goto_5
    const/4 v3, 0x1

    .line 632
    :goto_6
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 633
    .line 634
    .line 635
    move-result-object v5

    .line 636
    :cond_13
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 637
    .line 638
    .line 639
    move-result v6

    .line 640
    if-eqz v6, :cond_2a

    .line 641
    .line 642
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    move-result-object v6

    .line 646
    check-cast v6, Lua/p2;

    .line 647
    .line 648
    if-eqz v0, :cond_14

    .line 649
    .line 650
    new-instance v9, Ljava/lang/StringBuilder;

    .line 651
    .line 652
    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 653
    .line 654
    .line 655
    iget-object v10, v6, Lua/p2;->b:Ljava/lang/String;

    .line 656
    .line 657
    invoke-static {v9, v10, v15, v4}, Landroid/support/v4/media/session/a;->D(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 658
    .line 659
    .line 660
    move-result v9

    .line 661
    if-nez v9, :cond_15

    .line 662
    .line 663
    :goto_8
    const/4 v9, 0x1

    .line 664
    goto :goto_9

    .line 665
    :cond_14
    new-instance v9, Ljava/lang/StringBuilder;

    .line 666
    .line 667
    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 668
    .line 669
    .line 670
    iget-object v10, v6, Lua/p2;->b:Ljava/lang/String;

    .line 671
    .line 672
    invoke-static {v9, v10, v15, v4}, Landroid/support/v4/media/session/a;->D(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 673
    .line 674
    .line 675
    move-result v9

    .line 676
    if-eqz v9, :cond_15

    .line 677
    .line 678
    goto :goto_8

    .line 679
    :cond_15
    const/4 v9, 0x0

    .line 680
    :goto_9
    if-eqz v3, :cond_16

    .line 681
    .line 682
    new-instance v10, Ljava/lang/StringBuilder;

    .line 683
    .line 684
    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 685
    .line 686
    .line 687
    iget-object v12, v6, Lua/p2;->b:Ljava/lang/String;

    .line 688
    .line 689
    invoke-static {v10, v12, v15, v8}, Landroid/support/v4/media/session/a;->D(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 690
    .line 691
    .line 692
    move-result v10

    .line 693
    if-nez v10, :cond_17

    .line 694
    .line 695
    :goto_a
    const/4 v10, 0x1

    .line 696
    goto :goto_b

    .line 697
    :cond_16
    new-instance v10, Ljava/lang/StringBuilder;

    .line 698
    .line 699
    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 700
    .line 701
    .line 702
    iget-object v12, v6, Lua/p2;->b:Ljava/lang/String;

    .line 703
    .line 704
    invoke-static {v10, v12, v15, v8}, Landroid/support/v4/media/session/a;->D(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 705
    .line 706
    .line 707
    move-result v10

    .line 708
    if-eqz v10, :cond_17

    .line 709
    .line 710
    goto :goto_a

    .line 711
    :cond_17
    const/4 v10, 0x0

    .line 712
    :goto_b
    if-eqz v9, :cond_18

    .line 713
    .line 714
    if-eqz v10, :cond_18

    .line 715
    .line 716
    const/4 v12, 0x1

    .line 717
    iput v12, v6, Lua/p2;->d:I

    .line 718
    .line 719
    const/4 v9, 0x2

    .line 720
    goto :goto_7

    .line 721
    :cond_18
    if-eqz v9, :cond_19

    .line 722
    .line 723
    const/4 v9, 0x2

    .line 724
    iput v9, v6, Lua/p2;->d:I

    .line 725
    .line 726
    goto :goto_7

    .line 727
    :cond_19
    const/4 v9, 0x2

    .line 728
    if-eqz v10, :cond_13

    .line 729
    .line 730
    const/4 v10, 0x3

    .line 731
    iput v10, v6, Lua/p2;->d:I

    .line 732
    .line 733
    goto :goto_7

    .line 734
    :cond_1a
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 735
    .line 736
    .line 737
    move-result v4

    .line 738
    if-eqz v4, :cond_1f

    .line 739
    .line 740
    iget-object v3, v2, Lcom/yunpan/appmanage/ui/ActivityImmersive;->C:Landroid/widget/TextView;

    .line 741
    .line 742
    const-string v4, "\u5728\u4e0b\u9762\u9009\u4e2d\u8981\u5168\u5c4f\u663e\u793a\u7684\u5e94\u7528"

    .line 743
    .line 744
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 745
    .line 746
    .line 747
    const/4 v3, 0x1

    .line 748
    iput v3, v2, Lcom/yunpan/appmanage/ui/ActivityImmersive;->L:I

    .line 749
    .line 750
    const/16 v3, 0xf

    .line 751
    .line 752
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v0

    .line 756
    invoke-static {v15, v0, v15}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 757
    .line 758
    .line 759
    move-result-object v0

    .line 760
    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 761
    .line 762
    .line 763
    move-result v3

    .line 764
    if-nez v3, :cond_1d

    .line 765
    .line 766
    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 767
    .line 768
    .line 769
    move-result v3

    .line 770
    if-eqz v3, :cond_1b

    .line 771
    .line 772
    goto :goto_d

    .line 773
    :cond_1b
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 774
    .line 775
    .line 776
    move-result-object v3

    .line 777
    :cond_1c
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 778
    .line 779
    .line 780
    move-result v4

    .line 781
    if-eqz v4, :cond_2a

    .line 782
    .line 783
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 784
    .line 785
    .line 786
    move-result-object v4

    .line 787
    check-cast v4, Lua/p2;

    .line 788
    .line 789
    new-instance v5, Ljava/lang/StringBuilder;

    .line 790
    .line 791
    invoke-direct {v5, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 792
    .line 793
    .line 794
    iget-object v6, v4, Lua/p2;->b:Ljava/lang/String;

    .line 795
    .line 796
    invoke-static {v5, v6, v15, v0}, Landroid/support/v4/media/session/a;->D(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 797
    .line 798
    .line 799
    move-result v5

    .line 800
    if-eqz v5, :cond_1c

    .line 801
    .line 802
    const/4 v5, 0x1

    .line 803
    iput-boolean v5, v4, Lua/p2;->c:Z

    .line 804
    .line 805
    goto :goto_c

    .line 806
    :cond_1d
    :goto_d
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 807
    .line 808
    .line 809
    move-result-object v3

    .line 810
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 811
    .line 812
    .line 813
    move-result v4

    .line 814
    if-eqz v4, :cond_2a

    .line 815
    .line 816
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 817
    .line 818
    .line 819
    move-result-object v4

    .line 820
    check-cast v4, Lua/p2;

    .line 821
    .line 822
    new-instance v5, Ljava/lang/StringBuilder;

    .line 823
    .line 824
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 825
    .line 826
    .line 827
    iget-object v6, v4, Lua/p2;->b:Ljava/lang/String;

    .line 828
    .line 829
    invoke-static {v5, v6, v15, v0}, Landroid/support/v4/media/session/a;->D(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 830
    .line 831
    .line 832
    move-result v5

    .line 833
    if-eqz v5, :cond_1e

    .line 834
    .line 835
    const/4 v5, 0x0

    .line 836
    iput-boolean v5, v4, Lua/p2;->c:Z

    .line 837
    .line 838
    goto :goto_e

    .line 839
    :cond_1e
    const/4 v5, 0x1

    .line 840
    iput-boolean v5, v4, Lua/p2;->c:Z

    .line 841
    .line 842
    goto :goto_e

    .line 843
    :cond_1f
    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 844
    .line 845
    .line 846
    move-result v4

    .line 847
    if-eqz v4, :cond_24

    .line 848
    .line 849
    iget-object v3, v2, Lcom/yunpan/appmanage/ui/ActivityImmersive;->C:Landroid/widget/TextView;

    .line 850
    .line 851
    const-string v4, "\u5728\u4e0b\u9762\u9009\u4e2d\u8981\u9690\u85cf\u72b6\u6001\u680f\u7684\u5e94\u7528"

    .line 852
    .line 853
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 854
    .line 855
    .line 856
    const/4 v3, 0x3

    .line 857
    iput v3, v2, Lcom/yunpan/appmanage/ui/ActivityImmersive;->L:I

    .line 858
    .line 859
    const/16 v3, 0x11

    .line 860
    .line 861
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 862
    .line 863
    .line 864
    move-result-object v0

    .line 865
    invoke-static {v15, v0, v15}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 866
    .line 867
    .line 868
    move-result-object v0

    .line 869
    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 870
    .line 871
    .line 872
    move-result v3

    .line 873
    if-nez v3, :cond_22

    .line 874
    .line 875
    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 876
    .line 877
    .line 878
    move-result v3

    .line 879
    if-eqz v3, :cond_20

    .line 880
    .line 881
    goto :goto_10

    .line 882
    :cond_20
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 883
    .line 884
    .line 885
    move-result-object v3

    .line 886
    :cond_21
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 887
    .line 888
    .line 889
    move-result v4

    .line 890
    if-eqz v4, :cond_2a

    .line 891
    .line 892
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 893
    .line 894
    .line 895
    move-result-object v4

    .line 896
    check-cast v4, Lua/p2;

    .line 897
    .line 898
    new-instance v5, Ljava/lang/StringBuilder;

    .line 899
    .line 900
    invoke-direct {v5, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 901
    .line 902
    .line 903
    iget-object v6, v4, Lua/p2;->b:Ljava/lang/String;

    .line 904
    .line 905
    invoke-static {v5, v6, v15, v0}, Landroid/support/v4/media/session/a;->D(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 906
    .line 907
    .line 908
    move-result v5

    .line 909
    if-eqz v5, :cond_21

    .line 910
    .line 911
    const/4 v5, 0x1

    .line 912
    iput-boolean v5, v4, Lua/p2;->c:Z

    .line 913
    .line 914
    goto :goto_f

    .line 915
    :cond_22
    :goto_10
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 916
    .line 917
    .line 918
    move-result-object v3

    .line 919
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 920
    .line 921
    .line 922
    move-result v4

    .line 923
    if-eqz v4, :cond_2a

    .line 924
    .line 925
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 926
    .line 927
    .line 928
    move-result-object v4

    .line 929
    check-cast v4, Lua/p2;

    .line 930
    .line 931
    new-instance v5, Ljava/lang/StringBuilder;

    .line 932
    .line 933
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 934
    .line 935
    .line 936
    iget-object v6, v4, Lua/p2;->b:Ljava/lang/String;

    .line 937
    .line 938
    invoke-static {v5, v6, v15, v0}, Landroid/support/v4/media/session/a;->D(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 939
    .line 940
    .line 941
    move-result v5

    .line 942
    if-eqz v5, :cond_23

    .line 943
    .line 944
    const/4 v5, 0x0

    .line 945
    iput-boolean v5, v4, Lua/p2;->c:Z

    .line 946
    .line 947
    goto :goto_11

    .line 948
    :cond_23
    const/4 v5, 0x1

    .line 949
    iput-boolean v5, v4, Lua/p2;->c:Z

    .line 950
    .line 951
    goto :goto_11

    .line 952
    :cond_24
    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 953
    .line 954
    .line 955
    move-result v4

    .line 956
    if-eqz v4, :cond_29

    .line 957
    .line 958
    iget-object v3, v2, Lcom/yunpan/appmanage/ui/ActivityImmersive;->C:Landroid/widget/TextView;

    .line 959
    .line 960
    const-string v4, "\u5728\u4e0b\u9762\u9009\u4e2d\u8981\u9690\u85cf\u5bfc\u822a\u680f\u7684\u5e94\u7528"

    .line 961
    .line 962
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 963
    .line 964
    .line 965
    const/4 v3, 0x4

    .line 966
    iput v3, v2, Lcom/yunpan/appmanage/ui/ActivityImmersive;->L:I

    .line 967
    .line 968
    const/16 v3, 0x15

    .line 969
    .line 970
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 971
    .line 972
    .line 973
    move-result-object v0

    .line 974
    invoke-static {v15, v0, v15}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 975
    .line 976
    .line 977
    move-result-object v0

    .line 978
    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 979
    .line 980
    .line 981
    move-result v3

    .line 982
    if-nez v3, :cond_27

    .line 983
    .line 984
    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 985
    .line 986
    .line 987
    move-result v3

    .line 988
    if-eqz v3, :cond_25

    .line 989
    .line 990
    goto :goto_13

    .line 991
    :cond_25
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 992
    .line 993
    .line 994
    move-result-object v3

    .line 995
    :cond_26
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 996
    .line 997
    .line 998
    move-result v4

    .line 999
    if-eqz v4, :cond_2a

    .line 1000
    .line 1001
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v4

    .line 1005
    check-cast v4, Lua/p2;

    .line 1006
    .line 1007
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1008
    .line 1009
    invoke-direct {v5, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1010
    .line 1011
    .line 1012
    iget-object v6, v4, Lua/p2;->b:Ljava/lang/String;

    .line 1013
    .line 1014
    invoke-static {v5, v6, v15, v0}, Landroid/support/v4/media/session/a;->D(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1015
    .line 1016
    .line 1017
    move-result v5

    .line 1018
    if-eqz v5, :cond_26

    .line 1019
    .line 1020
    const/4 v5, 0x1

    .line 1021
    iput-boolean v5, v4, Lua/p2;->c:Z

    .line 1022
    .line 1023
    goto :goto_12

    .line 1024
    :cond_27
    :goto_13
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v3

    .line 1028
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1029
    .line 1030
    .line 1031
    move-result v4

    .line 1032
    if-eqz v4, :cond_2a

    .line 1033
    .line 1034
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v4

    .line 1038
    check-cast v4, Lua/p2;

    .line 1039
    .line 1040
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1041
    .line 1042
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1043
    .line 1044
    .line 1045
    iget-object v6, v4, Lua/p2;->b:Ljava/lang/String;

    .line 1046
    .line 1047
    invoke-static {v5, v6, v15, v0}, Landroid/support/v4/media/session/a;->D(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1048
    .line 1049
    .line 1050
    move-result v5

    .line 1051
    if-eqz v5, :cond_28

    .line 1052
    .line 1053
    const/4 v5, 0x0

    .line 1054
    iput-boolean v5, v4, Lua/p2;->c:Z

    .line 1055
    .line 1056
    goto :goto_14

    .line 1057
    :cond_28
    const/4 v5, 0x0

    .line 1058
    const/4 v6, 0x1

    .line 1059
    iput-boolean v6, v4, Lua/p2;->c:Z

    .line 1060
    .line 1061
    goto :goto_14

    .line 1062
    :cond_29
    const/4 v5, 0x0

    .line 1063
    invoke-virtual {v2, v3}, Lcom/yunpan/appmanage/ui/ActivityImmersive;->x(Ljava/lang/String;)V

    .line 1064
    .line 1065
    .line 1066
    iput v5, v2, Lcom/yunpan/appmanage/ui/ActivityImmersive;->L:I

    .line 1067
    .line 1068
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityImmersive;->C:Landroid/widget/TextView;

    .line 1069
    .line 1070
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1071
    .line 1072
    .line 1073
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityImmersive;->D:Landroid/widget/TextView;

    .line 1074
    .line 1075
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1076
    .line 1077
    .line 1078
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityImmersive;->G:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 1079
    .line 1080
    const/16 v3, 0x8

    .line 1081
    .line 1082
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1083
    .line 1084
    .line 1085
    goto :goto_16

    .line 1086
    :goto_15
    iput v5, v2, Lcom/yunpan/appmanage/ui/ActivityImmersive;->L:I

    .line 1087
    .line 1088
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityImmersive;->C:Landroid/widget/TextView;

    .line 1089
    .line 1090
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1091
    .line 1092
    .line 1093
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityImmersive;->D:Landroid/widget/TextView;

    .line 1094
    .line 1095
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1096
    .line 1097
    .line 1098
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityImmersive;->G:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 1099
    .line 1100
    const/16 v3, 0x8

    .line 1101
    .line 1102
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1103
    .line 1104
    .line 1105
    :cond_2a
    :goto_16
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityImmersive;->H:Lx9/m2;

    .line 1106
    .line 1107
    invoke-virtual {v0, v11}, Lc6/g;->E(Ljava/util/List;)V

    .line 1108
    .line 1109
    .line 1110
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityImmersive;->F:Lx9/n2;

    .line 1111
    .line 1112
    iget v3, v2, Lcom/yunpan/appmanage/ui/ActivityImmersive;->L:I

    .line 1113
    .line 1114
    invoke-virtual {v0, v3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v0

    .line 1118
    check-cast v0, Lx9/j1;

    .line 1119
    .line 1120
    const/4 v3, 0x1

    .line 1121
    iput-boolean v3, v0, Lx9/j1;->b:Z

    .line 1122
    .line 1123
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityImmersive;->F:Lx9/n2;

    .line 1124
    .line 1125
    iget v3, v2, Lcom/yunpan/appmanage/ui/ActivityImmersive;->L:I

    .line 1126
    .line 1127
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 1128
    .line 1129
    .line 1130
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityImmersive;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 1131
    .line 1132
    iget v2, v2, Lcom/yunpan/appmanage/ui/ActivityImmersive;->L:I

    .line 1133
    .line 1134
    invoke-virtual {v0, v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 1135
    .line 1136
    .line 1137
    return-void

    .line 1138
    :pswitch_7
    iget-object v2, v1, Lka/c;->c:Ljava/lang/Object;

    .line 1139
    .line 1140
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityGjDiy;

    .line 1141
    .line 1142
    iget-object v2, v2, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->S:Lha/u9;

    .line 1143
    .line 1144
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v0

    .line 1148
    invoke-virtual {v2, v0}, Lha/u9;->b(Ljava/lang/String;)V

    .line 1149
    .line 1150
    .line 1151
    return-void

    .line 1152
    :pswitch_8
    instance-of v2, v0, Lba/r;

    .line 1153
    .line 1154
    iget-object v3, v1, Lka/c;->c:Ljava/lang/Object;

    .line 1155
    .line 1156
    check-cast v3, Lcom/yunpan/appmanage/ui/ActivityDownload;

    .line 1157
    .line 1158
    if-eqz v2, :cond_2b

    .line 1159
    .line 1160
    check-cast v0, Lba/r;

    .line 1161
    .line 1162
    iget-object v2, v3, Lcom/yunpan/appmanage/ui/ActivityDownload;->R:Lba/q;

    .line 1163
    .line 1164
    invoke-virtual {v2, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 1165
    .line 1166
    .line 1167
    iget-object v2, v3, Lcom/yunpan/appmanage/ui/ActivityDownload;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 1168
    .line 1169
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 1170
    .line 1171
    .line 1172
    iget-object v2, v3, Lcom/yunpan/appmanage/ui/ActivityDownload;->S:Lx9/p5;

    .line 1173
    .line 1174
    new-instance v4, Ljava/util/ArrayList;

    .line 1175
    .line 1176
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1177
    .line 1178
    .line 1179
    invoke-virtual {v2, v4}, Lc6/g;->E(Ljava/util/List;)V

    .line 1180
    .line 1181
    .line 1182
    iget-object v2, v3, Lcom/yunpan/appmanage/ui/ActivityDownload;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 1183
    .line 1184
    iget-boolean v0, v0, Lba/r;->o:Z

    .line 1185
    .line 1186
    invoke-virtual {v2, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setHasMoreData(Z)V

    .line 1187
    .line 1188
    .line 1189
    goto :goto_17

    .line 1190
    :cond_2b
    iget-object v2, v3, Lcom/yunpan/appmanage/ui/ActivityDownload;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 1191
    .line 1192
    iget-object v4, v3, Lcom/yunpan/appmanage/ui/ActivityDownload;->R:Lba/q;

    .line 1193
    .line 1194
    invoke-virtual {v4}, Lc6/g;->b()I

    .line 1195
    .line 1196
    .line 1197
    move-result v4

    .line 1198
    const/4 v5, 0x1

    .line 1199
    sub-int/2addr v4, v5

    .line 1200
    const/4 v6, 0x0

    .line 1201
    invoke-virtual {v2, v4, v6, v5}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->scrollToPositionWithOffset(IIZ)V

    .line 1202
    .line 1203
    .line 1204
    iget-object v2, v3, Lcom/yunpan/appmanage/ui/ActivityDownload;->S:Lx9/p5;

    .line 1205
    .line 1206
    check-cast v0, Ljava/util/List;

    .line 1207
    .line 1208
    invoke-virtual {v2, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 1209
    .line 1210
    .line 1211
    iget-object v0, v3, Lcom/yunpan/appmanage/ui/ActivityDownload;->S:Lx9/p5;

    .line 1212
    .line 1213
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 1214
    .line 1215
    .line 1216
    move-result v0

    .line 1217
    if-lez v0, :cond_2c

    .line 1218
    .line 1219
    iget-object v0, v3, Lcom/yunpan/appmanage/ui/ActivityDownload;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 1220
    .line 1221
    invoke-virtual {v0, v6, v6, v5}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->scrollToPositionWithOffset(IIZ)V

    .line 1222
    .line 1223
    .line 1224
    :cond_2c
    :goto_17
    return-void

    .line 1225
    :pswitch_9
    iget-object v2, v1, Lka/c;->c:Ljava/lang/Object;

    .line 1226
    .line 1227
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityDisplayStartApp;

    .line 1228
    .line 1229
    iget-object v2, v2, Lcom/yunpan/appmanage/ui/ActivityDisplayStartApp;->D:Lx9/a0;

    .line 1230
    .line 1231
    check-cast v0, Ljava/util/List;

    .line 1232
    .line 1233
    invoke-virtual {v2, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 1234
    .line 1235
    .line 1236
    return-void

    .line 1237
    :pswitch_a
    iget-object v2, v1, Lka/c;->c:Ljava/lang/Object;

    .line 1238
    .line 1239
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityDesktopSelected;

    .line 1240
    .line 1241
    iget-object v2, v2, Lcom/yunpan/appmanage/ui/ActivityDesktopSelected;->D:Lx9/l1;

    .line 1242
    .line 1243
    check-cast v0, Ljava/util/List;

    .line 1244
    .line 1245
    invoke-virtual {v2, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 1246
    .line 1247
    .line 1248
    return-void

    .line 1249
    :pswitch_b
    :try_start_0
    iget-object v2, v1, Lka/c;->c:Ljava/lang/Object;

    .line 1250
    .line 1251
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityCleanMemoryWhitelist;

    .line 1252
    .line 1253
    iget-object v2, v2, Lcom/yunpan/appmanage/ui/ActivityCleanMemoryWhitelist;->E:Lx9/a1;

    .line 1254
    .line 1255
    check-cast v0, Ljava/util/List;

    .line 1256
    .line 1257
    invoke-virtual {v2, v0}, Lc6/g;->E(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1258
    .line 1259
    .line 1260
    :catch_0
    return-void

    .line 1261
    :pswitch_c
    iget-object v2, v1, Lka/c;->c:Ljava/lang/Object;

    .line 1262
    .line 1263
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;

    .line 1264
    .line 1265
    iget-object v3, v2, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->F:Lx9/a0;

    .line 1266
    .line 1267
    check-cast v0, Ljava/util/List;

    .line 1268
    .line 1269
    invoke-virtual {v3, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 1270
    .line 1271
    .line 1272
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->G:Landroid/widget/LinearLayout;

    .line 1273
    .line 1274
    iget-object v2, v2, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->F:Lx9/a0;

    .line 1275
    .line 1276
    invoke-virtual {v2}, Lc6/g;->b()I

    .line 1277
    .line 1278
    .line 1279
    move-result v2

    .line 1280
    if-nez v2, :cond_2d

    .line 1281
    .line 1282
    const/4 v2, 0x0

    .line 1283
    goto :goto_18

    .line 1284
    :cond_2d
    const/16 v2, 0x8

    .line 1285
    .line 1286
    :goto_18
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1287
    .line 1288
    .line 1289
    return-void

    .line 1290
    :pswitch_d
    iget-object v2, v1, Lka/c;->c:Ljava/lang/Object;

    .line 1291
    .line 1292
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityAppBatch;

    .line 1293
    .line 1294
    iget-object v2, v2, Lcom/yunpan/appmanage/ui/ActivityAppBatch;->F:Lx9/u;

    .line 1295
    .line 1296
    check-cast v0, Ljava/util/List;

    .line 1297
    .line 1298
    invoke-virtual {v2, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 1299
    .line 1300
    .line 1301
    return-void

    .line 1302
    :pswitch_e
    iget-object v2, v1, Lka/c;->c:Ljava/lang/Object;

    .line 1303
    .line 1304
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityAccessibility;

    .line 1305
    .line 1306
    iget-object v3, v2, Lcom/yunpan/appmanage/ui/ActivityAccessibility;->D:Lx9/a;

    .line 1307
    .line 1308
    check-cast v0, Ljava/util/List;

    .line 1309
    .line 1310
    invoke-virtual {v3, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 1311
    .line 1312
    .line 1313
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityAccessibility;->D:Lx9/a;

    .line 1314
    .line 1315
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 1316
    .line 1317
    .line 1318
    move-result v0

    .line 1319
    if-nez v0, :cond_2e

    .line 1320
    .line 1321
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityAccessibility;->E:Landroid/widget/TextView;

    .line 1322
    .line 1323
    const-string v2, "\u6ca1\u6709\u65e0\u969c\u788d\u670d\u52a1"

    .line 1324
    .line 1325
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1326
    .line 1327
    .line 1328
    goto :goto_19

    .line 1329
    :cond_2e
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityAccessibility;->E:Landroid/widget/TextView;

    .line 1330
    .line 1331
    const/16 v2, 0x8

    .line 1332
    .line 1333
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1334
    .line 1335
    .line 1336
    :goto_19
    return-void

    .line 1337
    :pswitch_f
    :try_start_1
    iget-object v2, v1, Lka/c;->c:Ljava/lang/Object;

    .line 1338
    .line 1339
    check-cast v2, Lcom/yunpan/appmanage/service/AccService;

    .line 1340
    .line 1341
    check-cast v0, Lz7/o;

    .line 1342
    .line 1343
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1344
    .line 1345
    .line 1346
    if-eqz v0, :cond_33

    .line 1347
    .line 1348
    iget-object v3, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 1349
    .line 1350
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1351
    .line 1352
    .line 1353
    move-result v3

    .line 1354
    if-eqz v3, :cond_2f

    .line 1355
    .line 1356
    goto :goto_1a

    .line 1357
    :cond_2f
    iget-boolean v3, v2, Lcom/yunpan/appmanage/service/AccService;->T0:Z

    .line 1358
    .line 1359
    if-eqz v3, :cond_30

    .line 1360
    .line 1361
    goto :goto_1a

    .line 1362
    :cond_30
    iget-object v3, v2, Lcom/yunpan/appmanage/service/AccService;->N0:Ljava/util/concurrent/ExecutorService;

    .line 1363
    .line 1364
    if-eqz v3, :cond_31

    .line 1365
    .line 1366
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 1367
    .line 1368
    .line 1369
    move-result v3

    .line 1370
    if-eqz v3, :cond_32

    .line 1371
    .line 1372
    :cond_31
    const/4 v3, 0x4

    .line 1373
    invoke-static {v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 1374
    .line 1375
    .line 1376
    move-result-object v3

    .line 1377
    iput-object v3, v2, Lcom/yunpan/appmanage/service/AccService;->N0:Ljava/util/concurrent/ExecutorService;

    .line 1378
    .line 1379
    :cond_32
    iget-object v3, v2, Lcom/yunpan/appmanage/service/AccService;->N0:Ljava/util/concurrent/ExecutorService;

    .line 1380
    .line 1381
    new-instance v4, Lta/b;

    .line 1382
    .line 1383
    const/4 v5, 0x1

    .line 1384
    invoke-direct {v4, v2, v0, v5}, Lta/b;-><init>(Lcom/yunpan/appmanage/service/AccService;Lz7/o;I)V

    .line 1385
    .line 1386
    .line 1387
    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1388
    .line 1389
    .line 1390
    goto :goto_1a

    .line 1391
    :catch_1
    move-exception v0

    .line 1392
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 1393
    .line 1394
    iget-boolean v2, v2, Lwa/u;->u:Z

    .line 1395
    .line 1396
    if-eqz v2, :cond_33

    .line 1397
    .line 1398
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1399
    .line 1400
    const-string v3, "\u3010\u62a5\u9519\u4f4d\u7f6eb\u3011 "

    .line 1401
    .line 1402
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1403
    .line 1404
    .line 1405
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1406
    .line 1407
    .line 1408
    move-result-object v0

    .line 1409
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1410
    .line 1411
    .line 1412
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1413
    .line 1414
    .line 1415
    move-result-object v0

    .line 1416
    invoke-static {v0}, Lwa/w;->b(Ljava/lang/String;)V

    .line 1417
    .line 1418
    .line 1419
    :cond_33
    :goto_1a
    return-void

    .line 1420
    :pswitch_10
    iget-object v2, v1, Lka/c;->c:Ljava/lang/Object;

    .line 1421
    .line 1422
    check-cast v2, Lka/d;

    .line 1423
    .line 1424
    iget-object v3, v2, Lka/d;->d:Lx9/m3;

    .line 1425
    .line 1426
    check-cast v0, Ljava/util/List;

    .line 1427
    .line 1428
    invoke-virtual {v3, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 1429
    .line 1430
    .line 1431
    iget-object v0, v2, Lka/d;->f:Landroid/widget/ProgressBar;

    .line 1432
    .line 1433
    const/16 v3, 0x8

    .line 1434
    .line 1435
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1436
    .line 1437
    .line 1438
    iget-object v0, v2, Lka/d;->d:Lx9/m3;

    .line 1439
    .line 1440
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 1441
    .line 1442
    .line 1443
    move-result v0

    .line 1444
    if-nez v0, :cond_34

    .line 1445
    .line 1446
    iget-object v0, v2, Lka/d;->e:Landroid/widget/TextView;

    .line 1447
    .line 1448
    const-string v2, "\u6b64\u5e94\u7528\u65e0\u6b64\u7c7b\u7ec4\u4ef6"

    .line 1449
    .line 1450
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1451
    .line 1452
    .line 1453
    goto :goto_1b

    .line 1454
    :cond_34
    iget-object v0, v2, Lka/d;->e:Landroid/widget/TextView;

    .line 1455
    .line 1456
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1457
    .line 1458
    .line 1459
    :goto_1b
    return-void

    .line 1460
    nop

    .line 1461
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public b(Lgc/b;)V
    .locals 2

    .line 1
    iget p1, p0, Lka/c;->b:I

    .line 2
    .line 3
    sparse-switch p1, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :sswitch_0
    iget-object p1, p0, Lka/c;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Lua/y6;

    .line 10
    .line 11
    iget-object p1, p1, Lua/y6;->c:Lcom/yunpan/appmanage/ui/ActivityStudy;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityStudy;->E:Lha/u9;

    .line 14
    .line 15
    const-string v0, "\u5b89\u88c5\u4e2d"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lha/u9;->c(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :sswitch_1
    iget-object p1, p0, Lka/c;->c:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p1, Lua/y6;

    .line 24
    .line 25
    iget-object p1, p1, Lua/y6;->c:Lcom/yunpan/appmanage/ui/ActivityStudy;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityStudy;->E:Lha/u9;

    .line 28
    .line 29
    const-string v0, "\u5b89\u88c5\u4e2d"

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lha/u9;->c(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :sswitch_2
    iget-object p1, p0, Lka/c;->c:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p1, Lcom/yunpan/appmanage/ui/ActivitySeccompRoot;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivitySeccompRoot;->E:Lha/u9;

    .line 40
    .line 41
    const-string v0, "\u63d0\u6743\u4e2d"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lha/u9;->c(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :sswitch_3
    iget-object p1, p0, Lka/c;->c:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p1, Lcom/yunpan/appmanage/ui/ActivityRunMemory;

    .line 50
    .line 51
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->F:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :sswitch_4
    iget-object p1, p0, Lka/c;->c:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p1, Lcom/yunpan/appmanage/ui/ActivityPss;

    .line 66
    .line 67
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityPss;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 70
    .line 71
    .line 72
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityPss;->L:Landroid/widget/LinearLayout;

    .line 73
    .line 74
    const/16 v1, 0x8

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityPss;->K:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 80
    .line 81
    const/4 v0, 0x0

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :sswitch_5
    iget-object p1, p0, Lka/c;->c:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast p1, Lcom/yunpan/appmanage/ui/ActivityPs;

    .line 89
    .line 90
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityPs;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 91
    .line 92
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 93
    .line 94
    .line 95
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityPs;->I:Landroid/widget/LinearLayout;

    .line 96
    .line 97
    const/16 v1, 0x8

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityPs;->H:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 103
    .line 104
    const/4 v0, 0x0

    .line 105
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :sswitch_6
    iget-object p1, p0, Lka/c;->c:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast p1, Lcom/yunpan/appmanage/ui/ActivityPermissions;

    .line 112
    .line 113
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityPermissions;->G:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 114
    .line 115
    const/4 v0, 0x0

    .line 116
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :sswitch_7
    iget-object p1, p0, Lka/c;->c:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast p1, Lcom/yunpan/appmanage/ui/ActivityGjDiy;

    .line 123
    .line 124
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->S:Lha/u9;

    .line 125
    .line 126
    const-string v0, "\u5904\u7406\u4e2d"

    .line 127
    .line 128
    invoke-virtual {p1, v0}, Lha/u9;->c(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :sswitch_8
    iget-object p1, p0, Lka/c;->c:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast p1, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;

    .line 135
    .line 136
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 137
    .line 138
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 139
    .line 140
    .line 141
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->I:Landroid/widget/LinearLayout;

    .line 142
    .line 143
    const/16 v1, 0x8

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    .line 147
    .line 148
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->G:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 149
    .line 150
    const/4 v0, 0x0

    .line 151
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :sswitch_9
    iget-object p1, p0, Lka/c;->c:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast p1, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;

    .line 158
    .line 159
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 160
    .line 161
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 162
    .line 163
    .line 164
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;->G:Landroid/widget/LinearLayout;

    .line 165
    .line 166
    const/16 v1, 0x8

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 169
    .line 170
    .line 171
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;->F:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 172
    .line 173
    const/4 v0, 0x0

    .line 174
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 175
    .line 176
    .line 177
    return-void

    .line 178
    :sswitch_a
    iget-object p1, p0, Lka/c;->c:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast p1, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;

    .line 181
    .line 182
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 183
    .line 184
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 185
    .line 186
    .line 187
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->G:Landroid/widget/LinearLayout;

    .line 188
    .line 189
    const/16 v1, 0x8

    .line 190
    .line 191
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    .line 193
    .line 194
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->F:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 195
    .line 196
    const/4 v0, 0x0

    .line 197
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :sswitch_b
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 202
    .line 203
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_b
        0x7 -> :sswitch_a
        0x8 -> :sswitch_9
        0x9 -> :sswitch_8
        0x11 -> :sswitch_7
        0x16 -> :sswitch_6
        0x17 -> :sswitch_5
        0x18 -> :sswitch_4
        0x1a -> :sswitch_3
        0x1b -> :sswitch_2
        0x1c -> :sswitch_1
        0x1d -> :sswitch_0
    .end sparse-switch
.end method

.method public onComplete()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/16 v2, 0x8

    .line 4
    .line 5
    iget-object v3, p0, Lka/c;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iget v4, p0, Lka/c;->b:I

    .line 8
    .line 9
    packed-switch v4, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    :pswitch_0
    return-void

    .line 13
    :pswitch_1
    check-cast v3, Lua/y6;

    .line 14
    .line 15
    iget-object v0, v3, Lua/y6;->c:Lcom/yunpan/appmanage/ui/ActivityStudy;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityStudy;->E:Lha/u9;

    .line 18
    .line 19
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_2
    check-cast v3, Lua/y6;

    .line 24
    .line 25
    iget-object v0, v3, Lua/y6;->c:Lcom/yunpan/appmanage/ui/ActivityStudy;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityStudy;->E:Lha/u9;

    .line 28
    .line 29
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_3
    check-cast v3, Lcom/yunpan/appmanage/ui/ActivitySeccompRoot;

    .line 34
    .line 35
    iget-object v0, v3, Lcom/yunpan/appmanage/ui/ActivitySeccompRoot;->E:Lha/u9;

    .line 36
    .line 37
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_4
    check-cast v3, Lcom/yunpan/appmanage/ui/ActivityRunMemory;

    .line 42
    .line 43
    iget-object v0, v3, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->F:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, v3, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->E:Lx9/p4;

    .line 49
    .line 50
    iget-object v1, v3, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->C:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :pswitch_5
    check-cast v3, Lcom/yunpan/appmanage/ui/ActivityRotation;

    .line 57
    .line 58
    iget-object v0, v3, Lcom/yunpan/appmanage/ui/ActivityRotation;->D:Lx9/o4;

    .line 59
    .line 60
    iget-object v1, v3, Lcom/yunpan/appmanage/ui/ActivityRotation;->E:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_6
    check-cast v3, Lcom/yunpan/appmanage/ui/ActivityPss;

    .line 67
    .line 68
    iget-object v0, v3, Lcom/yunpan/appmanage/ui/ActivityPss;->K:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 74
    .line 75
    iget v0, v0, Lcom/yunpan/appmanage/util/w;->Q:I

    .line 76
    .line 77
    if-nez v0, :cond_0

    .line 78
    .line 79
    iget-object v0, v3, Lcom/yunpan/appmanage/ui/ActivityPss;->F:Lx9/h4;

    .line 80
    .line 81
    iget-object v1, v3, Lcom/yunpan/appmanage/ui/ActivityPss;->G:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    if-ne v0, v1, :cond_1

    .line 88
    .line 89
    iget-object v0, v3, Lcom/yunpan/appmanage/ui/ActivityPss;->F:Lx9/h4;

    .line 90
    .line 91
    iget-object v1, v3, Lcom/yunpan/appmanage/ui/ActivityPss;->H:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, v3, Lcom/yunpan/appmanage/ui/ActivityPss;->F:Lx9/h4;

    .line 98
    .line 99
    iget-object v1, v3, Lcom/yunpan/appmanage/ui/ActivityPss;->I:Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 102
    .line 103
    .line 104
    :goto_0
    return-void

    .line 105
    :pswitch_7
    check-cast v3, Lcom/yunpan/appmanage/ui/ActivityPs;

    .line 106
    .line 107
    iget-object v0, v3, Lcom/yunpan/appmanage/ui/ActivityPs;->H:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 110
    .line 111
    .line 112
    iget-object v0, v3, Lcom/yunpan/appmanage/ui/ActivityPs;->D:Lx9/g4;

    .line 113
    .line 114
    iget-boolean v1, v3, Lcom/yunpan/appmanage/ui/ActivityPs;->G:Z

    .line 115
    .line 116
    if-eqz v1, :cond_2

    .line 117
    .line 118
    iget-object v1, v3, Lcom/yunpan/appmanage/ui/ActivityPs;->E:Ljava/util/ArrayList;

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_2
    iget-object v1, v3, Lcom/yunpan/appmanage/ui/ActivityPs;->F:Ljava/util/ArrayList;

    .line 122
    .line 123
    :goto_1
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :pswitch_8
    check-cast v3, Lcom/yunpan/appmanage/ui/ActivityPermissions;

    .line 128
    .line 129
    iget-boolean v0, v3, Lcom/yunpan/appmanage/ui/ActivityPermissions;->I:Z

    .line 130
    .line 131
    if-eqz v0, :cond_3

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_3
    iget-object v0, v3, Lcom/yunpan/appmanage/ui/ActivityPermissions;->G:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 135
    .line 136
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 137
    .line 138
    .line 139
    iget-object v0, v3, Lcom/yunpan/appmanage/ui/ActivityPermissions;->E:Lx9/x4;

    .line 140
    .line 141
    iget-object v1, v3, Lcom/yunpan/appmanage/ui/ActivityPermissions;->F:Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 144
    .line 145
    .line 146
    :goto_2
    return-void

    .line 147
    :pswitch_9
    const-string v0, "\u5df2\u6253\u5f00"

    .line 148
    .line 149
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :pswitch_a
    check-cast v3, Lcom/yunpan/appmanage/ui/ActivityInstaller;

    .line 154
    .line 155
    iget-object v0, v3, Lcom/yunpan/appmanage/ui/ActivityInstaller;->D:Landroid/widget/TextView;

    .line 156
    .line 157
    const-string v1, "\u597d\u7684"

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :pswitch_b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 164
    .line 165
    const/16 v2, 0x13

    .line 166
    .line 167
    if-ge v1, v2, :cond_4

    .line 168
    .line 169
    const-string v1, "\u7cfb\u7edf\u4f4e\u4e8e\u5b89\u53534.4\uff0c\u4e0d\u652f\u6301\u8bbe\u7f6e\u5168\u5c40\u6c89\u6d78\u529f\u80fd"

    .line 170
    .line 171
    invoke-static {v1, v0}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 172
    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_4
    const/16 v2, 0x1e

    .line 176
    .line 177
    if-lt v1, v2, :cond_5

    .line 178
    .line 179
    const-string v1, "\u5b89\u535311\u4e4b\u540e\u7684\u7cfb\u7edf\u4e0d\u652f\u6301\u8bbe\u7f6e\u5168\u5c40\u6c89\u6d78\u529f\u80fd"

    .line 180
    .line 181
    invoke-static {v1, v0}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 182
    .line 183
    .line 184
    :cond_5
    :goto_3
    return-void

    .line 185
    :pswitch_c
    check-cast v3, Lcom/yunpan/appmanage/ui/ActivityGjDiy;

    .line 186
    .line 187
    iget-object v0, v3, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->S:Lha/u9;

    .line 188
    .line 189
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 190
    .line 191
    .line 192
    return-void

    .line 193
    :pswitch_d
    check-cast v3, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;

    .line 194
    .line 195
    const/4 v0, -0x1

    .line 196
    iput v0, v3, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->D:I

    .line 197
    .line 198
    iget-object v0, v3, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->C:Landroid/widget/ImageView;

    .line 199
    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .line 204
    .line 205
    iget-object v2, v3, Lda/g;->A:Lda/g;

    .line 206
    .line 207
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const-string v2, "/FloatButtonIco"

    .line 215
    .line 216
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 228
    .line 229
    .line 230
    return-void

    .line 231
    :pswitch_e
    check-cast v3, Lcom/yunpan/appmanage/ui/ActivityDownload;

    .line 232
    .line 233
    iget-object v0, v3, Lcom/yunpan/appmanage/ui/ActivityDownload;->P:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 234
    .line 235
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 236
    .line 237
    .line 238
    return-void

    .line 239
    :pswitch_f
    check-cast v3, Lcom/yunpan/appmanage/ui/ActivityAutomation;

    .line 240
    .line 241
    iget-object v0, v3, Lcom/yunpan/appmanage/ui/ActivityAutomation;->D:Landroid/widget/ImageView;

    .line 242
    .line 243
    const v1, 0x7f080237

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 247
    .line 248
    .line 249
    iget-object v0, v3, Lcom/yunpan/appmanage/ui/ActivityAutomation;->E:Landroid/widget/TextView;

    .line 250
    .line 251
    const-string v1, "\u5f00\u542f\u670d\u52a1(\u603b\u5f00\u5173)"

    .line 252
    .line 253
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    .line 255
    .line 256
    return-void

    .line 257
    :pswitch_10
    check-cast v3, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;

    .line 258
    .line 259
    iget-object v1, v3, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->G:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 260
    .line 261
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 262
    .line 263
    .line 264
    iget-object v1, v3, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->E:Lx9/z;

    .line 265
    .line 266
    iget-object v2, v3, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->F:Ljava/util/ArrayList;

    .line 267
    .line 268
    invoke-virtual {v1, v2}, Lc6/g;->E(Ljava/util/List;)V

    .line 269
    .line 270
    .line 271
    iget-object v1, v3, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->F:Ljava/util/ArrayList;

    .line 272
    .line 273
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    if-eqz v1, :cond_6

    .line 278
    .line 279
    iget-object v1, v3, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->I:Landroid/widget/LinearLayout;

    .line 280
    .line 281
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 282
    .line 283
    .line 284
    const-string v0, "\u65e0\u6570\u636e \u6216 \u7cfb\u7edf\u6ca1\u6709\u7edf\u8ba1\u529f\u80fd"

    .line 285
    .line 286
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    :cond_6
    return-void

    .line 290
    :pswitch_11
    check-cast v3, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;

    .line 291
    .line 292
    iget-object v1, v3, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;->F:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 293
    .line 294
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 295
    .line 296
    .line 297
    iget-object v1, v3, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;->D:Lx9/i;

    .line 298
    .line 299
    iget-object v2, v3, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;->E:Ljava/util/ArrayList;

    .line 300
    .line 301
    invoke-virtual {v1, v2}, Lc6/g;->E(Ljava/util/List;)V

    .line 302
    .line 303
    .line 304
    iget-object v1, v3, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;->E:Ljava/util/ArrayList;

    .line 305
    .line 306
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    if-eqz v1, :cond_7

    .line 311
    .line 312
    iget-object v1, v3, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;->G:Landroid/widget/LinearLayout;

    .line 313
    .line 314
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 315
    .line 316
    .line 317
    :cond_7
    return-void

    .line 318
    :pswitch_12
    check-cast v3, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;

    .line 319
    .line 320
    iget-object v1, v3, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->F:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 321
    .line 322
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 323
    .line 324
    .line 325
    iget-object v1, v3, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->D:Lx9/n;

    .line 326
    .line 327
    iget-object v2, v3, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->E:Ljava/util/ArrayList;

    .line 328
    .line 329
    invoke-virtual {v1, v2}, Lc6/g;->E(Ljava/util/List;)V

    .line 330
    .line 331
    .line 332
    iget-object v1, v3, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->E:Ljava/util/ArrayList;

    .line 333
    .line 334
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    if-eqz v1, :cond_8

    .line 339
    .line 340
    iget-object v1, v3, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->G:Landroid/widget/LinearLayout;

    .line 341
    .line 342
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 343
    .line 344
    .line 345
    :cond_8
    return-void

    .line 346
    :pswitch_13
    check-cast v3, Lcom/yunpan/appmanage/service/BootTaskService;

    .line 347
    .line 348
    :try_start_0
    new-instance v0, Lm0/i0;

    .line 349
    .line 350
    invoke-direct {v0, v3}, Lm0/i0;-><init>(Landroid/content/Context;)V

    .line 351
    .line 352
    .line 353
    const/4 v2, 0x3

    .line 354
    invoke-virtual {v0, v2}, Lm0/i0;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    .line 356
    .line 357
    :catch_0
    :try_start_1
    invoke-virtual {v3, v1}, Landroid/app/Service;->stopForeground(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 358
    .line 359
    .line 360
    :catch_1
    :try_start_2
    invoke-virtual {v3}, Landroid/app/Service;->stopSelf()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 361
    .line 362
    .line 363
    :catch_2
    return-void

    .line 364
    :pswitch_14
    check-cast v3, Lcom/yunpan/appmanage/service/AdbPairService;

    .line 365
    .line 366
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 367
    .line 368
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 369
    .line 370
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 371
    .line 372
    invoke-static {v0}, Lif/a;->H0(Landroid/content/ContextWrapper;)V

    .line 373
    .line 374
    .line 375
    :try_start_3
    new-instance v0, Lm0/i0;

    .line 376
    .line 377
    invoke-direct {v0, v3}, Lm0/i0;-><init>(Landroid/content/Context;)V

    .line 378
    .line 379
    .line 380
    const/4 v2, 0x4

    .line 381
    invoke-virtual {v0, v2}, Lm0/i0;->a(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 382
    .line 383
    .line 384
    :catch_3
    :try_start_4
    invoke-virtual {v3, v1}, Landroid/app/Service;->stopForeground(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 385
    .line 386
    .line 387
    :catch_4
    :try_start_5
    invoke-virtual {v3}, Landroid/app/Service;->stopSelf()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 388
    .line 389
    .line 390
    :catch_5
    return-void

    .line 391
    :pswitch_15
    check-cast v3, Lcom/yunpan/appmanage/service/AccRestartService;

    .line 392
    .line 393
    const/4 v0, 0x7

    .line 394
    :try_start_6
    new-instance v2, Lm0/i0;

    .line 395
    .line 396
    invoke-direct {v2, v3}, Lm0/i0;-><init>(Landroid/content/Context;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v2, v0}, Lm0/i0;->a(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 400
    .line 401
    .line 402
    :catch_6
    :try_start_7
    invoke-virtual {v3, v1}, Landroid/app/Service;->stopForeground(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 403
    .line 404
    .line 405
    :catch_7
    new-instance v1, Lm0/i0;

    .line 406
    .line 407
    invoke-direct {v1, v3}, Lm0/i0;-><init>(Landroid/content/Context;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v1, v0}, Lm0/i0;->a(I)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v3}, Landroid/app/Service;->stopSelf()V

    .line 414
    .line 415
    .line 416
    return-void

    .line 417
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_0
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
