.class public abstract Lcom/autolink/adapterinterface/ITBoxManager$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/autolink/adapterinterface/ITBoxManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autolink/adapterinterface/ITBoxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autolink/adapterinterface/ITBoxManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.autolink.adapterinterface.ITBoxManager"

.field static final TRANSACTION_changeCallStateRequest:I = 0x15

.field static final TRANSACTION_chargeReserveSetRequest:I = 0x10

.field static final TRANSACTION_chargeReserveStatuReportResponse:I = 0x12

.field static final TRANSACTION_chargeReserveSyncResponse:I = 0x11

.field static final TRANSACTION_fotaUserComfirmResponse:I = 0xe

.field static final TRANSACTION_getCarModelConfig:I = 0xc

.field static final TRANSACTION_getGeneralInfo:I = 0x1a

.field static final TRANSACTION_getHardwareVersion:I = 0x6

.field static final TRANSACTION_getICCID:I = 0x5

.field static final TRANSACTION_getIMEI:I = 0xb

.field static final TRANSACTION_getIMSI:I = 0xa

.field static final TRANSACTION_getManufactureDate:I = 0x3

.field static final TRANSACTION_getNetworkType:I = 0x16

.field static final TRANSACTION_getPartNumber:I = 0x9

.field static final TRANSACTION_getSN:I = 0x4

.field static final TRANSACTION_getSignalStrength:I = 0x17

.field static final TRANSACTION_getSoftVersion:I = 0x7

.field static final TRANSACTION_getSupplierIdertifier:I = 0x8

.field static final TRANSACTION_getVinCode:I = 0x2

.field static final TRANSACTION_inquireChargeReserveRequest:I = 0x13

.field static final TRANSACTION_lightShowCtrlResponse:I = 0x14

.field static final TRANSACTION_networkStateRequest:I = 0x18

.field static final TRANSACTION_otaSubNodeRefreshNowResponse:I = 0xf

.field static final TRANSACTION_registerFotaListener:I = 0x26

.field static final TRANSACTION_registerPkiListner:I = 0x2c

.field static final TRANSACTION_registerRemoteListner:I = 0x28

.field static final TRANSACTION_registerRpaListner:I = 0x2a

.field static final TRANSACTION_registerTBoxCallback:I = 0x24

.field static final TRANSACTION_reportOtaSubNodeState:I = 0xd

.field static final TRANSACTION_sendCertificateStatusResp:I = 0x23

.field static final TRANSACTION_sendCommand:I = 0x1

.field static final TRANSACTION_sendDownloadCertificateRltReport:I = 0x22

.field static final TRANSACTION_sendGetCertResp:I = 0x21

.field static final TRANSACTION_sendGetGeneralInfoRequest:I = 0x19

.field static final TRANSACTION_sendRpaReport:I = 0x1c

.field static final TRANSACTION_sendRpaResp:I = 0x1b

.field static final TRANSACTION_sendSlotReport1:I = 0x1d

.field static final TRANSACTION_sendSlotReport2:I = 0x1e

.field static final TRANSACTION_sendSubNodeEnterFactory:I = 0x1f

.field static final TRANSACTION_sendSubNodeStartFactory:I = 0x20

.field static final TRANSACTION_unregisterFotaListener:I = 0x27

.field static final TRANSACTION_unregisterPkiListner:I = 0x2d

.field static final TRANSACTION_unregisterRemoteListner:I = 0x29

.field static final TRANSACTION_unregisterRpaListner:I = 0x2b

.field static final TRANSACTION_unregisterTBoxCallback:I = 0x25


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.autolink.adapterinterface.ITBoxManager"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/ITBoxManager;
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
    const-string v0, "com.autolink.adapterinterface.ITBoxManager"

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
    instance-of v1, v0, Lcom/autolink/adapterinterface/ITBoxManager;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/autolink/adapterinterface/ITBoxManager;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/autolink/adapterinterface/ITBoxManager$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/autolink/adapterinterface/ITBoxManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public static getDefaultImpl()Lcom/autolink/adapterinterface/ITBoxManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/autolink/adapterinterface/ITBoxManager$Stub$Proxy;->sDefaultImpl:Lcom/autolink/adapterinterface/ITBoxManager;

    .line 2
    .line 3
    return-object v0
