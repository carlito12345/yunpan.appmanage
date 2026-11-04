.class public final La6/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La6/j;


# instance fields
.field public final a:Ljava/lang/Object;

.field public volatile b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, La6/i;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, La6/i;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lj5/a;
    .locals 5

    .line 1
    iget-object v0, p0, La6/i;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lj5/a;

    .line 4
    .line 5
    if-nez v0, :cond_5

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, La6/i;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lj5/a;

    .line 11
    .line 12
    if-nez v0, :cond_3

    .line 13
    .line 14
    iget-object v0, p0, La6/i;->a:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Landroidx/recyclerview/widget/h;

    .line 17
    .line 18
    iget-object v1, v0, Landroidx/recyclerview/widget/h;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Lj5/d;

    .line 21
    .line 22
    invoke-interface {v1}, Lj5/d;->b()Ljava/io/File;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    :cond_1
    new-instance v2, Lj5/e;

    .line 43
    .line 44
    iget-wide v3, v0, Landroidx/recyclerview/widget/h;->b:J

    .line 45
    .line 46
    invoke-direct {v2, v1, v3, v4}, Lj5/e;-><init>(Ljava/io/File;J)V

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_0
    iput-object v2, p0, La6/i;->b:Ljava/lang/Object;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    goto :goto_2

    .line 54
    :cond_3
    :goto_1
    iget-object v0, p0, La6/i;->b:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Lj5/a;

    .line 57
    .line 58
    if-nez v0, :cond_4

    .line 59
    .line 60
    new-instance v0, Lha/l2;

    .line 61
    .line 62
    const/16 v1, 0xc

    .line 63
    .line 64
    invoke-direct {v0, v1}, Lha/l2;-><init>(I)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, La6/i;->b:Ljava/lang/Object;

    .line 68
    .line 69
    :cond_4
    monitor-exit p0

    .line 70
    goto :goto_3

    .line 71
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    throw v0

    .line 73
    :cond_5
    :goto_3
    iget-object v0, p0, La6/i;->b:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v0, Lj5/a;

    .line 76
    .line 77
    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, La6/i;->b:Ljava/lang/Object;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, La6/i;->b:Ljava/lang/Object;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, La6/i;->a:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, La6/j;

    .line 13
    .line 14
    invoke-interface {v0}, La6/j;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "Argument must not be null"

    .line 19
    .line 20
    invoke-static {v0, v1}, La6/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, La6/i;->b:Ljava/lang/Object;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    monitor-exit p0

    .line 29
    goto :goto_2

    .line 30
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw v0

    .line 32
    :cond_1
    :goto_2
    iget-object v0, p0, La6/i;->b:Ljava/lang/Object;

    .line 33
    .line 34
    return-object v0
.end method
