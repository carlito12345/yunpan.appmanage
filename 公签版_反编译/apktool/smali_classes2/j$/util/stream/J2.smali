.class final Lj$/util/stream/J2;
.super Lj$/util/stream/b0;
.source "SourceFile"


# direct methods
.method constructor <init>(Lj$/util/stream/d0;)V
    .locals 2

    .line 171
    sget v0, Lj$/util/stream/f3;->q:I

    sget v1, Lj$/util/stream/f3;->o:I

    or-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lj$/util/stream/b0;-><init>(Lj$/util/stream/d0;I)V

    return-void
.end method


# virtual methods
.method public final R0(Lj$/util/Spliterator;Lj$/util/stream/z0;Ljava/util/function/IntFunction;)Lj$/util/stream/L0;
    .locals 2

    .line 191
    sget-object v0, Lj$/util/stream/f3;->SORTED:Lj$/util/stream/f3;

    invoke-virtual {p2}, Lj$/util/stream/z0;->t0()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/f3;->n(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 192
    invoke-virtual {p2, p1, v0, p3}, Lj$/util/stream/z0;->l0(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/L0;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    .line 195
    invoke-virtual {p2, p1, v0, p3}, Lj$/util/stream/z0;->l0(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/L0;

    move-result-object p1

    check-cast p1, Lj$/util/stream/H0;

    .line 197
    invoke-interface {p1}, Lj$/util/stream/K0;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 200
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 201
    new-instance p2, Lj$/util/stream/h1;

    invoke-direct {p2, p1}, Lj$/util/stream/h1;-><init>([I)V

    return-object p2
.end method

.method public final U0(ILj$/util/stream/q2;)Lj$/util/stream/q2;
    .locals 1

    .line 177
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lj$/util/stream/f3;->SORTED:Lj$/util/stream/f3;

    invoke-virtual {v0, p1}, Lj$/util/stream/f3;->n(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 181
    :cond_0
    sget-object v0, Lj$/util/stream/f3;->SIZED:Lj$/util/stream/f3;

    invoke-virtual {v0, p1}, Lj$/util/stream/f3;->n(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 182
    new-instance p1, Lj$/util/stream/O2;

    invoke-direct {p1, p2}, Lj$/util/stream/O2;-><init>(Lj$/util/stream/q2;)V

    return-object p1

    .line 184
    :cond_1
    new-instance p1, Lj$/util/stream/G2;

    invoke-direct {p1, p2}, Lj$/util/stream/G2;-><init>(Lj$/util/stream/q2;)V

    return-object p1
.end method
