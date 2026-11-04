.class abstract Lj$/util/stream/d0;
.super Lj$/util/stream/b;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/IntStream;


# direct methods
.method constructor <init>(Lj$/util/I;I)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, p2, v0}, Lj$/util/stream/b;-><init>(Lj$/util/Spliterator;IZ)V

    return-void
.end method

.method constructor <init>(Lj$/util/stream/b;I)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2}, Lj$/util/stream/b;-><init>(Lj$/util/stream/b;I)V

    return-void
.end method

.method static bridge synthetic Y0(Lj$/util/Spliterator;)Lj$/util/I;
    .locals 0

    invoke-static {p0}, Lj$/util/stream/d0;->Z0(Lj$/util/Spliterator;)Lj$/util/I;

    move-result-object p0

    return-object p0
.end method

.method private static Z0(Lj$/util/Spliterator;)Lj$/util/I;
    .locals 1

    .line 118
    instance-of v0, p0, Lj$/util/I;

    if-eqz v0, :cond_0

    .line 119
    check-cast p0, Lj$/util/I;

    return-object p0

    .line 122
    :cond_0
    sget-boolean p0, Lj$/util/stream/R3;->a:Z

    if-eqz p0, :cond_1

    .line 123
    const-class p0, Lj$/util/stream/b;

    const-string v0, "using IntStream.adapt(Spliterator<Integer> s)"

    invoke-static {p0, v0}, Lj$/util/stream/R3;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    .line 125
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "IntStream.adapt(Spliterator<Integer> s)"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method final D0(JLjava/util/function/IntFunction;)Lj$/util/stream/D0;
    .locals 0

    .line 170
    invoke-static {p1, p2}, Lj$/util/stream/z0;->u0(J)Lj$/util/stream/B0;

    move-result-object p1

    return-object p1
.end method

.method final M0(Lj$/util/stream/b;Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/L0;
    .locals 0

    .line 142
    invoke-static {p1, p2, p3}, Lj$/util/stream/z0;->e0(Lj$/util/stream/z0;Lj$/util/Spliterator;Z)Lj$/util/stream/H0;

    move-result-object p1

    return-object p1
.end method

.method final N0(Lj$/util/Spliterator;Lj$/util/stream/q2;)Z
    .locals 3

    .line 160
    invoke-static {p1}, Lj$/util/stream/d0;->Z0(Lj$/util/Spliterator;)Lj$/util/I;

    move-result-object p1

    .line 99
    instance-of v0, p2, Ljava/util/function/IntConsumer;

    if-eqz v0, :cond_0

    .line 100
    move-object v0, p2

    check-cast v0, Ljava/util/function/IntConsumer;

    goto :goto_0

    .line 103
    :cond_0
    sget-boolean v0, Lj$/util/stream/R3;->a:Z

    if-nez v0, :cond_3

    .line 106
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/U;

    invoke-direct {v0, p2}, Lj$/util/stream/U;-><init>(Lj$/util/stream/q2;)V

    .line 163
    :cond_1
    :goto_0
    invoke-interface {p2}, Lj$/util/stream/q2;->p()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1, v0}, Lj$/util/I;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    return v1

    .line 104
    :cond_3
    const-class p1, Lj$/util/stream/b;

    const-string p2, "using IntStream.adapt(Sink<Integer> s)"

    invoke-static {p1, p2}, Lj$/util/stream/R3;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method final O0()Lj$/util/stream/g3;
    .locals 1

    .line 134
    sget-object v0, Lj$/util/stream/g3;->INT_VALUE:Lj$/util/stream/g3;

    return-object v0
.end method

.method final X0(Lj$/util/stream/b;Ljava/util/function/Supplier;Z)Lj$/util/Spliterator;
    .locals 1

    .line 149
    new-instance v0, Lj$/util/stream/s3;

    invoke-direct {v0, p1, p2, p3}, Lj$/util/stream/s3;-><init>(Lj$/util/stream/b;Ljava/util/function/Supplier;Z)V

    return-object v0
