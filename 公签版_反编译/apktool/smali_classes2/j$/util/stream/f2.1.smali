.class final Lj$/util/stream/f2;
.super Lj$/util/stream/i2;
.source "SourceFile"


# direct methods
.method constructor <init>(Lj$/util/Spliterator;IZ)V
    .locals 0

    .line 640
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/i2;-><init>(Lj$/util/Spliterator;IZ)V

    return-void
.end method


# virtual methods
.method final T0()Z
    .locals 1

    .line 645
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method final U0(ILj$/util/stream/q2;)Lj$/util/stream/q2;
    .locals 0

    .line 650
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 1

    .line 657
    invoke-virtual {p0}, Lj$/util/stream/b;->isParallel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 658
    invoke-virtual {p0}, Lj$/util/stream/b;->W0()Lj$/util/Spliterator;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 661
    :cond_0
    invoke-super {p0, p1}, Lj$/util/stream/i2;->forEach(Ljava/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method public final forEachOrdered(Ljava/util/function/Consumer;)V
    .locals 1

    .line 667
    invoke-virtual {p0}, Lj$/util/stream/b;->isParallel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 668
    invoke-virtual {p0}, Lj$/util/stream/b;->W0()Lj$/util/Spliterator;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 671
    :cond_0
    invoke-super {p0, p1}, Lj$/util/stream/i2;->forEachOrdered(Ljava/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method public final unordered()Lj$/util/stream/BaseStream;
    .locals 2

    .line 151
    invoke-virtual {p0}, Lj$/util/stream/b;->P0()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 153
    :cond_0
    new-instance v0, Lj$/util/stream/e2;

    sget v1, Lj$/util/stream/f3;->r:I

    invoke-direct {v0, p0, v1}, Lj$/util/stream/e2;-><init>(Lj$/util/stream/i2;I)V

    :goto_0
    return-object v0
.end method
