.class public abstract Lcom/desay_svautomotive/libsvcarinfo/INetComm$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/desay_svautomotive/libsvcarinfo/INetComm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/desay_svautomotive/libsvcarinfo/INetComm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/desay_svautomotive/libsvcarinfo/INetComm$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.desay_svautomotive.libsvcarinfo.INetComm"

.field static final TRANSACTION_getCarLanMsg:I = 0x9

.field static final TRANSACTION_getNetMsg:I = 0x3

.field static final TRANSACTION_getNetMsgConnectStatus:I = 0x5

.field static final TRANSACTION_regCallBack:I = 0x1

.field static final TRANSACTION_regCarLanMsgCallBack:I = 0x7

.field static final TRANSACTION_sendCarLanMsg:I = 0x6

.field static final TRANSACTION_sendNetMsg:I = 0x4

.field static final TRANSACTION_unRegCallBack:I = 0x2

.field static final TRANSACTION_unRegCarLanMsgCallBack:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.desay_svautomotive.libsvcarinfo.INetComm"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/desay_svautomotive/libsvcarinfo/INetComm;
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
    const-string v0, "com.desay_svautomotive.libsvcarinfo.INetComm"

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
    instance-of v1, v0, Lcom/desay_svautomotive/libsvcarinfo/INetComm;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/desay_svautomotive/libsvcarinfo/INetComm;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/desay_svautomotive/libsvcarinfo/INetComm$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/desay_svautomotive/libsvcarinfo/INetComm$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 8

    .line 1
    const v0, 0x5f4e5446

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    const-string v2, "com.desay_svautomotive.libsvcarinfo.INetComm"

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    invoke-interface {p0, p1, p2}, Lcom/desay_svautomotive/libsvcarinfo/INetComm;->getCarLanMsg(II)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return v1

    .line 43
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1}, Lcom/desay_svautomotive/libsvcarinfo/ICarLanCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/desay_svautomotive/libsvcarinfo/ICarLanCallBack;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-interface {p0, p1}, Lcom/desay_svautomotive/libsvcarinfo/INetComm;->unRegCarLanMsgCallBack(Lcom/desay_svautomotive/libsvcarinfo/ICarLanCallBack;)V

    .line 55
    .line 56
    .line 57
    return v1

    .line 58
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {p1}, Lcom/desay_svautomotive/libsvcarinfo/ICarLanCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/desay_svautomotive/libsvcarinfo/ICarLanCallBack;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-interface {p0, p1}, Lcom/desay_svautomotive/libsvcarinfo/INetComm;->regCarLanMsgCallBack(Lcom/desay_svautomotive/libsvcarinfo/ICarLanCallBack;)V

    .line 70
    .line 71
    .line 72
    return v1

    .line 73
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    move-object v2, p0

    .line 97
    invoke-interface/range {v2 .. v7}, Lcom/desay_svautomotive/libsvcarinfo/INetComm;->sendCarLanMsg(IILjava/lang/String;Ljava/lang/String;[B)V

    .line 98
    .line 99
    .line 100
    return v1

    .line 101
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    invoke-interface {p0, p1}, Lcom/desay_svautomotive/libsvcarinfo/INetComm;->getNetMsgConnectStatus(I)Z

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
    return v1

    .line 119
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 127
    .line 128
    .line 129
    move-result-object p3

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 131
    .line 132
    .line 133
    move-result p2

    .line 134
    invoke-interface {p0, p1, p3, p2}, Lcom/desay_svautomotive/libsvcarinfo/INetComm;->sendNetMsg(I[BI)V

    .line 135
    .line 136
    .line 137
    return v1

    .line 138
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    invoke-interface {p0, p1}, Lcom/desay_svautomotive/libsvcarinfo/INetComm;->getNetMsg(I)[B

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 153
    .line 154
    .line 155
    return v1

    .line 156
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-static {p1}, Lcom/desay_svautomotive/libsvcarinfo/INetCommCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/desay_svautomotive/libsvcarinfo/INetCommCallBack;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-interface {p0, p1}, Lcom/desay_svautomotive/libsvcarinfo/INetComm;->unRegCallBack(Lcom/desay_svautomotive/libsvcarinfo/INetCommCallBack;)V

    .line 168
    .line 169
    .line 170
    return v1

    .line 171
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-static {p1}, Lcom/desay_svautomotive/libsvcarinfo/INetCommCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/desay_svautomotive/libsvcarinfo/INetCommCallBack;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-interface {p0, p1}, Lcom/desay_svautomotive/libsvcarinfo/INetComm;->regCallBack(Lcom/desay_svautomotive/libsvcarinfo/INetCommCallBack;)V

    .line 183
    .line 184
    .line 185
    return v1

    .line 186
    nop

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
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
