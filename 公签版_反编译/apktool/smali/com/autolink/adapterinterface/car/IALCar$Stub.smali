.class public abstract Lcom/autolink/adapterinterface/car/IALCar$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/autolink/adapterinterface/car/IALCar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autolink/adapterinterface/car/IALCar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autolink/adapterinterface/car/IALCar$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.autolink.adapterinterface.car.IALCar"

.field static final TRANSACTION_controlFraganceConcentration:I = 0xe

.field static final TRANSACTION_controlUltravioletLuminance:I = 0xd

.field static final TRANSACTION_factoryResetForAL:I = 0xa

.field static final TRANSACTION_getFloatProperty:I = 0x9

.field static final TRANSACTION_getIntProperty:I = 0x2

.field static final TRANSACTION_registerAVMPropertyListener:I = 0x7

.field static final TRANSACTION_registerCarEngineSpeedListener:I = 0x19

.field static final TRANSACTION_registerCarSpeedListener:I = 0x11

.field static final TRANSACTION_registerCarSteerListener:I = 0x13

.field static final TRANSACTION_registerCarTyreListener:I = 0x15

.field static final TRANSACTION_registerCarWindListener:I = 0x17

.field static final TRANSACTION_registerExtPropertyListener:I = 0xf

.field static final TRANSACTION_registerHvacPropertyListener:I = 0x3

.field static final TRANSACTION_registerVehicleControlPropertyListener:I = 0x5

.field static final TRANSACTION_sendChargeTime:I = 0x1c

.field static final TRANSACTION_sendFrontCrashWarningSignals:I = 0x21

.field static final TRANSACTION_sendHVACsignalsForSmartScene:I = 0x1b

.field static final TRANSACTION_sendIHU03signals:I = 0x20

.field static final TRANSACTION_sendIHU11signals:I = 0x1f

.field static final TRANSACTION_sendTboxSignalGroupForT1J:I = 0x1d

.field static final TRANSACTION_sendTboxSignalGroupForT1P:I = 0x1e

.field static final TRANSACTION_setGroupPropertyForDriverSeatMassage:I = 0x2e

.field static final TRANSACTION_setGroupPropertyForHUD:I = 0x27

.field static final TRANSACTION_setGroupPropertyForIHU14SUB1:I = 0x2a

.field static final TRANSACTION_setGroupPropertyForIHU14SUB2:I = 0x2b

.field static final TRANSACTION_setGroupPropertyForIHU14SUB3:I = 0x2c

.field static final TRANSACTION_setGroupPropertyForIHU14SUB4:I = 0x2d

.field static final TRANSACTION_setGroupPropertyForIHUDVR1:I = 0x24

.field static final TRANSACTION_setGroupPropertyForIHUDVR2:I = 0x25

.field static final TRANSACTION_setGroupPropertyForIHUDVR3:I = 0x26

.field static final TRANSACTION_setGroupPropertyForIHUDVRT1L:I = 0x28

.field static final TRANSACTION_setGroupPropertyForMusicLoud:I = 0x22

.field static final TRANSACTION_setIntProperty:I = 0x1

.field static final TRANSACTION_setIntPropertyReduceLog:I = 0xb

.field static final TRANSACTION_setMultiWindow:I = 0xc

.field static final TRANSACTION_setT1KMirrorFlip:I = 0x23

.field static final TRANSACTION_setT1PSeatHeatAndVentilation:I = 0x29

.field static final TRANSACTION_unregisterAVMPropertyListener:I = 0x8

.field static final TRANSACTION_unregisterCarEngineSpeedListener:I = 0x1a

.field static final TRANSACTION_unregisterCarSpeedListener:I = 0x12

.field static final TRANSACTION_unregisterCarSteerListener:I = 0x14

.field static final TRANSACTION_unregisterCarTyreListener:I = 0x16

.field static final TRANSACTION_unregisterCarWindListener:I = 0x18

.field static final TRANSACTION_unregisterExtPropertyListener:I = 0x10

