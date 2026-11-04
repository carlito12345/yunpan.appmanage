.class public abstract Lcom/hsae/autosdk/settings/IAutoSettings$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/hsae/autosdk/settings/IAutoSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hsae/autosdk/settings/IAutoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hsae/autosdk/settings/IAutoSettings$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hsae.autosdk.settings.IAutoSettings"

.field static final TRANSACTION_changeBossForTest:I = 0x2d

.field static final TRANSACTION_changeFrontRearBalanceForTest:I = 0x30

.field static final TRANSACTION_changeHighForTest:I = 0x2e

.field static final TRANSACTION_changeLeftRightBalanceForTest:I = 0x2f

.field static final TRANSACTION_changeRadioVolumeForTest:I = 0x2c

.field static final TRANSACTION_changeVehicleSpeedLevelForTest:I = 0x2a

.field static final TRANSACTION_changeVehicleSpeedValueForTest:I = 0x2b

.field static final TRANSACTION_changeVolumeFromVoiceRecognition:I = 0x32

.field static final TRANSACTION_cutSongFromVoiceRecognition:I = 0x33

.field static final TRANSACTION_executePowerKeyAction:I = 0x16

.field static final TRANSACTION_flatModeChanged:I = 0xd

.field static final TRANSACTION_getAudioChimeStatus:I = 0x23

.field static final TRANSACTION_getAutoLightStatus:I = 0x3b

.field static final TRANSACTION_getBackLightBrightness:I = 0x3

.field static final TRANSACTION_getBspArkamysSoundEffect:I = 0x4f

.field static final TRANSACTION_getBtPhoneVolume:I = 0x26

.field static final TRANSACTION_getContrast:I = 0x7

.field static final TRANSACTION_getDayNightModeIndex:I = 0x2

.field static final TRANSACTION_getDeviceID:I = 0x27

.field static final TRANSACTION_getDeviceIdEx:I = 0x28

.field static final TRANSACTION_getDeviceIdTolaunch:I = 0x38

.field static final TRANSACTION_getEQPIN:I = 0x42

.field static final TRANSACTION_getFlatMode:I = 0xe

.field static final TRANSACTION_getHardwareModelInfo:I = 0x59

.field static final TRANSACTION_getHardwareModelInfos:I = 0x58

.field static final TRANSACTION_getMapSkinMode:I = 0x57

.field static final TRANSACTION_getOnlineAppUpgradeState:I = 0x55

.field static final TRANSACTION_getPowerState:I = 0x15

.field static final TRANSACTION_getProductType:I = 0x41

.field static final TRANSACTION_getSafeyLockValue:I = 0x1d

.field static final TRANSACTION_getSoundEffectWithSpeed:I = 0x4e

.field static final TRANSACTION_getSystemVolume:I = 0x22

.field static final TRANSACTION_hideVolumeWindow:I = 0x53

.field static final TRANSACTION_isDiagnoseMode:I = 0x13

.field static final TRANSACTION_isSafetyLockEnabled:I = 0x1e

.field static final TRANSACTION_mainAudioDuck:I = 0xc

.field static final TRANSACTION_mainAudioDuckIn:I = 0x34

.field static final TRANSACTION_mainAudioDuckOut:I = 0x35

.field static final TRANSACTION_muteMic:I = 0x12

.field static final TRANSACTION_notifyNaviEnterTunnel:I = 0x3e

.field static final TRANSACTION_notifyTimeFormat:I = 0x3f

.field static final TRANSACTION_playChime:I = 0x4a

.field static final TRANSACTION_popupVolumeChange:I = 0x52

.field static final TRANSACTION_readVersionResumeList:I = 0x47

.field static final TRANSACTION_registerAutoSetttingsCallback:I = 0x1f

.field static final TRANSACTION_registerCommonStateCallback:I = 0x3c

.field static final TRANSACTION_resetDisplaySettingsToDefault:I = 0x8

.field static final TRANSACTION_resetToDefaults:I = 0x1

.field static final TRANSACTION_restartMcuAfterUpgrade:I = 0x44

.field static final TRANSACTION_restartSystem:I = 0x43

.field static final TRANSACTION_sendAvmRestartState:I = 0x51

.field static final TRANSACTION_setAudioMute:I = 0xa

.field static final TRANSACTION_setBackLightBrightness:I = 0x4

.field static final TRANSACTION_setBlackScreen:I = 0x37

.field static final TRANSACTION_setBrightnessBySetting:I = 0x5

