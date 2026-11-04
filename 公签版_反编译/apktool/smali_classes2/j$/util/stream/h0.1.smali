.class final Lj$/util/stream/h0;
.super Lj$/util/stream/l2;
.source "SourceFile"


# direct methods
.method constructor <init>(Lj$/util/stream/q2;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lj$/util/stream/l2;-><init>(Lj$/util/stream/q2;)V

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 1

    .line 206
    iget-object v0, p0, Lj$/util/stream/l2;->a:Lj$/util/stream/q2;

    long-to-double p1, p1

    invoke-interface {v0, p1, p2}, Lj$/util/stream/q2;->accept(D)V

    return-void
.end method
