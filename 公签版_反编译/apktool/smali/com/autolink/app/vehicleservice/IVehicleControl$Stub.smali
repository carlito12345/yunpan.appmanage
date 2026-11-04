.class public abstract Lcom/autolink/app/vehicleservice/IVehicleControl$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/autolink/app/vehicleservice/IVehicleControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autolink/app/vehicleservice/IVehicleControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autolink/app/vehicleservice/IVehicleControl$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.autolink.app.vehicleservice.IVehicleControl"

.field static final TRANSACTION_geCarModelColor:I = 0xc

.field static final TRANSACTION_getChargeInfo:I = 0x7

.field static final TRANSACTION_getFloat:I = 0x6

.field static final TRANSACTION_getInt:I = 0x5

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_registerRemoteCallback:I = 0xe

.field static final TRANSACTION_setAppointmentTime:I = 0x9

.field static final TRANSACTION_setCarModelColor:I = 0xb

.field static final TRANSACTION_setCustomCarSeat:I = 0xd

.field static final TRANSACTION_setCustomWindow:I = 0x8

.field static final TRANSACTION_setFloat:I = 0x4

.field static final TRANSACTION_setFloatData:I = 0x10

.field static final TRANSACTION_setFloatDataImmediately:I = 0x12

.field static final TRANSACTION_setInt:I = 0x3

.field static final TRANSACTION_setIntData:I = 0xf

.field static final TRANSACTION_setIntDataImmediately:I = 0x11

.field static final TRANSACTION_setVehicleLicense:I = 0xa

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.autolink.app.vehicleservice.IVehicleControl"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/autolink/app/vehicleservice/IVehicleControl;
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
    const-string v0, "com.autolink.app.vehicleservice.IVehicleControl"

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
    instance-of v1, v0, Lcom/autolink/app/vehicleservice/IVehicleControl;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/autolink/app/vehicleservice/IVehicleControl;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/autolink/app/vehicleservice/IVehicleControl$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/autolink/app/vehicleservice/IVehicleControl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public static getDefaultImpl()Lcom/autolink/app/vehicleservice/IVehicleControl;
    .locals 1

    .line 1
    sget-object v0, Lcom/autolink/app/vehicleservice/IVehicleControl$Stub$Proxy;->sDefaultImpl:Lcom/autolink/app/vehicleservice/IVehicleControl;

    .line 2
    .line 3
    return-object v0
.end method