.field static final TRANSACTION_setBspArkamysSoundEffect:I = 0x4d

.field static final TRANSACTION_setBtPhoneVolume:I = 0x25

.field static final TRANSACTION_setContrast:I = 0x6

.field static final TRANSACTION_setDayNightModeIndex:I = 0x10

.field static final TRANSACTION_setDrivingSafetyState:I = 0x1c

.field static final TRANSACTION_setDspUpdate:I = 0x49

.field static final TRANSACTION_setFrontRearBalance:I = 0x19

.field static final TRANSACTION_setHighpitch:I = 0x17

.field static final TRANSACTION_setInfo:I = 0x46

.field static final TRANSACTION_setLauncherEditMode:I = 0x45

.field static final TRANSACTION_setLeftRightBalance:I = 0x1a

.field static final TRANSACTION_setLoudness:I = 0x36

.field static final TRANSACTION_setLowpitch:I = 0x18

.field static final TRANSACTION_setMapSkinMode:I = 0x56

.field static final TRANSACTION_setMuteBtAisle:I = 0x4b

.field static final TRANSACTION_setNaviMuteState:I = 0xb

.field static final TRANSACTION_setNightMode:I = 0x9

.field static final TRANSACTION_setOnlineAppUpgradeState:I = 0x54

.field static final TRANSACTION_setPowerState:I = 0x14

.field static final TRANSACTION_setProductType:I = 0x40

.field static final TRANSACTION_setRadioIndexEnable:I = 0x50

.field static final TRANSACTION_setScreenState:I = 0x11

.field static final TRANSACTION_setSoundEffectWithSpeed:I = 0x4c

.field static final TRANSACTION_setSpeedVolumeIncreaseLevel:I = 0x29

.field static final TRANSACTION_setSystemTime:I = 0x1b

.field static final TRANSACTION_setSystemVolume:I = 0x21

.field static final TRANSACTION_setVersion:I = 0xf

.field static final TRANSACTION_setVolumeFromVoiceRecognition:I = 0x31

.field static final TRANSACTION_setWifiInfo:I = 0x3a

.field static final TRANSACTION_switchAudioChime:I = 0x24

.field static final TRANSACTION_switchHeadLights:I = 0x39

.field static final TRANSACTION_unregisterAutoSetttingsCallback:I = 0x20

.field static final TRANSACTION_unregisterCommonStateCallback:I = 0x3d

