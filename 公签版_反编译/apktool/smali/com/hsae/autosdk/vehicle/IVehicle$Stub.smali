.class public abstract Lcom/hsae/autosdk/vehicle/IVehicle$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/hsae/autosdk/vehicle/IVehicle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hsae/autosdk/vehicle/IVehicle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hsae/autosdk/vehicle/IVehicle$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hsae.autosdk.vehicle.IVehicle"

.field static final TRANSACTION_getDoorState:I = 0x8

.field static final TRANSACTION_getGearId:I = 0x13

.field static final TRANSACTION_getIgnState:I = 0x9

.field static final TRANSACTION_getKeyLeaveCarState:I = 0x6

.field static final TRANSACTION_getMeterSpeed:I = 0x14

.field static final TRANSACTION_getOffScreenState:I = 0x10

.field static final TRANSACTION_getParkState:I = 0x7

.field static final TRANSACTION_getSaftBelt:I = 0xa

.field static final TRANSACTION_getSpeed:I = 0xc

.field static final TRANSACTION_getTpmsStatus:I = 0xb

.field static final TRANSACTION_getTurnLight:I = 0xd

.field static final TRANSACTION_getUpdateState:I = 0x12

.field static final TRANSACTION_getVehicleType:I = 0x5

.field static final TRANSACTION_isAccOn:I = 0x4

.field static final TRANSACTION_isL42PAVMType:I = 0xe

.field static final TRANSACTION_isSafetyLockEnabled:I = 0x3

.field static final TRANSACTION_registerVehicleCallback:I = 0x1

.field static final TRANSACTION_setOffScreenState:I = 0xf

.field static final TRANSACTION_setUpdateState:I = 0x11

.field static final TRANSACTION_unregisterVehicleCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.hsae.autosdk.vehicle.IVehicle"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/vehicle/IVehicle;
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
    const-string v0, "com.hsae.autosdk.vehicle.IVehicle"

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
    instance-of v1, v0, Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/hsae/autosdk/vehicle/IVehicle$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/hsae/autosdk/vehicle/IVehicle$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v1, "com.hsae.autosdk.vehicle.IVehicle"

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
    invoke-interface {p0}, Lcom/hsae/autosdk/vehicle/IVehicle;->getMeterSpeed()F

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

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
    invoke-interface {p0}, Lcom/hsae/autosdk/vehicle/IVehicle;->getGearId()I

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
    invoke-interface {p0}, Lcom/hsae/autosdk/vehicle/IVehicle;->getUpdateState()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

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
    invoke-interface {p0, v0}, Lcom/hsae/autosdk/vehicle/IVehicle;->setUpdateState(Z)V

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
    invoke-interface {p0}, Lcom/hsae/autosdk/vehicle/IVehicle;->getOffScreenState()Z

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-eqz p1, :cond_2

    .line 103
    .line 104
    const/4 v0, 0x1

    .line 105
    :cond_2
    invoke-interface {p0, v0}, Lcom/hsae/autosdk/vehicle/IVehicle;->setOffScreenState(Z)V

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
    invoke-interface {p0}, Lcom/hsae/autosdk/vehicle/IVehicle;->isL42PAVMType()Z

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
    invoke-interface {p0}, Lcom/hsae/autosdk/vehicle/IVehicle;->getTurnLight()I

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
    invoke-interface {p0}, Lcom/hsae/autosdk/vehicle/IVehicle;->getSpeed()I

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    .line 152
    .line 153
    return v2

    .line 154
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-interface {p0}, Lcom/hsae/autosdk/vehicle/IVehicle;->getTpmsStatus()[I

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 165
    .line 166
    .line 167
    return v2

    .line 168
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-interface {p0}, Lcom/hsae/autosdk/vehicle/IVehicle;->getSaftBelt()[I

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 179
    .line 180
    .line 181
    return v2

    .line 182
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-interface {p0}, Lcom/hsae/autosdk/vehicle/IVehicle;->getIgnState()Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    .line 194
    .line 195
    return v2

    .line 196
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-interface {p0}, Lcom/hsae/autosdk/vehicle/IVehicle;->getDoorState()[Z

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 207
    .line 208
    .line 209
    return v2

    .line 210
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-interface {p0}, Lcom/hsae/autosdk/vehicle/IVehicle;->getParkState()I

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    .line 222
    .line 223
    return v2

    .line 224
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-interface {p0}, Lcom/hsae/autosdk/vehicle/IVehicle;->getKeyLeaveCarState()Z

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    .line 236
    .line 237
    return v2

    .line 238
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-interface {p0}, Lcom/hsae/autosdk/vehicle/IVehicle;->getVehicleType()I

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    .line 250
    .line 251
    return v2

    .line 252
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-interface {p0}, Lcom/hsae/autosdk/vehicle/IVehicle;->isAccOn()Z

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    .line 264
    .line 265
    return v2

    .line 266
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-interface {p0}, Lcom/hsae/autosdk/vehicle/IVehicle;->isSafetyLockEnabled()Z

    .line 270
    .line 271
    .line 272
    move-result p1

    .line 273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    .line 278
    .line 279
    return v2

    .line 280
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    invoke-static {p1}, Lcom/hsae/autosdk/vehicle/IVehicleCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/vehicle/IVehicleCallback;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/vehicle/IVehicle;->unregisterVehicleCallback(Lcom/hsae/autosdk/vehicle/IVehicleCallback;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    .line 296
    .line 297
    return v2

    .line 298
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    invoke-static {p1}, Lcom/hsae/autosdk/vehicle/IVehicleCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/vehicle/IVehicleCallback;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object p4

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object p2

    .line 317
    invoke-interface {p0, p1, p4, p2}, Lcom/hsae/autosdk/vehicle/IVehicle;->registerVehicleCallback(Lcom/hsae/autosdk/vehicle/IVehicleCallback;Ljava/lang/String;Ljava/lang/String;)Z

    .line 318
    .line 319
    .line 320
    move-result p1

    .line 321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    .line 323
    .line 324
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    .line 326
    .line 327
    return v2

    .line 328
    nop

    .line 329
    :pswitch_data_0
    .packed-switch 0x1
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
