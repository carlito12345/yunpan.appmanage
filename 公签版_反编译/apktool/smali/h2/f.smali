.class public final Lh2/f;
.super Lh2/l;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(ILr1/r0;ILh2/i;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lh2/l;-><init>(ILr1/r0;I)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p4, Lh2/i;->C:Z

    .line 5
    .line 6
    invoke-static {p5, p1}, Lta/q;->f(IZ)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput p1, p0, Lh2/f;->e:I

    .line 11
    .line 12
    iget-object p1, p0, Lh2/l;->d:Lr1/p;

    .line 13
    .line 14
    invoke-virtual {p1}, Lr1/p;->b()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iput p1, p0, Lh2/f;->f:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lh2/f;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public final bridge synthetic b(Lh2/l;)Z
    .locals 0

    .line 1
    check-cast p1, Lh2/f;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lh2/f;

    .line 2
    .line 3
    iget p1, p1, Lh2/f;->f:I

    .line 4
    .line 5
    iget v0, p0, Lh2/f;->f:I

    .line 6
    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    if-ge v0, p1, :cond_1

    .line 12
    .line 13
    const/4 p1, -0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 p1, 0x1

    .line 16
    :goto_0
    return p1
.end method
