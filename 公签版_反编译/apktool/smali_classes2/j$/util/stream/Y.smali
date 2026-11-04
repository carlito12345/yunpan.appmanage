.class final Lj$/util/stream/Y;
.super Lj$/util/stream/l0;
.source "SourceFile"


# instance fields
.field public final synthetic s:I

.field final synthetic t:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/b;ILjava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lj$/util/stream/Y;->s:I

    iput-object p3, p0, Lj$/util/stream/Y;->t:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lj$/util/stream/l0;-><init>(Lj$/util/stream/b;I)V

    return-void
.end method

.method public constructor <init>(Lj$/util/stream/m0;Ljava/util/function/LongConsumer;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lj$/util/stream/Y;->s:I

    .line 362
    iput-object p2, p0, Lj$/util/stream/Y;->t:Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lj$/util/stream/l0;-><init>(Lj$/util/stream/b;I)V

    return-void
.end method


# virtual methods
.method final U0(ILj$/util/stream/q2;)Lj$/util/stream/q2;
    .locals 1

    iget p1, p0, Lj$/util/stream/Y;->s:I

    packed-switch p1, :pswitch_data_0

    .line 226
    new-instance p1, Lj$/util/stream/m;

    const/4 v0, 0x5

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/m;-><init>(Lj$/util/stream/b;Lj$/util/stream/q2;I)V

    return-object p1

    .line 394
    :pswitch_0
    new-instance p1, Lj$/util/stream/d2;

    invoke-direct {p1, p0, p2}, Lj$/util/stream/d2;-><init>(Lj$/util/stream/Y;Lj$/util/stream/q2;)V

    return-object p1

    .line 365
    :pswitch_1
    new-instance p1, Lj$/util/stream/g0;

    const/4 v0, 0x5

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/g0;-><init>(Lj$/util/stream/b;Lj$/util/stream/q2;I)V

    return-object p1

    .line 282
    :pswitch_2
    new-instance p1, Lj$/util/stream/i0;

    invoke-direct {p1, p0, p2}, Lj$/util/stream/i0;-><init>(Lj$/util/stream/Y;Lj$/util/stream/q2;)V

    return-object p1

    .line 266
    :pswitch_3
    new-instance p1, Lj$/util/stream/V;

    const/4 v0, 0x3

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/V;-><init>(Lj$/util/stream/b;Lj$/util/stream/q2;I)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
