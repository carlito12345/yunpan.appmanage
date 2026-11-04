.class public final Lma/j;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ll5/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ll5/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lma/j;->a:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lma/j;->b:Ll5/y;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/16 v4, 0x539

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v6, "android.content.pm.extra.STATUS"

    .line 12
    .line 13
    const/16 v7, -0x3e7

    .line 14
    .line 15
    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result v8

    .line 19
    const-string v9, "android.content.pm.extra.SESSION_ID"

    .line 20
    .line 21
    const/4 v10, -0x1

    .line 22
    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 23
    .line 24
    .line 25
    move-result v9

    .line 26
    iget-object v11, v0, Lma/j;->b:Ll5/y;

    .line 27
    .line 28
    const-string v12, "android.content.pm.extra.PACKAGE_NAME"

    .line 29
    .line 30
    if-eq v8, v10, :cond_8

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    if-eqz v8, :cond_7

    .line 34
    .line 35
    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    const-string v7, "android.content.pm.extra.OTHER_PACKAGE_NAME"

    .line 40
    .line 41
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    const-string v8, "android.content.pm.extra.STATUS_MESSAGE"

    .line 46
    .line 47
    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    const-string v12, "android.content.pm.extra.LEGACY_STATUS"

    .line 52
    .line 53
    invoke-virtual {v2, v12, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 54
    .line 55
    .line 56
    move-result v12

    .line 57
    const/16 v13, -0x142

    .line 58
    .line 59
    if-ne v6, v13, :cond_0

    .line 60
    .line 61
    const-string v3, "\u8bf7\u66f4\u6362\u5b89\u88c5\u5668\u6765\u5b89\u88c5"

    .line 62
    .line 63
    goto/16 :goto_7

    .line 64
    .line 65
    :cond_0
    const/16 v14, 0x32

    .line 66
    .line 67
    invoke-static {v14}, Ld0/f;->d(I)[I

    .line 68
    .line 69
    .line 70
    move-result-object v14

    .line 71
    array-length v15, v14

    .line 72
    const/4 v4, 0x0

    .line 73
    :goto_0
    if-ge v4, v15, :cond_3

    .line 74
    .line 75
    aget v16, v14, v4

    .line 76
    .line 77
    packed-switch v16, :pswitch_data_0

    .line 78
    .line 79
    .line 80
    throw v5

    .line 81
    :pswitch_0
    const/16 v17, -0x79

    .line 82
    .line 83
    const/16 v10, -0x79

    .line 84
    .line 85
    goto/16 :goto_1

    .line 86
    .line 87
    :pswitch_1
    const/16 v17, -0x78

    .line 88
    .line 89
    const/16 v10, -0x78

    .line 90
    .line 91
    goto/16 :goto_1

    .line 92
    .line 93
    :pswitch_2
    const/16 v17, -0x77

    .line 94
    .line 95
    const/16 v10, -0x77

    .line 96
    .line 97
    goto/16 :goto_1

    .line 98
    .line 99
    :pswitch_3
    const/16 v17, -0x76

    .line 100
    .line 101
    const/16 v10, -0x76

    .line 102
    .line 103
    goto/16 :goto_1

    .line 104
    .line 105
    :pswitch_4
    const/16 v17, -0x75

    .line 106
    .line 107
    const/16 v10, -0x75

    .line 108
    .line 109
    goto/16 :goto_1

    .line 110
    .line 111
    :pswitch_5
    const/16 v17, -0x74

    .line 112
    .line 113
    const/16 v10, -0x74

    .line 114
    .line 115
    goto/16 :goto_1

    .line 116
    .line 117
    :pswitch_6
    const/16 v17, -0x73

    .line 118
    .line 119
    const/16 v10, -0x73

    .line 120
    .line 121
    goto/16 :goto_1

    .line 122
    .line 123
    :pswitch_7
    const/16 v17, -0x71

    .line 124
    .line 125
    const/16 v10, -0x71

    .line 126
    .line 127
    goto/16 :goto_1

    .line 128
    .line 129
    :pswitch_8
    const/16 v17, -0x70

    .line 130
    .line 131
    const/16 v10, -0x70

    .line 132
    .line 133
    goto/16 :goto_1

    .line 134
    .line 135
    :pswitch_9
    const/16 v17, -0x6f

    .line 136
    .line 137
    const/16 v10, -0x6f

    .line 138
    .line 139
    goto/16 :goto_1

    .line 140
    .line 141
    :pswitch_a
    const/16 v17, -0x6e

    .line 142
    .line 143
    const/16 v10, -0x6e

    .line 144
    .line 145
    goto/16 :goto_1

    .line 146
    .line 147
    :pswitch_b
    const/16 v17, -0x6d

    .line 148
    .line 149
    const/16 v10, -0x6d

    .line 150
    .line 151
    goto/16 :goto_1

    .line 152
    .line 153
    :pswitch_c
    const/16 v17, -0x6c

    .line 154
    .line 155
    const/16 v10, -0x6c

    .line 156
    .line 157
    goto/16 :goto_1

    .line 158
    .line 159
    :pswitch_d
    const/16 v17, -0x6b

    .line 160
    .line 161
    const/16 v10, -0x6b

    .line 162
    .line 163
    goto/16 :goto_1

    .line 164
    .line 165
    :pswitch_e
    const/16 v17, -0x6a

    .line 166
    .line 167
    const/16 v10, -0x6a

    .line 168
    .line 169
    goto/16 :goto_1

    .line 170
    .line 171
    :pswitch_f
    const/16 v17, -0x69

    .line 172
    .line 173
    const/16 v10, -0x69

    .line 174
    .line 175
    goto/16 :goto_1

    .line 176
    .line 177
    :pswitch_10
    const/16 v17, -0x68

    .line 178
    .line 179
    const/16 v10, -0x68

    .line 180
    .line 181
    goto/16 :goto_1

    .line 182
    .line 183
    :pswitch_11
    const/16 v17, -0x67

    .line 184
    .line 185
    const/16 v10, -0x67

    .line 186
    .line 187
    goto/16 :goto_1

    .line 188
    .line 189
    :pswitch_12
    const/16 v17, -0x66

    .line 190
    .line 191
    const/16 v10, -0x66

    .line 192
    .line 193
    goto/16 :goto_1

    .line 194
    .line 195
    :pswitch_13
    const/16 v17, -0x65

    .line 196
    .line 197
    const/16 v10, -0x65

    .line 198
    .line 199
    goto/16 :goto_1

    .line 200
    .line 201
    :pswitch_14
    const/16 v17, -0x64

    .line 202
    .line 203
    const/16 v10, -0x64

    .line 204
    .line 205
    goto/16 :goto_1

    .line 206
    .line 207
    :pswitch_15
    const/16 v17, -0x1c

    .line 208
    .line 209
    const/16 v10, -0x1c

    .line 210
    .line 211
    goto/16 :goto_1

    .line 212
    .line 213
    :pswitch_16
    const/16 v17, -0x1b

    .line 214
    .line 215
    const/16 v10, -0x1b

    .line 216
    .line 217
    goto/16 :goto_1

    .line 218
    .line 219
    :pswitch_17
    const/16 v17, -0x1a

    .line 220
    .line 221
    const/16 v10, -0x1a

    .line 222
    .line 223
    goto/16 :goto_1

    .line 224
    .line 225
    :pswitch_18
    const/16 v17, -0x19

    .line 226
    .line 227
    const/16 v10, -0x19

    .line 228
    .line 229
    goto/16 :goto_1

    .line 230
    .line 231
    :pswitch_19
    const/16 v17, -0x18

    .line 232
    .line 233
    const/16 v10, -0x18

    .line 234
    .line 235
    goto/16 :goto_1

    .line 236
    .line 237
    :pswitch_1a
    const/16 v17, -0x17

    .line 238
    .line 239
    const/16 v10, -0x17

    .line 240
    .line 241
    goto/16 :goto_1

    .line 242
    .line 243
    :pswitch_1b
    const/16 v17, -0x16

    .line 244
    .line 245
    const/16 v10, -0x16

    .line 246
    .line 247
    goto/16 :goto_1

    .line 248
    .line 249
    :pswitch_1c
    const/16 v17, -0x15

    .line 250
    .line 251
    const/16 v10, -0x15

    .line 252
    .line 253
    goto/16 :goto_1

    .line 254
    .line 255
    :pswitch_1d
    const/16 v17, -0x14

    .line 256
    .line 257
    const/16 v10, -0x14

    .line 258
    .line 259
    goto :goto_1

    .line 260
    :pswitch_1e
    const/16 v17, -0x13

    .line 261
    .line 262
    const/16 v10, -0x13

    .line 263
    .line 264
    goto :goto_1

    .line 265
    :pswitch_1f
    const/16 v17, -0x12

    .line 266
    .line 267
    const/16 v10, -0x12

    .line 268
    .line 269
    goto :goto_1

    .line 270
    :pswitch_20
    const/16 v17, -0x11

    .line 271
    .line 272
    const/16 v10, -0x11

    .line 273
    .line 274
    goto :goto_1

    .line 275
    :pswitch_21
    const/16 v17, -0x10

    .line 276
    .line 277
    const/16 v10, -0x10

    .line 278
    .line 279
    goto :goto_1

    .line 280
    :pswitch_22
    const/16 v17, -0xf

    .line 281
    .line 282
    const/16 v10, -0xf

    .line 283
    .line 284
    goto :goto_1

    .line 285
    :pswitch_23
    const/16 v17, -0xe

    .line 286
    .line 287
    const/16 v10, -0xe

    .line 288
    .line 289
    goto :goto_1

    .line 290
    :pswitch_24
    const/16 v17, -0xd

    .line 291
    .line 292
    const/16 v10, -0xd

    .line 293
    .line 294
    goto :goto_1

    .line 295
    :pswitch_25
    const/16 v17, -0xc

    .line 296
    .line 297
    const/16 v10, -0xc

    .line 298
    .line 299
    goto :goto_1

    .line 300
    :pswitch_26
    const/16 v17, -0xb

    .line 301
    .line 302
    const/16 v10, -0xb

    .line 303
    .line 304
    goto :goto_1

    .line 305
    :pswitch_27
    const/16 v17, -0xa

    .line 306
    .line 307
    const/16 v10, -0xa

    .line 308
    .line 309
    goto :goto_1

    .line 310
    :pswitch_28
    const/16 v17, -0x9

    .line 311
    .line 312
    const/16 v10, -0x9

    .line 313
    .line 314
    goto :goto_1

    .line 315
    :pswitch_29
    const/16 v17, -0x8

    .line 316
    .line 317
    const/4 v10, -0x8

    .line 318
    goto :goto_1

    .line 319
    :pswitch_2a
    const/16 v17, -0x7

    .line 320
    .line 321
    const/4 v10, -0x7

    .line 322
    goto :goto_1

    .line 323
    :pswitch_2b
    const/16 v17, -0x6

    .line 324
    .line 325
    const/4 v10, -0x6

    .line 326
    goto :goto_1

    .line 327
    :pswitch_2c
    const/16 v17, -0x5

    .line 328
    .line 329
    const/4 v10, -0x5

    .line 330
    goto :goto_1

    .line 331
    :pswitch_2d
    const/16 v17, -0x4

    .line 332
    .line 333
    const/4 v10, -0x4

    .line 334
    goto :goto_1

    .line 335
    :pswitch_2e
    const/16 v17, -0x3

    .line 336
    .line 337
    const/4 v10, -0x3

    .line 338
    goto :goto_1

    .line 339
    :pswitch_2f
    const/16 v17, -0x2

    .line 340
    .line 341
    const/4 v10, -0x2

    .line 342
    goto :goto_1

    .line 343
    :pswitch_30
    const/16 v10, 0x539

    .line 344
    .line 345
    :goto_1
    :pswitch_31
    if-eq v10, v12, :cond_2

    .line 346
    .line 347
    if-eqz v9, :cond_1

    .line 348
    .line 349
    packed-switch v16, :pswitch_data_1

    .line 350
    .line 351
    .line 352
    throw v5

    .line 353
    :pswitch_32
    const-string v10, "INSTALL_FAILED_WRONG_INSTALLED_VERSION"

    .line 354
    .line 355
    goto/16 :goto_2

    .line 356
    .line 357
    :pswitch_33
    const-string v10, "INSTALL_FAILED_MULTIPACKAGE_INCONSISTENCY"

    .line 358
    .line 359
    goto/16 :goto_2

    .line 360
    .line 361
    :pswitch_34
    const-string v10, "INSTALL_FAILED_OTHER_STAGED_SESSION_IN_PROGRESS"

    .line 362
    .line 363
    goto/16 :goto_2

    .line 364
    .line 365
    :pswitch_35
    const-string v10, "INSTALL_FAILED_BAD_SIGNATURE"

    .line 366
    .line 367
    goto/16 :goto_2

    .line 368
    .line 369
    :pswitch_36
    const-string v10, "INSTALL_FAILED_BAD_DEX_METADATA"

    .line 370
    .line 371
    goto/16 :goto_2

    .line 372
    .line 373
    :pswitch_37
    const-string v10, "INSTALL_FAILED_INSTANT_APP_INVALID"

    .line 374
    .line 375
    goto/16 :goto_2

    .line 376
    .line 377
    :pswitch_38
    const-string v10, "INSTALL_FAILED_ABORTED"

    .line 378
    .line 379
    goto/16 :goto_2

    .line 380
    .line 381
    :pswitch_39
    const-string v10, "INSTALL_FAILED_NO_MATCHING_ABIS"

    .line 382
    .line 383
    goto/16 :goto_2

    .line 384
    .line 385
    :pswitch_3a
    const-string v10, "INSTALL_FAILED_DUPLICATE_PERMISSION"

    .line 386
    .line 387
    goto/16 :goto_2

    .line 388
    .line 389
    :pswitch_3b
    const-string v10, "INSTALL_FAILED_USER_RESTRICTED"

    .line 390
    .line 391
    goto/16 :goto_2

    .line 392
    .line 393
    :pswitch_3c
    const-string v10, "INSTALL_FAILED_INTERNAL_ERROR"

    .line 394
    .line 395
    goto/16 :goto_2

    .line 396
    .line 397
    :pswitch_3d
    const-string v10, "INSTALL_PARSE_FAILED_MANIFEST_EMPTY"

    .line 398
    .line 399
    goto/16 :goto_2

    .line 400
    .line 401
    :pswitch_3e
    const-string v10, "INSTALL_PARSE_FAILED_MANIFEST_MALFORMED"

    .line 402
    .line 403
    goto/16 :goto_2

    .line 404
    .line 405
    :pswitch_3f
    const-string v10, "INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID"

    .line 406
    .line 407
    goto/16 :goto_2

    .line 408
    .line 409
    :pswitch_40
    const-string v10, "INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME"

    .line 410
    .line 411
    goto/16 :goto_2

    .line 412
    .line 413
    :pswitch_41
    const-string v10, "INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING"

    .line 414
    .line 415
    goto/16 :goto_2

    .line 416
    .line 417
    :pswitch_42
    const-string v10, "INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES"

    .line 418
    .line 419
    goto/16 :goto_2

    .line 420
    .line 421
    :pswitch_43
    const-string v10, "INSTALL_PARSE_FAILED_NO_CERTIFICATES"

    .line 422
    .line 423
    goto/16 :goto_2

    .line 424
    .line 425
    :pswitch_44
    const-string v10, "INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION"

    .line 426
    .line 427
    goto/16 :goto_2

    .line 428
    .line 429
    :pswitch_45
    const-string v10, "INSTALL_PARSE_FAILED_BAD_MANIFEST"

    .line 430
    .line 431
    goto/16 :goto_2

    .line 432
    .line 433
    :pswitch_46
    const-string v10, "INSTALL_PARSE_FAILED_NOT_APK"

    .line 434
    .line 435
    goto/16 :goto_2

    .line 436
    .line 437
    :pswitch_47
    const-string v10, "INSTALL_FAILED_MISSING_SPLIT"

    .line 438
    .line 439
    goto/16 :goto_2

    .line 440
    .line 441
    :pswitch_48
    const-string v10, "INSTALL_FAILED_SANDBOX_VERSION_DOWNGRADE"

    .line 442
    .line 443
    goto/16 :goto_2

    .line 444
    .line 445
    :pswitch_49
    const-string v10, "INSTALL_FAILED_PERMISSION_MODEL_DOWNGRADE"

    .line 446
    .line 447
    goto/16 :goto_2

    .line 448
    .line 449
    :pswitch_4a
    const-string v10, "INSTALL_FAILED_VERSION_DOWNGRADE"

    .line 450
    .line 451
    goto :goto_2

    .line 452
    :pswitch_4b
    const-string v10, "INSTALL_FAILED_UID_CHANGED"

    .line 453
    .line 454
    goto :goto_2

    .line 455
    :pswitch_4c
    const-string v10, "INSTALL_FAILED_PACKAGE_CHANGED"

    .line 456
    .line 457
    goto :goto_2

    .line 458
    :pswitch_4d
    const-string v10, "INSTALL_FAILED_VERIFICATION_FAILURE"

    .line 459
    .line 460
    goto :goto_2

    .line 461
    :pswitch_4e
    const-string v10, "INSTALL_FAILED_VERIFICATION_TIMEOUT"

    .line 462
    .line 463
    goto :goto_2

    .line 464
    :pswitch_4f
    const-string v10, "INSTALL_FAILED_MEDIA_UNAVAILABLE"

    .line 465
    .line 466
    goto :goto_2

    .line 467
    :pswitch_50
    const-string v10, "INSTALL_FAILED_INVALID_INSTALL_LOCATION"

    .line 468
    .line 469
    goto :goto_2

    .line 470
    :pswitch_51
    const-string v10, "INSTALL_FAILED_CONTAINER_ERROR"

    .line 471
    .line 472
    goto :goto_2

    .line 473
    :pswitch_52
    const-string v10, "INSTALL_FAILED_MISSING_FEATURE"

    .line 474
    .line 475
    goto :goto_2

    .line 476
    :pswitch_53
    const-string v10, "INSTALL_FAILED_CPU_ABI_INCOMPATIBLE"

    .line 477
    .line 478
    goto :goto_2

    .line 479
    :pswitch_54
    const-string v10, "INSTALL_FAILED_TEST_ONLY"

    .line 480
    .line 481
    goto :goto_2

    .line 482
    :pswitch_55
    const-string v10, "INSTALL_FAILED_NEWER_SDK"

    .line 483
    .line 484
    goto :goto_2

    .line 485
    :pswitch_56
    const-string v10, "INSTALL_FAILED_CONFLICTING_PROVIDER"

    .line 486
    .line 487
    goto :goto_2

    .line 488
    :pswitch_57
    const-string v10, "INSTALL_FAILED_OLDER_SDK"

    .line 489
    .line 490
    goto :goto_2

    .line 491
    :pswitch_58
    const-string v10, "INSTALL_FAILED_DEXOPT"

    .line 492
    .line 493
    goto :goto_2

    .line 494
    :pswitch_59
    const-string v10, "INSTALL_FAILED_REPLACE_COULDNT_DELETE"

    .line 495
    .line 496
    goto :goto_2

    .line 497
    :pswitch_5a
    const-string v10, "INSTALL_FAILED_MISSING_SHARED_LIBRARY"

    .line 498
    .line 499
    goto :goto_2

    .line 500
    :pswitch_5b
    const-string v10, "INSTALL_FAILED_SHARED_USER_INCOMPATIBLE"

    .line 501
    .line 502
    goto :goto_2

    .line 503
    :pswitch_5c
    const-string v10, "INSTALL_FAILED_UPDATE_INCOMPATIBLE"

    .line 504
    .line 505
    goto :goto_2

    .line 506
    :pswitch_5d
    const-string v10, "INSTALL_FAILED_NO_SHARED_USER"

    .line 507
    .line 508
    goto :goto_2

    .line 509
    :pswitch_5e
    const-string v10, "INSTALL_FAILED_DUPLICATE_PACKAGE"

    .line 510
    .line 511
    goto :goto_2

    .line 512
    :pswitch_5f
    const-string v10, "INSTALL_FAILED_INSUFFICIENT_STORAGE"

    .line 513
    .line 514
    goto :goto_2

    .line 515
    :pswitch_60
    const-string v10, "INSTALL_FAILED_INVALID_URI"

    .line 516
    .line 517
    goto :goto_2

    .line 518
    :pswitch_61
    const-string v10, "INSTALL_FAILED_INVALID_APK"

    .line 519
    .line 520
    goto :goto_2

    .line 521
    :pswitch_62
    const-string v10, "INSTALL_FAILED_ALREADY_EXISTS"

    .line 522
    .line 523
    goto :goto_2

    .line 524
    :pswitch_63
    const-string v10, "UNKNOWN"

    .line 525
    .line 526
    :goto_2
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 527
    .line 528
    .line 529
    move-result v10

    .line 530
    if-eqz v10, :cond_1

    .line 531
    .line 532
    goto :goto_3

    .line 533
    :cond_1
    add-int/2addr v4, v3

    .line 534
    const/4 v10, -0x1

    .line 535
    goto/16 :goto_0

    .line 536
    .line 537
    :cond_2
    :goto_3
    move/from16 v4, v16

    .line 538
    .line 539
    goto :goto_4

    .line 540
    :cond_3
    const/4 v4, 0x1

    .line 541
    :goto_4
    if-eq v4, v3, :cond_4

    .line 542
    .line 543
    packed-switch v4, :pswitch_data_2

    .line 544
    .line 545
    .line 546
    throw v5

    .line 547
    :pswitch_64
    const v3, 0x7f1300b5

    .line 548
    .line 549
    .line 550
    goto/16 :goto_5

    .line 551
    .line 552
    :pswitch_65
    const v3, 0x7f1300a3

    .line 553
    .line 554
    .line 555
    goto/16 :goto_5

    .line 556
    .line 557
    :pswitch_66
    const v3, 0x7f1300a8

    .line 558
    .line 559
    .line 560
    goto/16 :goto_5

    .line 561
    .line 562
    :pswitch_67
    const v3, 0x7f130092

    .line 563
    .line 564
    .line 565
    goto/16 :goto_5

    .line 566
    .line 567
    :pswitch_68
    const v3, 0x7f130091

    .line 568
    .line 569
    .line 570
    goto/16 :goto_5

    .line 571
    .line 572
    :pswitch_69
    const v3, 0x7f130099

    .line 573
    .line 574
    .line 575
    goto/16 :goto_5

    .line 576
    .line 577
    :pswitch_6a
    const v3, 0x7f13008f

    .line 578
    .line 579
    .line 580
    goto/16 :goto_5

    .line 581
    .line 582
    :pswitch_6b
    const v3, 0x7f1300a5

    .line 583
    .line 584
    .line 585
    goto/16 :goto_5

    .line 586
    .line 587
    :pswitch_6c
    const v3, 0x7f130098

    .line 588
    .line 589
    .line 590
    goto/16 :goto_5

    .line 591
    .line 592
    :pswitch_6d
    const v3, 0x7f1300b1

    .line 593
    .line 594
    .line 595
    goto/16 :goto_5

    .line 596
    .line 597
    :pswitch_6e
    const v3, 0x7f13009b

    .line 598
    .line 599
    .line 600
    goto/16 :goto_5

    .line 601
    .line 602
    :pswitch_6f
    const v3, 0x7f1300bb

    .line 603
    .line 604
    .line 605
    goto/16 :goto_5

    .line 606
    .line 607
    :pswitch_70
    const v3, 0x7f1300bc

    .line 608
    .line 609
    .line 610
    goto/16 :goto_5

    .line 611
    .line 612
    :pswitch_71
    const v3, 0x7f1300b8

    .line 613
    .line 614
    .line 615
    goto/16 :goto_5

    .line 616
    .line 617
    :pswitch_72
    const v3, 0x7f1300b7

    .line 618
    .line 619
    .line 620
    goto/16 :goto_5

    .line 621
    .line 622
    :pswitch_73
    const v3, 0x7f1300b9

    .line 623
    .line 624
    .line 625
    goto/16 :goto_5

    .line 626
    .line 627
    :pswitch_74
    const v3, 0x7f1300ba

    .line 628
    .line 629
    .line 630
    goto/16 :goto_5

    .line 631
    .line 632
    :pswitch_75
    const v3, 0x7f1300bd

    .line 633
    .line 634
    .line 635
    goto/16 :goto_5

    .line 636
    .line 637
    :pswitch_76
    const v3, 0x7f1300bf

    .line 638
    .line 639
    .line 640
    goto/16 :goto_5

    .line 641
    .line 642
    :pswitch_77
    const v3, 0x7f1300b6

    .line 643
    .line 644
    .line 645
    goto/16 :goto_5

    .line 646
    .line 647
    :pswitch_78
    const v3, 0x7f1300be

    .line 648
    .line 649
    .line 650
    goto/16 :goto_5

    .line 651
    .line 652
    :pswitch_79
    const v3, 0x7f1300a2

    .line 653
    .line 654
    .line 655
    goto/16 :goto_5

    .line 656
    .line 657
    :pswitch_7a
    const v3, 0x7f1300ac

    .line 658
    .line 659
    .line 660
    goto/16 :goto_5

    .line 661
    .line 662
    :pswitch_7b
    const v3, 0x7f1300aa

    .line 663
    .line 664
    .line 665
    goto/16 :goto_5

    .line 666
    .line 667
    :pswitch_7c
    const v3, 0x7f1300b4

    .line 668
    .line 669
    .line 670
    goto/16 :goto_5

    .line 671
    .line 672
    :pswitch_7d
    const v3, 0x7f1300af

    .line 673
    .line 674
    .line 675
    goto/16 :goto_5

    .line 676
    .line 677
    :pswitch_7e
    const v3, 0x7f1300a9

    .line 678
    .line 679
    .line 680
    goto/16 :goto_5

    .line 681
    .line 682
    :pswitch_7f
    const v3, 0x7f1300b2

    .line 683
    .line 684
    .line 685
    goto/16 :goto_5

    .line 686
    .line 687
    :pswitch_80
    const v3, 0x7f1300b3

    .line 688
    .line 689
    .line 690
    goto :goto_5

    .line 691
    :pswitch_81
    const v3, 0x7f13009f

    .line 692
    .line 693
    .line 694
    goto :goto_5

    .line 695
    :pswitch_82
    const v3, 0x7f13009d

    .line 696
    .line 697
    .line 698
    goto :goto_5

    .line 699
    :pswitch_83
    const v3, 0x7f130094

    .line 700
    .line 701
    .line 702
    goto :goto_5

    .line 703
    :pswitch_84
    const v3, 0x7f1300a0

    .line 704
    .line 705
    .line 706
    goto :goto_5

    .line 707
    :pswitch_85
    const v3, 0x7f130095

    .line 708
    .line 709
    .line 710
    goto :goto_5

    .line 711
    :pswitch_86
    const v3, 0x7f1300ae

    .line 712
    .line 713
    .line 714
    goto :goto_5

    .line 715
    :pswitch_87
    const v3, 0x7f1300a4

    .line 716
    .line 717
    .line 718
    goto :goto_5

    .line 719
    :pswitch_88
    const v3, 0x7f130093

    .line 720
    .line 721
    .line 722
    goto :goto_5

    .line 723
    :pswitch_89
    const v3, 0x7f1300a7

    .line 724
    .line 725
    .line 726
    goto :goto_5

    .line 727
    :pswitch_8a
    const v3, 0x7f130096

    .line 728
    .line 729
    .line 730
    goto :goto_5

    .line 731
    :pswitch_8b
    const v3, 0x7f1300ab

    .line 732
    .line 733
    .line 734
    goto :goto_5

    .line 735
    :pswitch_8c
    const v3, 0x7f1300a1

    .line 736
    .line 737
    .line 738
    goto :goto_5

    .line 739
    :pswitch_8d
    const v3, 0x7f1300ad

    .line 740
    .line 741
    .line 742
    goto :goto_5

    .line 743
    :pswitch_8e
    const v3, 0x7f1300b0

    .line 744
    .line 745
    .line 746
    goto :goto_5

    .line 747
    :pswitch_8f
    const v3, 0x7f1300a6

    .line 748
    .line 749
    .line 750
    goto :goto_5

    .line 751
    :pswitch_90
    const v3, 0x7f130097

    .line 752
    .line 753
    .line 754
    goto :goto_5

    .line 755
    :pswitch_91
    const v3, 0x7f13009a

    .line 756
    .line 757
    .line 758
    goto :goto_5

    .line 759
    :pswitch_92
    const v3, 0x7f13009e

    .line 760
    .line 761
    .line 762
    goto :goto_5

    .line 763
    :pswitch_93
    const v3, 0x7f13009c

    .line 764
    .line 765
    .line 766
    goto :goto_5

    .line 767
    :pswitch_94
    const v3, 0x7f130090

    .line 768
    .line 769
    .line 770
    goto :goto_5

    .line 771
    :pswitch_95
    const v3, 0x7f1300c0

    .line 772
    .line 773
    .line 774
    :goto_5
    iget-object v4, v0, Lma/j;->a:Landroid/content/Context;

    .line 775
    .line 776
    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v3

    .line 780
    goto :goto_7

    .line 781
    :cond_4
    if-eq v6, v13, :cond_6

    .line 782
    .line 783
    packed-switch v6, :pswitch_data_3

    .line 784
    .line 785
    .line 786
    const-string v3, "\u5b89\u88c5\u5931\u8d25"

    .line 787
    .line 788
    goto :goto_7

    .line 789
    :pswitch_96
    const-string v3, "\u5b89\u88c5\u8d85\u65f6"

    .line 790
    .line 791
    goto :goto_7

    .line 792
    :pswitch_97
    const-string v3, "\u6b64\u5e94\u7528\u4e0e\u6b64\u8bbe\u5907\u4e0d\u517c\u5bb9"

    .line 793
    .line 794
    goto :goto_7

    .line 795
    :pswitch_98
    const-string v3, "\u6ca1\u6709\u8db3\u591f\u7684\u7a7a\u95f4\u6765\u5b89\u88c5\u5e94\u7528"

    .line 796
    .line 797
    goto :goto_7

    .line 798
    :pswitch_99
    const-string v3, "\u5b58\u5728\u76f8\u540c\u5305\u540d \u6216 \u4e0d\u517c\u5bb9 \u6216 \u7b7e\u540d\u95ee\u9898"

    .line 799
    .line 800
    goto :goto_7

    .line 801
    :pswitch_9a
    const-string v3, "\u53ef\u80fd\u683c\u5f0f\u9519\u8bef\u3001\u635f\u574f\u3001\u7b7e\u540d\u4e0d\u6b63\u786e\u3001\u6d4b\u8bd5\u5305\u3001\u4e0d\u5339\u914d\u7b49"

    .line 802
    .line 803
    goto :goto_7

    .line 804
    :pswitch_9b
    const-string v3, "\u7528\u6237\u53d6\u6d88\u4e86\u5b89\u88c5"

    .line 805
    .line 806
    goto :goto_7

    .line 807
    :pswitch_9c
    if-eqz v7, :cond_5

    .line 808
    .line 809
    :try_start_0
    sget-object v3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 810
    .line 811
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 812
    .line 813
    iget-object v4, v3, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 814
    .line 815
    invoke-virtual {v4, v7, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 816
    .line 817
    .line 818
    move-result-object v4

    .line 819
    iget-object v3, v3, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 820
    .line 821
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 822
    .line 823
    .line 824
    move-result-object v3

    .line 825
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 826
    .line 827
    .line 828
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    goto :goto_6

    .line 830
    :catch_0
    :cond_5
    const-string v3, "\u8bbe\u5907"

    .line 831
    .line 832
    :goto_6
    const-string v4, "\u5b89\u88c5\u88ab ["

    .line 833
    .line 834
    const-string v5, "] \u963b\u6b62\u4e86"

    .line 835
    .line 836
    invoke-static {v4, v3, v5}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 837
    .line 838
    .line 839
    move-result-object v3

    .line 840
    goto :goto_7

    .line 841
    :cond_6
    const-string v3, "\u8bf7\u66f4\u6362\u5b89\u88c5\u5668\u5b89\u88c5"

    .line 842
    .line 843
    :goto_7
    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 844
    .line 845
    .line 846
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 847
    .line 848
    .line 849
    new-instance v2, Ljava/lang/StringBuilder;

    .line 850
    .line 851
    const-string v4, "\u5931\u8d25\uff1a"

    .line 852
    .line 853
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 854
    .line 855
    .line 856
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    .line 858
    .line 859
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 860
    .line 861
    .line 862
    move-result-object v2

    .line 863
    iget-object v3, v11, Ll5/y;->b:Ljava/lang/Object;

    .line 864
    .line 865
    check-cast v3, Lma/i;

    .line 866
    .line 867
    iput-object v2, v3, Lma/i;->a:Ljava/lang/String;

    .line 868
    .line 869
    sget-object v2, Lma/h;->a:Lma/i;

    .line 870
    .line 871
    iput-boolean v1, v2, Lma/i;->f:Z

    .line 872
    .line 873
    iget-object v1, v3, Lma/i;->g:Ljava/util/concurrent/Semaphore;

    .line 874
    .line 875
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 876
    .line 877
    .line 878
    goto :goto_8

    .line 879
    :cond_7
    invoke-virtual {v2, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 880
    .line 881
    .line 882
    iget-object v2, v11, Ll5/y;->b:Ljava/lang/Object;

    .line 883
    .line 884
    check-cast v2, Lma/i;

    .line 885
    .line 886
    const-string v3, ""

    .line 887
    .line 888
    iput-object v3, v2, Lma/i;->a:Ljava/lang/String;

    .line 889
    .line 890
    sget-object v3, Lma/h;->a:Lma/i;

    .line 891
    .line 892
    iput-boolean v1, v3, Lma/i;->f:Z

    .line 893
    .line 894
    iget-object v1, v2, Lma/i;->g:Ljava/util/concurrent/Semaphore;

    .line 895
    .line 896
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 897
    .line 898
    .line 899
    goto :goto_8

    .line 900
    :cond_8
    invoke-virtual {v2, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 901
    .line 902
    .line 903
    move-result-object v3

    .line 904
    iget-object v4, v11, Ll5/y;->b:Ljava/lang/Object;

    .line 905
    .line 906
    check-cast v4, Lma/i;

    .line 907
    .line 908
    iput-object v3, v4, Lma/i;->i:Ljava/lang/String;

    .line 909
    .line 910
    const-string v3, "android.intent.extra.INTENT"

    .line 911
    .line 912
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 913
    .line 914
    .line 915
    move-result-object v2

    .line 916
    check-cast v2, Landroid/content/Intent;

    .line 917
    .line 918
    sget v3, Lcom/yunpan/appmanage/installer/InstallerConfirmActivity;->D:I

    .line 919
    .line 920
    new-instance v3, Landroid/content/Intent;

    .line 921
    .line 922
    const-class v4, Lcom/yunpan/appmanage/installer/InstallerConfirmActivity;

    .line 923
    .line 924
    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 925
    .line 926
    .line 927
    const-string v4, "confirmation_intent"

    .line 928
    .line 929
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 930
    .line 931
    .line 932
    const-string v2, "session_id"

    .line 933
    .line 934
    invoke-virtual {v3, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 935
    .line 936
    .line 937
    const/high16 v2, 0x10000000

    .line 938
    .line 939
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 940
    .line 941
    .line 942
    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 943
    .line 944
    .line 945
    :goto_8
    return-void

    .line 946
    nop

    .line 947
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_30
        :pswitch_31
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
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

    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
    .end packed-switch

    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
    .end packed-switch

    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
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
    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
    .end packed-switch
.end method
