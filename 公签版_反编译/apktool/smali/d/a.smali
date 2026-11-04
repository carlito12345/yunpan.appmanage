.class public abstract Ld/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Lg/h;

.field public static final b:Lg/h;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    const/16 v2, 0x10

    .line 4
    .line 5
    const/16 v3, 0x9

    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x1

    .line 9
    const-string v6, "[B"

    .line 10
    .line 11
    const-string v7, "jar"

    .line 12
    .line 13
    invoke-static {v7}, Lg/c;->a(Ljava/lang/String;)Lg/c;

    .line 14
    .line 15
    .line 16
    const/16 v7, 0x12

    .line 17
    .line 18
    new-array v8, v7, [Lg/h;

    .line 19
    .line 20
    sput-object v8, Ld/a;->a:[Lg/h;

    .line 21
    .line 22
    const/4 v8, 0x1

    .line 23
    :goto_0
    sget-object v15, Ld/a;->a:[Lg/h;

    .line 24
    .line 25
    array-length v9, v15

    .line 26
    sub-int/2addr v9, v4

    .line 27
    if-ge v8, v9, :cond_0

    .line 28
    .line 29
    const/16 v11, 0x348

    .line 30
    .line 31
    const v12, 0x1bb8d

    .line 32
    .line 33
    .line 34
    const/4 v9, 0x1

    .line 35
    const/4 v10, 0x2

    .line 36
    const/4 v13, 0x1

    .line 37
    const/16 v14, 0x9

    .line 38
    .line 39
    move-object v1, v15

    .line 40
    move v15, v8

    .line 41
    filled-new-array/range {v9 .. v15}, [I

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    invoke-static {v9}, Lg/h;->d([I)Lg/h;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    aput-object v9, v1, v8

    .line 50
    .line 51
    add-int/2addr v8, v5

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move-object v1, v15

    .line 54
    array-length v8, v1

    .line 55
    sub-int/2addr v8, v4

    .line 56
    new-array v9, v3, [I

    .line 57
    .line 58
    fill-array-data v9, :array_0

    .line 59
    .line 60
    .line 61
    invoke-static {v9}, Lg/h;->d([I)Lg/h;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    aput-object v9, v1, v8

    .line 66
    .line 67
    array-length v8, v1

    .line 68
    sub-int/2addr v8, v5

    .line 69
    new-array v9, v3, [I

    .line 70
    .line 71
    fill-array-data v9, :array_1

    .line 72
    .line 73
    .line 74
    invoke-static {v9}, Lg/h;->d([I)Lg/h;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    aput-object v9, v1, v8

    .line 79
    .line 80
    aget-object v8, v1, v5

    .line 81
    .line 82
    sput-object v8, Ld/a;->b:Lg/h;

    .line 83
    .line 84
    aget-object v8, v1, v4

    .line 85
    .line 86
    const/4 v8, 0x3

    .line 87
    aget-object v9, v1, v8

    .line 88
    .line 89
    const/4 v9, 0x4

    .line 90
    aget-object v10, v1, v9

    .line 91
    .line 92
    const/4 v10, 0x5

    .line 93
    aget-object v11, v1, v10

    .line 94
    .line 95
    const/4 v11, 0x6

    .line 96
    aget-object v12, v1, v11

    .line 97
    .line 98
    const/4 v12, 0x7

    .line 99
    aget-object v13, v1, v12

    .line 100
    .line 101
    const/16 v13, 0x8

    .line 102
    .line 103
    aget-object v14, v1, v13

    .line 104
    .line 105
    aget-object v14, v1, v3

    .line 106
    .line 107
    const/16 v14, 0xa

    .line 108
    .line 109
    aget-object v15, v1, v14

    .line 110
    .line 111
    aget-object v15, v1, v0

    .line 112
    .line 113
    const/16 v15, 0xf

    .line 114
    .line 115
    aget-object v16, v1, v15

    .line 116
    .line 117
    aget-object v16, v1, v2

    .line 118
    .line 119
    const/16 v16, 0x11

    .line 120
    .line 121
    aget-object v17, v1, v16

    .line 122
    .line 123
    new-instance v2, Ljava/util/Hashtable;

    .line 124
    .line 125
    invoke-direct {v2, v7}, Ljava/util/Hashtable;-><init>(I)V

    .line 126
    .line 127
    .line 128
    const-string v7, "emailaddress"

    .line 129
    .line 130
    aget-object v15, v1, v5

    .line 131
    .line 132
    invoke-virtual {v2, v7, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    const-string v7, "unstructuredname"

    .line 136
    .line 137
    aget-object v15, v1, v4

    .line 138
    .line 139
    invoke-virtual {v2, v7, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    const-string v7, "contenttype"

    .line 143
    .line 144
    aget-object v15, v1, v8

    .line 145
    .line 146
    invoke-virtual {v2, v7, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    const-string v7, "messagedigest"

    .line 150
    .line 151
    aget-object v15, v1, v9

    .line 152
    .line 153
    invoke-virtual {v2, v7, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    const-string v7, "signingtime"

    .line 157
    .line 158
    aget-object v15, v1, v10

    .line 159
    .line 160
    invoke-virtual {v2, v7, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    const-string v7, "countersignature"

    .line 164
    .line 165
    aget-object v15, v1, v11

    .line 166
    .line 167
    invoke-virtual {v2, v7, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    const-string v7, "challengepassword"

    .line 171
    .line 172
    aget-object v15, v1, v12

    .line 173
    .line 174
    invoke-virtual {v2, v7, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    const-string v7, "unstructuredaddress"

    .line 178
    .line 179
    aget-object v15, v1, v13

    .line 180
    .line 181
    invoke-virtual {v2, v7, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    const-string v7, "extendedcertificateattributes"

    .line 185
    .line 186
    aget-object v15, v1, v3

    .line 187
    .line 188
    invoke-virtual {v2, v7, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    const-string v7, "issuerandserialnumber"

    .line 192
    .line 193
    aget-object v15, v1, v14

    .line 194
    .line 195
    invoke-virtual {v2, v7, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    const/16 v7, 0xb

    .line 199
    .line 200
    aget-object v15, v1, v7

    .line 201
    .line 202
    const-string v7, "rsaproprietary"

    .line 203
    .line 204
    invoke-virtual {v2, v7, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    const/16 v15, 0xc

    .line 208
    .line 209
    aget-object v14, v1, v15

    .line 210
    .line 211
    invoke-virtual {v2, v7, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    const/16 v7, 0xd

    .line 215
    .line 216
    aget-object v14, v1, v7

    .line 217
    .line 218
    const-string v15, "signingdescription"

    .line 219
    .line 220
    invoke-virtual {v2, v15, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    const-string v14, "extensionrequest"

    .line 224
    .line 225
    aget-object v15, v1, v0

    .line 226
    .line 227
    invoke-virtual {v2, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    const-string v14, "smimecapability"

    .line 231
    .line 232
    const/16 v15, 0xf

    .line 233
    .line 234
    aget-object v0, v1, v15

    .line 235
    .line 236
    invoke-virtual {v2, v14, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    const-string v0, "signingcertificate"

    .line 240
    .line 241
    const/16 v14, 0x10

    .line 242
    .line 243
    aget-object v15, v1, v14

    .line 244
    .line 245
    invoke-virtual {v2, v0, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    const-string v0, "signaturetimestamptoken"

    .line 249
    .line 250
    aget-object v15, v1, v16

    .line 251
    .line 252
    invoke-virtual {v2, v0, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    new-instance v0, Ljava/util/Hashtable;

    .line 256
    .line 257
    invoke-direct {v0, v14}, Ljava/util/Hashtable;-><init>(I)V

    .line 258
    .line 259
    .line 260
    aget-object v2, v1, v5

    .line 261
    .line 262
    const-string v5, "EmailAddress"

    .line 263
    .line 264
    invoke-virtual {v0, v2, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    aget-object v2, v1, v4

    .line 268
    .line 269
    const-string v4, "UnstructuredName"

    .line 270
    .line 271
    invoke-virtual {v0, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    aget-object v2, v1, v8

    .line 275
    .line 276
    const-string v4, "ContentType"

    .line 277
    .line 278
    invoke-virtual {v0, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    aget-object v2, v1, v9

    .line 282
    .line 283
    const-string v4, "MessageDigest"

    .line 284
    .line 285
    invoke-virtual {v0, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    aget-object v2, v1, v10

    .line 289
    .line 290
    const-string v4, "SigningTime"

    .line 291
    .line 292
    invoke-virtual {v0, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    aget-object v2, v1, v11

    .line 296
    .line 297
    const-string v4, "Countersignature"

    .line 298
    .line 299
    invoke-virtual {v0, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    aget-object v2, v1, v12

    .line 303
    .line 304
    const-string v4, "ChallengePassword"

    .line 305
    .line 306
    invoke-virtual {v0, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    aget-object v2, v1, v13

    .line 310
    .line 311
    const-string v4, "UnstructuredAddress"

    .line 312
    .line 313
    invoke-virtual {v0, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    aget-object v2, v1, v3

    .line 317
    .line 318
    const-string v3, "ExtendedCertificateAttributes"

    .line 319
    .line 320
    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    const/16 v2, 0xa

    .line 324
    .line 325
    aget-object v2, v1, v2

    .line 326
    .line 327
    const-string v3, "IssuerAndSerialNumber"

    .line 328
    .line 329
    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    const/16 v2, 0xb

    .line 333
    .line 334
    aget-object v2, v1, v2

    .line 335
    .line 336
    const-string v3, "RSAProprietary"

    .line 337
    .line 338
    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    const/16 v2, 0xc

    .line 342
    .line 343
    aget-object v2, v1, v2

    .line 344
    .line 345
    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    aget-object v2, v1, v7

    .line 349
    .line 350
    const-string v3, "SMIMESigningDesc"

    .line 351
    .line 352
    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    const/16 v2, 0xe

    .line 356
    .line 357
    aget-object v2, v1, v2

    .line 358
    .line 359
    const-string v3, "ExtensionRequest"

    .line 360
    .line 361
    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    const/16 v2, 0xf

    .line 365
    .line 366
    aget-object v2, v1, v2

    .line 367
    .line 368
    const-string v3, "SMIMECapability"

    .line 369
    .line 370
    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    const/16 v2, 0x10

    .line 374
    .line 375
    aget-object v2, v1, v2

    .line 376
    .line 377
    const-string v3, "SigningCertificate"

    .line 378
    .line 379
    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    aget-object v1, v1, v16

    .line 383
    .line 384
    const-string v2, "SignatureTimestampToken"

    .line 385
    .line 386
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    new-instance v0, Ljava/lang/Byte;

    .line 390
    .line 391
    const/16 v1, 0x16

    .line 392
    .line 393
    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    .line 394
    .line 395
    .line 396
    new-instance v0, Ljava/lang/Byte;

    .line 397
    .line 398
    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    .line 399
    .line 400
    .line 401
    new-instance v0, Ljava/lang/Byte;

    .line 402
    .line 403
    invoke-direct {v0, v11}, Ljava/lang/Byte;-><init>(B)V

    .line 404
    .line 405
    .line 406
    new-instance v0, Ljava/lang/Byte;

    .line 407
    .line 408
    invoke-direct {v0, v9}, Ljava/lang/Byte;-><init>(B)V

    .line 409
    .line 410
    .line 411
    new-instance v0, Ljava/lang/Byte;

    .line 412
    .line 413
    const/16 v1, 0x17

    .line 414
    .line 415
    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    .line 416
    .line 417
    .line 418
    new-instance v0, Ljava/lang/Byte;

    .line 419
    .line 420
    const/16 v1, 0x30

    .line 421
    .line 422
    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    .line 423
    .line 424
    .line 425
    new-instance v0, Ljava/lang/Byte;

    .line 426
    .line 427
    const/16 v2, 0x13

    .line 428
    .line 429
    invoke-direct {v0, v2}, Ljava/lang/Byte;-><init>(B)V

    .line 430
    .line 431
    .line 432
    new-instance v0, Ljava/lang/Byte;

    .line 433
    .line 434
    const/16 v3, 0x14

    .line 435
    .line 436
    invoke-direct {v0, v3}, Ljava/lang/Byte;-><init>(B)V

    .line 437
    .line 438
    .line 439
    new-instance v0, Ljava/lang/Byte;

    .line 440
    .line 441
    invoke-direct {v0, v2}, Ljava/lang/Byte;-><init>(B)V

    .line 442
    .line 443
    .line 444
    new-instance v0, Ljava/lang/Byte;

    .line 445
    .line 446
    invoke-direct {v0, v3}, Ljava/lang/Byte;-><init>(B)V

    .line 447
    .line 448
    .line 449
    new-instance v0, Ljava/lang/Byte;

    .line 450
    .line 451
    const/16 v2, 0x31

    .line 452
    .line 453
    invoke-direct {v0, v2}, Ljava/lang/Byte;-><init>(B)V

    .line 454
    .line 455
    .line 456
    new-instance v0, Ljava/lang/Byte;

    .line 457
    .line 458
    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    .line 459
    .line 460
    .line 461
    new-instance v0, Ljava/lang/Byte;

    .line 462
    .line 463
    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    .line 464
    .line 465
    .line 466
    new-instance v0, Ljava/lang/Byte;

    .line 467
    .line 468
    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    .line 469
    .line 470
    .line 471
    new-instance v0, Ljava/lang/Byte;

    .line 472
    .line 473
    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    .line 474
    .line 475
    .line 476
    new-instance v0, Ljava/lang/Byte;

    .line 477
    .line 478
    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    .line 479
    .line 480
    .line 481
    :try_start_0
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 482
    .line 483
    .line 484
    const-string v0, "java.util.Date"

    .line 485
    .line 486
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 487
    .line 488
    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    .line 490
    .line 491
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 492
    .line 493
    .line 494
    const-string v1, "[L"

    .line 495
    .line 496
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    const-class v1, Ld/b;

    .line 500
    .line 501
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    const-string v1, ";"

    .line 509
    .line 510
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 518
    .line 519
    .line 520
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    .line 522
    .line 523
    return-void

    .line 524
    :catch_0
    move-exception v0

    .line 525
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    .line 526
    .line 527
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    goto :goto_2

    .line 535
    :goto_1
    throw v1

    .line 536
    :goto_2
    goto :goto_1

    .line 537
    :array_0
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x9
        0x10
        0x2
        0xc
    .end array-data

    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    :array_1
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x9
        0x10
        0x2
        0xe
    .end array-data
.end method
