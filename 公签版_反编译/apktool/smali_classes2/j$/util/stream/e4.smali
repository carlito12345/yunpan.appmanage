.class final Lj$/util/stream/e4;
.super Lj$/util/stream/z;
.source "SourceFile"


# direct methods
.method constructor <init>(Lj$/util/stream/B;I)V
    .locals 0

    .line 235
    invoke-direct {p0, p1, p2}, Lj$/util/stream/z;-><init>(Lj$/util/stream/B;I)V

    return-void
.end method


# virtual methods
.method final R0(Lj$/util/Spliterator;Lj$/util/stream/z0;Ljava/util/function/IntFunction;)Lj$/util/stream/L0;
    .locals 1

    .line 253
    new-instance v0, Lj$/util/stream/k4;

    invoke-direct {v0, p0, p2, p1, p3}, Lj$/util/stream/k4;-><init>(Lj$/util/stream/b;Lj$/util/stream/z0;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)V

    .line 254
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/L0;

    return-object p1
.end method

.method final S0(Lj$/util/stream/b;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 2

    .line 239
    sget-object v0, Lj$/util/stream/f3;->ORDERED:Lj$/util/stream/f3;

    invoke-virtual {p1}, Lj$/util/stream/b;->t0()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/f3;->n(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    new-instance v0, Lj$/util/stream/f0;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lj$/util/stream/f0;-><init>(I)V

    invoke-virtual {p0, p2, p1, v0}, Lj$/util/stream/e4;->R0(Lj$/util/Spliterator;Lj$/util/stream/z0;Ljava/util/function/IntFunction;)Lj$/util/stream/L0;

    move-result-object p1

    .line 241
    invoke-interface {p1}, Lj$/util/stream/L0;->spliterator()Lj$/util/Spliterator;

    move-result-object p1

    return-object p1

    .line 244
    :cond_0
    new-instance v0, Lj$/util/stream/l4;

    .line 245
    invoke-virtual {p1, p2}, Lj$/util/stream/b;->J0(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p1

    check-cast p1, Lj$/util/F;

    const/4 p2, 0x1

    invoke-direct {v0, p1, p2}, Lj$/util/stream/l4;-><init>(Lj$/util/F;I)V

    return-object v0
.end method

.method final U0(ILj$/util/stream/q2;)Lj$/util/stream/q2;
    .locals 0

    .line 259
    new-instance p1, Lj$/util/stream/d4;

    invoke-direct {p1, p0, p2}, Lj$/util/stream/d4;-><init>(Lj$/util/stream/e4;Lj$/util/stream/q2;)V

    return-object p1
.end method
