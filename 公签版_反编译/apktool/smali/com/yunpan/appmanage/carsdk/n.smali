.class public final Lcom/yunpan/appmanage/carsdk/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/carsdk/r;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/carsdk/r;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/yunpan/appmanage/carsdk/n;->a:I

    iput-object p1, p0, Lcom/yunpan/appmanage/carsdk/n;->b:Lcom/yunpan/appmanage/carsdk/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcom/yunpan/appmanage/carsdk/n;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-class v1, Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/n;->b:Lcom/yunpan/appmanage/carsdk/r;

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    const-string v0, "gear"

    .line 17
    .line 18
    invoke-static {v2, p1, p2, p3, v0}, Lcom/yunpan/appmanage/carsdk/r;->l(Lcom/yunpan/appmanage/carsdk/r;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    :try_start_0
    const-string p1, "onChangeEvent"

    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    if-eqz p3, :cond_1

    .line 36
    .line 37
    array-length p1, p3

    .line 38
    if-lez p1, :cond_1

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    aget-object p1, p3, p1

    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    invoke-static {v2, p1}, Lcom/yunpan/appmanage/carsdk/r;->h(Lcom/yunpan/appmanage/carsdk/r;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const-string p1, "onErrorEvent"

    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :goto_0
    const-string p2, "gearCallback"

    .line 68
    .line 69
    invoke-virtual {v2, p2, p1}, Lcom/yunpan/appmanage/carsdk/r;->s(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 73
    :goto_2
    return-object p1

    .line 74
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-class v1, Ljava/lang/Object;

    .line 79
    .line 80
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/n;->b:Lcom/yunpan/appmanage/carsdk/r;

    .line 81
    .line 82
    if-ne v0, v1, :cond_3

    .line 83
    .line 84
    const-string v0, "hardKey"

    .line 85
    .line 86
    invoke-static {v2, p1, p2, p3, v0}, Lcom/yunpan/appmanage/carsdk/r;->l(Lcom/yunpan/appmanage/carsdk/r;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    goto :goto_5

    .line 91
    :cond_3
    :try_start_1
    const-string p1, "onChangeEvent"

    .line 92
    .line 93
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_4

    .line 102
    .line 103
    if-eqz p3, :cond_4

    .line 104
    .line 105
    array-length p1, p3

    .line 106
    if-lez p1, :cond_4

    .line 107
    .line 108
    const/4 p1, 0x0

    .line 109
    aget-object p1, p3, p1

    .line 110
    .line 111
    if-eqz p1, :cond_4

    .line 112
    .line 113
    invoke-static {v2, p1}, Lcom/yunpan/appmanage/carsdk/r;->i(Lcom/yunpan/appmanage/carsdk/r;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    goto :goto_4

    .line 117
    :catchall_1
    move-exception p1

    .line 118
    goto :goto_3

    .line 119
    :cond_4
    const-string p1, "onErrorEvent"

    .line 120
    .line 121
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-eqz p1, :cond_5

    .line 130
    .line 131
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 132
    .line 133
    .line 134
    goto :goto_4

    .line 135
    :goto_3
    const-string p2, "hardKeyCallback"

    .line 136
    .line 137
    invoke-virtual {v2, p2, p1}, Lcom/yunpan/appmanage/carsdk/r;->s(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    .line 139
    .line 140
    :cond_5
    :goto_4
    const/4 p1, 0x0

    .line 141
    :goto_5
    return-object p1

    .line 142
    :pswitch_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    const-class v1, Ljava/lang/Object;

    .line 147
    .line 148
    const-string v2, "carPowerStateListener"

    .line 149
    .line 150
    iget-object v3, p0, Lcom/yunpan/appmanage/carsdk/n;->b:Lcom/yunpan/appmanage/carsdk/r;

    .line 151
    .line 152
    if-ne v0, v1, :cond_6

    .line 153
    .line 154
    invoke-static {v3, p1, p2, p3, v2}, Lcom/yunpan/appmanage/carsdk/r;->l(Lcom/yunpan/appmanage/carsdk/r;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    goto :goto_7

    .line 159
    :cond_6
    :try_start_2
    const-string p1, "onStateChanged"

    .line 160
    .line 161
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-eqz p1, :cond_7

    .line 170
    .line 171
    if-eqz p3, :cond_7

    .line 172
    .line 173
    array-length p1, p3

    .line 174
    if-lez p1, :cond_7

    .line 175
    .line 176
    const/4 p1, 0x0

    .line 177
    aget-object p1, p3, p1

    .line 178
    .line 179
    instance-of p2, p1, Ljava/lang/Integer;

    .line 180
    .line 181
    if-eqz p2, :cond_7

    .line 182
    .line 183
    check-cast p1, Ljava/lang/Integer;

    .line 184
    .line 185
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    iget-object p2, v3, Lcom/yunpan/appmanage/carsdk/r;->b:Lua/i1;

    .line 190
    .line 191
    if-eqz p2, :cond_7

    .line 192
    .line 193
    new-instance p3, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    const-string v0, "\u7535\u6e90\u72b6\u6001\u53d8\u5316\u56de\u8c03 powState="

    .line 196
    .line 197
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    iget-object p2, p2, Lua/i1;->b:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast p2, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS12;

    .line 210
    .line 211
    invoke-static {p2, p1}, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS12;->x(Lcom/yunpan/appmanage/ui/ActivityTextFlyOS12;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 212
    .line 213
    .line 214
    goto :goto_6

    .line 215
    :catchall_2
    move-exception p1

    .line 216
    invoke-virtual {v3, v2, p1}, Lcom/yunpan/appmanage/carsdk/r;->s(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 217
    .line 218
    .line 219
    :cond_7
    :goto_6
    const/4 p1, 0x0

    .line 220
    :goto_7
    return-object p1

    .line 221
    :pswitch_2
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    const-class v1, Ljava/lang/Object;

    .line 226
    .line 227
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/n;->b:Lcom/yunpan/appmanage/carsdk/r;

    .line 228
    .line 229
    if-ne v0, v1, :cond_8

    .line 230
    .line 231
    const-string v0, "apPowerStateReport"

    .line 232
    .line 233
    invoke-static {v2, p1, p2, p3, v0}, Lcom/yunpan/appmanage/carsdk/r;->l(Lcom/yunpan/appmanage/carsdk/r;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    goto :goto_a

    .line 238
    :cond_8
    :try_start_3
    const-string p1, "onChangeEvent"

    .line 239
    .line 240
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    if-eqz p1, :cond_9

    .line 249
    .line 250
    if-eqz p3, :cond_9

    .line 251
    .line 252
    array-length p1, p3

    .line 253
    if-lez p1, :cond_9

    .line 254
    .line 255
    const/4 p1, 0x0

    .line 256
    aget-object p1, p3, p1

    .line 257
    .line 258
    if-eqz p1, :cond_9

    .line 259
    .line 260
    invoke-static {v2, p1}, Lcom/yunpan/appmanage/carsdk/r;->c(Lcom/yunpan/appmanage/carsdk/r;Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    goto :goto_9

    .line 264
    :catchall_3
    move-exception p1

    .line 265
    goto :goto_8

    .line 266
    :cond_9
    const-string p1, "onErrorEvent"

    .line 267
    .line 268
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p2

    .line 272
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result p1

    .line 276
    if-eqz p1, :cond_a

    .line 277
    .line 278
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 279
    .line 280
    .line 281
    goto :goto_9

    .line 282
    :goto_8
    const-string p2, "apPowerStateReportCallback"

    .line 283
    .line 284
    invoke-virtual {v2, p2, p1}, Lcom/yunpan/appmanage/carsdk/r;->s(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    .line 286
    .line 287
    :cond_a
    :goto_9
    const/4 p1, 0x0

    .line 288
    :goto_a
    return-object p1

    .line 289
    :pswitch_3
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    const-class v1, Ljava/lang/Object;

    .line 294
    .line 295
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/n;->b:Lcom/yunpan/appmanage/carsdk/r;

    .line 296
    .line 297
    if-ne v0, v1, :cond_b

    .line 298
    .line 299
    const-string v0, "apPowerStateReq"

    .line 300
    .line 301
    invoke-static {v2, p1, p2, p3, v0}, Lcom/yunpan/appmanage/carsdk/r;->l(Lcom/yunpan/appmanage/carsdk/r;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    goto :goto_d

    .line 306
    :cond_b
    :try_start_4
    const-string p1, "onChangeEvent"

    .line 307
    .line 308
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result p1

    .line 316
    if-eqz p1, :cond_c

    .line 317
    .line 318
    if-eqz p3, :cond_c

    .line 319
    .line 320
    array-length p1, p3

    .line 321
    if-lez p1, :cond_c

    .line 322
    .line 323
    const/4 p1, 0x0

    .line 324
    aget-object p1, p3, p1

    .line 325
    .line 326
    if-eqz p1, :cond_c

    .line 327
    .line 328
    invoke-static {v2, p1}, Lcom/yunpan/appmanage/carsdk/r;->d(Lcom/yunpan/appmanage/carsdk/r;Ljava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    goto :goto_c

    .line 332
    :catchall_4
    move-exception p1

    .line 333
    goto :goto_b

    .line 334
    :cond_c
    const-string p1, "onErrorEvent"

    .line 335
    .line 336
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object p2

    .line 340
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    move-result p1

    .line 344
    if-eqz p1, :cond_d

    .line 345
    .line 346
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 347
    .line 348
    .line 349
    goto :goto_c

    .line 350
    :goto_b
    const-string p2, "apPowerStateReqCallback"

    .line 351
    .line 352
    invoke-virtual {v2, p2, p1}, Lcom/yunpan/appmanage/carsdk/r;->s(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 353
    .line 354
    .line 355
    :cond_d
    :goto_c
    const/4 p1, 0x0

    .line 356
    :goto_d
    return-object p1

    .line 357
    :pswitch_4
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    const-class v1, Ljava/lang/Object;

    .line 362
    .line 363
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/n;->b:Lcom/yunpan/appmanage/carsdk/r;

    .line 364
    .line 365
    if-ne v0, v1, :cond_e

    .line 366
    .line 367
    const-string v0, "fuelTankCap"

    .line 368
    .line 369
    invoke-static {v2, p1, p2, p3, v0}, Lcom/yunpan/appmanage/carsdk/r;->l(Lcom/yunpan/appmanage/carsdk/r;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object p1

    .line 373
    goto :goto_10

    .line 374
    :cond_e
    :try_start_5
    const-string p1, "onChangeEvent"

    .line 375
    .line 376
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result p1

    .line 384
    if-eqz p1, :cond_f

    .line 385
    .line 386
    if-eqz p3, :cond_f

    .line 387
    .line 388
    array-length p1, p3

    .line 389
    if-lez p1, :cond_f

    .line 390
    .line 391
    const/4 p1, 0x0

    .line 392
    aget-object p1, p3, p1

    .line 393
    .line 394
    if-eqz p1, :cond_f

    .line 395
    .line 396
    invoke-static {v2, p1}, Lcom/yunpan/appmanage/carsdk/r;->g(Lcom/yunpan/appmanage/carsdk/r;Ljava/lang/Object;)V

    .line 397
    .line 398
    .line 399
    goto :goto_f

    .line 400
    :catchall_5
    move-exception p1

    .line 401
    goto :goto_e

    .line 402
    :cond_f
    const-string p1, "onErrorEvent"

    .line 403
    .line 404
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object p2

    .line 408
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    move-result p1

    .line 412
    if-eqz p1, :cond_10

    .line 413
    .line 414
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 415
    .line 416
    .line 417
    goto :goto_f

    .line 418
    :goto_e
    const-string p2, "fuelTankCapCallback"

    .line 419
    .line 420
    invoke-virtual {v2, p2, p1}, Lcom/yunpan/appmanage/carsdk/r;->s(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 421
    .line 422
    .line 423
    :cond_10
    :goto_f
    const/4 p1, 0x0

    .line 424
    :goto_10
    return-object p1

    .line 425
    :pswitch_5
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    const-class v1, Ljava/lang/Object;

    .line 430
    .line 431
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/n;->b:Lcom/yunpan/appmanage/carsdk/r;

    .line 432
    .line 433
    if-ne v0, v1, :cond_11

    .line 434
    .line 435
    const-string v0, "engineRpm"

    .line 436
    .line 437
    invoke-static {v2, p1, p2, p3, v0}, Lcom/yunpan/appmanage/carsdk/r;->l(Lcom/yunpan/appmanage/carsdk/r;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object p1

    .line 441
    goto :goto_13

    .line 442
    :cond_11
    :try_start_6
    const-string p1, "onChangeEvent"

    .line 443
    .line 444
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    move-result p1

    .line 452
    if-eqz p1, :cond_12

    .line 453
    .line 454
    if-eqz p3, :cond_12

    .line 455
    .line 456
    array-length p1, p3

    .line 457
    if-lez p1, :cond_12

    .line 458
    .line 459
    const/4 p1, 0x0

    .line 460
    aget-object p1, p3, p1

    .line 461
    .line 462
    if-eqz p1, :cond_12

    .line 463
    .line 464
    invoke-static {v2, p1}, Lcom/yunpan/appmanage/carsdk/r;->f(Lcom/yunpan/appmanage/carsdk/r;Ljava/lang/Object;)V

    .line 465
    .line 466
    .line 467
    goto :goto_12

    .line 468
    :catchall_6
    move-exception p1

    .line 469
    goto :goto_11

    .line 470
    :cond_12
    const-string p1, "onErrorEvent"

    .line 471
    .line 472
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object p2

    .line 476
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 477
    .line 478
    .line 479
    move-result p1

    .line 480
    if-eqz p1, :cond_13

    .line 481
    .line 482
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 483
    .line 484
    .line 485
    goto :goto_12

    .line 486
    :goto_11
    const-string p2, "engineRpmCallback"

    .line 487
    .line 488
    invoke-virtual {v2, p2, p1}, Lcom/yunpan/appmanage/carsdk/r;->s(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 489
    .line 490
    .line 491
    :cond_13
    :goto_12
    const/4 p1, 0x0

    .line 492
    :goto_13
    return-object p1

    .line 493
    :pswitch_6
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    const-class v1, Ljava/lang/Object;

    .line 498
    .line 499
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/n;->b:Lcom/yunpan/appmanage/carsdk/r;

    .line 500
    .line 501
    if-ne v0, v1, :cond_14

    .line 502
    .line 503
    const-string v0, "vehicleSpeed"

    .line 504
    .line 505
    invoke-static {v2, p1, p2, p3, v0}, Lcom/yunpan/appmanage/carsdk/r;->l(Lcom/yunpan/appmanage/carsdk/r;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object p1

    .line 509
    goto :goto_16

    .line 510
    :cond_14
    :try_start_7
    const-string p1, "onChangeEvent"

    .line 511
    .line 512
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 517
    .line 518
    .line 519
    move-result p1

    .line 520
    if-eqz p1, :cond_15

    .line 521
    .line 522
    if-eqz p3, :cond_15

    .line 523
    .line 524
    array-length p1, p3

    .line 525
    if-lez p1, :cond_15

    .line 526
    .line 527
    const/4 p1, 0x0

    .line 528
    aget-object p1, p3, p1

    .line 529
    .line 530
    if-eqz p1, :cond_15

    .line 531
    .line 532
    invoke-static {v2, p1}, Lcom/yunpan/appmanage/carsdk/r;->o(Lcom/yunpan/appmanage/carsdk/r;Ljava/lang/Object;)V

    .line 533
    .line 534
    .line 535
    goto :goto_15

    .line 536
    :catchall_7
    move-exception p1

    .line 537
    goto :goto_14

    .line 538
    :cond_15
    const-string p1, "onErrorEvent"

    .line 539
    .line 540
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object p2

    .line 544
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 545
    .line 546
    .line 547
    move-result p1

    .line 548
    if-eqz p1, :cond_16

    .line 549
    .line 550
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 551
    .line 552
    .line 553
    goto :goto_15

    .line 554
    :goto_14
    const-string p2, "vehicleSpeedCallback"

    .line 555
    .line 556
    invoke-virtual {v2, p2, p1}, Lcom/yunpan/appmanage/carsdk/r;->s(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 557
    .line 558
    .line 559
    :cond_16
    :goto_15
    const/4 p1, 0x0

    .line 560
    :goto_16
    return-object p1

    .line 561
    :pswitch_7
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    const-class v1, Ljava/lang/Object;

    .line 566
    .line 567
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/n;->b:Lcom/yunpan/appmanage/carsdk/r;

    .line 568
    .line 569
    if-ne v0, v1, :cond_17

    .line 570
    .line 571
    const-string v0, "doorLock"

    .line 572
    .line 573
    invoke-static {v2, p1, p2, p3, v0}, Lcom/yunpan/appmanage/carsdk/r;->l(Lcom/yunpan/appmanage/carsdk/r;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    move-result-object p1

    .line 577
    goto :goto_19

    .line 578
    :cond_17
    :try_start_8
    const-string p1, "onChangeEvent"

    .line 579
    .line 580
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 585
    .line 586
    .line 587
    move-result p1

    .line 588
    if-eqz p1, :cond_18

    .line 589
    .line 590
    if-eqz p3, :cond_18

    .line 591
    .line 592
    array-length p1, p3

    .line 593
    if-lez p1, :cond_18

    .line 594
    .line 595
    const/4 p1, 0x0

    .line 596
    aget-object p1, p3, p1

    .line 597
    .line 598
    if-eqz p1, :cond_18

    .line 599
    .line 600
    invoke-static {v2, p1}, Lcom/yunpan/appmanage/carsdk/r;->e(Lcom/yunpan/appmanage/carsdk/r;Ljava/lang/Object;)V

    .line 601
    .line 602
    .line 603
    goto :goto_18

    .line 604
    :catchall_8
    move-exception p1

    .line 605
    goto :goto_17

    .line 606
    :cond_18
    const-string p1, "onErrorEvent"

    .line 607
    .line 608
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object p2

    .line 612
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 613
    .line 614
    .line 615
    move-result p1

    .line 616
    if-eqz p1, :cond_19

    .line 617
    .line 618
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 619
    .line 620
    .line 621
    goto :goto_18

    .line 622
    :goto_17
    const-string p2, "doorLockCallback"

    .line 623
    .line 624
    invoke-virtual {v2, p2, p1}, Lcom/yunpan/appmanage/carsdk/r;->s(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 625
    .line 626
    .line 627
    :cond_19
    :goto_18
    const/4 p1, 0x0

    .line 628
    :goto_19
    return-object p1

    .line 629
    :pswitch_8
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 630
    .line 631
    .line 632
    move-result-object v0

    .line 633
    const-class v1, Ljava/lang/Object;

    .line 634
    .line 635
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/n;->b:Lcom/yunpan/appmanage/carsdk/r;

    .line 636
    .line 637
    if-ne v0, v1, :cond_1a

    .line 638
    .line 639
    const-string v0, "ignitionState"

    .line 640
    .line 641
    invoke-static {v2, p1, p2, p3, v0}, Lcom/yunpan/appmanage/carsdk/r;->l(Lcom/yunpan/appmanage/carsdk/r;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 642
    .line 643
    .line 644
    move-result-object p1

    .line 645
    goto :goto_1c

    .line 646
    :cond_1a
    :try_start_9
    const-string p1, "onChangeEvent"

    .line 647
    .line 648
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object v0

    .line 652
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 653
    .line 654
    .line 655
    move-result p1

    .line 656
    if-eqz p1, :cond_1b

    .line 657
    .line 658
    if-eqz p3, :cond_1b

    .line 659
    .line 660
    array-length p1, p3

    .line 661
    if-lez p1, :cond_1b

    .line 662
    .line 663
    const/4 p1, 0x0

    .line 664
    aget-object p1, p3, p1

    .line 665
    .line 666
    if-eqz p1, :cond_1b

    .line 667
    .line 668
    invoke-static {v2, p1}, Lcom/yunpan/appmanage/carsdk/r;->k(Lcom/yunpan/appmanage/carsdk/r;Ljava/lang/Object;)V

    .line 669
    .line 670
    .line 671
    goto :goto_1b

    .line 672
    :catchall_9
    move-exception p1

    .line 673
    goto :goto_1a

    .line 674
    :cond_1b
    const-string p1, "onErrorEvent"

    .line 675
    .line 676
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object p2

    .line 680
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 681
    .line 682
    .line 683
    move-result p1

    .line 684
    if-eqz p1, :cond_1c

    .line 685
    .line 686
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 687
    .line 688
    .line 689
    goto :goto_1b

    .line 690
    :goto_1a
    const-string p2, "ignitionStateCallback"

    .line 691
    .line 692
    invoke-virtual {v2, p2, p1}, Lcom/yunpan/appmanage/carsdk/r;->s(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 693
    .line 694
    .line 695
    :cond_1c
    :goto_1b
    const/4 p1, 0x0

    .line 696
    :goto_1c
    return-object p1

    .line 697
    :pswitch_9
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 698
    .line 699
    .line 700
    move-result-object v0

    .line 701
    const-class v1, Ljava/lang/Object;

    .line 702
    .line 703
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/n;->b:Lcom/yunpan/appmanage/carsdk/r;

    .line 704
    .line 705
    if-ne v0, v1, :cond_1d

    .line 706
    .line 707
    const-string v0, "turnSignal"

    .line 708
    .line 709
    invoke-static {v2, p1, p2, p3, v0}, Lcom/yunpan/appmanage/carsdk/r;->l(Lcom/yunpan/appmanage/carsdk/r;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 710
    .line 711
    .line 712
    move-result-object p1

    .line 713
    goto :goto_1f

    .line 714
    :cond_1d
    :try_start_a
    const-string p1, "onChangeEvent"

    .line 715
    .line 716
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 717
    .line 718
    .line 719
    move-result-object v0

    .line 720
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 721
    .line 722
    .line 723
    move-result p1

    .line 724
    if-eqz p1, :cond_1e

    .line 725
    .line 726
    if-eqz p3, :cond_1e

    .line 727
    .line 728
    array-length p1, p3

    .line 729
    if-lez p1, :cond_1e

    .line 730
    .line 731
    const/4 p1, 0x0

    .line 732
    aget-object p1, p3, p1

    .line 733
    .line 734
    if-eqz p1, :cond_1e

    .line 735
    .line 736
    invoke-static {v2, p1}, Lcom/yunpan/appmanage/carsdk/r;->n(Lcom/yunpan/appmanage/carsdk/r;Ljava/lang/Object;)V

    .line 737
    .line 738
    .line 739
    goto :goto_1e

    .line 740
    :catchall_a
    move-exception p1

    .line 741
    goto :goto_1d

    .line 742
    :cond_1e
    const-string p1, "onErrorEvent"

    .line 743
    .line 744
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 745
    .line 746
    .line 747
    move-result-object p2

    .line 748
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 749
    .line 750
    .line 751
    move-result p1

    .line 752
    if-eqz p1, :cond_1f

    .line 753
    .line 754
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 755
    .line 756
    .line 757
    goto :goto_1e

    .line 758
    :goto_1d
    const-string p2, "turnSignalCallback"

    .line 759
    .line 760
    invoke-virtual {v2, p2, p1}, Lcom/yunpan/appmanage/carsdk/r;->s(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 761
    .line 762
    .line 763
    :cond_1f
    :goto_1e
    const/4 p1, 0x0

    .line 764
    :goto_1f
    return-object p1

    .line 765
    :pswitch_a
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 766
    .line 767
    .line 768
    move-result-object v0

    .line 769
    const-class v1, Ljava/lang/Object;

    .line 770
    .line 771
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/n;->b:Lcom/yunpan/appmanage/carsdk/r;

    .line 772
    .line 773
    if-ne v0, v1, :cond_20

    .line 774
    .line 775
    const-string v0, "headLamp"

    .line 776
    .line 777
    invoke-static {v2, p1, p2, p3, v0}, Lcom/yunpan/appmanage/carsdk/r;->l(Lcom/yunpan/appmanage/carsdk/r;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 778
    .line 779
    .line 780
    move-result-object p1

    .line 781
    goto :goto_22

    .line 782
    :cond_20
    :try_start_b
    const-string p1, "onChangeEvent"

    .line 783
    .line 784
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 785
    .line 786
    .line 787
    move-result-object v0

    .line 788
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 789
    .line 790
    .line 791
    move-result p1

    .line 792
    if-eqz p1, :cond_21

    .line 793
    .line 794
    if-eqz p3, :cond_21

    .line 795
    .line 796
    array-length p1, p3

    .line 797
    if-lez p1, :cond_21

    .line 798
    .line 799
    const/4 p1, 0x0

    .line 800
    aget-object p1, p3, p1

    .line 801
    .line 802
    if-eqz p1, :cond_21

    .line 803
    .line 804
    invoke-static {v2, p1}, Lcom/yunpan/appmanage/carsdk/r;->j(Lcom/yunpan/appmanage/carsdk/r;Ljava/lang/Object;)V

    .line 805
    .line 806
    .line 807
    goto :goto_21

    .line 808
    :catchall_b
    move-exception p1

    .line 809
    goto :goto_20

    .line 810
    :cond_21
    const-string p1, "onErrorEvent"

    .line 811
    .line 812
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object p2

    .line 816
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 817
    .line 818
    .line 819
    move-result p1

    .line 820
    if-eqz p1, :cond_22

    .line 821
    .line 822
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 823
    .line 824
    .line 825
    goto :goto_21

    .line 826
    :goto_20
    const-string p2, "headLampCallback"

    .line 827
    .line 828
    invoke-virtual {v2, p2, p1}, Lcom/yunpan/appmanage/carsdk/r;->s(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 829
    .line 830
    .line 831
    :cond_22
    :goto_21
    const/4 p1, 0x0

    .line 832
    :goto_22
    return-object p1

    .line 833
    :pswitch_b
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 834
    .line 835
    .line 836
    move-result-object v0

    .line 837
    const-class v1, Ljava/lang/Object;

    .line 838
    .line 839
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/n;->b:Lcom/yunpan/appmanage/carsdk/r;

    .line 840
    .line 841
    if-ne v0, v1, :cond_23

    .line 842
    .line 843
    const-string v0, "trunk"

    .line 844
    .line 845
    invoke-static {v2, p1, p2, p3, v0}, Lcom/yunpan/appmanage/carsdk/r;->l(Lcom/yunpan/appmanage/carsdk/r;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 846
    .line 847
    .line 848
    move-result-object p1

    .line 849
    goto :goto_25

    .line 850
    :cond_23
    :try_start_c
    const-string p1, "onChangeEvent"

    .line 851
    .line 852
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 853
    .line 854
    .line 855
    move-result-object v0

    .line 856
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 857
    .line 858
    .line 859
    move-result p1

    .line 860
    if-eqz p1, :cond_24

    .line 861
    .line 862
    if-eqz p3, :cond_24

    .line 863
    .line 864
    array-length p1, p3

    .line 865
    if-lez p1, :cond_24

    .line 866
    .line 867
    const/4 p1, 0x0

    .line 868
    aget-object p1, p3, p1

    .line 869
    .line 870
    if-eqz p1, :cond_24

    .line 871
    .line 872
    invoke-static {v2, p1}, Lcom/yunpan/appmanage/carsdk/r;->m(Lcom/yunpan/appmanage/carsdk/r;Ljava/lang/Object;)V

    .line 873
    .line 874
    .line 875
    goto :goto_24

    .line 876
    :catchall_c
    move-exception p1

    .line 877
    goto :goto_23

    .line 878
    :cond_24
    const-string p1, "onErrorEvent"

    .line 879
    .line 880
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 881
    .line 882
    .line 883
    move-result-object p2

    .line 884
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 885
    .line 886
    .line 887
    move-result p1

    .line 888
    if-eqz p1, :cond_25

    .line 889
    .line 890
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    .line 891
    .line 892
    .line 893
    goto :goto_24

    .line 894
    :goto_23
    const-string p2, "trunkCallback"

    .line 895
    .line 896
    invoke-virtual {v2, p2, p1}, Lcom/yunpan/appmanage/carsdk/r;->s(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 897
    .line 898
    .line 899
    :cond_25
    :goto_24
    const/4 p1, 0x0

    .line 900
    :goto_25
    return-object p1

    .line 901
    :pswitch_data_0
    .packed-switch 0x0
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
