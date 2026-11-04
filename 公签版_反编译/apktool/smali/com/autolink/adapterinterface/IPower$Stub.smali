.class public abstract Lcom/autolink/adapterinterface/IPower$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/autolink/adapterinterface/IPower;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autolink/adapterinterface/IPower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autolink/adapterinterface/IPower$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.autolink.adapterinterface.IPower"

.field static final TRANSACTION_enterUpgradeState:I = 0xc

.field static final TRANSACTION_exitUpgradeState:I = 0xd

.field static final TRANSACTION_getClusterNightModeSwitch:I = 0x13

.field static final TRANSACTION_getHmiBrightness:I = 0x6

.field static final TRANSACTION_getIviBrightness:I = 0x4

.field static final TRANSACTION_getIviBrightnessMode:I = 0xa

.field static final TRANSACTION_getIviDisplayPowerState:I = 0xf

.field static final TRANSACTION_getIviThemeMode:I = 0x8

.field static final TRANSACTION_isCurScreenSaver:I = 0x10

.field static final TRANSACTION_keepClusterNightModeSwitchOn:I = 0x12

.field static final TRANSACTION_registerPowerCallback:I = 0x1

.field static final TRANSACTION_sendScreensaverEvent:I = 0xb

.field static final TRANSACTION_setClusterDisplayPowerState:I = 0x11

.field static final TRANSACTION_setHmiBrightness:I = 0x5

.field static final TRANSACTION_setIviBrightness:I = 0x3

.field static final TRANSACTION_setIviBrightnessMode:I = 0x9

.field static final TRANSACTION_setIviDisplayPowerState:I = 0xe

.field static final TRANSACTION_setIviThemeMode:I = 0x7

.field static final TRANSACTION_unregisterPowerCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.autolink.adapterinterface.IPower"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/IPower;
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
    const-string v0, "com.autolink.adapterinterface.IPower"

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
    instance-of v1, v0, Lcom/autolink/adapterinterface/IPower;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/autolink/adapterinterface/IPower;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/autolink/adapterinterface/IPower$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/autolink/adapterinterface/IPower$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public static getDefaultImpl()Lcom/autolink/adapterinterface/IPower;
    .locals 1

    .line 1
    sget-object v0, Lcom/autolink/adapterinterface/IPower$Stub$Proxy;->sDefaultImpl:Lcom/autolink/adapterinterface/IPower;

    .line 2
    .line 3
    return-object v0
.end method

.method public static setDefaultImpl(Lcom/autolink/adapterinterface/IPower;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/autolink/adapterinterface/IPower$Stub$Proxy;->sDefaultImpl:Lcom/autolink/adapterinterface/IPower;

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
    sput-object p0, Lcom/autolink/adapterinterface/IPower$Stub$Proxy;->sDefaultImpl:Lcom/autolink/adapterinterface/IPower;

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
    .locals 3

    .line 1
    const v0, 0x5f4e5446

    .line 2
    .line 3
    .line 4
    const-string v1, "com.autolink.adapterinterface.IPower"

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
    invoke-interface {p0}, Lcom/autolink/adapterinterface/IPower;->getClusterNightModeSwitch()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    .line 33
    .line 34
    return v2

    .line 35
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/IPower;->keepClusterNightModeSwitchOn(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 46
    .line 47
    .line 48
    return v2

    .line 49
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/IPower;->setClusterDisplayPowerState(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    .line 61
    .line 62
    return v2

    .line 63
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {p0}, Lcom/autolink/adapterinterface/IPower;->isCurScreenSaver()Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    .line 75
    .line 76
    return v2

    .line 77
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-interface {p0}, Lcom/autolink/adapterinterface/IPower;->getIviDisplayPowerState()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    .line 89
    .line 90
    return v2

    .line 91
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/IPower;->setIviDisplayPowerState(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    .line 103
    .line 104
    return v2

    .line 105
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-interface {p0}, Lcom/autolink/adapterinterface/IPower;->exitUpgradeState()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    .line 113
    .line 114
    return v2

    .line 115
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-interface {p0}, Lcom/autolink/adapterinterface/IPower;->enterUpgradeState()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    .line 123
    .line 124
    return v2

    .line 125
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    if-eqz p2, :cond_1

    .line 137
    .line 138
    const/4 p2, 0x1

    .line 139
    goto :goto_0

    .line 140
    :cond_1
    const/4 p2, 0x0

    .line 141
    :goto_0
    invoke-interface {p0, p1, p2}, Lcom/autolink/adapterinterface/IPower;->sendScreensaverEvent(IZ)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    .line 146
    .line 147
    return v2

    .line 148
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-interface {p0}, Lcom/autolink/adapterinterface/IPower;->getIviBrightnessMode()I

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    .line 160
    .line 161
    return v2

    .line 162
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/IPower;->setIviBrightnessMode(I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    .line 174
    .line 175
    return v2

    .line 176
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-interface {p0}, Lcom/autolink/adapterinterface/IPower;->getIviThemeMode()I

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    .line 188
    .line 189
    return v2

    .line 190
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/IPower;->setIviThemeMode(I)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    .line 202
    .line 203
    return v2

    .line 204
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-interface {p0}, Lcom/autolink/adapterinterface/IPower;->getHmiBrightness()I

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    .line 216
    .line 217
    return v2

    .line 218
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/IPower;->setHmiBrightness(I)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    .line 230
    .line 231
    return v2

    .line 232
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-interface {p0}, Lcom/autolink/adapterinterface/IPower;->getIviBrightness()I

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    .line 244
    .line 245
    return v2

    .line 246
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 250
    .line 251
    .line 252
    move-result p1

    .line 253
    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/IPower;->setIviBrightness(I)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    .line 258
    .line 259
    return v2

    .line 260
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    invoke-static {p1}, Lcom/autolink/adapterinterface/IPowerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/IPowerCallback;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/IPower;->unregisterPowerCallback(Lcom/autolink/adapterinterface/IPowerCallback;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    .line 276
    .line 277
    return v2

    .line 278
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    invoke-static {p1}, Lcom/autolink/adapterinterface/IPowerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/IPowerCallback;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/IPower;->registerPowerCallback(Lcom/autolink/adapterinterface/IPowerCallback;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    .line 294
    .line 295
    return v2

    .line 296
    nop

    .line 297
    :pswitch_data_0
    .packed-switch 0x1
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
