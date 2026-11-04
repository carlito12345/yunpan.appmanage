.class public abstract Lcom/autolink/app/vehicleservice/IVehicleControlCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/autolink/app/vehicleservice/IVehicleControlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autolink/app/vehicleservice/IVehicleControlCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autolink/app/vehicleservice/IVehicleControlCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.autolink.app.vehicleservice.IVehicleControlCallback"

.field static final TRANSACTION_onOnlySyncFloatData:I = 0x4

.field static final TRANSACTION_onOnlySyncIntData:I = 0x3

.field static final TRANSACTION_onReceiveFloat:I = 0x2

.field static final TRANSACTION_onReceiveInt:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.autolink.app.vehicleservice.IVehicleControlCallback"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/autolink/app/vehicleservice/IVehicleControlCallback;
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
    const-string v0, "com.autolink.app.vehicleservice.IVehicleControlCallback"

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
    instance-of v1, v0, Lcom/autolink/app/vehicleservice/IVehicleControlCallback;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/autolink/app/vehicleservice/IVehicleControlCallback;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/autolink/app/vehicleservice/IVehicleControlCallback$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/autolink/app/vehicleservice/IVehicleControlCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public static getDefaultImpl()Lcom/autolink/app/vehicleservice/IVehicleControlCallback;
    .locals 1

    .line 1
    sget-object v0, Lcom/autolink/app/vehicleservice/IVehicleControlCallback$Stub$Proxy;->sDefaultImpl:Lcom/autolink/app/vehicleservice/IVehicleControlCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public static setDefaultImpl(Lcom/autolink/app/vehicleservice/IVehicleControlCallback;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/autolink/app/vehicleservice/IVehicleControlCallback$Stub$Proxy;->sDefaultImpl:Lcom/autolink/app/vehicleservice/IVehicleControlCallback;

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
    sput-object p0, Lcom/autolink/app/vehicleservice/IVehicleControlCallback$Stub$Proxy;->sDefaultImpl:Lcom/autolink/app/vehicleservice/IVehicleControlCallback;

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
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "com.autolink.app.vehicleservice.IVehicleControlCallback"

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne p1, v2, :cond_1

    .line 6
    .line 7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    :cond_0
    invoke-interface {p0, p1, p3, v0}, Lcom/autolink/app/vehicleservice/IVehicleControlCallback;->onReceiveInt(IIZ)V

    .line 26
    .line 27
    .line 28
    return v2

    .line 29
    :cond_1
    const/4 v3, 0x2

    .line 30
    if-ne p1, v3, :cond_3

    .line 31
    .line 32
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_2

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    :cond_2
    invoke-interface {p0, p1, p3, v0}, Lcom/autolink/app/vehicleservice/IVehicleControlCallback;->onReceiveFloat(IFZ)V

    .line 51
    .line 52
    .line 53
    return v2

    .line 54
    :cond_3
    const/4 v0, 0x3

    .line 55
    if-ne p1, v0, :cond_4

    .line 56
    .line 57
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    invoke-interface {p0, p1, p2}, Lcom/autolink/app/vehicleservice/IVehicleControlCallback;->onOnlySyncIntData(II)V

    .line 69
    .line 70
    .line 71
    return v2

    .line 72
    :cond_4
    const/4 v0, 0x4

    .line 73
    if-ne p1, v0, :cond_5

    .line 74
    .line 75
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
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    invoke-interface {p0, p1, p2}, Lcom/autolink/app/vehicleservice/IVehicleControlCallback;->onOnlySyncFloatData(IF)V

    .line 87
    .line 88
    .line 89
    return v2

    .line 90
    :cond_5
    const v0, 0x5f4e5446

    .line 91
    .line 92
    .line 93
    if-ne p1, v0, :cond_6

    .line 94
    .line 95
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return v2

    .line 99
    :cond_6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    return p1
.end method
