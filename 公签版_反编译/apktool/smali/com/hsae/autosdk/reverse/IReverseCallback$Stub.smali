.class public abstract Lcom/hsae/autosdk/reverse/IReverseCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/hsae/autosdk/reverse/IReverseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hsae/autosdk/reverse/IReverseCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hsae/autosdk/reverse/IReverseCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hsae.autosdk.reverse.IReverseCallback"

.field static final TRANSACTION_onAVMChangeDAFrameResponse:I = 0x7

.field static final TRANSACTION_onAVMCheckLanguageResponse:I = 0x9

.field static final TRANSACTION_onAVMCheckViewStateResponse:I = 0x6

.field static final TRANSACTION_onAVMHardwareVersionResponse:I = 0x4

.field static final TRANSACTION_onAVMReverseStateResponse:I = 0x2

.field static final TRANSACTION_onAVMSettingInfoResponse:I = 0x8

.field static final TRANSACTION_onAVMSoftwareVersionResponse:I = 0x3

.field static final TRANSACTION_onAVMStartResponse:I = 0x1

.field static final TRANSACTION_onAVMStatusAndRequestResponseNoIPA:I = 0x17

.field static final TRANSACTION_onAVMStatusAndRequestResponseWithIPA:I = 0x16

.field static final TRANSACTION_onAVMVINResponse:I = 0x5

.field static final TRANSACTION_onAvmBeepSoundResponse:I = 0x15

.field static final TRANSACTION_onButtonEnableStatusResponse:I = 0x11

.field static final TRANSACTION_onCarTypeResponse:I = 0x13

.field static final TRANSACTION_onDistanceResponse:I = 0x10

.field static final TRANSACTION_onFrCenterResponse:I = 0xd

.field static final TRANSACTION_onFrLeftResponse:I = 0xe

.field static final TRANSACTION_onFrRightResponse:I = 0xf

.field static final TRANSACTION_onFrameResponse:I = 0x14

.field static final TRANSACTION_onLightsStatusResponse:I = 0x12

.field static final TRANSACTION_onRrCenterResponse:I = 0xa

.field static final TRANSACTION_onRrLeftResponse:I = 0xb

.field static final TRANSACTION_onRrRightResponse:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.hsae.autosdk.reverse.IReverseCallback"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/reverse/IReverseCallback;
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
    const-string v0, "com.hsae.autosdk.reverse.IReverseCallback"

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
    instance-of v1, v0, Lcom/hsae/autosdk/reverse/IReverseCallback;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/hsae/autosdk/reverse/IReverseCallback;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/hsae/autosdk/reverse/IReverseCallback$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/hsae/autosdk/reverse/IReverseCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v1, 0x1

    .line 5
    const-string v2, "com.hsae.autosdk.reverse.IReverseCallback"

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return v1

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
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    invoke-interface {p0, p1, p2}, Lcom/hsae/autosdk/reverse/IReverseCallback;->onAVMStatusAndRequestResponseNoIPA(BB)V

    .line 33
    .line 34
    .line 35
    return v1

    .line 36
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 64
    .line 65
    .line 66
    move-result v9

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    move-object v2, p0

    .line 72
    invoke-interface/range {v2 .. v10}, Lcom/hsae/autosdk/reverse/IReverseCallback;->onAVMStatusAndRequestResponseWithIPA(BBBBBBBB)V

    .line 73
    .line 74
    .line 75
    return v1

    .line 76
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/reverse/IReverseCallback;->onAvmBeepSoundResponse(B)V

    .line 84
    .line 85
    .line 86
    return v1

    .line 87
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/reverse/IReverseCallback;->onFrameResponse(B)V

    .line 95
    .line 96
    .line 97
    return v1

    .line 98
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/reverse/IReverseCallback;->onCarTypeResponse(B)V

    .line 106
    .line 107
    .line 108
    return v1

    .line 109
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/reverse/IReverseCallback;->onLightsStatusResponse(B)V

    .line 117
    .line 118
    .line 119
    return v1

    .line 120
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/reverse/IReverseCallback;->onButtonEnableStatusResponse(B)V

    .line 128
    .line 129
    .line 130
    return v1

    .line 131
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/reverse/IReverseCallback;->onDistanceResponse(B)V

    .line 139
    .line 140
    .line 141
    return v1

    .line 142
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/reverse/IReverseCallback;->onFrRightResponse(B)V

    .line 150
    .line 151
    .line 152
    return v1

    .line 153
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/reverse/IReverseCallback;->onFrLeftResponse(B)V

    .line 161
    .line 162
    .line 163
    return v1

    .line 164
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/reverse/IReverseCallback;->onFrCenterResponse(B)V

    .line 172
    .line 173
    .line 174
    return v1

    .line 175
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/reverse/IReverseCallback;->onRrRightResponse(B)V

    .line 183
    .line 184
    .line 185
    return v1

    .line 186
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/reverse/IReverseCallback;->onRrLeftResponse(B)V

    .line 194
    .line 195
    .line 196
    return v1

    .line 197
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/reverse/IReverseCallback;->onRrCenterResponse(B)V

    .line 205
    .line 206
    .line 207
    return v1

    .line 208
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-interface {p0}, Lcom/hsae/autosdk/reverse/IReverseCallback;->onAVMCheckLanguageResponse()V

    .line 212
    .line 213
    .line 214
    return v1

    .line 215
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 223
    .line 224
    .line 225
    move-result p3

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 227
    .line 228
    .line 229
    move-result p2

    .line 230
    invoke-interface {p0, p1, p3, p2}, Lcom/hsae/autosdk/reverse/IReverseCallback;->onAVMSettingInfoResponse(BBB)V

    .line 231
    .line 232
    .line 233
    return v1

    .line 234
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/reverse/IReverseCallback;->onAVMChangeDAFrameResponse(B)V

    .line 242
    .line 243
    .line 244
    return v1

    .line 245
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-interface {p0}, Lcom/hsae/autosdk/reverse/IReverseCallback;->onAVMCheckViewStateResponse()V

    .line 249
    .line 250
    .line 251
    return v1

    .line 252
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/reverse/IReverseCallback;->onAVMVINResponse(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    return v1

    .line 263
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/reverse/IReverseCallback;->onAVMHardwareVersionResponse(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    return v1

    .line 274
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/reverse/IReverseCallback;->onAVMSoftwareVersionResponse(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    return v1

    .line 285
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 289
    .line 290
    .line 291
    move-result p1

    .line 292
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/reverse/IReverseCallback;->onAVMReverseStateResponse(B)V

    .line 293
    .line 294
    .line 295
    return v1

    .line 296
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    invoke-interface {p0}, Lcom/hsae/autosdk/reverse/IReverseCallback;->onAVMStartResponse()V

    .line 300
    .line 301
    .line 302
    return v1

    .line 303
    :pswitch_data_0
    .packed-switch 0x1
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
