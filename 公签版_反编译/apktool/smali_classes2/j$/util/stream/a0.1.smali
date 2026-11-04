.class final Lj$/util/stream/a0;
.super Lj$/util/stream/d0;
.source "SourceFile"


# direct methods
.method constructor <init>(Lj$/util/I;I)V
    .locals 0

    .line 575
    invoke-direct {p0, p1, p2}, Lj$/util/stream/d0;-><init>(Lj$/util/I;I)V

    return-void
.end method


# virtual methods
.method final T0()Z
    .locals 1

    .line 580
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method final U0(ILj$/util/stream/q2;)Lj$/util/stream/q2;
    .locals 0

    .line 585
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final forEach(Ljava/util/function/IntConsumer;)V
    .locals 1

    .line 592
    invoke-virtual {p0}, Lj$/util/stream/b;->isParallel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 593
    invoke-virtual {p0}, Lj$/util/stream/b;->W0()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/d0;->Y0(Lj$/util/Spliterator;)Lj$/util/I;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/util/I;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    goto :goto_0

    .line 596
    :cond_0
    invoke-super {p0, p1}, Lj$/util/stream/d0;->forEach(Ljava/util/function/IntConsumer;)V

    :goto_0
    return-void
.end method

.method public final forEachOrdered(Ljava/util/function/IntConsumer;)V
    .locals 1

    .line 602
    invoke-virtual {p0}, Lj$/util/stream/b;->isParallel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 603
    invoke-virtual {p0}, Lj$/util/stream/b;->W0()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/d0;->Y0(Lj$/util/Spliterator;)Lj$/util/I;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/util/I;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    goto :goto_0

    .line 606
    :cond_0
    invoke-super {p0, p1}, Lj$/util/stream/d0;->forEachOrdered(Ljava/util/function/IntConsumer;)V

    :goto_0
    return-void
.end method

.method public final bridge synthetic parallel()Lj$/util/stream/IntStream;
    .locals 1

    .line 550
    invoke-virtual {p0}, Lj$/util/stream/b;->parallel()Lj$/util/stream/BaseStream;

    move-object v0, p0

    check-cast v0, Lj$/util/stream/IntStream;

    return-object v0
.end method

.method public final bridge synthetic sequential()Lj$/util/stream/IntStream;
    .locals 1

    .line 550
    invoke-virtual {p0}, Lj$/util/stream/b;->sequential()Lj$/util/stream/BaseStream;

    move-object v0, p0

    check-cast v0, Lj$/util/stream/IntStream;

    return-object v0
.end method

.method public final bridge synthetic spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 550
    invoke-virtual {p0}, Lj$/util/stream/d0;->spliterator()Lj$/util/I;

    move-result-object v0

    return-object v0
.end method

.method public final unordered()Lj$/util/stream/BaseStream;
    .locals 3

    .line 343
    invoke-virtual {p0}, Lj$/util/stream/b;->P0()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 345
    :cond_0
    new-instance v0, Lj$/util/stream/u;

    sget v1, Lj$/util/stream/f3;->r:I

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lj$/util/stream/u;-><init>(Lj$/util/stream/b;II)V

    :goto_0
    return-object v0
.end method
