.class public final synthetic Lg2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt7/d;
.implements Lec/d;
.implements Lcom/hjq/permissions/OnPermissionCallback;
.implements Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lg2/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lg2/c;->a:I

    .line 2
    .line 3
    check-cast p1, Li3/a;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-wide v0, p1, Li3/a;->c:J

    .line 9
    .line 10
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :pswitch_0
    iget-wide v0, p1, Li3/a;->b:J

    .line 16
    .line 17
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public g(Lmc/b;)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    move-object/from16 v4, p0

    .line 6
    .line 7
    iget v5, v4, Lg2/c;->a:I

    .line 8
    .line 9
    sparse-switch v5, :sswitch_data_0

    .line 10
    .line 11
    .line 12
    sget-object v5, Lfa/a;->b:Lfa/e0;

    .line 13
    .line 14
    new-instance v6, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v7, "pm grant "

    .line 17
    .line 18
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v8, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 22
    .line 23
    sget-object v8, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 24
    .line 25
    iget-object v9, v8, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 26
    .line 27
    const-string v10, " android.permission.WRITE_SECURE_SETTINGS"

    .line 28
    .line 29
    invoke-static {v9, v10, v6}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    const-wide/16 v9, 0x378

    .line 34
    .line 35
    invoke-virtual {v5, v9, v10, v6}, Lfa/e0;->a(JLjava/lang/String;)Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    iget v11, v6, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 40
    .line 41
    if-nez v11, :cond_c

    .line 42
    .line 43
    new-instance v6, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v11, "cmd appops set "

    .line 46
    .line 47
    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v11, v8, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 51
    .line 52
    const-string v12, " WRITE_SETTINGS"

    .line 53
    .line 54
    invoke-static {v11, v12, v6}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-virtual {v5, v9, v10, v6}, Lfa/e0;->a(JLjava/lang/String;)Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    iget v11, v6, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 63
    .line 64
    const/4 v13, 0x0

    .line 65
    const/4 v14, 0x1

    .line 66
    const-string v15, "appops set "

    .line 67
    .line 68
    if-eqz v11, :cond_0

    .line 69
    .line 70
    invoke-virtual {v6}, Lcom/yunpan/appmanage/bean/UsbAdbData;->getListStr()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    const-string v11, "found"

    .line 75
    .line 76
    invoke-virtual {v6, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    if-eqz v6, :cond_0

    .line 81
    .line 82
    new-instance v6, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v11, v8, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {v11, v12, v6}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-virtual {v5, v9, v10, v6}, Lfa/e0;->a(JLjava/lang/String;)Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 94
    .line 95
    .line 96
    const/4 v6, 0x0

    .line 97
    goto :goto_0

    .line 98
    :cond_0
    const/4 v6, 0x1

    .line 99
    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v12, "cmd "

    .line 105
    .line 106
    if-eqz v6, :cond_1

    .line 107
    .line 108
    move-object v2, v12

    .line 109
    goto :goto_1

    .line 110
    :cond_1
    move-object v2, v1

    .line 111
    :goto_1
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget-object v2, v8, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 118
    .line 119
    const-string v3, " REQUEST_INSTALL_PACKAGES"

    .line 120
    .line 121
    invoke-static {v2, v3, v11}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v5, v9, v10, v2}, Lfa/e0;->a(JLjava/lang/String;)Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 126
    .line 127
    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    if-eqz v6, :cond_2

    .line 134
    .line 135
    move-object v3, v12

    .line 136
    goto :goto_2

    .line 137
    :cond_2
    move-object v3, v1

    .line 138
    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    iget-object v3, v8, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 145
    .line 146
    const-string v11, " GET_USAGE_STATS"

    .line 147
    .line 148
    invoke-static {v3, v11, v2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v5, v9, v10, v2}, Lfa/e0;->a(JLjava/lang/String;)Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 153
    .line 154
    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    if-eqz v6, :cond_3

    .line 161
    .line 162
    move-object v3, v12

    .line 163
    goto :goto_3

    .line 164
    :cond_3
    move-object v3, v1

    .line 165
    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget-object v3, v8, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 172
    .line 173
    const-string v11, " SYSTEM_ALERT_WINDOW"

    .line 174
    .line 175
    invoke-static {v3, v11, v2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {v5, v9, v10, v2}, Lfa/e0;->a(JLjava/lang/String;)Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 180
    .line 181
    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    if-eqz v6, :cond_4

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_4
    move-object v12, v1

    .line 191
    :goto_4
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    iget-object v3, v8, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 198
    .line 199
    const-string v6, " ANSWER_PHONE_CALLS"

    .line 200
    .line 201
    invoke-static {v3, v6, v2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-virtual {v5, v9, v10, v2}, Lfa/e0;->a(JLjava/lang/String;)Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 206
    .line 207
    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    iget-object v3, v8, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 214
    .line 215
    const-string v6, " android.permission.DUMP"

    .line 216
    .line 217
    invoke-static {v3, v6, v2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-virtual {v5, v9, v10, v2}, Lfa/e0;->a(JLjava/lang/String;)Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 222
    .line 223
    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    iget-object v3, v8, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 230
    .line 231
    const-string v6, " android.permission.READ_LOGS"

    .line 232
    .line 233
    invoke-static {v3, v6, v2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-virtual {v5, v9, v10, v2}, Lfa/e0;->a(JLjava/lang/String;)Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 238
    .line 239
    .line 240
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 241
    .line 242
    const/16 v3, 0x12

    .line 243
    .line 244
    if-lt v2, v3, :cond_b

    .line 245
    .line 246
    const-string v2, "settings get secure enabled_notification_listeners"

    .line 247
    .line 248
    invoke-virtual {v5, v9, v10, v2}, Lfa/e0;->a(JLjava/lang/String;)Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    iget v3, v2, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 253
    .line 254
    if-nez v3, :cond_6

    .line 255
    .line 256
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/UsbAdbData;->lines:Ljava/util/List;

    .line 257
    .line 258
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 263
    .line 264
    .line 265
    move-result v3

    .line 266
    if-eqz v3, :cond_6

    .line 267
    .line 268
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    check-cast v3, Ljava/lang/String;

    .line 273
    .line 274
    const-string v6, "com."

    .line 275
    .line 276
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 277
    .line 278
    .line 279
    move-result v6

    .line 280
    if-eqz v6, :cond_5

    .line 281
    .line 282
    goto :goto_5

    .line 283
    :cond_6
    move-object v3, v1

    .line 284
    :goto_5
    const-string v2, "null"

    .line 285
    .line 286
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    if-eqz v2, :cond_7

    .line 291
    .line 292
    move-object v3, v1

    .line 293
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .line 297
    .line 298
    sget-object v6, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 299
    .line 300
    iget-object v7, v6, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 301
    .line 302
    const-string v8, "/"

    .line 303
    .line 304
    invoke-static {v2, v7, v8, v3}, Landroid/support/v4/media/session/a;->D(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    if-nez v2, :cond_b

    .line 309
    .line 310
    const-string v2, ":"

    .line 311
    .line 312
    invoke-static {v3, v2}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    iget-object v7, v6, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 317
    .line 318
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    const-class v7, Lcom/yunpan/appmanage/service/StartService;

    .line 325
    .line 326
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v7

    .line 330
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    const-string v7, "::"

    .line 338
    .line 339
    invoke-virtual {v3, v7, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v3

    .line 343
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 344
    .line 345
    .line 346
    move-result v7

    .line 347
    if-eqz v7, :cond_8

    .line 348
    .line 349
    invoke-virtual {v3, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v3

    .line 353
    :cond_8
    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    if-eqz v2, :cond_9

    .line 358
    .line 359
    invoke-static {v14, v13, v3}, Landroid/support/v4/media/session/a;->l(IILjava/lang/String;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    :cond_9
    const-string v2, "settings put secure enabled_notification_listeners \'"

    .line 364
    .line 365
    const-string v7, "\'"

    .line 366
    .line 367
    invoke-static {v2, v3, v7}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    const-wide/16 v9, 0x3e8

    .line 372
    .line 373
    invoke-virtual {v5, v9, v10, v2}, Lfa/e0;->a(JLjava/lang/String;)Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 374
    .line 375
    .line 376
    const-string v2, "settings put secure notification_enabled 1"

    .line 377
    .line 378
    invoke-virtual {v5, v9, v10, v2}, Lfa/e0;->a(JLjava/lang/String;)Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 379
    .line 380
    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    .line 382
    .line 383
    const-string v3, "cmd notification allow_listener"

    .line 384
    .line 385
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    iget v3, v5, Lfa/e0;->i:I

    .line 389
    .line 390
    if-eqz v3, :cond_a

    .line 391
    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    const-string v3, " --user "

    .line 395
    .line 396
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    iget v3, v5, Lfa/e0;->i:I

    .line 400
    .line 401
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    :cond_a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    const-string v1, " "

    .line 412
    .line 413
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    iget-object v1, v6, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 417
    .line 418
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    const-class v1, Lcom/yunpan/appmanage/service/StartService;

    .line 425
    .line 426
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v1

    .line 430
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    const-wide/16 v2, 0x3e8

    .line 438
    .line 439
    invoke-virtual {v5, v2, v3, v1}, Lfa/e0;->a(JLjava/lang/String;)Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 440
    .line 441
    .line 442
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 443
    .line 444
    .line 445
    goto :goto_6

    .line 446
    :cond_c
    new-instance v1, Ljava/lang/Exception;

    .line 447
    .line 448
    invoke-virtual {v6}, Lcom/yunpan/appmanage/bean/UsbAdbData;->getListStr()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v2

    .line 452
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v0, v1}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 456
    .line 457
    .line 458
    :goto_6
    return-void

    .line 459
    :sswitch_0
    sget-object v1, Lfa/a;->b:Lfa/e0;

    .line 460
    .line 461
    const-string v2, "setprop ctl.restart adbd"

    .line 462
    .line 463
    const-wide/16 v5, 0xbb8

    .line 464
    .line 465
    invoke-virtual {v1, v5, v6, v2}, Lfa/e0;->a(JLjava/lang/String;)Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 466
    .line 467
    .line 468
    const-wide/16 v2, 0x3e8

    .line 469
    .line 470
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 471
    .line 472
    .line 473
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 474
    .line 475
    .line 476
    return-void

    .line 477
    :sswitch_1
    const-wide/16 v2, 0x3e8

    .line 478
    .line 479
    sget-object v5, Lfa/l;->a:Lfa/m;

    .line 480
    .line 481
    const-string v6, "adb tcpip 5555"

    .line 482
    .line 483
    invoke-virtual {v5, v6}, Lfa/m;->O(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v5}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 490
    .line 491
    .line 492
    move-result v2

    .line 493
    if-eqz v2, :cond_d

    .line 494
    .line 495
    invoke-static {v1, v0}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 496
    .line 497
    .line 498
    goto :goto_7

    .line 499
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 500
    .line 501
    .line 502
    :goto_7
    return-void

    .line 503
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method public onInBorderKeyEvent(ILandroid/view/View;)Z
    .locals 3

    .line 1
    iget v0, p0, Lg2/c;->a:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x11

    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    const/16 v0, 0x42

    .line 11
    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    const/16 p1, 0x14d

    .line 18
    .line 19
    invoke-static {p1, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    :goto_1
    return p1

    .line 24
    :sswitch_0
    const/16 v0, 0x11

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    const/16 v2, 0x22b

    .line 28
    .line 29
    if-eq p1, v0, :cond_4

    .line 30
    .line 31
    const/16 v0, 0x42

    .line 32
    .line 33
    if-ne p1, v0, :cond_2

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    const/16 v0, 0x82

    .line 37
    .line 38
    if-ne p1, v0, :cond_3

    .line 39
    .line 40
    invoke-static {v2, p2}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 41
    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_3
    const/4 v1, 0x0

    .line 45
    goto :goto_3

    .line 46
    :cond_4
    :goto_2
    invoke-static {v2, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 47
    .line 48
    .line 49
    :goto_3
    return v1

    .line 50
    :sswitch_1
    const/16 v0, 0x11

    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    if-eq p1, v0, :cond_8

    .line 54
    .line 55
    const/16 v0, 0x42

    .line 56
    .line 57
    if-ne p1, v0, :cond_5

    .line 58
    .line 59
    goto :goto_5

    .line 60
    :cond_5
    const/16 v0, 0x21

    .line 61
    .line 62
    if-eq p1, v0, :cond_7

    .line 63
    .line 64
    const/16 v0, 0x82

    .line 65
    .line 66
    if-ne p1, v0, :cond_6

    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_6
    const/4 v1, 0x0

    .line 70
    goto :goto_6

    .line 71
    :cond_7
    :goto_4
    const/16 p1, 0x14c

    .line 72
    .line 73
    invoke-static {p1, p2}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 74
    .line 75
    .line 76
    goto :goto_6

    .line 77
    :cond_8
    :goto_5
    const/16 p1, 0x14b

    .line 78
    .line 79
    invoke-static {p1, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 80
    .line 81
    .line 82
    :goto_6
    return v1

    .line 83
    :sswitch_2
    const/16 v0, 0x11

    .line 84
    .line 85
    if-eq p1, v0, :cond_a

    .line 86
    .line 87
    const/16 v0, 0x42

    .line 88
    .line 89
    if-ne p1, v0, :cond_9

    .line 90
    .line 91
    goto :goto_7

    .line 92
    :cond_9
    const/4 p1, 0x0

    .line 93
    goto :goto_8

    .line 94
    :cond_a
    :goto_7
    const/16 p1, 0x14b

    .line 95
    .line 96
    invoke-static {p1, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 97
    .line 98
    .line 99
    const/4 p1, 0x1

    .line 100
    :goto_8
    return p1

    .line 101
    :sswitch_3
    const/16 v0, 0x42

    .line 102
    .line 103
    const/4 v1, 0x1

    .line 104
    const/16 v2, 0x14d

    .line 105
    .line 106
    if-eq p1, v0, :cond_d

    .line 107
    .line 108
    const/16 v0, 0x11

    .line 109
    .line 110
    if-ne p1, v0, :cond_b

    .line 111
    .line 112
    goto :goto_9

    .line 113
    :cond_b
    const/16 v0, 0x21

    .line 114
    .line 115
    if-ne p1, v0, :cond_c

    .line 116
    .line 117
    invoke-static {v2, p2}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 118
    .line 119
    .line 120
    goto :goto_a

    .line 121
    :cond_c
    const/4 v1, 0x0

    .line 122
    goto :goto_a

    .line 123
    :cond_d
    :goto_9
    invoke-static {v2, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 124
    .line 125
    .line 126
    :goto_a
    return v1

    .line 127
    :sswitch_4
    const/16 v0, 0x11

    .line 128
    .line 129
    const/4 v1, 0x1

    .line 130
    const/16 v2, 0x22b

    .line 131
    .line 132
    if-eq p1, v0, :cond_11

    .line 133
    .line 134
    const/16 v0, 0x42

    .line 135
    .line 136
    if-ne p1, v0, :cond_e

    .line 137
    .line 138
    goto :goto_c

    .line 139
    :cond_e
    const/16 v0, 0x21

    .line 140
    .line 141
    if-eq p1, v0, :cond_10

    .line 142
    .line 143
    const/16 v0, 0x82

    .line 144
    .line 145
    if-ne p1, v0, :cond_f

    .line 146
    .line 147
    goto :goto_b

    .line 148
    :cond_f
    const/4 v1, 0x0

    .line 149
    goto :goto_d

    .line 150
    :cond_10
    :goto_b
    invoke-static {v2, p2}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 151
    .line 152
    .line 153
    goto :goto_d

    .line 154
    :cond_11
    :goto_c
    invoke-static {v2, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 155
    .line 156
    .line 157
    :goto_d
    return v1

    .line 158
    :sswitch_5
    const/16 v0, 0x11

    .line 159
    .line 160
    const/4 v1, 0x1

    .line 161
    if-eq p1, v0, :cond_14

    .line 162
    .line 163
    const/16 v0, 0x42

    .line 164
    .line 165
    if-ne p1, v0, :cond_12

    .line 166
    .line 167
    goto :goto_e

    .line 168
    :cond_12
    const/16 v0, 0x82

    .line 169
    .line 170
    if-ne p1, v0, :cond_13

    .line 171
    .line 172
    const/16 p1, 0x14b

    .line 173
    .line 174
    invoke-static {p1, p2}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 175
    .line 176
    .line 177
    goto :goto_f

    .line 178
    :cond_13
    const/4 v1, 0x0

    .line 179
    goto :goto_f

    .line 180
    :cond_14
    :goto_e
    const/16 p1, 0x14d

    .line 181
    .line 182
    invoke-static {p1, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 183
    .line 184
    .line 185
    :goto_f
    return v1

    .line 186
    :sswitch_6
    const/16 v0, 0x42

    .line 187
    .line 188
    const/4 v1, 0x1

    .line 189
    if-eq p1, v0, :cond_17

    .line 190
    .line 191
    const/16 v0, 0x11

    .line 192
    .line 193
    if-ne p1, v0, :cond_15

    .line 194
    .line 195
    goto :goto_10

    .line 196
    :cond_15
    const/16 v0, 0x82

    .line 197
    .line 198
    if-ne p1, v0, :cond_16

    .line 199
    .line 200
    const/16 p1, 0x22b

    .line 201
    .line 202
    invoke-static {p1, p2}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 203
    .line 204
    .line 205
    goto :goto_11

    .line 206
    :cond_16
    const/4 v1, 0x0

    .line 207
    goto :goto_11

    .line 208
    :cond_17
    :goto_10
    const/16 p1, 0x29a

    .line 209
    .line 210
    invoke-static {p1, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 211
    .line 212
    .line 213
    :goto_11
    return v1

    .line 214
    :sswitch_7
    const/16 v0, 0x11

    .line 215
    .line 216
    const/4 v1, 0x1

    .line 217
    const/16 v2, 0x22b

    .line 218
    .line 219
    if-eq p1, v0, :cond_1a

    .line 220
    .line 221
    const/16 v0, 0x42

    .line 222
    .line 223
    if-ne p1, v0, :cond_18

    .line 224
    .line 225
    goto :goto_12

    .line 226
    :cond_18
    const/16 v0, 0x82

    .line 227
    .line 228
    if-ne p1, v0, :cond_19

    .line 229
    .line 230
    invoke-static {v2, p2}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 231
    .line 232
    .line 233
    goto :goto_13

    .line 234
    :cond_19
    const/4 v1, 0x0

    .line 235
    goto :goto_13

    .line 236
    :cond_1a
    :goto_12
    invoke-static {v2, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 237
    .line 238
    .line 239
    :goto_13
    return v1

    .line 240
    :sswitch_8
    const/16 v0, 0x42

    .line 241
    .line 242
    if-ne p1, v0, :cond_1b

    .line 243
    .line 244
    const/16 p1, 0x12c

    .line 245
    .line 246
    invoke-static {p1, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 247
    .line 248
    .line 249
    goto :goto_14

    .line 250
    :cond_1b
    const/16 v0, 0x11

    .line 251
    .line 252
    if-ne p1, v0, :cond_1c

    .line 253
    .line 254
    const/16 p1, 0x12d

    .line 255
    .line 256
    invoke-static {p1, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 257
    .line 258
    .line 259
    goto :goto_14

    .line 260
    :cond_1c
    const/16 v0, 0x21

    .line 261
    .line 262
    const/16 v1, 0x12e

    .line 263
    .line 264
    if-ne p1, v0, :cond_1d

    .line 265
    .line 266
    invoke-static {v1, p2}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 267
    .line 268
    .line 269
    goto :goto_14

    .line 270
    :cond_1d
    const/16 v0, 0x82

    .line 271
    .line 272
    if-ne p1, v0, :cond_1e

    .line 273
    .line 274
    invoke-static {v1, p2}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 275
    .line 276
    .line 277
    :cond_1e
    :goto_14
    const/4 p1, 0x1

    .line 278
    return p1

    .line 279
    :sswitch_9
    const/16 v0, 0x42

    .line 280
    .line 281
    const/4 v1, 0x1

    .line 282
    if-eq p1, v0, :cond_21

    .line 283
    .line 284
    const/16 v0, 0x11

    .line 285
    .line 286
    if-ne p1, v0, :cond_1f

    .line 287
    .line 288
    goto :goto_15

    .line 289
    :cond_1f
    const/16 v0, 0x82

    .line 290
    .line 291
    if-ne p1, v0, :cond_20

    .line 292
    .line 293
    const/16 p1, 0x22b

    .line 294
    .line 295
    invoke-static {p1, p2}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 296
    .line 297
    .line 298
    goto :goto_16

    .line 299
    :cond_20
    const/4 v1, 0x0

    .line 300
    goto :goto_16

    .line 301
    :cond_21
    :goto_15
    const/16 p1, 0x29a

    .line 302
    .line 303
    invoke-static {p1, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 304
    .line 305
    .line 306
    :goto_16
    return v1

    .line 307
    :sswitch_a
    const/16 v0, 0x42

    .line 308
    .line 309
    const/4 v1, 0x1

    .line 310
    if-ne p1, v0, :cond_22

    .line 311
    .line 312
    const/16 p1, 0x14d

    .line 313
    .line 314
    invoke-static {p1, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 315
    .line 316
    .line 317
    goto :goto_17

    .line 318
    :cond_22
    const/16 v0, 0x11

    .line 319
    .line 320
    if-ne p1, v0, :cond_23

    .line 321
    .line 322
    const/16 p1, 0x142

    .line 323
    .line 324
    invoke-static {p1, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 325
    .line 326
    .line 327
    goto :goto_17

    .line 328
    :cond_23
    const/16 v0, 0x82

    .line 329
    .line 330
    if-ne p1, v0, :cond_24

    .line 331
    .line 332
    const/16 p1, 0x137

    .line 333
    .line 334
    invoke-static {p1, p2}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 335
    .line 336
    .line 337
    goto :goto_17

    .line 338
    :cond_24
    const/4 v1, 0x0

    .line 339
    :goto_17
    return v1

    .line 340
    nop

    .line 341
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_a
        0x5 -> :sswitch_9
        0x8 -> :sswitch_8
        0xa -> :sswitch_7
        0x13 -> :sswitch_6
        0x16 -> :sswitch_5
        0x17 -> :sswitch_4
        0x18 -> :sswitch_3
        0x19 -> :sswitch_2
        0x1a -> :sswitch_1
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method public onPermissionResult(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    .line 1
    const-string v0, "\u9700\u8981\u60ac\u6d6e\u7a97\u6743\u9650\u3010\u5728\u4e0a\u5c42\u663e\u793a\u3011"

    .line 2
    .line 3
    iget v1, p0, Lg2/c;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    :pswitch_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const-string p1, "\u9700\u8981\u3010\u84dd\u7259\u8fde\u63a5\u6743\u9650\u3011\u6743\u9650"

    .line 15
    .line 16
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void

    .line 20
    :pswitch_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void

    .line 30
    :pswitch_2
    sget p1, Lha/t9;->m:I

    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    const-string p1, "\u8bf7\u5148\u6388\u4e88\u60ac\u6d6e\u7a97\u6743\u9650\u3010\u5728\u4e0a\u5c42\u663e\u793a\u3011"

    .line 40
    .line 41
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void

    .line 45
    :pswitch_4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    const-string p1, "\u8bf7\u5148\u6388\u4e88\u3010\u4fee\u6539\u7cfb\u7edf\u8bbe\u7f6e\u3011\u6743\u9650"

    .line 52
    .line 53
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    :cond_3
    return-void

    .line 57
    :pswitch_5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_4

    .line 62
    .line 63
    const-string p1, "\u8bf7\u5148\u6388\u4e88\u6211\u3010\u84dd\u7259\u8fde\u63a5\u3011\u6743\u9650"

    .line 64
    .line 65
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    :cond_4
    return-void

    .line 69
    :pswitch_6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_5

    .line 74
    .line 75
    const-string p1, "\u8bf7\u5148\u6388\u4e88\u6211\u3010\u9ea6\u514b\u98ce\u3011\u6743\u9650"

    .line 76
    .line 77
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    :cond_5
    return-void

    .line 81
    :pswitch_7
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_6

    .line 86
    .line 87
    const-string p1, "\u9700\u8981\u3010\u7c97\u7565\u4f4d\u7f6e\u3011\u3010\u7cbe\u786e\u4f4d\u7f6e\u3011\u6743\u9650\u624d\u53ef\u4ee5\u83b7\u53d6wifi\u4fe1\u606f"

    .line 88
    .line 89
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    :cond_6
    return-void

    .line 93
    :pswitch_8
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-nez p1, :cond_7

    .line 98
    .line 99
    const-string p1, "\u9700\u8981\u3010\u7c97\u7565\u4f4d\u7f6e\u3011\u3010\u7cbe\u786e\u4f4d\u7f6e\u3011\u6743\u9650\u624d\u53ef\u4ee5\u83b7\u53d6\u84dd\u7259\u4fe1\u606f"

    .line 100
    .line 101
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    :cond_7
    return-void

    .line 105
    :pswitch_9
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_8

    .line 110
    .line 111
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    :cond_8
    return-void

    .line 115
    :pswitch_a
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_9

    .line 120
    .line 121
    const-string p1, "\u8bf7\u5148\u6388\u4e88\u6211\u3010\u9ad8\u7cbe\u5ea6\u5b9a\u4f4d\u3011\u6743\u9650"

    .line 122
    .line 123
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 124
    .line 125
    .line 126
    :cond_9
    return-void

    .line 127
    :pswitch_b
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-eqz p1, :cond_a

    .line 132
    .line 133
    const-string p1, "\u8bf7\u5148\u6388\u4e88\u3010\u84dd\u7259\u8fde\u63a5\u3011\u6743\u9650"

    .line 134
    .line 135
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 136
    .line 137
    .line 138
    :cond_a
    return-void

    .line 139
    :pswitch_c
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-eqz p1, :cond_b

    .line 144
    .line 145
    const-string p1, "\u8bf7\u6388\u4e88\u3010\u5f55\u97f3\u6743\u9650\u3011"

    .line 146
    .line 147
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 148
    .line 149
    .line 150
    :cond_b
    return-void

    .line 151
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_0
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