.field static final TRANSACTION_writeVersionResumeList:I = 0x48


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.hsae.autosdk.settings.IAutoSettings"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/settings/IAutoSettings;
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
    const-string v0, "com.hsae.autosdk.settings.IAutoSettings"

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
    instance-of v1, v0, Lcom/hsae/autosdk/settings/IAutoSettings;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/hsae/autosdk/settings/IAutoSettings;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/hsae/autosdk/settings/IAutoSettings$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/hsae/autosdk/settings/IAutoSettings$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v1, "com.hsae.autosdk.settings.IAutoSettings"

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->getHardwareModelInfo(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return v2

    .line 40
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/IAutoSettings;->getHardwareModelInfos()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return v2

    .line 54
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/IAutoSettings;->getMapSkinMode()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    .line 66
    .line 67
    return v2

    .line 68
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->setMapSkinMode(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    .line 80
    .line 81
    return v2

    .line 82
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->getOnlineAppUpgradeState(I)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    .line 98
    .line 99
    return v2

    .line 100
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    if-eqz p2, :cond_1

    .line 112
    .line 113
    const/4 v0, 0x1

    .line 114
    :cond_1
    invoke-interface {p0, p1, v0}, Lcom/hsae/autosdk/settings/IAutoSettings;->setOnlineAppUpgradeState(IZ)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    .line 119
    .line 120
    return v2

    .line 121
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/IAutoSettings;->hideVolumeWindow()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    .line 129
    .line 130
    return v2

    .line 131
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->popupVolumeChange(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    .line 143
    .line 144
    return v2

    .line 145
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->sendAvmRestartState(I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    .line 157
    .line 158
    return v2

    .line 159
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->setRadioIndexEnable(I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    .line 171
    .line 172
    return v2

    .line 173
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/IAutoSettings;->getBspArkamysSoundEffect()I

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    .line 185
    .line 186
    return v2

    .line 187
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/IAutoSettings;->getSoundEffectWithSpeed()I

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    .line 199
    .line 200
    return v2

    .line 201
    :pswitch_c
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
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->setBspArkamysSoundEffect(I)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    .line 213
    .line 214
    return v2

    .line 215
    :pswitch_d
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
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->setSoundEffectWithSpeed(I)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    .line 227
    .line 228
    return v2

    .line 229
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 233
    .line 234
    .line 235
    move-result p1

    .line 236
    if-eqz p1, :cond_2

    .line 237
    .line 238
    const/4 v0, 0x1

    .line 239
    :cond_2
    invoke-interface {p0, v0}, Lcom/hsae/autosdk/settings/IAutoSettings;->setMuteBtAisle(Z)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    .line 244
    .line 245
    return v2

    .line 246
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/IAutoSettings;->playChime()V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    .line 254
    .line 255
    return v2

    .line 256
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/IAutoSettings;->setDspUpdate()I

    .line 260
    .line 261
    .line 262
    move-result p1

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    .line 268
    .line 269
    return v2

    .line 270
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 274
    .line 275
    .line 276
    move-result p1

    .line 277
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->writeVersionResumeList(I)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    .line 282
    .line 283
    return v2

    .line 284
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/IAutoSettings;->readVersionResumeList()Ljava/util/List;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    .line 293
    .line 294
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 306
    .line 307
    .line 308
    move-result p4

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object p2

    .line 317
    invoke-interface {p0, p1, p4, v0, p2}, Lcom/hsae/autosdk/settings/IAutoSettings;->setInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    .line 322
    .line 323
    return v2

    .line 324
    :pswitch_14
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
    if-eqz p1, :cond_3

    .line 332
    .line 333
    const/4 v0, 0x1

    .line 334
    :cond_3
    invoke-interface {p0, v0}, Lcom/hsae/autosdk/settings/IAutoSettings;->setLauncherEditMode(Z)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    .line 339
    .line 340
    return v2

    .line 341
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/IAutoSettings;->restartMcuAfterUpgrade()V

    .line 345
    .line 346
    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    .line 349
    .line 350
    return v2

    .line 351
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/IAutoSettings;->restartSystem()V

    .line 355
    .line 356
    .line 357
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    .line 359
    .line 360
    return v2

    .line 361
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/IAutoSettings;->getEQPIN()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object p1

    .line 368
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    .line 370
    .line 371
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    return v2

    .line 375
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/IAutoSettings;->getProductType()I

    .line 379
    .line 380
    .line 381
    move-result p1

    .line 382
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    .line 384
    .line 385
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    .line 387
    .line 388
    return v2

    .line 389
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 393
    .line 394
    .line 395
    move-result p1

    .line 396
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->setProductType(I)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    .line 401
    .line 402
    return v2

    .line 403
    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 407
    .line 408
    .line 409
    move-result p1

    .line 410
    if-eqz p1, :cond_4

    .line 411
    .line 412
    const/4 p1, 0x1

    .line 413
    goto :goto_0

    .line 414
    :cond_4
    const/4 p1, 0x0

    .line 415
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 416
    .line 417
    .line 418
    move-result p4

    .line 419
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 420
    .line 421
    .line 422
    move-result p2

    .line 423
    if-eqz p2, :cond_5

    .line 424
    .line 425
    const/4 v0, 0x1

    .line 426
    :cond_5
    invoke-interface {p0, p1, p4, v0}, Lcom/hsae/autosdk/settings/IAutoSettings;->notifyTimeFormat(ZIZ)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    .line 431
    .line 432
    return v2

    .line 433
    :pswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 437
    .line 438
    .line 439
    move-result p1

    .line 440
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->notifyNaviEnterTunnel(I)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    .line 445
    .line 446
    return v2

    .line 447
    :pswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 451
    .line 452
    .line 453
    move-result-object p1

    .line 454
    invoke-static {p1}, Lcom/hsae/autosdk/settings/ICommonStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/settings/ICommonStateCallback;

    .line 455
    .line 456
    .line 457
    move-result-object p1

    .line 458
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->unregisterCommonStateCallback(Lcom/hsae/autosdk/settings/ICommonStateCallback;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    .line 463
    .line 464
    return v2

    .line 465
    :pswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 469
    .line 470
    .line 471
    move-result-object p1

    .line 472
    invoke-static {p1}, Lcom/hsae/autosdk/settings/ICommonStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/settings/ICommonStateCallback;

    .line 473
    .line 474
    .line 475
    move-result-object p1

    .line 476
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->registerCommonStateCallback(Lcom/hsae/autosdk/settings/ICommonStateCallback;)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    .line 481
    .line 482
    return v2

    .line 483
    :pswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/IAutoSettings;->getAutoLightStatus()I

    .line 487
    .line 488
    .line 489
    move-result p1

    .line 490
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    .line 492
    .line 493
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 494
    .line 495
    .line 496
    return v2

    .line 497
    :pswitch_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 501
    .line 502
    .line 503
    move-result-object p1

    .line 504
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 505
    .line 506
    .line 507
    move-result p2

    .line 508
    invoke-interface {p0, p1, p2}, Lcom/hsae/autosdk/settings/IAutoSettings;->setWifiInfo([BI)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    .line 513
    .line 514
    return v2

    .line 515
    :pswitch_20
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 519
    .line 520
    .line 521
    move-result p1

    .line 522
    if-eqz p1, :cond_6

    .line 523
    .line 524
    const/4 v0, 0x1

    .line 525
    :cond_6
    invoke-interface {p0, v0}, Lcom/hsae/autosdk/settings/IAutoSettings;->switchHeadLights(Z)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    .line 530
    .line 531
    return v2

    .line 532
    :pswitch_21
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/IAutoSettings;->getDeviceIdTolaunch()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object p1

    .line 539
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    .line 541
    .line 542
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    return v2

    .line 546
    :pswitch_22
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/IAutoSettings;->setBlackScreen()V

    .line 550
    .line 551
    .line 552
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    .line 554
    .line 555
    return v2

    .line 556
    :pswitch_23
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 560
    .line 561
    .line 562
    move-result p1

    .line 563
    if-eqz p1, :cond_7

    .line 564
    .line 565
    const/4 v0, 0x1

    .line 566
    :cond_7
    invoke-interface {p0, v0}, Lcom/hsae/autosdk/settings/IAutoSettings;->setLoudness(Z)V

    .line 567
    .line 568
    .line 569
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    .line 571
    .line 572
    return v2

    .line 573
    :pswitch_24
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 577
    .line 578
    .line 579
    move-result-object p1

    .line 580
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->mainAudioDuckOut(Landroid/os/IBinder;)V

    .line 581
    .line 582
    .line 583
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    .line 585
    .line 586
    return v2

    .line 587
    :pswitch_25
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 591
    .line 592
    .line 593
    move-result-object p1

    .line 594
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->mainAudioDuckIn(Landroid/os/IBinder;)V

    .line 595
    .line 596
    .line 597
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    .line 599
    .line 600
    return v2

    .line 601
    :pswitch_26
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 605
    .line 606
    .line 607
    move-result p1

    .line 608
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 609
    .line 610
    .line 611
    move-result p2

    .line 612
    invoke-interface {p0, p1, p2}, Lcom/hsae/autosdk/settings/IAutoSettings;->cutSongFromVoiceRecognition(II)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    .line 617
    .line 618
    return v2

    .line 619
    :pswitch_27
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 623
    .line 624
    .line 625
    move-result p1

    .line 626
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 627
    .line 628
    .line 629
    move-result p2

    .line 630
    invoke-interface {p0, p1, p2}, Lcom/hsae/autosdk/settings/IAutoSettings;->changeVolumeFromVoiceRecognition(II)V

    .line 631
    .line 632
    .line 633
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    .line 635
    .line 636
    return v2

    .line 637
    :pswitch_28
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    .line 639
    .line 640
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 641
    .line 642
    .line 643
    move-result p1

    .line 644
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->setVolumeFromVoiceRecognition(I)V

    .line 645
    .line 646
    .line 647
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    .line 649
    .line 650
    return v2

    .line 651
    :pswitch_29
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 655
    .line 656
    .line 657
    move-result p1

    .line 658
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 659
    .line 660
    .line 661
    move-result p2

    .line 662
    invoke-interface {p0, p1, p2}, Lcom/hsae/autosdk/settings/IAutoSettings;->changeFrontRearBalanceForTest(II)V

    .line 663
    .line 664
    .line 665
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    .line 667
    .line 668
    return v2

    .line 669
    :pswitch_2a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 670
    .line 671
    .line 672
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 673
    .line 674
    .line 675
    move-result p1

    .line 676
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 677
    .line 678
    .line 679
    move-result p2

    .line 680
    invoke-interface {p0, p1, p2}, Lcom/hsae/autosdk/settings/IAutoSettings;->changeLeftRightBalanceForTest(II)V

    .line 681
    .line 682
    .line 683
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    .line 685
    .line 686
    return v2

    .line 687
    :pswitch_2b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 688
    .line 689
    .line 690
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 691
    .line 692
    .line 693
    move-result p1

    .line 694
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->changeHighForTest(I)V

    .line 695
    .line 696
    .line 697
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    .line 699
    .line 700
    return v2

    .line 701
    :pswitch_2c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 702
    .line 703
    .line 704
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 705
    .line 706
    .line 707
    move-result p1

    .line 708
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->changeBossForTest(I)V

    .line 709
    .line 710
    .line 711
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    .line 713
    .line 714
    return v2

    .line 715
    :pswitch_2d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 716
    .line 717
    .line 718
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 719
    .line 720
    .line 721
    move-result p1

    .line 722
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 723
    .line 724
    .line 725
    move-result p2

    .line 726
    invoke-interface {p0, p1, p2}, Lcom/hsae/autosdk/settings/IAutoSettings;->changeRadioVolumeForTest(II)V

    .line 727
    .line 728
    .line 729
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    .line 731
    .line 732
    return v2

    .line 733
    :pswitch_2e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 734
    .line 735
    .line 736
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 737
    .line 738
    .line 739
    move-result p1

    .line 740
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->changeVehicleSpeedValueForTest(I)V

    .line 741
    .line 742
    .line 743
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 744
    .line 745
    .line 746
    return v2

    .line 747
    :pswitch_2f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 748
    .line 749
    .line 750
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 751
    .line 752
    .line 753
    move-result p1

    .line 754
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->changeVehicleSpeedLevelForTest(I)V

    .line 755
    .line 756
    .line 757
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 758
    .line 759
    .line 760
    return v2

    .line 761
    :pswitch_30
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 762
    .line 763
    .line 764
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 765
    .line 766
    .line 767
    move-result p1

    .line 768
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->setSpeedVolumeIncreaseLevel(I)V

    .line 769
    .line 770
    .line 771
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 772
    .line 773
    .line 774
    return v2

    .line 775
    :pswitch_31
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 776
    .line 777
    .line 778
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/IAutoSettings;->getDeviceIdEx()Ljava/lang/String;

    .line 779
    .line 780
    .line 781
    move-result-object p1

    .line 782
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    .line 784
    .line 785
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 786
    .line 787
    .line 788
    return v2

    .line 789
    :pswitch_32
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 790
    .line 791
    .line 792
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/IAutoSettings;->getDeviceID()[I

    .line 793
    .line 794
    .line 795
    move-result-object p1

    .line 796
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 797
    .line 798
    .line 799
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 800
    .line 801
    .line 802
    return v2

    .line 803
    :pswitch_33
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 804
    .line 805
    .line 806
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/IAutoSettings;->getBtPhoneVolume()I

    .line 807
    .line 808
    .line 809
    move-result p1

    .line 810
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 811
    .line 812
    .line 813
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 814
    .line 815
    .line 816
    return v2

    .line 817
    :pswitch_34
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 818
    .line 819
    .line 820
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 821
    .line 822
    .line 823
    move-result p1

    .line 824
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->setBtPhoneVolume(I)V

    .line 825
    .line 826
    .line 827
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    .line 829
    .line 830
    return v2

    .line 831
    :pswitch_35
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 832
    .line 833
    .line 834
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 835
    .line 836
    .line 837
    move-result p1

    .line 838
    if-eqz p1, :cond_8

    .line 839
    .line 840
    const/4 v0, 0x1

    .line 841
    :cond_8
    invoke-interface {p0, v0}, Lcom/hsae/autosdk/settings/IAutoSettings;->switchAudioChime(Z)V

    .line 842
    .line 843
    .line 844
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    .line 846
    .line 847
    return v2

    .line 848
    :pswitch_36
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 849
    .line 850
    .line 851
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/IAutoSettings;->getAudioChimeStatus()Z

    .line 852
    .line 853
    .line 854
    move-result p1

    .line 855
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    .line 857
    .line 858
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 859
    .line 860
    .line 861
    return v2

    .line 862
    :pswitch_37
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 863
    .line 864
    .line 865
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 866
    .line 867
    .line 868
    move-result p1

    .line 869
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->getSystemVolume(I)I

    .line 870
    .line 871
    .line 872
    move-result p1

    .line 873
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    .line 875
    .line 876
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 877
    .line 878
    .line 879
    return v2

    .line 880
    :pswitch_38
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 881
    .line 882
    .line 883
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 884
    .line 885
    .line 886
    move-result p1

    .line 887
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 888
    .line 889
    .line 890
    move-result p2

    .line 891
    invoke-interface {p0, p1, p2}, Lcom/hsae/autosdk/settings/IAutoSettings;->setSystemVolume(II)V

    .line 892
    .line 893
    .line 894
    return v2

    .line 895
    :pswitch_39
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 896
    .line 897
    .line 898
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 899
    .line 900
    .line 901
    move-result-object p1

    .line 902
    invoke-static {p1}, Lcom/hsae/autosdk/settings/IAutoSettingsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/settings/IAutoSettingsCallback;

    .line 903
    .line 904
    .line 905
    move-result-object p1

    .line 906
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->unregisterAutoSetttingsCallback(Lcom/hsae/autosdk/settings/IAutoSettingsCallback;)V

    .line 907
    .line 908
    .line 909
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    .line 911
    .line 912
    return v2

    .line 913
    :pswitch_3a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 914
    .line 915
    .line 916
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 917
    .line 918
    .line 919
    move-result-object p1

    .line 920
    invoke-static {p1}, Lcom/hsae/autosdk/settings/IAutoSettingsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/settings/IAutoSettingsCallback;

    .line 921
    .line 922
    .line 923
    move-result-object p1

    .line 924
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->registerAutoSetttingsCallback(Lcom/hsae/autosdk/settings/IAutoSettingsCallback;)V

    .line 925
    .line 926
    .line 927
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    .line 929
    .line 930
    return v2

    .line 931
    :pswitch_3b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 932
    .line 933
    .line 934
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/IAutoSettings;->isSafetyLockEnabled()Z

    .line 935
    .line 936
    .line 937
    move-result p1

    .line 938
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 939
    .line 940
    .line 941
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 942
    .line 943
    .line 944
    return v2

    .line 945
    :pswitch_3c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 946
    .line 947
    .line 948
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/IAutoSettings;->getSafeyLockValue()Z

    .line 949
    .line 950
    .line 951
    move-result p1

    .line 952
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 953
    .line 954
    .line 955
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 956
    .line 957
    .line 958
    return v2

    .line 959
    :pswitch_3d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 960
    .line 961
    .line 962
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 963
    .line 964
    .line 965
    move-result p1

    .line 966
    if-eqz p1, :cond_9

    .line 967
    .line 968
    const/4 v0, 0x1

    .line 969
    :cond_9
    invoke-interface {p0, v0}, Lcom/hsae/autosdk/settings/IAutoSettings;->setDrivingSafetyState(Z)V

    .line 970
    .line 971
    .line 972
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 973
    .line 974
    .line 975
    return v2

    .line 976
    :pswitch_3e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 977
    .line 978
    .line 979
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 980
    .line 981
    .line 982
    move-result-wide v0

    .line 983
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 984
    .line 985
    .line 986
    move-result p1

    .line 987
    invoke-interface {p0, v0, v1, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->setSystemTime(JI)V

    .line 988
    .line 989
    .line 990
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 991
    .line 992
    .line 993
    return v2

    .line 994
    :pswitch_3f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 995
    .line 996
    .line 997
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 998
    .line 999
    .line 1000
    move-result p1

    .line 1001
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->setLeftRightBalance(I)V

    .line 1002
    .line 1003
    .line 1004
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1005
    .line 1006
    .line 1007
    return v2

    .line 1008
    :pswitch_40
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1009
    .line 1010
    .line 1011
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1012
    .line 1013
    .line 1014
    move-result p1

    .line 1015
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->setFrontRearBalance(I)V

    .line 1016
    .line 1017
    .line 1018
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1019
    .line 1020
    .line 1021
    return v2

    .line 1022
    :pswitch_41
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1023
    .line 1024
    .line 1025
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1026
    .line 1027
    .line 1028
    move-result p1

    .line 1029
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->setLowpitch(I)V

    .line 1030
    .line 1031
    .line 1032
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1033
    .line 1034
    .line 1035
    return v2

    .line 1036
    :pswitch_42
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1037
    .line 1038
    .line 1039
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1040
    .line 1041
    .line 1042
    move-result p1

    .line 1043
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->setHighpitch(I)V

    .line 1044
    .line 1045
    .line 1046
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1047
    .line 1048
    .line 1049
    return v2

    .line 1050
    :pswitch_43
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1051
    .line 1052
    .line 1053
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1054
    .line 1055
    .line 1056
    move-result p1

    .line 1057
    if-eqz p1, :cond_a

    .line 1058
    .line 1059
    const/4 v0, 0x1

    .line 1060
    :cond_a
    invoke-interface {p0, v0}, Lcom/hsae/autosdk/settings/IAutoSettings;->executePowerKeyAction(Z)V

    .line 1061
    .line 1062
    .line 1063
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1064
    .line 1065
    .line 1066
    return v2

    .line 1067
    :pswitch_44
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1068
    .line 1069
    .line 1070
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/IAutoSettings;->getPowerState()Z

    .line 1071
    .line 1072
    .line 1073
    move-result p1

    .line 1074
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1078
    .line 1079
    .line 1080
    return v2

    .line 1081
    :pswitch_45
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1082
    .line 1083
    .line 1084
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1085
    .line 1086
    .line 1087
    move-result p1

    .line 1088
    if-eqz p1, :cond_b

    .line 1089
    .line 1090
    const/4 v0, 0x1

    .line 1091
    :cond_b
    invoke-interface {p0, v0}, Lcom/hsae/autosdk/settings/IAutoSettings;->setPowerState(Z)V

    .line 1092
    .line 1093
    .line 1094
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1095
    .line 1096
    .line 1097
    return v2

    .line 1098
    :pswitch_46
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1099
    .line 1100
    .line 1101
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/IAutoSettings;->isDiagnoseMode()Z

    .line 1102
    .line 1103
    .line 1104
    move-result p1

    .line 1105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1106
    .line 1107
    .line 1108
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1109
    .line 1110
    .line 1111
    return v2

    .line 1112
    :pswitch_47
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1113
    .line 1114
    .line 1115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1116
    .line 1117
    .line 1118
    move-result p1

    .line 1119
    if-eqz p1, :cond_c

    .line 1120
    .line 1121
    const/4 v0, 0x1

    .line 1122
    :cond_c
    invoke-interface {p0, v0}, Lcom/hsae/autosdk/settings/IAutoSettings;->muteMic(Z)V

    .line 1123
    .line 1124
    .line 1125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1126
    .line 1127
    .line 1128
    return v2

    .line 1129
    :pswitch_48
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1130
    .line 1131
    .line 1132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1133
    .line 1134
    .line 1135
    move-result p1

    .line 1136
    if-eqz p1, :cond_d

    .line 1137
    .line 1138
    const/4 v0, 0x1

    .line 1139
    :cond_d
    invoke-interface {p0, v0}, Lcom/hsae/autosdk/settings/IAutoSettings;->setScreenState(Z)V

    .line 1140
    .line 1141
    .line 1142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1143
    .line 1144
    .line 1145
    return v2

    .line 1146
    :pswitch_49
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1147
    .line 1148
    .line 1149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1150
    .line 1151
    .line 1152
    move-result p1

    .line 1153
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->setDayNightModeIndex(I)V

    .line 1154
    .line 1155
    .line 1156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1157
    .line 1158
    .line 1159
    return v2

    .line 1160
    :pswitch_4a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1161
    .line 1162
    .line 1163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1164
    .line 1165
    .line 1166
    move-result p1

    .line 1167
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1168
    .line 1169
    .line 1170
    move-result-object p2

    .line 1171
    invoke-interface {p0, p1, p2}, Lcom/hsae/autosdk/settings/IAutoSettings;->setVersion(ILjava/lang/String;)V

    .line 1172
    .line 1173
    .line 1174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1175
    .line 1176
    .line 1177
    return v2

    .line 1178
    :pswitch_4b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1179
    .line 1180
    .line 1181
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/IAutoSettings;->getFlatMode()I

    .line 1182
    .line 1183
    .line 1184
    move-result p1

    .line 1185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1186
    .line 1187
    .line 1188
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1189
    .line 1190
    .line 1191
    return v2

    .line 1192
    :pswitch_4c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1193
    .line 1194
    .line 1195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1196
    .line 1197
    .line 1198
    move-result p1

    .line 1199
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->flatModeChanged(I)V

    .line 1200
    .line 1201
    .line 1202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1203
    .line 1204
    .line 1205
    return v2

    .line 1206
    :pswitch_4d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1207
    .line 1208
    .line 1209
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1210
    .line 1211
    .line 1212
    move-result p1

    .line 1213
    if-eqz p1, :cond_e

    .line 1214
    .line 1215
    const/4 v0, 0x1

    .line 1216
    :cond_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1217
    .line 1218
    .line 1219
    move-result p1

    .line 1220
    invoke-interface {p0, v0, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->mainAudioDuck(ZI)V

    .line 1221
    .line 1222
    .line 1223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1224
    .line 1225
    .line 1226
    return v2

    .line 1227
    :pswitch_4e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1228
    .line 1229
    .line 1230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1231
    .line 1232
    .line 1233
    move-result p1

    .line 1234
    if-eqz p1, :cond_f

    .line 1235
    .line 1236
    const/4 v0, 0x1

    .line 1237
    :cond_f
    invoke-interface {p0, v0}, Lcom/hsae/autosdk/settings/IAutoSettings;->setNaviMuteState(Z)V

    .line 1238
    .line 1239
    .line 1240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1241
    .line 1242
    .line 1243
    return v2

    .line 1244
    :pswitch_4f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1245
    .line 1246
    .line 1247
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1248
    .line 1249
    .line 1250
    move-result p1

    .line 1251
    if-eqz p1, :cond_10

    .line 1252
    .line 1253
    const/4 v0, 0x1

    .line 1254
    :cond_10
    invoke-interface {p0, v0}, Lcom/hsae/autosdk/settings/IAutoSettings;->setAudioMute(Z)V

    .line 1255
    .line 1256
    .line 1257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1258
    .line 1259
    .line 1260
    return v2

    .line 1261
    :pswitch_50
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1262
    .line 1263
    .line 1264
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1265
    .line 1266
    .line 1267
    move-result p1

    .line 1268
    if-eqz p1, :cond_11

    .line 1269
    .line 1270
    const/4 v0, 0x1

    .line 1271
    :cond_11
    invoke-interface {p0, v0}, Lcom/hsae/autosdk/settings/IAutoSettings;->setNightMode(Z)V

    .line 1272
    .line 1273
    .line 1274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1275
    .line 1276
    .line 1277
    return v2

    .line 1278
    :pswitch_51
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1279
    .line 1280
    .line 1281
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/IAutoSettings;->resetDisplaySettingsToDefault()V

    .line 1282
    .line 1283
    .line 1284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1285
    .line 1286
    .line 1287
    return v2

    .line 1288
    :pswitch_52
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1289
    .line 1290
    .line 1291
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/IAutoSettings;->getContrast()I

    .line 1292
    .line 1293
    .line 1294
    move-result p1

    .line 1295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1296
    .line 1297
    .line 1298
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1299
    .line 1300
    .line 1301
    return v2

    .line 1302
    :pswitch_53
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1303
    .line 1304
    .line 1305
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1306
    .line 1307
    .line 1308
    move-result p1

    .line 1309
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->setContrast(I)V

    .line 1310
    .line 1311
    .line 1312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1313
    .line 1314
    .line 1315
    return v2

    .line 1316
    :pswitch_54
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1317
    .line 1318
    .line 1319
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1320
    .line 1321
    .line 1322
    move-result p1

    .line 1323
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->setBrightnessBySetting(I)Z

    .line 1324
    .line 1325
    .line 1326
    move-result p1

    .line 1327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1328
    .line 1329
    .line 1330
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1331
    .line 1332
    .line 1333
    return v2

    .line 1334
    :pswitch_55
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1335
    .line 1336
    .line 1337
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1338
    .line 1339
    .line 1340
    move-result p1

    .line 1341
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->setBackLightBrightness(I)Z

    .line 1342
    .line 1343
    .line 1344
    move-result p1

    .line 1345
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1346
    .line 1347
    .line 1348
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1349
    .line 1350
    .line 1351
    return v2

    .line 1352
    :pswitch_56
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1353
    .line 1354
    .line 1355
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/IAutoSettings;->getBackLightBrightness()I

    .line 1356
    .line 1357
    .line 1358
    move-result p1

    .line 1359
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1360
    .line 1361
    .line 1362
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1363
    .line 1364
    .line 1365
    return v2

    .line 1366
    :pswitch_57
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1367
    .line 1368
    .line 1369
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/IAutoSettings;->getDayNightModeIndex()I

    .line 1370
    .line 1371
    .line 1372
    move-result p1

    .line 1373
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1374
    .line 1375
    .line 1376
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1377
    .line 1378
    .line 1379
    return v2

    .line 1380
    :pswitch_58
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1381
    .line 1382
    .line 1383
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/IAutoSettings;->resetToDefaults()V

    .line 1384
    .line 1385
    .line 1386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1387
    .line 1388
    .line 1389
    return v2

    .line 1390
    nop

    .line 1391
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
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
