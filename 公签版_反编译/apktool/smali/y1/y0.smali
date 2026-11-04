.class public final Ly1/y0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ly1/x0;

.field public final b:Ly1/w0;

.field public c:I

.field public d:Ljava/lang/Object;

.field public final e:Landroid/os/Looper;

.field public f:Z


# direct methods
.method public constructor <init>(Ly1/w0;Ly1/x0;Lr1/q0;ILandroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly1/y0;->b:Ly1/w0;

    .line 5
    .line 6
    iput-object p2, p0, Ly1/y0;->a:Ly1/x0;

    .line 7
    .line 8
    iput-object p5, p0, Ly1/y0;->e:Landroid/os/Looper;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Z)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    throw p1
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ly1/y0;->f:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    invoke-static {v0}, La9/o;->t(Z)V

    .line 6
    .line 7
    .line 8
    iput-boolean v1, p0, Ly1/y0;->f:Z

    .line 9
    .line 10
    iget-object v0, p0, Ly1/y0;->b:Ly1/w0;

    .line 11
    .line 12
    check-cast v0, Ly1/f0;

    .line 13
    .line 14
    iget-boolean v1, v0, Ly1/f0;->M:Z

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    iget-object v1, v0, Ly1/f0;->j:Landroid/os/Looper;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, v0, Ly1/f0;->h:Lu1/b0;

    .line 32
    .line 33
    const/16 v1, 0xe

    .line 34
    .line 35
    invoke-virtual {v0, v1, p0}, Lu1/b0;->b(ILjava/lang/Object;)Lu1/a0;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lu1/a0;->b()V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    const-string v0, "Ignoring messages sent after release."

    .line 44
    .line 45
    invoke-static {v0}, Lu1/a;->p(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, v0}, Ly1/y0;->a(Z)V

    .line 50
    .line 51
    .line 52
    :goto_1
    return-void
.end method
