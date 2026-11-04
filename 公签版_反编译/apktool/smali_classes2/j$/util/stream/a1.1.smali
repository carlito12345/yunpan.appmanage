.class final Lj$/util/stream/a1;
.super Lj$/util/stream/T2;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/F0;
.implements Lj$/util/stream/A0;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1771
    invoke-direct {p0}, Lj$/util/stream/T2;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lj$/util/stream/F0;
    .locals 0

    return-object p0
.end method

.method public final a()Lj$/util/stream/L0;
    .locals 0

    return-object p0
.end method

.method public final synthetic accept(I)V
    .locals 0

    invoke-static {}, Lj$/util/stream/z0;->I()V

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

    invoke-static {p0, p1}, Lj$/util/stream/z0;->D(Lj$/util/stream/n2;Ljava/lang/Object;)V

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
    invoke-virtual {p0, p1}, Lj$/util/stream/a1;->b(I)Lj$/util/stream/K0;

    const/4 p1, 0x0

    throw p1
.end method

.method public final d(Ljava/lang/Object;I)V
    .locals 0

    .line 1766
    check-cast p1, [D

    .line 1810
    invoke-super {p0, p1, p2}, Lj$/util/stream/Z2;->d(Ljava/lang/Object;I)V

    return-void
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    .line 1816
    invoke-super {p0}, Lj$/util/stream/Z2;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 0

    .line 1766
    check-cast p1, Ljava/util/function/DoubleConsumer;

    .line 1782
    invoke-super {p0, p1}, Lj$/util/stream/Z2;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic i(JJLjava/util/function/IntFunction;)Lj$/util/stream/L0;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lj$/util/stream/z0;->R(Lj$/util/stream/F0;JJ)Lj$/util/stream/F0;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic j([Ljava/lang/Object;I)V
    .locals 0

    .line 471
    check-cast p1, [Ljava/lang/Double;

    .line 0
    invoke-static {p0, p1, p2}, Lj$/util/stream/z0;->L(Lj$/util/stream/F0;[Ljava/lang/Double;I)V

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

    .line 1790
    invoke-virtual {p0}, Lj$/util/stream/Z2;->clear()V

    .line 1791
    invoke-virtual {p0, p1, p2}, Lj$/util/stream/Z2;->v(J)V

    return-void
.end method

.method public final synthetic p()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic q(Ljava/lang/Double;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/z0;->C(Lj$/util/stream/n2;Ljava/lang/Double;)V

    return-void
.end method

.method public final synthetic r()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final spliterator()Lj$/util/O;
    .locals 1

    .line 1776
    invoke-super {p0}, Lj$/util/stream/T2;->y()Lj$/util/F;

    move-result-object v0

    return-object v0
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 1776
    invoke-super {p0}, Lj$/util/stream/T2;->y()Lj$/util/F;

    move-result-object v0

    return-object v0
.end method
