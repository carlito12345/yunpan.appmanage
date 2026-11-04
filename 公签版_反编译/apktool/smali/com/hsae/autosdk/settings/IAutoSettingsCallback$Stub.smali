.class public abstract Lcom/hsae/autosdk/settings/IAutoSettingsCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/hsae/autosdk/settings/IAutoSettingsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hsae/autosdk/settings/IAutoSettingsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hsae/autosdk/settings/IAutoSettingsCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hsae.autosdk.settings.IAutoSettingsCallback"

.field static final TRANSACTION_onAcConnectState:I = 0xd

.field static final TRANSACTION_onAcRemoteControlRequest:I = 0xe

.field static final TRANSACTION_onAvmConnectState:I = 0xc

.field static final TRANSACTION_onBTPhoneVolumeResponse:I = 0x7

.field static final TRANSACTION_onBrightnessResponse:I = 0x2

.field static final TRANSACTION_onContrastResponse:I = 0x3

.field static final TRANSACTION_onDayNightAutoStateResponse:I = 0x4

.field static final TRANSACTION_onDrivingSafetyStateResponse:I = 0x5

.field static final TRANSACTION_onMCANInstrumentSetClock:I = 0xb

.field static final TRANSACTION_onMapSkinModeChanged:I = 0x10

.field static final TRANSACTION_onOnlineAppUpgradeStateChanged:I = 0xf

.field static final TRANSACTION_onProductTypeChanged:I = 0x9

.field static final TRANSACTION_onScreenStateResponse:I = 0x1

.field static final TRANSACTION_onSoundEffectWithSpeedChanged:I = 0xa

.field static final TRANSACTION_onSystemVolumeResponse:I = 0x6

.field static final TRANSACTION_setNaviMuteState:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.hsae.autosdk.settings.IAutoSettingsCallback"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/settings/IAutoSettingsCallback;
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
    const-string v0, "com.hsae.autosdk.settings.IAutoSettingsCallback"

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
    instance-of v1, v0, Lcom/hsae/autosdk/settings/IAutoSettingsCallback;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/hsae/autosdk/settings/IAutoSettingsCallback;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/hsae/autosdk/settings/IAutoSettingsCallback$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/hsae/autosdk/settings/IAutoSettingsCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v1, "com.hsae.autosdk.settings.IAutoSettingsCallback"

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
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettingsCallback;->onMapSkinModeChanged(I)V

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    :cond_1
    invoke-interface {p0, p1, v0}, Lcom/hsae/autosdk/settings/IAutoSettingsCallback;->onOnlineAppUpgradeStateChanged(IZ)V

    .line 48
    .line 49
    .line 50
    return v2

    .line 51
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettingsCallback;->onAcRemoteControlRequest(I)V

    .line 59
    .line 60
    .line 61
    return v2

    .line 62
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettingsCallback;->onAcConnectState(I)V

    .line 70
    .line 71
    .line 72
    return v2

    .line 73
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettingsCallback;->onAvmConnectState(I)V

    .line 81
    .line 82
    .line 83
    return v2

    .line 84
    :pswitch_5
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
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 92
    .line 93
    .line 94
    move-result-wide p2

    .line 95
    invoke-interface {p0, p1, p2, p3}, Lcom/hsae/autosdk/settings/IAutoSettingsCallback;->onMCANInstrumentSetClock(IJ)V

    .line 96
    .line 97
    .line 98
    return v2

    .line 99
    :pswitch_6
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
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettingsCallback;->onSoundEffectWithSpeedChanged(I)V

    .line 107
    .line 108
    .line 109
    return v2

    .line 110
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettingsCallback;->onProductTypeChanged(I)V

    .line 118
    .line 119
    .line 120
    return v2

    .line 121
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-eqz p1, :cond_2

    .line 129
    .line 130
    const/4 v0, 0x1

    .line 131
    :cond_2
    invoke-interface {p0, v0}, Lcom/hsae/autosdk/settings/IAutoSettingsCallback;->setNaviMuteState(Z)V

    .line 132
    .line 133
    .line 134
    return v2

    .line 135
    :pswitch_9
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
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettingsCallback;->onBTPhoneVolumeResponse(I)V

    .line 143
    .line 144
    .line 145
    return v2

    .line 146
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 154
    .line 155
    .line 156
    move-result p2

    .line 157
    invoke-interface {p0, p1, p2}, Lcom/hsae/autosdk/settings/IAutoSettingsCallback;->onSystemVolumeResponse(II)V

    .line 158
    .line 159
    .line 160
    return v2

    .line 161
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    if-eqz p1, :cond_3

    .line 169
    .line 170
    const/4 v0, 0x1

    .line 171
    :cond_3
    invoke-interface {p0, v0}, Lcom/hsae/autosdk/settings/IAutoSettingsCallback;->onDrivingSafetyStateResponse(Z)V

    .line 172
    .line 173
    .line 174
    return v2

    .line 175
    :pswitch_c
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
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettingsCallback;->onDayNightAutoStateResponse(I)V

    .line 183
    .line 184
    .line 185
    return v2

    .line 186
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettingsCallback;->onContrastResponse(I)V

    .line 194
    .line 195
    .line 196
    return v2

    .line 197
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettingsCallback;->onBrightnessResponse(I)V

    .line 205
    .line 206
    .line 207
    return v2

    .line 208
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    if-eqz p1, :cond_4

    .line 216
    .line 217
    const/4 v0, 0x1

    .line 218
    :cond_4
    invoke-interface {p0, v0}, Lcom/hsae/autosdk/settings/IAutoSettingsCallback;->onScreenStateResponse(Z)V

    .line 219
    .line 220
    .line 221
    return v2

    .line 222
    nop

    .line 223
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
