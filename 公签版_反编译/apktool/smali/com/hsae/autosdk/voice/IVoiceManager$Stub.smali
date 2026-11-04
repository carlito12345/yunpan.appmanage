.class public abstract Lcom/hsae/autosdk/voice/IVoiceManager$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/hsae/autosdk/voice/IVoiceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hsae/autosdk/voice/IVoiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hsae/autosdk/voice/IVoiceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hsae.autosdk.voice.IVoiceManager"

.field static final TRANSACTION_hideVR:I = 0xd

.field static final TRANSACTION_isAllowMediaPlay:I = 0x14

.field static final TRANSACTION_isIflytekChipPrepared:I = 0x15

.field static final TRANSACTION_isSpeechStarted:I = 0xb

.field static final TRANSACTION_isTtsPlayStarted:I = 0xc

.field static final TRANSACTION_isVrStarted:I = 0x8

.field static final TRANSACTION_isWakeUpStarted:I = 0xe

.field static final TRANSACTION_phoneCallStateChange:I = 0xa

.field static final TRANSACTION_reStartWakeRecord:I = 0x9

.field static final TRANSACTION_resetIflytekSetting:I = 0x13

.field static final TRANSACTION_resetVRListener:I = 0x6

.field static final TRANSACTION_resourceRefresh:I = 0x7

.field static final TRANSACTION_setVRListener:I = 0x5

.field static final TRANSACTION_startSettings:I = 0xf

.field static final TRANSACTION_startTTS:I = 0x3

.field static final TRANSACTION_startVR:I = 0x1

.field static final TRANSACTION_stopIflytekTts:I = 0x11

.field static final TRANSACTION_stopSrView:I = 0x12

.field static final TRANSACTION_stopTTS:I = 0x4

.field static final TRANSACTION_stopVR:I = 0x2

.field static final TRANSACTION_stopWakeRecord:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.hsae.autosdk.voice.IVoiceManager"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/voice/IVoiceManager;
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
    const-string v0, "com.hsae.autosdk.voice.IVoiceManager"

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
    instance-of v1, v0, Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/hsae/autosdk/voice/IVoiceManager$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/hsae/autosdk/voice/IVoiceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v1, 0x1

    .line 5
    const-string v2, "com.hsae.autosdk.voice.IVoiceManager"

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
    invoke-interface {p0}, Lcom/hsae/autosdk/voice/IVoiceManager;->isIflytekChipPrepared()Z

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
    return v1

    .line 35
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p0}, Lcom/hsae/autosdk/voice/IVoiceManager;->isAllowMediaPlay()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    .line 47
    .line 48
    return v1

    .line 49
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {p0}, Lcom/hsae/autosdk/voice/IVoiceManager;->resetIflytekSetting()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    .line 57
    .line 58
    return v1

    .line 59
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {p0}, Lcom/hsae/autosdk/voice/IVoiceManager;->stopSrView()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    .line 67
    .line 68
    return v1

    .line 69
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {p0}, Lcom/hsae/autosdk/voice/IVoiceManager;->stopIflytekTts()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    .line 77
    .line 78
    return v1

    .line 79
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {p0}, Lcom/hsae/autosdk/voice/IVoiceManager;->stopWakeRecord()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    .line 87
    .line 88
    return v1

    .line 89
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-interface {p0}, Lcom/hsae/autosdk/voice/IVoiceManager;->startSettings()V

    .line 93
    .line 94
    .line 95
    return v1

    .line 96
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-interface {p0}, Lcom/hsae/autosdk/voice/IVoiceManager;->isWakeUpStarted()Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    .line 108
    .line 109
    return v1

    .line 110
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-interface {p0}, Lcom/hsae/autosdk/voice/IVoiceManager;->hideVR()V

    .line 114
    .line 115
    .line 116
    return v1

    .line 117
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-interface {p0}, Lcom/hsae/autosdk/voice/IVoiceManager;->isTtsPlayStarted()Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    .line 129
    .line 130
    return v1

    .line 131
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-interface {p0}, Lcom/hsae/autosdk/voice/IVoiceManager;->isSpeechStarted()Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    .line 143
    .line 144
    return v1

    .line 145
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-interface {p0, p1, p2}, Lcom/hsae/autosdk/voice/IVoiceManager;->phoneCallStateChange(ILjava/lang/String;)V

    .line 157
    .line 158
    .line 159
    return v1

    .line 160
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-interface {p0}, Lcom/hsae/autosdk/voice/IVoiceManager;->reStartWakeRecord()V

    .line 164
    .line 165
    .line 166
    return v1

    .line 167
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-interface {p0}, Lcom/hsae/autosdk/voice/IVoiceManager;->isVrStarted()Z

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
    return v1

    .line 181
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/voice/IVoiceManager;->resourceRefresh(I)V

    .line 189
    .line 190
    .line 191
    return v1

    .line 192
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-static {p1}, Lcom/hsae/autosdk/voice/IVRListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/voice/IVRListener;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/voice/IVoiceManager;->resetVRListener(Lcom/hsae/autosdk/voice/IVRListener;)V

    .line 204
    .line 205
    .line 206
    return v1

    .line 207
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-static {p1}, Lcom/hsae/autosdk/voice/IVRListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/voice/IVRListener;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/voice/IVoiceManager;->setVRListener(Lcom/hsae/autosdk/voice/IVRListener;)V

    .line 219
    .line 220
    .line 221
    return v1

    .line 222
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-interface {p0}, Lcom/hsae/autosdk/voice/IVoiceManager;->stopTTS()V

    .line 226
    .line 227
    .line 228
    return v1

    .line 229
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/voice/IVoiceManager;->startTTS(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    return v1

    .line 240
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-interface {p0}, Lcom/hsae/autosdk/voice/IVoiceManager;->stopVR()V

    .line 244
    .line 245
    .line 246
    return v1

    .line 247
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-interface {p0}, Lcom/hsae/autosdk/voice/IVoiceManager;->startVR()V

    .line 251
    .line 252
    .line 253
    return v1

    .line 254
    nop

    .line 255
    :pswitch_data_0
    .packed-switch 0x1
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
