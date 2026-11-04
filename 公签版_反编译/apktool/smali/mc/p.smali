.class public final Lmc/p;
.super Lmc/a;
.source "SourceFile"


# instance fields
.field public final b:Lec/j;


# direct methods
.method public constructor <init>(Lec/b;Lec/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmc/a;-><init>(Lec/b;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lmc/p;->b:Lec/j;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Lec/e;)V
    .locals 3

    .line 1
    new-instance v0, Lmc/o;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lmc/o;-><init>(Lec/e;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v0}, Lec/e;->b(Lgc/b;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Ly7/b;

    .line 10
    .line 11
    const/16 v1, 0x12

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {p1, v1, p0, v0, v2}, Ly7/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lmc/p;->b:Lec/j;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 23
    .line 24
    invoke-virtual {v1, p1, v2}, Lec/j;->b(Ly7/b;Ljava/util/concurrent/TimeUnit;)Lgc/b;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {v0, p1}, Lic/a;->d(Ljava/util/concurrent/atomic/AtomicReference;Lgc/b;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method