.field static final TRANSACTION_unregisterHvacPropertyListener:I = 0x4

.field static final TRANSACTION_unregisterVehicleControlPropertyListener:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.autolink.adapterinterface.car.IALCar"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/car/IALCar;
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
    const-string v0, "com.autolink.adapterinterface.car.IALCar"

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
    instance-of v1, v0, Lcom/autolink/adapterinterface/car/IALCar;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/autolink/adapterinterface/car/IALCar;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/autolink/adapterinterface/car/IALCar$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/autolink/adapterinterface/car/IALCar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public static getDefaultImpl()Lcom/autolink/adapterinterface/car/IALCar;
    .locals 1

    .line 1
    sget-object v0, Lcom/autolink/adapterinterface/car/IALCar$Stub$Proxy;->sDefaultImpl:Lcom/autolink/adapterinterface/car/IALCar;

    .line 2
    .line 3
    return-object v0
.end method

.method public static setDefaultImpl(Lcom/autolink/adapterinterface/car/IALCar;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/autolink/adapterinterface/car/IALCar$Stub$Proxy;->sDefaultImpl:Lcom/autolink/adapterinterface/car/IALCar;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    sput-object p0, Lcom/autolink/adapterinterface/car/IALCar$Stub$Proxy;->sDefaultImpl:Lcom/autolink/adapterinterface/car/IALCar;

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v0, "setDefaultImpl() called twice"

    .line 16
    .line 17
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 13

    .line 1
    move-object v9, p0

    .line 2
    move v0, p1

    .line 3
    move-object v1, p2

    .line 4
    move-object/from16 v10, p3

    .line 5
    .line 6
    const v2, 0x5f4e5446

    .line 7
    .line 8
    .line 9
    const/4 v11, 0x1

    .line 10
    const-string v3, "com.autolink.adapterinterface.car.IALCar"

    .line 11
    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return v11

    .line 18
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    return v0

    .line 26
    :pswitch_0
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-interface {p0, v0, v2, v1}, Lcom/autolink/adapterinterface/car/IALCar;->setGroupPropertyForDriverSeatMassage(III)V

    .line 42
    .line 43
    .line 44
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 45
    .line 46
    .line 47
    return v11

    .line 48
    :pswitch_1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-interface {p0, v0, v1}, Lcom/autolink/adapterinterface/car/IALCar;->setGroupPropertyForIHU14SUB4(II)V

    .line 60
    .line 61
    .line 62
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    .line 64
    .line 65
    return v11

    .line 66
    :pswitch_2
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-interface {p0, v0, v1}, Lcom/autolink/adapterinterface/car/IALCar;->setGroupPropertyForIHU14SUB3(II)V

    .line 78
    .line 79
    .line 80
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    .line 82
    .line 83
    return v11

    .line 84
    :pswitch_3
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-interface {p0, v0, v1}, Lcom/autolink/adapterinterface/car/IALCar;->setGroupPropertyForIHU14SUB2(II)V

    .line 96
    .line 97
    .line 98
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    .line 100
    .line 101
    return v11

    .line 102
    :pswitch_4
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    invoke-interface {p0, v0, v2, v1}, Lcom/autolink/adapterinterface/car/IALCar;->setGroupPropertyForIHU14SUB1(III)V

    .line 118
    .line 119
    .line 120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    .line 122
    .line 123
    return v11

    .line 124
    :pswitch_5
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    invoke-interface {p0, v0, v1}, Lcom/autolink/adapterinterface/car/IALCar;->setT1PSeatHeatAndVentilation(II)V

    .line 136
    .line 137
    .line 138
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    .line 140
    .line 141
    return v11

    .line 142
    :pswitch_6
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 166
    .line 167
    .line 168
    move-result v7

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 170
    .line 171
    .line 172
    move-result v8

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 174
    .line 175
    .line 176
    move-result v12

    .line 177
    move-object v0, p0

    .line 178
    move v1, v2

    .line 179
    move v2, v3

    .line 180
    move v3, v4

    .line 181
    move v4, v5

    .line 182
    move v5, v6

    .line 183
    move v6, v7

    .line 184
    move v7, v8

    .line 185
    move v8, v12

    .line 186
    invoke-interface/range {v0 .. v8}, Lcom/autolink/adapterinterface/car/IALCar;->setGroupPropertyForIHUDVRT1L(IIIIIIII)V

    .line 187
    .line 188
    .line 189
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    .line 191
    .line 192
    return v11

    .line 193
    :pswitch_7
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 205
    .line 206
    .line 207
    move-result v4

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 209
    .line 210
    .line 211
    move-result v5

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 213
    .line 214
    .line 215
    move-result v6

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 217
    .line 218
    .line 219
    move-result v7

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 221
    .line 222
    .line 223
    move-result v8

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 225
    .line 226
    .line 227
    move-result v12

    .line 228
    move-object v0, p0

    .line 229
    move v1, v2

    .line 230
    move v2, v3

    .line 231
    move v3, v4

    .line 232
    move v4, v5

    .line 233
    move v5, v6

    .line 234
    move v6, v7

    .line 235
    move v7, v8

    .line 236
    move v8, v12

    .line 237
    invoke-interface/range {v0 .. v8}, Lcom/autolink/adapterinterface/car/IALCar;->setGroupPropertyForHUD(IIIIIIII)V

    .line 238
    .line 239
    .line 240
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    .line 242
    .line 243
    return v11

    .line 244
    :pswitch_8
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    invoke-interface {p0, v0, v2, v1}, Lcom/autolink/adapterinterface/car/IALCar;->setGroupPropertyForIHUDVR3(III)V

    .line 260
    .line 261
    .line 262
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    .line 264
    .line 265
    return v11

    .line 266
    :pswitch_9
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 278
    .line 279
    .line 280
    move-result v4

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 282
    .line 283
    .line 284
    move-result v5

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 286
    .line 287
    .line 288
    move-result v6

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 290
    .line 291
    .line 292
    move-result v7

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 294
    .line 295
    .line 296
    move-result v8

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 298
    .line 299
    .line 300
    move-result v12

    .line 301
    move-object v0, p0

    .line 302
    move v1, v2

    .line 303
    move v2, v3

    .line 304
    move v3, v4

    .line 305
    move v4, v5

    .line 306
    move v5, v6

    .line 307
    move v6, v7

    .line 308
    move v7, v8

    .line 309
    move v8, v12

    .line 310
    invoke-interface/range {v0 .. v8}, Lcom/autolink/adapterinterface/car/IALCar;->setGroupPropertyForIHUDVR2(IIIIIIII)V

    .line 311
    .line 312
    .line 313
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    .line 315
    .line 316
    return v11

    .line 317
    :pswitch_a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 321
    .line 322
    .line 323
    move-result v2

    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 325
    .line 326
    .line 327
    move-result v3

    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 329
    .line 330
    .line 331
    move-result v4

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 333
    .line 334
    .line 335
    move-result v5

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 337
    .line 338
    .line 339
    move-result v6

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 341
    .line 342
    .line 343
    move-result v7

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 345
    .line 346
    .line 347
    move-result v8

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 349
    .line 350
    .line 351
    move-result v12

    .line 352
    move-object v0, p0

    .line 353
    move v1, v2

    .line 354
    move v2, v3

    .line 355
    move v3, v4

    .line 356
    move v4, v5

    .line 357
    move v5, v6

    .line 358
    move v6, v7

    .line 359
    move v7, v8

    .line 360
    move v8, v12

    .line 361
    invoke-interface/range {v0 .. v8}, Lcom/autolink/adapterinterface/car/IALCar;->setGroupPropertyForIHUDVR1(IIIIIIII)V

    .line 362
    .line 363
    .line 364
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    .line 366
    .line 367
    return v11

    .line 368
    :pswitch_b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    invoke-interface {p0, v0}, Lcom/autolink/adapterinterface/car/IALCar;->setT1KMirrorFlip(I)V

    .line 376
    .line 377
    .line 378
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    .line 380
    .line 381
    return v11

    .line 382
    :pswitch_c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-interface {p0, v0}, Lcom/autolink/adapterinterface/car/IALCar;->setGroupPropertyForMusicLoud([B)V

    .line 390
    .line 391
    .line 392
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    .line 394
    .line 395
    return v11

    .line 396
    :pswitch_d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 400
    .line 401
    .line 402
    move-result v0

    .line 403
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 404
    .line 405
    .line 406
    move-result v1

    .line 407
    invoke-interface {p0, v0, v1}, Lcom/autolink/adapterinterface/car/IALCar;->sendFrontCrashWarningSignals(II)V

    .line 408
    .line 409
    .line 410
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    .line 412
    .line 413
    return v11

    .line 414
    :pswitch_e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    invoke-interface {p0, v0}, Lcom/autolink/adapterinterface/car/IALCar;->sendIHU03signals([B)V

    .line 422
    .line 423
    .line 424
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    .line 426
    .line 427
    return v11

    .line 428
    :pswitch_f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    invoke-interface {p0, v0}, Lcom/autolink/adapterinterface/car/IALCar;->sendIHU11signals([B)V

    .line 436
    .line 437
    .line 438
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    .line 440
    .line 441
    return v11

    .line 442
    :pswitch_10
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 446
    .line 447
    .line 448
    move-result v2

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 450
    .line 451
    .line 452
    move-result v3

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 454
    .line 455
    .line 456
    move-result v4

    .line 457
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 458
    .line 459
    .line 460
    move-result v5

    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 462
    .line 463
    .line 464
    move-result v6

    .line 465
    move-object v0, p0

    .line 466
    move v1, v2

    .line 467
    move v2, v3

    .line 468
    move v3, v4

    .line 469
    move v4, v5

    .line 470
    move v5, v6

    .line 471
    invoke-interface/range {v0 .. v5}, Lcom/autolink/adapterinterface/car/IALCar;->sendTboxSignalGroupForT1P(IIIII)V

    .line 472
    .line 473
    .line 474
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    .line 476
    .line 477
    return v11

    .line 478
    :pswitch_11
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 482
    .line 483
    .line 484
    move-result v2

    .line 485
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 486
    .line 487
    .line 488
    move-result v3

    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 490
    .line 491
    .line 492
    move-result v4

    .line 493
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 494
    .line 495
    .line 496
    move-result v5

    .line 497
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 498
    .line 499
    .line 500
    move-result v6

    .line 501
    move-object v0, p0

    .line 502
    move v1, v2

    .line 503
    move v2, v3

    .line 504
    move v3, v4

    .line 505
    move v4, v5

    .line 506
    move v5, v6

    .line 507
    invoke-interface/range {v0 .. v5}, Lcom/autolink/adapterinterface/car/IALCar;->sendTboxSignalGroupForT1J(IIIII)V

    .line 508
    .line 509
    .line 510
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    .line 512
    .line 513
    return v11

    .line 514
    :pswitch_12
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 518
    .line 519
    .line 520
    move-result v0

    .line 521
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 522
    .line 523
    .line 524
    move-result v2

    .line 525
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 526
    .line 527
    .line 528
    move-result v3

    .line 529
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 530
    .line 531
    .line 532
    move-result v1

    .line 533
    invoke-interface {p0, v0, v2, v3, v1}, Lcom/autolink/adapterinterface/car/IALCar;->sendChargeTime(IIII)V

    .line 534
    .line 535
    .line 536
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    .line 538
    .line 539
    return v11

    .line 540
    :pswitch_13
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    invoke-interface {p0, v0}, Lcom/autolink/adapterinterface/car/IALCar;->sendHVACsignalsForSmartScene([B)V

    .line 548
    .line 549
    .line 550
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    .line 552
    .line 553
    return v11

    .line 554
    :pswitch_14
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    invoke-static {v0}, Lcom/autolink/adapterinterface/car/IALCarEngineSpeedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/car/IALCarEngineSpeedListener;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    invoke-interface {p0, v0}, Lcom/autolink/adapterinterface/car/IALCar;->unregisterCarEngineSpeedListener(Lcom/autolink/adapterinterface/car/IALCarEngineSpeedListener;)V

    .line 566
    .line 567
    .line 568
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    .line 570
    .line 571
    return v11

    .line 572
    :pswitch_15
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    invoke-static {v0}, Lcom/autolink/adapterinterface/car/IALCarEngineSpeedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/car/IALCarEngineSpeedListener;

    .line 580
    .line 581
    .line 582
    move-result-object v0

    .line 583
    invoke-interface {p0, v0}, Lcom/autolink/adapterinterface/car/IALCar;->registerCarEngineSpeedListener(Lcom/autolink/adapterinterface/car/IALCarEngineSpeedListener;)V

    .line 584
    .line 585
    .line 586
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    .line 588
    .line 589
    return v11

    .line 590
    :pswitch_16
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 594
    .line 595
    .line 596
    move-result-object v0

    .line 597
    invoke-static {v0}, Lcom/autolink/adapterinterface/car/IALCarWindListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/car/IALCarWindListener;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    invoke-interface {p0, v0}, Lcom/autolink/adapterinterface/car/IALCar;->unregisterCarWindListener(Lcom/autolink/adapterinterface/car/IALCarWindListener;)V

    .line 602
    .line 603
    .line 604
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    .line 606
    .line 607
    return v11

    .line 608
    :pswitch_17
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 612
    .line 613
    .line 614
    move-result-object v0

    .line 615
    invoke-static {v0}, Lcom/autolink/adapterinterface/car/IALCarWindListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/car/IALCarWindListener;

    .line 616
    .line 617
    .line 618
    move-result-object v0

    .line 619
    invoke-interface {p0, v0}, Lcom/autolink/adapterinterface/car/IALCar;->registerCarWindListener(Lcom/autolink/adapterinterface/car/IALCarWindListener;)V

    .line 620
    .line 621
    .line 622
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 623
    .line 624
    .line 625
    return v11

    .line 626
    :pswitch_18
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 630
    .line 631
    .line 632
    move-result-object v0

    .line 633
    invoke-static {v0}, Lcom/autolink/adapterinterface/car/IALCarTyreListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/car/IALCarTyreListener;

    .line 634
    .line 635
    .line 636
    move-result-object v0

    .line 637
    invoke-interface {p0, v0}, Lcom/autolink/adapterinterface/car/IALCar;->unregisterCarTyreListener(Lcom/autolink/adapterinterface/car/IALCarTyreListener;)V

    .line 638
    .line 639
    .line 640
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    .line 642
    .line 643
    return v11

    .line 644
    :pswitch_19
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 645
    .line 646
    .line 647
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    invoke-static {v0}, Lcom/autolink/adapterinterface/car/IALCarTyreListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/car/IALCarTyreListener;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    invoke-interface {p0, v0}, Lcom/autolink/adapterinterface/car/IALCar;->registerCarTyreListener(Lcom/autolink/adapterinterface/car/IALCarTyreListener;)V

    .line 656
    .line 657
    .line 658
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    .line 660
    .line 661
    return v11

    .line 662
    :pswitch_1a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 663
    .line 664
    .line 665
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    invoke-static {v0}, Lcom/autolink/adapterinterface/car/IALCarSteerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/car/IALCarSteerListener;

    .line 670
    .line 671
    .line 672
    move-result-object v0

    .line 673
    invoke-interface {p0, v0}, Lcom/autolink/adapterinterface/car/IALCar;->unregisterCarSteerListener(Lcom/autolink/adapterinterface/car/IALCarSteerListener;)V

    .line 674
    .line 675
    .line 676
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    .line 678
    .line 679
    return v11

    .line 680
    :pswitch_1b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 681
    .line 682
    .line 683
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 684
    .line 685
    .line 686
    move-result-object v0

    .line 687
    invoke-static {v0}, Lcom/autolink/adapterinterface/car/IALCarSteerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/car/IALCarSteerListener;

    .line 688
    .line 689
    .line 690
    move-result-object v0

    .line 691
    invoke-interface {p0, v0}, Lcom/autolink/adapterinterface/car/IALCar;->registerCarSteerListener(Lcom/autolink/adapterinterface/car/IALCarSteerListener;)V

    .line 692
    .line 693
    .line 694
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    .line 696
    .line 697
    return v11

    .line 698
    :pswitch_1c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 699
    .line 700
    .line 701
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 702
    .line 703
    .line 704
    move-result-object v0

    .line 705
    invoke-static {v0}, Lcom/autolink/adapterinterface/car/IALCarSpeedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/car/IALCarSpeedListener;

    .line 706
    .line 707
    .line 708
    move-result-object v0

    .line 709
    invoke-interface {p0, v0}, Lcom/autolink/adapterinterface/car/IALCar;->unregisterCarSpeedListener(Lcom/autolink/adapterinterface/car/IALCarSpeedListener;)V

    .line 710
    .line 711
    .line 712
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    .line 714
    .line 715
    return v11

    .line 716
    :pswitch_1d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 717
    .line 718
    .line 719
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 720
    .line 721
    .line 722
    move-result-object v0

    .line 723
    invoke-static {v0}, Lcom/autolink/adapterinterface/car/IALCarSpeedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/car/IALCarSpeedListener;

    .line 724
    .line 725
    .line 726
    move-result-object v0

    .line 727
    invoke-interface {p0, v0}, Lcom/autolink/adapterinterface/car/IALCar;->registerCarSpeedListener(Lcom/autolink/adapterinterface/car/IALCarSpeedListener;)V

    .line 728
    .line 729
    .line 730
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    .line 732
    .line 733
    return v11

    .line 734
    :pswitch_1e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 735
    .line 736
    .line 737
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 738
    .line 739
    .line 740
    move-result-object v0

    .line 741
    invoke-static {v0}, Lcom/autolink/adapterinterface/car/IALCarExtPropertyListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/car/IALCarExtPropertyListener;

    .line 742
    .line 743
    .line 744
    move-result-object v0

    .line 745
    invoke-interface {p0, v0}, Lcom/autolink/adapterinterface/car/IALCar;->unregisterExtPropertyListener(Lcom/autolink/adapterinterface/car/IALCarExtPropertyListener;)V

    .line 746
    .line 747
    .line 748
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 749
    .line 750
    .line 751
    return v11

    .line 752
    :pswitch_1f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 753
    .line 754
    .line 755
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 756
    .line 757
    .line 758
    move-result-object v0

    .line 759
    invoke-static {v0}, Lcom/autolink/adapterinterface/car/IALCarExtPropertyListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/car/IALCarExtPropertyListener;

    .line 760
    .line 761
    .line 762
    move-result-object v0

    .line 763
    invoke-interface {p0, v0}, Lcom/autolink/adapterinterface/car/IALCar;->registerExtPropertyListener(Lcom/autolink/adapterinterface/car/IALCarExtPropertyListener;)V

    .line 764
    .line 765
    .line 766
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    .line 768
    .line 769
    return v11

    .line 770
    :pswitch_20
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 771
    .line 772
    .line 773
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 774
    .line 775
    .line 776
    move-result v0

    .line 777
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 778
    .line 779
    .line 780
    move-result v1

    .line 781
    invoke-interface {p0, v0, v1}, Lcom/autolink/adapterinterface/car/IALCar;->controlFraganceConcentration(II)V

    .line 782
    .line 783
    .line 784
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    .line 786
    .line 787
    return v11

    .line 788
    :pswitch_21
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 789
    .line 790
    .line 791
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 792
    .line 793
    .line 794
    move-result v0

    .line 795
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 796
    .line 797
    .line 798
    move-result v1

    .line 799
    invoke-interface {p0, v0, v1}, Lcom/autolink/adapterinterface/car/IALCar;->controlUltravioletLuminance(II)V

    .line 800
    .line 801
    .line 802
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 803
    .line 804
    .line 805
    return v11

    .line 806
    :pswitch_22
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 807
    .line 808
    .line 809
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 810
    .line 811
    .line 812
    move-result v0

    .line 813
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 814
    .line 815
    .line 816
    move-result v2

    .line 817
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 818
    .line 819
    .line 820
    move-result v3

    .line 821
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 822
    .line 823
    .line 824
    move-result v1

    .line 825
    invoke-interface {p0, v0, v2, v3, v1}, Lcom/autolink/adapterinterface/car/IALCar;->setMultiWindow(IIII)V

    .line 826
    .line 827
    .line 828
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 829
    .line 830
    .line 831
    return v11

    .line 832
    :pswitch_23
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 833
    .line 834
    .line 835
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 836
    .line 837
    .line 838
    move-result v0

    .line 839
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 840
    .line 841
    .line 842
    move-result v1

    .line 843
    invoke-interface {p0, v0, v1}, Lcom/autolink/adapterinterface/car/IALCar;->setIntPropertyReduceLog(II)I

    .line 844
    .line 845
    .line 846
    move-result v0

    .line 847
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 848
    .line 849
    .line 850
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 851
    .line 852
    .line 853
    return v11

    .line 854
    :pswitch_24
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 855
    .line 856
    .line 857
    invoke-interface {p0}, Lcom/autolink/adapterinterface/car/IALCar;->factoryResetForAL()V

    .line 858
    .line 859
    .line 860
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 861
    .line 862
    .line 863
    return v11

    .line 864
    :pswitch_25
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 865
    .line 866
    .line 867
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 868
    .line 869
    .line 870
    move-result v0

    .line 871
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 872
    .line 873
    .line 874
    move-result v1

    .line 875
    invoke-interface {p0, v0, v1}, Lcom/autolink/adapterinterface/car/IALCar;->getFloatProperty(II)F

    .line 876
    .line 877
    .line 878
    move-result v0

    .line 879
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 880
    .line 881
    .line 882
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 883
    .line 884
    .line 885
    return v11

    .line 886
    :pswitch_26
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 887
    .line 888
    .line 889
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 890
    .line 891
    .line 892
    move-result-object v0

    .line 893
    invoke-static {v0}, Lcom/autolink/adapterinterface/car/IALCarAVMPropertyListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/car/IALCarAVMPropertyListener;

    .line 894
    .line 895
    .line 896
    move-result-object v0

    .line 897
    invoke-interface {p0, v0}, Lcom/autolink/adapterinterface/car/IALCar;->unregisterAVMPropertyListener(Lcom/autolink/adapterinterface/car/IALCarAVMPropertyListener;)V

    .line 898
    .line 899
    .line 900
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 901
    .line 902
    .line 903
    return v11

    .line 904
    :pswitch_27
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 905
    .line 906
    .line 907
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 908
    .line 909
    .line 910
    move-result-object v0

    .line 911
    invoke-static {v0}, Lcom/autolink/adapterinterface/car/IALCarAVMPropertyListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/car/IALCarAVMPropertyListener;

    .line 912
    .line 913
    .line 914
    move-result-object v0

    .line 915
    invoke-interface {p0, v0}, Lcom/autolink/adapterinterface/car/IALCar;->registerAVMPropertyListener(Lcom/autolink/adapterinterface/car/IALCarAVMPropertyListener;)V

    .line 916
    .line 917
    .line 918
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 919
    .line 920
    .line 921
    return v11

    .line 922
    :pswitch_28
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 923
    .line 924
    .line 925
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 926
    .line 927
    .line 928
    move-result-object v0

    .line 929
    invoke-static {v0}, Lcom/autolink/adapterinterface/car/IALCarVehicleControlPropertyListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/car/IALCarVehicleControlPropertyListener;

    .line 930
    .line 931
    .line 932
    move-result-object v0

    .line 933
    invoke-interface {p0, v0}, Lcom/autolink/adapterinterface/car/IALCar;->unregisterVehicleControlPropertyListener(Lcom/autolink/adapterinterface/car/IALCarVehicleControlPropertyListener;)V

    .line 934
    .line 935
    .line 936
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 937
    .line 938
    .line 939
    return v11

    .line 940
    :pswitch_29
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 941
    .line 942
    .line 943
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 944
    .line 945
    .line 946
    move-result-object v0

    .line 947
    invoke-static {v0}, Lcom/autolink/adapterinterface/car/IALCarVehicleControlPropertyListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/car/IALCarVehicleControlPropertyListener;

    .line 948
    .line 949
    .line 950
    move-result-object v0

    .line 951
    invoke-interface {p0, v0}, Lcom/autolink/adapterinterface/car/IALCar;->registerVehicleControlPropertyListener(Lcom/autolink/adapterinterface/car/IALCarVehicleControlPropertyListener;)V

    .line 952
    .line 953
    .line 954
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 955
    .line 956
    .line 957
    return v11

    .line 958
    :pswitch_2a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 959
    .line 960
    .line 961
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 962
    .line 963
    .line 964
    move-result-object v0

    .line 965
    invoke-static {v0}, Lcom/autolink/adapterinterface/car/IALCarHvacPropertyListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/car/IALCarHvacPropertyListener;

    .line 966
    .line 967
    .line 968
    move-result-object v0

    .line 969
    invoke-interface {p0, v0}, Lcom/autolink/adapterinterface/car/IALCar;->unregisterHvacPropertyListener(Lcom/autolink/adapterinterface/car/IALCarHvacPropertyListener;)V

    .line 970
    .line 971
    .line 972
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 973
    .line 974
    .line 975
    return v11

    .line 976
    :pswitch_2b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 977
    .line 978
    .line 979
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 980
    .line 981
    .line 982
    move-result-object v0

    .line 983
    invoke-static {v0}, Lcom/autolink/adapterinterface/car/IALCarHvacPropertyListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/car/IALCarHvacPropertyListener;

    .line 984
    .line 985
    .line 986
    move-result-object v0

    .line 987
    invoke-interface {p0, v0}, Lcom/autolink/adapterinterface/car/IALCar;->registerHvacPropertyListener(Lcom/autolink/adapterinterface/car/IALCarHvacPropertyListener;)V

    .line 988
    .line 989
    .line 990
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 991
    .line 992
    .line 993
    return v11

    .line 994
    :pswitch_2c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 995
    .line 996
    .line 997
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 998
    .line 999
    .line 1000
    move-result v0

    .line 1001
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1002
    .line 1003
    .line 1004
    move-result v1

    .line 1005
    invoke-interface {p0, v0, v1}, Lcom/autolink/adapterinterface/car/IALCar;->getIntProperty(II)I

    .line 1006
    .line 1007
    .line 1008
    move-result v0

    .line 1009
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1010
    .line 1011
    .line 1012
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1013
    .line 1014
    .line 1015
    return v11

    .line 1016
    :pswitch_2d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1017
    .line 1018
    .line 1019
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1020
    .line 1021
    .line 1022
    move-result v0

    .line 1023
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1024
    .line 1025
    .line 1026
    move-result v2

    .line 1027
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1028
    .line 1029
    .line 1030
    move-result v1

    .line 1031
    invoke-interface {p0, v0, v2, v1}, Lcom/autolink/adapterinterface/car/IALCar;->setIntProperty(III)I

    .line 1032
    .line 1033
    .line 1034
    move-result v0

    .line 1035
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1036
    .line 1037
    .line 1038
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1039
    .line 1040
    .line 1041
    return v11

    .line 1042
    nop

    .line 1043
    :pswitch_data_0
    .packed-switch 0x1
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
.end method
