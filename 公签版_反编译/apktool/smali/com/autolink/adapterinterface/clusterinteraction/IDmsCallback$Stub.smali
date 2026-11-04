.class public abstract Lcom/autolink/adapterinterface/clusterinteraction/IDmsCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/autolink/adapterinterface/clusterinteraction/IDmsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autolink/adapterinterface/clusterinteraction/IDmsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autolink/adapterinterface/clusterinteraction/IDmsCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.autolink.adapterinterface.clusterinteraction.IDmsCallback"

.field static final TRANSACTION_activationLicenseResp:I = 0xf

.field static final TRANSACTION_androidSetupCompleteResp:I = 0xc

.field static final TRANSACTION_bloodOxygenResultResp:I = 0x6

.field static final TRANSACTION_cameraOcclusionValueResp:I = 0x9

.field static final TRANSACTION_cameraStatusResp:I = 0xe

.field static final TRANSACTION_distractionLevelValueResp:I = 0xa

.field static final TRANSACTION_driverActionValueResp:I = 0x7

.field static final TRANSACTION_driverMissingValueResp:I = 0x8

.field static final TRANSACTION_drowsinessLevelValueResp:I = 0xb

.field static final TRANSACTION_faceIdResp:I = 0x1

.field static final TRANSACTION_faceStatusResultResp:I = 0x10

.field static final TRANSACTION_healthLoginResp:I = 0xd

.field static final TRANSACTION_healthRateResultResp:I = 0x2

.field static final TRANSACTION_heartRateVarResultResp:I = 0x3

.field static final TRANSACTION_pressureResultResp:I = 0x5

