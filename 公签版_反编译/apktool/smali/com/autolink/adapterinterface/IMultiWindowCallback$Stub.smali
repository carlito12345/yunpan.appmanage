.class public abstract Lcom/autolink/adapterinterface/IMultiWindowCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/autolink/adapterinterface/IMultiWindowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autolink/adapterinterface/IMultiWindowCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autolink/adapterinterface/IMultiWindowCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.autolink.adapterinterface.IMultiWindowCallback"

.field static final TRANSACTION_onAppDied:I = 0x3

.field static final TRANSACTION_onDown:I = 0x1

.field static final TRANSACTION_onThreeFingersFling:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.autolink.adapterinterface.IMultiWindowCallback"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/IMultiWindowCallback;
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
    const-string v0, "com.autolink.adapterinterface.IMultiWindowCallback"

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
    instance-of v1, v0, Lcom/autolink/adapterinterface/IMultiWindowCallback;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/autolink/adapterinterface/IMultiWindowCallback;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/autolink/adapterinterface/IMultiWindowCallback$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/autolink/adapterinterface/IMultiWindowCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public static getDefaultImpl()Lcom/autolink/adapterinterface/IMultiWindowCallback;
    .locals 1

    .line 1
    sget-object v0, Lcom/autolink/adapterinterface/IMultiWindowCallback$Stub$Proxy;->sDefaultImpl:Lcom/autolink/adapterinterface/IMultiWindowCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public static setDefaultImpl(Lcom/autolink/adapterinterface/IMultiWindowCallback;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/autolink/adapterinterface/IMultiWindowCallback$Stub$Proxy;->sDefaultImpl:Lcom/autolink/adapterinterface/IMultiWindowCallback;

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
    sput-object p0, Lcom/autolink/adapterinterface/IMultiWindowCallback$Stub$Proxy;->sDefaultImpl:Lcom/autolink/adapterinterface/IMultiWindowCallback;

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
    const-string v0, "com.autolink.adapterinterface.IMultiWindowCallback"

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
    invoke-interface {p0}, Lcom/autolink/adapterinterface/IMultiWindowCallback;->onDown()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 13
    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    const/4 v2, 0x2

    .line 17
    if-ne p1, v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/IMultiWindowCallback;->onThreeFingersFling(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 30
    .line 31
    .line 32
    return v1

    .line 33
    :cond_1
    const/4 v2, 0x3

    .line 34
    if-eq p1, v2, :cond_3

    .line 35
    .line 36
    const v2, 0x5f4e5446

    .line 37
    .line 38
    .line 39
    if-ne p1, v2, :cond_2

    .line 40
    .line 41
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return v1

    .line 45
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    return p1

    .line 50
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/IMultiWindowCallback;->onAppDied(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    .line 62
    .line 63
    return v1
.end method
