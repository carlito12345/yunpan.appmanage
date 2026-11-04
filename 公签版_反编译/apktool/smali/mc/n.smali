.class public final Lmc/n;
.super Lec/b;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lua/t6;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lua/t6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lec/b;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lmc/n;->a:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lmc/n;->b:Lua/t6;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final c(Lec/e;)V
    .locals 3

    .line 1
    sget-object v0, Lic/b;->a:Lic/b;

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lmc/n;->b:Lua/t6;

    .line 4
    .line 5
    iget-object v2, p0, Lmc/n;->a:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lua/t6;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lec/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    .line 13
    instance-of v2, v1, Ljava/util/concurrent/Callable;

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    :try_start_1
    check-cast v1, Ljava/util/concurrent/Callable;

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    invoke-interface {p1, v0}, Lec/e;->b(Lgc/b;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Lec/e;->onComplete()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    new-instance v0, Lmc/m;

    .line 33
    .line 34
    invoke-direct {v0, p1, v1}, Lmc/m;-><init>(Lec/e;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v0}, Lec/e;->b(Lgc/b;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lmc/m;->run()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v1

    .line 45
    invoke-static {v1}, Lif/a;->K0(Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Lec/e;->b(Lgc/b;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v1}, Lec/e;->B(Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    invoke-virtual {v1, p1}, Lec/b;->b(Lec/e;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void

    .line 59
    :catchall_1
    move-exception v1

    .line 60
    invoke-interface {p1, v0}, Lec/e;->b(Lgc/b;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {p1, v1}, Lec/e;->B(Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method
