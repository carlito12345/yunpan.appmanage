.class public abstract Lcom/autolink/adapterinterface/clusterinteraction/IOmsCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/autolink/adapterinterface/clusterinteraction/IOmsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autolink/adapterinterface/clusterinteraction/IOmsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autolink/adapterinterface/clusterinteraction/IOmsCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.autolink.adapterinterface.clusterinteraction.IOmsCallback"

.field static final TRANSACTION_cameraStatusResp:I = 0x4

.field static final TRANSACTION_isHaveChildResp:I = 0x2

.field static final TRANSACTION_isHavePetResp:I = 0x1

.field static final TRANSACTION_isSafetySeatResp:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.autolink.adapterinterface.clusterinteraction.IOmsCallback"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IOmsCallback;
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
    const-string v0, "com.autolink.adapterinterface.clusterinteraction.IOmsCallback"

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
    instance-of v1, v0, Lcom/autolink/adapterinterface/clusterinteraction/IOmsCallback;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/autolink/adapterinterface/clusterinteraction/IOmsCallback;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/autolink/adapterinterface/clusterinteraction/IOmsCallback$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/autolink/adapterinterface/clusterinteraction/IOmsCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public static getDefaultImpl()Lcom/autolink/adapterinterface/clusterinteraction/IOmsCallback;
    .locals 1

    .line 1
    sget-object v0, Lcom/autolink/adapterinterface/clusterinteraction/IOmsCallback$Stub$Proxy;->sDefaultImpl:Lcom/autolink/adapterinterface/clusterinteraction/IOmsCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public static setDefaultImpl(Lcom/autolink/adapterinterface/clusterinteraction/IOmsCallback;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/autolink/adapterinterface/clusterinteraction/IOmsCallback$Stub$Proxy;->sDefaultImpl:Lcom/autolink/adapterinterface/clusterinteraction/IOmsCallback;

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
    sput-object p0, Lcom/autolink/adapterinterface/clusterinteraction/IOmsCallback$Stub$Proxy;->sDefaultImpl:Lcom/autolink/adapterinterface/clusterinteraction/IOmsCallback;

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
    const-string v1, "com.autolink.adapterinterface.clusterinteraction.IOmsCallback"

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
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-interface {p0, v0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IOmsCallback;->isHavePetResp(ZI)V

    .line 22
    .line 23
    .line 24
    return v2

    .line 25
    :cond_1
    const/4 v3, 0x2

    .line 26
    if-ne p1, v3, :cond_3

    .line 27
    .line 28
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-interface {p0, v0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IOmsCallback;->isHaveChildResp(ZI)V

    .line 43
    .line 44
    .line 45
    return v2

    .line 46
    :cond_3
    const/4 v3, 0x3

    .line 47
    if-ne p1, v3, :cond_5

    .line 48
    .line 49
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_4

    .line 57
    .line 58
    const/4 v0, 0x1

    .line 59
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    invoke-interface {p0, v0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IOmsCallback;->isSafetySeatResp(ZI)V

    .line 64
    .line 65
    .line 66
    return v2

    .line 67
    :cond_5
    const/4 v0, 0x4

    .line 68
    if-ne p1, v0, :cond_6

    .line 69
    .line 70
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    invoke-interface {p0, p1, p2}, Lcom/autolink/adapterinterface/clusterinteraction/IOmsCallback;->cameraStatusResp(II)V

    .line 82
    .line 83
    .line 84
    return v2

    .line 85
    :cond_6
    const v0, 0x5f4e5446

    .line 86
    .line 87
    .line 88
    if-ne p1, v0, :cond_7

    .line 89
    .line 90
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return v2

    .line 94
    :cond_7
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    return p1
.end method
