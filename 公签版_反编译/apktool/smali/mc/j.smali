.class public final Lmc/j;
.super Lec/b;
.source "SourceFile"


# instance fields
.field public final a:Lec/j;

.field public final b:J

.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;Lec/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lec/b;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lmc/j;->b:J

    .line 5
    .line 6
    iput-wide p3, p0, Lmc/j;->c:J

    .line 7
    .line 8
    iput-object p5, p0, Lmc/j;->d:Ljava/util/concurrent/TimeUnit;

    .line 9
    .line 10
    iput-object p6, p0, Lmc/j;->a:Lec/j;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final c(Lec/e;)V
    .locals 8

    .line 1
    new-instance v7, Lmc/i;

    .line 2
    .line 3
    invoke-direct {v7, p1}, Lmc/i;-><init>(Lec/e;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v7}, Lec/e;->b(Lgc/b;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lmc/j;->a:Lec/j;

    .line 10
    .line 11
    instance-of p1, v0, Loc/w;

    .line 12
    .line 13
    iget-object v6, p0, Lmc/j;->d:Ljava/util/concurrent/TimeUnit;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    check-cast v0, Loc/w;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    new-instance v0, Loc/v;

    .line 23
    .line 24
    invoke-direct {v0}, Loc/v;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {v7, v0}, Lic/a;->d(Ljava/util/concurrent/atomic/AtomicReference;Lgc/b;)Z

    .line 28
    .line 29
    .line 30
    iget-wide v2, p0, Lmc/j;->b:J

    .line 31
    .line 32
    iget-wide v4, p0, Lmc/j;->c:J

    .line 33
    .line 34
    move-object v1, v7

    .line 35
    invoke-virtual/range {v0 .. v6}, Lec/i;->f(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lgc/b;

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-wide v2, p0, Lmc/j;->b:J

    .line 40
    .line 41
    iget-wide v4, p0, Lmc/j;->c:J

    .line 42
    .line 43
    move-object v1, v7

    .line 44
    invoke-virtual/range {v0 .. v6}, Lec/j;->c(Lmc/i;JJLjava/util/concurrent/TimeUnit;)Lgc/b;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {v7, p1}, Lic/a;->d(Ljava/util/concurrent/atomic/AtomicReference;Lgc/b;)Z

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method
