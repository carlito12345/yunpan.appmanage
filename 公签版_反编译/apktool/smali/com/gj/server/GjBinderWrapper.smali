.class public Lcom/gj/server/GjBinderWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder;


# static fields
.field private static final PROXY_TOKEN:Ljava/lang/String; = "com.gj.server.GjService"

.field private static final TRANSACTION_PROXY:I = 0x5f000001


# instance fields
.field private original:Landroid/os/IBinder;

.field private final server:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/shizuku/IGjAdbFace;Landroid/os/IBinder;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/gj/server/GjBinderWrapper;->server:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 7
    iput-object p2, p0, Lcom/gj/server/GjBinderWrapper;->original:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Lcom/yunpan/appmanage/shizuku/IGjAdbFace;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gj/server/GjBinderWrapper;->server:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 3
    :try_start_0
    invoke-interface {p1, p2}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/gj/server/GjBinderWrapper;->original:Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/gj/server/GjBinderWrapper;->original:Landroid/os/IBinder;

    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isBinderAlive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .locals 0

    return-void
.end method

.method public pingBinder()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    const-string v1, "com.gj.server.GjService"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/gj/server/GjBinderWrapper;->original:Landroid/os/IBinder;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/os/Parcel;->dataSize()I

    .line 25
    .line 26
    .line 27
    move-result p4

    .line 28
    if-lez p4, :cond_0

    .line 29
    .line 30
    invoke-virtual {p2}, Landroid/os/Parcel;->dataSize()I

    .line 31
    .line 32
    .line 33
    move-result p4

    .line 34
    invoke-virtual {v0, p2, p1, p4}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/gj/server/GjBinderWrapper;->server:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 41
    .line 42
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    const p4, 0x5f000001

    .line 47
    .line 48
    .line 49
    invoke-interface {p2, p4, v0, p3, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 53
    .line 54
    .line 55
    const/4 p1, 0x1

    .line 56
    return p1

    .line 57
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 58
    .line 59
    .line 60
    throw p1
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