.end method

.method public static setDefaultImpl(Lcom/autolink/adapterinterface/ITBoxManager;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/autolink/adapterinterface/ITBoxManager$Stub$Proxy;->sDefaultImpl:Lcom/autolink/adapterinterface/ITBoxManager;

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
    sput-object p0, Lcom/autolink/adapterinterface/ITBoxManager$Stub$Proxy;->sDefaultImpl:Lcom/autolink/adapterinterface/ITBoxManager;

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
    const-string v1, "com.autolink.adapterinterface.ITBoxManager"

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-static {p2}, Lcom/autolink/adapterinterface/IPkiServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/IPkiServiceListener;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-interface {p0, p1, p2}, Lcom/autolink/adapterinterface/ITBoxManager;->unregisterPkiListner(ILcom/autolink/adapterinterface/IPkiServiceListener;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 42
    .line 43
    .line 44
    return v2

    .line 45
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-static {p2}, Lcom/autolink/adapterinterface/IPkiServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/IPkiServiceListener;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-interface {p0, p1, p2}, Lcom/autolink/adapterinterface/ITBoxManager;->registerPkiListner(ILcom/autolink/adapterinterface/IPkiServiceListener;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    .line 69
    .line 70
    return v2

    .line 71
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-static {p2}, Lcom/autolink/adapterinterface/IRpaServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/IRpaServiceListener;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-interface {p0, p1, p2}, Lcom/autolink/adapterinterface/ITBoxManager;->unregisterRpaListner(ILcom/autolink/adapterinterface/IRpaServiceListener;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    .line 91
    .line 92
    return v2

    .line 93
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-static {p2}, Lcom/autolink/adapterinterface/IRpaServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/IRpaServiceListener;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    invoke-interface {p0, p1, p2}, Lcom/autolink/adapterinterface/ITBoxManager;->registerRpaListner(ILcom/autolink/adapterinterface/IRpaServiceListener;)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    .line 117
    .line 118
    return v2

    .line 119
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-static {p2}, Lcom/autolink/adapterinterface/ITBoxRemoteListner$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/ITBoxRemoteListner;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-interface {p0, p1, p2}, Lcom/autolink/adapterinterface/ITBoxManager;->unregisterRemoteListner(ILcom/autolink/adapterinterface/ITBoxRemoteListner;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    .line 139
    .line 140
    return v2

    .line 141
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-static {p2}, Lcom/autolink/adapterinterface/ITBoxRemoteListner$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/ITBoxRemoteListner;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-interface {p0, p1, p2}, Lcom/autolink/adapterinterface/ITBoxManager;->registerRemoteListner(ILcom/autolink/adapterinterface/ITBoxRemoteListner;)Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    .line 165
    .line 166
    return v2

    .line 167
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    invoke-static {p2}, Lcom/autolink/adapterinterface/IOtaStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/IOtaStateListener;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    invoke-interface {p0, p1, p2}, Lcom/autolink/adapterinterface/ITBoxManager;->unregisterFotaListener(ILcom/autolink/adapterinterface/IOtaStateListener;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    .line 187
    .line 188
    return v2

    .line 189
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    invoke-static {p2}, Lcom/autolink/adapterinterface/IOtaStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/IOtaStateListener;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    invoke-interface {p0, p1, p2}, Lcom/autolink/adapterinterface/ITBoxManager;->registerFotaListener(ILcom/autolink/adapterinterface/IOtaStateListener;)Z

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    .line 213
    .line 214
    return v2

    .line 215
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    invoke-static {p2}, Lcom/autolink/adapterinterface/ITBoxBaseListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/ITBoxBaseListener;

    .line 227
    .line 228
    .line 229
    move-result-object p2

    .line 230
    invoke-interface {p0, p1, p2}, Lcom/autolink/adapterinterface/ITBoxManager;->unregisterTBoxCallback(ILcom/autolink/adapterinterface/ITBoxBaseListener;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    .line 235
    .line 236
    return v2

    .line 237
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 241
    .line 242
    .line 243
    move-result p1

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 245
    .line 246
    .line 247
    move-result-object p2

    .line 248
    invoke-static {p2}, Lcom/autolink/adapterinterface/ITBoxBaseListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/ITBoxBaseListener;

    .line 249
    .line 250
    .line 251
    move-result-object p2

    .line 252
    invoke-interface {p0, p1, p2}, Lcom/autolink/adapterinterface/ITBoxManager;->registerTBoxCallback(ILcom/autolink/adapterinterface/ITBoxBaseListener;)Z

    .line 253
    .line 254
    .line 255
    move-result p1

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    .line 261
    .line 262
    return v2

    .line 263
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 271
    .line 272
    .line 273
    move-result p2

    .line 274
    invoke-interface {p0, p1, p2}, Lcom/autolink/adapterinterface/ITBoxManager;->sendCertificateStatusResp(II)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    .line 279
    .line 280
    return v2

    .line 281
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 285
    .line 286
    .line 287
    move-result p1

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 289
    .line 290
    .line 291
    move-result p2

    .line 292
    invoke-interface {p0, p1, p2}, Lcom/autolink/adapterinterface/ITBoxManager;->sendDownloadCertificateRltReport(II)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    .line 297
    .line 298
    return v2

    .line 299
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 303
    .line 304
    .line 305
    move-result p1

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 307
    .line 308
    .line 309
    move-result p2

    .line 310
    if-eqz p2, :cond_1

    .line 311
    .line 312
    const/4 v3, 0x1

    .line 313
    :cond_1
    invoke-interface {p0, p1, v3}, Lcom/autolink/adapterinterface/ITBoxManager;->sendGetCertResp(IZ)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    .line 318
    .line 319
    return v2

    .line 320
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 324
    .line 325
    .line 326
    move-result p1

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 328
    .line 329
    .line 330
    move-result p2

    .line 331
    if-eqz p2, :cond_2

    .line 332
    .line 333
    const/4 v3, 0x1

    .line 334
    :cond_2
    invoke-interface {p0, p1, v3}, Lcom/autolink/adapterinterface/ITBoxManager;->sendSubNodeStartFactory(IZ)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    .line 339
    .line 340
    return v2

    .line 341
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 345
    .line 346
    .line 347
    move-result p1

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 349
    .line 350
    .line 351
    move-result p4

    .line 352
    if-eqz p4, :cond_3

    .line 353
    .line 354
    sget-object p4, Lcom/autolink/adapterinterface/SubNodeEnter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 355
    .line 356
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object p2

    .line 360
    move-object v0, p2

    .line 361
    check-cast v0, Lcom/autolink/adapterinterface/SubNodeEnter;

    .line 362
    .line 363
    :cond_3
    invoke-interface {p0, p1, v0}, Lcom/autolink/adapterinterface/ITBoxManager;->sendSubNodeEnterFactory(ILcom/autolink/adapterinterface/SubNodeEnter;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    .line 368
    .line 369
    return v2

    .line 370
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 374
    .line 375
    .line 376
    move-result p1

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 378
    .line 379
    .line 380
    move-result p4

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 382
    .line 383
    .line 384
    move-result-object p2

    .line 385
    invoke-interface {p0, p1, p4, p2}, Lcom/autolink/adapterinterface/ITBoxManager;->sendSlotReport2(II[B)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    .line 390
    .line 391
    return v2

    .line 392
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 396
    .line 397
    .line 398
    move-result p1

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 400
    .line 401
    .line 402
    move-result p4

    .line 403
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 404
    .line 405
    .line 406
    move-result-object p2

    .line 407
    invoke-interface {p0, p1, p4, p2}, Lcom/autolink/adapterinterface/ITBoxManager;->sendSlotReport1(II[B)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    .line 412
    .line 413
    return v2

    .line 414
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 418
    .line 419
    .line 420
    move-result p1

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 422
    .line 423
    .line 424
    move-result p4

    .line 425
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 426
    .line 427
    .line 428
    move-result-object p2

    .line 429
    invoke-interface {p0, p1, p4, p2}, Lcom/autolink/adapterinterface/ITBoxManager;->sendRpaReport(II[B)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    .line 434
    .line 435
    return v2

    .line 436
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 440
    .line 441
    .line 442
    move-result p1

    .line 443
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 444
    .line 445
    .line 446
    move-result p4

    .line 447
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 448
    .line 449
    .line 450
    move-result p2

    .line 451
    if-eqz p2, :cond_4

    .line 452
    .line 453
    const/4 v3, 0x1

    .line 454
    :cond_4
    invoke-interface {p0, p1, p4, v3}, Lcom/autolink/adapterinterface/ITBoxManager;->sendRpaResp(IIZ)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    .line 459
    .line 460
    return v2

    .line 461
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    invoke-interface {p0}, Lcom/autolink/adapterinterface/ITBoxManager;->getGeneralInfo()Lcom/autolink/adapterinterface/GeneralInfo;

    .line 465
    .line 466
    .line 467
    move-result-object p1

    .line 468
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    .line 470
    .line 471
    if-eqz p1, :cond_5

    .line 472
    .line 473
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {p1, p3, v2}, Lcom/autolink/adapterinterface/GeneralInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 477
    .line 478
    .line 479
    goto :goto_0

    .line 480
    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    .line 482
    .line 483
    :goto_0
    return v2

    .line 484
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 488
    .line 489
    .line 490
    move-result p1

    .line 491
    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/ITBoxManager;->sendGetGeneralInfoRequest(I)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    .line 496
    .line 497
    return v2

    .line 498
    :pswitch_15
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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 506
    .line 507
    .line 508
    move-result p4

    .line 509
    if-eqz p4, :cond_6

    .line 510
    .line 511
    const/4 v3, 0x1

    .line 512
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 513
    .line 514
    .line 515
    move-result p2

    .line 516
    invoke-interface {p0, p1, v3, p2}, Lcom/autolink/adapterinterface/ITBoxManager;->networkStateRequest(IZI)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    .line 521
    .line 522
    return v2

    .line 523
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    invoke-interface {p0}, Lcom/autolink/adapterinterface/ITBoxManager;->getSignalStrength()I

    .line 527
    .line 528
    .line 529
    move-result p1

    .line 530
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    .line 532
    .line 533
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 534
    .line 535
    .line 536
    return v2

    .line 537
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    invoke-interface {p0}, Lcom/autolink/adapterinterface/ITBoxManager;->getNetworkType()I

    .line 541
    .line 542
    .line 543
    move-result p1

    .line 544
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    .line 546
    .line 547
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 548
    .line 549
    .line 550
    return v2

    .line 551
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 555
    .line 556
    .line 557
    move-result p1

    .line 558
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 559
    .line 560
    .line 561
    move-result p4

    .line 562
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 563
    .line 564
    .line 565
    move-result p2

    .line 566
    invoke-interface {p0, p1, p4, p2}, Lcom/autolink/adapterinterface/ITBoxManager;->changeCallStateRequest(III)V

    .line 567
    .line 568
    .line 569
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    .line 571
    .line 572
    return v2

    .line 573
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 577
    .line 578
    .line 579
    move-result p1

    .line 580
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 581
    .line 582
    .line 583
    move-result p4

    .line 584
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 585
    .line 586
    .line 587
    move-result p2

    .line 588
    invoke-interface {p0, p1, p4, p2}, Lcom/autolink/adapterinterface/ITBoxManager;->lightShowCtrlResponse(III)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    .line 593
    .line 594
    return v2

    .line 595
    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 599
    .line 600
    .line 601
    move-result p1

    .line 602
    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/ITBoxManager;->inquireChargeReserveRequest(I)V

    .line 603
    .line 604
    .line 605
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    .line 607
    .line 608
    return v2

    .line 609
    :pswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 610
    .line 611
    .line 612
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 613
    .line 614
    .line 615
    move-result p1

    .line 616
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 617
    .line 618
    .line 619
    move-result p2

    .line 620
    invoke-interface {p0, p1, p2}, Lcom/autolink/adapterinterface/ITBoxManager;->chargeReserveStatuReportResponse(II)V

    .line 621
    .line 622
    .line 623
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    .line 625
    .line 626
    return v2

    .line 627
    :pswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 631
    .line 632
    .line 633
    move-result p1

    .line 634
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 635
    .line 636
    .line 637
    move-result p2

    .line 638
    invoke-interface {p0, p1, p2}, Lcom/autolink/adapterinterface/ITBoxManager;->chargeReserveSyncResponse(II)V

    .line 639
    .line 640
    .line 641
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    .line 643
    .line 644
    return v2

    .line 645
    :pswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    .line 647
    .line 648
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 649
    .line 650
    .line 651
    move-result p1

    .line 652
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 653
    .line 654
    .line 655
    move-result p4

    .line 656
    if-eqz p4, :cond_7

    .line 657
    .line 658
    sget-object p4, Lcom/autolink/adapterinterface/ChargeSetReqeust;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 659
    .line 660
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 661
    .line 662
    .line 663
    move-result-object p2

    .line 664
    move-object v0, p2

    .line 665
    check-cast v0, Lcom/autolink/adapterinterface/ChargeSetReqeust;

    .line 666
    .line 667
    :cond_7
    invoke-interface {p0, p1, v0}, Lcom/autolink/adapterinterface/ITBoxManager;->chargeReserveSetRequest(ILcom/autolink/adapterinterface/ChargeSetReqeust;)V

    .line 668
    .line 669
    .line 670
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    .line 672
    .line 673
    return v2

    .line 674
    :pswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 675
    .line 676
    .line 677
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 678
    .line 679
    .line 680
    move-result p1

    .line 681
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 682
    .line 683
    .line 684
    move-result-wide v0

    .line 685
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object p2

    .line 689
    invoke-interface {p0, p1, v0, v1, p2}, Lcom/autolink/adapterinterface/ITBoxManager;->otaSubNodeRefreshNowResponse(IJLjava/lang/String;)V

    .line 690
    .line 691
    .line 692
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 693
    .line 694
    .line 695
    return v2

    .line 696
    :pswitch_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 697
    .line 698
    .line 699
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 700
    .line 701
    .line 702
    move-result p1

    .line 703
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 704
    .line 705
    .line 706
    move-result p4

    .line 707
    if-eqz p4, :cond_8

    .line 708
    .line 709
    sget-object p4, Lcom/autolink/adapterinterface/FotaUserComfResp;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 710
    .line 711
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    move-result-object p2

    .line 715
    move-object v0, p2

    .line 716
    check-cast v0, Lcom/autolink/adapterinterface/FotaUserComfResp;

    .line 717
    .line 718
    :cond_8
    invoke-interface {p0, p1, v0}, Lcom/autolink/adapterinterface/ITBoxManager;->fotaUserComfirmResponse(ILcom/autolink/adapterinterface/FotaUserComfResp;)V

    .line 719
    .line 720
    .line 721
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    .line 723
    .line 724
    return v2

    .line 725
    :pswitch_20
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 726
    .line 727
    .line 728
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 729
    .line 730
    .line 731
    move-result p1

    .line 732
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 733
    .line 734
    .line 735
    move-result p4

    .line 736
    if-eqz p4, :cond_9

    .line 737
    .line 738
    sget-object p4, Lcom/autolink/adapterinterface/OtaSubNodeState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 739
    .line 740
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 741
    .line 742
    .line 743
    move-result-object p2

    .line 744
    move-object v0, p2

    .line 745
    check-cast v0, Lcom/autolink/adapterinterface/OtaSubNodeState;

    .line 746
    .line 747
    :cond_9
    invoke-interface {p0, p1, v0}, Lcom/autolink/adapterinterface/ITBoxManager;->reportOtaSubNodeState(ILcom/autolink/adapterinterface/OtaSubNodeState;)V

    .line 748
    .line 749
    .line 750
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 751
    .line 752
    .line 753
    return v2

    .line 754
    :pswitch_21
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 755
    .line 756
    .line 757
    invoke-interface {p0}, Lcom/autolink/adapterinterface/ITBoxManager;->getCarModelConfig()[B

    .line 758
    .line 759
    .line 760
    move-result-object p1

    .line 761
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    .line 763
    .line 764
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 765
    .line 766
    .line 767
    return v2

    .line 768
    :pswitch_22
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 769
    .line 770
    .line 771
    invoke-interface {p0}, Lcom/autolink/adapterinterface/ITBoxManager;->getIMEI()Ljava/lang/String;

    .line 772
    .line 773
    .line 774
    move-result-object p1

    .line 775
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 776
    .line 777
    .line 778
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 779
    .line 780
    .line 781
    return v2

    .line 782
    :pswitch_23
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 783
    .line 784
    .line 785
    invoke-interface {p0}, Lcom/autolink/adapterinterface/ITBoxManager;->getIMSI()Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object p1

    .line 789
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 790
    .line 791
    .line 792
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 793
    .line 794
    .line 795
    return v2

    .line 796
    :pswitch_24
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 797
    .line 798
    .line 799
    invoke-interface {p0}, Lcom/autolink/adapterinterface/ITBoxManager;->getPartNumber()Ljava/lang/String;

    .line 800
    .line 801
    .line 802
    move-result-object p1

    .line 803
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    .line 805
    .line 806
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 807
    .line 808
    .line 809
    return v2

    .line 810
    :pswitch_25
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 811
    .line 812
    .line 813
    invoke-interface {p0}, Lcom/autolink/adapterinterface/ITBoxManager;->getSupplierIdertifier()Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object p1

    .line 817
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 818
    .line 819
    .line 820
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 821
    .line 822
    .line 823
    return v2

    .line 824
    :pswitch_26
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 825
    .line 826
    .line 827
    invoke-interface {p0}, Lcom/autolink/adapterinterface/ITBoxManager;->getSoftVersion()Ljava/lang/String;

    .line 828
    .line 829
    .line 830
    move-result-object p1

    .line 831
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 832
    .line 833
    .line 834
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 835
    .line 836
    .line 837
    return v2

    .line 838
    :pswitch_27
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 839
    .line 840
    .line 841
    invoke-interface {p0}, Lcom/autolink/adapterinterface/ITBoxManager;->getHardwareVersion()Ljava/lang/String;

    .line 842
    .line 843
    .line 844
    move-result-object p1

    .line 845
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 846
    .line 847
    .line 848
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 849
    .line 850
    .line 851
    return v2

    .line 852
    :pswitch_28
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 853
    .line 854
    .line 855
    invoke-interface {p0}, Lcom/autolink/adapterinterface/ITBoxManager;->getICCID()Ljava/lang/String;

    .line 856
    .line 857
    .line 858
    move-result-object p1

    .line 859
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    .line 861
    .line 862
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 863
    .line 864
    .line 865
    return v2

    .line 866
    :pswitch_29
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 867
    .line 868
    .line 869
    invoke-interface {p0}, Lcom/autolink/adapterinterface/ITBoxManager;->getSN()Ljava/lang/String;

    .line 870
    .line 871
    .line 872
    move-result-object p1

    .line 873
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    .line 875
    .line 876
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 877
    .line 878
    .line 879
    return v2

    .line 880
    :pswitch_2a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 881
    .line 882
    .line 883
    invoke-interface {p0}, Lcom/autolink/adapterinterface/ITBoxManager;->getManufactureDate()I

    .line 884
    .line 885
    .line 886
    move-result p1

    .line 887
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 888
    .line 889
    .line 890
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 891
    .line 892
    .line 893
    return v2

    .line 894
    :pswitch_2b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 895
    .line 896
    .line 897
    invoke-interface {p0}, Lcom/autolink/adapterinterface/ITBoxManager;->getVinCode()Ljava/lang/String;

    .line 898
    .line 899
    .line 900
    move-result-object p1

    .line 901
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 902
    .line 903
    .line 904
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 905
    .line 906
    .line 907
    return v2

    .line 908
    :pswitch_2c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 909
    .line 910
    .line 911
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 912
    .line 913
    .line 914
    move-result p1

    .line 915
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 916
    .line 917
    .line 918
    move-result p4

    .line 919
    if-eqz p4, :cond_a

    .line 920
    .line 921
    sget-object p4, Lcom/autolink/adapterinterface/TBoxCommandMsg;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 922
    .line 923
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 924
    .line 925
    .line 926
    move-result-object p2

    .line 927
    move-object v0, p2

    .line 928
    check-cast v0, Lcom/autolink/adapterinterface/TBoxCommandMsg;

    .line 929
    .line 930
    :cond_a
    invoke-interface {p0, p1, v0}, Lcom/autolink/adapterinterface/ITBoxManager;->sendCommand(ILcom/autolink/adapterinterface/TBoxCommandMsg;)V

    .line 931
    .line 932
    .line 933
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 934
    .line 935
    .line 936
    return v2

    .line 937
    :pswitch_data_0
    .packed-switch 0x1
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
