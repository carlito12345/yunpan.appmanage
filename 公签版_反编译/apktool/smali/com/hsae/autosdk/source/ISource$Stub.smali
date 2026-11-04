.class public abstract Lcom/hsae/autosdk/source/ISource$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/hsae/autosdk/source/ISource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hsae/autosdk/source/ISource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hsae/autosdk/source/ISource$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hsae.autosdk.source.ISource"

.field static final TRANSACTION_getCurrentAudioCard:I = 0x2

.field static final TRANSACTION_getCurrentSource:I = 0x1

.field static final TRANSACTION_getFocusedApp:I = 0x13

.field static final TRANSACTION_getLastSource:I = 0x14

.field static final TRANSACTION_getPrevSource:I = 0x11

.field static final TRANSACTION_getSoundCardType:I = 0x3

.field static final TRANSACTION_isAllowPlay:I = 0x5

.field static final TRANSACTION_isAudioPlayPermitted:I = 0x1a

.field static final TRANSACTION_isBTPhoneComing:I = 0x10

.field static final TRANSACTION_isInUpgrade:I = 0x19

.field static final TRANSACTION_isNaviOnTop:I = 0x4

.field static final TRANSACTION_mainAudioChanged:I = 0xa

.field static final TRANSACTION_notifyBtState:I = 0x8

.field static final TRANSACTION_notifyCarPlayPhoneState:I = 0x7

.field static final TRANSACTION_notifyDiagnoseState:I = 0x9

.field static final TRANSACTION_notifyPhoneState:I = 0x6

.field static final TRANSACTION_registerSourceListener:I = 0x16

.field static final TRANSACTION_resetToDefaults:I = 0xf

.field static final TRANSACTION_setAudioCardMode:I = 0xe

.field static final TRANSACTION_setBTPhoneActive:I = 0x12

.field static final TRANSACTION_setFocusedApp:I = 0x15

.field static final TRANSACTION_showApp:I = 0x18

.field static final TRANSACTION_switchAudioI2SMode:I = 0xd

.field static final TRANSACTION_switchMicMode:I = 0xc

.field static final TRANSACTION_switchOTG:I = 0xb

