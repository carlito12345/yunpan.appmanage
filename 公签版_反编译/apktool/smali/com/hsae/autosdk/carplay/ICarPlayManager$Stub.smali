.class public abstract Lcom/hsae/autosdk/carplay/ICarPlayManager$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/hsae/autosdk/carplay/ICarPlayManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hsae/autosdk/carplay/ICarPlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hsae/autosdk/carplay/ICarPlayManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hsae.autosdk.carplay.ICarPlayManager"

.field static final TRANSACTION_accessorySourceChange:I = 0x15

.field static final TRANSACTION_authenticate:I = 0x6

.field static final TRANSACTION_carplayIconTapped:I = 0x18

.field static final TRANSACTION_carplayLinked:I = 0x7

.field static final TRANSACTION_getCarPlayRingState:I = 0x10

.field static final TRANSACTION_getPhoneState:I = 0x16

.field static final TRANSACTION_getVersion:I = 0x9

.field static final TRANSACTION_handupBTPhone:I = 0x12

.field static final TRANSACTION_hide:I = 0x4

.field static final TRANSACTION_isAppBackground:I = 0x17

.field static final TRANSACTION_isConnected:I = 0x5

.field static final TRANSACTION_isVrStarted:I = 0xf

.field static final TRANSACTION_onHmiChanged:I = 0xa

.field static final TRANSACTION_onTelOff:I = 0xe

.field static final TRANSACTION_onTelOn:I = 0xd

.field static final TRANSACTION_pause:I = 0x2

.field static final TRANSACTION_play:I = 0x1

.field static final TRANSACTION_popUpCurrentMode:I = 0x8

.field static final TRANSACTION_registerCarPlayListener:I = 0xb

.field static final TRANSACTION_show:I = 0x3

.field static final TRANSACTION_showByVr:I = 0x1a

.field static final TRANSACTION_startCarplayNativeAuthenticate:I = 0x19

.field static final TRANSACTION_syncPowerState:I = 0x14

.field static final TRANSACTION_syncReverseState:I = 0x11

.field static final TRANSACTION_syncSpeedData:I = 0x13

