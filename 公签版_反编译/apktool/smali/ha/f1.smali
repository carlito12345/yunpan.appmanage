.class public final synthetic Lha/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/g1;


# direct methods
.method public synthetic constructor <init>(Lha/g1;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/f1;->a:I

    iput-object p1, p0, Lha/f1;->b:Lha/g1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    iget p1, p0, Lha/f1;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/f1;->b:Lha/g1;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Lz7/s;

    .line 12
    .line 13
    invoke-direct {v0}, Lz7/s;-><init>()V

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x1a1

    .line 17
    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "gnType"

    .line 23
    .line 24
    invoke-virtual {v0, v2, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 25
    .line 26
    .line 27
    const-string v1, "name"

    .line 28
    .line 29
    const-string v2, "\u558a\u9ea6(\u5f00\u59cb/\u505c\u6b62)"

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p1, Lha/g1;->j:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "int1"

    .line 45
    .line 46
    invoke-virtual {v0, v2, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p1, Lha/g1;->s:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 50
    .line 51
    iget v1, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 52
    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string v2, "volumeType"

    .line 58
    .line 59
    invoke-virtual {v0, v2, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 60
    .line 61
    .line 62
    iget-object v1, p1, Lha/g1;->m:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 63
    .line 64
    iget v1, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 65
    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const-string v2, "tdType"

    .line 71
    .line 72
    invoke-virtual {v0, v2, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 73
    .line 74
    .line 75
    iget-object v1, p1, Lha/g1;->n:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 76
    .line 77
    iget v1, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 78
    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const-string v2, "noiseType"

    .line 84
    .line 85
    invoke-virtual {v0, v2, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 86
    .line 87
    .line 88
    iget-object v1, p1, Lha/g1;->p:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 89
    .line 90
    iget v1, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 91
    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    const-string v2, "focusType"

    .line 97
    .line 98
    invoke-virtual {v0, v2, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 99
    .line 100
    .line 101
    iget-object v1, p1, Lha/g1;->q:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 102
    .line 103
    iget v1, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 104
    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    const-string v2, "speakerId"

    .line 110
    .line 111
    invoke-virtual {v0, v2, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 112
    .line 113
    .line 114
    iget-object v1, p1, Lha/g1;->r:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 115
    .line 116
    iget v1, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 117
    .line 118
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    const-string v2, "microphoneId"

    .line 123
    .line 124
    invoke-virtual {v0, v2, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 125
    .line 126
    .line 127
    iget-object v1, p1, Lha/g1;->k:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 128
    .line 129
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    const-string v2, "microphoneGain"

    .line 138
    .line 139
    invoke-virtual {v0, v2, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 140
    .line 141
    .line 142
    iget-object v1, p1, Lha/g1;->g:Lha/f8;

    .line 143
    .line 144
    invoke-virtual {v1, v0}, Lha/f8;->k(Lz7/s;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Lha/g1;->dismiss()V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :pswitch_0
    iget-object p1, p0, Lha/f1;->b:Lha/g1;

    .line 152
    .line 153
    iget-object v0, p1, Lha/g1;->h:Landroid/widget/TextView;

    .line 154
    .line 155
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    const-string v1, "\u505c\u6b62"

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_2

    .line 170
    .line 171
    iget-object v0, p1, Lha/g1;->h:Landroid/widget/TextView;

    .line 172
    .line 173
    const-string v1, "\u6d4b\u8bd5\u558a\u9ea6"

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    .line 177
    .line 178
    iget-object v0, p1, Lha/g1;->l:Lra/c;

    .line 179
    .line 180
    if-eqz v0, :cond_0

    .line 181
    .line 182
    const/4 v1, 0x0

    .line 183
    :try_start_0
    invoke-virtual {v0}, Lra/c;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    .line 185
    .line 186
    :catch_0
    iput-object v1, p1, Lha/g1;->l:Lra/c;

    .line 187
    .line 188
    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    .line 190
    iput-object v1, p1, Lha/g1;->l:Lra/c;

    .line 191
    .line 192
    throw v0

    .line 193
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lha/g1;->b()V

    .line 194
    .line 195
    .line 196
    iget v0, p1, Lha/g1;->t:I

    .line 197
    .line 198
    if-ltz v0, :cond_4

    .line 199
    .line 200
    iget v1, p1, Lha/g1;->v:I

    .line 201
    .line 202
    if-ltz v1, :cond_4

    .line 203
    .line 204
    const/16 v2, 0x64

    .line 205
    .line 206
    if-lt v0, v2, :cond_1

    .line 207
    .line 208
    sget-object v3, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 209
    .line 210
    sub-int/2addr v0, v2

    .line 211
    invoke-virtual {v3, v0, v1}, Lcom/yunpan/appmanage/carsdk/k0;->h(II)V

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_1
    iget-object v2, p1, Lha/g1;->w:Landroid/media/AudioManager;

    .line 216
    .line 217
    const/4 v3, 0x0

    .line 218
    invoke-virtual {v2, v0, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 219
    .line 220
    .line 221
    :goto_1
    const/4 v0, -0x1

    .line 222
    iput v0, p1, Lha/g1;->t:I

    .line 223
    .line 224
    iput v0, p1, Lha/g1;->v:I

    .line 225
    .line 226
    goto :goto_2

    .line 227
    :cond_2
    iget-object v0, p1, Lha/a4;->b:Landroid/content/Context;

    .line 228
    .line 229
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getRecordAudioPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-static {v0, v1}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-nez v0, :cond_3

    .line 238
    .line 239
    iget-object p1, p1, Lha/a4;->a:Landroid/app/Activity;

    .line 240
    .line 241
    invoke-static {p1}, Lcom/hjq/permissions/XXPermissions;->with(Landroid/content/Context;)Lcom/hjq/permissions/XXPermissions;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getRecordAudioPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-virtual {p1, v0}, Lcom/hjq/permissions/XXPermissions;->permission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/XXPermissions;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    new-instance v0, Lg2/c;

    .line 254
    .line 255
    const/4 v1, 0x3

    .line 256
    invoke-direct {v0, v1}, Lg2/c;-><init>(I)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1, v0}, Lcom/hjq/permissions/XXPermissions;->request(Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 260
    .line 261
    .line 262
    goto :goto_2

    .line 263
    :cond_3
    :try_start_1
    new-instance v0, Lra/c;

    .line 264
    .line 265
    iget-object v3, p1, Lha/a4;->b:Landroid/content/Context;

    .line 266
    .line 267
    iget-object v1, p1, Lha/g1;->r:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 268
    .line 269
    iget v4, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 270
    .line 271
    iget-object v1, p1, Lha/g1;->k:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 272
    .line 273
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 274
    .line 275
    .line 276
    move-result v5

    .line 277
    iget-object v1, p1, Lha/g1;->m:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 278
    .line 279
    iget v6, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 280
    .line 281
    iget-object v1, p1, Lha/g1;->q:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 282
    .line 283
    iget v7, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 284
    .line 285
    iget-object v1, p1, Lha/g1;->n:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 286
    .line 287
    iget v8, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 288
    .line 289
    move-object v2, v0

    .line 290
    invoke-direct/range {v2 .. v8}, Lra/c;-><init>(Landroid/content/Context;IIIII)V

    .line 291
    .line 292
    .line 293
    iput-object v0, p1, Lha/g1;->l:Lra/c;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 294
    .line 295
    new-instance v1, Lha/y0;

    .line 296
    .line 297
    invoke-direct {v1, p1}, Lha/y0;-><init>(Lha/g1;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0, v1}, Lra/c;->d(Lea/b;)V

    .line 301
    .line 302
    .line 303
    goto :goto_2

    .line 304
    :catch_1
    move-exception p1

    .line 305
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 310
    .line 311
    .line 312
    :cond_4
    :goto_2
    return-void

    .line 313
    :pswitch_1
    iget-object p1, p0, Lha/f1;->b:Lha/g1;

    .line 314
    .line 315
    iget-object v0, p1, Lha/g1;->i:Landroid/widget/TextView;

    .line 316
    .line 317
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    const-string v1, "\u505c\u6b62\u6d4b\u8bd5"

    .line 326
    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    iget-object v1, p1, Lha/g1;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 332
    .line 333
    if-eqz v0, :cond_5

    .line 334
    .line 335
    const/4 v0, 0x1

    .line 336
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 337
    .line 338
    .line 339
    iget-object p1, p1, Lha/g1;->i:Landroid/widget/TextView;

    .line 340
    .line 341
    const-string v0, "\u9010\u4e00\u6d4b\u8bd5\u5587\u53ed(\u8bf7\u4ed4\u7ec6\u8046\u542c\uff0c\u81ea\u884c\u7504\u522b)"

    .line 342
    .line 343
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    .line 345
    .line 346
    goto :goto_3

    .line 347
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 348
    .line 349
    const/16 v2, 0x17

    .line 350
    .line 351
    if-ge v0, v2, :cond_6

    .line 352
    .line 353
    const-string p1, "\u7cfb\u7edf\u7248\u672c\u592a\u4f4e\uff0c\u4e0d\u80fd\u4f7f\u7528\u6b64\u529f\u80fd"

    .line 354
    .line 355
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    goto :goto_3

    .line 359
    :cond_6
    iget-object v0, p1, Lha/g1;->i:Landroid/widget/TextView;

    .line 360
    .line 361
    const-string v2, "\u505c\u6b62\u6d4b\u8bd5 (\u6d4b\u8bd5\u58f0\u9053\u4e2d)"

    .line 362
    .line 363
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    .line 365
    .line 366
    const/4 v0, 0x0

    .line 367
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 368
    .line 369
    .line 370
    new-instance v0, Lha/y0;

    .line 371
    .line 372
    invoke-direct {v0, p1}, Lha/y0;-><init>(Lha/g1;)V

    .line 373
    .line 374
    .line 375
    new-instance v1, Lmc/c;

    .line 376
    .line 377
    const/4 v2, 0x0

    .line 378
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 379
    .line 380
    .line 381
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 382
    .line 383
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    new-instance v1, Lha/p0;

    .line 396
    .line 397
    const/4 v2, 0x2

    .line 398
    invoke-direct {v1, v2, p1}, Lha/p0;-><init>(ILjava/lang/Object;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 402
    .line 403
    .line 404
    :goto_3
    return-void

    .line 405
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