.end method

.method public final a()Lj$/util/stream/IntStream;
    .locals 2

    .line 415
    sget v0, Lj$/util/stream/q4;->a:I

    const/4 v0, 0x0

    .line 120
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v0, Lj$/util/stream/W3;

    sget v1, Lj$/util/stream/q4;->a:I

    invoke-direct {v0, p0, v1}, Lj$/util/stream/W3;-><init>(Lj$/util/stream/d0;I)V

    return-object v0
.end method

.method public final asDoubleStream()Lj$/util/stream/E;
    .locals 1

    .line 218
    new-instance v0, Lj$/util/stream/t;

    invoke-direct {v0, p0}, Lj$/util/stream/t;-><init>(Lj$/util/stream/d0;)V

    return-object v0
.end method

.method public final asLongStream()Lj$/util/stream/LongStream;
    .locals 1

    .line 203
    new-instance v0, Lj$/util/stream/v;

    invoke-direct {v0, p0}, Lj$/util/stream/v;-><init>(Lj$/util/stream/d0;)V

    return-object v0
.end method

.method public final average()Lj$/util/l;
    .locals 6

    .line 469
    new-instance v0, Lj$/util/stream/p;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lj$/util/stream/p;-><init>(I)V

    new-instance v1, Lj$/util/stream/p;

    const/16 v2, 0x15

    invoke-direct {v1, v2}, Lj$/util/stream/p;-><init>(I)V

    new-instance v2, Lj$/util/stream/p;

    const/16 v3, 0x16

    invoke-direct {v2, v3}, Lj$/util/stream/p;-><init>(I)V

    invoke-virtual {p0, v0, v1, v2}, Lj$/util/stream/d0;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjIntConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    const/4 v1, 0x0

    .line 478
    aget-wide v1, v0, v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    const/4 v3, 0x1

    .line 479
    aget-wide v3, v0, v3

    long-to-double v3, v3

    long-to-double v0, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v0

    invoke-static {v3, v4}, Lj$/util/l;->d(D)Lj$/util/l;

    move-result-object v0

    goto :goto_0

    .line 480
    :cond_0
    invoke-static {}, Lj$/util/l;->a()Lj$/util/l;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final b()Lj$/util/stream/IntStream;
    .locals 3

    const/4 v0, 0x0

    .line 355
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    new-instance v0, Lj$/util/stream/u;

    sget v1, Lj$/util/stream/f3;->t:I

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lj$/util/stream/u;-><init>(Lj$/util/stream/b;II)V

    return-object v0
.end method

.method public final boxed()Lj$/util/stream/Stream;
    .locals 4

    .line 233
    new-instance v0, Lj$/util/stream/p;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lj$/util/stream/p;-><init>(I)V

    .line 174
    new-instance v1, Lj$/util/stream/s;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v0, v3}, Lj$/util/stream/s;-><init>(Lj$/util/stream/b;ILjava/lang/Object;I)V

    return-object v1
.end method

.method public final c()Lj$/util/stream/IntStream;
    .locals 2

    .line 420
    sget v0, Lj$/util/stream/q4;->a:I

    const/4 v0, 0x0

    .line 408
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    new-instance v0, Lj$/util/stream/Y3;

    sget v1, Lj$/util/stream/q4;->b:I

    invoke-direct {v0, p0, v1}, Lj$/util/stream/Y3;-><init>(Lj$/util/stream/d0;I)V

    return-object v0
.end method

