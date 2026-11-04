.class public abstract Lcom/hsae/autosdk/vehicle/IVehicleCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/hsae/autosdk/vehicle/IVehicleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hsae/autosdk/vehicle/IVehicleCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hsae/autosdk/vehicle/IVehicleCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hsae.autosdk.vehicle.IVehicleCallback"

.field static final TRANSACTION_keyLeaveCarRemind:I = 0x1f

.field static final TRANSACTION_onABSFaultResponse:I = 0x5

.field static final TRANSACTION_onAccStateResponse:I = 0x20

.field static final TRANSACTION_onAverageFuelConsumptionResponse:I = 0xb

.field static final TRANSACTION_onBatteryPowerResponse:I = 0x16

.field static final TRANSACTION_onBrakeForceResponse:I = 0xe

.field static final TRANSACTION_onDetectedEngineResponse:I = 0x2

.field static final TRANSACTION_onDoorResponse:I = 0x1d

.field static final TRANSACTION_onEPSDetectionResponse:I = 0x4

.field static final TRANSACTION_onEQPinData:I = 0x1a

.field static final TRANSACTION_onEngineRotatingSpeedResponse:I = 0xc

.field static final TRANSACTION_onHydraulicOilDetectedResponse:I = 0x1

.field static final TRANSACTION_onILLContStatusResponse:I = 0x13

.field static final TRANSACTION_onIgnResponse:I = 0x1b

.field static final TRANSACTION_onIllStateResponse:I = 0x12

.field static final TRANSACTION_onLaneWarningSensorInfoResponse:I = 0x6

.field static final TRANSACTION_onMROutPutStatusResponse:I = 0x14

.field static final TRANSACTION_onMeterSpeedChanged:I = 0x22

.field static final TRANSACTION_onOffScreenStateChanged:I = 0x21

.field static final TRANSACTION_onParkingResponse:I = 0x1e

.field static final TRANSACTION_onRemainingOil:I = 0xa

.field static final TRANSACTION_onSafetyBeltResponse:I = 0x19

.field static final TRANSACTION_onSteeringWheelAngleResponse:I = 0x9

.field static final TRANSACTION_onStreeringWheelReationSpeed:I = 0x1c

.field static final TRANSACTION_onThrottleEffortsResponse:I = 0xd

.field static final TRANSACTION_onTotalMileageResponse:I = 0x10

.field static final TRANSACTION_onTpmsInfoResponse:I = 0x18

.field static final TRANSACTION_onTurnSignalsInfoResponse:I = 0x11

.field static final TRANSACTION_onVDCDetectionResponse:I = 0x3

.field static final TRANSACTION_onVehicleGearInfoResponse:I = 0x7

.field static final TRANSACTION_onVehicleMileageInfoResponse:I = 0xf

.field static final TRANSACTION_onVehicleSpeedInfoResponse:I = 0x17

.field static final TRANSACTION_onVehicleSpeedPulseInfoResponse:I = 0x8

