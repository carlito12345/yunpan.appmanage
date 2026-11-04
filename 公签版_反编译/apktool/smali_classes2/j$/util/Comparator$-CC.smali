.class public final synthetic Lj$/util/Comparator$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Ljava/util/Comparator;
    .locals 1

    .line 357
    sget-object v0, Lj$/util/e;->INSTANCE:Lj$/util/e;

    return-object v0
.end method

.method public static comparing(Ljava/util/function/Function;)Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U::",
            "Ljava/lang/Comparable<",
            "-TU;>;>(",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 467
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    new-instance v0, Lj$/util/b;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lj$/util/b;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToIntFunction<",
            "-TT;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 488
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    new-instance v0, Lj$/util/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lj$/util/b;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToLongFunction<",
            "-TT;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 509
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    new-instance v0, Lj$/util/b;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lj$/util/b;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method
