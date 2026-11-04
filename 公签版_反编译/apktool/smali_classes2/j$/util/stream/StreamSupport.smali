.class public final Lj$/util/stream/StreamSupport;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lj$/util/F;)Lj$/util/stream/E;
    .locals 2

    .line 274
    new-instance v0, Lj$/util/stream/y;

    .line 275
    invoke-static {p0}, Lj$/util/stream/f3;->m(Lj$/util/Spliterator;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lj$/util/stream/y;-><init>(Lj$/util/F;I)V

    return-object v0
.end method

.method public static b(Lj$/util/I;)Lj$/util/stream/IntStream;
    .locals 2

    .line 138
    new-instance v0, Lj$/util/stream/a0;

    .line 139
    invoke-static {p0}, Lj$/util/stream/f3;->m(Lj$/util/Spliterator;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lj$/util/stream/a0;-><init>(Lj$/util/I;I)V

    return-object v0
.end method

.method public static c(Lj$/util/L;)Lj$/util/stream/LongStream;
    .locals 2

    .line 206
    new-instance v0, Lj$/util/stream/j0;

    .line 207
    invoke-static {p0}, Lj$/util/stream/f3;->m(Lj$/util/Spliterator;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lj$/util/stream/j0;-><init>(Lj$/util/L;I)V

    return-object v0
.end method

.method public static stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/Spliterator<",
            "TT;>;Z)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 68
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v0, Lj$/util/stream/f2;

    .line 70
    invoke-static {p0}, Lj$/util/stream/f3;->m(Lj$/util/Spliterator;)I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lj$/util/stream/f2;-><init>(Lj$/util/Spliterator;IZ)V

    return-object v0
.end method
