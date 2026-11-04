.class public final Lhi/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder;


# instance fields
.field public final e:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    check-cast p1, Landroid/os/IBinder;

    .line 8
    .line 9
    iput-object p1, p0, Lhi/c;->e:Landroid/os/IBinder;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lhi/c;->e:Landroid/os/IBinder;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lhi/c;->e:Landroid/os/IBinder;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lhi/c;->e:Landroid/os/IBinder;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final isBinderAlive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lhi/c;->e:Landroid/os/IBinder;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lhi/c;->e:Landroid/os/IBinder;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final pingBinder()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lhi/c;->e:Landroid/os/IBinder;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public final transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5

    .line 1
    sget-boolean v0, Lhi/b;->g:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    sget v0, Lhi/b;->d:I

    .line 8
    .line 9
    const/4 v3, -0x1

    .line 10
    if-eq v0, v3, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    :try_start_0
    invoke-static {}, Lhi/b;->j()Ldf/c;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ldf/a;

    .line 18
    .line 19
    invoke-virtual {v0}, Ldf/a;->getVersion()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sput v0, Lhi/b;->d:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :catch_0
    nop

    .line 27
    goto :goto_0

    .line 28
    :catch_1
    move-exception p1

    .line 29
    goto :goto_2

    .line 30
    :goto_0
    const/4 v0, -0x1

    .line 31
    :goto_1
    const/16 v3, 0xd

    .line 32
    .line 33
    if-lt v0, v3, :cond_1

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    goto :goto_3

    .line 37
    :goto_2
    new-instance p2, Ljava/lang/RuntimeException;

    .line 38
    .line 39
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    throw p2

    .line 43
    :cond_1
    const/4 v0, 0x0

    .line 44
    :goto_3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    :try_start_1
    const-string v4, "moe.shizuku.server.IShizukuService"

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v4, p0, Lhi/c;->e:Landroid/os/IBinder;

    .line 54
    .line 55
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    invoke-virtual {v3, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    .line 65
    .line 66
    goto :goto_4

    .line 67
    :catchall_0
    move-exception p1

    .line 68
    goto :goto_6

    .line 69
    :cond_2
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->dataSize()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    invoke-virtual {v3, p2, v2, p1}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    :try_start_2
    invoke-static {}, Lhi/b;->j()Ldf/c;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Ldf/a;

    .line 83
    .line 84
    iget-object p1, p1, Ldf/a;->e:Landroid/os/IBinder;

    .line 85
    .line 86
    invoke-interface {p1, v1, v3, p3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    .line 88
    .line 89
    goto :goto_5

    .line 90
    :catch_2
    move-exception p1

    .line 91
    :try_start_3
    new-instance p2, Ljava/lang/RuntimeException;

    .line 92
    .line 93
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 97
    :cond_3
    :try_start_4
    invoke-static {}, Lhi/b;->j()Ldf/c;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Ldf/a;

    .line 102
    .line 103
    iget-object p1, p1, Ldf/a;->e:Landroid/os/IBinder;

    .line 104
    .line 105
    invoke-interface {p1, v1, v3, p3, p4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 106
    .line 107
    .line 108
    :goto_5
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 109
    .line 110
    .line 111
    return v1

    .line 112
    :catch_3
    move-exception p1

    .line 113
    :try_start_5
    new-instance p2, Ljava/lang/RuntimeException;

    .line 114
    .line 115
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 119
    :goto_6
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 120
    .line 121
    .line 122
    throw p1
.end method

.method public final unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lhi/c;->e:Landroid/os/IBinder;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
