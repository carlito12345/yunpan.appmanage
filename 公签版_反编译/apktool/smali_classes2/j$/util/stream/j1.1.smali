.class final Lj$/util/stream/j1;
.super Lj$/util/stream/V2;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/H0;
.implements Lj$/util/stream/B0;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1651
    invoke-direct {p0}, Lj$/util/stream/V2;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lj$/util/stream/H0;
    .locals 0

    return-object p0
.end method

.method public final a()Lj$/util/stream/L0;
    .locals 0

    return-object p0
.end method

.method public final synthetic accept(D)V
    .locals 0

    invoke-static {}, Lj$/util/stream/z0;->B()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic accept(J)V
    .locals 0

    invoke-static {}, Lj$/util/stream/z0;->J()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/z0;->F(Lj$/util/stream/o2;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public final b(I)Lj$/util/stream/K0;
    .locals 0

    .line 253
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic b(I)Lj$/util/stream/L0;
    .locals 0

    .line 227
    invoke-virtual {p0, p1}, Lj$/util/stream/j1;->b(I)Lj$/util/stream/K0;

    const/4 p1, 0x0

    throw p1
.end method

.method public final d(Ljava/lang/Object;I)V
    .locals 0

    .line 1646
    check-cast p1, [I

    .line 1690
    invoke-super {p0, p1, p2}, Lj$/util/stream/Z2;->d(Ljava/lang/Object;I)V

    return-void
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    .line 1696
    invoke-super {p0}, Lj$/util/stream/Z2;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 0

    .line 1646
    check-cast p1, Ljava/util/function/IntConsumer;

    .line 1662
    invoke-super {p0, p1}, Lj$/util/stream/Z2;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic i(JJLjava/util/function/IntFunction;)Lj$/util/stream/L0;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lj$/util/stream/z0;->S(Lj$/util/stream/H0;JJ)Lj$/util/stream/H0;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic j([Ljava/lang/Object;I)V
    .locals 0

    .line 317
    check-cast p1, [Ljava/lang/Integer;

    .line 0
    invoke-static {p0, p1, p2}, Lj$/util/stream/z0;->M(Lj$/util/stream/H0;[Ljava/lang/Integer;I)V

    return-void
.end method

.method public final synthetic l(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/z0;->K(Lj$/util/stream/K0;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final m()V
    .locals 0

    return-void
.end method

.method public final n(J)V
    .locals 0

    .line 1670
    invoke-virtual {p0}, Lj$/util/stream/Z2;->clear()V

    .line 1671
    invoke-virtual {p0, p1, p2}, Lj$/util/stream/Z2;->v(J)V

    return-void
.end method

.method public final synthetic o(Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/z0;->E(Lj$/util/stream/o2;Ljava/lang/Integer;)V

    return-void
.end method

.method public final synthetic p()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic r()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final spliterator()Lj$/util/O;
    .locals 1

    .line 1656
    invoke-super {p0}, Lj$/util/stream/V2;->y()Lj$/util/I;

    move-result-object v0

    return-object v0
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 1656
    invoke-super {p0}, Lj$/util/stream/V2;->y()Lj$/util/I;

    move-result-object v0

    return-object v0
.end method
