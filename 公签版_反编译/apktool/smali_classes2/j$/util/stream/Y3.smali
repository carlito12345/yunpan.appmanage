.class final Lj$/util/stream/Y3;
.super Lj$/util/stream/b0;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/h4;


# direct methods
.method public constructor <init>(Lj$/util/stream/d0;I)V
    .locals 0

    .line 411
    invoke-direct {p0, p1, p2}, Lj$/util/stream/b0;-><init>(Lj$/util/stream/d0;I)V

    return-void
.end method


# virtual methods
.method final R0(Lj$/util/Spliterator;Lj$/util/stream/z0;Ljava/util/function/IntFunction;)Lj$/util/stream/L0;
    .locals 1

    .line 431
    new-instance v0, Lj$/util/stream/j4;

    invoke-direct {v0, p0, p2, p1, p3}, Lj$/util/stream/j4;-><init>(Lj$/util/stream/b;Lj$/util/stream/z0;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)V

    .line 432
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/L0;

    return-object p1
.end method

.method final S0(Lj$/util/stream/b;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 2

    .line 417
    sget-object v0, Lj$/util/stream/f3;->ORDERED:Lj$/util/stream/f3;

    invoke-virtual {p1}, Lj$/util/stream/b;->t0()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/f3;->n(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    new-instance v0, Lj$/util/stream/f0;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lj$/util/stream/f0;-><init>(I)V

    invoke-virtual {p0, p2, p1, v0}, Lj$/util/stream/Y3;->R0(Lj$/util/Spliterator;Lj$/util/stream/z0;Ljava/util/function/IntFunction;)Lj$/util/stream/L0;

    move-result-object p1

    .line 419
    invoke-interface {p1}, Lj$/util/stream/L0;->spliterator()Lj$/util/Spliterator;

    move-result-object p1

    return-object p1

    .line 422
    :cond_0
    new-instance v0, Lj$/util/stream/m4;

    .line 423
    invoke-virtual {p1, p2}, Lj$/util/stream/b;->J0(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p1

    check-cast p1, Lj$/util/I;

    const/4 p2, 0x0

    invoke-direct {v0, p1, p2}, Lj$/util/stream/m4;-><init>(Lj$/util/I;I)V

    return-object v0
.end method

.method final U0(ILj$/util/stream/q2;)Lj$/util/stream/q2;
    .locals 1

    .line 469
    new-instance p1, Lj$/util/stream/X3;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/X3;-><init>(Lj$/util/stream/Y3;Lj$/util/stream/q2;Z)V

    return-object p1
.end method

.method public final k(Lj$/util/stream/D0;Z)Lj$/util/stream/i4;
    .locals 1

    .line 469
    new-instance v0, Lj$/util/stream/X3;

    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/X3;-><init>(Lj$/util/stream/Y3;Lj$/util/stream/q2;Z)V

    return-object v0
.end method
