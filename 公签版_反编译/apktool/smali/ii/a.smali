.class public abstract Lii/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z


# direct methods
.method public static a(Ljava/lang/String;)Z
    .locals 6

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {v0}, Lhi/g;->a(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    :try_start_0
    const-string v5, "android.app.IActivityManager"

    .line 21
    .line 22
    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v5, 0x2

    .line 26
    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    .line 28
    .line 29
    const v5, 0x5f535549

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v5, v3, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 39
    .line 40
    .line 41
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 48
    .line 49
    .line 50
    move-object v2, v0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    :goto_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :goto_1
    if-eqz v2, :cond_2

    .line 65
    .line 66
    invoke-static {v2, p0}, Lhi/b;->g(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const/4 p0, 0x1

    .line 70
    sput-boolean p0, Lii/a;->a:Z

    .line 71
    .line 72
    return p0

    .line 73
    :cond_2
    sput-boolean v1, Lii/a;->a:Z

    .line 74
    .line 75
    return v1

    .line 76
    :catchall_1
    move-exception p0

    .line 77
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 81
    .line 82
    .line 83
    goto :goto_3

    .line 84
    :goto_2
    throw p0

    .line 85
    :goto_3
    goto :goto_2
.end method
