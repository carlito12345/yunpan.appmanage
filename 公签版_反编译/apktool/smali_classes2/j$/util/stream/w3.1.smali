.class final Lj$/util/stream/w3;
.super Lj$/util/stream/y3;
.source "SourceFile"

# interfaces
.implements Lj$/util/I;


# direct methods
.method constructor <init>(Lj$/util/I;JJ)V
    .locals 0

    .line 823
    invoke-direct/range {p0 .. p5}, Lj$/util/stream/y3;-><init>(Lj$/util/O;JJ)V

    return-void
.end method

.method constructor <init>(Lj$/util/I;JJJJ)V
    .locals 0

    .line 828
    invoke-direct/range {p0 .. p9}, Lj$/util/stream/y3;-><init>(Lj$/util/O;JJJJ)V

    return-void
.end method


# virtual methods
.method protected final a(Lj$/util/Spliterator;JJJJ)Lj$/util/Spliterator;
    .locals 11

    .line 820
    move-object v1, p1

    check-cast v1, Lj$/util/I;

    .line 835
    new-instance v10, Lj$/util/stream/w3;

    move-object v0, v10

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lj$/util/stream/w3;-><init>(Lj$/util/I;JJJJ)V

    return-object v10
.end method

.method protected final b()Ljava/lang/Object;
    .locals 2

    .line 840
    new-instance v0, Lj$/util/stream/G0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lj$/util/stream/G0;-><init>(I)V

    return-object v0
.end method

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
