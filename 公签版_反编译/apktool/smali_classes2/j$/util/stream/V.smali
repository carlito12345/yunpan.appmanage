.class final Lj$/util/stream/V;
.super Lj$/util/stream/k2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field final synthetic c:Lj$/util/stream/b;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/b;Lj$/util/stream/q2;I)V
    .locals 0

    iput p3, p0, Lj$/util/stream/V;->b:I

    iput-object p1, p0, Lj$/util/stream/V;->c:Lj$/util/stream/b;

    invoke-direct {p0, p2}, Lj$/util/stream/k2;-><init>(Lj$/util/stream/q2;)V

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 2

    iget v0, p0, Lj$/util/stream/V;->b:I

    packed-switch v0, :pswitch_data_0

    .line 368
    iget-object v0, p0, Lj$/util/stream/V;->c:Lj$/util/stream/b;

    check-cast v0, Lj$/util/stream/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-interface {v0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    throw v0

    .line 286
    :pswitch_0
    iget-object v0, p0, Lj$/util/stream/V;->c:Lj$/util/stream/b;

    check-cast v0, Lj$/util/stream/t;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-interface {v0, p1}, Ljava/util/function/IntToDoubleFunction;->applyAsDouble(I)D

    throw v0

    .line 269
    :pswitch_1
    iget-object v0, p0, Lj$/util/stream/V;->c:Lj$/util/stream/b;

    check-cast v0, Lj$/util/stream/Y;

    iget-object v0, v0, Lj$/util/stream/Y;->t:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/IntToLongFunction;

    invoke-interface {v0, p1}, Ljava/util/function/IntToLongFunction;->applyAsLong(I)J

    move-result-wide v0

    iget-object p1, p0, Lj$/util/stream/k2;->a:Lj$/util/stream/q2;

    invoke-interface {p1, v0, v1}, Lj$/util/stream/q2;->accept(J)V

    return-void

    .line 246
    :pswitch_2
    iget-object v0, p0, Lj$/util/stream/V;->c:Lj$/util/stream/b;

    check-cast v0, Lj$/util/stream/W;

    iget-object v0, v0, Lj$/util/stream/W;->t:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/IntUnaryOperator;

    invoke-interface {v0, p1}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result p1

    iget-object v0, p0, Lj$/util/stream/k2;->a:Lj$/util/stream/q2;

    invoke-interface {v0, p1}, Lj$/util/stream/q2;->accept(I)V

    return-void

    .line 386
    :pswitch_3
    iget-object v0, p0, Lj$/util/stream/V;->c:Lj$/util/stream/b;

    check-cast v0, Lj$/util/stream/W;

    iget-object v0, v0, Lj$/util/stream/W;->t:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/IntConsumer;

    invoke-interface {v0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 387
    iget-object v0, p0, Lj$/util/stream/k2;->a:Lj$/util/stream/q2;

    invoke-interface {v0, p1}, Lj$/util/stream/q2;->accept(I)V

    return-void

    .line 180
    :pswitch_4
    iget-object v0, p0, Lj$/util/stream/V;->c:Lj$/util/stream/b;

    check-cast v0, Lj$/util/stream/s;

    iget-object v0, v0, Lj$/util/stream/s;->t:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/IntFunction;

    invoke-interface {v0, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lj$/util/stream/k2;->a:Lj$/util/stream/q2;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public n(J)V
    .locals 2

    iget v0, p0, Lj$/util/stream/V;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lj$/util/stream/k2;->n(J)V

    return-void

    .line 363
    :pswitch_0
    iget-object p1, p0, Lj$/util/stream/k2;->a:Lj$/util/stream/q2;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Lj$/util/stream/q2;->n(J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
