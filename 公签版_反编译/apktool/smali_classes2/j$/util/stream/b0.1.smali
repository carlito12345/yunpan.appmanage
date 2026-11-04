.class abstract Lj$/util/stream/b0;
.super Lj$/util/stream/d0;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 644
    const-class v0, Lj$/util/stream/d0;

    return-void
.end method

.method constructor <init>(Lj$/util/stream/d0;I)V
    .locals 0

    .line 655
    invoke-direct {p0, p1, p2}, Lj$/util/stream/d0;-><init>(Lj$/util/stream/b;I)V

    return-void
.end method


# virtual methods
.method final T0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic parallel()Lj$/util/stream/IntStream;
    .locals 1

    .line 644
    invoke-virtual {p0}, Lj$/util/stream/b;->parallel()Lj$/util/stream/BaseStream;

    move-object v0, p0

    check-cast v0, Lj$/util/stream/IntStream;

    return-object v0
.end method

.method public final bridge synthetic sequential()Lj$/util/stream/IntStream;
    .locals 1

    .line 644
    invoke-virtual {p0}, Lj$/util/stream/b;->sequential()Lj$/util/stream/BaseStream;

    move-object v0, p0

    check-cast v0, Lj$/util/stream/IntStream;

    return-object v0
.end method

.method public final bridge synthetic spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 644
    invoke-virtual {p0}, Lj$/util/stream/d0;->spliterator()Lj$/util/I;

    move-result-object v0

    return-object v0
.end method

.method public final unordered()Lj$/util/stream/BaseStream;
    .locals 3

    .line 343
    invoke-virtual {p0}, Lj$/util/stream/b;->P0()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 345
    :cond_0
    new-instance v0, Lj$/util/stream/u;

    sget v1, Lj$/util/stream/f3;->r:I

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lj$/util/stream/u;-><init>(Lj$/util/stream/b;II)V

    :goto_0
    return-object v0
.end method
