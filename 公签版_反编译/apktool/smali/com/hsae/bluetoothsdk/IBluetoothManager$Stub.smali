.class public abstract Lcom/hsae/bluetoothsdk/IBluetoothManager$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/hsae/bluetoothsdk/IBluetoothManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hsae/bluetoothsdk/IBluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hsae/bluetoothsdk/IBluetoothManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hsae.bluetoothsdk.IBluetoothManager"

.field static final TRANSACTION_acceptConnect:I = 0x19

.field static final TRANSACTION_acceptPair:I = 0xc

.field static final TRANSACTION_btPowerOff:I = 0x6

.field static final TRANSACTION_btPowerOn:I = 0x5

.field static final TRANSACTION_connect:I = 0x10

.field static final TRANSACTION_connectA2dp:I = 0x12

.field static final TRANSACTION_connectHfp:I = 0x11

.field static final TRANSACTION_disConnect:I = 0x14

.field static final TRANSACTION_disConnectA2dp:I = 0x15

.field static final TRANSACTION_getBatteryCharge:I = 0x1d

.field static final TRANSACTION_getConnectDeviceAddress:I = 0x17

.field static final TRANSACTION_getConnectDeviceName:I = 0x16

.field static final TRANSACTION_getConnectStatus:I = 0x13

.field static final TRANSACTION_getDeviceName:I = 0x1c

.field static final TRANSACTION_getPairedDevices:I = 0x1b

.field static final TRANSACTION_getPowerStatus:I = 0x7

.field static final TRANSACTION_getSdkVersion:I = 0x20

.field static final TRANSACTION_getSignalValue:I = 0x1e

.field static final TRANSACTION_isParing:I = 0xe

.field static final TRANSACTION_isSearching:I = 0xa

.field static final TRANSACTION_pairDevice:I = 0xb

.field static final TRANSACTION_registCallback:I = 0x1

.field static final TRANSACTION_rejectConnect:I = 0x1a

.field static final TRANSACTION_rejectPair:I = 0xd

.field static final TRANSACTION_removePair:I = 0xf

.field static final TRANSACTION_search:I = 0x8

.field static final TRANSACTION_setAutoPowerOn:I = 0x1f

.field static final TRANSACTION_setBtName:I = 0x4

.field static final TRANSACTION_stopSearch:I = 0x9

.field static final TRANSACTION_supportInbandRing:I = 0x18

.field static final TRANSACTION_supportMusic:I = 0x21

.field static final TRANSACTION_supportPhone:I = 0x22

.field static final TRANSACTION_unBindService:I = 0x3

