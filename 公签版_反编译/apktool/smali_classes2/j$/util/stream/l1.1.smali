.class final Lj$/util/stream/l1;
.super Lj$/util/stream/n1;
.source "SourceFile"

# interfaces
.implements Lj$/util/I;


# direct methods
.method constructor <init>(Lj$/util/stream/H0;)V
    .locals 0

    .line 1176
    invoke-direct {p0, p1}, Lj$/util/stream/n1;-><init>(Lj$/util/stream/K0;)V

    return-void
.end method


# virtual methods
.method public final synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/B;->b(Lj$/util/I;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/B;->h(Lj$/util/I;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method
