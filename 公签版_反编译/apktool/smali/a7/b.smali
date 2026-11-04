.class public final La7/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, La7/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, La7/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lmb/w;

    .line 7
    .line 8
    invoke-direct {v0}, Lmb/w;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iput v1, v0, Lmb/w;->c:I

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iput v1, v0, Lmb/w;->f:I

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-lez v1, :cond_0

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v1, 0x0

    .line 32
    :goto_0
    iput-boolean v1, v0, Lmb/w;->b:Z

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    :goto_1
    if-lez v1, :cond_1

    .line 39
    .line 40
    iget-object v2, v0, Lmb/w;->a:Ljava/util/ArrayList;

    .line 41
    .line 42
    const-class v3, Lmb/w;

    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Lmb/q;

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    add-int/lit8 v1, v1, -0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    return-object v0

    .line 61
    :pswitch_0
    new-instance v0, Lm6/a;

    .line 62
    .line 63
    invoke-direct {v0, p1}, Lm6/a;-><init>(Landroid/os/Parcel;)V

    .line 64
    .line 65
    .line 66
    return-object v0

    .line 67
    :pswitch_1
    new-instance v0, Landroidx/versionedparcelable/ParcelImpl;

    .line 68
    .line 69
    invoke-direct {v0, p1}, Landroidx/versionedparcelable/ParcelImpl;-><init>(Landroid/os/Parcel;)V

    .line 70
    .line 71
    .line 72
    return-object v0

    .line 73
    :pswitch_2
    new-instance v0, Lj/d;

    .line 74
    .line 75
    invoke-direct {v0, p1}, Lj/d;-><init>(Landroid/os/Parcel;)V

    .line 76
    .line 77
    .line 78
    return-object v0

    .line 79
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    invoke-static {v0, p1}, Lcom/google/android/material/datepicker/p;->a(II)Lcom/google/android/material/datepicker/p;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    return-object p1

    .line 92
    :pswitch_4
    new-instance v0, Lcom/google/android/material/datepicker/d;

    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 95
    .line 96
    .line 97
    move-result-wide v1

    .line 98
    invoke-direct {v0, v1, v2}, Lcom/google/android/material/datepicker/d;-><init>(J)V

    .line 99
    .line 100
    .line 101
    return-object v0

    .line 102
    :pswitch_5
    const-class v0, Lcom/google/android/material/datepicker/p;

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    move-object v3, v1

    .line 113
    check-cast v3, Lcom/google/android/material/datepicker/p;

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    move-object v4, v1

    .line 124
    check-cast v4, Lcom/google/android/material/datepicker/p;

    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    move-object v6, v0

    .line 135
    check-cast v6, Lcom/google/android/material/datepicker/p;

    .line 136
    .line 137
    const-class v0, Lcom/google/android/material/datepicker/d;

    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    move-object v5, v0

    .line 148
    check-cast v5, Lcom/google/android/material/datepicker/d;

    .line 149
    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    new-instance p1, Lcom/google/android/material/datepicker/b;

    .line 155
    .line 156
    move-object v2, p1

    .line 157
    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/datepicker/b;-><init>(Lcom/google/android/material/datepicker/p;Lcom/google/android/material/datepicker/p;Lcom/google/android/material/datepicker/d;Lcom/google/android/material/datepicker/p;I)V

    .line 158
    .line 159
    .line 160
    return-object p1

    .line 161
    :pswitch_6
    new-instance v0, Lmoe/shizuku/api/BinderContainer;

    .line 162
    .line 163
    invoke-direct {v0, p1}, Lmoe/shizuku/api/BinderContainer;-><init>(Landroid/os/Parcel;)V

    .line 164
    .line 165
    .line 166
    return-object v0

    .line 167
    :pswitch_7
    new-instance v0, Lb1/l;

    .line 168
    .line 169
    invoke-direct {v0, p1}, Lb1/l;-><init>(Landroid/os/Parcel;)V

    .line 170
    .line 171
    .line 172
    return-object v0

    .line 173
    :pswitch_8
    new-instance v0, Landroidx/recyclerview/widget/b3;

    .line 174
    .line 175
    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/b3;-><init>(Landroid/os/Parcel;)V

    .line 176
    .line 177
    .line 178
    return-object v0

    .line 179
    :pswitch_9
    new-instance v0, Landroidx/recyclerview/widget/z2;

    .line 180
    .line 181
    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/z2;-><init>(Landroid/os/Parcel;)V

    .line 182
    .line 183
    .line 184
    return-object v0

    .line 185
    :pswitch_a
    new-instance v0, Landroidx/recyclerview/widget/z0;

    .line 186
    .line 187
    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/z0;-><init>(Landroid/os/Parcel;)V

    .line 188
    .line 189
    .line 190
    return-object v0

    .line 191
    :pswitch_b
    new-instance v0, Landroidx/leanback/widget/p;

    .line 192
    .line 193
    invoke-direct {v0, p1}, Landroidx/leanback/widget/p;-><init>(Landroid/os/Parcel;)V

    .line 194
    .line 195
    .line 196
    return-object v0

    .line 197
    :pswitch_c
    new-instance v0, Landroidx/fragment/app/i1;

    .line 198
    .line 199
    invoke-direct {v0, p1}, Landroidx/fragment/app/i1;-><init>(Landroid/os/Parcel;)V

    .line 200
    .line 201
    .line 202
    return-object v0

    .line 203
    :pswitch_d
    new-instance v0, Landroidx/fragment/app/f1;

    .line 204
    .line 205
    invoke-direct {v0, p1}, Landroidx/fragment/app/f1;-><init>(Landroid/os/Parcel;)V

    .line 206
    .line 207
    .line 208
    return-object v0

    .line 209
    :pswitch_e
    new-instance v0, Landroidx/fragment/app/a1;

    .line 210
    .line 211
    invoke-direct {v0, p1}, Landroidx/fragment/app/a1;-><init>(Landroid/os/Parcel;)V

    .line 212
    .line 213
    .line 214
    return-object v0

    .line 215
    :pswitch_f
    new-instance v0, Landroidx/fragment/app/c;

    .line 216
    .line 217
    invoke-direct {v0, p1}, Landroidx/fragment/app/c;-><init>(Landroid/os/Parcel;)V

    .line 218
    .line 219
    .line 220
    return-object v0

    .line 221
    :pswitch_10
    new-instance v0, Landroidx/fragment/app/b;

    .line 222
    .line 223
    invoke-direct {v0, p1}, Landroidx/fragment/app/b;-><init>(Landroid/os/Parcel;)V

    .line 224
    .line 225
    .line 226
    return-object v0

    .line 227
    :pswitch_11
    const-string v0, "inParcel"

    .line 228
    .line 229
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    new-instance v0, Landroidx/activity/result/i;

    .line 233
    .line 234
    const-class v1, Landroid/content/IntentSender;

    .line 235
    .line 236
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-static {v1}, Lue/d;->b(Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    check-cast v1, Landroid/content/IntentSender;

    .line 248
    .line 249
    const-class v2, Landroid/content/Intent;

    .line 250
    .line 251
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    check-cast v2, Landroid/content/Intent;

    .line 260
    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 262
    .line 263
    .line 264
    move-result v3

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 266
    .line 267
    .line 268
    move-result p1

    .line 269
    invoke-direct {v0, v1, v2, v3, p1}, Landroidx/activity/result/i;-><init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V

    .line 270
    .line 271
    .line 272
    return-object v0

    .line 273
    :pswitch_12
    new-instance v0, Landroidx/activity/result/a;

    .line 274
    .line 275
    invoke-direct {v0, p1}, Landroidx/activity/result/a;-><init>(Landroid/os/Parcel;)V

    .line 276
    .line 277
    .line 278
    return-object v0

    .line 279
    :pswitch_13
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 280
    .line 281
    invoke-direct {v0, p1}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(Landroid/os/Parcel;)V

    .line 282
    .line 283
    .line 284
    return-object v0

    .line 285
    :pswitch_14
    new-instance v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    .line 286
    .line 287
    invoke-direct {v0, p1}, Landroid/support/v4/media/session/ParcelableVolumeInfo;-><init>(Landroid/os/Parcel;)V

    .line 288
    .line 289
    .line 290
    return-object v0

    .line 291
    :pswitch_15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 292
    .line 293
    const/16 v1, 0x15

    .line 294
    .line 295
    if-lt v0, v1, :cond_2

    .line 296
    .line 297
    const/4 v0, 0x0

    .line 298
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    goto :goto_2

    .line 303
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    :goto_2
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 308
    .line 309
    invoke-direct {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    return-object v0

    .line 313
    :pswitch_16
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;

    .line 314
    .line 315
    invoke-direct {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;-><init>(Landroid/os/Parcel;)V

    .line 316
    .line 317
    .line 318
    return-object v0

    .line 319
    :pswitch_17
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    .line 320
    .line 321
    invoke-direct {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;-><init>(Landroid/os/Parcel;)V

    .line 322
    .line 323
    .line 324
    return-object v0

    .line 325
    :pswitch_18
    new-instance v0, Landroid/support/v4/media/RatingCompat;

    .line 326
    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 332
    .line 333
    .line 334
    move-result p1

    .line 335
    invoke-direct {v0, p1, v1}, Landroid/support/v4/media/RatingCompat;-><init>(FI)V

    .line 336
    .line 337
    .line 338
    return-object v0

    .line 339
    :pswitch_19
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat;

    .line 340
    .line 341
    invoke-direct {v0, p1}, Landroid/support/v4/media/MediaMetadataCompat;-><init>(Landroid/os/Parcel;)V

    .line 342
    .line 343
    .line 344
    return-object v0

    .line 345
    :pswitch_1a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 346
    .line 347
    const/16 v1, 0x15

    .line 348
    .line 349
    if-ge v0, v1, :cond_3

    .line 350
    .line 351
    new-instance v0, Landroid/support/v4/media/MediaDescriptionCompat;

    .line 352
    .line 353
    invoke-direct {v0, p1}, Landroid/support/v4/media/MediaDescriptionCompat;-><init>(Landroid/os/Parcel;)V

    .line 354
    .line 355
    .line 356
    goto/16 :goto_6

    .line 357
    .line 358
    :cond_3
    invoke-static {}, La2/t0;->j()Landroid/os/Parcelable$Creator;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    const/4 v2, 0x0

    .line 367
    if-eqz p1, :cond_9

    .line 368
    .line 369
    if-lt v0, v1, :cond_9

    .line 370
    .line 371
    invoke-static {p1}, La2/t0;->g(Ljava/lang/Object;)Landroid/media/MediaDescription;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    invoke-static {v1}, La2/t0;->l(Landroid/media/MediaDescription;)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v4

    .line 379
    invoke-static {p1}, La2/t0;->g(Ljava/lang/Object;)Landroid/media/MediaDescription;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-static {v1}, La2/t0;->k(Landroid/media/MediaDescription;)Ljava/lang/CharSequence;

    .line 384
    .line 385
    .line 386
    move-result-object v5

    .line 387
    invoke-static {p1}, La2/t0;->g(Ljava/lang/Object;)Landroid/media/MediaDescription;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    invoke-static {v1}, La2/t0;->x(Landroid/media/MediaDescription;)Ljava/lang/CharSequence;

    .line 392
    .line 393
    .line 394
    move-result-object v6

    .line 395
    invoke-static {p1}, La2/t0;->g(Ljava/lang/Object;)Landroid/media/MediaDescription;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    invoke-static {v1}, La2/t0;->C(Landroid/media/MediaDescription;)Ljava/lang/CharSequence;

    .line 400
    .line 401
    .line 402
    move-result-object v7

    .line 403
    invoke-static {p1}, La2/t0;->g(Ljava/lang/Object;)Landroid/media/MediaDescription;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    invoke-static {v1}, La2/t0;->c(Landroid/media/MediaDescription;)Landroid/graphics/Bitmap;

    .line 408
    .line 409
    .line 410
    move-result-object v8

    .line 411
    invoke-static {p1}, La2/t0;->g(Ljava/lang/Object;)Landroid/media/MediaDescription;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    invoke-static {v1}, La2/t0;->h(Landroid/media/MediaDescription;)Landroid/net/Uri;

    .line 416
    .line 417
    .line 418
    move-result-object v9

    .line 419
    invoke-static {p1}, La2/t0;->g(Ljava/lang/Object;)Landroid/media/MediaDescription;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    invoke-static {v1}, La2/t0;->i(Landroid/media/MediaDescription;)Landroid/os/Bundle;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    const-string v3, "android.support.v4.media.description.MEDIA_URI"

    .line 428
    .line 429
    if-eqz v1, :cond_4

    .line 430
    .line 431
    const-class v10, Landroid/support/v4/media/session/b;

    .line 432
    .line 433
    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 434
    .line 435
    .line 436
    move-result-object v10

    .line 437
    invoke-virtual {v1, v10}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 441
    .line 442
    .line 443
    move-result-object v10

    .line 444
    check-cast v10, Landroid/net/Uri;

    .line 445
    .line 446
    goto :goto_3

    .line 447
    :cond_4
    move-object v10, v2

    .line 448
    :goto_3
    if-eqz v10, :cond_6

    .line 449
    .line 450
    const-string v11, "android.support.v4.media.description.NULL_BUNDLE_FLAG"

    .line 451
    .line 452
    invoke-virtual {v1, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 453
    .line 454
    .line 455
    move-result v12

    .line 456
    if-eqz v12, :cond_5

    .line 457
    .line 458
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    .line 459
    .line 460
    .line 461
    move-result v12

    .line 462
    const/4 v13, 0x2

    .line 463
    if-ne v12, v13, :cond_5

    .line 464
    .line 465
    move-object v1, v2

    .line 466
    goto :goto_4

    .line 467
    :cond_5
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v1, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    :cond_6
    :goto_4
    if-eqz v10, :cond_7

    .line 474
    .line 475
    move-object v11, v10

    .line 476
    goto :goto_5

    .line 477
    :cond_7
    const/16 v3, 0x17

    .line 478
    .line 479
    if-lt v0, v3, :cond_8

    .line 480
    .line 481
    invoke-static {p1}, La2/t0;->g(Ljava/lang/Object;)Landroid/media/MediaDescription;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    invoke-static {v0}, La2/a;->i(Landroid/media/MediaDescription;)Landroid/net/Uri;

    .line 486
    .line 487
    .line 488
    move-result-object v2

    .line 489
    :cond_8
    move-object v11, v2

    .line 490
    :goto_5
    new-instance v0, Landroid/support/v4/media/MediaDescriptionCompat;

    .line 491
    .line 492
    move-object v3, v0

    .line 493
    move-object v10, v1

    .line 494
    invoke-direct/range {v3 .. v11}, Landroid/support/v4/media/MediaDescriptionCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;)V

    .line 495
    .line 496
    .line 497
    iput-object p1, v0, Landroid/support/v4/media/MediaDescriptionCompat;->i:Ljava/lang/Object;

    .line 498
    .line 499
    goto :goto_6

    .line 500
    :cond_9
    move-object v0, v2

    .line 501
    :goto_6
    return-object v0

    .line 502
    :pswitch_1b
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 503
    .line 504
    invoke-direct {v0, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/os/Parcel;)V

    .line 505
    .line 506
    .line 507
    return-object v0

    .line 508
    :pswitch_1c
    new-instance v0, La7/c;

    .line 509
    .line 510
    invoke-direct {v0, p1}, La7/c;-><init>(Landroid/os/Parcel;)V

    .line 511
    .line 512
    .line 513
    return-object v0

    .line 514
    nop

    .line 515
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

.method public final newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, La7/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-array p1, p1, [Lmb/w;

    .line 7
    .line 8
    return-object p1

    .line 9
    :pswitch_0
    new-array p1, p1, [Lm6/a;

    .line 10
    .line 11
    return-object p1

    .line 12
    :pswitch_1
    new-array p1, p1, [Landroidx/versionedparcelable/ParcelImpl;

    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_2
    new-array p1, p1, [Lj/d;

    .line 16
    .line 17
    return-object p1

    .line 18
    :pswitch_3
    new-array p1, p1, [Lcom/google/android/material/datepicker/p;

    .line 19
    .line 20
    return-object p1

    .line 21
    :pswitch_4
    new-array p1, p1, [Lcom/google/android/material/datepicker/d;

    .line 22
    .line 23
    return-object p1

    .line 24
    :pswitch_5
    new-array p1, p1, [Lcom/google/android/material/datepicker/b;

    .line 25
    .line 26
    return-object p1

    .line 27
    :pswitch_6
    new-array p1, p1, [Lmoe/shizuku/api/BinderContainer;

    .line 28
    .line 29
    return-object p1

    .line 30
    :pswitch_7
    new-array p1, p1, [Lb1/l;

    .line 31
    .line 32
    return-object p1

    .line 33
    :pswitch_8
    new-array p1, p1, [Landroidx/recyclerview/widget/b3;

    .line 34
    .line 35
    return-object p1

    .line 36
    :pswitch_9
    new-array p1, p1, [Landroidx/recyclerview/widget/z2;

    .line 37
    .line 38
    return-object p1

    .line 39
    :pswitch_a
    new-array p1, p1, [Landroidx/recyclerview/widget/z0;

    .line 40
    .line 41
    return-object p1

    .line 42
    :pswitch_b
    new-array p1, p1, [Landroidx/leanback/widget/p;

    .line 43
    .line 44
    return-object p1

    .line 45
    :pswitch_c
    new-array p1, p1, [Landroidx/fragment/app/i1;

    .line 46
    .line 47
    return-object p1

    .line 48
    :pswitch_d
    new-array p1, p1, [Landroidx/fragment/app/f1;

    .line 49
    .line 50
    return-object p1

    .line 51
    :pswitch_e
    new-array p1, p1, [Landroidx/fragment/app/a1;

    .line 52
    .line 53
    return-object p1

    .line 54
    :pswitch_f
    new-array p1, p1, [Landroidx/fragment/app/c;

    .line 55
    .line 56
    return-object p1

    .line 57
    :pswitch_10
    new-array p1, p1, [Landroidx/fragment/app/b;

    .line 58
    .line 59
    return-object p1

    .line 60
    :pswitch_11
    new-array p1, p1, [Landroidx/activity/result/i;

    .line 61
    .line 62
    return-object p1

    .line 63
    :pswitch_12
    new-array p1, p1, [Landroidx/activity/result/a;

    .line 64
    .line 65
    return-object p1

    .line 66
    :pswitch_13
    new-array p1, p1, [Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 67
    .line 68
    return-object p1

    .line 69
    :pswitch_14
    new-array p1, p1, [Landroid/support/v4/media/session/ParcelableVolumeInfo;

    .line 70
    .line 71
    return-object p1

    .line 72
    :pswitch_15
    new-array p1, p1, [Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 73
    .line 74
    return-object p1

    .line 75
    :pswitch_16
    new-array p1, p1, [Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;

    .line 76
    .line 77
    return-object p1

    .line 78
    :pswitch_17
    new-array p1, p1, [Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    .line 79
    .line 80
    return-object p1

    .line 81
    :pswitch_18
    new-array p1, p1, [Landroid/support/v4/media/RatingCompat;

    .line 82
    .line 83
    return-object p1

    .line 84
    :pswitch_19
    new-array p1, p1, [Landroid/support/v4/media/MediaMetadataCompat;

    .line 85
    .line 86
    return-object p1

    .line 87
    :pswitch_1a
    new-array p1, p1, [Landroid/support/v4/media/MediaDescriptionCompat;

    .line 88
    .line 89
    return-object p1

    .line 90
    :pswitch_1b
    new-array p1, p1, [Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 91
    .line 92
    return-object p1

    .line 93
    :pswitch_1c
    new-array p1, p1, [La7/c;

    .line 94
    .line 95
    return-object p1

    .line 96
    nop

    .line 97
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
