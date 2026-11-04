.class public final Lwb/f;
.super Lwb/a;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lbd/e;

.field public final synthetic d:Lu1/p;

.field public final synthetic e:Leb/c;

.field public final synthetic f:Lbd/e;

.field public final synthetic g:I

.field public final synthetic h:Lwb/g;


# direct methods
.method public constructor <init>(Lwb/g;Ls3/d0;Lbd/e;Lu1/p;Leb/c;Lbd/e;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwb/f;->h:Lwb/g;

    .line 2
    .line 3
    iput-object p3, p0, Lwb/f;->c:Lbd/e;

    .line 4
    .line 5
    iput-object p4, p0, Lwb/f;->d:Lu1/p;

    .line 6
    .line 7
    iput-object p5, p0, Lwb/f;->e:Leb/c;

    .line 8
    .line 9
    iput-object p6, p0, Lwb/f;->f:Lbd/e;

    .line 10
    .line 11
    iput p7, p0, Lwb/f;->g:I

    .line 12
    .line 13
    invoke-direct {p0, p1, p2}, Lwb/a;-><init>(Lwb/c;Ls3/d0;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lwb/f;->c:Lbd/e;

    .line 2
    .line 3
    iget-object v0, v0, Lbd/e;->h:Ljava/io/Serializable;

    .line 4
    .line 5
    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v1, p0, Lwb/f;->h:Lwb/g;

    .line 11
    .line 12
    iget-object v1, v1, Lwb/c;->b:Lmb/g;

    .line 13
    .line 14
    iget-object v2, v1, Lmb/g;->a:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    add-int/lit8 v2, v2, -0x1

    .line 21
    .line 22
    iget-object v5, p0, Lwb/f;->d:Lu1/p;

    .line 23
    .line 24
    iget-object v6, p0, Lwb/f;->e:Leb/c;

    .line 25
    .line 26
    iget-object v7, p0, Lwb/f;->c:Lbd/e;

    .line 27
    .line 28
    iget-object v8, p0, Lwb/f;->f:Lbd/e;

    .line 29
    .line 30
    new-instance v9, Lwb/e;

    .line 31
    .line 32
    move-object v3, v9

    .line 33
    move-object v4, p0

    .line 34
    invoke-direct/range {v3 .. v8}, Lwb/e;-><init>(Lwb/f;Lu1/p;Leb/c;Lbd/e;Lbd/e;)V

    .line 35
    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-virtual {v1, v3, v2, v9}, Lmb/g;->x(IILmb/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    return-object v0

    .line 46
    :catchall_0
    move-exception v1

    .line 47
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 48
    .line 49
    .line 50
    throw v1
.end method

.method public final b()Z
    .locals 2

    .line 1
    invoke-super {p0}, Lwb/a;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lwb/f;->h:Lwb/g;

    .line 8
    .line 9
    iget-object v0, v0, Lwb/g;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget v1, p0, Lwb/f;->g:I

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method
