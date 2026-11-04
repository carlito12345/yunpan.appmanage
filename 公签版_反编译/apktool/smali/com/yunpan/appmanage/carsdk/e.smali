.class public final Lcom/yunpan/appmanage/carsdk/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$ISpiListener;


# static fields
.field public static volatile i:Lcom/yunpan/appmanage/carsdk/e;


# instance fields
.field public a:Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

.field public b:Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;

.field public final c:Landroid/os/Handler;

.field public d:Lcom/yunpan/appmanage/carsdk/d;

.field public e:I

.field public final f:Ljava/util/HashMap;

.field public g:Z

.field public final h:Lcom/yunpan/appmanage/carsdk/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/e;->b:Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/yunpan/appmanage/carsdk/e;->e:I

    .line 9
    .line 10
    new-instance v0, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/e;->f:Ljava/util/HashMap;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/yunpan/appmanage/carsdk/e;->g:Z

    .line 19
    .line 20
    new-instance v0, Lcom/yunpan/appmanage/carsdk/b;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/yunpan/appmanage/carsdk/b;-><init>(Lcom/yunpan/appmanage/carsdk/e;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/e;->h:Lcom/yunpan/appmanage/carsdk/b;

    .line 26
    .line 27
    new-instance v0, Landroid/os/Handler;

    .line 28
    .line 29
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/e;->c:Landroid/os/Handler;

    .line 37
    .line 38
    return-void
.end method

.method public static a(Lcom/yunpan/appmanage/carsdk/e;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yunpan/appmanage/carsdk/e;->f:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lz7/o;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    :try_start_0
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object p1, p1, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    :catch_0
    :goto_0
    return-void
.end method

.method public static c()Lcom/yunpan/appmanage/carsdk/e;
    .locals 2

    .line 1
    sget-object v0, Lcom/yunpan/appmanage/carsdk/e;->i:Lcom/yunpan/appmanage/carsdk/e;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/yunpan/appmanage/carsdk/e;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/yunpan/appmanage/carsdk/e;->i:Lcom/yunpan/appmanage/carsdk/e;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/yunpan/appmanage/carsdk/e;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/yunpan/appmanage/carsdk/e;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/yunpan/appmanage/carsdk/e;->i:Lcom/yunpan/appmanage/carsdk/e;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lcom/yunpan/appmanage/carsdk/e;->i:Lcom/yunpan/appmanage/carsdk/e;

    .line 27
    .line 28
    return-object v0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    const-string v1, "com.desay_svautomotive.svcarinfo"

    .line 7
    .line 8
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :catch_0
    return v0
.end method

.method public static f()Lz7/s;
    .locals 4

    .line 1
    const-string v0, "auto_parking"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    iget-object v2, v2, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 9
    .line 10
    invoke-static {v2}, Lq4/a;->q(Landroid/content/Context;)Lz7/s;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_3

    .line 15
    .line 16
    const-string v3, "isOn"

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Lz7/p;->b()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string v3, "maps"

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget-object v3, v3, Lz7/o;->a:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    iget-object v3, v2, Lz7/s;->a:Lb8/n;

    .line 44
    .line 45
    invoke-virtual {v3, v0}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    invoke-virtual {v2, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lz7/p;->b()Z

    .line 56
    .line 57
    .line 58
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    :cond_1
    return-object v1

    .line 62
    :cond_2
    return-object v2

    .line 63
    :catch_0
    :cond_3
    :goto_0
    return-object v1
.end method

.method public static i(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/yunpan/appmanage/carsdk/e;->e(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->f()Lz7/s;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1, p0}, Lcom/yunpan/appmanage/carsdk/e;->d(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0, v0}, Lcom/yunpan/appmanage/carsdk/e;->b(Lz7/s;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    new-instance v0, Lcom/yunpan/appmanage/carsdk/c;

    .line 34
    .line 35
    invoke-direct {v0}, Lcom/yunpan/appmanage/carsdk/c;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/e;->d:Lcom/yunpan/appmanage/carsdk/d;

    .line 39
    .line 40
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lwa/s;->q:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method public static j()V
    .locals 2

    .line 1
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lwa/s;->q:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v0, v0, Lcom/yunpan/appmanage/carsdk/e;->f:Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/yunpan/appmanage/carsdk/e;->h()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    :catch_0
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x0

    .line 31
    iput-boolean v1, v0, Lwa/s;->q:Z

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final b(Lz7/s;)V
    .locals 8

    .line 1
    const-string v0, "auto_parking"

    .line 2
    .line 3
    const-string v1, "isOpen"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/e;->f:Ljava/util/HashMap;

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 8
    .line 9
    .line 10
    const-string v3, "maps"

    .line 11
    .line 12
    invoke-virtual {p1, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const/4 v4, 0x0

    .line 17
    :goto_0
    iget-object v5, v3, Lz7/o;->a:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-ge v4, v5, :cond_1

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Lz7/o;->l(I)Lz7/p;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-virtual {v5}, Lz7/p;->g()Lz7/s;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    iget-object v5, v5, Lz7/s;->a:Lb8/n;

    .line 34
    .line 35
    invoke-virtual {v5, v1}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_0

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Lz7/o;->l(I)Lz7/p;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v5}, Lz7/p;->g()Lz7/s;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v5, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v5}, Lz7/p;->b()Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-nez v5, :cond_0

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_0
    invoke-virtual {v3, v4}, Lz7/o;->l(I)Lz7/p;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v5}, Lz7/p;->g()Lz7/s;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    const-string v6, "type"

    .line 69
    .line 70
    invoke-virtual {v5, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-virtual {v5}, Lz7/p;->e()I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v3, v4}, Lz7/o;->l(I)Lz7/p;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-virtual {v6}, Lz7/p;->g()Lz7/s;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    const-string v7, "click"

    .line 91
    .line 92
    invoke-virtual {v6, v7}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    iget-object v1, p1, Lz7/s;->a:Lb8/n;

    .line 103
    .line 104
    invoke-virtual {v1, v0}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_2

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lz7/p;->b()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    iput-boolean v0, p0, Lcom/yunpan/appmanage/carsdk/e;->g:Z

    .line 119
    .line 120
    :cond_2
    const-string v0, "isOn"

    .line 121
    .line 122
    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p1}, Lz7/p;->b()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :catch_0
    const-string p1, "\u8bfb\u53d6\u5e7f\u6c7d\u57c3\u5b89\u4e13\u7528\u6620\u5c04\u7684\u914d\u7f6e\u51fa\u9519"

    .line 131
    .line 132
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method public final d(Landroid/content/Context;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/e;->a:Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->init(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    :catchall_0
    :try_start_1
    new-instance p1, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;

    .line 11
    .line 12
    invoke-direct {p1}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/yunpan/appmanage/carsdk/e;->b:Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;

    .line 16
    .line 17
    const/16 v0, 0x16

    .line 18
    .line 19
    filled-new-array {v0}, [I

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {p1, v1, v0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->listen(I[I)V

    .line 25
    .line 26
    .line 27
    const/16 p1, 0x1a

    .line 28
    .line 29
    filled-new-array {p1, v1}, [I

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/e;->b:Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;

    .line 34
    .line 35
    const/4 v1, 0x4

    .line 36
    invoke-virtual {v0, v1, p1}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->listen(I[I)V

    .line 37
    .line 38
    .line 39
    const/16 p1, 0xb

    .line 40
    .line 41
    new-array p1, p1, [I

    .line 42
    .line 43
    fill-array-data p1, :array_0

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/e;->b:Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-virtual {v0, v1, p1}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->listen(I[I)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/yunpan/appmanage/carsdk/e;->b:Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;

    .line 53
    .line 54
    invoke-virtual {p1, p0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->start(Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$ISpiListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    .line 56
    .line 57
    :catch_0
    return-void

    .line 58
    nop

    .line 59
    :array_0
    .array-data 4
        0xe9
        0xea
        0xeb
        0xec
        0xf1
        0xf2
        0xf3
        0xf4
        0xe7
        0xe8
        0xf9
    .end array-data
.end method

.method public final g(I)V
    .locals 4

    .line 1
    const/16 v0, 0xf9

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    packed-switch p1, :pswitch_data_1

    .line 9
    .line 10
    .line 11
    goto :goto_1

    .line 12
    :pswitch_0
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/e;->a:Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getCarSettingValue(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/e;->d:Lcom/yunpan/appmanage/carsdk/d;

    .line 25
    .line 26
    invoke-interface {v2, p1, v0}, Lcom/yunpan/appmanage/carsdk/d;->s(IZ)V

    .line 27
    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object p1, p0, Lcom/yunpan/appmanage/carsdk/e;->a:Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 32
    .line 33
    const/16 v2, 0xe9

    .line 34
    .line 35
    invoke-virtual {p1, v2}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getCarSettingValue(I)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/e;->a:Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 40
    .line 41
    const/16 v3, 0xea

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getCarSettingValue(I)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    add-int/2addr v2, p1

    .line 48
    iget-object p1, p0, Lcom/yunpan/appmanage/carsdk/e;->a:Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 49
    .line 50
    const/16 v3, 0xeb

    .line 51
    .line 52
    invoke-virtual {p1, v3}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getCarSettingValue(I)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    add-int/2addr p1, v2

    .line 57
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/e;->a:Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 58
    .line 59
    const/16 v3, 0xec

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getCarSettingValue(I)I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    add-int/2addr v2, p1

    .line 66
    if-ne v2, v1, :cond_2

    .line 67
    .line 68
    iget-object p1, p0, Lcom/yunpan/appmanage/carsdk/e;->d:Lcom/yunpan/appmanage/carsdk/d;

    .line 69
    .line 70
    const/4 v1, -0x1

    .line 71
    invoke-interface {p1, v1, v0}, Lcom/yunpan/appmanage/carsdk/d;->s(IZ)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :pswitch_1
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/e;->d:Lcom/yunpan/appmanage/carsdk/d;

    .line 76
    .line 77
    iget-object v1, p0, Lcom/yunpan/appmanage/carsdk/e;->a:Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 78
    .line 79
    invoke-virtual {v1, p1}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getCarSettingValue(I)I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    invoke-interface {v0, p1}, Lcom/yunpan/appmanage/carsdk/d;->p(I)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :pswitch_2
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/e;->a:Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 88
    .line 89
    invoke-virtual {v0, p1}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getCarSettingValue(I)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    iget-object v1, p0, Lcom/yunpan/appmanage/carsdk/e;->d:Lcom/yunpan/appmanage/carsdk/d;

    .line 94
    .line 95
    invoke-interface {v1, p1, v0}, Lcom/yunpan/appmanage/carsdk/d;->g(II)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/e;->d:Lcom/yunpan/appmanage/carsdk/d;

    .line 100
    .line 101
    iget-object v1, p0, Lcom/yunpan/appmanage/carsdk/e;->a:Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 102
    .line 103
    invoke-virtual {v1, p1}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getCarSettingValue(I)I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    invoke-interface {v0, p1}, Lcom/yunpan/appmanage/carsdk/d;->l(I)V

    .line 108
    .line 109
    .line 110
    :cond_2
    :goto_1
    return-void

    .line 111
    :pswitch_data_0
    .packed-switch 0xe7
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    :pswitch_data_1
    .packed-switch 0xf1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final h()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/e;->d:Lcom/yunpan/appmanage/carsdk/d;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/yunpan/appmanage/carsdk/e;->c:Landroid/os/Handler;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/e;->b:Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->end()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    :catch_0
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/e;->a:Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->unBindService()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 21
    .line 22
    .line 23
    :catch_1
    :cond_1
    return-void
.end method

.method public final onReceiveSpi(III)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/yunpan/appmanage/carsdk/e;->c:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v0, Lcom/yunpan/appmanage/carsdk/a;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, p0, p2, p3, v1}, Lcom/yunpan/appmanage/carsdk/a;-><init>(Ljava/lang/Object;III)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method
