.class public abstract Lcom/autolink/adapterinterface/car/IALCarTyreListener$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/autolink/adapterinterface/car/IALCarTyreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autolink/adapterinterface/car/IALCarTyreListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autolink/adapterinterface/car/IALCarTyreListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.autolink.adapterinterface.car.IALCarTyreListener"

.field static final TRANSACTION_notifyTyreChange:I = 0x1

.field static final TRANSACTION_notifyTyreFloatChange:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.autolink.adapterinterface.car.IALCarTyreListener"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/car/IALCarTyreListener;
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
    const-string v0, "com.autolink.adapterinterface.car.IALCarTyreListener"

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
    instance-of v1, v0, Lcom/autolink/adapterinterface/car/IALCarTyreListener;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/autolink/adapterinterface/car/IALCarTyreListener;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/autolink/adapterinterface/car/IALCarTyreListener$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/autolink/adapterinterface/car/IALCarTyreListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public static getDefaultImpl()Lcom/autolink/adapterinterface/car/IALCarTyreListener;
    .locals 1

    .line 1
    sget-object v0, Lcom/autolink/adapterinterface/car/IALCarTyreListener$Stub$Proxy;->sDefaultImpl:Lcom/autolink/adapterinterface/car/IALCarTyreListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public static setDefaultImpl(Lcom/autolink/adapterinterface/car/IALCarTyreListener;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/autolink/adapterinterface/car/IALCarTyreListener$Stub$Proxy;->sDefaultImpl:Lcom/autolink/adapterinterface/car/IALCarTyreListener;

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
    sput-object p0, Lcom/autolink/adapterinterface/car/IALCarTyreListener$Stub$Proxy;->sDefaultImpl:Lcom/autolink/adapterinterface/car/IALCarTyreListener;

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
    const-string v0, "com.autolink.adapterinterface.car.IALCarTyreListener"

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    invoke-interface {p0, p1, p2}, Lcom/autolink/adapterinterface/car/IALCarTyreListener;->notifyTyreChange(II)V

    .line 18
    .line 19
    .line 20
    return v1

    .line 21
    :cond_0
    const/4 v2, 0x2

    .line 22
    if-ne p1, v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    invoke-interface {p0, p1, p2}, Lcom/autolink/adapterinterface/car/IALCarTyreListener;->notifyTyreFloatChange(IF)V

    .line 36
    .line 37
    .line 38
    return v1

    .line 39
    :cond_1
    const v2, 0x5f4e5446

    .line 40
    .line 41
    .line 42
    if-ne p1, v2, :cond_2

    .line 43
    .line 44
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return v1

    .line 48
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    return p1
.end method
