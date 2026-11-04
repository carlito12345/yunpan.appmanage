.class public Lcom/yunpan/appmanage/base/AppStart;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field public static h:Lcom/yunpan/appmanage/base/AppStart;


# instance fields
.field public a:Lv9/a;

.field public b:Landroid/graphics/drawable/Drawable;

.field public c:Landroid/content/pm/PackageManager;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public e:Z

.field public f:I

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 2

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
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/yunpan/appmanage/base/AppStart;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    iput-boolean v1, p0, Lcom/yunpan/appmanage/base/AppStart;->e:Z

    .line 18
    .line 19
    iput v1, p0, Lcom/yunpan/appmanage/base/AppStart;->f:I

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/yunpan/appmanage/base/AppStart;->g:Z

    .line 23
    .line 24
    return-void
.end method

.method public static b()Lcom/yunpan/appmanage/base/AppStart;
    .locals 1

    .line 1
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/base/AppStart;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    :try_start_0
    invoke-static {}, Lwa/u;->a()Lwa/u;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p0}, Lwa/u;->b(Lcom/yunpan/appmanage/base/AppStart;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, p0}, Lcom/yunpan/appmanage/util/w;->j(Lcom/yunpan/appmanage/base/AppStart;)V

    .line 25
    .line 26
    .line 27
    sget-object v0, Lwa/v;->a:Lcom/yunpan/appmanage/util/b0;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/yunpan/appmanage/util/b0;->b()V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lwa/w;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method

