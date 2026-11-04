.class abstract Lj$/util/stream/h2;
.super Lj$/util/stream/i2;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 683
    const-class v0, Lj$/util/stream/i2;

    return-void
.end method

.method constructor <init>(Lj$/util/stream/b;I)V
    .locals 0

    .line 696
    invoke-direct {p0, p1, p2}, Lj$/util/stream/i2;-><init>(Lj$/util/stream/b;I)V

    return-void
.end method


# virtual methods
.method final T0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final unordered()Lj$/util/stream/BaseStream;
    .locals 2

    .line 151
    invoke-virtual {p0}, Lj$/util/stream/b;->P0()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 153
    :cond_0
    new-instance v0, Lj$/util/stream/e2;

    sget v1, Lj$/util/stream/f3;->r:I

    invoke-direct {v0, p0, v1}, Lj$/util/stream/e2;-><init>(Lj$/util/stream/i2;I)V

    :goto_0
    return-object v0
.end method
