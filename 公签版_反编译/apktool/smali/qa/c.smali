.class public final synthetic Lqa/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;

.field public final synthetic c:Lcom/yunpan/appmanage/bean/WpPathBean;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;Lcom/yunpan/appmanage/bean/WpPathBean;)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    iput v0, p0, Lqa/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lqa/c;->c:Lcom/yunpan/appmanage/bean/WpPathBean;

    iput-object p1, p0, Lqa/c;->b:Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;Lcom/yunpan/appmanage/bean/WpPathBean;I)V
    .locals 0

    .line 2
    iput p3, p0, Lqa/c;->a:I

    iput-object p1, p0, Lqa/c;->b:Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;

    iput-object p2, p0, Lqa/c;->c:Lcom/yunpan/appmanage/bean/WpPathBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;Lcom/yunpan/appmanage/bean/WpPathBean;Lmc/b;I)V
    .locals 0

    .line 3
    iput p4, p0, Lqa/c;->a:I

    iput-object p1, p0, Lqa/c;->b:Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;

    iput-object p2, p0, Lqa/c;->c:Lcom/yunpan/appmanage/bean/WpPathBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lqa/c;->b:Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;

    .line 2
    .line 3
    iget-object v1, p0, Lqa/c;->c:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_form:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v2, v3, :cond_0

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_to:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v4, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_to:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object v4, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v5, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_form:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v5, v4, v2}, Lta/q;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    :goto_0
    iget-object v4, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v0, v4, v2}, Lcom/bumptech/glide/c;->q(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->taskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 61
    .line 62
    .line 63
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->file_success:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 64
    .line 65
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-nez v3, :cond_1

    .line 73
    .line 74
    iput-object v2, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->errorStr:Ljava/lang/String;

    .line 75
    .line 76
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->failurePaths:Ljava/util/List;

    .line 77
    .line 78
    monitor-enter v2

    .line 79
    :try_start_0
    iget-object v0, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->failurePaths:Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    monitor-exit v2

    .line 85
    goto :goto_1

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    throw v0

    .line 89
    :cond_1
    :goto_1
    return-void
.end method

.method private final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lqa/c;->b:Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;

    .line 2
    .line 3
    iget-object v1, p0, Lqa/c;->c:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_form:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v2, v3, :cond_0

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_to:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v4, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_to:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object v4, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v5, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_form:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v5, v4, v2}, Lta/q;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    :goto_0
    iget-object v4, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v0, v4, v2}, Lcom/bumptech/glide/c;->n(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->taskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 61
    .line 62
    .line 63
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->file_success:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 64
    .line 65
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-nez v3, :cond_1

    .line 73
    .line 74
    iput-object v2, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->errorStr:Ljava/lang/String;

    .line 75
    .line 76
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->failurePaths:Ljava/util/List;

    .line 77
    .line 78
    monitor-enter v2

    .line 79
    :try_start_0
    iget-object v0, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->failurePaths:Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    monitor-exit v2

    .line 85
    goto :goto_1

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    throw v0

    .line 89
    :cond_1
    :goto_1
    return-void
.end method

.method private final c()V
    .locals 6

    .line 1
    iget-object v0, p0, Lqa/c;->b:Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;

    .line 2
    .line 3
    iget-object v1, p0, Lqa/c;->c:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_form:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v2, v3, :cond_0

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_to:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v4, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_to:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object v4, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v5, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_form:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v5, v4, v2}, Lta/q;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    :goto_0
    iget-object v4, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v0, v4, v2}, Lcom/bumptech/glide/d;->n(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->taskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 61
    .line 62
    .line 63
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->file_success:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 64
    .line 65
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-nez v3, :cond_1

    .line 73
    .line 74
    iput-object v2, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->errorStr:Ljava/lang/String;

    .line 75
    .line 76
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->failurePaths:Ljava/util/List;

    .line 77
    .line 78
    monitor-enter v2

    .line 79
    :try_start_0
    iget-object v0, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->failurePaths:Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    monitor-exit v2

    .line 85
    goto :goto_1

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    throw v0

    .line 89
    :cond_1
    :goto_1
    return-void
.end method

.method private final d()V
    .locals 6

    .line 1
    iget-object v0, p0, Lqa/c;->b:Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;

    .line 2
    .line 3
    iget-object v1, p0, Lqa/c;->c:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_form:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v2, v3, :cond_0

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_to:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v4, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_to:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object v4, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v5, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_form:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v5, v4, v2}, Lta/q;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    :goto_0
    iget-object v4, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v0, v4, v2}, Lcom/bumptech/glide/d;->k(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->taskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 61
    .line 62
    .line 63
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->file_success:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 64
    .line 65
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-nez v3, :cond_1

    .line 73
    .line 74
    iput-object v2, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->errorStr:Ljava/lang/String;

    .line 75
    .line 76
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->failurePaths:Ljava/util/List;

    .line 77
    .line 78
    monitor-enter v2

    .line 79
    :try_start_0
    iget-object v0, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->failurePaths:Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    monitor-exit v2

    .line 85
    goto :goto_1

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    throw v0

    .line 89
    :cond_1
    :goto_1
    return-void
.end method

.method private final e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lqa/c;->b:Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;

    .line 2
    .line 3
    iget-object v1, p0, Lqa/c;->c:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_to:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v3, "/"

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v3, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_form:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string v3, "//"

    .line 40
    .line 41
    const-string v4, "/"

    .line 42
    .line 43
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iget-object v3, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v0, v3, v2}, Lqa/f;->c(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->taskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 56
    .line 57
    .line 58
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->file_success:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 59
    .line 60
    const/4 v4, 0x1

    .line 61
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-nez v3, :cond_0

    .line 69
    .line 70
    iput-object v2, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->errorStr:Ljava/lang/String;

    .line 71
    .line 72
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->failurePaths:Ljava/util/List;

    .line 73
    .line 74
    monitor-enter v2

    .line 75
    :try_start_0
    iget-object v0, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->failurePaths:Ljava/util/List;

    .line 76
    .line 77
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    monitor-exit v2

    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    .line 83
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    throw v0

    .line 85
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lqa/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lqa/c;->c:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 7
    .line 8
    iget-object v1, p0, Lqa/c;->b:Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;

    .line 9
    .line 10
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v3, v1, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_form:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v4, v1, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_to:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v1, v3, v2}, Lqa/g;->c(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-object v3, v1, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->taskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 29
    .line 30
    .line 31
    iget-object v3, v1, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->file_success:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_0

    .line 42
    .line 43
    iput-object v2, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->errorStr:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v2, v1, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->failurePaths:Ljava/util/List;

    .line 46
    .line 47
    monitor-enter v2

    .line 48
    :try_start_0
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->failurePaths:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    monitor-exit v2

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw v0

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 59
    :pswitch_0
    invoke-direct {p0}, Lqa/c;->e()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :pswitch_1
    invoke-direct {p0}, Lqa/c;->d()V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_2
    invoke-direct {p0}, Lqa/c;->c()V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_3
    invoke-direct {p0}, Lqa/c;->b()V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :pswitch_4
    invoke-direct {p0}, Lqa/c;->a()V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
