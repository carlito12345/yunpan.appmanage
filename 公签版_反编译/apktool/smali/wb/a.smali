.class public abstract Lwb/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ls3/d0;

.field public final synthetic b:Lwb/c;


# direct methods
.method public constructor <init>(Lwb/c;Ls3/d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwb/a;->b:Lwb/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lwb/a;->a:Ls3/d0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lwb/a;->b:Lwb/c;

    .line 2
    .line 3
    iget-object v0, v0, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public final run()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lwb/a;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lwb/a;->a()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lwb/a;->a:Ls3/d0;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ls3/d0;->o(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lwb/a;->a:Ls3/d0;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget v1, v0, Ls3/d0;->d:I

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    iput v1, v0, Ls3/d0;->d:I

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Ls3/d0;->o(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    monitor-exit v0

    .line 31
    :goto_0
    return-void

    .line 32
    :catchall_0
    move-exception v1

    .line 33
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw v1
.end method