.method public final onCreate()V
    .locals 12

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    .line 3
    .line 4
    sput-object p0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/yunpan/appmanage/base/AppStart;->c:Landroid/content/pm/PackageManager;

    .line 11
    .line 12
    invoke-static {p0}, Lcom/yunpan/appmanage/util/a0;->l(Lcom/yunpan/appmanage/base/AppStart;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/yunpan/appmanage/base/AppStart;->d()V

    .line 16
    .line 17
    .line 18
    :try_start_0
    sget-object v0, Lu9/d;->a:Ljava/util/concurrent/ExecutorService;

    .line 19
    .line 20
    invoke-static {}, Lv9/a;->c()Lv9/a;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lv9/a;->f()Lv9/a;

    .line 25
    .line 26
    .line 27
    const-wide/16 v1, 0x50

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Lv9/a;->g(J)Lv9/a;

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/yunpan/appmanage/base/AppStart;->a:Lv9/a;

    .line 33
    .line 34
    invoke-static {v0}, Lu9/d;->A(Lv9/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    nop

    .line 39
    :goto_0
    invoke-virtual {p0}, Lcom/yunpan/appmanage/base/AppStart;->c()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    const-string v1, ":acc"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    iput-boolean v2, p0, Lcom/yunpan/appmanage/base/AppStart;->e:Z

    .line 55
    .line 56
    invoke-static {}, Lwa/u;->a()Lwa/u;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    iget-boolean v2, v2, Lwa/u;->t:Z

    .line 61
    .line 62
    if-eqz v2, :cond_0

    .line 63
    .line 64
    const-string v2, "\u8fdb\u7a0b\uff1a"

    .line 65
    .line 66
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {v2}, Lwa/w;->d(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    const-string v2, "magica"

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_1

    .line 80
    .line 81
    goto/16 :goto_6

    .line 82
    .line 83
    :cond_1
    const-string v2, ":acc1"

    .line 84
    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_2

    .line 90
    .line 91
    goto/16 :goto_6

    .line 92
    .line 93
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 94
    .line 95
    const/16 v3, 0x15

    .line 96
    .line 97
    if-lt v2, v3, :cond_3

    .line 98
    .line 99
    :try_start_1
    invoke-static {}, Lio/github/muntashirakon/adb/PRNGFixes;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :catch_1
    nop

    .line 104
    :cond_3
    :goto_1
    invoke-static {p0}, Lz8/a;->a(Lcom/yunpan/appmanage/base/AppStart;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-nez v1, :cond_b

    .line 112
    .line 113
    const-string v1, ":boot"

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_4

    .line 120
    .line 121
    goto/16 :goto_5

    .line 122
    .line 123
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 124
    .line 125
    const/16 v1, 0x18

    .line 126
    .line 127
    const/4 v2, 0x1

    .line 128
    if-lt v0, v1, :cond_5

    .line 129
    .line 130
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-static {v0}, Lii/a;->a(Ljava/lang/String;)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-nez v0, :cond_5

    .line 139
    .line 140
    invoke-static {v2}, Lrikka/shizuku/ShizukuProvider;->a(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 141
    .line 142
    .line 143
    :catch_2
    :cond_5
    invoke-static {}, Lcom/yunpan/appmanage/util/a;->a()Lcom/yunpan/appmanage/util/a;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v0, p0}, Lcom/yunpan/appmanage/util/a;->b(Lcom/yunpan/appmanage/base/AppStart;)V

    .line 148
    .line 149
    .line 150
    new-instance v0, Ljava/io/File;

    .line 151
    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    const-string v4, "bj.png"

    .line 161
    .line 162
    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    const-string v5, ""

    .line 174
    .line 175
    const-string v6, "bj.jpg"

    .line 176
    .line 177
    if-nez v1, :cond_6

    .line 178
    .line 179
    new-instance v0, Ljava/io/File;

    .line 180
    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-direct {v0, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-nez v1, :cond_6

    .line 201
    .line 202
    move-object v0, v5

    .line 203
    :cond_6
    new-instance v1, Ljava/io/File;

    .line 204
    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 206
    .line 207
    .line 208
    move-result-object v7

    .line 209
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 210
    .line 211
    .line 212
    move-result-object v7

    .line 213
    invoke-direct {v1, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    const v7, 0x7f0800b0

    .line 221
    .line 222
    .line 223
    if-nez v4, :cond_7

    .line 224
    .line 225
    new-instance v1, Ljava/io/File;

    .line 226
    .line 227
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    invoke-direct {v1, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 239
    .line 240
    .line 241
    move-result v4

    .line 242
    if-nez v4, :cond_7

    .line 243
    .line 244
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    iput-object v0, p0, Lcom/yunpan/appmanage/base/AppStart;->b:Landroid/graphics/drawable/Drawable;

    .line 253
    .line 254
    goto :goto_4

    .line 255
    :cond_7
    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 256
    .line 257
    .line 258
    move-result-wide v8

    .line 259
    const-wide/32 v10, 0x200000

    .line 260
    .line 261
    .line 262
    cmp-long v4, v8, v10

    .line 263
    .line 264
    if-lez v4, :cond_8

    .line 265
    .line 266
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 267
    .line 268
    .line 269
    goto :goto_2

    .line 270
    :catch_3
    nop

    .line 271
    goto :goto_3

    .line 272
    :cond_8
    move-object v5, v0

    .line 273
    :goto_2
    move-object v0, v5

    .line 274
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    if-eqz v1, :cond_9

    .line 279
    .line 280
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    iput-object v0, p0, Lcom/yunpan/appmanage/base/AppStart;->b:Landroid/graphics/drawable/Drawable;

    .line 289
    .line 290
    goto :goto_4

    .line 291
    :cond_9
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 292
    .line 293
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    const/4 v5, 0x0

    .line 298
    invoke-static {v0, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-direct {v1, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 303
    .line 304
    .line 305
    iput-object v1, p0, Lcom/yunpan/appmanage/base/AppStart;->b:Landroid/graphics/drawable/Drawable;

    .line 306
    .line 307
    :goto_4
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-virtual {v0, p0}, Lcom/yunpan/appmanage/util/k;->h(Lcom/yunpan/appmanage/base/AppStart;)V

    .line 312
    .line 313
    .line 314
    sget-object v0, Lcom/yunpan/appmanage/util/a0;->a:Lcom/yunpan/appmanage/util/b0;

    .line 315
    .line 316
    invoke-virtual {v0, p0}, Lcom/yunpan/appmanage/util/b0;->c(Lcom/yunpan/appmanage/base/AppStart;)V

    .line 317
    .line 318
    .line 319
    invoke-static {}, Lcom/yunpan/appmanage/util/f0;->b()V

    .line 320
    .line 321
    .line 322
    invoke-static {p0}, Lcom/yunpan/appmanage/db/MyDb;->init(Landroid/content/Context;)V

    .line 323
    .line 324
    .line 325
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 326
    .line 327
    if-lt v0, v3, :cond_a

    .line 328
    .line 329
    invoke-static {}, Lma/i;->a()Lma/i;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-virtual {v0, p0}, Lma/i;->b(Lcom/yunpan/appmanage/base/AppStart;)V

    .line 334
    .line 335
    .line 336
    :cond_a
    invoke-static {p0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-virtual {v0}, Lcom/bumptech/glide/b;->d()V

    .line 341
    .line 342
    .line 343
    new-instance v0, Lda/d;

    .line 344
    .line 345
    invoke-direct {v0, p0}, Lda/d;-><init>(Lcom/yunpan/appmanage/base/AppStart;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 349
    .line 350
    .line 351
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    invoke-virtual {v0, v2}, Lme/jessyan/autosize/AutoSizeConfig;->setExcludeFontScale(Z)Lme/jessyan/autosize/AutoSizeConfig;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    new-instance v1, Lda/c;

    .line 360
    .line 361
    invoke-direct {v1}, Lda/c;-><init>()V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0, v1}, Lme/jessyan/autosize/AutoSizeConfig;->setOnAdaptListener(Lme/jessyan/autosize/onAdaptListener;)Lme/jessyan/autosize/AutoSizeConfig;

    .line 365
    .line 366
    .line 367
    goto :goto_6

    .line 368
    :cond_b
    :goto_5
    invoke-static {}, Lfa/e;->e()Lfa/e;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-virtual {v0}, Lfa/e;->h()V

    .line 373
    .line 374
    .line 375
    :goto_6
    return-void
.end method
