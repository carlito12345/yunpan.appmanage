.class public final Lcom/yunpan/appmanage/carsdk/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "com.desay.libsvcarinfo.ICarInfoCallBack"

    .line 2
    .line 3
    return-object v0
.end method

.method public final isBinderAlive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .locals 0

    return-void
.end method

.method public final pingBinder()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2

    .line 1
    const/4 p4, 0x1

    .line 2
    if-lt p1, p4, :cond_0

    .line 3
    .line 4
    const v0, 0xffffff

    .line 5
    .line 6
    .line 7
    if-gt p1, v0, :cond_0

    .line 8
    .line 9
    const-string v0, "com.desay.libsvcarinfo.ICarInfoCallBack"

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    if-ne p1, p4, :cond_4

    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    const/16 v1, 0xfe

    .line 29
    .line 30
    if-ne p1, v1, :cond_2

    .line 31
    .line 32
    if-ne v0, p4, :cond_2

    .line 33
    .line 34
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-ne p2, p4, :cond_1

    .line 39
    .line 40
    const/16 p2, 0x1f8

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/16 p2, 0x1f9

    .line 44
    .line 45
    :goto_0
    invoke-virtual {p1, p2}, Lwa/s;->i(I)V

    .line 46
    .line 47
    .line 48
    :cond_2
    if-eqz p3, :cond_3

    .line 49
    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    .line 52
    .line 53
    :cond_3
    return p4

    .line 54
    :cond_4
    const/4 p1, 0x0

    .line 55
    return p1
.end method

.method public final unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
