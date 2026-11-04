.class public final Lua/h8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/wd;
.implements Lec/e;


# instance fields
.field public final synthetic a:Lua/q8;


# direct methods
.method public synthetic constructor <init>(Lua/q8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/h8;->a:Lua/q8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lua/h8;->a:Lua/q8;

    .line 2
    .line 3
    iget-object v0, v0, Lua/q8;->g:Lha/u9;

    .line 4
    .line 5
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 6
    .line 7
    .line 8
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public D()V
    .locals 4

    .line 1
    iget-object v0, p0, Lua/h8;->a:Lua/q8;

    .line 2
    .line 3
    iget-object v0, v0, Lua/q8;->g:Lha/u9;

    .line 4
    .line 5
    const-string v1, "\u6e05\u7406\u4e2d"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lha/u9;->c(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lw/r3;

    .line 11
    .line 12
    invoke-direct {v0}, Lw/r3;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v1, Ljava/io/File;

    .line 16
    .line 17
    sget-object v2, Lfa/g0;->a:Lfa/h0;

    .line 18
    .line 19
    invoke-virtual {v2}, Lfa/h0;->d()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Lua/g5;

    .line 27
    .line 28
    const/16 v3, 0xe

    .line 29
    .line 30
    invoke-direct {v2, v3, p0}, Lua/g5;-><init>(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iput-object v2, v0, Lw/r3;->a:Ljava/lang/Object;

    .line 34
    .line 35
    new-instance v2, La2/c0;

    .line 36
    .line 37
    const/16 v3, 0xe

    .line 38
    .line 39
    invoke-direct {v2, v0, v3, v1}, La2/c0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, v0, Lw/r3;->c:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 45
    .line 46
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public E(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lx9/w3;

    .line 2
    .line 3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 4
    .line 5
    iget v1, p1, Lx9/w3;->k:I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lua/h8;->a:Lua/q8;

    .line 11
    .line 12
    iget-object v0, v0, Lua/q8;->n:Lx9/n;

    .line 13
    .line 14
    iget v1, p1, Lx9/w3;->k:I

    .line 15
    .line 16
    invoke-virtual {v0, v1, p1}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public b(Lgc/b;)V
    .locals 0

    .line 1
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lua/h8;->a:Lua/q8;

    .line 2
    .line 3
    iget-object v0, v0, Lua/q8;->g:Lha/u9;

    .line 4
    .line 5
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 6
    .line 7
    .line 8
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public t()V
    .locals 0

    .line 1
    return-void
.end method
