.class public Lcom/desay_svautomotive/p023a/C0526b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile f294a:Lcom/desay_svautomotive/p023a/C0526b;


# instance fields
.field private f295b:Landroid/content/Context;

.field private f296c:Lcom/desay_svautomotive/p023a/InterfaceC0528d;

.field private f297d:Lcom/desay_svautomotive/p023a/C0534j;

.field private f298e:Z

.field private f299f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/desay_svautomotive/p023a/InterfaceC0533i;",
            ">;"
        }
    .end annotation
.end field

.field private f300g:Landroid/content/ServiceConnection;

.field private f301h:Lcom/desay_svautomotive/p023a/C0534j$a;


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
    iput-object v0, p0, Lcom/desay_svautomotive/p023a/C0526b;->f295b:Landroid/content/Context;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/desay_svautomotive/p023a/C0526b;->f296c:Lcom/desay_svautomotive/p023a/InterfaceC0528d;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/desay_svautomotive/p023a/C0526b;->f297d:Lcom/desay_svautomotive/p023a/C0534j;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/desay_svautomotive/p023a/C0526b;->f298e:Z

    .line 13
    .line 14
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/desay_svautomotive/p023a/C0526b;->f299f:Ljava/util/List;

    .line 20
    .line 21
    new-instance v0, Lcom/desay_svautomotive/p023a/C0526b$1;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/desay_svautomotive/p023a/C0526b$1;-><init>(Lcom/desay_svautomotive/p023a/C0526b;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/desay_svautomotive/p023a/C0526b;->f300g:Landroid/content/ServiceConnection;

    .line 27
    .line 28
    new-instance v0, Lcom/desay_svautomotive/p023a/C0526b$2;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/desay_svautomotive/p023a/C0526b$2;-><init>(Lcom/desay_svautomotive/p023a/C0526b;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/desay_svautomotive/p023a/C0526b;->f301h:Lcom/desay_svautomotive/p023a/C0534j$a;

    .line 34
    .line 35
    return-void
.end method

.method public static bridge synthetic a(Lcom/desay_svautomotive/p023a/C0526b;)Lcom/desay_svautomotive/p023a/C0534j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/desay_svautomotive/p023a/C0526b;->f297d:Lcom/desay_svautomotive/p023a/C0534j;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/desay_svautomotive/p023a/C0526b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/desay_svautomotive/p023a/C0526b;->f299f:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/desay_svautomotive/p023a/C0526b;Lcom/desay_svautomotive/p023a/InterfaceC0528d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/desay_svautomotive/p023a/C0526b;->f296c:Lcom/desay_svautomotive/p023a/InterfaceC0528d;

    return-void
.end method

.method public static bridge synthetic d(Lcom/desay_svautomotive/p023a/C0526b;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/desay_svautomotive/p023a/C0526b;->f298e:Z

    return-void
.end method

.method public static m218a()Lcom/desay_svautomotive/p023a/C0526b;
    .locals 2

    .line 1
    sget-object v0, Lcom/desay_svautomotive/p023a/C0526b;->f294a:Lcom/desay_svautomotive/p023a/C0526b;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/desay_svautomotive/p023a/C0526b;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/desay_svautomotive/p023a/C0526b;->f294a:Lcom/desay_svautomotive/p023a/C0526b;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/desay_svautomotive/p023a/C0526b;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/desay_svautomotive/p023a/C0526b;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/desay_svautomotive/p023a/C0526b;->f294a:Lcom/desay_svautomotive/p023a/C0526b;

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
    sget-object v0, Lcom/desay_svautomotive/p023a/C0526b;->f294a:Lcom/desay_svautomotive/p023a/C0526b;

    .line 27
    .line 28
    return-object v0
.end method


# virtual methods
.method public m223c()V
    .locals 6

    .line 1
    const/16 v0, 0x1388

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    .line 5
    .line 6
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v3, "com.desay_svautomotive.svcarinfo"

    .line 10
    .line 11
    const-string v4, "com.desay_svautomotive.svcarinfo.CarInfoService"

    .line 12
    .line 13
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    iget-object v3, p0, Lcom/desay_svautomotive/p023a/C0526b;->f295b:Landroid/content/Context;

    .line 17
    .line 18
    iget-object v4, p0, Lcom/desay_svautomotive/p023a/C0526b;->f300g:Landroid/content/ServiceConnection;

    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v2

    .line 26
    goto :goto_1

    .line 27
    :catch_0
    move-exception v2

    .line 28
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v2, p0, Lcom/desay_svautomotive/p023a/C0526b;->f296c:Lcom/desay_svautomotive/p023a/InterfaceC0528d;

    .line 32
    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    iget-object v2, p0, Lcom/desay_svautomotive/p023a/C0526b;->f297d:Lcom/desay_svautomotive/p023a/C0534j;

    .line 36
    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    invoke-virtual {v2, v1, v0}, Lcom/desay_svautomotive/p023a/C0534j;->m268a(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void

    .line 43
    :goto_1
    iget-object v3, p0, Lcom/desay_svautomotive/p023a/C0526b;->f296c:Lcom/desay_svautomotive/p023a/InterfaceC0528d;

    .line 44
    .line 45
    if-nez v3, :cond_1

    .line 46
    .line 47
    iget-object v3, p0, Lcom/desay_svautomotive/p023a/C0526b;->f297d:Lcom/desay_svautomotive/p023a/C0534j;

    .line 48
    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    invoke-virtual {v3, v1, v0}, Lcom/desay_svautomotive/p023a/C0534j;->m268a(II)V

    .line 52
    .line 53
    .line 54
    :cond_1
    throw v2
.end method

.method public m225a(I)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/desay_svautomotive/p023a/C0526b;->m226a(II)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public m226a(II)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/desay_svautomotive/p023a/C0526b;->m237b(II)[I

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x0

    .line 6
    aget p1, p1, p2

    .line 7
    .line 8
    return p1
.end method

.method public m227a(ILcom/desay_svautomotive/p023a/InterfaceC0529e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/p023a/C0526b;->f296c:Lcom/desay_svautomotive/p023a/InterfaceC0528d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/desay_svautomotive/p023a/InterfaceC0528d;->mo245a(ILcom/desay_svautomotive/p023a/InterfaceC0529e;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    return-void
.end method

.method public m228a(ILcom/desay_svautomotive/p023a/InterfaceC0529e;[I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/p023a/C0526b;->f296c:Lcom/desay_svautomotive/p023a/InterfaceC0528d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/desay_svautomotive/p023a/InterfaceC0528d;->mo246a(ILcom/desay_svautomotive/p023a/InterfaceC0529e;[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    return-void
.end method

.method public m229a(I[I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/p023a/C0526b;->f296c:Lcom/desay_svautomotive/p023a/InterfaceC0528d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/desay_svautomotive/p023a/InterfaceC0528d;->mo247a(I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    return-void
.end method

.method public m230a(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/p023a/C0526b;->f295b:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/desay_svautomotive/p023a/C0526b;->f295b:Landroid/content/Context;

    .line 6
    .line 7
    new-instance p1, Lcom/desay_svautomotive/p023a/C0534j;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/desay_svautomotive/p023a/C0526b;->f301h:Lcom/desay_svautomotive/p023a/C0534j$a;

    .line 10
    .line 11
    invoke-direct {p1, v0}, Lcom/desay_svautomotive/p023a/C0534j;-><init>(Lcom/desay_svautomotive/p023a/C0534j$a;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/desay_svautomotive/p023a/C0526b;->f297d:Lcom/desay_svautomotive/p023a/C0534j;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/desay_svautomotive/p023a/C0526b;->m223c()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public m231a(Lcom/desay_svautomotive/p023a/InterfaceC0533i;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/desay_svautomotive/p023a/C0526b;->f299f:Ljava/util/List;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/desay_svautomotive/p023a/C0526b;->f299f:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p1

    .line 16
    :cond_0
    :goto_0
    return-void
.end method

.method public m232a(III)Z
    .locals 0

    .line 1
    filled-new-array {p3}, [I

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/desay_svautomotive/p023a/C0526b;->m233a(II[I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public m233a(II[I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/p023a/C0526b;->f296c:Lcom/desay_svautomotive/p023a/InterfaceC0528d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/desay_svautomotive/p023a/InterfaceC0528d;->mo244a(II[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    return v1
.end method

.method public m234b(I)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/desay_svautomotive/p023a/C0526b;->m226a(II)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public m235b(Lcom/desay_svautomotive/p023a/InterfaceC0533i;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/desay_svautomotive/p023a/C0526b;->f299f:Ljava/util/List;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/desay_svautomotive/p023a/C0526b;->f299f:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p1

    .line 16
    :cond_0
    :goto_0
    return-void
.end method

.method public m236b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/desay_svautomotive/p023a/C0526b;->f298e:Z

    .line 2
    .line 3
    return v0
.end method

.method public m237b(II)[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/p023a/C0526b;->f296c:Lcom/desay_svautomotive/p023a/InterfaceC0528d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/desay_svautomotive/p023a/InterfaceC0528d;->mo248a(II)[I

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    array-length p2, p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    if-lez p2, :cond_0

    .line 13
    .line 14
    return-object p1

    .line 15
    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    filled-new-array {p1}, [I

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public m238c(II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Lcom/desay_svautomotive/p023a/C0526b;->m232a(III)Z

    .line 3
    .line 4
    .line 5
    return-void
.end method
