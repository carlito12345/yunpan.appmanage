.class public final synthetic Lcom/google/android/material/datepicker/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/View$OnCreateContextMenuListener;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View$OnCreateContextMenuListener;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/android/material/datepicker/l;->a:I

    iput-object p1, p0, Lcom/google/android/material/datepicker/l;->b:Landroid/view/View$OnCreateContextMenuListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/material/datepicker/l;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/material/datepicker/l;->b:Landroid/view/View$OnCreateContextMenuListener;

    .line 7
    .line 8
    check-cast p1, Lha/a9;

    .line 9
    .line 10
    iget-object v0, p1, Lha/a9;->s:Lz7/s;

    .line 11
    .line 12
    const-string v1, "isOpen"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Lz7/p;->b()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iget-object p1, p1, Lha/a9;->i:Landroid/widget/ImageView;

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    const v3, 0x7f080234

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const v3, 0x7f080237

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 34
    .line 35
    .line 36
    xor-int/lit8 p1, v2, 0x1

    .line 37
    .line 38
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v0, v1, p1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_0
    iget-object p1, p0, Lcom/google/android/material/datepicker/l;->b:Landroid/view/View$OnCreateContextMenuListener;

    .line 47
    .line 48
    check-cast p1, Lha/v8;

    .line 49
    .line 50
    iget-object v0, p1, Lha/v8;->r:Lz7/s;

    .line 51
    .line 52
    const-string v1, "isOpen"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v2}, Lz7/p;->b()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    iget-object p1, p1, Lha/v8;->h:Landroid/widget/ImageView;

    .line 63
    .line 64
    if-nez v2, :cond_1

    .line 65
    .line 66
    const v3, 0x7f080234

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    const v3, 0x7f080237

    .line 71
    .line 72
    .line 73
    :goto_1
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    .line 75
    .line 76
    xor-int/lit8 p1, v2, 0x1

    .line 77
    .line 78
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {v0, v1, p1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :pswitch_1
    iget-object p1, p0, Lcom/google/android/material/datepicker/l;->b:Landroid/view/View$OnCreateContextMenuListener;

    .line 87
    .line 88
    check-cast p1, Lha/t8;

    .line 89
    .line 90
    iget-object v0, p1, Lha/t8;->I:Lz7/s;

    .line 91
    .line 92
    const-string v1, "isOpen"

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v2}, Lz7/p;->b()Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    iget-object p1, p1, Lha/t8;->i:Landroid/widget/ImageView;

    .line 103
    .line 104
    if-nez v2, :cond_2

    .line 105
    .line 106
    const v3, 0x7f080234

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_2
    const v3, 0x7f080237

    .line 111
    .line 112
    .line 113
    :goto_2
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    .line 115
    .line 116
    xor-int/lit8 p1, v2, 0x1

    .line 117
    .line 118
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {v0, v1, p1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :pswitch_2
    iget-object p1, p0, Lcom/google/android/material/datepicker/l;->b:Landroid/view/View$OnCreateContextMenuListener;

    .line 127
    .line 128
    check-cast p1, Lha/d8;

    .line 129
    .line 130
    iget-boolean v0, p1, Lha/d8;->g:Z

    .line 131
    .line 132
    xor-int/lit8 v1, v0, 0x1

    .line 133
    .line 134
    iput-boolean v1, p1, Lha/d8;->g:Z

    .line 135
    .line 136
    iget-object p1, p1, Lha/d8;->j:Landroid/widget/ImageView;

    .line 137
    .line 138
    if-nez v0, :cond_3

    .line 139
    .line 140
    const v0, 0x7f080234

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_3
    const v0, 0x7f080237

    .line 145
    .line 146
    .line 147
    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :pswitch_3
    iget-object p1, p0, Lcom/google/android/material/datepicker/l;->b:Landroid/view/View$OnCreateContextMenuListener;

    .line 152
    .line 153
    check-cast p1, Lha/x7;

    .line 154
    .line 155
    iget-boolean v0, p1, Lha/x7;->s:Z

    .line 156
    .line 157
    xor-int/lit8 v1, v0, 0x1

    .line 158
    .line 159
    iput-boolean v1, p1, Lha/x7;->s:Z

    .line 160
    .line 161
    iget-object p1, p1, Lha/x7;->i:Landroid/widget/ImageView;

    .line 162
    .line 163
    if-nez v0, :cond_4

    .line 164
    .line 165
    const v0, 0x7f080234

    .line 166
    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_4
    const v0, 0x7f080237

    .line 170
    .line 171
    .line 172
    :goto_4
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :pswitch_4
    iget-object p1, p0, Lcom/google/android/material/datepicker/l;->b:Landroid/view/View$OnCreateContextMenuListener;

    .line 177
    .line 178
    check-cast p1, Lha/r7;

    .line 179
    .line 180
    iget-object v0, p1, Lha/r7;->j:Landroid/widget/TextView;

    .line 181
    .line 182
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    const-string v1, "\u641c\u5bfb"

    .line 191
    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-eqz v0, :cond_6

    .line 197
    .line 198
    iget-object v0, p1, Lha/r7;->j:Landroid/widget/TextView;

    .line 199
    .line 200
    const-string v1, "\u641c\u5bfb\u4e2d"

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    .line 204
    .line 205
    iget-object p1, p1, Lha/r7;->k:Lcom/yunpan/appmanage/util/h;

    .line 206
    .line 207
    iget-boolean v0, p1, Lcom/yunpan/appmanage/util/h;->f:Z

    .line 208
    .line 209
    if-eqz v0, :cond_5

    .line 210
    .line 211
    goto :goto_5

    .line 212
    :cond_5
    const/4 v0, 0x1

    .line 213
    iput-boolean v0, p1, Lcom/yunpan/appmanage/util/h;->f:Z

    .line 214
    .line 215
    iget-object v0, p1, Lcom/yunpan/appmanage/util/h;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 216
    .line 217
    const/4 v1, 0x0

    .line 218
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 219
    .line 220
    .line 221
    new-instance v0, Ljava/lang/Thread;

    .line 222
    .line 223
    new-instance v1, Lcom/yunpan/appmanage/util/g;

    .line 224
    .line 225
    const/4 v2, 0x0

    .line 226
    invoke-direct {v1, p1, v2}, Lcom/yunpan/appmanage/util/g;-><init>(Lcom/yunpan/appmanage/util/h;I)V

    .line 227
    .line 228
    .line 229
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 233
    .line 234
    .line 235
    :cond_6
    :goto_5
    return-void

    .line 236
    :pswitch_5
    iget-object p1, p0, Lcom/google/android/material/datepicker/l;->b:Landroid/view/View$OnCreateContextMenuListener;

    .line 237
    .line 238
    check-cast p1, Lha/o1;

    .line 239
    .line 240
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 241
    .line 242
    .line 243
    new-instance v0, Lha/j7;

    .line 244
    .line 245
    new-instance v1, Lh5/m;

    .line 246
    .line 247
    const/16 v2, 0x9

    .line 248
    .line 249
    invoke-direct {v1, v2, p1}, Lh5/m;-><init>(ILjava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    iget-object v2, p1, Lha/a4;->a:Landroid/app/Activity;

    .line 253
    .line 254
    iget-object p1, p1, Lha/a4;->b:Landroid/content/Context;

    .line 255
    .line 256
    invoke-direct {v0, v2, p1, v1}, Lha/j7;-><init>(Landroid/app/Activity;Landroid/content/Context;Lh5/m;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 260
    .line 261
    .line 262
    return-void

    .line 263
    :pswitch_6
    iget-object p1, p0, Lcom/google/android/material/datepicker/l;->b:Landroid/view/View$OnCreateContextMenuListener;

    .line 264
    .line 265
    check-cast p1, Lha/f7;

    .line 266
    .line 267
    iget-object v0, p1, Lha/f7;->h:Landroid/widget/EditText;

    .line 268
    .line 269
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    if-eqz v0, :cond_7

    .line 282
    .line 283
    const-string p1, "\u8bf7\u8f93\u5165\u8981\u66ff\u6362\u7684\u6587\u672c"

    .line 284
    .line 285
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 286
    .line 287
    .line 288
    goto :goto_6

    .line 289
    :cond_7
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 290
    .line 291
    .line 292
    iget-object v0, p1, Lha/f7;->k:Ljava/lang/Object;

    .line 293
    .line 294
    check-cast v0, Lua/d1;

    .line 295
    .line 296
    iget-object v1, p1, Lha/f7;->h:Landroid/widget/EditText;

    .line 297
    .line 298
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    iget-object p1, p1, Lha/f7;->j:Landroid/widget/TextView;

    .line 307
    .line 308
    check-cast p1, Landroid/widget/EditText;

    .line 309
    .line 310
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    iget-object v0, v0, Lua/d1;->b:Lcom/yunpan/appmanage/ui/ActivityCodeEditor;

    .line 319
    .line 320
    iget-boolean v2, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->S:Z

    .line 321
    .line 322
    if-eqz v2, :cond_8

    .line 323
    .line 324
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 325
    .line 326
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    invoke-virtual {v2}, Lmb/g;->toString()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    invoke-virtual {v2, v1, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    invoke-virtual {v0, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->setText(Ljava/lang/CharSequence;)V

    .line 339
    .line 340
    .line 341
    goto :goto_6

    .line 342
    :cond_8
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->D:Landroid/widget/EditText;

    .line 343
    .line 344
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    invoke-virtual {v2, v1, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object p1

    .line 356
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    .line 358
    .line 359
    :goto_6
    return-void

    .line 360
    :pswitch_7
    iget-object p1, p0, Lcom/google/android/material/datepicker/l;->b:Landroid/view/View$OnCreateContextMenuListener;

    .line 361
    .line 362
    check-cast p1, Lha/f7;

    .line 363
    .line 364
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 365
    .line 366
    .line 367
    iget-object v0, p1, Lha/f7;->k:Ljava/lang/Object;

    .line 368
    .line 369
    check-cast v0, Lcom/hjq/permissions/b;

    .line 370
    .line 371
    iget-object p1, p1, Lha/f7;->h:Landroid/widget/EditText;

    .line 372
    .line 373
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 374
    .line 375
    .line 376
    move-result-object p1

    .line 377
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object p1

    .line 381
    iget v1, v0, Lcom/hjq/permissions/b;->a:I

    .line 382
    .line 383
    packed-switch v1, :pswitch_data_1

    .line 384
    .line 385
    .line 386
    iget-object v1, v0, Lcom/hjq/permissions/b;->b:Ljava/lang/Object;

    .line 387
    .line 388
    check-cast v1, Lha/ze;

    .line 389
    .line 390
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 391
    .line 392
    .line 393
    new-instance v1, Lba/e;

    .line 394
    .line 395
    iget-object v2, v0, Lcom/hjq/permissions/b;->c:Ljava/lang/Object;

    .line 396
    .line 397
    check-cast v2, Lx9/n5;

    .line 398
    .line 399
    iget-object v0, v0, Lcom/hjq/permissions/b;->d:Ljava/lang/Object;

    .line 400
    .line 401
    check-cast v0, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 402
    .line 403
    const/4 v3, 0x2

    .line 404
    invoke-direct {v1, v2, v0, p1, v3}, Lba/e;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;Ljava/lang/String;I)V

    .line 405
    .line 406
    .line 407
    new-instance p1, Lmc/c;

    .line 408
    .line 409
    const/4 v0, 0x0

    .line 410
    invoke-direct {p1, v0, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 411
    .line 412
    .line 413
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 414
    .line 415
    invoke-virtual {p1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 416
    .line 417
    .line 418
    move-result-object p1

    .line 419
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    invoke-virtual {p1, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 424
    .line 425
    .line 426
    move-result-object p1

    .line 427
    new-instance v0, Lha/m6;

    .line 428
    .line 429
    const/16 v1, 0x18

    .line 430
    .line 431
    invoke-direct {v0, v1}, Lha/m6;-><init>(I)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {p1, v0}, Lec/b;->b(Lec/e;)V

    .line 435
    .line 436
    .line 437
    goto :goto_7

    .line 438
    :pswitch_8
    iget-object v1, v0, Lcom/hjq/permissions/b;->b:Ljava/lang/Object;

    .line 439
    .line 440
    check-cast v1, Lua/i9;

    .line 441
    .line 442
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 443
    .line 444
    .line 445
    new-instance v1, Lba/e;

    .line 446
    .line 447
    iget-object v2, v0, Lcom/hjq/permissions/b;->c:Ljava/lang/Object;

    .line 448
    .line 449
    check-cast v2, Lx9/n5;

    .line 450
    .line 451
    iget-object v0, v0, Lcom/hjq/permissions/b;->d:Ljava/lang/Object;

    .line 452
    .line 453
    check-cast v0, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 454
    .line 455
    const/16 v3, 0x9

    .line 456
    .line 457
    invoke-direct {v1, v2, v0, p1, v3}, Lba/e;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;Ljava/lang/String;I)V

    .line 458
    .line 459
    .line 460
    new-instance p1, Lmc/c;

    .line 461
    .line 462
    const/4 v0, 0x0

    .line 463
    invoke-direct {p1, v0, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 464
    .line 465
    .line 466
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 467
    .line 468
    invoke-virtual {p1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 469
    .line 470
    .line 471
    move-result-object p1

    .line 472
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    invoke-virtual {p1, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 477
    .line 478
    .line 479
    move-result-object p1

    .line 480
    new-instance v0, Lha/m6;

    .line 481
    .line 482
    const/16 v1, 0x19

    .line 483
    .line 484
    invoke-direct {v0, v1}, Lha/m6;-><init>(I)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {p1, v0}, Lec/b;->b(Lec/e;)V

    .line 488
    .line 489
    .line 490
    :goto_7
    return-void

    .line 491
    :pswitch_9
    iget-object v0, p0, Lcom/google/android/material/datepicker/l;->b:Landroid/view/View$OnCreateContextMenuListener;

    .line 492
    .line 493
    check-cast v0, Lha/z6;

    .line 494
    .line 495
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 496
    .line 497
    .line 498
    invoke-static {p1}, Lcom/bumptech/glide/c;->j(Landroid/view/View;)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 502
    .line 503
    .line 504
    iget-object p1, v0, Lha/z6;->m:Ljava/lang/Object;

    .line 505
    .line 506
    check-cast p1, Lha/y6;

    .line 507
    .line 508
    const/4 v0, 0x0

    .line 509
    const-string v1, ""

    .line 510
    .line 511
    invoke-interface {p1, v1, v0}, Lha/y6;->n(Ljava/lang/String;Z)V

    .line 512
    .line 513
    .line 514
    return-void

    .line 515
    :pswitch_a
    iget-object p1, p0, Lcom/google/android/material/datepicker/l;->b:Landroid/view/View$OnCreateContextMenuListener;

    .line 516
    .line 517
    check-cast p1, Lha/p6;

    .line 518
    .line 519
    iget-object v0, p1, Lha/p6;->h:Landroid/widget/TextView;

    .line 520
    .line 521
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 522
    .line 523
    .line 524
    move-result-object v0

    .line 525
    const-string v1, "\u5f00\u59cb\u76d1\u542c\u6309\u952e"

    .line 526
    .line 527
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    move-result v0

    .line 531
    iget-object v2, p1, Lha/p6;->l:Lha/o6;

    .line 532
    .line 533
    if-eqz v0, :cond_9

    .line 534
    .line 535
    iget-object v0, p1, Lha/p6;->h:Landroid/widget/TextView;

    .line 536
    .line 537
    const-string v1, "\u505c\u6b62\u76d1\u542c\u6309\u952e"

    .line 538
    .line 539
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    .line 541
    .line 542
    iget-object v0, p1, Lha/p6;->j:Lx9/i2;

    .line 543
    .line 544
    new-instance v1, Ljava/util/ArrayList;

    .line 545
    .line 546
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 550
    .line 551
    .line 552
    :try_start_0
    iget-object p1, p1, Lha/p6;->k:Lcom/hsae/autosdk/hmi/IHmi;

    .line 553
    .line 554
    invoke-interface {p1, v2}, Lcom/hsae/autosdk/hmi/IHmi;->registerHmiCallback(Lcom/hsae/autosdk/hmi/IHmiCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    .line 556
    .line 557
    goto :goto_9

    .line 558
    :catch_0
    move-exception p1

    .line 559
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 560
    .line 561
    .line 562
    goto :goto_9

    .line 563
    :cond_9
    :try_start_1
    iget-object v0, p1, Lha/p6;->k:Lcom/hsae/autosdk/hmi/IHmi;

    .line 564
    .line 565
    invoke-interface {v0, v2}, Lcom/hsae/autosdk/hmi/IHmi;->unregisterHmiCallback(Lcom/hsae/autosdk/hmi/IHmiCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 566
    .line 567
    .line 568
    goto :goto_8

    .line 569
    :catch_1
    move-exception v0

    .line 570
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 571
    .line 572
    .line 573
    :goto_8
    iget-object p1, p1, Lha/p6;->h:Landroid/widget/TextView;

    .line 574
    .line 575
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    .line 577
    .line 578
    :goto_9
    return-void

    .line 579
    :pswitch_b
    iget-object p1, p0, Lcom/google/android/material/datepicker/l;->b:Landroid/view/View$OnCreateContextMenuListener;

    .line 580
    .line 581
    check-cast p1, Lha/j6;

    .line 582
    .line 583
    iget-object v0, p1, Lha/j6;->j:Landroid/widget/TextView;

    .line 584
    .line 585
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    const-string v1, "\u5f00\u59cb\u76d1\u542c\u6309\u952e"

    .line 590
    .line 591
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 592
    .line 593
    .line 594
    move-result v0

    .line 595
    if-eqz v0, :cond_a

    .line 596
    .line 597
    iget-object v0, p1, Lha/j6;->l:Lx9/i2;

    .line 598
    .line 599
    new-instance v1, Ljava/util/ArrayList;

    .line 600
    .line 601
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 605
    .line 606
    .line 607
    iget-object v0, p1, Lha/a4;->b:Landroid/content/Context;

    .line 608
    .line 609
    const/4 v1, 0x1

    .line 610
    invoke-static {v0, v1}, Lta/m;->b(Landroid/content/Context;Z)V

    .line 611
    .line 612
    .line 613
    const/4 v0, 0x5

    .line 614
    iput v0, p1, Lha/j6;->m:I

    .line 615
    .line 616
    iget-object v0, p1, Lha/j6;->j:Landroid/widget/TextView;

    .line 617
    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    .line 619
    .line 620
    const-string v2, "\u76d1\u542c\u6309\u952e\u4e2d("

    .line 621
    .line 622
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 623
    .line 624
    .line 625
    iget v2, p1, Lha/j6;->m:I

    .line 626
    .line 627
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 628
    .line 629
    .line 630
    const-string v2, "s)"

    .line 631
    .line 632
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    .line 634
    .line 635
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v1

    .line 639
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 640
    .line 641
    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    .line 643
    .line 644
    const-string v1, "\u8bf7\u5728"

    .line 645
    .line 646
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 647
    .line 648
    .line 649
    iget v1, p1, Lha/j6;->m:I

    .line 650
    .line 651
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 652
    .line 653
    .line 654
    const-string v1, "\u79d2\u5185\u70b9\u51fb\u60a8\u7684\u6309\u952e"

    .line 655
    .line 656
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    const/4 v1, 0x0

    .line 664
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 665
    .line 666
    .line 667
    iget-object v0, p1, Lha/j6;->g:Landroid/os/Handler;

    .line 668
    .line 669
    new-instance v1, La2/h;

    .line 670
    .line 671
    const/16 v2, 0x1a

    .line 672
    .line 673
    invoke-direct {v1, v2, p1}, La2/h;-><init>(ILjava/lang/Object;)V

    .line 674
    .line 675
    .line 676
    const-wide/16 v2, 0x3e8

    .line 677
    .line 678
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 679
    .line 680
    .line 681
    :cond_a
    return-void

    .line 682
    :pswitch_c
    iget-object v0, p0, Lcom/google/android/material/datepicker/l;->b:Landroid/view/View$OnCreateContextMenuListener;

    .line 683
    .line 684
    check-cast v0, Lha/s5;

    .line 685
    .line 686
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 687
    .line 688
    .line 689
    const/16 v1, 0x29a

    .line 690
    .line 691
    invoke-static {v1, p1}, Lcom/bumptech/glide/c;->i(ILandroid/view/View;)V

    .line 692
    .line 693
    .line 694
    iget-object p1, v0, Lha/s5;->h:Landroid/widget/TextView;

    .line 695
    .line 696
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 697
    .line 698
    .line 699
    move-result-object p1

    .line 700
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object p1

    .line 704
    const-string v1, "\u8fde\u63a5\u4e2d"

    .line 705
    .line 706
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 707
    .line 708
    .line 709
    move-result p1

    .line 710
    if-eqz p1, :cond_b

    .line 711
    .line 712
    goto/16 :goto_b

    .line 713
    .line 714
    :cond_b
    iget-object p1, v0, Lha/s5;->h:Landroid/widget/TextView;

    .line 715
    .line 716
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 717
    .line 718
    .line 719
    iget-object p1, v0, Lha/s5;->k:Ljava/lang/Object;

    .line 720
    .line 721
    check-cast p1, Landroid/widget/EditText;

    .line 722
    .line 723
    invoke-static {p1}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object p1

    .line 727
    iget-object v1, v0, Lha/s5;->i:Ljava/lang/Object;

    .line 728
    .line 729
    check-cast v1, Lx9/n5;

    .line 730
    .line 731
    iput-object p1, v1, Lx9/n5;->c:Ljava/lang/String;

    .line 732
    .line 733
    iget-object p1, v0, Lha/s5;->l:Landroid/widget/TextView;

    .line 734
    .line 735
    check-cast p1, Landroid/widget/EditText;

    .line 736
    .line 737
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 738
    .line 739
    .line 740
    move-result-object p1

    .line 741
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 742
    .line 743
    .line 744
    move-result-object p1

    .line 745
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object p1

    .line 749
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 750
    .line 751
    .line 752
    move-result p1

    .line 753
    iput p1, v1, Lx9/n5;->d:I

    .line 754
    .line 755
    iget-object p1, v0, Lha/s5;->m:Landroid/widget/TextView;

    .line 756
    .line 757
    check-cast p1, Landroid/widget/EditText;

    .line 758
    .line 759
    invoke-static {p1}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object p1

    .line 763
    iput-object p1, v1, Lx9/n5;->e:Ljava/lang/String;

    .line 764
    .line 765
    iget-object p1, v0, Lha/s5;->n:Landroid/widget/TextView;

    .line 766
    .line 767
    check-cast p1, Landroid/widget/EditText;

    .line 768
    .line 769
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 770
    .line 771
    .line 772
    move-result-object p1

    .line 773
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 774
    .line 775
    .line 776
    move-result-object p1

    .line 777
    iput-object p1, v1, Lx9/n5;->f:Ljava/lang/String;

    .line 778
    .line 779
    iget-object p1, v0, Lha/s5;->p:Landroid/view/View;

    .line 780
    .line 781
    check-cast p1, Landroid/widget/Spinner;

    .line 782
    .line 783
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    .line 784
    .line 785
    .line 786
    move-result-object p1

    .line 787
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object p1

    .line 791
    iput-object p1, v1, Lx9/n5;->y:Ljava/lang/String;

    .line 792
    .line 793
    iget p1, v1, Lx9/n5;->a:I

    .line 794
    .line 795
    const/4 v2, 0x4

    .line 796
    if-ne p1, v2, :cond_c

    .line 797
    .line 798
    new-instance p1, Lba/f;

    .line 799
    .line 800
    const/16 v2, 0x8

    .line 801
    .line 802
    invoke-direct {p1, v2, v1}, Lba/f;-><init>(ILx9/n5;)V

    .line 803
    .line 804
    .line 805
    new-instance v1, Lmc/c;

    .line 806
    .line 807
    const/4 v2, 0x0

    .line 808
    invoke-direct {v1, v2, p1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 809
    .line 810
    .line 811
    sget-object p1, Lrc/f;->b:Lec/j;

    .line 812
    .line 813
    invoke-virtual {v1, p1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 814
    .line 815
    .line 816
    move-result-object p1

    .line 817
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 818
    .line 819
    .line 820
    move-result-object v1

    .line 821
    invoke-virtual {p1, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 822
    .line 823
    .line 824
    move-result-object p1

    .line 825
    goto :goto_a

    .line 826
    :cond_c
    const/4 v2, 0x5

    .line 827
    if-ne p1, v2, :cond_d

    .line 828
    .line 829
    new-instance p1, Lba/f;

    .line 830
    .line 831
    const/16 v2, 0x9

    .line 832
    .line 833
    invoke-direct {p1, v2, v1}, Lba/f;-><init>(ILx9/n5;)V

    .line 834
    .line 835
    .line 836
    new-instance v1, Lmc/c;

    .line 837
    .line 838
    const/4 v2, 0x0

    .line 839
    invoke-direct {v1, v2, p1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 840
    .line 841
    .line 842
    sget-object p1, Lrc/f;->b:Lec/j;

    .line 843
    .line 844
    invoke-virtual {v1, p1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 845
    .line 846
    .line 847
    move-result-object p1

    .line 848
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 849
    .line 850
    .line 851
    move-result-object v1

    .line 852
    invoke-virtual {p1, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 853
    .line 854
    .line 855
    move-result-object p1

    .line 856
    goto :goto_a

    .line 857
    :cond_d
    const/4 p1, 0x0

    .line 858
    :goto_a
    if-nez p1, :cond_e

    .line 859
    .line 860
    const-string v1, "\u51fa\u9519\uff1aobservable==null"

    .line 861
    .line 862
    const/4 v2, 0x1

    .line 863
    invoke-static {v1, v2}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 864
    .line 865
    .line 866
    iget-object v1, v0, Lha/s5;->h:Landroid/widget/TextView;

    .line 867
    .line 868
    const-string v2, "\u8fde\u63a5"

    .line 869
    .line 870
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 871
    .line 872
    .line 873
    :cond_e
    new-instance v1, Lha/p0;

    .line 874
    .line 875
    const/16 v2, 0xa

    .line 876
    .line 877
    invoke-direct {v1, v2, v0}, Lha/p0;-><init>(ILjava/lang/Object;)V

    .line 878
    .line 879
    .line 880
    invoke-virtual {p1, v1}, Lec/b;->b(Lec/e;)V

    .line 881
    .line 882
    .line 883
    :goto_b
    return-void

    .line 884
    :pswitch_d
    iget-object p1, p0, Lcom/google/android/material/datepicker/l;->b:Landroid/view/View$OnCreateContextMenuListener;

    .line 885
    .line 886
    check-cast p1, Lha/y5;

    .line 887
    .line 888
    invoke-static {p1}, Lha/y5;->a(Lha/y5;)V

    .line 889
    .line 890
    .line 891
    return-void

    .line 892
    :pswitch_e
    iget-object p1, p0, Lcom/google/android/material/datepicker/l;->b:Landroid/view/View$OnCreateContextMenuListener;

    .line 893
    .line 894
    check-cast p1, Lha/s5;

    .line 895
    .line 896
    iget-object v0, p1, Lha/s5;->r:Ljava/lang/Object;

    .line 897
    .line 898
    check-cast v0, Lja/b;

    .line 899
    .line 900
    const/4 v1, 0x1

    .line 901
    iput-boolean v1, v0, Lja/b;->l:Z

    .line 902
    .line 903
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 904
    .line 905
    .line 906
    return-void

    .line 907
    :pswitch_f
    iget-object p1, p0, Lcom/google/android/material/datepicker/l;->b:Landroid/view/View$OnCreateContextMenuListener;

    .line 908
    .line 909
    check-cast p1, Lha/r5;

    .line 910
    .line 911
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 912
    .line 913
    .line 914
    return-void

    .line 915
    :pswitch_10
    iget-object p1, p0, Lcom/google/android/material/datepicker/l;->b:Landroid/view/View$OnCreateContextMenuListener;

    .line 916
    .line 917
    check-cast p1, Lha/m5;

    .line 918
    .line 919
    invoke-virtual {p1}, Lha/m5;->dismiss()V

    .line 920
    .line 921
    .line 922
    return-void

    .line 923
    :pswitch_11
    iget-object p1, p0, Lcom/google/android/material/datepicker/l;->b:Landroid/view/View$OnCreateContextMenuListener;

    .line 924
    .line 925
    check-cast p1, Lha/j5;

    .line 926
    .line 927
    invoke-virtual {p1}, Lha/j5;->dismiss()V

    .line 928
    .line 929
    .line 930
    return-void

    .line 931
    :pswitch_12
    iget-object p1, p0, Lcom/google/android/material/datepicker/l;->b:Landroid/view/View$OnCreateContextMenuListener;

    .line 932
    .line 933
    check-cast p1, Lha/a4;

    .line 934
    .line 935
    iget-boolean v0, p1, Lha/a4;->d:Z

    .line 936
    .line 937
    if-eqz v0, :cond_f

    .line 938
    .line 939
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 940
    .line 941
    .line 942
    :cond_f
    return-void

    .line 943
    :pswitch_13
    iget-object p1, p0, Lcom/google/android/material/datepicker/l;->b:Landroid/view/View$OnCreateContextMenuListener;

    .line 944
    .line 945
    check-cast p1, Lha/y3;

    .line 946
    .line 947
    iget-object v0, p1, Lha/y3;->j:Landroid/widget/TextView;

    .line 948
    .line 949
    iget-object v1, p1, Lha/y3;->g:Ljava/lang/String;

    .line 950
    .line 951
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 952
    .line 953
    .line 954
    move-result v1

    .line 955
    if-eqz v1, :cond_10

    .line 956
    .line 957
    const-string v1, "\u5bfc\u51fa\u4e2d"

    .line 958
    .line 959
    goto :goto_c

    .line 960
    :cond_10
    const-string v1, "\u5bfc\u5165\u4e2d"

    .line 961
    .line 962
    :goto_c
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 963
    .line 964
    .line 965
    new-instance v0, Lha/w3;

    .line 966
    .line 967
    const/4 v1, 0x2

    .line 968
    invoke-direct {v0, p1, v1}, Lha/w3;-><init>(Lha/y3;I)V

    .line 969
    .line 970
    .line 971
    new-instance v1, Lmc/c;

    .line 972
    .line 973
    const/4 v2, 0x0

    .line 974
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 975
    .line 976
    .line 977
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 978
    .line 979
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 980
    .line 981
    .line 982
    move-result-object v0

    .line 983
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 984
    .line 985
    .line 986
    move-result-object v1

    .line 987
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 988
    .line 989
    .line 990
    move-result-object v0

    .line 991
    new-instance v1, Lha/x3;

    .line 992
    .line 993
    const/4 v2, 0x0

    .line 994
    invoke-direct {v1, p1, v2}, Lha/x3;-><init>(Lha/y3;I)V

    .line 995
    .line 996
    .line 997
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 998
    .line 999
    .line 1000
    return-void

    .line 1001
    :pswitch_14
    const/4 p1, 0x0

    .line 1002
    iget-object v0, p0, Lcom/google/android/material/datepicker/l;->b:Landroid/view/View$OnCreateContextMenuListener;

    .line 1003
    .line 1004
    check-cast v0, Lha/t2;

    .line 1005
    .line 1006
    iput-object p1, v0, Lha/t2;->j:Lha/cd;

    .line 1007
    .line 1008
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1009
    .line 1010
    .line 1011
    return-void

    .line 1012
    :pswitch_15
    const/4 p1, 0x0

    .line 1013
    iget-object v0, p0, Lcom/google/android/material/datepicker/l;->b:Landroid/view/View$OnCreateContextMenuListener;

    .line 1014
    .line 1015
    check-cast v0, Lha/q2;

    .line 1016
    .line 1017
    iput-object p1, v0, Lha/q2;->j:Lha/p2;

    .line 1018
    .line 1019
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1020
    .line 1021
    .line 1022
    return-void

    .line 1023
    :pswitch_16
    iget-object p1, p0, Lcom/google/android/material/datepicker/l;->b:Landroid/view/View$OnCreateContextMenuListener;

    .line 1024
    .line 1025
    check-cast p1, Lha/o2;

    .line 1026
    .line 1027
    iget-object v0, p1, Lha/a4;->a:Landroid/app/Activity;

    .line 1028
    .line 1029
    const-string v1, "clipboard"

    .line 1030
    .line 1031
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v0

    .line 1035
    check-cast v0, Landroid/content/ClipboardManager;

    .line 1036
    .line 1037
    iget-object v1, p1, Lha/o2;->h:Lcom/yunpan/appmanage/db/AppBean;

    .line 1038
    .line 1039
    iget-object v1, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 1040
    .line 1041
    const-string v2, "label"

    .line 1042
    .line 1043
    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v1

    .line 1047
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 1048
    .line 1049
    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1051
    .line 1052
    const-string v1, "\u5df2\u590d\u5236\u5305\u540d\uff1a"

    .line 1053
    .line 1054
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1055
    .line 1056
    .line 1057
    iget-object p1, p1, Lha/o2;->h:Lcom/yunpan/appmanage/db/AppBean;

    .line 1058
    .line 1059
    iget-object p1, p1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 1060
    .line 1061
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    .line 1063
    .line 1064
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1065
    .line 1066
    .line 1067
    move-result-object p1

    .line 1068
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 1069
    .line 1070
    .line 1071
    return-void

    .line 1072
    :pswitch_17
    iget-object p1, p0, Lcom/google/android/material/datepicker/l;->b:Landroid/view/View$OnCreateContextMenuListener;

    .line 1073
    .line 1074
    check-cast p1, Lha/d2;

    .line 1075
    .line 1076
    iget-object v0, p1, Lha/d2;->j:Ljava/lang/Object;

    .line 1077
    .line 1078
    check-cast v0, Landroid/widget/EditText;

    .line 1079
    .line 1080
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v0

    .line 1084
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v0

    .line 1088
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v0

    .line 1092
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v0

    .line 1096
    iget-object v1, p1, Lha/d2;->i:Ljava/lang/Object;

    .line 1097
    .line 1098
    check-cast v1, Lha/u1;

    .line 1099
    .line 1100
    invoke-virtual {v1, v0}, Lha/u1;->a(Ljava/lang/String;)V

    .line 1101
    .line 1102
    .line 1103
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1104
    .line 1105
    .line 1106
    return-void

    .line 1107
    :pswitch_18
    iget-object p1, p0, Lcom/google/android/material/datepicker/l;->b:Landroid/view/View$OnCreateContextMenuListener;

    .line 1108
    .line 1109
    check-cast p1, Lha/z1;

    .line 1110
    .line 1111
    iget-boolean v0, p1, Lha/z1;->p:Z

    .line 1112
    .line 1113
    xor-int/lit8 v1, v0, 0x1

    .line 1114
    .line 1115
    iput-boolean v1, p1, Lha/z1;->p:Z

    .line 1116
    .line 1117
    iget-object p1, p1, Lha/z1;->j:Landroid/widget/ImageView;

    .line 1118
    .line 1119
    if-nez v0, :cond_11

    .line 1120
    .line 1121
    const v0, 0x7f080234

    .line 1122
    .line 1123
    .line 1124
    goto :goto_d

    .line 1125
    :cond_11
    const v0, 0x7f080237

    .line 1126
    .line 1127
    .line 1128
    :goto_d
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1129
    .line 1130
    .line 1131
    return-void

    .line 1132
    :pswitch_19
    iget-object p1, p0, Lcom/google/android/material/datepicker/l;->b:Landroid/view/View$OnCreateContextMenuListener;

    .line 1133
    .line 1134
    check-cast p1, Lha/h1;

    .line 1135
    .line 1136
    iget-object v0, p1, Lha/h1;->i:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 1137
    .line 1138
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 1139
    .line 1140
    .line 1141
    move-result v0

    .line 1142
    iget-object v1, p1, Lha/h1;->h:Lea/c;

    .line 1143
    .line 1144
    invoke-interface {v1, v0}, Lea/c;->e(I)V

    .line 1145
    .line 1146
    .line 1147
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1148
    .line 1149
    .line 1150
    return-void

    .line 1151
    :pswitch_1a
    const/4 p1, 0x0

    .line 1152
    iget-object v0, p0, Lcom/google/android/material/datepicker/l;->b:Landroid/view/View$OnCreateContextMenuListener;

    .line 1153
    .line 1154
    check-cast v0, Lha/r0;

    .line 1155
    .line 1156
    iput-object p1, v0, Lha/r0;->j:Lha/q0;

    .line 1157
    .line 1158
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1159
    .line 1160
    .line 1161
    return-void

    .line 1162
    :pswitch_1b
    iget-object p1, p0, Lcom/google/android/material/datepicker/l;->b:Landroid/view/View$OnCreateContextMenuListener;

    .line 1163
    .line 1164
    check-cast p1, Lha/j0;

    .line 1165
    .line 1166
    iget-object v0, p1, Lha/j0;->i:Lha/g0;

    .line 1167
    .line 1168
    iget v1, p1, Lha/j0;->j:I

    .line 1169
    .line 1170
    invoke-virtual {v0, v1}, Lha/g0;->e(I)V

    .line 1171
    .line 1172
    .line 1173
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1174
    .line 1175
    .line 1176
    return-void

    .line 1177
    :pswitch_1c
    iget-object p1, p0, Lcom/google/android/material/datepicker/l;->b:Landroid/view/View$OnCreateContextMenuListener;

    .line 1178
    .line 1179
    check-cast p1, Lha/s;

    .line 1180
    .line 1181
    iget-boolean v0, p1, Lha/s;->q:Z

    .line 1182
    .line 1183
    xor-int/lit8 v1, v0, 0x1

    .line 1184
    .line 1185
    iput-boolean v1, p1, Lha/s;->q:Z

    .line 1186
    .line 1187
    iget-object p1, p1, Lha/s;->j:Landroid/widget/ImageView;

    .line 1188
    .line 1189
    if-nez v0, :cond_12

    .line 1190
    .line 1191
    const v0, 0x7f080234

    .line 1192
    .line 1193
    .line 1194
    goto :goto_e

    .line 1195
    :cond_12
    const v0, 0x7f080237

    .line 1196
    .line 1197
    .line 1198
    :goto_e
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1199
    .line 1200
    .line 1201
    return-void

    .line 1202
    :pswitch_1d
    iget-object p1, p0, Lcom/google/android/material/datepicker/l;->b:Landroid/view/View$OnCreateContextMenuListener;

    .line 1203
    .line 1204
    check-cast p1, Lcom/google/android/material/datepicker/n;

    .line 1205
    .line 1206
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/n;->i()V

    .line 1207
    .line 1208
    .line 1209
    const/4 p1, 0x0

    .line 1210
    throw p1

    .line 1211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_8
    .end packed-switch
.end method
