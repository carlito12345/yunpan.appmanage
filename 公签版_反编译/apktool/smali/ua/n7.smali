.class public final Lua/n7;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lcom/yunpan/appmanage/carsdk/f;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/carsdk/f;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/n7;->e:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lua/n7;->f:Lcom/yunpan/appmanage/carsdk/f;

    .line 7
    .line 8
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string p1, "com.iflytek.autofly.voicecore.aidl.platform.INLPProtocolConvert"

    .line 12
    .line 13
    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    iput-object p1, p0, Lua/n7;->f:Lcom/yunpan/appmanage/carsdk/f;

    .line 18
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string p1, "com.iflytek.autofly.voicecore.aidl.platform.IAppStore"

    .line 23
    .line 24
    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget v0, p0, Lua/n7;->e:I

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    .line 1
    iget v0, p0, Lua/n7;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, "com.iflytek.autofly.voicecore.aidl.platform.IAppStore"

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-lt p1, v1, :cond_0

    .line 10
    .line 11
    const v2, 0xffffff

    .line 12
    .line 13
    .line 14
    if-gt p1, v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    const v2, 0x5f4e5446

    .line 20
    .line 21
    .line 22
    if-eq p1, v2, :cond_4

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    if-eq p1, v1, :cond_2

    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    if-eq p1, v2, :cond_1

    .line 29
    .line 30
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    const-string p4, "video"

    .line 57
    .line 58
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p4

    .line 62
    if-eqz p4, :cond_3

    .line 63
    .line 64
    const-string v0, "com.your.package"

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    iget-object p4, p0, Lua/n7;->f:Lcom/yunpan/appmanage/carsdk/f;

    .line 68
    .line 69
    iget-object p4, p4, Lcom/yunpan/appmanage/carsdk/f;->b:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p4, Lcom/yunpan/appmanage/ui/ActivityTextIflytek;

    .line 72
    .line 73
    iget-object p4, p4, Lcom/yunpan/appmanage/ui/ActivityTextIflytek;->E:Landroid/widget/TextView;

    .line 74
    .line 75
    new-instance v2, La2/e0;

    .line 76
    .line 77
    const/16 v3, 0xf

    .line 78
    .line 79
    invoke-direct {v2, p0, p1, p2, v3}, La2/e0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p4, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 83
    .line 84
    .line 85
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :goto_1
    return v1

    .line 96
    :pswitch_0
    const-string v0, "com.iflytek.autofly.voicecore.aidl.platform.INLPProtocolConvert"

    .line 97
    .line 98
    const/4 v1, 0x1

    .line 99
    if-lt p1, v1, :cond_5

    .line 100
    .line 101
    const v2, 0xffffff

    .line 102
    .line 103
    .line 104
    if-gt p1, v2, :cond_5

    .line 105
    .line 106
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :cond_5
    const v2, 0x5f4e5446

    .line 110
    .line 111
    .line 112
    if-eq p1, v2, :cond_7

    .line 113
    .line 114
    if-eq p1, v1, :cond_6

    .line 115
    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    goto :goto_2

    .line 121
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    iget-object p4, p0, Lua/n7;->f:Lcom/yunpan/appmanage/carsdk/f;

    .line 130
    .line 131
    iget-object p4, p4, Lcom/yunpan/appmanage/carsdk/f;->b:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast p4, Lcom/yunpan/appmanage/ui/ActivityTextIflytek;

    .line 134
    .line 135
    iget-object p4, p4, Lcom/yunpan/appmanage/ui/ActivityTextIflytek;->D:Landroid/widget/TextView;

    .line 136
    .line 137
    new-instance v0, La2/e0;

    .line 138
    .line 139
    const/16 v2, 0xe

    .line 140
    .line 141
    invoke-direct {v0, p0, p1, p2, v2}, La2/e0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p4, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 145
    .line 146
    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    .line 149
    .line 150
    const/4 p1, 0x0

    .line 151
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    :goto_2
    return v1

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
