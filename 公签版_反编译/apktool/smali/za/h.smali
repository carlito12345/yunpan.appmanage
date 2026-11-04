.class public final Lza/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lx9/w3;

.field public final b:Ljava/util/ArrayList;

.field public final c:I

.field public final synthetic d:Lua/i8;


# direct methods
.method public constructor <init>(Lua/i8;Lx9/w3;Ljava/util/ArrayList;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lza/h;->d:Lua/i8;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lza/h;->a:Lx9/w3;

    .line 7
    .line 8
    iput-object p3, p0, Lza/h;->b:Ljava/util/ArrayList;

    .line 9
    .line 10
    iput p4, p0, Lza/h;->c:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lza/h;->a:Lx9/w3;

    .line 4
    .line 5
    iget-object v1, v1, Lx9/w3;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    array-length v1, v0

    .line 17
    if-lez v1, :cond_3

    .line 18
    .line 19
    array-length v1, v0

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-ge v2, v1, :cond_3

    .line 22
    .line 23
    aget-object v3, v0, v2

    .line 24
    .line 25
    new-instance v4, Lx9/w3;

    .line 26
    .line 27
    invoke-direct {v4, v3}, Lx9/w3;-><init>(Ljava/io/File;)V

    .line 28
    .line 29
    .line 30
    iget-object v3, p0, Lza/h;->b:Ljava/util/ArrayList;

    .line 31
    .line 32
    monitor-enter v3

    .line 33
    :try_start_0
    iget-object v5, v4, Lx9/w3;->o:Ljava/lang/String;

    .line 34
    .line 35
    if-nez v5, :cond_1

    .line 36
    .line 37
    iget-boolean v5, v4, Lx9/w3;->c:Z

    .line 38
    .line 39
    if-eqz v5, :cond_0

    .line 40
    .line 41
    new-instance v5, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    iget-object v6, v4, Lx9/w3;->b:Ljava/lang/String;

    .line 47
    .line 48
    iget v7, p0, Lza/h;->c:I

    .line 49
    .line 50
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v6, "/"

    .line 58
    .line 59
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    goto :goto_1

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    goto :goto_2

    .line 69
    :cond_0
    iget-object v5, v4, Lx9/w3;->b:Ljava/lang/String;

    .line 70
    .line 71
    iget v6, p0, Lza/h;->c:I

    .line 72
    .line 73
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    :goto_1
    iput-object v5, v4, Lx9/w3;->o:Ljava/lang/String;

    .line 78
    .line 79
    :cond_1
    iget-object v5, p0, Lza/h;->b:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    iget-boolean v3, v4, Lx9/w3;->c:Z

    .line 86
    .line 87
    if-eqz v3, :cond_2

    .line 88
    .line 89
    iget-object v3, p0, Lza/h;->d:Lua/i8;

    .line 90
    .line 91
    iget-object v3, v3, Lua/i8;->c:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 96
    .line 97
    .line 98
    iget-object v3, p0, Lza/h;->d:Lua/i8;

    .line 99
    .line 100
    iget-object v5, v3, Lua/i8;->b:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v5, Ljava/util/concurrent/ExecutorService;

    .line 103
    .line 104
    new-instance v6, Lza/h;

    .line 105
    .line 106
    iget-object v7, p0, Lza/h;->b:Ljava/util/ArrayList;

    .line 107
    .line 108
    iget v8, p0, Lza/h;->c:I

    .line 109
    .line 110
    invoke-direct {v6, v3, v4, v7, v8}, Lza/h;-><init>(Lua/i8;Lx9/w3;Ljava/util/ArrayList;I)V

    .line 111
    .line 112
    .line 113
    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 114
    .line 115
    .line 116
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :goto_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    throw v0

    .line 121
    :cond_3
    iget-object v0, p0, Lza/h;->d:Lua/i8;

    .line 122
    .line 123
    iget-object v0, v0, Lua/i8;->c:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 128
    .line 129
    .line 130
    return-void
.end method
