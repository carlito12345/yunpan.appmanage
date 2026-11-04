.class final Lj$/util/stream/u0;
.super Lj$/util/stream/v0;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/n2;


# direct methods
.method constructor <init>(Lj$/util/stream/w0;)V
    .locals 0

    .line 174
    invoke-direct {p0, p1}, Lj$/util/stream/v0;-><init>(Lj$/util/stream/w0;)V

    return-void
.end method


# virtual methods
.method public final accept(D)V
    .locals 1

    .line 179
    iget-boolean v0, p0, Lj$/util/stream/v0;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v0, p1, p2}, Ljava/util/function/DoublePredicate;->test(D)Z

    throw v0
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/z0;->D(Lj$/util/stream/n2;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->a(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)Lj$/util/function/b;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic q(Ljava/lang/Double;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/z0;->C(Lj$/util/stream/n2;Ljava/lang/Double;)V

    return-void
.end method
