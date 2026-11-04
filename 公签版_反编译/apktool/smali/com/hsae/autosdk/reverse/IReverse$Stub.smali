.class public abstract Lcom/hsae/autosdk/reverse/IReverse$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/hsae/autosdk/reverse/IReverse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hsae/autosdk/reverse/IReverse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hsae/autosdk/reverse/IReverse$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hsae.autosdk.reverse.IReverse"

.field static final TRANSACTION_avmControlCmd:I = 0x1f

.field static final TRANSACTION_getCameraType:I = 0x2

.field static final TRANSACTION_getCurrentVehicleType:I = 0x1d

.field static final TRANSACTION_getFrameType:I = 0x15

.field static final TRANSACTION_getQuickReverseState:I = 0x1e

.field static final TRANSACTION_getReverseState:I = 0x14

.field static final TRANSACTION_getSteeringWheelAngle:I = 0x1b

.field static final TRANSACTION_getSteeringWheelFlag:I = 0x1c

.field static final TRANSACTION_getVehicleType:I = 0x1

.field static final TRANSACTION_notifyReverseStartSucess:I = 0x1a

.field static final TRANSACTION_registerReverseCallback:I = 0x16

.field static final TRANSACTION_registerReverseStateCallback:I = 0x18

.field static final TRANSACTION_reqAVMAnimationEnable:I = 0x12

.field static final TRANSACTION_reqAVMReset:I = 0x13

.field static final TRANSACTION_reqAVMReverseState:I = 0x5

.field static final TRANSACTION_reqAVMStateInfo:I = 0x11

.field static final TRANSACTION_reqAVMSwitchScreen:I = 0x8

.field static final TRANSACTION_reqAVMSynchronizationData:I = 0x6

.field static final TRANSACTION_reqAVMTouchInfo:I = 0x9

.field static final TRANSACTION_reqAVMVersion:I = 0x7

.field static final TRANSACTION_reqChangeAVMLaungage:I = 0xf

.field static final TRANSACTION_reqChangeCarColor:I = 0xd

.field static final TRANSACTION_reqCurrentAVMSettingValue:I = 0xe

.field static final TRANSACTION_reqDisplayTrackLine:I = 0x10

.field static final TRANSACTION_reqEnterAVMFrame:I = 0xa

.field static final TRANSACTION_reqEnterAVMSettingFrame:I = 0xc

.field static final TRANSACTION_reqExitAVMFrame:I = 0xb

.field static final TRANSACTION_setReverseType:I = 0x4

.field static final TRANSACTION_setVehicleType:I = 0x3

.field static final TRANSACTION_unregisterReverseCallback:I = 0x17

