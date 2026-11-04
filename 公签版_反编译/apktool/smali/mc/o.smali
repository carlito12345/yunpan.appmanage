.class public final Lmc/o;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lec/e;
.implements Lgc/b;


# instance fields
.field public final a:Lec/e;

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Lec/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lmc/o;->a:Lec/e;

    .line 5
    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lmc/o;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final B(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmc/o;->a:Lec/e;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lec/e;->B(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final E(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmc/o;->a:Lec/e;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lec/e;->E(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(Lgc/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmc/o;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lic/a;->d(Ljava/util/concurrent/atomic/AtomicReference;Lgc/b;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmc/o;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-static {v0}, Lic/a;->b(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lic/a;->b(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmc/o;->a:Lec/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lec/e;->onComplete()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
