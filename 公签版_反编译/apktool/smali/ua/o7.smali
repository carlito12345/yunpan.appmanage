.class public final Lua/o7;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lx8/d;


# instance fields
.field public final synthetic e:Lcom/yunpan/appmanage/ui/ActivityTextIflytek;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/ui/ActivityTextIflytek;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/o7;->e:Lcom/yunpan/appmanage/ui/ActivityTextIflytek;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string p1, "com.iflytek.autofly.voicecore.aidl.IMessage"

    .line 7
    .line 8
    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8

    .line 1
    const-string v0, "com.iflytek.autofly.voicecore.aidl.IMessage"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-lt p1, v1, :cond_0

    .line 5
    .line 6
    const v2, 0xffffff

    .line 7
    .line 8
    .line 9
    if-gt p1, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const v2, 0x5f4e5446

    .line 15
    .line 16
    .line 17
    if-eq p1, v2, :cond_2

    .line 18
    .line 19
    if-eq p1, v1, :cond_1

    .line 20
    .line 21
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    iget-object p1, p0, Lua/o7;->e:Lcom/yunpan/appmanage/ui/ActivityTextIflytek;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityTextIflytek;->C:Landroid/widget/TextView;

    .line 41
    .line 42
    new-instance p2, Lcom/hjq/permissions/core/b;

    .line 43
    .line 44
    const/4 v7, 0x1

    .line 45
    move-object v2, p2

    .line 46
    move-object v3, p0

    .line 47
    invoke-direct/range {v2 .. v7}, Lcom/hjq/permissions/core/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    .line 55
    .line 56
    const/4 p1, 0x0

    .line 57
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    .line 59
    .line 60
    return v1

    .line 61
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return v1
.end method
