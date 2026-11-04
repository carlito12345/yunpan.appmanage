.class public final synthetic Lha/db;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lha/db;->a:I

    iput-object p2, p0, Lha/db;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    const/4 v0, 0x2

    .line 2
    const-wide/16 v1, 0x7d0

    .line 3
    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x1

    .line 6
    const/4 v5, 0x0

    .line 7
    iget v6, p0, Lha/db;->a:I

    .line 8
    .line 9
    packed-switch v6, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lha/db;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lua/x7;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const-wide/16 v1, 0x29a

    .line 20
    .line 21
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 22
    .line 23
    .line 24
    const-string v1, "com.android.settings"

    .line 25
    .line 26
    invoke-static {v1}, Lif/a;->L(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const/16 v2, 0x1000

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Ld2/c;->f()Landroid/app/ActivityOptions;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const-string v3, "android.activity.windowingMode"

    .line 44
    .line 45
    const/4 v6, 0x5

    .line 46
    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    const-string v3, "android:activity.splitScreenCreateMode"

    .line 50
    .line 51
    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    iget-object v0, v0, Lda/h;->e:Landroid/content/Context;

    .line 55
    .line 56
    new-array v3, v4, [Landroid/content/Intent;

    .line 57
    .line 58
    aput-object v1, v3, v5

    .line 59
    .line 60
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v2, ""

    .line 68
    .line 69
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v0, v1}, Lg/b;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    .line 73
    .line 74
    .line 75
    :goto_0
    return-void

    .line 76
    :pswitch_0
    sget v0, Lcom/yunpan/appmanage/ui/ActivityTrans;->A:I

    .line 77
    .line 78
    iget-object v0, p0, Lha/db;->b:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityTrans;

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :pswitch_1
    iget-object v0, p0, Lha/db;->b:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityInstaller;

    .line 89
    .line 90
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityInstaller;->I:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 91
    .line 92
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    :try_start_1
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityInstaller;->G:Lef/b;

    .line 96
    .line 97
    invoke-virtual {v1}, Lef/b;->A()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Lff/g;

    .line 106
    .line 107
    invoke-interface {v1}, Lff/g;->e()[B

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    array-length v2, v1

    .line 112
    invoke-static {v1, v5, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityInstaller;->K:Landroid/widget/ImageView;

    .line 117
    .line 118
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :catch_1
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityInstaller;->K:Landroid/widget/ImageView;

    .line 123
    .line 124
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    .line 126
    .line 127
    :goto_1
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityInstaller;->L:Landroid/widget/TextView;

    .line 128
    .line 129
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityInstaller;->H:Lff/c;

    .line 130
    .line 131
    iget-object v2, v2, Lff/c;->b:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    .line 135
    .line 136
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityInstaller;->M:Landroid/widget/TextView;

    .line 137
    .line 138
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityInstaller;->H:Lff/c;

    .line 139
    .line 140
    iget-object v2, v2, Lff/c;->a:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    .line 144
    .line 145
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityInstaller;->N:Landroid/widget/TextView;

    .line 146
    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    iget-object v3, v0, Lcom/yunpan/appmanage/ui/ActivityInstaller;->H:Lff/c;

    .line 153
    .line 154
    iget-object v3, v3, Lff/c;->d:Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v3, "("

    .line 160
    .line 161
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityInstaller;->H:Lff/c;

    .line 165
    .line 166
    iget-object v0, v0, Lff/c;->e:Ljava/lang/Long;

    .line 167
    .line 168
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v0, ")"

    .line 172
    .line 173
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :pswitch_2
    sget v0, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->G:I

    .line 185
    .line 186
    iget-object v0, p0, Lha/db;->b:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;

    .line 189
    .line 190
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    const-string v1, "enabled_notification_listeners"

    .line 195
    .line 196
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    const-string v2, ""

    .line 201
    .line 202
    if-eqz v0, :cond_0

    .line 203
    .line 204
    const-string v3, "null"

    .line 205
    .line 206
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    if-eqz v3, :cond_1

    .line 211
    .line 212
    :cond_0
    move-object v0, v2

    .line 213
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    sget-object v6, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 219
    .line 220
    sget-object v6, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 221
    .line 222
    iget-object v7, v6, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 223
    .line 224
    const-string v8, "/"

    .line 225
    .line 226
    invoke-static {v3, v7, v8, v0}, Landroid/support/v4/media/session/a;->D(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    if-nez v3, :cond_4

    .line 231
    .line 232
    const-string v3, ":"

    .line 233
    .line 234
    invoke-static {v0, v3}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    iget-object v7, v6, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 239
    .line 240
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-class v7, Lcom/yunpan/appmanage/service/StartService;

    .line 247
    .line 248
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v7

    .line 252
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    const-string v7, "::"

    .line 260
    .line 261
    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    if-eqz v2, :cond_2

    .line 270
    .line 271
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    if-eqz v2, :cond_3

    .line 280
    .line 281
    invoke-static {v4, v5, v0}, Landroid/support/v4/media/session/a;->l(IILjava/lang/String;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    :cond_3
    iget-object v2, v6, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 286
    .line 287
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    invoke-static {v2, v1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 292
    .line 293
    .line 294
    iget-object v0, v6, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 295
    .line 296
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    const-string v1, "notification_enabled"

    .line 301
    .line 302
    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 303
    .line 304
    .line 305
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 306
    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    const-string v2, "cmd notification allow_listener "

    .line 310
    .line 311
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    iget-object v2, v6, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 315
    .line 316
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    const-class v2, Lcom/yunpan/appmanage/service/StartService;

    .line 323
    .line 324
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 336
    .line 337
    .line 338
    invoke-static {v1}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 339
    .line 340
    .line 341
    :cond_4
    return-void

    .line 342
    :pswitch_3
    iget-object v0, p0, Lha/db;->b:Ljava/lang/Object;

    .line 343
    .line 344
    check-cast v0, Ll5/y;

    .line 345
    .line 346
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 347
    .line 348
    .line 349
    sget-object v3, Lfa/b0;->a:La2/w0;

    .line 350
    .line 351
    new-instance v4, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    const-string v5, "am force-stop "

    .line 354
    .line 355
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    iget-object v0, v0, Ll5/y;->b:Ljava/lang/Object;

    .line 359
    .line 360
    check-cast v0, Lcom/yunpan/appmanage/carsdk/u;

    .line 361
    .line 362
    iget-object v0, v0, Lcom/yunpan/appmanage/carsdk/u;->b:Ljava/lang/Object;

    .line 363
    .line 364
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityAutomation;

    .line 365
    .line 366
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 378
    .line 379
    .line 380
    invoke-static {v1, v2, v0}, La2/w0;->o(JLjava/lang/String;)Lfa/a0;

    .line 381
    .line 382
    .line 383
    return-void

    .line 384
    :pswitch_4
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 385
    .line 386
    new-instance v3, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    const-string v4, "am force-stop \'"

    .line 389
    .line 390
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    iget-object v4, p0, Lha/db;->b:Ljava/lang/Object;

    .line 394
    .line 395
    check-cast v4, Lx9/b;

    .line 396
    .line 397
    iget-object v4, v4, Lx9/b;->b:Ljava/lang/String;

    .line 398
    .line 399
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    const-string v4, "\'"

    .line 403
    .line 404
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v3

    .line 411
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 412
    .line 413
    .line 414
    invoke-static {v1, v2, v3}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 415
    .line 416
    .line 417
    return-void

    .line 418
    :pswitch_5
    iget-object v0, p0, Lha/db;->b:Ljava/lang/Object;

    .line 419
    .line 420
    check-cast v0, Lu1/o;

    .line 421
    .line 422
    iget-object v1, v0, Lu1/o;->a:Ljava/lang/ref/WeakReference;

    .line 423
    .line 424
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    check-cast v1, Li2/e;

    .line 429
    .line 430
    if-eqz v1, :cond_c

    .line 431
    .line 432
    iget-object v0, v0, Lu1/o;->c:Lu1/p;

    .line 433
    .line 434
    invoke-virtual {v0}, Lu1/p;->b()I

    .line 435
    .line 436
    .line 437
    move-result v0

    .line 438
    iget-object v1, v1, Li2/e;->a:Li2/f;

    .line 439
    .line 440
    monitor-enter v1

    .line 441
    :try_start_2
    iget v2, v1, Li2/f;->n:I

    .line 442
    .line 443
    if-eqz v2, :cond_5

    .line 444
    .line 445
    iget-boolean v3, v1, Li2/f;->e:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 446
    .line 447
    if-nez v3, :cond_5

    .line 448
    .line 449
    monitor-exit v1

    .line 450
    goto/16 :goto_6

    .line 451
    .line 452
    :catchall_0
    move-exception v0

    .line 453
    goto/16 :goto_5

    .line 454
    .line 455
    :cond_5
    if-ne v2, v0, :cond_6

    .line 456
    .line 457
    :try_start_3
    iget-object v2, v1, Li2/f;->o:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 458
    .line 459
    if-eqz v2, :cond_6

    .line 460
    .line 461
    monitor-exit v1

    .line 462
    goto/16 :goto_6

    .line 463
    .line 464
    :cond_6
    :try_start_4
    iput v0, v1, Li2/f;->n:I

    .line 465
    .line 466
    if-eq v0, v4, :cond_b

    .line 467
    .line 468
    if-eqz v0, :cond_b

    .line 469
    .line 470
    const/16 v2, 0x8

    .line 471
    .line 472
    if-ne v0, v2, :cond_7

    .line 473
    .line 474
    goto/16 :goto_4

    .line 475
    .line 476
    :cond_7
    iget-object v2, v1, Li2/f;->o:Ljava/lang/String;

    .line 477
    .line 478
    if-nez v2, :cond_9

    .line 479
    .line 480
    iget-object v2, v1, Li2/f;->a:Landroid/content/Context;

    .line 481
    .line 482
    sget-object v3, Lu1/f0;->a:Ljava/lang/String;

    .line 483
    .line 484
    if-eqz v2, :cond_8

    .line 485
    .line 486
    const-string v3, "phone"

    .line 487
    .line 488
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v2

    .line 492
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 493
    .line 494
    if-eqz v2, :cond_8

    .line 495
    .line 496
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v2

    .line 500
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 501
    .line 502
    .line 503
    move-result v3

    .line 504
    if-nez v3, :cond_8

    .line 505
    .line 506
    invoke-static {v2}, Lqf/c;->c0(Ljava/lang/String;)Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v2

    .line 510
    goto :goto_2

    .line 511
    :cond_8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 512
    .line 513
    .line 514
    move-result-object v2

    .line 515
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v2

    .line 519
    invoke-static {v2}, Lqf/c;->c0(Ljava/lang/String;)Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v2

    .line 523
    :goto_2
    iput-object v2, v1, Li2/f;->o:Ljava/lang/String;

    .line 524
    .line 525
    :cond_9
    invoke-virtual {v1, v0}, Li2/f;->a(I)J

    .line 526
    .line 527
    .line 528
    move-result-wide v2

    .line 529
    iput-wide v2, v1, Li2/f;->l:J

    .line 530
    .line 531
    iget-object v0, v1, Li2/f;->d:Lu1/z;

    .line 532
    .line 533
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 534
    .line 535
    .line 536
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 537
    .line 538
    .line 539
    move-result-wide v2

    .line 540
    iget v0, v1, Li2/f;->g:I

    .line 541
    .line 542
    if-lez v0, :cond_a

    .line 543
    .line 544
    iget-wide v6, v1, Li2/f;->h:J

    .line 545
    .line 546
    sub-long v6, v2, v6

    .line 547
    .line 548
    long-to-int v0, v6

    .line 549
    move v7, v0

    .line 550
    goto :goto_3

    .line 551
    :cond_a
    const/4 v7, 0x0

    .line 552
    :goto_3
    iget-wide v8, v1, Li2/f;->i:J

    .line 553
    .line 554
    iget-wide v10, v1, Li2/f;->l:J

    .line 555
    .line 556
    move-object v6, v1

    .line 557
    invoke-virtual/range {v6 .. v11}, Li2/f;->b(IJJ)V

    .line 558
    .line 559
    .line 560
    iput-wide v2, v1, Li2/f;->h:J

    .line 561
    .line 562
    const-wide/16 v2, 0x0

    .line 563
    .line 564
    iput-wide v2, v1, Li2/f;->i:J

    .line 565
    .line 566
    iput-wide v2, v1, Li2/f;->k:J

    .line 567
    .line 568
    iput-wide v2, v1, Li2/f;->j:J

    .line 569
    .line 570
    iget-object v0, v1, Li2/f;->f:Li2/l;

    .line 571
    .line 572
    iget-object v2, v0, Li2/l;->a:Ljava/util/ArrayList;

    .line 573
    .line 574
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 575
    .line 576
    .line 577
    const/4 v2, -0x1

    .line 578
    iput v2, v0, Li2/l;->c:I

    .line 579
    .line 580
    iput v5, v0, Li2/l;->d:I

    .line 581
    .line 582
    iput v5, v0, Li2/l;->e:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 583
    .line 584
    monitor-exit v1

    .line 585
    goto :goto_6

    .line 586
    :cond_b
    :goto_4
    monitor-exit v1

    .line 587
    goto :goto_6

    .line 588
    :goto_5
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 589
    throw v0

    .line 590
    :cond_c
    :goto_6
    return-void

    .line 591
    :pswitch_6
    iget-object v0, p0, Lha/db;->b:Ljava/lang/Object;

    .line 592
    .line 593
    check-cast v0, Ll5/y;

    .line 594
    .line 595
    iget-object v0, v0, Ll5/y;->b:Ljava/lang/Object;

    .line 596
    .line 597
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 598
    .line 599
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 600
    .line 601
    .line 602
    move-result-object v0

    .line 603
    check-cast v0, Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 604
    .line 605
    return-void

    .line 606
    :pswitch_7
    iget-object v0, p0, Lha/db;->b:Ljava/lang/Object;

    .line 607
    .line 608
    check-cast v0, Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 609
    .line 610
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->b0()V

    .line 611
    .line 612
    .line 613
    return-void

    .line 614
    :pswitch_8
    iget-object v0, p0, Lha/db;->b:Ljava/lang/Object;

    .line 615
    .line 616
    check-cast v0, Lvb/v;

    .line 617
    .line 618
    invoke-virtual {v0}, Lvb/v;->c()V

    .line 619
    .line 620
    .line 621
    return-void

    .line 622
    :pswitch_9
    sget v0, Lcom/yunpan/appmanage/service/StartService;->i:I

    .line 623
    .line 624
    iget-object v0, p0, Lha/db;->b:Ljava/lang/Object;

    .line 625
    .line 626
    check-cast v0, Lcom/yunpan/appmanage/service/StartService;

    .line 627
    .line 628
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 629
    .line 630
    .line 631
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 632
    .line 633
    .line 634
    move-result-wide v1

    .line 635
    sget-object v3, Lwa/t;->a:Lwa/u;

    .line 636
    .line 637
    iget-boolean v6, v3, Lwa/u;->c0:Z

    .line 638
    .line 639
    const-wide/32 v7, 0x186a0

    .line 640
    .line 641
    .line 642
    if-eqz v6, :cond_d

    .line 643
    .line 644
    cmp-long v4, v1, v7

    .line 645
    .line 646
    if-lez v4, :cond_15

    .line 647
    .line 648
    iget-boolean v0, v3, Lwa/u;->t:Z

    .line 649
    .line 650
    if-eqz v0, :cond_17

    .line 651
    .line 652
    const-string v0, "\u653e\u5f03\u4efb\u52a1\uff1a\u5f00\u673a\u65f6\u95f4\u8d85\u8fc7100\u79d2"

    .line 653
    .line 654
    invoke-static {v0}, Lwa/w;->c(Ljava/lang/String;)V

    .line 655
    .line 656
    .line 657
    goto/16 :goto_9

    .line 658
    .line 659
    :cond_d
    const-wide/32 v9, 0x13880

    .line 660
    .line 661
    .line 662
    cmp-long v3, v1, v9

    .line 663
    .line 664
    if-lez v3, :cond_11

    .line 665
    .line 666
    const-string v3, "activity"

    .line 667
    .line 668
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 669
    .line 670
    .line 671
    move-result-object v3

    .line 672
    check-cast v3, Landroid/app/ActivityManager;

    .line 673
    .line 674
    if-nez v3, :cond_e

    .line 675
    .line 676
    goto :goto_7

    .line 677
    :cond_e
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object v6

    .line 681
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 682
    .line 683
    .line 684
    move-result v9

    .line 685
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 686
    .line 687
    .line 688
    move-result-object v3

    .line 689
    if-nez v3, :cond_f

    .line 690
    .line 691
    goto :goto_7

    .line 692
    :cond_f
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 693
    .line 694
    .line 695
    move-result-object v3

    .line 696
    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 697
    .line 698
    .line 699
    move-result v10

    .line 700
    if-eqz v10, :cond_11

    .line 701
    .line 702
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 703
    .line 704
    .line 705
    move-result-object v10

    .line 706
    check-cast v10, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 707
    .line 708
    iget-object v11, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 709
    .line 710
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 711
    .line 712
    .line 713
    move-result v11

    .line 714
    if-eqz v11, :cond_10

    .line 715
    .line 716
    iget v10, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 717
    .line 718
    if-eq v10, v9, :cond_10

    .line 719
    .line 720
    new-instance v3, Ljava/lang/StringBuilder;

    .line 721
    .line 722
    const-string v6, "dumpsys window | grep \'"

    .line 723
    .line 724
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 725
    .line 726
    .line 727
    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->d(Lcom/yunpan/appmanage/service/StartService;)Ljava/lang/String;

    .line 728
    .line 729
    .line 730
    move-result-object v6

    .line 731
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    .line 733
    .line 734
    const-string v6, ".ui.ActivityHome\'"

    .line 735
    .line 736
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    .line 738
    .line 739
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object v3

    .line 743
    new-array v6, v4, [Ljava/lang/String;

    .line 744
    .line 745
    aput-object v3, v6, v5

    .line 746
    .line 747
    invoke-static {v6}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 748
    .line 749
    .line 750
    move-result-object v3

    .line 751
    invoke-virtual {v3}, Lv9/e;->l0()Landroidx/room/s;

    .line 752
    .line 753
    .line 754
    move-result-object v3

    .line 755
    invoke-virtual {v3}, Landroidx/room/s;->q()Z

    .line 756
    .line 757
    .line 758
    move-result v3

    .line 759
    if-eqz v3, :cond_11

    .line 760
    .line 761
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 762
    .line 763
    iget-boolean v0, v0, Lwa/u;->t:Z

    .line 764
    .line 765
    if-eqz v0, :cond_17

    .line 766
    .line 767
    const-string v0, "\u653e\u5f03\u4efb\u52a1\uff1a\u4e3b\u8fdb\u7a0b\u6b63\u5728\u8fd0\u884c"

    .line 768
    .line 769
    invoke-static {v0}, Lwa/w;->c(Ljava/lang/String;)V

    .line 770
    .line 771
    .line 772
    goto/16 :goto_9

    .line 773
    .line 774
    :cond_11
    :goto_7
    const-wide/32 v9, 0x35b60

    .line 775
    .line 776
    .line 777
    cmp-long v3, v1, v9

    .line 778
    .line 779
    if-lez v3, :cond_14

    .line 780
    .line 781
    const-string v3, "power"

    .line 782
    .line 783
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 784
    .line 785
    .line 786
    move-result-object v3

    .line 787
    check-cast v3, Landroid/os/PowerManager;

    .line 788
    .line 789
    if-nez v3, :cond_12

    .line 790
    .line 791
    goto :goto_8

    .line 792
    :cond_12
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 793
    .line 794
    const/16 v6, 0x14

    .line 795
    .line 796
    if-lt v5, v6, :cond_13

    .line 797
    .line 798
    invoke-static {v3}, Lta/p;->g(Landroid/os/PowerManager;)Z

    .line 799
    .line 800
    .line 801
    move-result v5

    .line 802
    goto :goto_8

    .line 803
    :cond_13
    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    .line 804
    .line 805
    .line 806
    move-result v5

    .line 807
    :goto_8
    if-nez v5, :cond_14

    .line 808
    .line 809
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 810
    .line 811
    iget-boolean v0, v0, Lwa/u;->t:Z

    .line 812
    .line 813
    if-eqz v0, :cond_17

    .line 814
    .line 815
    const-string v0, "\u653e\u5f03\u4efb\u52a1\uff1a\u5c4f\u5e55\u672a\u70b9\u4eae\uff0c\u7591\u662f\u7cfb\u7edf\u66f4\u65b0\u6216\u624b\u673a\u8054\u52a8"

    .line 816
    .line 817
    invoke-static {v0}, Lwa/w;->c(Ljava/lang/String;)V

    .line 818
    .line 819
    .line 820
    goto :goto_9

    .line 821
    :cond_14
    cmp-long v3, v1, v7

    .line 822
    .line 823
    if-lez v3, :cond_15

    .line 824
    .line 825
    :try_start_6
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 826
    .line 827
    .line 828
    move-result-object v1

    .line 829
    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->d(Lcom/yunpan/appmanage/service/StartService;)Ljava/lang/String;

    .line 830
    .line 831
    .line 832
    move-result-object v2

    .line 833
    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 834
    .line 835
    .line 836
    move-result-object v1

    .line 837
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 838
    .line 839
    .line 840
    move-result-wide v2

    .line 841
    iget-wide v4, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 842
    .line 843
    sub-long/2addr v2, v4

    .line 844
    const-wide/16 v4, 0x4e20

    .line 845
    .line 846
    cmp-long v1, v2, v4

    .line 847
    .line 848
    if-gez v1, :cond_15

    .line 849
    .line 850
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 851
    .line 852
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 853
    .line 854
    .line 855
    move-result-wide v2

    .line 856
    const-wide/16 v4, 0x1388

    .line 857
    .line 858
    add-long/2addr v2, v4

    .line 859
    invoke-virtual {v1, v2, v3}, Lwa/u;->g(J)V

    .line 860
    .line 861
    .line 862
    iget-boolean v1, v1, Lwa/u;->t:Z

    .line 863
    .line 864
    if-eqz v1, :cond_17

    .line 865
    .line 866
    const-string v1, "\u653e\u5f03\u4efb\u52a1\uff1a\u521a\u624d\u5728\u66f4\u65b0\u5e94\u7528"

    .line 867
    .line 868
    invoke-static {v1}, Lwa/w;->c(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 869
    .line 870
    .line 871
    goto :goto_9

    .line 872
    :catch_2
    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 873
    .line 874
    .line 875
    move-result-wide v1

    .line 876
    sget-object v3, Lwa/t;->a:Lwa/u;

    .line 877
    .line 878
    iget-wide v4, v3, Lwa/u;->l:J

    .line 879
    .line 880
    sub-long/2addr v1, v4

    .line 881
    const-wide/16 v4, 0x1770

    .line 882
    .line 883
    cmp-long v6, v1, v4

    .line 884
    .line 885
    if-gez v6, :cond_16

    .line 886
    .line 887
    iget-boolean v0, v3, Lwa/u;->t:Z

    .line 888
    .line 889
    if-eqz v0, :cond_17

    .line 890
    .line 891
    const-string v0, "\u653e\u5f03\u4efb\u52a1\uff1a\u901a\u77e5\u670d\u52a1\u65e0\u6545\u91cd\u5efa"

    .line 892
    .line 893
    invoke-static {v0}, Lwa/w;->c(Ljava/lang/String;)V

    .line 894
    .line 895
    .line 896
    goto :goto_9

    .line 897
    :cond_16
    const-string v1, "\u901a\u77e5\u6743"

    .line 898
    .line 899
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/service/BootReceiver;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 900
    .line 901
    .line 902
    :cond_17
    :goto_9
    return-void

    .line 903
    :pswitch_a
    iget-object v1, p0, Lha/db;->b:Ljava/lang/Object;

    .line 904
    .line 905
    check-cast v1, Lg0/e;

    .line 906
    .line 907
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 908
    .line 909
    .line 910
    :try_start_7
    new-instance v2, Ljava/io/BufferedReader;

    .line 911
    .line 912
    new-instance v3, Ljava/io/InputStreamReader;

    .line 913
    .line 914
    iget-object v6, v1, Lg0/e;->e:Ljava/lang/Object;

    .line 915
    .line 916
    check-cast v6, Ljava/io/InputStream;

    .line 917
    .line 918
    const-string v7, "UTF-8"

    .line 919
    .line 920
    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 921
    .line 922
    .line 923
    move-result-object v7

    .line 924
    invoke-direct {v3, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 925
    .line 926
    .line 927
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 928
    .line 929
    .line 930
    :try_start_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 931
    .line 932
    .line 933
    move-result-wide v6

    .line 934
    const/4 v3, 0x0

    .line 935
    :cond_18
    :goto_a
    const/4 v8, 0x0

    .line 936
    :goto_b
    iget-boolean v9, v1, Lg0/e;->a:Z

    .line 937
    .line 938
    if-nez v9, :cond_19

    .line 939
    .line 940
    iget-object v9, v1, Lg0/e;->g:Ljava/lang/Object;

    .line 941
    .line 942
    check-cast v9, Lfg/b;

    .line 943
    .line 944
    invoke-virtual {v9}, Ljava/lang/Thread;->isInterrupted()Z

    .line 945
    .line 946
    .line 947
    move-result v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 948
    if-eqz v9, :cond_1a

    .line 949
    .line 950
    :cond_19
    :goto_c
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 951
    .line 952
    .line 953
    goto/16 :goto_10

    .line 954
    .line 955
    :catch_3
    move-exception v0

    .line 956
    goto/16 :goto_f

    .line 957
    .line 958
    :cond_1a
    :try_start_a
    iget-object v9, v1, Lg0/e;->g:Ljava/lang/Object;

    .line 959
    .line 960
    check-cast v9, Lfg/b;

    .line 961
    .line 962
    invoke-virtual {v9}, Ljava/lang/Thread;->isAlive()Z

    .line 963
    .line 964
    .line 965
    move-result v9

    .line 966
    if-nez v9, :cond_1b

    .line 967
    .line 968
    goto :goto_c

    .line 969
    :cond_1b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 970
    .line 971
    .line 972
    move-result-object v9

    .line 973
    if-nez v9, :cond_1d

    .line 974
    .line 975
    add-int/2addr v8, v4

    .line 976
    if-ge v8, v0, :cond_1c

    .line 977
    .line 978
    const-wide/16 v9, 0x64

    .line 979
    .line 980
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 981
    .line 982
    .line 983
    goto :goto_b

    .line 984
    :catchall_1
    move-exception v0

    .line 985
    goto :goto_d

    .line 986
    :cond_1c
    new-instance v0, Ljava/lang/Exception;

    .line 987
    .line 988
    const-string v3, "\u63a5\u6536\u6d88\u606f\u5f02\u5e38"

    .line 989
    .line 990
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 991
    .line 992
    .line 993
    throw v0

    .line 994
    :cond_1d
    if-nez v3, :cond_20

    .line 995
    .line 996
    const-string v10, "beginning of system"

    .line 997
    .line 998
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 999
    .line 1000
    .line 1001
    move-result v10

    .line 1002
    if-eqz v10, :cond_1e

    .line 1003
    .line 1004
    const/4 v3, 0x1

    .line 1005
    goto :goto_b

    .line 1006
    :cond_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1007
    .line 1008
    .line 1009
    move-result-wide v10

    .line 1010
    sub-long/2addr v10, v6

    .line 1011
    const-wide/16 v12, 0x3e8

    .line 1012
    .line 1013
    cmp-long v14, v10, v12

    .line 1014
    .line 1015
    if-gez v14, :cond_1f

    .line 1016
    .line 1017
    goto :goto_b

    .line 1018
    :cond_1f
    const/4 v3, 0x1

    .line 1019
    :cond_20
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 1020
    .line 1021
    .line 1022
    move-result v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1023
    if-eqz v10, :cond_21

    .line 1024
    .line 1025
    goto :goto_b

    .line 1026
    :cond_21
    iget-object v8, v1, Lg0/e;->h:Ljava/lang/Object;

    .line 1027
    .line 1028
    check-cast v8, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 1029
    .line 1030
    :try_start_b
    invoke-virtual {v8, v9}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 1031
    .line 1032
    .line 1033
    move-result v10

    .line 1034
    if-nez v10, :cond_18

    .line 1035
    .line 1036
    invoke-virtual {v8, v9}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1037
    .line 1038
    .line 1039
    goto :goto_a

    .line 1040
    :goto_d
    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1041
    .line 1042
    .line 1043
    goto :goto_e

    .line 1044
    :catchall_2
    move-exception v2

    .line 1045
    :try_start_d
    const-class v3, Ljava/lang/Throwable;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    .line 1046
    .line 1047
    :try_start_e
    const-string v6, "addSuppressed"

    .line 1048
    .line 1049
    new-array v7, v4, [Ljava/lang/Class;

    .line 1050
    .line 1051
    aput-object v3, v7, v5

    .line 1052
    .line 1053
    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v3

    .line 1057
    new-array v6, v4, [Ljava/lang/Object;

    .line 1058
    .line 1059
    aput-object v2, v6, v5

    .line 1060
    .line 1061
    invoke-virtual {v3, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    .line 1062
    .line 1063
    .line 1064
    :catch_4
    :goto_e
    :try_start_f
    throw v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    .line 1065
    :goto_f
    iget-boolean v2, v1, Lg0/e;->a:Z

    .line 1066
    .line 1067
    if-nez v2, :cond_22

    .line 1068
    .line 1069
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1070
    .line 1071
    .line 1072
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1073
    .line 1074
    const-string v3, "\u76d1\u542c\u65e5\u5fd7\u51fa\u9519\uff1a"

    .line 1075
    .line 1076
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1077
    .line 1078
    .line 1079
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v0

    .line 1083
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    .line 1085
    .line 1086
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v0

    .line 1090
    invoke-static {v0, v5}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 1091
    .line 1092
    .line 1093
    iput-boolean v4, v1, Lg0/e;->b:Z

    .line 1094
    .line 1095
    :cond_22
    :goto_10
    return-void

    .line 1096
    :pswitch_b
    sget v0, Lcom/yunpan/appmanage/service/HttpService;->b:I

    .line 1097
    .line 1098
    iget-object v0, p0, Lha/db;->b:Ljava/lang/Object;

    .line 1099
    .line 1100
    check-cast v0, Lcom/yunpan/appmanage/service/HttpService;

    .line 1101
    .line 1102
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1103
    .line 1104
    .line 1105
    const/16 v1, 0x26aa

    .line 1106
    .line 1107
    :cond_23
    new-instance v2, Lcom/yunpan/appmanage/httpserver/RemoteServer;

    .line 1108
    .line 1109
    sget-object v5, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 1110
    .line 1111
    sget-object v5, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1112
    .line 1113
    iget-object v6, v5, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 1114
    .line 1115
    invoke-direct {v2, v1, v6}, Lcom/yunpan/appmanage/httpserver/RemoteServer;-><init>(ILandroid/content/Context;)V

    .line 1116
    .line 1117
    .line 1118
    iput-object v2, v0, Lcom/yunpan/appmanage/service/HttpService;->a:Lcom/yunpan/appmanage/httpserver/RemoteServer;

    .line 1119
    .line 1120
    const/16 v6, 0x3e80

    .line 1121
    .line 1122
    :try_start_10
    invoke-virtual {v2, v6}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->start(I)V

    .line 1123
    .line 1124
    .line 1125
    iput v1, v5, Lcom/yunpan/appmanage/util/k;->j0:I

    .line 1126
    .line 1127
    invoke-virtual {v5}, Lcom/yunpan/appmanage/util/k;->g()Ljava/lang/String;

    .line 1128
    .line 1129
    .line 1130
    invoke-virtual {v5}, Lcom/yunpan/appmanage/util/k;->o()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    .line 1131
    .line 1132
    .line 1133
    goto :goto_11

    .line 1134
    :catch_5
    move-exception v2

    .line 1135
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1136
    .line 1137
    .line 1138
    add-int/2addr v1, v4

    .line 1139
    iget-object v2, v0, Lcom/yunpan/appmanage/service/HttpService;->a:Lcom/yunpan/appmanage/httpserver/RemoteServer;

    .line 1140
    .line 1141
    if-eqz v2, :cond_24

    .line 1142
    .line 1143
    invoke-virtual {v2}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->stop()V

    .line 1144
    .line 1145
    .line 1146
    iput-object v3, v0, Lcom/yunpan/appmanage/service/HttpService;->a:Lcom/yunpan/appmanage/httpserver/RemoteServer;

    .line 1147
    .line 1148
    :cond_24
    const/16 v2, 0x26b6

    .line 1149
    .line 1150
    if-lt v1, v2, :cond_23

    .line 1151
    .line 1152
    :goto_11
    return-void

    .line 1153
    :pswitch_c
    iget-object v0, p0, Lha/db;->b:Ljava/lang/Object;

    .line 1154
    .line 1155
    check-cast v0, Lta/e;

    .line 1156
    .line 1157
    iget-object v0, v0, Lta/e;->b:Lcom/yunpan/appmanage/service/AccService;

    .line 1158
    .line 1159
    :try_start_11
    iget-object v1, v0, Lcom/yunpan/appmanage/service/AccService;->f:Lcom/yunpan/appmanage/carsdk/i;

    .line 1160
    .line 1161
    iget-boolean v2, v1, Lcom/yunpan/appmanage/carsdk/i;->b:Z

    .line 1162
    .line 1163
    if-eqz v2, :cond_25

    .line 1164
    .line 1165
    iget-object v2, v1, Lcom/yunpan/appmanage/carsdk/i;->a:Lc5/c;

    .line 1166
    .line 1167
    if-nez v2, :cond_26

    .line 1168
    .line 1169
    :cond_25
    const/4 v4, 0x0

    .line 1170
    :cond_26
    if-nez v4, :cond_28

    .line 1171
    .line 1172
    if-nez v1, :cond_27

    .line 1173
    .line 1174
    new-instance v1, Lcom/yunpan/appmanage/carsdk/i;

    .line 1175
    .line 1176
    invoke-direct {v1}, Lcom/yunpan/appmanage/carsdk/i;-><init>()V

    .line 1177
    .line 1178
    .line 1179
    iput-object v1, v0, Lcom/yunpan/appmanage/service/AccService;->f:Lcom/yunpan/appmanage/carsdk/i;

    .line 1180
    .line 1181
    :cond_27
    iget-object v1, v0, Lcom/yunpan/appmanage/service/AccService;->f:Lcom/yunpan/appmanage/carsdk/i;

    .line 1182
    .line 1183
    invoke-virtual {v1, v0}, Lcom/yunpan/appmanage/carsdk/i;->a(Landroid/content/Context;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6

    .line 1184
    .line 1185
    .line 1186
    :catch_6
    :cond_28
    return-void

    .line 1187
    :pswitch_d
    sget v0, Lcom/yunpan/appmanage/service/AccRestartService;->c:I

    .line 1188
    .line 1189
    iget-object v0, p0, Lha/db;->b:Ljava/lang/Object;

    .line 1190
    .line 1191
    check-cast v0, Lcom/yunpan/appmanage/service/AccRestartService;

    .line 1192
    .line 1193
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1194
    .line 1195
    .line 1196
    const-string v1, "\u81ea\u52a8\u5316\u91cd\u542f\u4efb\u52a1\u5f02\u5e38: "

    .line 1197
    .line 1198
    :try_start_12
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 1199
    .line 1200
    iget-boolean v3, v2, Lwa/u;->t:Z

    .line 1201
    .line 1202
    if-eqz v3, :cond_29

    .line 1203
    .line 1204
    const-string v3, "\u81ea\u52a8\u5316\u91cd\u542f\u4efb\u52a1\u5f00\u59cb"

    .line 1205
    .line 1206
    invoke-static {v3}, Lwa/w;->c(Ljava/lang/String;)V

    .line 1207
    .line 1208
    .line 1209
    goto :goto_12

    .line 1210
    :catchall_3
    move-exception v1

    .line 1211
    goto :goto_16

    .line 1212
    :catch_7
    move-exception v2

    .line 1213
    goto :goto_14

    .line 1214
    :cond_29
    :goto_12
    invoke-static {}, Lta/i;->a()V

    .line 1215
    .line 1216
    .line 1217
    iget-boolean v2, v2, Lwa/u;->t:Z

    .line 1218
    .line 1219
    if-eqz v2, :cond_2a

    .line 1220
    .line 1221
    const-string v2, "\u81ea\u52a8\u5316\u91cd\u542f\u4efb\u52a1\u5b8c\u6210"

    .line 1222
    .line 1223
    invoke-static {v2}, Lwa/w;->c(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 1224
    .line 1225
    .line 1226
    :cond_2a
    :goto_13
    iput-boolean v4, v0, Lcom/yunpan/appmanage/service/AccRestartService;->a:Z

    .line 1227
    .line 1228
    goto :goto_15

    .line 1229
    :goto_14
    :try_start_13
    sget-object v3, Lwa/t;->a:Lwa/u;

    .line 1230
    .line 1231
    iget-boolean v3, v3, Lwa/u;->t:Z

    .line 1232
    .line 1233
    if-eqz v3, :cond_2a

    .line 1234
    .line 1235
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1236
    .line 1237
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1238
    .line 1239
    .line 1240
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v1

    .line 1244
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1245
    .line 1246
    .line 1247
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1248
    .line 1249
    .line 1250
    move-result-object v1

    .line 1251
    invoke-static {v1}, Lwa/w;->c(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 1252
    .line 1253
    .line 1254
    goto :goto_13

    .line 1255
    :goto_15
    return-void

    .line 1256
    :goto_16
    iput-boolean v4, v0, Lcom/yunpan/appmanage/service/AccRestartService;->a:Z

    .line 1257
    .line 1258
    throw v1

    .line 1259
    :pswitch_e
    iget-object v0, p0, Lha/db;->b:Ljava/lang/Object;

    .line 1260
    .line 1261
    check-cast v0, Ls1/a;

    .line 1262
    .line 1263
    iget-object v1, v0, Ls1/a;->c:Landroidx/room/i;

    .line 1264
    .line 1265
    iget-boolean v1, v1, Landroidx/room/i;->a:Z

    .line 1266
    .line 1267
    if-eqz v1, :cond_2b

    .line 1268
    .line 1269
    iget-object v0, v0, Ls1/a;->a:Ly1/t;

    .line 1270
    .line 1271
    iget-object v0, v0, Ly1/t;->a:Ly1/x;

    .line 1272
    .line 1273
    const/4 v1, 0x3

    .line 1274
    invoke-virtual {v0, v1, v5}, Ly1/x;->e0(IZ)V

    .line 1275
    .line 1276
    .line 1277
    :cond_2b
    return-void

    .line 1278
    :pswitch_f
    iget-object v0, p0, Lha/db;->b:Ljava/lang/Object;

    .line 1279
    .line 1280
    check-cast v0, Landroidx/room/i;

    .line 1281
    .line 1282
    iget-object v1, v0, Landroidx/room/i;->b:Ljava/lang/Object;

    .line 1283
    .line 1284
    check-cast v1, Landroid/content/Context;

    .line 1285
    .line 1286
    iget-object v0, v0, Landroidx/room/i;->c:Ljava/lang/Object;

    .line 1287
    .line 1288
    check-cast v0, Ls1/a;

    .line 1289
    .line 1290
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1291
    .line 1292
    .line 1293
    return-void

    .line 1294
    :pswitch_10
    iget-object v0, p0, Lha/db;->b:Ljava/lang/Object;

    .line 1295
    .line 1296
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 1297
    .line 1298
    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 1299
    .line 1300
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1301
    .line 1302
    .line 1303
    return-void

    .line 1304
    :pswitch_11
    iget-object v0, p0, Lha/db;->b:Ljava/lang/Object;

    .line 1305
    .line 1306
    check-cast v0, Lq7/l;

    .line 1307
    .line 1308
    iget-object v1, v0, Lq7/l;->h:Landroid/widget/AutoCompleteTextView;

    .line 1309
    .line 1310
    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    .line 1311
    .line 1312
    .line 1313
    move-result v1

    .line 1314
    invoke-virtual {v0, v1}, Lq7/l;->t(Z)V

    .line 1315
    .line 1316
    .line 1317
    iput-boolean v1, v0, Lq7/l;->m:Z

    .line 1318
    .line 1319
    return-void

    .line 1320
    :pswitch_12
    iget-object v0, p0, Lha/db;->b:Ljava/lang/Object;

    .line 1321
    .line 1322
    check-cast v0, Lq7/c;

    .line 1323
    .line 1324
    invoke-virtual {v0, v4}, Lq7/c;->t(Z)V

    .line 1325
    .line 1326
    .line 1327
    return-void

    .line 1328
    :pswitch_13
    iget-object v1, p0, Lha/db;->b:Ljava/lang/Object;

    .line 1329
    .line 1330
    check-cast v1, Lkf/f;

    .line 1331
    .line 1332
    iput-boolean v5, v1, Lkf/f;->c:Z

    .line 1333
    .line 1334
    iget-object v2, v1, Lkf/f;->e:Ljava/lang/Object;

    .line 1335
    .line 1336
    check-cast v2, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 1337
    .line 1338
    iget-object v3, v2, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:Lf1/d;

    .line 1339
    .line 1340
    if-eqz v3, :cond_2c

    .line 1341
    .line 1342
    invoke-virtual {v3}, Lf1/d;->f()Z

    .line 1343
    .line 1344
    .line 1345
    move-result v3

    .line 1346
    if-eqz v3, :cond_2c

    .line 1347
    .line 1348
    iget v0, v1, Lkf/f;->b:I

    .line 1349
    .line 1350
    invoke-virtual {v1, v0}, Lkf/f;->d(I)V

    .line 1351
    .line 1352
    .line 1353
    goto :goto_17

    .line 1354
    :cond_2c
    iget v3, v2, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    .line 1355
    .line 1356
    if-ne v3, v0, :cond_2d

    .line 1357
    .line 1358
    iget v0, v1, Lkf/f;->b:I

    .line 1359
    .line 1360
    invoke-virtual {v2, v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->r(I)V

    .line 1361
    .line 1362
    .line 1363
    :cond_2d
    :goto_17
    return-void

    .line 1364
    :pswitch_14
    iget-object v0, p0, Lha/db;->b:Ljava/lang/Object;

    .line 1365
    .line 1366
    check-cast v0, Lk2/k;

    .line 1367
    .line 1368
    iget-object v1, v0, Lk2/k;->h:Landroid/view/Surface;

    .line 1369
    .line 1370
    if-eqz v1, :cond_2e

    .line 1371
    .line 1372
    iget-object v2, v0, Lk2/k;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1373
    .line 1374
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 1375
    .line 1376
    .line 1377
    move-result-object v2

    .line 1378
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1379
    .line 1380
    .line 1381
    move-result v4

    .line 1382
    if-eqz v4, :cond_2e

    .line 1383
    .line 1384
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1385
    .line 1386
    .line 1387
    move-result-object v4

    .line 1388
    check-cast v4, Ly1/t;

    .line 1389
    .line 1390
    iget-object v4, v4, Ly1/t;->a:Ly1/x;

    .line 1391
    .line 1392
    invoke-virtual {v4, v3}, Ly1/x;->b0(Ljava/lang/Object;)V

    .line 1393
    .line 1394
    .line 1395
    goto :goto_18

    .line 1396
    :cond_2e
    iget-object v2, v0, Lk2/k;->g:Landroid/graphics/SurfaceTexture;

    .line 1397
    .line 1398
    if-eqz v2, :cond_2f

    .line 1399
    .line 1400
    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->release()V

    .line 1401
    .line 1402
    .line 1403
    :cond_2f
    if-eqz v1, :cond_30

    .line 1404
    .line 1405
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 1406
    .line 1407
    .line 1408
    :cond_30
    iput-object v3, v0, Lk2/k;->g:Landroid/graphics/SurfaceTexture;

    .line 1409
    .line 1410
    iput-object v3, v0, Lk2/k;->h:Landroid/view/Surface;

    .line 1411
    .line 1412
    return-void

    .line 1413
    :pswitch_15
    iget-object v0, p0, Lha/db;->b:Ljava/lang/Object;

    .line 1414
    .line 1415
    check-cast v0, Lio/github/muntashirakon/adb/AdbConnection;

    .line 1416
    .line 1417
    invoke-static {v0}, Lio/github/muntashirakon/adb/AdbConnection;->r(Lio/github/muntashirakon/adb/AdbConnection;)V

    .line 1418
    .line 1419
    .line 1420
    return-void

    .line 1421
    :pswitch_16
    iget-object v0, p0, Lha/db;->b:Ljava/lang/Object;

    .line 1422
    .line 1423
    check-cast v0, Lhi/e;

    .line 1424
    .line 1425
    iget-object v1, v0, Lhi/e;->e:Ljava/util/HashSet;

    .line 1426
    .line 1427
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1428
    .line 1429
    .line 1430
    move-result-object v2

    .line 1431
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1432
    .line 1433
    .line 1434
    move-result v3

    .line 1435
    if-eqz v3, :cond_31

    .line 1436
    .line 1437
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1438
    .line 1439
    .line 1440
    move-result-object v3

    .line 1441
    check-cast v3, Landroid/content/ServiceConnection;

    .line 1442
    .line 1443
    iget-object v4, v0, Lhi/e;->f:Landroid/content/ComponentName;

    .line 1444
    .line 1445
    invoke-interface {v3, v4}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 1446
    .line 1447
    .line 1448
    goto :goto_19

    .line 1449
    :cond_31
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 1450
    .line 1451
    .line 1452
    invoke-static {v0}, Lhi/f;->a(Lhi/e;)V

    .line 1453
    .line 1454
    .line 1455
    return-void

    .line 1456
    :pswitch_17
    iget-object v0, p0, Lha/db;->b:Ljava/lang/Object;

    .line 1457
    .line 1458
    check-cast v0, Lfa/k0;

    .line 1459
    .line 1460
    invoke-virtual {v0}, Lfa/k0;->a()V

    .line 1461
    .line 1462
    .line 1463
    return-void

    .line 1464
    :pswitch_18
    iget-object v0, p0, Lha/db;->b:Ljava/lang/Object;

    .line 1465
    .line 1466
    check-cast v0, Lfa/j0;

    .line 1467
    .line 1468
    invoke-virtual {v0}, Lfa/j0;->a()V

    .line 1469
    .line 1470
    .line 1471
    return-void

    .line 1472
    :pswitch_19
    iget-object v0, p0, Lha/db;->b:Ljava/lang/Object;

    .line 1473
    .line 1474
    check-cast v0, Ldg/a;

    .line 1475
    .line 1476
    iget-boolean v1, v0, Ldg/a;->a:Z

    .line 1477
    .line 1478
    iget-object v2, v0, Ldg/a;->f:Ljava/lang/Object;

    .line 1479
    .line 1480
    check-cast v2, Lvb/g;

    .line 1481
    .line 1482
    if-eqz v1, :cond_32

    .line 1483
    .line 1484
    invoke-virtual {v2}, Lvb/g;->run()V

    .line 1485
    .line 1486
    .line 1487
    goto :goto_1b

    .line 1488
    :cond_32
    iget-object v1, v0, Ldg/a;->d:Ljava/lang/Object;

    .line 1489
    .line 1490
    check-cast v1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 1491
    .line 1492
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1493
    .line 1494
    .line 1495
    iget-object v3, v0, Ldg/a;->c:Ljava/lang/Object;

    .line 1496
    .line 1497
    check-cast v3, Ljava/util/ArrayList;

    .line 1498
    .line 1499
    :try_start_14
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1500
    .line 1501
    .line 1502
    move-result v4

    .line 1503
    if-eqz v4, :cond_33

    .line 1504
    .line 1505
    invoke-virtual {v2}, Lvb/g;->run()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 1506
    .line 1507
    .line 1508
    :goto_1a
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1509
    .line 1510
    .line 1511
    goto :goto_1b

    .line 1512
    :catchall_4
    move-exception v0

    .line 1513
    goto :goto_1c

    .line 1514
    :cond_33
    :try_start_15
    iget-object v0, v0, Ldg/a;->b:Ljava/lang/Object;

    .line 1515
    .line 1516
    check-cast v0, Ljava/util/ArrayList;

    .line 1517
    .line 1518
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1519
    .line 1520
    .line 1521
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1522
    .line 1523
    .line 1524
    invoke-virtual {v2}, Lvb/g;->run()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 1525
    .line 1526
    .line 1527
    goto :goto_1a

    .line 1528
    :goto_1b
    return-void

    .line 1529
    :goto_1c
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1530
    .line 1531
    .line 1532
    throw v0

    .line 1533
    :pswitch_1a
    iget-object v0, p0, Lha/db;->b:Ljava/lang/Object;

    .line 1534
    .line 1535
    check-cast v0, Lha/ie;

    .line 1536
    .line 1537
    iget-object v1, v0, Lha/ie;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 1538
    .line 1539
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1540
    .line 1541
    .line 1542
    move-result-object v1

    .line 1543
    if-eqz v1, :cond_34

    .line 1544
    .line 1545
    iget-object v0, v0, Lha/ie;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 1546
    .line 1547
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1548
    .line 1549
    .line 1550
    move-result-object v0

    .line 1551
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1552
    .line 1553
    .line 1554
    :cond_34
    return-void

    .line 1555
    :pswitch_1b
    iget-object v0, p0, Lha/db;->b:Ljava/lang/Object;

    .line 1556
    .line 1557
    check-cast v0, Lha/yb;

    .line 1558
    .line 1559
    iget-object v1, v0, Lha/yb;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 1560
    .line 1561
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1562
    .line 1563
    .line 1564
    move-result-object v1

    .line 1565
    if-eqz v1, :cond_35

    .line 1566
    .line 1567
    iget-object v0, v0, Lha/yb;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 1568
    .line 1569
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1570
    .line 1571
    .line 1572
    move-result-object v0

    .line 1573
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1574
    .line 1575
    .line 1576
    :cond_35
    return-void

    .line 1577
    :pswitch_1c
    const/4 v0, 0x0

    .line 1578
    :goto_1d
    iget-object v3, p0, Lha/db;->b:Ljava/lang/Object;

    .line 1579
    .line 1580
    check-cast v3, Lha/fb;

    .line 1581
    .line 1582
    iget-object v6, v3, Lha/fb;->j:Lx9/l4;

    .line 1583
    .line 1584
    invoke-virtual {v6}, Lc6/g;->b()I

    .line 1585
    .line 1586
    .line 1587
    move-result v6

    .line 1588
    if-ge v0, v6, :cond_41

    .line 1589
    .line 1590
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1591
    .line 1592
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1593
    .line 1594
    .line 1595
    iget-object v7, v3, Lha/fb;->h:Ljava/lang/String;

    .line 1596
    .line 1597
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1598
    .line 1599
    .line 1600
    const-string v8, "\u4e2d"

    .line 1601
    .line 1602
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1603
    .line 1604
    .line 1605
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1606
    .line 1607
    .line 1608
    move-result-object v6

    .line 1609
    invoke-virtual {v3, v0, v6}, Lha/fb;->b(ILjava/lang/String;)V

    .line 1610
    .line 1611
    .line 1612
    iget-object v6, v3, Lha/fb;->j:Lx9/l4;

    .line 1613
    .line 1614
    invoke-virtual {v6, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 1615
    .line 1616
    .line 1617
    move-result-object v6

    .line 1618
    check-cast v6, Lx9/m4;

    .line 1619
    .line 1620
    iget-object v8, v6, Lx9/m4;->a:Lx9/n3;

    .line 1621
    .line 1622
    iget-object v8, v8, Lx9/n3;->b:Ljava/lang/String;

    .line 1623
    .line 1624
    const-string v9, "\u5378\u8f7d"

    .line 1625
    .line 1626
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1627
    .line 1628
    .line 1629
    move-result v9

    .line 1630
    iget-object v6, v6, Lx9/m4;->a:Lx9/n3;

    .line 1631
    .line 1632
    if-eqz v9, :cond_38

    .line 1633
    .line 1634
    sget-object v7, Lfa/b0;->a:La2/w0;

    .line 1635
    .line 1636
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1637
    .line 1638
    .line 1639
    invoke-static {}, La2/w0;->P()Z

    .line 1640
    .line 1641
    .line 1642
    move-result v7

    .line 1643
    if-eqz v7, :cond_36

    .line 1644
    .line 1645
    :try_start_16
    invoke-static {v8, v5, v5}, La2/w0;->Z(Ljava/lang/String;ZZ)V

    .line 1646
    .line 1647
    .line 1648
    const-string v6, "\u5378\u8f7d\u6210\u529f"

    .line 1649
    .line 1650
    invoke-virtual {v3, v0, v6}, Lha/fb;->b(ILjava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_8

    .line 1651
    .line 1652
    .line 1653
    goto/16 :goto_1f

    .line 1654
    .line 1655
    :catch_8
    move-exception v6

    .line 1656
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1657
    .line 1658
    .line 1659
    move-result-object v6

    .line 1660
    invoke-virtual {v3, v0, v6}, Lha/fb;->b(ILjava/lang/String;)V

    .line 1661
    .line 1662
    .line 1663
    goto/16 :goto_1f

    .line 1664
    .line 1665
    :cond_36
    iget-boolean v7, v6, Lx9/n3;->c:Z

    .line 1666
    .line 1667
    if-nez v7, :cond_37

    .line 1668
    .line 1669
    :try_start_17
    new-instance v7, Landroid/content/Intent;

    .line 1670
    .line 1671
    const-string v8, "android.intent.action.UNINSTALL_PACKAGE"

    .line 1672
    .line 1673
    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1674
    .line 1675
    .line 1676
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1677
    .line 1678
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1679
    .line 1680
    .line 1681
    const-string v9, "package:"

    .line 1682
    .line 1683
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1684
    .line 1685
    .line 1686
    iget-object v6, v6, Lx9/n3;->b:Ljava/lang/String;

    .line 1687
    .line 1688
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1689
    .line 1690
    .line 1691
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1692
    .line 1693
    .line 1694
    move-result-object v6

    .line 1695
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 1696
    .line 1697
    .line 1698
    move-result-object v6

    .line 1699
    invoke-virtual {v7, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1700
    .line 1701
    .line 1702
    iget-object v6, v3, Lha/a4;->a:Landroid/app/Activity;

    .line 1703
    .line 1704
    invoke-virtual {v6, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1705
    .line 1706
    .line 1707
    const-string v6, "\u81ea\u884c\u786e\u8ba4"

    .line 1708
    .line 1709
    invoke-virtual {v3, v0, v6}, Lha/fb;->b(ILjava/lang/String;)V

    .line 1710
    .line 1711
    .line 1712
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_9

    .line 1713
    .line 1714
    .line 1715
    goto/16 :goto_1f

    .line 1716
    .line 1717
    :catch_9
    nop

    .line 1718
    goto/16 :goto_1f

    .line 1719
    .line 1720
    :cond_37
    const-string v6, "\u65e0\u6743\u9650"

    .line 1721
    .line 1722
    invoke-virtual {v3, v0, v6}, Lha/fb;->b(ILjava/lang/String;)V

    .line 1723
    .line 1724
    .line 1725
    goto/16 :goto_1f

    .line 1726
    .line 1727
    :cond_38
    const-string v9, "\u91cd\u7f6e"

    .line 1728
    .line 1729
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1730
    .line 1731
    .line 1732
    move-result v9

    .line 1733
    if-eqz v9, :cond_39

    .line 1734
    .line 1735
    sget-object v6, Lfa/b0;->a:La2/w0;

    .line 1736
    .line 1737
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1738
    .line 1739
    .line 1740
    invoke-static {v8}, La2/w0;->U(Ljava/lang/String;)Ljava/lang/String;

    .line 1741
    .line 1742
    .line 1743
    move-result-object v6

    .line 1744
    invoke-virtual {v3, v0, v6}, Lha/fb;->b(ILjava/lang/String;)V

    .line 1745
    .line 1746
    .line 1747
    goto/16 :goto_1f

    .line 1748
    .line 1749
    :cond_39
    const-string v9, "\u63d0\u53d6"

    .line 1750
    .line 1751
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1752
    .line 1753
    .line 1754
    move-result v9

    .line 1755
    if-eqz v9, :cond_3d

    .line 1756
    .line 1757
    iget-object v7, v3, Lha/fb;->m:Ljava/lang/String;

    .line 1758
    .line 1759
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 1760
    .line 1761
    .line 1762
    move-result v8

    .line 1763
    if-eqz v8, :cond_3a

    .line 1764
    .line 1765
    const-string v0, "\u627e\u4e0d\u5230\u53ef\u7528\u7684\u7684\u5b58\u50a8\u8bbe\u5907(sd\u5361\u3001U\u76d8)"

    .line 1766
    .line 1767
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 1768
    .line 1769
    .line 1770
    goto/16 :goto_20

    .line 1771
    .line 1772
    :cond_3a
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 1773
    .line 1774
    .line 1775
    move-result-object v8

    .line 1776
    invoke-virtual {v8}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 1777
    .line 1778
    .line 1779
    move-result-object v8

    .line 1780
    iget-object v6, v6, Lx9/n3;->b:Ljava/lang/String;

    .line 1781
    .line 1782
    invoke-interface {v8, v6}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 1783
    .line 1784
    .line 1785
    move-result-object v6

    .line 1786
    new-instance v8, Ljava/io/File;

    .line 1787
    .line 1788
    iget-object v9, v6, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 1789
    .line 1790
    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1791
    .line 1792
    .line 1793
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 1794
    .line 1795
    .line 1796
    move-result v9

    .line 1797
    if-nez v9, :cond_3b

    .line 1798
    .line 1799
    const-string v6, "\u6587\u4ef6\u4e0d\u5b58\u5728"

    .line 1800
    .line 1801
    goto :goto_1e

    .line 1802
    :cond_3b
    const-string v9, "/"

    .line 1803
    .line 1804
    invoke-static {v7, v9}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1805
    .line 1806
    .line 1807
    move-result-object v10

    .line 1808
    iget-object v11, v6, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 1809
    .line 1810
    const-string v12, ".apk"

    .line 1811
    .line 1812
    invoke-static {v11, v12, v10}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1813
    .line 1814
    .line 1815
    move-result-object v10

    .line 1816
    new-instance v11, Ljava/io/File;

    .line 1817
    .line 1818
    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1819
    .line 1820
    .line 1821
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    .line 1822
    .line 1823
    .line 1824
    move-result v12

    .line 1825
    if-eqz v12, :cond_3c

    .line 1826
    .line 1827
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 1828
    .line 1829
    .line 1830
    move-result v11

    .line 1831
    if-nez v11, :cond_3c

    .line 1832
    .line 1833
    invoke-static {v7, v9}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1834
    .line 1835
    .line 1836
    move-result-object v7

    .line 1837
    iget-object v6, v6, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 1838
    .line 1839
    const-string v9, "(1).apk"

    .line 1840
    .line 1841
    invoke-static {v6, v9, v7}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1842
    .line 1843
    .line 1844
    move-result-object v10

    .line 1845
    :cond_3c
    :try_start_18
    new-instance v6, Ljava/io/File;

    .line 1846
    .line 1847
    invoke-direct {v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1848
    .line 1849
    .line 1850
    invoke-static {v8, v6}, Landroid/support/v4/media/session/b;->c(Ljava/io/File;Ljava/io/File;)V

    .line 1851
    .line 1852
    .line 1853
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 1854
    .line 1855
    .line 1856
    move-result-object v6

    .line 1857
    invoke-virtual {v6, v10}, Lcom/yunpan/appmanage/db/MyDb;->addFile(Ljava/lang/String;)V

    .line 1858
    .line 1859
    .line 1860
    const-string v6, "\u63d0\u53d6\u6210\u529f"
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_a

    .line 1861
    .line 1862
    goto :goto_1e

    .line 1863
    :catch_a
    const-string v6, "\u63d0\u53d6\u5931\u8d25"

    .line 1864
    .line 1865
    :goto_1e
    invoke-virtual {v3, v0, v6}, Lha/fb;->b(ILjava/lang/String;)V

    .line 1866
    .line 1867
    .line 1868
    goto :goto_1f

    .line 1869
    :cond_3d
    const-string v6, "\u7f13\u5b58"

    .line 1870
    .line 1871
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1872
    .line 1873
    .line 1874
    move-result v6

    .line 1875
    if-eqz v6, :cond_3f

    .line 1876
    .line 1877
    sget-object v6, Lfa/b0;->a:La2/w0;

    .line 1878
    .line 1879
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1880
    .line 1881
    .line 1882
    invoke-static {v8}, La2/w0;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 1883
    .line 1884
    .line 1885
    move-result-object v6

    .line 1886
    const-string v7, "\u6e05\u7406\u6210\u529f"

    .line 1887
    .line 1888
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1889
    .line 1890
    .line 1891
    move-result v6

    .line 1892
    if-eqz v6, :cond_3e

    .line 1893
    .line 1894
    const-string v6, "\u6e05\u7406\u5b8c\u6210"

    .line 1895
    .line 1896
    invoke-virtual {v3, v0, v6}, Lha/fb;->b(ILjava/lang/String;)V

    .line 1897
    .line 1898
    .line 1899
    goto :goto_1f

    .line 1900
    :cond_3e
    const-string v6, "\u6743\u9650\u4e0d\u8db3\uff0c\u53ea\u6e05\u7406\u90e8\u5206"

    .line 1901
    .line 1902
    invoke-virtual {v3, v0, v6}, Lha/fb;->b(ILjava/lang/String;)V

    .line 1903
    .line 1904
    .line 1905
    :cond_3f
    :goto_1f
    iget-boolean v3, v3, Lha/fb;->l:Z

    .line 1906
    .line 1907
    if-eqz v3, :cond_40

    .line 1908
    .line 1909
    goto :goto_20

    .line 1910
    :cond_40
    add-int/2addr v0, v4

    .line 1911
    goto/16 :goto_1d

    .line 1912
    .line 1913
    :cond_41
    iget-object v0, v3, Lha/fb;->q:Lcom/yunpan/appmanage/carsdk/u;

    .line 1914
    .line 1915
    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1916
    .line 1917
    .line 1918
    :goto_20
    return-void

    .line 1919
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
