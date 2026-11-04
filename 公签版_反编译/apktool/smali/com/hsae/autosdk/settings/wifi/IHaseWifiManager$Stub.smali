.class public abstract Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hsae.autosdk.settings.wifi.IHaseWifiManager"

.field static final TRANSACTION_closeWifi:I = 0x8

.field static final TRANSACTION_closeWifiAP:I = 0x9

.field static final TRANSACTION_getConnectWifiHotNum:I = 0x7

.field static final TRANSACTION_getWifiApPSW:I = 0xf

.field static final TRANSACTION_getWifiApSSID:I = 0xe

.field static final TRANSACTION_getWifiApState:I = 0x3

.field static final TRANSACTION_getWifiState:I = 0x4

.field static final TRANSACTION_isWifiCtrlEnabled:I = 0x5

.field static final TRANSACTION_openWifi:I = 0xa

.field static final TRANSACTION_openWifiAP:I = 0xb

.field static final TRANSACTION_openWifiAPBySetting:I = 0xc

.field static final TRANSACTION_registerHaseWifiManager:I = 0x1

.field static final TRANSACTION_setWifiApConfi:I = 0xd

.field static final TRANSACTION_setWifiCtrlEnabled:I = 0x6

.field static final TRANSACTION_unRegisterHaseWifiManager:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.hsae.autosdk.settings.wifi.IHaseWifiManager"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;
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
    const-string v0, "com.hsae.autosdk.settings.wifi.IHaseWifiManager"

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
    instance-of v1, v0, Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v1, "com.hsae.autosdk.settings.wifi.IHaseWifiManager"

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
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;->getWifiApPSW()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

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
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;->getWifiApSSID()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-interface {p0, p1, p2}, Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;->setWifiApConfi(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    .line 65
    .line 66
    return v2

    .line 67
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;->openWifiAPBySetting()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

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
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;->openWifiAP()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    .line 85
    .line 86
    return v2

    .line 87
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;->openWifi()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    .line 95
    .line 96
    return v2

    .line 97
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;->closeWifiAP()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    .line 105
    .line 106
    return v2

    .line 107
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;->closeWifi()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    .line 115
    .line 116
    return v2

    .line 117
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;->getConnectWifiHotNum()I

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
    return v2

    .line 131
    :pswitch_9
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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 139
    .line 140
    .line 141
    move-result p2

    .line 142
    if-eqz p2, :cond_1

    .line 143
    .line 144
    const/4 p2, 0x1

    .line 145
    goto :goto_0

    .line 146
    :cond_1
    const/4 p2, 0x0

    .line 147
    :goto_0
    invoke-interface {p0, p1, p2}, Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;->setWifiCtrlEnabled(IZ)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    .line 152
    .line 153
    return v2

    .line 154
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;->isWifiCtrlEnabled()Z

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    .line 166
    .line 167
    return v2

    .line 168
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;->getWifiState()I

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    .line 180
    .line 181
    return v2

    .line 182
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;->getWifiApState()I

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
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-static {p1}, Lcom/hsae/autosdk/settings/wifi/IHaseWifiManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/settings/wifi/IHaseWifiManagerCallback;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;->unRegisterHaseWifiManager(Lcom/hsae/autosdk/settings/wifi/IHaseWifiManagerCallback;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    .line 212
    .line 213
    return v2

    .line 214
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-static {p1}, Lcom/hsae/autosdk/settings/wifi/IHaseWifiManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/settings/wifi/IHaseWifiManagerCallback;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-interface {p0, p1}, Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;->registerHaseWifiManager(Lcom/hsae/autosdk/settings/wifi/IHaseWifiManagerCallback;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    .line 230
    .line 231
    return v2

    .line 232
    nop

    .line 233
    :pswitch_data_0
    .packed-switch 0x1
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
