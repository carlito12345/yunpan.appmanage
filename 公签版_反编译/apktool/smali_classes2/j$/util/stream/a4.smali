.class final Lj$/util/stream/a4;
.super Lj$/util/stream/k0;
.source "SourceFile"


# direct methods
.method constructor <init>(Lj$/util/stream/m0;I)V
    .locals 0

    .line 178
    invoke-direct {p0, p1, p2}, Lj$/util/stream/k0;-><init>(Lj$/util/stream/m0;I)V

    return-void
.end method


# virtual methods
.method final R0(Lj$/util/Spliterator;Lj$/util/stream/z0;Ljava/util/function/IntFunction;)Lj$/util/stream/L0;
    .locals 1

    .line 196
    new-instance v0, Lj$/util/stream/k4;

    invoke-direct {v0, p0, p2, p1, p3}, Lj$/util/stream/k4;-><init>(Lj$/util/stream/b;Lj$/util/stream/z0;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)V

    .line 197
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/L0;

    return-object p1
.end method

.method final S0(Lj$/util/stream/b;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 2

    .line 182
    sget-object v0, Lj$/util/stream/f3;->ORDERED:Lj$/util/stream/f3;

    invoke-virtual {p1}, Lj$/util/stream/b;->t0()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/f3;->n(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Lj$/util/stream/f0;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lj$/util/stream/f0;-><init>(I)V

    invoke-virtual {p0, p2, p1, v0}, Lj$/util/stream/a4;->R0(Lj$/util/Spliterator;Lj$/util/stream/z0;Ljava/util/function/IntFunction;)Lj$/util/stream/L0;

    move-result-object p1

    .line 184
    invoke-interface {p1}, Lj$/util/stream/L0;->spliterator()Lj$/util/Spliterator;

    move-result-object p1

    return-object p1

    .line 187
    :cond_0
    new-instance v0, Lj$/util/stream/n4;

    .line 188
    invoke-virtual {p1, p2}, Lj$/util/stream/b;->J0(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p1

    check-cast p1, Lj$/util/L;

    const/4 p2, 0x1

    invoke-direct {v0, p1, p2}, Lj$/util/stream/n4;-><init>(Lj$/util/L;I)V

    return-object v0
.end method

.method final U0(ILj$/util/stream/q2;)Lj$/util/stream/q2;
    .locals 0

    .line 202
    new-instance p1, Lj$/util/stream/Z3;

    invoke-direct {p1, p0, p2}, Lj$/util/stream/Z3;-><init>(Lj$/util/stream/a4;Lj$/util/stream/q2;)V

    return-object p1
.end method