.field static final TRANSACTION_unregisterReverseStateCallback:I = 0x19


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.hsae.autosdk.reverse.IReverse"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/reverse/IReverse;
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
    const-string v0, "com.hsae.autosdk.reverse.IReverse"

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
    instance-of v1, v0, Lcom/hsae/autosdk/reverse/IReverse;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/hsae/autosdk/reverse/IReverse;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/hsae/autosdk/reverse/IReverse$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/hsae/autosdk/reverse/IReverse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 11

    .line 1
    const v0, 0x5f4e5446

    .line 2
    .line 3
    .line 4
    const-string v1, "com.hsae.autosdk.reverse.IReverse"

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
    packed-switch p1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 45
    .line 46
    .line 47
    move-result v9

    .line 48
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 49
    .line 50
    .line 51
    move-result v10

    .line 52
    move-object v3, p0

    .line 53
    invoke-interface/range {v3 .. v10}, Lcom/hsae/autosdk/reverse/IReverse;->avmControlCmd(BBBBBBB)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    .line 58
    .line 59
    return v2

    .line 60
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {p0}, Lcom/hsae/autosdk/reverse/IReverse;->getQuickReverseState()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    .line 72
    .line 73
    return v2

    .line 74
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {p0}, Lcom/hsae/autosdk/reverse/IReverse;->getCurrentVehicleType()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    .line 86
    .line 87
    return v2

    .line 88
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-interface {p0}, Lcom/hsae/autosdk/reverse/IReverse;->getSteeringWheelFlag()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    .line 100
    .line 101
    return v2

    .line 102
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-interface {p0}, Lcom/hsae/autosdk/reverse/IReverse;->getSteeringWheelAngle()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    .line 114
    .line 115
    return v2

    .line 116
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_1

    .line 124
    .line 125
    const/4 p1, 0x1

    .line 126
    goto :goto_0

    .line 127
    :cond_1
    const/4 p1, 0x0

    .line 128
    :goto_0
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/reverse/IReverse;->notifyReverseStartSucess(Z)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    .line 133
    .line 134
    return v2

    .line 135
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-static {p1}, Lcom/hsae/autosdk/reverse/IReverseStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/reverse/IReverseStateCallback;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/reverse/IReverse;->unregisterReverseStateCallback(Lcom/hsae/autosdk/reverse/IReverseStateCallback;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    .line 151
    .line 152
    return v2

    .line 153
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-static {p1}, Lcom/hsae/autosdk/reverse/IReverseStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/reverse/IReverseStateCallback;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/reverse/IReverse;->registerReverseStateCallback(Lcom/hsae/autosdk/reverse/IReverseStateCallback;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    .line 169
    .line 170
    return v2

    .line 171
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-static {p1}, Lcom/hsae/autosdk/reverse/IReverseCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/reverse/IReverseCallback;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/reverse/IReverse;->unregisterReverseCallback(Lcom/hsae/autosdk/reverse/IReverseCallback;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    .line 187
    .line 188
    return v2

    .line 189
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-static {p1}, Lcom/hsae/autosdk/reverse/IReverseCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/reverse/IReverseCallback;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/reverse/IReverse;->registerReverseCallback(Lcom/hsae/autosdk/reverse/IReverseCallback;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    .line 205
    .line 206
    return v2

    .line 207
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-interface {p0}, Lcom/hsae/autosdk/reverse/IReverse;->getFrameType()B

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 218
    .line 219
    .line 220
    return v2

    .line 221
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-interface {p0}, Lcom/hsae/autosdk/reverse/IReverse;->getReverseState()Z

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    .line 233
    .line 234
    return v2

    .line 235
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-interface {p0}, Lcom/hsae/autosdk/reverse/IReverse;->reqAVMReset()V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    .line 243
    .line 244
    return v2

    .line 245
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 249
    .line 250
    .line 251
    move-result p1

    .line 252
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/reverse/IReverse;->reqAVMAnimationEnable(B)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    .line 257
    .line 258
    return v2

    .line 259
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 263
    .line 264
    .line 265
    move-result p1

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 267
    .line 268
    .line 269
    move-result p4

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 275
    .line 276
    .line 277
    move-result p2

    .line 278
    invoke-interface {p0, p1, p4, v0, p2}, Lcom/hsae/autosdk/reverse/IReverse;->reqAVMStateInfo(BBBB)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    .line 283
    .line 284
    return v2

    .line 285
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 289
    .line 290
    .line 291
    move-result p1

    .line 292
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/reverse/IReverse;->reqDisplayTrackLine(B)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    .line 297
    .line 298
    return v2

    .line 299
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 303
    .line 304
    .line 305
    move-result p1

    .line 306
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/reverse/IReverse;->reqChangeAVMLaungage(B)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    .line 311
    .line 312
    return v2

    .line 313
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-interface {p0}, Lcom/hsae/autosdk/reverse/IReverse;->reqCurrentAVMSettingValue()V

    .line 317
    .line 318
    .line 319
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    .line 321
    .line 322
    return v2

    .line 323
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 327
    .line 328
    .line 329
    move-result p1

    .line 330
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/reverse/IReverse;->reqChangeCarColor(B)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    .line 335
    .line 336
    return v2

    .line 337
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    invoke-interface {p0}, Lcom/hsae/autosdk/reverse/IReverse;->reqEnterAVMSettingFrame()V

    .line 341
    .line 342
    .line 343
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    .line 345
    .line 346
    return v2

    .line 347
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    invoke-interface {p0}, Lcom/hsae/autosdk/reverse/IReverse;->reqExitAVMFrame()V

    .line 351
    .line 352
    .line 353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    .line 355
    .line 356
    return v2

    .line 357
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 361
    .line 362
    .line 363
    move-result p1

    .line 364
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/reverse/IReverse;->reqEnterAVMFrame(B)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    .line 369
    .line 370
    return v2

    .line 371
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 375
    .line 376
    .line 377
    move-result p1

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 379
    .line 380
    .line 381
    move-result p2

    .line 382
    invoke-interface {p0, p1, p2}, Lcom/hsae/autosdk/reverse/IReverse;->reqAVMTouchInfo(II)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    .line 387
    .line 388
    return v2

    .line 389
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 393
    .line 394
    .line 395
    move-result p1

    .line 396
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/reverse/IReverse;->reqAVMSwitchScreen(B)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    .line 401
    .line 402
    return v2

    .line 403
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    invoke-interface {p0}, Lcom/hsae/autosdk/reverse/IReverse;->reqAVMVersion()V

    .line 407
    .line 408
    .line 409
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    .line 411
    .line 412
    return v2

    .line 413
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 417
    .line 418
    .line 419
    move-result p1

    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 421
    .line 422
    .line 423
    move-result p4

    .line 424
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 425
    .line 426
    .line 427
    move-result p2

    .line 428
    invoke-interface {p0, p1, p4, p2}, Lcom/hsae/autosdk/reverse/IReverse;->reqAVMSynchronizationData(IBB)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    .line 433
    .line 434
    return v2

    .line 435
    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    invoke-interface {p0}, Lcom/hsae/autosdk/reverse/IReverse;->reqAVMReverseState()V

    .line 439
    .line 440
    .line 441
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    .line 443
    .line 444
    return v2

    .line 445
    :pswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 449
    .line 450
    .line 451
    move-result p1

    .line 452
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/reverse/IReverse;->setReverseType(I)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    .line 457
    .line 458
    return v2

    .line 459
    :pswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 463
    .line 464
    .line 465
    move-result p1

    .line 466
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/reverse/IReverse;->setVehicleType(I)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 470
    .line 471
    .line 472
    return v2

    .line 473
    :pswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    invoke-interface {p0}, Lcom/hsae/autosdk/reverse/IReverse;->getCameraType()I

    .line 477
    .line 478
    .line 479
    move-result p1

    .line 480
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    .line 482
    .line 483
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    .line 485
    .line 486
    return v2

    .line 487
    :pswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    invoke-interface {p0}, Lcom/hsae/autosdk/reverse/IReverse;->getVehicleType()I

    .line 491
    .line 492
    .line 493
    move-result p1

    .line 494
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    .line 496
    .line 497
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 498
    .line 499
    .line 500
    return v2

    .line 501
    :pswitch_data_0
    .packed-switch 0x1
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
.end method
