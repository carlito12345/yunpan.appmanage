.class public Lcom/yunpan/appmanage/base/AppStart;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field public static k:Lcom/yunpan/appmanage/base/AppStart;


# instance fields
.field public a:Lv9/a;

.field public b:Landroid/graphics/drawable/Drawable;

.field public c:Landroid/content/pm/PackageManager;

.field public d:Z

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public g:J

.field public h:Z

.field public i:I

.field public j:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/yunpan/appmanage/base/AppStart;->b:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/yunpan/appmanage/base/AppStart;->c:Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/yunpan/appmanage/base/AppStart;->d:Z

    .line 11
    .line 12
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/yunpan/appmanage/base/AppStart;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/yunpan/appmanage/base/AppStart;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    const-wide/16 v1, 0x0

    .line 27
    .line 28
    iput-wide v1, p0, Lcom/yunpan/appmanage/base/AppStart;->g:J

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/yunpan/appmanage/base/AppStart;->h:Z

    .line 31
    .line 32
    iput v0, p0, Lcom/yunpan/appmanage/base/AppStart;->i:I

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/yunpan/appmanage/base/AppStart;->j:Z

    .line 36
    .line 37
    return-void
.end method

.method public static b()Lcom/yunpan/appmanage/base/AppStart;
    .locals 1

    .line 1
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->k:Lcom/yunpan/appmanage/base/AppStart;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget-boolean p1, Lw3/b;->b:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    if-nez p1, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/File;

    .line 19
    .line 20
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Ljava/io/File;

    .line 26
    .line 27
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 28
    .line 29
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p0, v0, v1}, Lw3/b;->c(Lcom/yunpan/appmanage/base/AppStart;Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 33
    .line 34
    .line 35
    :goto_1
    return-void

    .line 36
    :catch_1
    move-exception p1

    .line 37
    new-instance v0, Ljava/lang/RuntimeException;

    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v2, "MultiDex installation failed ("

    .line 42
    .line 43
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v2, ")."

    .line 47
    .line 48
    invoke-static {p1, v1, v2}, Lda/b;->b(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v0
.end method

.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/yunpan/appmanage/base/AppStart;->a(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v0, 0x1c

    .line 7
    .line 8
    if-lt p1, v0, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    new-array p1, p1, [Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "L"

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    aput-object v0, p1, v1

    .line 17
    .line 18
    sget-object v0, Lorg/lsposed/hiddenapibypass/j;->a:Lsun/misc/Unsafe;

    .line 19
    .line 20
    sget-object v0, Lorg/lsposed/hiddenapibypass/i;->a:Ljava/util/HashSet;

    .line 21
    .line 22
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    new-array p1, p1, [Ljava/lang/String;

    .line 34
    .line 35
    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lorg/lsposed/hiddenapibypass/j;->b([Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lda/a;->a()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const-string v1, "activity"

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/app/ActivityManager;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 45
    .line 46
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 47
    .line 48
    if-ne v3, v0, :cond_1

    .line 49
    .line 50
    iget-object v0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_2
    :try_start_0
    const-string v0, "android.app.ActivityThread"

    .line 54
    .line 55
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-string v1, "currentProcessName"

    .line 60
    .line 61
    const/4 v2, 0x0

    .line 62
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    return-object v0

    .line 73
    :catch_0
    const-string v0, ""

    .line 74
    .line 75
    return-object v0
.end method

.method public final d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/base/AppStart;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Lcom/yunpan/appmanage/base/AppStart;->e(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    :try_start_0
    sget-object v0, Lwa/v;->a:Lcom/yunpan/appmanage/util/c0;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/yunpan/appmanage/util/c0;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    nop

    .line 20
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    iget-wide v2, p0, Lcom/yunpan/appmanage/base/AppStart;->g:J

    .line 25
    .line 26
    sub-long/2addr v0, v2

    .line 27
    const-wide/16 v2, 0x1388

    .line 28
    .line 29
    cmp-long v4, v0, v2

    .line 30
    .line 31
    if-lez v4, :cond_1

    .line 32
    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    iput-wide v0, p0, Lcom/yunpan/appmanage/base/AppStart;->g:J

    .line 38
    .line 39
    :try_start_1
    invoke-static {}, Lwa/u;->a()Lwa/u;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0, p0}, Lwa/u;->b(Lcom/yunpan/appmanage/base/AppStart;)V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lcom/yunpan/appmanage/util/x;->b()Lcom/yunpan/appmanage/util/x;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0, p0}, Lcom/yunpan/appmanage/util/x;->k(Lcom/yunpan/appmanage/base/AppStart;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    .line 52
    .line 53
    :catch_1
    :cond_1
    return-void
.end method

.method public final e(Z)V
    .locals 11

    .line 1
    sput-object p0, Lcom/yunpan/appmanage/base/AppStart;->k:Lcom/yunpan/appmanage/base/AppStart;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/yunpan/appmanage/base/AppStart;->c:Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/yunpan/appmanage/base/AppStart;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/yunpan/appmanage/base/AppStart;->c()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v2, ":boot"

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-static {p0}, Lcom/yunpan/appmanage/util/b0;->n(Lcom/yunpan/appmanage/base/AppStart;)V

    .line 29
    .line 30
    .line 31
    :try_start_0
    sget-object v2, Lu9/d;->a:Ljava/util/concurrent/ExecutorService;

    .line 32
    .line 33
    invoke-static {}, Lv9/a;->c()Lv9/a;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lv9/a;->f()Lv9/a;

    .line 38
    .line 39
    .line 40
    const-string v3, ":"

    .line 41
    .line 42
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    const-wide/16 v3, 0x50

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const-wide/16 v3, 0x28

    .line 52
    .line 53
    :goto_0
    invoke-virtual {v2, v3, v4}, Lv9/a;->g(J)Lv9/a;

    .line 54
    .line 55
    .line 56
    iput-object v2, p0, Lcom/yunpan/appmanage/base/AppStart;->a:Lv9/a;

    .line 57
    .line 58
    invoke-static {v2}, Lu9/d;->J(Lv9/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catch_0
    nop

    .line 63
    :goto_1
    const-string v2, "magica"

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    return-void

    .line 72
    :cond_2
    const-string v2, ":acc1"

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_3

    .line 79
    .line 80
    return-void

    .line 81
    :cond_3
    const-string v2, ":acc"

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    iput-boolean v2, p0, Lcom/yunpan/appmanage/base/AppStart;->h:Z

    .line 88
    .line 89
    if-eqz p1, :cond_4

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/yunpan/appmanage/base/AppStart;->d()V

    .line 92
    .line 93
    .line 94
    :cond_4
    iget-boolean p1, p0, Lcom/yunpan/appmanage/base/AppStart;->h:Z

    .line 95
    .line 96
    if-nez p1, :cond_5

    .line 97
    .line 98
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    const-string v2, "mounted"

    .line 103
    .line 104
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_5

    .line 109
    .line 110
    invoke-static {}, Lwa/y;->a()Lwa/y;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    iput-object v2, p1, Lwa/y;->a:Ljava/io/File;

    .line 119
    .line 120
    :cond_5
    invoke-static {}, Lwa/u;->a()Lwa/u;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iget-boolean p1, p1, Lwa/u;->s:Z

    .line 125
    .line 126
    if-eqz p1, :cond_6

    .line 127
    .line 128
    invoke-static {}, Lwa/y;->a()Lwa/y;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    const-string v2, "\u8fdb\u7a0b\uff1a"

    .line 133
    .line 134
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {p1, v0}, Lwa/y;->f(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :cond_6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 142
    .line 143
    const/16 v0, 0x15

    .line 144
    .line 145
    if-lt p1, v0, :cond_7

    .line 146
    .line 147
    :try_start_1
    invoke-static {}, Lio/github/muntashirakon/adb/PRNGFixes;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :catch_1
    nop

    .line 152
    :cond_7
    :goto_2
    invoke-static {p0}, Lz8/a;->a(Lcom/yunpan/appmanage/base/AppStart;)V

    .line 153
    .line 154
    .line 155
    iget-boolean p1, p0, Lcom/yunpan/appmanage/base/AppStart;->h:Z

    .line 156
    .line 157
    if-eqz p1, :cond_8

    .line 158
    .line 159
    invoke-static {}, Lfa/e;->e()Lfa/e;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {p1}, Lfa/e;->h()V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :cond_8
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 168
    .line 169
    const/16 v2, 0x18

    .line 170
    .line 171
    if-lt p1, v2, :cond_9

    .line 172
    .line 173
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-static {p1}, Lei/a;->a(Ljava/lang/String;)Z

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    if-nez p1, :cond_9

    .line 182
    .line 183
    invoke-static {v1}, Lrikka/shizuku/ShizukuProvider;->a(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 184
    .line 185
    .line 186
    :catch_2
    :cond_9
    invoke-static {}, Lcom/yunpan/appmanage/util/a;->a()Lcom/yunpan/appmanage/util/a;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {p1, p0}, Lcom/yunpan/appmanage/util/a;->b(Lcom/yunpan/appmanage/base/AppStart;)V

    .line 191
    .line 192
    .line 193
    new-instance p1, Ljava/io/File;

    .line 194
    .line 195
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    const-string v3, "bj.png"

    .line 204
    .line 205
    invoke-direct {p1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-static {p1}, Lcom/yunpan/appmanage/util/b0;->i(Ljava/lang/String;)Z

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    const-string v4, ""

    .line 217
    .line 218
    const-string v5, "bj.jpg"

    .line 219
    .line 220
    if-nez v2, :cond_a

    .line 221
    .line 222
    new-instance p1, Ljava/io/File;

    .line 223
    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-direct {p1, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-static {p1}, Lcom/yunpan/appmanage/util/b0;->i(Ljava/lang/String;)Z

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-nez v2, :cond_a

    .line 244
    .line 245
    move-object p1, v4

    .line 246
    :cond_a
    new-instance v2, Ljava/io/File;

    .line 247
    .line 248
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 249
    .line 250
    .line 251
    move-result-object v6

    .line 252
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 253
    .line 254
    .line 255
    move-result-object v6

    .line 256
    invoke-direct {v2, v6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    const v6, 0x7f0800b0

    .line 264
    .line 265
    .line 266
    if-nez v3, :cond_b

    .line 267
    .line 268
    new-instance v2, Ljava/io/File;

    .line 269
    .line 270
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 282
    .line 283
    .line 284
    move-result v3

    .line 285
    if-nez v3, :cond_b

    .line 286
    .line 287
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    iput-object p1, p0, Lcom/yunpan/appmanage/base/AppStart;->b:Landroid/graphics/drawable/Drawable;

    .line 296
    .line 297
    goto :goto_5

    .line 298
    :cond_b
    :try_start_3
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 299
    .line 300
    .line 301
    move-result-wide v7

    .line 302
    const-wide/32 v9, 0x200000

    .line 303
    .line 304
    .line 305
    cmp-long v3, v7, v9

    .line 306
    .line 307
    if-lez v3, :cond_c

    .line 308
    .line 309
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 310
    .line 311
    .line 312
    goto :goto_3

    .line 313
    :catch_3
    nop

    .line 314
    goto :goto_4

    .line 315
    :cond_c
    move-object v4, p1

    .line 316
    :goto_3
    move-object p1, v4

    .line 317
    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 318
    .line 319
    .line 320
    move-result v2

    .line 321
    if-eqz v2, :cond_d

    .line 322
    .line 323
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    iput-object p1, p0, Lcom/yunpan/appmanage/base/AppStart;->b:Landroid/graphics/drawable/Drawable;

    .line 332
    .line 333
    goto :goto_5

    .line 334
    :cond_d
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 335
    .line 336
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    const/4 v4, 0x0

    .line 341
    invoke-static {p1, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    invoke-direct {v2, v3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 346
    .line 347
    .line 348
    iput-object v2, p0, Lcom/yunpan/appmanage/base/AppStart;->b:Landroid/graphics/drawable/Drawable;

    .line 349
    .line 350
    :goto_5
    invoke-static {}, Lcom/yunpan/appmanage/util/l;->f()Lcom/yunpan/appmanage/util/l;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    invoke-virtual {p1, p0}, Lcom/yunpan/appmanage/util/l;->h(Lcom/yunpan/appmanage/base/AppStart;)V

    .line 355
    .line 356
    .line 357
    sget-object p1, Lcom/yunpan/appmanage/util/b0;->a:Lcom/yunpan/appmanage/util/c0;

    .line 358
    .line 359
    invoke-virtual {p1, p0}, Lcom/yunpan/appmanage/util/c0;->c(Lcom/yunpan/appmanage/base/AppStart;)V

    .line 360
    .line 361
    .line 362
    invoke-static {}, Lcom/yunpan/appmanage/util/g0;->b()V

    .line 363
    .line 364
    .line 365
    invoke-static {p0}, Lcom/yunpan/appmanage/db/MyDb;->init(Landroid/content/Context;)V

    .line 366
    .line 367
    .line 368
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 369
    .line 370
    if-lt p1, v0, :cond_e

    .line 371
    .line 372
    invoke-static {}, Lma/i;->a()Lma/i;

    .line 373
    .line 374
    .line 375
    move-result-object p1

    .line 376
    invoke-virtual {p1, p0}, Lma/i;->b(Lcom/yunpan/appmanage/base/AppStart;)V

    .line 377
    .line 378
    .line 379
    :cond_e
    invoke-static {p0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 380
    .line 381
    .line 382
    move-result-object p1

    .line 383
    invoke-virtual {p1}, Lcom/bumptech/glide/b;->d()V

    .line 384
    .line 385
    .line 386
    new-instance p1, Lda/d;

    .line 387
    .line 388
    invoke-direct {p1, p0}, Lda/d;-><init>(Lcom/yunpan/appmanage/base/AppStart;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {p0, p1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 392
    .line 393
    .line 394
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    invoke-virtual {p1, v1}, Lme/jessyan/autosize/AutoSizeConfig;->setExcludeFontScale(Z)Lme/jessyan/autosize/AutoSizeConfig;

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    new-instance v0, Lda/c;

    .line 403
    .line 404
    invoke-direct {v0}, Lda/c;-><init>()V

    .line 405
    .line 406
    .line 407
    invoke-virtual {p1, v0}, Lme/jessyan/autosize/AutoSizeConfig;->setOnAdaptListener(Lme/jessyan/autosize/onAdaptListener;)Lme/jessyan/autosize/AutoSizeConfig;

    .line 408
    .line 409
    .line 410
    return-void
.end method

.method public final onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lcom/yunpan/appmanage/base/AppStart;->e(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
