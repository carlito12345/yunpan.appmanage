.class public final synthetic Lua/g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lda/g;


# direct methods
.method public synthetic constructor <init>(Lda/g;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/g1;->a:I

    iput-object p1, p0, Lua/g1;->b:Lda/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    const p1, 0x7f080237

    .line 2
    .line 3
    .line 4
    const v0, 0x7f080234

    .line 5
    .line 6
    .line 7
    const-string v1, "isOn"

    .line 8
    .line 9
    iget-object v2, p0, Lua/g1;->b:Lda/g;

    .line 10
    .line 11
    iget v3, p0, Lua/g1;->a:I

    .line 12
    .line 13
    packed-switch v3, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    sget p1, Lcom/yunpan/appmanage/ui/ActivityStudy;->I:I

    .line 17
    .line 18
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityStudy;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    sget p1, Lcom/yunpan/appmanage/ui/ActivityStart;->G:I

    .line 25
    .line 26
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityStart;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_1
    sget p1, Lcom/yunpan/appmanage/ui/ActivitySeccompRoot;->G:I

    .line 33
    .line 34
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivitySeccompRoot;

    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_2
    sget p1, Lcom/yunpan/appmanage/ui/ActivityOuShangStatusBarNoRoot;->F:I

    .line 41
    .line 42
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityOuShangStatusBarNoRoot;

    .line 43
    .line 44
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_3
    sget p1, Lcom/yunpan/appmanage/ui/ActivityOuShangStatusBar;->E:I

    .line 49
    .line 50
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityOuShangStatusBar;

    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :pswitch_4
    sget p1, Lcom/yunpan/appmanage/ui/ActivityOuShang;->E:I

    .line 57
    .line 58
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityOuShang;

    .line 59
    .line 60
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :pswitch_5
    sget p1, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->a1:I

    .line 65
    .line 66
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;

    .line 67
    .line 68
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :pswitch_6
    sget p1, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->S0:I

    .line 73
    .line 74
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;

    .line 75
    .line 76
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :pswitch_7
    sget p1, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->F:I

    .line 81
    .line 82
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;

    .line 83
    .line 84
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :pswitch_8
    sget p1, Lcom/yunpan/appmanage/ui/ActivityNissan;->I:I

    .line 89
    .line 90
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityNissan;

    .line 91
    .line 92
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :pswitch_9
    sget p1, Lcom/yunpan/appmanage/ui/ActivityNezha;->F:I

    .line 97
    .line 98
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityNezha;

    .line 99
    .line 100
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :pswitch_a
    sget p1, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->I:I

    .line 105
    .line 106
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityLaboratory;

    .line 107
    .line 108
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :pswitch_b
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;

    .line 113
    .line 114
    iget-object v3, v2, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->H:Lz7/s;

    .line 115
    .line 116
    invoke-virtual {v3, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-virtual {v4}, Lz7/p;->b()Z

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    xor-int/lit8 v4, v4, 0x1

    .line 125
    .line 126
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-virtual {v3, v1, v4}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 131
    .line 132
    .line 133
    iget-object v3, v2, Lda/g;->A:Lda/g;

    .line 134
    .line 135
    iget-object v4, v2, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->H:Lz7/s;

    .line 136
    .line 137
    invoke-static {v3, v4}, Lq4/a;->U(Lda/g;Lz7/s;)V

    .line 138
    .line 139
    .line 140
    iget-object v3, v2, Lda/g;->A:Lda/g;

    .line 141
    .line 142
    invoke-static {v3}, Lta/m;->f(Lda/g;)V

    .line 143
    .line 144
    .line 145
    iget-object v3, v2, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->G:Landroid/widget/ImageView;

    .line 146
    .line 147
    iget-object v2, v2, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->H:Lz7/s;

    .line 148
    .line 149
    invoke-virtual {v2, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v1}, Lz7/p;->b()Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-eqz v1, :cond_0

    .line 158
    .line 159
    const p1, 0x7f080234

    .line 160
    .line 161
    .line 162
    :cond_0
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :pswitch_c
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;

    .line 167
    .line 168
    iget-object v3, v2, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->H:Lz7/s;

    .line 169
    .line 170
    invoke-virtual {v3, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    invoke-virtual {v4}, Lz7/p;->b()Z

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    xor-int/lit8 v4, v4, 0x1

    .line 179
    .line 180
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    invoke-virtual {v3, v1, v4}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 185
    .line 186
    .line 187
    iget-object v3, v2, Lda/g;->A:Lda/g;

    .line 188
    .line 189
    iget-object v4, v2, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->H:Lz7/s;

    .line 190
    .line 191
    invoke-static {v3, v4}, Lq4/a;->T(Landroid/content/Context;Lz7/s;)V

    .line 192
    .line 193
    .line 194
    iget-object v3, v2, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->G:Landroid/widget/ImageView;

    .line 195
    .line 196
    iget-object v2, v2, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->H:Lz7/s;

    .line 197
    .line 198
    invoke-virtual {v2, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v1}, Lz7/p;->b()Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-eqz v1, :cond_1

    .line 207
    .line 208
    const p1, 0x7f080234

    .line 209
    .line 210
    .line 211
    :cond_1
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 212
    .line 213
    .line 214
    return-void

    .line 215
    :pswitch_d
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;

    .line 216
    .line 217
    iget-object v3, v2, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->H:Lz7/s;

    .line 218
    .line 219
    invoke-virtual {v3, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    invoke-virtual {v4}, Lz7/p;->b()Z

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    xor-int/lit8 v4, v4, 0x1

    .line 228
    .line 229
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    invoke-virtual {v3, v1, v4}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 234
    .line 235
    .line 236
    iget-object v3, v2, Lda/g;->A:Lda/g;

    .line 237
    .line 238
    iget-object v4, v2, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->H:Lz7/s;

    .line 239
    .line 240
    invoke-static {v3, v4}, Lq4/a;->R(Landroid/content/Context;Lz7/s;)V

    .line 241
    .line 242
    .line 243
    iget-object v3, v2, Lda/g;->A:Lda/g;

    .line 244
    .line 245
    const-string v4, "UP_INIT_AIONY"

    .line 246
    .line 247
    invoke-static {v3, v4}, Lta/m;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    iget-object v3, v2, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->G:Landroid/widget/ImageView;

    .line 251
    .line 252
    iget-object v2, v2, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->H:Lz7/s;

    .line 253
    .line 254
    invoke-virtual {v2, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-virtual {v1}, Lz7/p;->b()Z

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    if-eqz v1, :cond_2

    .line 263
    .line 264
    const p1, 0x7f080234

    .line 265
    .line 266
    .line 267
    :cond_2
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 268
    .line 269
    .line 270
    return-void

    .line 271
    :pswitch_e
    sget p1, Lcom/yunpan/appmanage/ui/ActivityKeyMapXingyuanSet;->H:I

    .line 272
    .line 273
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityKeyMapXingyuanSet;

    .line 274
    .line 275
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    :try_start_0
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityKeyMapXingyuanSet;->E:Landroid/widget/EditText;

    .line 279
    .line 280
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 289
    .line 290
    .line 291
    move-result p1

    .line 292
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityKeyMapXingyuanSet;->F:Landroid/widget/EditText;

    .line 293
    .line 294
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    const/16 v1, 0x2710

    .line 307
    .line 308
    const/16 v3, 0x64

    .line 309
    .line 310
    if-lt p1, v3, :cond_3

    .line 311
    .line 312
    if-le p1, v1, :cond_4

    .line 313
    .line 314
    :cond_3
    const/16 p1, 0x1f4

    .line 315
    .line 316
    :cond_4
    if-lt v0, v3, :cond_5

    .line 317
    .line 318
    if-le v0, v1, :cond_6

    .line 319
    .line 320
    :cond_5
    const/16 v0, 0x12c

    .line 321
    .line 322
    :cond_6
    iget v1, v2, Lcom/yunpan/appmanage/ui/ActivityKeyMapXingyuanSet;->C:I

    .line 323
    .line 324
    if-ne p1, v1, :cond_7

    .line 325
    .line 326
    iget v1, v2, Lcom/yunpan/appmanage/ui/ActivityKeyMapXingyuanSet;->D:I

    .line 327
    .line 328
    if-eq v0, v1, :cond_8

    .line 329
    .line 330
    goto :goto_0

    .line 331
    :catch_0
    move-exception p1

    .line 332
    goto :goto_1

    .line 333
    :cond_7
    :goto_0
    iget-object v1, v2, Lcom/yunpan/appmanage/ui/ActivityKeyMapXingyuanSet;->G:Lz7/s;

    .line 334
    .line 335
    const-string v3, "triggerTime_double"

    .line 336
    .line 337
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    invoke-virtual {v1, v3, p1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 342
    .line 343
    .line 344
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityKeyMapXingyuanSet;->G:Lz7/s;

    .line 345
    .line 346
    const-string v1, "triggerTime_long"

    .line 347
    .line 348
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-virtual {p1, v1, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 353
    .line 354
    .line 355
    iget-object p1, v2, Lda/g;->A:Lda/g;

    .line 356
    .line 357
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityKeyMapXingyuanSet;->G:Lz7/s;

    .line 358
    .line 359
    invoke-static {p1, v0}, Lq4/a;->T(Landroid/content/Context;Lz7/s;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    .line 361
    .line 362
    goto :goto_2

    .line 363
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 364
    .line 365
    .line 366
    :cond_8
    :goto_2
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 367
    .line 368
    .line 369
    return-void

    .line 370
    :pswitch_f
    sget p1, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissanSet;->E:I

    .line 371
    .line 372
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissanSet;

    .line 373
    .line 374
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 375
    .line 376
    .line 377
    return-void

    .line 378
    :pswitch_10
    sget p1, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcatSet;->H:I

    .line 379
    .line 380
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcatSet;

    .line 381
    .line 382
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 383
    .line 384
    .line 385
    return-void

    .line 386
    :pswitch_11
    sget p1, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcatHelp;->C:I

    .line 387
    .line 388
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcatHelp;

    .line 389
    .line 390
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 391
    .line 392
    .line 393
    return-void

    .line 394
    :pswitch_12
    sget p1, Lcom/yunpan/appmanage/ui/ActivityKeyMapAccSet;->E:I

    .line 395
    .line 396
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityKeyMapAccSet;

    .line 397
    .line 398
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 399
    .line 400
    .line 401
    return-void

    .line 402
    :pswitch_13
    sget p1, Lcom/yunpan/appmanage/ui/ActivityJiliE02;->E:I

    .line 403
    .line 404
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityJiliE02;

    .line 405
    .line 406
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 407
    .line 408
    .line 409
    return-void

    .line 410
    :pswitch_14
    sget p1, Lcom/yunpan/appmanage/ui/ActivityJiliE01;->F:I

    .line 411
    .line 412
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityJiliE01;

    .line 413
    .line 414
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 415
    .line 416
    .line 417
    return-void

    .line 418
    :pswitch_15
    sget p1, Lcom/yunpan/appmanage/ui/ActivityJieTText2;->a1:I

    .line 419
    .line 420
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityJieTText2;

    .line 421
    .line 422
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 423
    .line 424
    .line 425
    return-void

    .line 426
    :pswitch_16
    sget p1, Lcom/yunpan/appmanage/ui/ActivityJieTText;->t0:I

    .line 427
    .line 428
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityJieTText;

    .line 429
    .line 430
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 431
    .line 432
    .line 433
    return-void

    .line 434
    :pswitch_17
    sget p1, Lcom/yunpan/appmanage/ui/ActivityImmersive;->N:I

    .line 435
    .line 436
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityImmersive;

    .line 437
    .line 438
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 439
    .line 440
    .line 441
    return-void

    .line 442
    :pswitch_18
    sget p1, Lcom/yunpan/appmanage/ui/ActivityHome;->O:I

    .line 443
    .line 444
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityHome;

    .line 445
    .line 446
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 447
    .line 448
    .line 449
    return-void

    .line 450
    :pswitch_19
    sget p1, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->E:I

    .line 451
    .line 452
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;

    .line 453
    .line 454
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 455
    .line 456
    .line 457
    return-void

    .line 458
    :pswitch_1a
    sget p1, Lcom/yunpan/appmanage/ui/ActivityDisplayStartApp;->F:I

    .line 459
    .line 460
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityDisplayStartApp;

    .line 461
    .line 462
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 463
    .line 464
    .line 465
    return-void

    .line 466
    :pswitch_1b
    sget p1, Lcom/yunpan/appmanage/ui/ActivityDesktopSelected;->E:I

    .line 467
    .line 468
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityDesktopSelected;

    .line 469
    .line 470
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 471
    .line 472
    .line 473
    return-void

    .line 474
    :pswitch_1c
    sget p1, Lcom/yunpan/appmanage/ui/ActivityDebugLogcat;->E:I

    .line 475
    .line 476
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityDebugLogcat;

    .line 477
    .line 478
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 479
    .line 480
    .line 481
    return-void

    .line 482
    nop

    .line 483
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