.method public static setDefaultImpl(Lcom/autolink/app/vehicleservice/IVehicleControl;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/autolink/app/vehicleservice/IVehicleControl$Stub$Proxy;->sDefaultImpl:Lcom/autolink/app/vehicleservice/IVehicleControl;

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
    sput-object p0, Lcom/autolink/app/vehicleservice/IVehicleControl$Stub$Proxy;->sDefaultImpl:Lcom/autolink/app/vehicleservice/IVehicleControl;

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
    .locals 4

    .line 1
    const v0, 0x5f4e5446

    .line 2
    .line 3
    .line 4
    const-string v1, "com.autolink.app.vehicleservice.IVehicleControl"

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
    const/4 v3, 0x0

    .line 15
    packed-switch p1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-interface {p0, p1, p3, p2}, Lcom/autolink/app/vehicleservice/IVehicleControl;->setFloatDataImmediately(IFLjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return v2

    .line 42
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-interface {p0, p1, p3, p2}, Lcom/autolink/app/vehicleservice/IVehicleControl;->setIntDataImmediately(IILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return v2

    .line 61
    :pswitch_2
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
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    .line 69
    .line 70
    .line 71
    move-result p3

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-interface {p0, p1, p3, p2}, Lcom/autolink/app/vehicleservice/IVehicleControl;->setFloatData(IFLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return v2

    .line 80
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 88
    .line 89
    .line 90
    move-result p3

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-interface {p0, p1, p3, p2}, Lcom/autolink/app/vehicleservice/IVehicleControl;->setIntData(IILjava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return v2

    .line 99
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-static {p1}, Lcom/autolink/app/vehicleservice/IVehicleControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/app/vehicleservice/IVehicleControlCallback;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 111
    .line 112
    .line 113
    move-result-object p3

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-interface {p0, p1, p3, p2}, Lcom/autolink/app/vehicleservice/IVehicleControl;->registerRemoteCallback(Lcom/autolink/app/vehicleservice/IVehicleControlCallback;[ILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return v2

    .line 122
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 130
    .line 131
    .line 132
    move-result p3

    .line 133
    if-eqz p3, :cond_1

    .line 134
    .line 135
    sget-object p3, Lcom/autolink/app/vehicleservice/CustomCarSeatBean;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 136
    .line 137
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    move-object v3, p2

    .line 142
    check-cast v3, Lcom/autolink/app/vehicleservice/CustomCarSeatBean;

    .line 143
    .line 144
    :cond_1
    invoke-interface {p0, p1, v3}, Lcom/autolink/app/vehicleservice/IVehicleControl;->setCustomCarSeat(ILcom/autolink/app/vehicleservice/CustomCarSeatBean;)V

    .line 145
    .line 146
    .line 147
    return v2

    .line 148
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    invoke-interface {p0, p1}, Lcom/autolink/app/vehicleservice/IVehicleControl;->geCarModelColor(I)Lcom/autolink/app/vehicleservice/CarModelColorBean;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    .line 161
    .line 162
    if-eqz p1, :cond_2

    .line 163
    .line 164
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, p3, v2}, Lcom/autolink/app/vehicleservice/CarModelColorBean;->writeToParcel(Landroid/os/Parcel;I)V

    .line 168
    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    .line 173
    .line 174
    :goto_0
    return v2

    .line 175
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 183
    .line 184
    .line 185
    move-result p3

    .line 186
    if-eqz p3, :cond_3

    .line 187
    .line 188
    sget-object p3, Lcom/autolink/app/vehicleservice/CarModelColorBean;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 189
    .line 190
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    move-object v3, p2

    .line 195
    check-cast v3, Lcom/autolink/app/vehicleservice/CarModelColorBean;

    .line 196
    .line 197
    :cond_3
    invoke-interface {p0, p1, v3}, Lcom/autolink/app/vehicleservice/IVehicleControl;->setCarModelColor(ILcom/autolink/app/vehicleservice/CarModelColorBean;)V

    .line 198
    .line 199
    .line 200
    return v2

    .line 201
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 209
    .line 210
    .line 211
    move-result p3

    .line 212
    if-eqz p3, :cond_4

    .line 213
    .line 214
    sget-object p3, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 215
    .line 216
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    move-object v3, p2

    .line 221
    check-cast v3, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;

    .line 222
    .line 223
    :cond_4
    invoke-interface {p0, p1, v3}, Lcom/autolink/app/vehicleservice/IVehicleControl;->setVehicleLicense(ILcom/autolink/app/vehicleservice/VehicleLicenseBean;)V

    .line 224
    .line 225
    .line 226
    return v2

    .line 227
    :pswitch_9
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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 235
    .line 236
    .line 237
    move-result p3

    .line 238
    if-eqz p3, :cond_5

    .line 239
    .line 240
    sget-object p3, Lcom/autolink/app/vehicleservice/AppointmentTimeBean;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 241
    .line 242
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object p2

    .line 246
    move-object v3, p2

    .line 247
    check-cast v3, Lcom/autolink/app/vehicleservice/AppointmentTimeBean;

    .line 248
    .line 249
    :cond_5
    invoke-interface {p0, p1, v3}, Lcom/autolink/app/vehicleservice/IVehicleControl;->setAppointmentTime(ILcom/autolink/app/vehicleservice/AppointmentTimeBean;)V

    .line 250
    .line 251
    .line 252
    return v2

    .line 253
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 257
    .line 258
    .line 259
    move-result p1

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 261
    .line 262
    .line 263
    move-result p3

    .line 264
    if-eqz p3, :cond_6

    .line 265
    .line 266
    sget-object p3, Lcom/autolink/app/vehicleservice/CustomWindowBean;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 267
    .line 268
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object p2

    .line 272
    move-object v3, p2

    .line 273
    check-cast v3, Lcom/autolink/app/vehicleservice/CustomWindowBean;

    .line 274
    .line 275
    :cond_6
    invoke-interface {p0, p1, v3}, Lcom/autolink/app/vehicleservice/IVehicleControl;->setCustomWindow(ILcom/autolink/app/vehicleservice/CustomWindowBean;)V

    .line 276
    .line 277
    .line 278
    return v2

    .line 279
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    invoke-interface {p0, p1}, Lcom/autolink/app/vehicleservice/IVehicleControl;->getChargeInfo(I)Lcom/autolink/app/vehicleservice/ChargeInfoBean;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    .line 292
    .line 293
    if-eqz p1, :cond_7

    .line 294
    .line 295
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p1, p3, v2}, Lcom/autolink/app/vehicleservice/ChargeInfoBean;->writeToParcel(Landroid/os/Parcel;I)V

    .line 299
    .line 300
    .line 301
    goto :goto_1

    .line 302
    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    .line 304
    .line 305
    :goto_1
    return v2

    .line 306
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 310
    .line 311
    .line 312
    move-result p1

    .line 313
    invoke-interface {p0, p1}, Lcom/autolink/app/vehicleservice/IVehicleControl;->getFloat(I)F

    .line 314
    .line 315
    .line 316
    move-result p1

    .line 317
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 321
    .line 322
    .line 323
    return v2

    .line 324
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 328
    .line 329
    .line 330
    move-result p1

    .line 331
    invoke-interface {p0, p1}, Lcom/autolink/app/vehicleservice/IVehicleControl;->getInt(I)I

    .line 332
    .line 333
    .line 334
    move-result p1

    .line 335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    .line 337
    .line 338
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    .line 340
    .line 341
    return v2

    .line 342
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 346
    .line 347
    .line 348
    move-result p1

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    .line 350
    .line 351
    .line 352
    move-result p2

    .line 353
    invoke-interface {p0, p1, p2}, Lcom/autolink/app/vehicleservice/IVehicleControl;->setFloat(IF)V

    .line 354
    .line 355
    .line 356
    return v2

    .line 357
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 361
    .line 362
    .line 363
    move-result p1

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 365
    .line 366
    .line 367
    move-result p2

    .line 368
    invoke-interface {p0, p1, p2}, Lcom/autolink/app/vehicleservice/IVehicleControl;->setInt(II)V

    .line 369
    .line 370
    .line 371
    return v2

    .line 372
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 376
    .line 377
    .line 378
    move-result-object p1

    .line 379
    invoke-static {p1}, Lcom/autolink/app/vehicleservice/IVehicleControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/app/vehicleservice/IVehicleControlCallback;

    .line 380
    .line 381
    .line 382
    move-result-object p1

    .line 383
    invoke-interface {p0, p1}, Lcom/autolink/app/vehicleservice/IVehicleControl;->unregisterCallback(Lcom/autolink/app/vehicleservice/IVehicleControlCallback;)V

    .line 384
    .line 385
    .line 386
    return v2

    .line 387
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 391
    .line 392
    .line 393
    move-result-object p1

    .line 394
    invoke-static {p1}, Lcom/autolink/app/vehicleservice/IVehicleControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/app/vehicleservice/IVehicleControlCallback;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 399
    .line 400
    .line 401
    move-result-object p2

    .line 402
    invoke-interface {p0, p1, p2}, Lcom/autolink/app/vehicleservice/IVehicleControl;->registerCallback(Lcom/autolink/app/vehicleservice/IVehicleControlCallback;[I)V

    .line 403
    .line 404
    .line 405
    return v2

    .line 406
    nop

    .line 407
    :pswitch_data_0
    .packed-switch 0x1
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
