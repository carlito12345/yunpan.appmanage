.class final Lj$/util/stream/j0;
.super Lj$/util/stream/m0;
.source "SourceFile"


# direct methods
.method constructor <init>(Lj$/util/L;I)V
    .locals 0

    .line 559
    invoke-direct {p0, p1, p2}, Lj$/util/stream/m0;-><init>(Lj$/util/L;I)V

    return-void
.end method


# virtual methods
.method final T0()Z
    .locals 1

    .line 564
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method final U0(ILj$/util/stream/q2;)Lj$/util/stream/q2;
    .locals 0

    .line 569
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final forEach(Ljava/util/function/LongConsumer;)V
    .locals 1

    .line 576
    invoke-virtual {p0}, Lj$/util/stream/b;->isParallel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 577
    invoke-virtual {p0}, Lj$/util/stream/b;->W0()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/m0;->Y0(Lj$/util/Spliterator;)Lj$/util/L;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/util/L;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    goto :goto_0

    .line 579
    :cond_0
    invoke-super {p0, p1}, Lj$/util/stream/m0;->forEach(Ljava/util/function/LongConsumer;)V

    :goto_0
    return-void
.end method

.method public final forEachOrdered(Ljava/util/function/LongConsumer;)V
    .locals 1

    .line 585
    invoke-virtual {p0}, Lj$/util/stream/b;->isParallel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    invoke-virtual {p0}, Lj$/util/stream/b;->W0()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/m0;->Y0(Lj$/util/Spliterator;)Lj$/util/L;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/util/L;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    goto :goto_0

    .line 588
    :cond_0
    invoke-super {p0, p1}, Lj$/util/stream/m0;->forEachOrdered(Ljava/util/function/LongConsumer;)V

    :goto_0
    return-void
.end method

.method public final bridge synthetic parallel()Lj$/util/stream/LongStream;
    .locals 1

    .line 534
    invoke-virtual {p0}, Lj$/util/stream/b;->parallel()Lj$/util/stream/BaseStream;

    move-object v0, p0

    check-cast v0, Lj$/util/stream/LongStream;

    return-object v0
.end method

.method public final bridge synthetic sequential()Lj$/util/stream/LongStream;
    .locals 1

    .line 534
    invoke-virtual {p0}, Lj$/util/stream/b;->sequential()Lj$/util/stream/BaseStream;

    move-object v0, p0

    check-cast v0, Lj$/util/stream/LongStream;

    return-object v0
.end method

.method public final bridge synthetic spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 534
    invoke-virtual {p0}, Lj$/util/stream/m0;->spliterator()Lj$/util/L;

    move-result-object v0

    return-object v0
.end method

.method public final unordered()Lj$/util/stream/BaseStream;
    .locals 3

    .line 325
    invoke-virtual {p0}, Lj$/util/stream/b;->P0()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 327
    :cond_0
    new-instance v0, Lj$/util/stream/v;

    sget v1, Lj$/util/stream/f3;->r:I

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2}, Lj$/util/stream/v;-><init>(Lj$/util/stream/b;II)V

    :goto_0
    return-object v0
.end method
