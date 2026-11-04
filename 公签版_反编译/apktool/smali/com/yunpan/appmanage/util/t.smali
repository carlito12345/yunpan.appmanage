.class public final Lcom/yunpan/appmanage/util/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Z

.field public final synthetic e:Lcom/yunpan/appmanage/util/u;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/util/u;Ljava/io/File;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yunpan/appmanage/util/t;->e:Lcom/yunpan/appmanage/util/u;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/yunpan/appmanage/util/t;->a:Ljava/io/File;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/yunpan/appmanage/util/t;->b:Ljava/util/ArrayList;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/yunpan/appmanage/util/t;->c:Ljava/util/ArrayList;

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/yunpan/appmanage/util/t;->d:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/yunpan/appmanage/util/t;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/yunpan/appmanage/util/t;->a:Ljava/io/File;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/io/File;->isHidden()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/yunpan/appmanage/util/t;->a:Ljava/io/File;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "."

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/yunpan/appmanage/util/t;->e:Lcom/yunpan/appmanage/util/u;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/yunpan/appmanage/util/u;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    new-instance v0, Lx9/w3;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/yunpan/appmanage/util/t;->a:Ljava/io/File;

    .line 38
    .line 39
    invoke-direct {v0, v1}, Lx9/w3;-><init>(Ljava/io/File;)V

    .line 40
    .line 41
    .line 42
    iget-boolean v1, v0, Lx9/w3;->c:Z

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    iget-object v1, p0, Lcom/yunpan/appmanage/util/t;->b:Ljava/util/ArrayList;

    .line 47
    .line 48
    monitor-enter v1

    .line 49
    :try_start_0
    iget-object v2, p0, Lcom/yunpan/appmanage/util/t;->b:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    monitor-exit v1

    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw v0

    .line 59
    :cond_2
    iget-object v1, p0, Lcom/yunpan/appmanage/util/t;->c:Ljava/util/ArrayList;

    .line 60
    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    monitor-enter v1

    .line 64
    :try_start_1
    iget-object v2, p0, Lcom/yunpan/appmanage/util/t;->c:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    monitor-exit v1

    .line 70
    goto :goto_0

    .line 71
    :catchall_1
    move-exception v0

    .line 72
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    throw v0

    .line 74
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/yunpan/appmanage/util/t;->e:Lcom/yunpan/appmanage/util/u;

    .line 75
    .line 76
    iget-object v0, v0, Lcom/yunpan/appmanage/util/u;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 79
    .line 80
    .line 81
    return-void
.end method
