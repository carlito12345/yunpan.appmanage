.class public abstract Lcom/autolink/adapterinterface/clusterinteraction/ITyreTemperatureCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/autolink/adapterinterface/clusterinteraction/ITyreTemperatureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autolink/adapterinterface/clusterinteraction/ITyreTemperatureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autolink/adapterinterface/clusterinteraction/ITyreTemperatureCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.autolink.adapterinterface.clusterinteraction.ITyreTemperatureCallback"

.field static final TRANSACTION_onLFTyreTempChanged:I = 0x1

.field static final TRANSACTION_onLRTyreTempChanged:I = 0x3

.field static final TRANSACTION_onRFTyreTempChanged:I = 0x2

.field static final TRANSACTION_onRRTyreTempChanged:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.autolink.adapterinterface.clusterinteraction.ITyreTemperatureCallback"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/ITyreTemperatureCallback;
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
    const-string v0, "com.autolink.adapterinterface.clusterinteraction.ITyreTemperatureCallback"

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
    instance-of v1, v0, Lcom/autolink/adapterinterface/clusterinteraction/ITyreTemperatureCallback;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/autolink/adapterinterface/clusterinteraction/ITyreTemperatureCallback;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/autolink/adapterinterface/clusterinteraction/ITyreTemperatureCallback$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/autolink/adapterinterface/clusterinteraction/ITyreTemperatureCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public static getDefaultImpl()Lcom/autolink/adapterinterface/clusterinteraction/ITyreTemperatureCallback;
    .locals 1

    .line 1
    sget-object v0, Lcom/autolink/adapterinterface/clusterinteraction/ITyreTemperatureCallback$Stub$Proxy;->sDefaultImpl:Lcom/autolink/adapterinterface/clusterinteraction/ITyreTemperatureCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public static setDefaultImpl(Lcom/autolink/adapterinterface/clusterinteraction/ITyreTemperatureCallback;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/autolink/adapterinterface/clusterinteraction/ITyreTemperatureCallback$Stub$Proxy;->sDefaultImpl:Lcom/autolink/adapterinterface/clusterinteraction/ITyreTemperatureCallback;

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
    sput-object p0, Lcom/autolink/adapterinterface/clusterinteraction/ITyreTemperatureCallback$Stub$Proxy;->sDefaultImpl:Lcom/autolink/adapterinterface/clusterinteraction/ITyreTemperatureCallback;

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
    const-string v0, "com.autolink.adapterinterface.clusterinteraction.ITyreTemperatureCallback"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne p1, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/ITyreTemperatureCallback;->onLFTyreTempChanged(I)V

    .line 14
    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    const/4 v2, 0x2

    .line 18
    if-ne p1, v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/ITyreTemperatureCallback;->onRFTyreTempChanged(I)V

    .line 28
    .line 29
    .line 30
    return v1

    .line 31
    :cond_1
    const/4 v2, 0x3

    .line 32
    if-ne p1, v2, :cond_2

    .line 33
    .line 34
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/ITyreTemperatureCallback;->onLRTyreTempChanged(I)V

    .line 42
    .line 43
    .line 44
    return v1

    .line 45
    :cond_2
    const/4 v2, 0x4

    .line 46
    if-ne p1, v2, :cond_3

    .line 47
    .line 48
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/ITyreTemperatureCallback;->onRRTyreTempChanged(I)V

    .line 56
    .line 57
    .line 58
    return v1

    .line 59
    :cond_3
    const v2, 0x5f4e5446

    .line 60
    .line 61
    .line 62
    if-ne p1, v2, :cond_4

    .line 63
    .line 64
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return v1

    .line 68
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    return p1
.end method