.method public final collect(Ljava/util/function/Supplier;Ljava/util/function/ObjIntConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .locals 6

    .line 503
    invoke-static {p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    new-instance v2, Lj$/util/stream/q;

    const/4 v0, 0x1

    invoke-direct {v2, p3, v0}, Lj$/util/stream/q;-><init>(Ljava/util/function/BiConsumer;I)V

    .line 383
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    new-instance p3, Lj$/util/stream/F1;

    sget-object v1, Lj$/util/stream/g3;->INT_VALUE:Lj$/util/stream/g3;

    const/4 v5, 0x4

    move-object v0, p3

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/F1;-><init>(Lj$/util/stream/g3;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 508
    invoke-virtual {p0, p3}, Lj$/util/stream/b;->K0(Lj$/util/stream/O3;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final count()J
    .locals 3

    .line 422
    new-instance v0, Lj$/util/stream/H1;

    sget-object v1, Lj$/util/stream/g3;->INT_VALUE:Lj$/util/stream/g3;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lj$/util/stream/H1;-><init>(Lj$/util/stream/g3;I)V

    .line 464
    invoke-virtual {p0, v0}, Lj$/util/stream/b;->K0(Lj$/util/stream/O3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final distinct()Lj$/util/stream/IntStream;
    .locals 3

    .line 432
    invoke-virtual {p0}, Lj$/util/stream/d0;->boxed()Lj$/util/stream/Stream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/i2;

    invoke-virtual {v0}, Lj$/util/stream/i2;->distinct()Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lj$/util/stream/p;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lj$/util/stream/p;-><init>(I)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public final findAny()Lj$/util/m;
    .locals 1

    .line 71
    sget-object v0, Lj$/util/stream/H;->d:Lj$/util/stream/F;

    .line 533
    invoke-virtual {p0, v0}, Lj$/util/stream/b;->K0(Lj$/util/stream/O3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/m;

    return-object v0
.end method

.method public final findFirst()Lj$/util/m;
    .locals 1

    .line 71
    sget-object v0, Lj$/util/stream/H;->c:Lj$/util/stream/F;

    .line 528
    invoke-virtual {p0, v0}, Lj$/util/stream/b;->K0(Lj$/util/stream/O3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/m;

    return-object v0
.end method

.method public forEach(Ljava/util/function/IntConsumer;)V
    .locals 2

    .line 86
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v0, Lj$/util/stream/N;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lj$/util/stream/N;-><init>(Ljava/util/function/IntConsumer;Z)V

    .line 439
    invoke-virtual {p0, v0}, Lj$/util/stream/b;->K0(Lj$/util/stream/O3;)Ljava/lang/Object;

    return-void
.end method

.method public forEachOrdered(Ljava/util/function/IntConsumer;)V
    .locals 2

    .line 86
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v0, Lj$/util/stream/N;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lj$/util/stream/N;-><init>(Ljava/util/function/IntConsumer;Z)V

    .line 444
    invoke-virtual {p0, v0}, Lj$/util/stream/b;->K0(Lj$/util/stream/O3;)Ljava/lang/Object;

    return-void
.end method

.method public final g()Lj$/util/stream/E;
    .locals 3

    const/4 v0, 0x0

    .line 278
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    new-instance v0, Lj$/util/stream/t;

    sget v1, Lj$/util/stream/f3;->p:I

    sget v2, Lj$/util/stream/f3;->n:I

    or-int/2addr v1, v2

    const/4 v2, 0x4

    invoke-direct {v0, p0, v1, v2}, Lj$/util/stream/t;-><init>(Lj$/util/stream/b;II)V

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .line 523
    sget-object v0, Lj$/util/stream/w0;->NONE:Lj$/util/stream/w0;

    invoke-static {v0}, Lj$/util/stream/z0;->A0(Lj$/util/stream/w0;)Lj$/util/stream/x0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/b;->K0(Lj$/util/stream/O3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final iterator()Lj$/util/v;
    .locals 1

    .line 191
    invoke-virtual {p0}, Lj$/util/stream/d0;->spliterator()Lj$/util/I;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterators;->g(Lj$/util/I;)Lj$/util/v;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 550
    invoke-virtual {p0}, Lj$/util/stream/d0;->iterator()Lj$/util/v;

    move-result-object v0

    return-object v0
.end method

.method public final limit(J)Lj$/util/stream/IntStream;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 400
    invoke-static {p0, v0, v1, p1, p2}, Lj$/util/stream/z0;->z0(Lj$/util/stream/d0;JJ)Lj$/util/stream/IntStream;

    move-result-object p1

    return-object p1

    .line 399
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final map(Ljava/util/function/IntUnaryOperator;)Lj$/util/stream/IntStream;
    .locals 3

    .line 238
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    new-instance v0, Lj$/util/stream/W;

    sget v1, Lj$/util/stream/f3;->p:I

    sget v2, Lj$/util/stream/f3;->n:I

    or-int/2addr v1, v2

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, p1, v2}, Lj$/util/stream/W;-><init>(Lj$/util/stream/b;ILjava/lang/Object;I)V

    return-object v0
.end method

.method public final mapToLong(Ljava/util/function/IntToLongFunction;)Lj$/util/stream/LongStream;
    .locals 3

    .line 261
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    new-instance v0, Lj$/util/stream/Y;

    sget v1, Lj$/util/stream/f3;->p:I

    sget v2, Lj$/util/stream/f3;->n:I

    or-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lj$/util/stream/Y;-><init>(Lj$/util/stream/b;ILjava/lang/Object;I)V

    return-object v0
.end method

.method public final mapToObj(Ljava/util/function/IntFunction;)Lj$/util/stream/Stream;
    .locals 3

    .line 255
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget v0, Lj$/util/stream/f3;->p:I

    sget v1, Lj$/util/stream/f3;->n:I

    or-int/2addr v0, v1

    .line 174
    new-instance v1, Lj$/util/stream/s;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, p1, v2}, Lj$/util/stream/s;-><init>(Lj$/util/stream/b;ILjava/lang/Object;I)V

    return-object v1
.end method

.method public final max()Lj$/util/m;
    .locals 2

    .line 459
    new-instance v0, Lj$/util/stream/p;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lj$/util/stream/p;-><init>(I)V

    invoke-virtual {p0, v0}, Lj$/util/stream/d0;->reduce(Ljava/util/function/IntBinaryOperator;)Lj$/util/m;

    move-result-object v0

    return-object v0
.end method

.method public final min()Lj$/util/m;
    .locals 2

    .line 454
    new-instance v0, Lj$/util/stream/p;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lj$/util/stream/p;-><init>(I)V

    invoke-virtual {p0, v0}, Lj$/util/stream/d0;->reduce(Ljava/util/function/IntBinaryOperator;)Lj$/util/m;

    move-result-object v0

    return-object v0
.end method

.method public final peek(Ljava/util/function/IntConsumer;)Lj$/util/stream/IntStream;
    .locals 1

    .line 378
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    new-instance v0, Lj$/util/stream/W;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/W;-><init>(Lj$/util/stream/d0;Ljava/util/function/IntConsumer;)V

    return-object v0
.end method

.method public final q(Lj$/util/stream/R0;)Lj$/util/stream/IntStream;
    .locals 3

    .line 295
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    new-instance v0, Lj$/util/stream/W;

    sget v1, Lj$/util/stream/f3;->p:I

    sget v2, Lj$/util/stream/f3;->n:I

    or-int/2addr v1, v2

    sget v2, Lj$/util/stream/f3;->t:I

    or-int/2addr v1, v2

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, p1, v2}, Lj$/util/stream/W;-><init>(Lj$/util/stream/b;ILjava/lang/Object;I)V

    return-object v0
.end method

.method public final reduce(ILjava/util/function/IntBinaryOperator;)I
    .locals 2

    .line 285
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    new-instance v0, Lj$/util/stream/Q1;

    sget-object v1, Lj$/util/stream/g3;->INT_VALUE:Lj$/util/stream/g3;

    invoke-direct {v0, v1, p2, p1}, Lj$/util/stream/Q1;-><init>(Lj$/util/stream/g3;Ljava/util/function/IntBinaryOperator;I)V

    .line 491
    invoke-virtual {p0, v0}, Lj$/util/stream/b;->K0(Lj$/util/stream/O3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final reduce(Ljava/util/function/IntBinaryOperator;)Lj$/util/m;
    .locals 3

    .line 327
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    new-instance v0, Lj$/util/stream/D1;

    sget-object v1, Lj$/util/stream/g3;->INT_VALUE:Lj$/util/stream/g3;

    const/4 v2, 0x3

    invoke-direct {v0, v1, p1, v2}, Lj$/util/stream/D1;-><init>(Lj$/util/stream/g3;Ljava/lang/Object;I)V

    .line 496
    invoke-virtual {p0, v0}, Lj$/util/stream/b;->K0(Lj$/util/stream/O3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/m;

    return-object p1
.end method

.method public final s()Z
    .locals 1

    .line 513
    sget-object v0, Lj$/util/stream/w0;->ANY:Lj$/util/stream/w0;

    invoke-static {v0}, Lj$/util/stream/z0;->A0(Lj$/util/stream/w0;)Lj$/util/stream/x0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/b;->K0(Lj$/util/stream/O3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final skip(J)Lj$/util/stream/IntStream;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    const-wide/16 v0, -0x1

    .line 410
    invoke-static {p0, p1, p2, v0, v1}, Lj$/util/stream/z0;->z0(Lj$/util/stream/d0;JJ)Lj$/util/stream/IntStream;

    move-result-object p1

    return-object p1

    .line 406
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final sorted()Lj$/util/stream/IntStream;
    .locals 1

    .line 73
    new-instance v0, Lj$/util/stream/J2;

    invoke-direct {v0, p0}, Lj$/util/stream/J2;-><init>(Lj$/util/stream/d0;)V

    return-object v0
.end method

.method public final spliterator()Lj$/util/I;
    .locals 1

    .line 196
    invoke-super {p0}, Lj$/util/stream/b;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/d0;->Z0(Lj$/util/Spliterator;)Lj$/util/I;

    move-result-object v0

    return-object v0
.end method

.method public final sum()I
    .locals 2

    .line 449
    new-instance v0, Lj$/util/stream/p;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lj$/util/stream/p;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lj$/util/stream/d0;->reduce(ILjava/util/function/IntBinaryOperator;)I

    move-result v0

    return v0
.end method

.method public final summaryStatistics()Lj$/util/i;
    .locals 4

    .line 485
    new-instance v0, Lj$/util/stream/j;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lj$/util/stream/j;-><init>(I)V

    new-instance v1, Lj$/util/stream/p;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lj$/util/stream/p;-><init>(I)V

    new-instance v2, Lj$/util/stream/p;

    const/16 v3, 0x11

    invoke-direct {v2, v3}, Lj$/util/stream/p;-><init>(I)V

    invoke-virtual {p0, v0, v1, v2}, Lj$/util/stream/d0;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjIntConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/i;

    return-object v0
.end method

.method public final toArray()[I
    .locals 2

    .line 538
    new-instance v0, Lj$/util/stream/p;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lj$/util/stream/p;-><init>(I)V

    invoke-virtual {p0, v0}, Lj$/util/stream/b;->L0(Ljava/util/function/IntFunction;)Lj$/util/stream/L0;

    move-result-object v0

    check-cast v0, Lj$/util/stream/H0;

    invoke-static {v0}, Lj$/util/stream/z0;->q0(Lj$/util/stream/H0;)Lj$/util/stream/H0;

    move-result-object v0

    .line 539
    invoke-interface {v0}, Lj$/util/stream/K0;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public final v()Z
    .locals 1

    .line 518
    sget-object v0, Lj$/util/stream/w0;->ALL:Lj$/util/stream/w0;

    invoke-static {v0}, Lj$/util/stream/z0;->A0(Lj$/util/stream/w0;)Lj$/util/stream/x0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/b;->K0(Lj$/util/stream/O3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