.field static final TRANSACTION_respiratoryRateResultResp:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.autolink.adapterinterface.clusterinteraction.IDmsCallback"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IDmsCallback;
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
    const-string v0, "com.autolink.adapterinterface.clusterinteraction.IDmsCallback"

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
    instance-of v1, v0, Lcom/autolink/adapterinterface/clusterinteraction/IDmsCallback;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/autolink/adapterinterface/clusterinteraction/IDmsCallback;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/autolink/adapterinterface/clusterinteraction/IDmsCallback$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/autolink/adapterinterface/clusterinteraction/IDmsCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public static getDefaultImpl()Lcom/autolink/adapterinterface/clusterinteraction/IDmsCallback;
    .locals 1

    .line 1
    sget-object v0, Lcom/autolink/adapterinterface/clusterinteraction/IDmsCallback$Stub$Proxy;->sDefaultImpl:Lcom/autolink/adapterinterface/clusterinteraction/IDmsCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public static setDefaultImpl(Lcom/autolink/adapterinterface/clusterinteraction/IDmsCallback;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/autolink/adapterinterface/clusterinteraction/IDmsCallback$Stub$Proxy;->sDefaultImpl:Lcom/autolink/adapterinterface/clusterinteraction/IDmsCallback;

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
    sput-object p0, Lcom/autolink/adapterinterface/clusterinteraction/IDmsCallback$Stub$Proxy;->sDefaultImpl:Lcom/autolink/adapterinterface/clusterinteraction/IDmsCallback;

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
    const-string v1, "com.autolink.adapterinterface.clusterinteraction.IDmsCallback"

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
    if-eqz p1, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    :cond_1
    invoke-interface {p0, v0}, Lcom/autolink/adapterinterface/clusterinteraction/IDmsCallback;->faceStatusResultResp(Z)V

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
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IDmsCallback;->activationLicenseResp()V

    .line 40
    .line 41
    .line 42
    return v2

    .line 43
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    invoke-interface {p0, p1, p2}, Lcom/autolink/adapterinterface/clusterinteraction/IDmsCallback;->cameraStatusResp(II)V

    .line 55
    .line 56
    .line 57
    return v2

    .line 58
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    const/4 v0, 0x1

    .line 68
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 73
    .line 74
    .line 75
    move-result p3

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    invoke-interface {p0, v0, p1, p3, p2}, Lcom/autolink/adapterinterface/clusterinteraction/IDmsCallback;->healthLoginResp(ZIII)V

    .line 81
    .line 82
    .line 83
    return v2

    .line 84
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    invoke-interface {p0, p1, p2}, Lcom/autolink/adapterinterface/clusterinteraction/IDmsCallback;->androidSetupCompleteResp(II)V

    .line 96
    .line 97
    .line 98
    return v2

    .line 99
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_3

    .line 107
    .line 108
    const/4 v0, 0x1

    .line 109
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    invoke-interface {p0, v0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IDmsCallback;->drowsinessLevelValueResp(ZI)V

    .line 114
    .line 115
    .line 116
    return v2

    .line 117
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-eqz p1, :cond_4

    .line 125
    .line 126
    const/4 v0, 0x1

    .line 127
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    invoke-interface {p0, v0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IDmsCallback;->distractionLevelValueResp(ZI)V

    .line 132
    .line 133
    .line 134
    return v2

    .line 135
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-eqz p1, :cond_5

    .line 143
    .line 144
    const/4 p1, 0x1

    .line 145
    goto :goto_0

    .line 146
    :cond_5
    const/4 p1, 0x0

    .line 147
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 148
    .line 149
    .line 150
    move-result p2

    .line 151
    if-eqz p2, :cond_6

    .line 152
    .line 153
    const/4 v0, 0x1

    .line 154
    :cond_6
    invoke-interface {p0, p1, v0}, Lcom/autolink/adapterinterface/clusterinteraction/IDmsCallback;->cameraOcclusionValueResp(ZZ)V

    .line 155
    .line 156
    .line 157
    return v2

    .line 158
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-eqz p1, :cond_7

    .line 166
    .line 167
    const/4 p1, 0x1

    .line 168
    goto :goto_1

    .line 169
    :cond_7
    const/4 p1, 0x0

    .line 170
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 171
    .line 172
    .line 173
    move-result p2

    .line 174
    if-eqz p2, :cond_8

    .line 175
    .line 176
    const/4 v0, 0x1

    .line 177
    :cond_8
    invoke-interface {p0, p1, v0}, Lcom/autolink/adapterinterface/clusterinteraction/IDmsCallback;->driverMissingValueResp(ZZ)V

    .line 178
    .line 179
    .line 180
    return v2

    .line 181
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    if-eqz p1, :cond_9

    .line 189
    .line 190
    const/4 v0, 0x1

    .line 191
    :cond_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    invoke-interface {p0, v0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IDmsCallback;->driverActionValueResp(ZI)V

    .line 196
    .line 197
    .line 198
    return v2

    .line 199
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    if-eqz p1, :cond_a

    .line 207
    .line 208
    const/4 v0, 0x1

    .line 209
    :cond_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    invoke-interface {p0, v0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IDmsCallback;->bloodOxygenResultResp(ZI)V

    .line 214
    .line 215
    .line 216
    return v2

    .line 217
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    if-eqz p1, :cond_b

    .line 225
    .line 226
    const/4 v0, 0x1

    .line 227
    :cond_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 232
    .line 233
    .line 234
    move-result p2

    .line 235
    invoke-interface {p0, v0, p1, p2}, Lcom/autolink/adapterinterface/clusterinteraction/IDmsCallback;->pressureResultResp(ZII)V

    .line 236
    .line 237
    .line 238
    return v2

    .line 239
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 243
    .line 244
    .line 245
    move-result p1

    .line 246
    if-eqz p1, :cond_c

    .line 247
    .line 248
    const/4 v0, 0x1

    .line 249
    :cond_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    .line 250
    .line 251
    .line 252
    move-result p1

    .line 253
    invoke-interface {p0, v0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IDmsCallback;->respiratoryRateResultResp(ZF)V

    .line 254
    .line 255
    .line 256
    return v2

    .line 257
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    if-eqz p1, :cond_d

    .line 265
    .line 266
    const/4 v0, 0x1

    .line 267
    :cond_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    .line 268
    .line 269
    .line 270
    move-result p1

    .line 271
    invoke-interface {p0, v0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IDmsCallback;->heartRateVarResultResp(ZF)V

    .line 272
    .line 273
    .line 274
    return v2

    .line 275
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 279
    .line 280
    .line 281
    move-result p1

    .line 282
    if-eqz p1, :cond_e

    .line 283
    .line 284
    const/4 v0, 0x1

    .line 285
    :cond_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    .line 286
    .line 287
    .line 288
    move-result p1

    .line 289
    invoke-interface {p0, v0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IDmsCallback;->healthRateResultResp(ZF)V

    .line 290
    .line 291
    .line 292
    return v2

    .line 293
    :pswitch_f
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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 301
    .line 302
    .line 303
    move-result p3

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 305
    .line 306
    .line 307
    move-result p2

    .line 308
    invoke-interface {p0, p1, p3, p2}, Lcom/autolink/adapterinterface/clusterinteraction/IDmsCallback;->faceIdResp(III)V

    .line 309
    .line 310
    .line 311
    return v2

    .line 312
    nop

    .line 313
    :pswitch_data_0
    .packed-switch 0x1
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