.field static final TRANSACTION_unregisterCarPlayListener:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.hsae.autosdk.carplay.ICarPlayManager"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/carplay/ICarPlayManager;
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
    const-string v0, "com.hsae.autosdk.carplay.ICarPlayManager"

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
    instance-of v1, v0, Lcom/hsae/autosdk/carplay/ICarPlayManager;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/hsae/autosdk/carplay/ICarPlayManager;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/hsae/autosdk/carplay/ICarPlayManager$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/hsae/autosdk/carplay/ICarPlayManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v1, "com.hsae.autosdk.carplay.ICarPlayManager"

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/carplay/ICarPlayManager;->showByVr(I)V

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
    invoke-interface {p0}, Lcom/hsae/autosdk/carplay/ICarPlayManager;->startCarplayNativeAuthenticate()V

    .line 37
    .line 38
    .line 39
    return v2

    .line 40
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {p0}, Lcom/hsae/autosdk/carplay/ICarPlayManager;->carplayIconTapped()V

    .line 44
    .line 45
    .line 46
    return v2

    .line 47
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p0}, Lcom/hsae/autosdk/carplay/ICarPlayManager;->isAppBackground()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    .line 59
    .line 60
    return v2

    .line 61
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {p0}, Lcom/hsae/autosdk/carplay/ICarPlayManager;->getPhoneState()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    .line 73
    .line 74
    return v2

    .line 75
    :pswitch_5
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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 83
    .line 84
    .line 85
    move-result p4

    .line 86
    if-eqz p4, :cond_1

    .line 87
    .line 88
    const/4 p4, 0x1

    .line 89
    goto :goto_0

    .line 90
    :cond_1
    const/4 p4, 0x0

    .line 91
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    if-eqz p2, :cond_2

    .line 96
    .line 97
    const/4 v0, 0x1

    .line 98
    :cond_2
    invoke-interface {p0, p1, p4, v0}, Lcom/hsae/autosdk/carplay/ICarPlayManager;->accessorySourceChange(IZZ)V

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-eqz p1, :cond_3

    .line 113
    .line 114
    const/4 v0, 0x1

    .line 115
    :cond_3
    invoke-interface {p0, v0}, Lcom/hsae/autosdk/carplay/ICarPlayManager;->syncPowerState(Z)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    .line 120
    .line 121
    return v2

    .line 122
    :pswitch_7
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
    move-result p2

    .line 133
    invoke-interface {p0, p1, p2}, Lcom/hsae/autosdk/carplay/ICarPlayManager;->syncSpeedData(II)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

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
    invoke-interface {p0}, Lcom/hsae/autosdk/carplay/ICarPlayManager;->handupBTPhone()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    .line 148
    .line 149
    return v2

    .line 150
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    if-eqz p1, :cond_4

    .line 158
    .line 159
    const/4 v0, 0x1

    .line 160
    :cond_4
    invoke-interface {p0, v0}, Lcom/hsae/autosdk/carplay/ICarPlayManager;->syncReverseState(Z)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    .line 165
    .line 166
    return v2

    .line 167
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-interface {p0}, Lcom/hsae/autosdk/carplay/ICarPlayManager;->getCarPlayRingState()Z

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    .line 179
    .line 180
    return v2

    .line 181
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-interface {p0}, Lcom/hsae/autosdk/carplay/ICarPlayManager;->isVrStarted()Z

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    .line 193
    .line 194
    return v2

    .line 195
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-interface {p0}, Lcom/hsae/autosdk/carplay/ICarPlayManager;->onTelOff()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    .line 203
    .line 204
    return v2

    .line 205
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-interface {p0}, Lcom/hsae/autosdk/carplay/ICarPlayManager;->onTelOn()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    .line 213
    .line 214
    return v2

    .line 215
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-static {p1}, Lcom/hsae/autosdk/carplay/ICarPlayListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/carplay/ICarPlayListener;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/carplay/ICarPlayManager;->unregisterCarPlayListener(Lcom/hsae/autosdk/carplay/ICarPlayListener;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    .line 231
    .line 232
    return v2

    .line 233
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-static {p1}, Lcom/hsae/autosdk/carplay/ICarPlayListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/carplay/ICarPlayListener;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/carplay/ICarPlayManager;->registerCarPlayListener(Lcom/hsae/autosdk/carplay/ICarPlayListener;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    .line 249
    .line 250
    return v2

    .line 251
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 255
    .line 256
    .line 257
    move-result p1

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 259
    .line 260
    .line 261
    move-result p2

    .line 262
    invoke-interface {p0, p1, p2}, Lcom/hsae/autosdk/carplay/ICarPlayManager;->onHmiChanged(II)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    .line 267
    .line 268
    return v2

    .line 269
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-interface {p0}, Lcom/hsae/autosdk/carplay/ICarPlayManager;->getVersion()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    return v2

    .line 283
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    invoke-interface {p0}, Lcom/hsae/autosdk/carplay/ICarPlayManager;->popUpCurrentMode()V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    .line 291
    .line 292
    return v2

    .line 293
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 297
    .line 298
    .line 299
    move-result p1

    .line 300
    if-eqz p1, :cond_5

    .line 301
    .line 302
    const/4 v0, 0x1

    .line 303
    :cond_5
    invoke-interface {p0, v0}, Lcom/hsae/autosdk/carplay/ICarPlayManager;->carplayLinked(Z)V

    .line 304
    .line 305
    .line 306
    return v2

    .line 307
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-interface {p0}, Lcom/hsae/autosdk/carplay/ICarPlayManager;->authenticate()V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    .line 315
    .line 316
    return v2

    .line 317
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    invoke-interface {p0}, Lcom/hsae/autosdk/carplay/ICarPlayManager;->isConnected()Z

    .line 321
    .line 322
    .line 323
    move-result p1

    .line 324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    .line 329
    .line 330
    return v2

    .line 331
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    invoke-interface {p0}, Lcom/hsae/autosdk/carplay/ICarPlayManager;->hide()V

    .line 335
    .line 336
    .line 337
    return v2

    .line 338
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    invoke-interface {p0}, Lcom/hsae/autosdk/carplay/ICarPlayManager;->show()V

    .line 342
    .line 343
    .line 344
    return v2

    .line 345
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    invoke-interface {p0}, Lcom/hsae/autosdk/carplay/ICarPlayManager;->pause()V

    .line 349
    .line 350
    .line 351
    return v2

    .line 352
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    invoke-interface {p0}, Lcom/hsae/autosdk/carplay/ICarPlayManager;->play()V

    .line 356
    .line 357
    .line 358
    return v2

    .line 359
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
