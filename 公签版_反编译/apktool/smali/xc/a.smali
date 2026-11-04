.class public Lxc/a;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lvc/b;


# static fields
.field public static final i:Lorg/slf4j/Logger;


# instance fields
.field public a:Z

.field public final b:Lwc/a;

.field public final c:Lvd/d;

.field public final d:Lvd/g;

.field public final e:Lsd/f;

.field public final f:La0/h;

.field public final g:Lvd/d0;

.field public final h:Lvd/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lxc/a;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lxc/a;->i:Lorg/slf4j/Logger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lwc/a;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lxc/a;->b:Lwc/a;

    .line 12
    .line 13
    new-instance v0, Lvd/d;

    .line 14
    .line 15
    invoke-direct {v0}, Lvd/d;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lxc/a;->c:Lvd/d;

    .line 19
    .line 20
    new-instance v0, Ls9/a;

    .line 21
    .line 22
    const/16 v1, 0x11

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ls9/a;-><init>(I)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lvd/g;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lvd/g;-><init>(Lvc/b;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lxc/a;->d:Lvd/g;

    .line 33
    .line 34
    new-instance v0, Lsd/f;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lsd/f;-><init>(Lxc/a;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lxc/a;->e:Lsd/f;

    .line 40
    .line 41
    new-instance v0, La0/h;

    .line 42
    .line 43
    invoke-direct {v0, p1}, La0/h;-><init>(Lwc/a;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lxc/a;->f:La0/h;

    .line 47
    .line 48
    new-instance v0, Lvd/d0;

    .line 49
    .line 50
    invoke-direct {v0}, Lvd/d0;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lxc/a;->g:Lvd/d0;

    .line 54
    .line 55
    iget-object v0, p1, Lwc/a;->R:Ljava/lang/String;

    .line 56
    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    new-instance v1, Lvd/j;

    .line 60
    .line 61
    iget-object v2, p1, Lwc/a;->Q:Ljava/lang/String;

    .line 62
    .line 63
    iget-object p1, p1, Lwc/a;->S:Ljava/lang/String;

    .line 64
    .line 65
    invoke-direct {v1, v2, v0, p1}, Lvd/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iput-object v1, p0, Lxc/a;->h:Lvd/j;

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    new-instance p1, Lvd/j;

    .line 72
    .line 73
    invoke-direct {p1}, Lvd/j;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object p1, p0, Lxc/a;->h:Lvd/j;

    .line 77
    .line 78
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lxc/a;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->removeShutdownHook(Ljava/lang/Thread;)Z

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lxc/a;->g:Lvd/d0;

    .line 13
    .line 14
    iget-object v1, v0, Lvd/d0;->a:Ljava/util/LinkedList;

    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_0
    invoke-virtual {v0}, Lvd/d0;->a()V

    .line 18
    .line 19
    .line 20
    sget-object v2, Lvd/d0;->e:Lorg/slf4j/Logger;

    .line 21
    .line 22
    const-string v3, "Closing pool"

    .line 23
    .line 24
    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Ljava/util/LinkedList;

    .line 28
    .line 29
    iget-object v3, v0, Lvd/d0;->a:Ljava/util/LinkedList;

    .line 30
    .line 31
    invoke-direct {v2, v3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 32
    .line 33
    .line 34
    iget-object v3, v0, Lvd/d0;->b:Ljava/util/LinkedList;

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 37
    .line 38
    .line 39
    iget-object v3, v0, Lvd/d0;->a:Ljava/util/LinkedList;

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 42
    .line 43
    .line 44
    iget-object v3, v0, Lvd/d0;->b:Ljava/util/LinkedList;

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 47
    .line 48
    .line 49
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Lvd/b0;

    .line 65
    .line 66
    const/4 v3, 0x0

    .line 67
    :try_start_1
    invoke-virtual {v2, v3, v3}, Lhe/e;->K(ZZ)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catch_0
    move-exception v2

    .line 72
    sget-object v3, Lvd/d0;->e:Lorg/slf4j/Logger;

    .line 73
    .line 74
    const-string v4, "Failed to close connection"

    .line 75
    .line 76
    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    iget-object v2, v0, Lvd/d0;->a:Ljava/util/LinkedList;

    .line 81
    .line 82
    monitor-enter v2

    .line 83
    :try_start_2
    invoke-virtual {v0}, Lvd/d0;->a()V

    .line 84
    .line 85
    .line 86
    monitor-exit v2

    .line 87
    return-void

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    throw v0

    .line 91
    :catchall_1
    move-exception v0

    .line 92
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 93
    goto :goto_2

    .line 94
    :goto_1
    throw v0

    .line 95
    :goto_2
    goto :goto_1
.end method

.method public final b()Lvc/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lxc/a;->g:Lvd/d0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Lvc/b;
    .locals 4

    .line 1
    new-instance v0, Lvd/j;

    .line 2
    .line 3
    invoke-direct {v0}, Lvd/j;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lua/i8;

    .line 7
    .line 8
    const/16 v2, 0x9

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-direct {v1, v2, p0, v0, v3}, Lua/i8;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 12
    .line 13
    .line 14
    return-object v1
.end method

.method public final e()Lvc/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lxc/a;->b:Lwc/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Lvd/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lxc/a;->h:Lvd/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()La0/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lxc/a;->f:La0/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()Lvc/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lxc/a;->e:Lsd/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Lvc/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lxc/a;->c:Lvd/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final run()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iput-boolean v0, p0, Lxc/a;->a:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lxc/a;->a()V
    :try_end_0
    .catch Lvc/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    sget-object v1, Lxc/a;->i:Lorg/slf4j/Logger;

    .line 10
    .line 11
    const-string v2, "Failed to close context on shutdown"

    .line 12
    .line 13
    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method
