.class public final Lxb/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final a:Lio/github/rosemoe/sora/widget/CodeEditor;

.field public b:Landroid/graphics/Bitmap;

.field public c:Z

.field public final d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lio/github/rosemoe/sora/widget/CodeEditor;)V
    .locals 4

    .line 1
    const-string v0, "editor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lxb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 10
    .line 11
    new-instance v0, Ls5/c;

    .line 12
    .line 13
    invoke-direct {v0}, Ls5/c;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroid/graphics/RectF;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v0, Landroid/graphics/RectF;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v0, Leb/c;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-direct {v0, v1}, Leb/c;-><init>(Z)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    const/4 v1, 0x4

    .line 35
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    .line 37
    .line 38
    new-instance v1, Lxb/b;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-direct {v1, p0, v2}, Lxb/b;-><init>(Lxb/c;I)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p1, Lio/github/rosemoe/sora/widget/CodeEditor;->i:Ldb/p;

    .line 45
    .line 46
    const-class v3, Ldb/d;

    .line 47
    .line 48
    invoke-virtual {v2, v3, v1}, Ldb/p;->e(Ljava/lang/Class;Ldb/n;)Ldb/z;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    new-instance v1, Lxb/b;

    .line 56
    .line 57
    const/4 v2, 0x1

    .line 58
    invoke-direct {v1, p0, v2}, Lxb/b;-><init>(Lxb/c;I)V

    .line 59
    .line 60
    .line 61
    iget-object v2, p1, Lio/github/rosemoe/sora/widget/CodeEditor;->i:Ldb/p;

    .line 62
    .line 63
    const-class v3, Ldb/c;

    .line 64
    .line 65
    invoke-virtual {v2, v3, v1}, Ldb/p;->e(Ljava/lang/Class;Ldb/n;)Ldb/z;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    new-instance v1, Lxb/b;

    .line 73
    .line 74
    const/4 v2, 0x2

    .line 75
    invoke-direct {v1, p0, v2}, Lxb/b;-><init>(Lxb/c;I)V

    .line 76
    .line 77
    .line 78
    iget-object v2, p1, Lio/github/rosemoe/sora/widget/CodeEditor;->i:Ldb/p;

    .line 79
    .line 80
    const-class v3, Ldb/a0;

    .line 81
    .line 82
    invoke-virtual {v2, v3, v1}, Ldb/p;->e(Ljava/lang/Class;Ldb/n;)Ldb/z;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    new-instance v1, Lxb/b;

    .line 90
    .line 91
    const/4 v2, 0x3

    .line 92
    invoke-direct {v1, p0, v2}, Lxb/b;-><init>(Lxb/c;I)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p1, Lio/github/rosemoe/sora/widget/CodeEditor;->i:Ldb/p;

    .line 96
    .line 97
    const-class v2, Ldb/l;

    .line 98
    .line 99
    invoke-virtual {p1, v2, v1}, Ldb/p;->e(Ljava/lang/Class;Ldb/n;)Ldb/z;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    iput-object v0, p0, Lxb/c;->d:Ljava/util/ArrayList;

    .line 107
    .line 108
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 5

    .line 1
    iget-object v0, p0, Lxb/c;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ldb/z;

    .line 18
    .line 19
    iget-object v2, v1, Ldb/z;->c:Ldb/p;

    .line 20
    .line 21
    iget-object v3, v1, Ldb/z;->a:Ljava/lang/Class;

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ldb/p;->b(Ljava/lang/Class;)Ldb/o;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object v3, v2, Ldb/o;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 34
    .line 35
    .line 36
    :try_start_0
    iget-object v1, v1, Ldb/z;->b:Ljava/lang/ref/WeakReference;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Ldb/q;

    .line 43
    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    iget-object v2, v2, Ldb/o;->b:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    goto :goto_2

    .line 54
    :cond_0
    :goto_1
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :goto_2
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 67
    .line 68
    .line 69
    throw v0

    .line 70
    :cond_1
    iget-object v0, p0, Lxb/c;->d:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lxb/c;->b:Landroid/graphics/Bitmap;

    .line 76
    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 80
    .line 81
    .line 82
    :cond_2
    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lxb/c;->b:Landroid/graphics/Bitmap;

    .line 84
    .line 85
    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lxb/c;->c:Z

    .line 87
    .line 88
    return-void
.end method
