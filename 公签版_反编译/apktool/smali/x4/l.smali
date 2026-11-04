.class public abstract Lx4/l;
.super Lx4/n;
.source "SourceFile"


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lx4/n;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lx4/l;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Lx4/a;)I
    .locals 1

    .line 1
    check-cast p1, Lx4/l;

    .line 2
    .line 3
    iget p1, p1, Lx4/l;->a:I

    .line 4
    .line 5
    iget v0, p0, Lx4/l;->a:I

    .line 6
    .line 7
    if-ge v0, p1, :cond_0

    .line 8
    .line 9
    const/4 p1, -0x1

    .line 10
    return p1

    .line 11
    :cond_0
    if-le v0, p1, :cond_1

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_1
    const/4 p1, 0x0

    .line 16
    return p1
.end method

.method public final e()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    check-cast p1, Lx4/l;

    .line 14
    .line 15
    iget p1, p1, Lx4/l;->a:I

    .line 16
    .line 17
    iget v0, p0, Lx4/l;->a:I

    .line 18
    .line 19
    if-ne v0, p1, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    return p1
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lx4/l;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public final g()J
    .locals 2

    .line 1
    iget v0, p0, Lx4/l;->a:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    return-wide v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lx4/l;->a:I

    .line 2
    .line 3
    return v0
.end method