.field static final TRANSACTION_unregisterSourceListener:I = 0x17


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.hsae.autosdk.source.ISource"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/source/ISource;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "com.hsae.autosdk.source.ISource"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    instance-of v1, v0, Lcom/hsae/autosdk/source/ISource;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/hsae/autosdk/source/ISource;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/hsae/autosdk/source/ISource$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/hsae/autosdk/source/ISource$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .line 1
    const v0, 0x5f4e5446

    .line 2
    .line 3
    .line 4
    const-string v1, "com.hsae.autosdk.source.ISource"

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    packed-switch p1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p0}, Lcom/hsae/autosdk/source/ISource;->isAudioPlayPermitted()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    .line 34
    .line 35
    return v2

    .line 36
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/source/ISource;->isInUpgrade(I)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    .line 52
    .line 53
    return v2

    .line 54
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/source/ISource;->showApp(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    .line 66
    .line 67
    return v2

    .line 68
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {p1}, Lcom/hsae/autosdk/source/ISourceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/source/ISourceCallback;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/source/ISource;->unregisterSourceListener(Lcom/hsae/autosdk/source/ISourceCallback;)V

    .line 80
    .line 81
    .line 82
    return v2

    .line 83
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {p1}, Lcom/hsae/autosdk/source/ISourceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/source/ISourceCallback;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/source/ISource;->registerSourceListener(Lcom/hsae/autosdk/source/ISourceCallback;)V

    .line 95
    .line 96
    .line 97
    return v2

    .line 98
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/source/ISource;->setFocusedApp(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    .line 110
    .line 111
    return v2

    .line 112
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-interface {p0}, Lcom/hsae/autosdk/source/ISource;->getLastSource()I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    .line 124
    .line 125
    return v2

    .line 126
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-interface {p0}, Lcom/hsae/autosdk/source/ISource;->getFocusedApp()I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    .line 138
    .line 139
    return v2

    .line 140
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_1

    .line 148
    .line 149
    const/4 v0, 0x1

    .line 150
    :cond_1
    invoke-interface {p0, v0}, Lcom/hsae/autosdk/source/ISource;->setBTPhoneActive(Z)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    .line 155
    .line 156
    return v2

    .line 157
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-interface {p0}, Lcom/hsae/autosdk/source/ISource;->getPrevSource()I

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    .line 169
    .line 170
    return v2

    .line 171
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-eqz p1, :cond_2

    .line 179
    .line 180
    const/4 p1, 0x1

    .line 181
    goto :goto_0

    .line 182
    :cond_2
    const/4 p1, 0x0

    .line 183
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 184
    .line 185
    .line 186
    move-result p2

    .line 187
    if-eqz p2, :cond_3

    .line 188
    .line 189
    const/4 v0, 0x1

    .line 190
    :cond_3
    invoke-interface {p0, p1, v0}, Lcom/hsae/autosdk/source/ISource;->isBTPhoneComing(ZZ)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    .line 195
    .line 196
    return v2

    .line 197
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-interface {p0}, Lcom/hsae/autosdk/source/ISource;->resetToDefaults()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    .line 205
    .line 206
    return v2

    .line 207
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 215
    .line 216
    .line 217
    move-result p2

    .line 218
    invoke-interface {p0, p1, p2}, Lcom/hsae/autosdk/source/ISource;->setAudioCardMode(II)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    .line 223
    .line 224
    return v2

    .line 225
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 229
    .line 230
    .line 231
    move-result p1

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 233
    .line 234
    .line 235
    move-result p4

    .line 236
    if-eqz p4, :cond_4

    .line 237
    .line 238
    const/4 v0, 0x1

    .line 239
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 240
    .line 241
    .line 242
    move-result p2

    .line 243
    invoke-interface {p0, p1, v0, p2}, Lcom/hsae/autosdk/source/ISource;->switchAudioI2SMode(IZI)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    .line 248
    .line 249
    return v2

    .line 250
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 254
    .line 255
    .line 256
    move-result p1

    .line 257
    if-eqz p1, :cond_5

    .line 258
    .line 259
    const/4 v0, 0x1

    .line 260
    :cond_5
    invoke-interface {p0, v0}, Lcom/hsae/autosdk/source/ISource;->switchMicMode(Z)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    .line 265
    .line 266
    return v2

    .line 267
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-interface {p0}, Lcom/hsae/autosdk/source/ISource;->switchOTG()V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    .line 275
    .line 276
    return v2

    .line 277
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 281
    .line 282
    .line 283
    move-result p1

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 285
    .line 286
    .line 287
    move-result p2

    .line 288
    if-eqz p2, :cond_6

    .line 289
    .line 290
    const/4 v0, 0x1

    .line 291
    :cond_6
    invoke-interface {p0, p1, v0}, Lcom/hsae/autosdk/source/ISource;->mainAudioChanged(IZ)V

    .line 292
    .line 293
    .line 294
    return v2

    .line 295
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 299
    .line 300
    .line 301
    move-result p1

    .line 302
    if-eqz p1, :cond_7

    .line 303
    .line 304
    const/4 v0, 0x1

    .line 305
    :cond_7
    invoke-interface {p0, v0}, Lcom/hsae/autosdk/source/ISource;->notifyDiagnoseState(Z)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    .line 310
    .line 311
    return v2

    .line 312
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 316
    .line 317
    .line 318
    move-result p1

    .line 319
    if-eqz p1, :cond_8

    .line 320
    .line 321
    const/4 v0, 0x1

    .line 322
    :cond_8
    invoke-interface {p0, v0}, Lcom/hsae/autosdk/source/ISource;->notifyBtState(Z)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    .line 327
    .line 328
    return v2

    .line 329
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 333
    .line 334
    .line 335
    move-result p1

    .line 336
    if-eqz p1, :cond_9

    .line 337
    .line 338
    const/4 v0, 0x1

    .line 339
    :cond_9
    invoke-interface {p0, v0}, Lcom/hsae/autosdk/source/ISource;->notifyCarPlayPhoneState(Z)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    .line 344
    .line 345
    return v2

    .line 346
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 350
    .line 351
    .line 352
    move-result p1

    .line 353
    if-eqz p1, :cond_a

    .line 354
    .line 355
    const/4 v0, 0x1

    .line 356
    :cond_a
    invoke-interface {p0, v0}, Lcom/hsae/autosdk/source/ISource;->notifyPhoneState(Z)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    .line 361
    .line 362
    return v2

    .line 363
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 367
    .line 368
    .line 369
    move-result p1

    .line 370
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/source/ISource;->isAllowPlay(I)Z

    .line 371
    .line 372
    .line 373
    move-result p1

    .line 374
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    .line 376
    .line 377
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    .line 379
    .line 380
    return v2

    .line 381
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    invoke-interface {p0}, Lcom/hsae/autosdk/source/ISource;->isNaviOnTop()Z

    .line 385
    .line 386
    .line 387
    move-result p1

    .line 388
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    .line 390
    .line 391
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    .line 393
    .line 394
    return v2

    .line 395
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    invoke-interface {p0}, Lcom/hsae/autosdk/source/ISource;->getSoundCardType()I

    .line 399
    .line 400
    .line 401
    move-result p1

    .line 402
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    .line 404
    .line 405
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    .line 407
    .line 408
    return v2

    .line 409
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    invoke-interface {p0}, Lcom/hsae/autosdk/source/ISource;->getCurrentAudioCard()I

    .line 413
    .line 414
    .line 415
    move-result p1

    .line 416
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    .line 418
    .line 419
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    .line 421
    .line 422
    return v2

    .line 423
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    invoke-interface {p0}, Lcom/hsae/autosdk/source/ISource;->getCurrentSource()I

    .line 427
    .line 428
    .line 429
    move-result p1

    .line 430
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    .line 432
    .line 433
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    .line 435
    .line 436
    return v2

    .line 437
    :pswitch_data_0
    .packed-switch 0x1
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
