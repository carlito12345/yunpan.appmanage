.class final Lj$/util/stream/S3;
.super Lj$/util/stream/g2;
.source "SourceFile"


# instance fields
.field final synthetic s:Ljava/util/function/Predicate;


# direct methods
.method constructor <init>(Lj$/util/stream/i2;ILjava/util/function/Predicate;)V
    .locals 0

    .line 64
    iput-object p3, p0, Lj$/util/stream/S3;->s:Ljava/util/function/Predicate;

    invoke-direct {p0, p1, p2}, Lj$/util/stream/g2;-><init>(Lj$/util/stream/i2;I)V

    return-void
.end method


# virtual methods
.method final R0(Lj$/util/Spliterator;Lj$/util/stream/z0;Ljava/util/function/IntFunction;)Lj$/util/stream/L0;
    .locals 1

    .line 82
    new-instance v0, Lj$/util/stream/k4;

    invoke-direct {v0, p0, p2, p1, p3}, Lj$/util/stream/k4;-><init>(Lj$/util/stream/b;Lj$/util/stream/z0;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)V

    .line 83
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/L0;

    return-object p1
.end method

.method final S0(Lj$/util/stream/b;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 2

    .line 68
    sget-object v0, Lj$/util/stream/f3;->ORDERED:Lj$/util/stream/f3;

    invoke-virtual {p1}, Lj$/util/stream/b;->t0()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/f3;->n(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Lj$/util/stream/f0;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lj$/util/stream/f0;-><init>(I)V

    .line 69
    invoke-virtual {p0, p2, p1, v0}, Lj$/util/stream/S3;->R0(Lj$/util/Spliterator;Lj$/util/stream/z0;Ljava/util/function/IntFunction;)Lj$/util/stream/L0;

    move-result-object p1

    .line 70
    invoke-interface {p1}, Lj$/util/stream/L0;->spliterator()Lj$/util/Spliterator;

    move-result-object p1

    return-object p1

    .line 73
    :cond_0
    new-instance v0, Lj$/util/stream/o4;

    .line 74
    invoke-virtual {p1, p2}, Lj$/util/stream/b;->J0(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p1

    iget-object p2, p0, Lj$/util/stream/S3;->s:Ljava/util/function/Predicate;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lj$/util/stream/o4;-><init>(Lj$/util/Spliterator;Ljava/util/function/Predicate;I)V

    return-object v0
.end method

.method final U0(ILj$/util/stream/q2;)Lj$/util/stream/q2;
    .locals 0

    .line 88
    new-instance p1, Lj$/util/stream/l;

    invoke-direct {p1, p0, p2}, Lj$/util/stream/l;-><init>(Lj$/util/stream/S3;Lj$/util/stream/q2;)V

    return-object p1
.end method
