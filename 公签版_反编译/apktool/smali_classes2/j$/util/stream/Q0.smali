.class final Lj$/util/stream/Q0;
.super Lj$/util/stream/S0;
.source "SourceFile"


# instance fields
.field public final synthetic k:I


# direct methods
.method public constructor <init>(ILj$/util/Spliterator;Lj$/util/stream/z0;)V
    .locals 2

    iput p1, p0, Lj$/util/stream/Q0;->k:I

    packed-switch p1, :pswitch_data_0

    .line 2231
    new-instance p1, Lj$/util/stream/j;

    const/16 v0, 0xb

    invoke-direct {p1, v0}, Lj$/util/stream/j;-><init>(I)V

    new-instance v0, Lj$/util/stream/j;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lj$/util/stream/j;-><init>(I)V

    invoke-direct {p0, p3, p2, p1, v0}, Lj$/util/stream/S0;-><init>(Lj$/util/stream/z0;Lj$/util/Spliterator;Ljava/util/function/LongFunction;Ljava/util/function/BinaryOperator;)V

    return-void

    .line 2223
    :pswitch_0
    new-instance p1, Lj$/util/stream/j;

    const/16 v0, 0xf

    invoke-direct {p1, v0}, Lj$/util/stream/j;-><init>(I)V

    new-instance v0, Lj$/util/stream/j;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lj$/util/stream/j;-><init>(I)V

    invoke-direct {p0, p3, p2, p1, v0}, Lj$/util/stream/S0;-><init>(Lj$/util/stream/z0;Lj$/util/Spliterator;Ljava/util/function/LongFunction;Ljava/util/function/BinaryOperator;)V

    return-void

    .line 2215
    :pswitch_1
    new-instance p1, Lj$/util/stream/j;

    const/16 v0, 0xd

    invoke-direct {p1, v0}, Lj$/util/stream/j;-><init>(I)V

    new-instance v0, Lj$/util/stream/j;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lj$/util/stream/j;-><init>(I)V

    invoke-direct {p0, p3, p2, p1, v0}, Lj$/util/stream/S0;-><init>(Lj$/util/stream/z0;Lj$/util/Spliterator;Ljava/util/function/LongFunction;Ljava/util/function/BinaryOperator;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lj$/util/Spliterator;Lj$/util/stream/z0;Ljava/util/function/IntFunction;)V
    .locals 2

    const/4 v0, 0x3

    iput v0, p0, Lj$/util/stream/Q0;->k:I

    .line 2207
    new-instance v0, Lj$/util/stream/R0;

    invoke-direct {v0, p3}, Lj$/util/stream/R0;-><init>(Ljava/util/function/IntFunction;)V

    new-instance p3, Lj$/util/stream/j;

    const/16 v1, 0x11

    invoke-direct {p3, v1}, Lj$/util/stream/j;-><init>(I)V

    invoke-direct {p0, p2, p1, v0, p3}, Lj$/util/stream/S0;-><init>(Lj$/util/stream/z0;Lj$/util/Spliterator;Ljava/util/function/LongFunction;Ljava/util/function/BinaryOperator;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lj$/util/stream/Q0;->k:I

    packed-switch v0, :pswitch_data_0

    .line 2201
    invoke-virtual {p0}, Lj$/util/stream/S0;->h()Lj$/util/stream/L0;

    move-result-object v0

    return-object v0

    .line 2219
    :pswitch_0
    invoke-virtual {p0}, Lj$/util/stream/S0;->h()Lj$/util/stream/L0;

    move-result-object v0

    return-object v0

    .line 2211
    :pswitch_1
    invoke-virtual {p0}, Lj$/util/stream/S0;->h()Lj$/util/stream/L0;

    move-result-object v0

    return-object v0

    .line 2227
    :pswitch_2
    invoke-virtual {p0}, Lj$/util/stream/S0;->h()Lj$/util/stream/L0;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final e(Lj$/util/Spliterator;)Lj$/util/stream/e;
    .locals 1

    iget v0, p0, Lj$/util/stream/Q0;->k:I

    packed-switch v0, :pswitch_data_0

    .line 2184
    new-instance v0, Lj$/util/stream/S0;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/S0;-><init>(Lj$/util/stream/S0;Lj$/util/Spliterator;)V

    return-object v0

    .line 2184
    :pswitch_0
    new-instance v0, Lj$/util/stream/S0;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/S0;-><init>(Lj$/util/stream/S0;Lj$/util/Spliterator;)V

    return-object v0

    .line 2184
    :pswitch_1
    new-instance v0, Lj$/util/stream/S0;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/S0;-><init>(Lj$/util/stream/S0;Lj$/util/Spliterator;)V

    return-object v0

    .line 2184
    :pswitch_2
    new-instance v0, Lj$/util/stream/S0;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/S0;-><init>(Lj$/util/stream/S0;Lj$/util/Spliterator;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