.field static final TRANSACTION_onWiperStateResponse:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.hsae.autosdk.vehicle.IVehicleCallback"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/vehicle/IVehicleCallback;
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
    const-string v0, "com.hsae.autosdk.vehicle.IVehicleCallback"

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
    instance-of v1, v0, Lcom/hsae/autosdk/vehicle/IVehicleCallback;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/hsae/autosdk/vehicle/IVehicleCallback;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/hsae/autosdk/vehicle/IVehicleCallback$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/hsae/autosdk/vehicle/IVehicleCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 9

    .line 1
    const v0, 0x5f4e5446

    .line 2
    .line 3
    .line 4
    const-string v1, "com.hsae.autosdk.vehicle.IVehicleCallback"

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/vehicle/IVehicleCallback;->onMeterSpeedChanged(F)V

    .line 30
    .line 31
    .line 32
    return v2

    .line 33
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    :cond_1
    invoke-interface {p0, v0}, Lcom/hsae/autosdk/vehicle/IVehicleCallback;->onOffScreenStateChanged(Z)V

    .line 44
    .line 45
    .line 46
    return v2

    .line 47
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    :cond_2
    invoke-interface {p0, v0}, Lcom/hsae/autosdk/vehicle/IVehicleCallback;->onAccStateResponse(Z)V

    .line 58
    .line 59
    .line 60
    return v2

    .line 61
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    const/4 v0, 0x1

    .line 71
    :cond_3
    invoke-interface {p0, v0}, Lcom/hsae/autosdk/vehicle/IVehicleCallback;->keyLeaveCarRemind(Z)V

    .line 72
    .line 73
    .line 74
    return v2

    .line 75
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/vehicle/IVehicleCallback;->onParkingResponse(I)V

    .line 83
    .line 84
    .line 85
    return v2

    .line 86
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    const/4 v4, 0x1

    .line 96
    goto :goto_0

    .line 97
    :cond_4
    const/4 v4, 0x0

    .line 98
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-eqz p1, :cond_5

    .line 103
    .line 104
    const/4 v5, 0x1

    .line 105
    goto :goto_1

    .line 106
    :cond_5
    const/4 v5, 0x0

    .line 107
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_6

    .line 112
    .line 113
    const/4 v6, 0x1

    .line 114
    goto :goto_2

    .line 115
    :cond_6
    const/4 v6, 0x0

    .line 116
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_7

    .line 121
    .line 122
    const/4 v7, 0x1

    .line 123
    goto :goto_3

    .line 124
    :cond_7
    const/4 v7, 0x0

    .line 125
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-eqz p1, :cond_8

    .line 130
    .line 131
    const/4 v8, 0x1

    .line 132
    goto :goto_4

    .line 133
    :cond_8
    const/4 v8, 0x0

    .line 134
    :goto_4
    move-object v3, p0

    .line 135
    invoke-interface/range {v3 .. v8}, Lcom/hsae/autosdk/vehicle/IVehicleCallback;->onDoorResponse(ZZZZZ)V

    .line 136
    .line 137
    .line 138
    return v2

    .line 139
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    invoke-interface {p0, p1, p2}, Lcom/hsae/autosdk/vehicle/IVehicleCallback;->onStreeringWheelReationSpeed(II)V

    .line 151
    .line 152
    .line 153
    return v2

    .line 154
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    if-eqz p1, :cond_9

    .line 162
    .line 163
    const/4 v0, 0x1

    .line 164
    :cond_9
    invoke-interface {p0, v0}, Lcom/hsae/autosdk/vehicle/IVehicleCallback;->onIgnResponse(Z)V

    .line 165
    .line 166
    .line 167
    return v2

    .line 168
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 176
    .line 177
    .line 178
    move-result p3

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 180
    .line 181
    .line 182
    move-result p4

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 184
    .line 185
    .line 186
    move-result p2

    .line 187
    invoke-interface {p0, p1, p3, p4, p2}, Lcom/hsae/autosdk/vehicle/IVehicleCallback;->onEQPinData(BBBB)V

    .line 188
    .line 189
    .line 190
    return v2

    .line 191
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 199
    .line 200
    .line 201
    move-result p2

    .line 202
    invoke-interface {p0, p1, p2}, Lcom/hsae/autosdk/vehicle/IVehicleCallback;->onSafetyBeltResponse(II)V

    .line 203
    .line 204
    .line 205
    return v2

    .line 206
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 214
    .line 215
    .line 216
    move-result p3

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 218
    .line 219
    .line 220
    move-result p2

    .line 221
    invoke-interface {p0, p1, p3, p2}, Lcom/hsae/autosdk/vehicle/IVehicleCallback;->onTpmsInfoResponse(III)V

    .line 222
    .line 223
    .line 224
    return v2

    .line 225
    :pswitch_b
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
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/vehicle/IVehicleCallback;->onVehicleSpeedInfoResponse(I)V

    .line 233
    .line 234
    .line 235
    return v2

    .line 236
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/vehicle/IVehicleCallback;->onBatteryPowerResponse(I)V

    .line 244
    .line 245
    .line 246
    return v2

    .line 247
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 251
    .line 252
    .line 253
    move-result p1

    .line 254
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/vehicle/IVehicleCallback;->onWiperStateResponse(I)V

    .line 255
    .line 256
    .line 257
    return v2

    .line 258
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 262
    .line 263
    .line 264
    move-result p1

    .line 265
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/vehicle/IVehicleCallback;->onMROutPutStatusResponse(I)V

    .line 266
    .line 267
    .line 268
    return v2

    .line 269
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 273
    .line 274
    .line 275
    move-result p1

    .line 276
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/vehicle/IVehicleCallback;->onILLContStatusResponse(I)V

    .line 277
    .line 278
    .line 279
    return v2

    .line 280
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 284
    .line 285
    .line 286
    move-result p1

    .line 287
    if-eqz p1, :cond_a

    .line 288
    .line 289
    const/4 p1, 0x1

    .line 290
    goto :goto_5

    .line 291
    :cond_a
    const/4 p1, 0x0

    .line 292
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 293
    .line 294
    .line 295
    move-result p3

    .line 296
    if-eqz p3, :cond_b

    .line 297
    .line 298
    const/4 p3, 0x1

    .line 299
    goto :goto_6

    .line 300
    :cond_b
    const/4 p3, 0x0

    .line 301
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 302
    .line 303
    .line 304
    move-result p4

    .line 305
    if-eqz p4, :cond_c

    .line 306
    .line 307
    const/4 p4, 0x1

    .line 308
    goto :goto_7

    .line 309
    :cond_c
    const/4 p4, 0x0

    .line 310
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 311
    .line 312
    .line 313
    move-result p2

    .line 314
    if-eqz p2, :cond_d

    .line 315
    .line 316
    const/4 v0, 0x1

    .line 317
    :cond_d
    invoke-interface {p0, p1, p3, p4, v0}, Lcom/hsae/autosdk/vehicle/IVehicleCallback;->onIllStateResponse(ZZZZ)V

    .line 318
    .line 319
    .line 320
    return v2

    .line 321
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 325
    .line 326
    .line 327
    move-result p1

    .line 328
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/vehicle/IVehicleCallback;->onTurnSignalsInfoResponse(I)V

    .line 329
    .line 330
    .line 331
    return v2

    .line 332
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 336
    .line 337
    .line 338
    move-result-wide p1

    .line 339
    invoke-interface {p0, p1, p2}, Lcom/hsae/autosdk/vehicle/IVehicleCallback;->onTotalMileageResponse(J)V

    .line 340
    .line 341
    .line 342
    return v2

    .line 343
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    .line 347
    .line 348
    .line 349
    move-result p1

    .line 350
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/vehicle/IVehicleCallback;->onVehicleMileageInfoResponse(F)V

    .line 351
    .line 352
    .line 353
    return v2

    .line 354
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 358
    .line 359
    .line 360
    move-result p1

    .line 361
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/vehicle/IVehicleCallback;->onBrakeForceResponse(I)V

    .line 362
    .line 363
    .line 364
    return v2

    .line 365
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 369
    .line 370
    .line 371
    move-result p1

    .line 372
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/vehicle/IVehicleCallback;->onThrottleEffortsResponse(I)V

    .line 373
    .line 374
    .line 375
    return v2

    .line 376
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    .line 380
    .line 381
    .line 382
    move-result p1

    .line 383
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/vehicle/IVehicleCallback;->onEngineRotatingSpeedResponse(F)V

    .line 384
    .line 385
    .line 386
    return v2

    .line 387
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    .line 391
    .line 392
    .line 393
    move-result p1

    .line 394
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/vehicle/IVehicleCallback;->onAverageFuelConsumptionResponse(F)V

    .line 395
    .line 396
    .line 397
    return v2

    .line 398
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 402
    .line 403
    .line 404
    move-result p1

    .line 405
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 406
    .line 407
    .line 408
    move-result p3

    .line 409
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 410
    .line 411
    .line 412
    move-result p4

    .line 413
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 414
    .line 415
    .line 416
    move-result p2

    .line 417
    invoke-interface {p0, p1, p3, p4, p2}, Lcom/hsae/autosdk/vehicle/IVehicleCallback;->onRemainingOil(IIII)V

    .line 418
    .line 419
    .line 420
    return v2

    .line 421
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 425
    .line 426
    .line 427
    move-result p1

    .line 428
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/vehicle/IVehicleCallback;->onSteeringWheelAngleResponse(I)V

    .line 429
    .line 430
    .line 431
    return v2

    .line 432
    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 436
    .line 437
    .line 438
    move-result p1

    .line 439
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/vehicle/IVehicleCallback;->onVehicleSpeedPulseInfoResponse(I)V

    .line 440
    .line 441
    .line 442
    return v2

    .line 443
    :pswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 447
    .line 448
    .line 449
    move-result p1

    .line 450
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/vehicle/IVehicleCallback;->onVehicleGearInfoResponse(I)V

    .line 451
    .line 452
    .line 453
    return v2

    .line 454
    :pswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 458
    .line 459
    .line 460
    move-result p1

    .line 461
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/vehicle/IVehicleCallback;->onLaneWarningSensorInfoResponse(I)V

    .line 462
    .line 463
    .line 464
    return v2

    .line 465
    :pswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 469
    .line 470
    .line 471
    move-result p1

    .line 472
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/vehicle/IVehicleCallback;->onABSFaultResponse(I)V

    .line 473
    .line 474
    .line 475
    return v2

    .line 476
    :pswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 480
    .line 481
    .line 482
    move-result p1

    .line 483
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/vehicle/IVehicleCallback;->onEPSDetectionResponse(I)V

    .line 484
    .line 485
    .line 486
    return v2

    .line 487
    :pswitch_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 491
    .line 492
    .line 493
    move-result p1

    .line 494
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/vehicle/IVehicleCallback;->onVDCDetectionResponse(I)V

    .line 495
    .line 496
    .line 497
    return v2

    .line 498
    :pswitch_20
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 502
    .line 503
    .line 504
    move-result p1

    .line 505
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/vehicle/IVehicleCallback;->onDetectedEngineResponse(I)V

    .line 506
    .line 507
    .line 508
    return v2

    .line 509
    :pswitch_21
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 513
    .line 514
    .line 515
    move-result p1

    .line 516
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/vehicle/IVehicleCallback;->onHydraulicOilDetectedResponse(I)V

    .line 517
    .line 518
    .line 519
    return v2

    .line 520
    nop

    .line 521
    :pswitch_data_0
    .packed-switch 0x1
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
