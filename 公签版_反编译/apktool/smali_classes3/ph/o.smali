.class public final Lph/o;
.super Lph/l;
.source "SourceFile"


# instance fields
.field public final j:Lrh/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Loh/a;->d:[Ljava/lang/String;

    .line 2
    .line 3
    sget-object v1, Loh/f;->a:[Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, ", "

    .line 10
    .line 11
    invoke-static {v1, v0}, Loh/f;->j(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lrh/v;->R(Ljava/lang/String;)Lrh/p;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Lqh/f0;Lph/c;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lph/l;-><init>(Lqh/f0;Ljava/lang/String;Lph/c;)V

    .line 3
    .line 4
    .line 5
    new-instance p1, Lrh/e;

    .line 6
    .line 7
    invoke-direct {p1}, Lrh/e;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lph/o;->j:Lrh/e;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final E()Lph/l;
    .locals 1

    .line 1
    invoke-super {p0}, Lph/l;->E()Lph/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lph/o;

    .line 6
    .line 7
    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-super {p0}, Lph/l;->E()Lph/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lph/o;

    .line 6
    .line 7
    return-object v0
.end method

.method public final f()Lph/q;
    .locals 1

    .line 1
    invoke-super {p0}, Lph/l;->E()Lph/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lph/o;

    .line 6
    .line 7
    return-object v0
.end method

.method public final x(Lph/q;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lph/q;->x(Lph/q;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lph/o;->j:Lrh/e;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lrh/e;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method
