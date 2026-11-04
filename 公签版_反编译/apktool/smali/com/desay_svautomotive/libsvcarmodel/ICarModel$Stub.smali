.class public abstract Lcom/desay_svautomotive/libsvcarmodel/ICarModel$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/desay_svautomotive/libsvcarmodel/ICarModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/desay_svautomotive/libsvcarmodel/ICarModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/desay_svautomotive/libsvcarmodel/ICarModel$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.desay_svautomotive.libsvcarmodel.ICarModel"

.field static final TRANSACTION_getSurfaceIsCreate:I = 0x9

.field static final TRANSACTION_onSurfaceChanged:I = 0x2

.field static final TRANSACTION_onSurfaceCreated:I = 0x1

.field static final TRANSACTION_onSurfaceDestroyed:I = 0x3

.field static final TRANSACTION_onTouchEvent:I = 0x4

.field static final TRANSACTION_regCallBack:I = 0xa

.field static final TRANSACTION_setDataBool:I = 0x8

.field static final TRANSACTION_setDataInt:I = 0x5

.field static final TRANSACTION_setDataReal:I = 0x6

.field static final TRANSACTION_setDataString:I = 0x7

.field static final TRANSACTION_unRegCallBack:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.desay_svautomotive.libsvcarmodel.ICarModel"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/desay_svautomotive/libsvcarmodel/ICarModel;
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
    const-string v0, "com.desay_svautomotive.libsvcarmodel.ICarModel"

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
    instance-of v1, v0, Lcom/desay_svautomotive/libsvcarmodel/ICarModel;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/desay_svautomotive/libsvcarmodel/ICarModel;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/desay_svautomotive/libsvcarmodel/ICarModel$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/desay_svautomotive/libsvcarmodel/ICarModel$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v1, "com.desay_svautomotive.libsvcarmodel.ICarModel"

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Lcom/desay_svautomotive/libsvcarmodel/ICarModelCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/desay_svautomotive/libsvcarmodel/ICarModelCallBack;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p0, p1}, Lcom/desay_svautomotive/libsvcarmodel/ICarModel;->unRegCallBack(Lcom/desay_svautomotive/libsvcarmodel/ICarModelCallBack;)V

    .line 34
    .line 35
    .line 36
    return v2

    .line 37
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1}, Lcom/desay_svautomotive/libsvcarmodel/ICarModelCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/desay_svautomotive/libsvcarmodel/ICarModelCallBack;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-interface {p0, p1}, Lcom/desay_svautomotive/libsvcarmodel/ICarModel;->regCallBack(Lcom/desay_svautomotive/libsvcarmodel/ICarModelCallBack;)V

    .line 49
    .line 50
    .line 51
    return v2

    .line 52
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p0}, Lcom/desay_svautomotive/libsvcarmodel/ICarModel;->getSurfaceIsCreate()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    .line 64
    .line 65
    return v2

    .line 66
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-eqz p2, :cond_1

    .line 78
    .line 79
    const/4 p2, 0x1

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    const/4 p2, 0x0

    .line 82
    :goto_0
    invoke-interface {p0, p1, p2}, Lcom/desay_svautomotive/libsvcarmodel/ICarModel;->setDataBool(Ljava/lang/String;Z)V

    .line 83
    .line 84
    .line 85
    return v2

    .line 86
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-interface {p0, p1, p2}, Lcom/desay_svautomotive/libsvcarmodel/ICarModel;->setDataString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return v2

    .line 101
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    .line 109
    .line 110
    .line 111
    move-result-wide p2

    .line 112
    invoke-interface {p0, p1, p2, p3}, Lcom/desay_svautomotive/libsvcarmodel/ICarModel;->setDataReal(Ljava/lang/String;D)V

    .line 113
    .line 114
    .line 115
    return v2

    .line 116
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    invoke-interface {p0, p1, p2}, Lcom/desay_svautomotive/libsvcarmodel/ICarModel;->setDataInt(Ljava/lang/String;I)V

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
    if-eqz p1, :cond_2

    .line 139
    .line 140
    sget-object p1, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 141
    .line 142
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    move-object v0, p1

    .line 147
    check-cast v0, Landroid/view/MotionEvent;

    .line 148
    .line 149
    :cond_2
    invoke-interface {p0, v0}, Lcom/desay_svautomotive/libsvcarmodel/ICarModel;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    .line 154
    .line 155
    return v2

    .line 156
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-interface {p0}, Lcom/desay_svautomotive/libsvcarmodel/ICarModel;->onSurfaceDestroyed()V

    .line 160
    .line 161
    .line 162
    return v2

    .line 163
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 171
    .line 172
    .line 173
    move-result p2

    .line 174
    invoke-interface {p0, p1, p2}, Lcom/desay_svautomotive/libsvcarmodel/ICarModel;->onSurfaceChanged(II)V

    .line 175
    .line 176
    .line 177
    return v2

    .line 178
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-eqz p1, :cond_3

    .line 186
    .line 187
    sget-object p1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 188
    .line 189
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    move-object v0, p1

    .line 194
    check-cast v0, Landroid/view/Surface;

    .line 195
    .line 196
    :cond_3
    invoke-interface {p0, v0}, Lcom/desay_svautomotive/libsvcarmodel/ICarModel;->onSurfaceCreated(Landroid/view/Surface;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    .line 201
    .line 202
    return v2

    .line 203
    :pswitch_data_0
    .packed-switch 0x1
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