.field static final TRANSACTION_unregistCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.hsae.bluetoothsdk.IBluetoothManager"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hsae/bluetoothsdk/IBluetoothManager;
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
    const-string v0, "com.hsae.bluetoothsdk.IBluetoothManager"

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
    instance-of v1, v0, Lcom/hsae/bluetoothsdk/IBluetoothManager;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/hsae/bluetoothsdk/IBluetoothManager;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/hsae/bluetoothsdk/IBluetoothManager$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/hsae/bluetoothsdk/IBluetoothManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v1, "com.hsae.bluetoothsdk.IBluetoothManager"

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
    invoke-interface {p0}, Lcom/hsae/bluetoothsdk/IBluetoothManager;->supportPhone()Z

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
    invoke-interface {p0}, Lcom/hsae/bluetoothsdk/IBluetoothManager;->supportMusic()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    .line 48
    .line 49
    return v2

    .line 50
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p0}, Lcom/hsae/bluetoothsdk/IBluetoothManager;->getSdkVersion()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return v2

    .line 64
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_1

    .line 72
    .line 73
    const/4 v0, 0x1

    .line 74
    :cond_1
    invoke-interface {p0, v0}, Lcom/hsae/bluetoothsdk/IBluetoothManager;->setAutoPowerOn(Z)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    .line 79
    .line 80
    return v2

    .line 81
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-interface {p0}, Lcom/hsae/bluetoothsdk/IBluetoothManager;->getSignalValue()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    .line 93
    .line 94
    return v2

    .line 95
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-interface {p0}, Lcom/hsae/bluetoothsdk/IBluetoothManager;->getBatteryCharge()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    .line 107
    .line 108
    return v2

    .line 109
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-interface {p0}, Lcom/hsae/bluetoothsdk/IBluetoothManager;->getDeviceName()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    return v2

    .line 123
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-interface {p0}, Lcom/hsae/bluetoothsdk/IBluetoothManager;->getPairedDevices()Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 134
    .line 135
    .line 136
    return v2

    .line 137
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    invoke-interface {p0, p1}, Lcom/hsae/bluetoothsdk/IBluetoothManager;->rejectConnect(I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    .line 149
    .line 150
    return v2

    .line 151
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    invoke-interface {p0, p1}, Lcom/hsae/bluetoothsdk/IBluetoothManager;->acceptConnect(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    .line 163
    .line 164
    return v2

    .line 165
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-interface {p0}, Lcom/hsae/bluetoothsdk/IBluetoothManager;->supportInbandRing()Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    .line 177
    .line 178
    return v2

    .line 179
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-interface {p0}, Lcom/hsae/bluetoothsdk/IBluetoothManager;->getConnectDeviceAddress()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    return v2

    .line 193
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-interface {p0}, Lcom/hsae/bluetoothsdk/IBluetoothManager;->getConnectDeviceName()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    return v2

    .line 207
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-interface {p0}, Lcom/hsae/bluetoothsdk/IBluetoothManager;->disConnectA2dp()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    .line 215
    .line 216
    return v2

    .line 217
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-interface {p0}, Lcom/hsae/bluetoothsdk/IBluetoothManager;->disConnect()V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    .line 225
    .line 226
    return v2

    .line 227
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 231
    .line 232
    .line 233
    move-result p1

    .line 234
    invoke-interface {p0, p1}, Lcom/hsae/bluetoothsdk/IBluetoothManager;->getConnectStatus(I)I

    .line 235
    .line 236
    .line 237
    move-result p1

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    .line 243
    .line 244
    return v2

    .line 245
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    invoke-interface {p0, p1}, Lcom/hsae/bluetoothsdk/IBluetoothManager;->connectA2dp(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    .line 257
    .line 258
    return v2

    .line 259
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    invoke-interface {p0, p1}, Lcom/hsae/bluetoothsdk/IBluetoothManager;->connectHfp(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    .line 271
    .line 272
    return v2

    .line 273
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p2

    .line 284
    invoke-interface {p0, p1, p2}, Lcom/hsae/bluetoothsdk/IBluetoothManager;->connect(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    .line 289
    .line 290
    return v2

    .line 291
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    invoke-interface {p0, p1}, Lcom/hsae/bluetoothsdk/IBluetoothManager;->removePair(Ljava/lang/String;)I

    .line 299
    .line 300
    .line 301
    move-result p1

    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    .line 304
    .line 305
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    .line 307
    .line 308
    return v2

    .line 309
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-interface {p0}, Lcom/hsae/bluetoothsdk/IBluetoothManager;->isParing()Z

    .line 313
    .line 314
    .line 315
    move-result p1

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    .line 318
    .line 319
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    .line 321
    .line 322
    return v2

    .line 323
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 331
    .line 332
    .line 333
    move-result p2

    .line 334
    if-eqz p2, :cond_2

    .line 335
    .line 336
    const/4 v0, 0x1

    .line 337
    :cond_2
    invoke-interface {p0, p1, v0}, Lcom/hsae/bluetoothsdk/IBluetoothManager;->rejectPair(Ljava/lang/String;Z)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    .line 342
    .line 343
    return v2

    .line 344
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 352
    .line 353
    .line 354
    move-result p2

    .line 355
    if-eqz p2, :cond_3

    .line 356
    .line 357
    const/4 v0, 0x1

    .line 358
    :cond_3
    invoke-interface {p0, p1, v0}, Lcom/hsae/bluetoothsdk/IBluetoothManager;->acceptPair(Ljava/lang/String;Z)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    .line 363
    .line 364
    return v2

    .line 365
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object p1

    .line 372
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 373
    .line 374
    .line 375
    move-result p2

    .line 376
    invoke-interface {p0, p1, p2}, Lcom/hsae/bluetoothsdk/IBluetoothManager;->pairDevice(Ljava/lang/String;I)I

    .line 377
    .line 378
    .line 379
    move-result p1

    .line 380
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    .line 382
    .line 383
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    .line 385
    .line 386
    return v2

    .line 387
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    invoke-interface {p0}, Lcom/hsae/bluetoothsdk/IBluetoothManager;->isSearching()Z

    .line 391
    .line 392
    .line 393
    move-result p1

    .line 394
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    .line 396
    .line 397
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    .line 399
    .line 400
    return v2

    .line 401
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    invoke-interface {p0}, Lcom/hsae/bluetoothsdk/IBluetoothManager;->stopSearch()I

    .line 405
    .line 406
    .line 407
    move-result p1

    .line 408
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    .line 410
    .line 411
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    .line 413
    .line 414
    return v2

    .line 415
    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 419
    .line 420
    .line 421
    move-result p1

    .line 422
    if-eqz p1, :cond_4

    .line 423
    .line 424
    const/4 v0, 0x1

    .line 425
    :cond_4
    invoke-interface {p0, v0}, Lcom/hsae/bluetoothsdk/IBluetoothManager;->search(Z)I

    .line 426
    .line 427
    .line 428
    move-result p1

    .line 429
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    .line 431
    .line 432
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    .line 434
    .line 435
    return v2

    .line 436
    :pswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    invoke-interface {p0}, Lcom/hsae/bluetoothsdk/IBluetoothManager;->getPowerStatus()I

    .line 440
    .line 441
    .line 442
    move-result p1

    .line 443
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    .line 445
    .line 446
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    .line 448
    .line 449
    return v2

    .line 450
    :pswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    invoke-interface {p0}, Lcom/hsae/bluetoothsdk/IBluetoothManager;->btPowerOff()V

    .line 454
    .line 455
    .line 456
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    .line 458
    .line 459
    return v2

    .line 460
    :pswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    invoke-interface {p0}, Lcom/hsae/bluetoothsdk/IBluetoothManager;->btPowerOn()V

    .line 464
    .line 465
    .line 466
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    .line 468
    .line 469
    return v2

    .line 470
    :pswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object p1

    .line 477
    invoke-interface {p0, p1}, Lcom/hsae/bluetoothsdk/IBluetoothManager;->setBtName(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    .line 482
    .line 483
    return v2

    .line 484
    :pswitch_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    invoke-interface {p0}, Lcom/hsae/bluetoothsdk/IBluetoothManager;->unBindService()V

    .line 488
    .line 489
    .line 490
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    .line 492
    .line 493
    return v2

    .line 494
    :pswitch_20
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 498
    .line 499
    .line 500
    move-result-object p1

    .line 501
    invoke-static {p1}, Lcom/hsae/bluetoothsdk/IBluetoothCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/bluetoothsdk/IBluetoothCallback;

    .line 502
    .line 503
    .line 504
    move-result-object p1

    .line 505
    invoke-interface {p0, p1}, Lcom/hsae/bluetoothsdk/IBluetoothManager;->unregistCallback(Lcom/hsae/bluetoothsdk/IBluetoothCallback;)Z

    .line 506
    .line 507
    .line 508
    move-result p1

    .line 509
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    .line 511
    .line 512
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    .line 514
    .line 515
    return v2

    .line 516
    :pswitch_21
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 520
    .line 521
    .line 522
    move-result-object p1

    .line 523
    invoke-static {p1}, Lcom/hsae/bluetoothsdk/IBluetoothCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/bluetoothsdk/IBluetoothCallback;

    .line 524
    .line 525
    .line 526
    move-result-object p1

    .line 527
    invoke-interface {p0, p1}, Lcom/hsae/bluetoothsdk/IBluetoothManager;->registCallback(Lcom/hsae/bluetoothsdk/IBluetoothCallback;)Z

    .line 528
    .line 529
    .line 530
    move-result p1

    .line 531
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    .line 533
    .line 534
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 535
    .line 536
    .line 537
    return v2

    .line 538
    nop

    .line 539
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
