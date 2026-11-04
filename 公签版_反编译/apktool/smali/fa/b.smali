.class public final Lfa/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/os/IBinder;

.field public b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lfa/b;->a:Landroid/os/IBinder;

    .line 6
    .line 7
    iput-object v0, p0, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 8
    .line 9
    return-void
.end method

.method public static a(Lcom/yunpan/appmanage/base/AppStart;)Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, "/libgj.so --user="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const v2, 0x186a0

    .line 34
    .line 35
    .line 36
    div-int/2addr v1, v2

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "com.yunpan.appmanage"

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_0

    .line 55
    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v0, " --package="

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_0
    return-object v0

    .line 81
    :catch_0
    const-string p0, ""

    .line 82
    .line 83
    return-object p0
.end method

.method public static i()Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/net/Socket;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/net/Socket;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    .line 6
    .line 7
    :try_start_1
    new-instance v0, Ljava/net/InetSocketAddress;

    .line 8
    .line 9
    const-string v2, "127.0.0.1"

    .line 10
    .line 11
    const v3, 0x9a67

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    const/16 v2, 0x3e8

    .line 18
    .line 19
    invoke-virtual {v1, v0, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Ljava/io/BufferedWriter;

    .line 26
    .line 27
    new-instance v2, Ljava/io/OutputStreamWriter;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 37
    .line 38
    .line 39
    new-instance v2, Ljava/io/BufferedReader;

    .line 40
    .line 41
    new-instance v3, Ljava/io/InputStreamReader;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 51
    .line 52
    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    sget-object v4, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 59
    .line 60
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    sget-object v4, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 68
    .line 69
    iget-boolean v4, v4, Lcom/yunpan/appmanage/base/AppStart;->e:Z

    .line 70
    .line 71
    if-eqz v4, :cond_0

    .line 72
    .line 73
    const-string v4, ":acc"

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    goto :goto_1

    .line 78
    :cond_0
    const-string v4, ""

    .line 79
    .line 80
    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string v3, " "

    .line 91
    .line 92
    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    const v4, 0x186a0

    .line 100
    .line 101
    .line 102
    div-int/2addr v3, v4

    .line 103
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const-string v3, "\n"

    .line 111
    .line 112
    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .line 120
    .line 121
    :try_start_2
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 122
    .line 123
    .line 124
    :catch_0
    const/4 v0, 0x1

    .line 125
    return v0

    .line 126
    :catchall_1
    move-exception v1

    .line 127
    move-object v5, v1

    .line 128
    move-object v1, v0

    .line 129
    move-object v0, v5

    .line 130
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 131
    .line 132
    .line 133
    if-eqz v1, :cond_1

    .line 134
    .line 135
    :try_start_4
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 136
    .line 137
    .line 138
    :catch_1
    :cond_1
    const/4 v0, 0x0

    .line 139
    return v0

    .line 140
    :catchall_2
    move-exception v0

    .line 141
    if-eqz v1, :cond_2

    .line 142
    .line 143
    :try_start_5
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 144
    .line 145
    .line 146
    :catch_2
    :cond_2
    throw v0
.end method


# virtual methods
.method public final b()Landroid/app/IActivityManager;
    .locals 4

    .line 1
    iget-object v0, p0, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    :try_start_0
    const-string v2, "activity"

    .line 8
    .line 9
    invoke-interface {v0, v2}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_1
    new-instance v2, Lcom/gj/server/GjBinderWrapper;

    .line 17
    .line 18
    iget-object v3, p0, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 19
    .line 20
    invoke-direct {v2, v3, v0}, Lcom/gj/server/GjBinderWrapper;-><init>(Lcom/yunpan/appmanage/shizuku/IGjAdbFace;Landroid/os/IBinder;)V

    .line 21
    .line 22
    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    .line 25
    const/16 v3, 0x1a

    .line 26
    .line 27
    if-lt v0, v3, :cond_2

    .line 28
    .line 29
    invoke-static {v2}, Landroid/app/IActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    .line 37
    .line 38
    .line 39
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    return-object v0

    .line 41
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v3, "getIActivityManager:"

    .line 44
    .line 45
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    return-object v1
.end method

.method public final c()Lcom/android/internal/app/IAppOpsService;
    .locals 4

    .line 1
    iget-object v0, p0, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    :try_start_0
    new-instance v2, Lcom/gj/server/GjBinderWrapper;

    .line 8
    .line 9
    const-string v3, "appops"

    .line 10
    .line 11
    invoke-interface {v0, v3}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-direct {v2, v0, v3}, Lcom/gj/server/GjBinderWrapper;-><init>(Lcom/yunpan/appmanage/shizuku/IGjAdbFace;Landroid/os/IBinder;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v2}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    .line 19
    .line 20
    .line 21
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return-object v0

    .line 23
    :catch_0
    return-object v1
.end method

.method public final d()Landroid/hardware/input/IInputManager;
    .locals 4

    .line 1
    iget-object v0, p0, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    :try_start_0
    new-instance v2, Lcom/gj/server/GjBinderWrapper;

    .line 8
    .line 9
    const-string v3, "input"

    .line 10
    .line 11
    invoke-interface {v0, v3}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-direct {v2, v0, v3}, Lcom/gj/server/GjBinderWrapper;-><init>(Lcom/yunpan/appmanage/shizuku/IGjAdbFace;Landroid/os/IBinder;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v2}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    .line 19
    .line 20
    .line 21
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return-object v0

    .line 23
    :catch_0
    return-object v1
.end method

.method public final e()Landroid/content/pm/IPackageManager;
    .locals 4

    .line 1
    iget-object v0, p0, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    :try_start_0
    new-instance v2, Lcom/gj/server/GjBinderWrapper;

    .line 8
    .line 9
    const-string v3, "package"

    .line 10
    .line 11
    invoke-interface {v0, v3}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-direct {v2, v0, v3}, Lcom/gj/server/GjBinderWrapper;-><init>(Lcom/yunpan/appmanage/shizuku/IGjAdbFace;Landroid/os/IBinder;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 19
    .line 20
    .line 21
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return-object v0

    .line 23
    :catch_0
    return-object v1
.end method

.method public final f()Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    :cond_0
    return v2

    .line 19
    :cond_1
    :try_start_0
    iget-object v0, p0, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 20
    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    :try_start_1
    invoke-interface {v0}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->getVersion()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    sget v1, Lcom/gj/server/GjService;->version:I

    .line 28
    .line 29
    if-ne v0, v1, :cond_2

    .line 30
    .line 31
    return v3

    .line 32
    :cond_2
    iget-object v0, p0, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 33
    .line 34
    invoke-interface {v0}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->exit()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 35
    .line 36
    .line 37
    :catch_0
    const/4 v0, 0x0

    .line 38
    :try_start_2
    iput-object v0, p0, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 39
    .line 40
    iput-object v0, p0, Lfa/b;->a:Landroid/os/IBinder;

    .line 41
    .line 42
    :cond_3
    const-string v0, "gj_face_server"

    .line 43
    .line 44
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lfa/b;->a:Landroid/os/IBinder;

    .line 49
    .line 50
    if-nez v0, :cond_4

    .line 51
    .line 52
    invoke-virtual {p0}, Lfa/b;->h()V

    .line 53
    .line 54
    .line 55
    :cond_4
    iget-object v0, p0, Lfa/b;->a:Landroid/os/IBinder;

    .line 56
    .line 57
    if-eqz v0, :cond_5

    .line 58
    .line 59
    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_5

    .line 64
    .line 65
    iget-object v0, p0, Lfa/b;->a:Landroid/os/IBinder;

    .line 66
    .line 67
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_5

    .line 72
    .line 73
    iget-object v0, p0, Lfa/b;->a:Landroid/os/IBinder;

    .line 74
    .line 75
    invoke-static {v0}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p0, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 80
    .line 81
    if-eqz v0, :cond_5

    .line 82
    .line 83
    invoke-interface {v0}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->getVersion()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    sget v1, Lcom/gj/server/GjService;->version:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 88
    .line 89
    if-ne v0, v1, :cond_5

    .line 90
    .line 91
    return v3

    .line 92
    :catch_1
    :cond_5
    return v2
.end method

.method public final g()V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_0
    iget-object v0, p0, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    :try_start_1
    invoke-interface {v0}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->getVersion()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    sget v1, Lcom/gj/server/GjService;->version:I

    .line 21
    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 25
    .line 26
    const-string v1, "/data/local/tmp"

    .line 27
    .line 28
    invoke-interface {v0, v1}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->file_canReadAndWrite(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 36
    .line 37
    invoke-interface {v0}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->exit()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 38
    .line 39
    .line 40
    :catch_0
    const/4 v0, 0x0

    .line 41
    :try_start_2
    iput-object v0, p0, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 42
    .line 43
    iput-object v0, p0, Lfa/b;->a:Landroid/os/IBinder;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_1
    move-exception v0

    .line 47
    goto :goto_3

    .line 48
    :cond_2
    :goto_0
    const-string v0, "gj_face_server"

    .line 49
    .line 50
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lfa/b;->a:Landroid/os/IBinder;

    .line 55
    .line 56
    if-nez v0, :cond_4

    .line 57
    .line 58
    invoke-virtual {p0}, Lfa/b;->h()V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lfa/b;->a:Landroid/os/IBinder;

    .line 62
    .line 63
    if-nez v0, :cond_4

    .line 64
    .line 65
    invoke-static {}, Lfa/b;->i()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 72
    .line 73
    .line 74
    move-result-wide v0

    .line 75
    :goto_1
    iget-object v2, p0, Lfa/b;->a:Landroid/os/IBinder;

    .line 76
    .line 77
    if-nez v2, :cond_4

    .line 78
    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 80
    .line 81
    .line 82
    move-result-wide v2

    .line 83
    sub-long/2addr v2, v0

    .line 84
    const-wide/16 v4, 0x3e8

    .line 85
    .line 86
    cmp-long v6, v2, v4

    .line 87
    .line 88
    if-gez v6, :cond_4

    .line 89
    .line 90
    invoke-virtual {p0}, Lfa/b;->h()V

    .line 91
    .line 92
    .line 93
    iget-object v2, p0, Lfa/b;->a:Landroid/os/IBinder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 94
    .line 95
    if-eqz v2, :cond_3

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_3
    const-wide/16 v2, 0x32

    .line 99
    .line 100
    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :catch_2
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 109
    .line 110
    .line 111
    :cond_4
    :goto_2
    iget-object v0, p0, Lfa/b;->a:Landroid/os/IBinder;

    .line 112
    .line 113
    if-eqz v0, :cond_5

    .line 114
    .line 115
    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_5

    .line 120
    .line 121
    iget-object v0, p0, Lfa/b;->a:Landroid/os/IBinder;

    .line 122
    .line 123
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_5

    .line 128
    .line 129
    iget-object v0, p0, Lfa/b;->a:Landroid/os/IBinder;

    .line 130
    .line 131
    invoke-static {v0}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    iput-object v0, p0, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 136
    .line 137
    if-eqz v0, :cond_5

    .line 138
    .line 139
    invoke-interface {v0}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->getVersion()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 144
    .line 145
    .line 146
    :cond_5
    return-void
.end method

.method public final h()V
    .locals 5

    .line 1
    const-string v0, "content://"

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, ".provider"

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 29
    .line 30
    iget-boolean v0, v0, Lcom/yunpan/appmanage/base/AppStart;->e:Z

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    const-string v0, "Acc"

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const-string v0, ""

    .line 40
    .line 41
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v2, "getBinder"

    .line 53
    .line 54
    new-instance v3, Landroid/os/Bundle;

    .line 55
    .line 56
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 57
    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    const-class v1, Lcom/gj/server/BinderWrapper;

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 73
    .line 74
    .line 75
    const-string v1, "binder"

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lcom/gj/server/BinderWrapper;

    .line 82
    .line 83
    if-eqz v0, :cond_1

    .line 84
    .line 85
    iget-object v0, v0, Lcom/gj/server/BinderWrapper;->binder:Landroid/os/IBinder;

    .line 86
    .line 87
    if-eqz v0, :cond_1

    .line 88
    .line 89
    iput-object v0, p0, Lfa/b;->a:Landroid/os/IBinder;

    .line 90
    .line 91
    invoke-static {v0}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iput-object v0, p0, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 96
    .line 97
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 98
    .line 99
    iget-object v1, p0, Lfa/b;->a:Landroid/os/IBinder;

    .line 100
    .line 101
    invoke-static {v1}, Landroid/support/v4/media/session/a;->A(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    .line 110
    .line 111
    :goto_2
    return-void
.end method
