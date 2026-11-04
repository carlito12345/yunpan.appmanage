.class public Landroidx/recyclerview/widget/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/p;
.implements Ll2/q;


# instance fields
.field public final synthetic a:I

.field public b:J

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/h;->a:I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 11
    iput-wide v0, p0, Landroidx/recyclerview/widget/h;->b:J

    return-void
.end method

.method public synthetic constructor <init>(IJLjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/recyclerview/widget/h;->a:I

    iput-wide p2, p0, Landroidx/recyclerview/widget/h;->b:J

    iput-object p4, p0, Landroidx/recyclerview/widget/h;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lj5/d;J)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/h;->a:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide p2, p0, Landroidx/recyclerview/widget/h;->b:J

    .line 9
    iput-object p1, p0, Landroidx/recyclerview/widget/h;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ll2/l;J)V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Landroidx/recyclerview/widget/h;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/recyclerview/widget/h;->c:Ljava/lang/Object;

    .line 4
    iget-wide v0, p1, Ll2/l;->d:J

    cmp-long p1, v0, p2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    invoke-static {p1}, La9/o;->k(Z)V

    .line 6
    iput-wide p2, p0, Landroidx/recyclerview/widget/h;->b:J

    return-void
.end method


# virtual methods
.method public a(II[B)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/h;->c:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v1, Ll2/l;

    .line 5
    .line 6
    invoke-virtual {v1, p3, p1, p2, v0}, Ll2/l;->c([BIIZ)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public b([BIIZ)Z
    .locals 1

    .line 1
    const/4 p2, 0x0

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/h;->c:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Ll2/l;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2, p3, p4}, Ll2/l;->b([BIIZ)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public c([BIIZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ll2/l;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Ll2/l;->c([BIIZ)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public d()J
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ll2/l;

    .line 4
    .line 5
    invoke-virtual {v0}, Ll2/l;->d()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-wide v2, p0, Landroidx/recyclerview/widget/h;->b:J

    .line 10
    .line 11
    sub-long/2addr v0, v2

    .line 12
    return-wide v0
.end method

.method public e(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/h;->c:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v1, Ll2/l;

    .line 5
    .line 6
    invoke-virtual {v1, p1, v0}, Ll2/l;->k(IZ)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public getLength()J
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ll2/l;

    .line 4
    .line 5
    iget-wide v0, v0, Ll2/l;->c:J

    .line 6
    .line 7
    iget-wide v2, p0, Landroidx/recyclerview/widget/h;->b:J

    .line 8
    .line 9
    sub-long/2addr v0, v2

    .line 10
    return-wide v0
.end method

.method public getPosition()J
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ll2/l;

    .line 4
    .line 5
    iget-wide v0, v0, Ll2/l;->d:J

    .line 6
    .line 7
    iget-wide v2, p0, Landroidx/recyclerview/widget/h;->b:J

    .line 8
    .line 9
    sub-long/2addr v0, v2

    .line 10
    return-wide v0
.end method

.method public h()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/h;->c:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v1, Ll2/l;

    .line 5
    .line 6
    iput v0, v1, Ll2/l;->f:I

    .line 7
    .line 8
    return-void
.end method

.method public i(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/h;->c:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v1, Ll2/l;

    .line 5
    .line 6
    invoke-virtual {v1, p1, v0}, Ll2/l;->o(IZ)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public k(I)V
    .locals 6

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/recyclerview/widget/h;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroidx/recyclerview/widget/h;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    sub-int/2addr p1, v0

    .line 12
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/h;->k(I)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-wide v0, p0, Landroidx/recyclerview/widget/h;->b:J

    .line 17
    .line 18
    const-wide/16 v2, 0x1

    .line 19
    .line 20
    shl-long/2addr v2, p1

    .line 21
    const-wide/16 v4, -0x1

    .line 22
    .line 23
    xor-long/2addr v2, v4

    .line 24
    and-long/2addr v0, v2

    .line 25
    iput-wide v0, p0, Landroidx/recyclerview/widget/h;->b:J

    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method public l(I)I
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/recyclerview/widget/h;

    .line 4
    .line 5
    const/16 v1, 0x40

    .line 6
    .line 7
    const-wide/16 v2, 0x1

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    if-lt p1, v1, :cond_0

    .line 12
    .line 13
    iget-wide v0, p0, Landroidx/recyclerview/widget/h;->b:J

    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_0
    iget-wide v0, p0, Landroidx/recyclerview/widget/h;->b:J

    .line 21
    .line 22
    shl-long v4, v2, p1

    .line 23
    .line 24
    sub-long/2addr v4, v2

    .line 25
    and-long/2addr v0, v4

    .line 26
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1

    .line 31
    :cond_1
    if-ge p1, v1, :cond_2

    .line 32
    .line 33
    iget-wide v0, p0, Landroidx/recyclerview/widget/h;->b:J

    .line 34
    .line 35
    shl-long v4, v2, p1

    .line 36
    .line 37
    sub-long/2addr v4, v2

    .line 38
    and-long/2addr v0, v4

    .line 39
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    return p1

    .line 44
    :cond_2
    sub-int/2addr p1, v1

    .line 45
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/h;->l(I)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    iget-wide v0, p0, Landroidx/recyclerview/widget/h;->b:J

    .line 50
    .line 51
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    add-int/2addr v0, p1

    .line 56
    return v0
.end method

.method public m()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/recyclerview/widget/h;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/recyclerview/widget/h;

    .line 8
    .line 9
    invoke-direct {v0}, Landroidx/recyclerview/widget/h;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroidx/recyclerview/widget/h;->c:Ljava/lang/Object;

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public n(I)Z
    .locals 4

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/h;->m()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/recyclerview/widget/h;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Landroidx/recyclerview/widget/h;

    .line 11
    .line 12
    sub-int/2addr p1, v0

    .line 13
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/h;->n(I)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_0
    iget-wide v0, p0, Landroidx/recyclerview/widget/h;->b:J

    .line 19
    .line 20
    const-wide/16 v2, 0x1

    .line 21
    .line 22
    shl-long/2addr v2, p1

    .line 23
    and-long/2addr v0, v2

    .line 24
    const-wide/16 v2, 0x0

    .line 25
    .line 26
    cmp-long p1, v0, v2

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    :goto_0
    return p1
.end method

.method public o(IZ)V
    .locals 12

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/h;->m()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/recyclerview/widget/h;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Landroidx/recyclerview/widget/h;

    .line 11
    .line 12
    sub-int/2addr p1, v0

    .line 13
    invoke-virtual {v1, p1, p2}, Landroidx/recyclerview/widget/h;->o(IZ)V

    .line 14
    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_0
    iget-wide v0, p0, Landroidx/recyclerview/widget/h;->b:J

    .line 18
    .line 19
    const-wide/high16 v2, -0x8000000000000000L

    .line 20
    .line 21
    and-long/2addr v2, v0

    .line 22
    const-wide/16 v4, 0x0

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v7, 0x1

    .line 26
    cmp-long v8, v2, v4

    .line 27
    .line 28
    if-eqz v8, :cond_1

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v2, 0x0

    .line 33
    :goto_0
    const-wide/16 v3, 0x1

    .line 34
    .line 35
    shl-long v8, v3, p1

    .line 36
    .line 37
    sub-long/2addr v8, v3

    .line 38
    and-long v3, v0, v8

    .line 39
    .line 40
    const-wide/16 v10, -0x1

    .line 41
    .line 42
    xor-long/2addr v8, v10

    .line 43
    and-long/2addr v0, v8

    .line 44
    shl-long/2addr v0, v7

    .line 45
    or-long/2addr v0, v3

    .line 46
    iput-wide v0, p0, Landroidx/recyclerview/widget/h;->b:J

    .line 47
    .line 48
    if-eqz p2, :cond_2

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/h;->t(I)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/h;->k(I)V

    .line 55
    .line 56
    .line 57
    :goto_1
    if-nez v2, :cond_3

    .line 58
    .line 59
    iget-object p1, p0, Landroidx/recyclerview/widget/h;->c:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p1, Landroidx/recyclerview/widget/h;

    .line 62
    .line 63
    if-eqz p1, :cond_4

    .line 64
    .line 65
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/h;->m()V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Landroidx/recyclerview/widget/h;->c:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p1, Landroidx/recyclerview/widget/h;

    .line 71
    .line 72
    invoke-virtual {p1, v6, v2}, Landroidx/recyclerview/widget/h;->o(IZ)V

    .line 73
    .line 74
    .line 75
    :cond_4
    :goto_2
    return-void
.end method

.method public p(I)Z
    .locals 13

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/h;->m()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/recyclerview/widget/h;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Landroidx/recyclerview/widget/h;

    .line 11
    .line 12
    sub-int/2addr p1, v0

    .line 13
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/h;->p(I)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_0
    const-wide/16 v0, 0x1

    .line 19
    .line 20
    shl-long v2, v0, p1

    .line 21
    .line 22
    iget-wide v4, p0, Landroidx/recyclerview/widget/h;->b:J

    .line 23
    .line 24
    and-long v6, v4, v2

    .line 25
    .line 26
    const-wide/16 v8, 0x0

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    const/4 v10, 0x0

    .line 30
    cmp-long v11, v6, v8

    .line 31
    .line 32
    if-eqz v11, :cond_1

    .line 33
    .line 34
    const/4 v6, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v6, 0x0

    .line 37
    :goto_0
    const-wide/16 v7, -0x1

    .line 38
    .line 39
    xor-long v11, v2, v7

    .line 40
    .line 41
    and-long/2addr v4, v11

    .line 42
    iput-wide v4, p0, Landroidx/recyclerview/widget/h;->b:J

    .line 43
    .line 44
    sub-long/2addr v2, v0

    .line 45
    and-long v0, v4, v2

    .line 46
    .line 47
    xor-long/2addr v2, v7

    .line 48
    and-long/2addr v2, v4

    .line 49
    invoke-static {v2, v3, p1}, Ljava/lang/Long;->rotateRight(JI)J

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    or-long/2addr v0, v2

    .line 54
    iput-wide v0, p0, Landroidx/recyclerview/widget/h;->b:J

    .line 55
    .line 56
    iget-object p1, p0, Landroidx/recyclerview/widget/h;->c:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p1, Landroidx/recyclerview/widget/h;

    .line 59
    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    invoke-virtual {p1, v10}, Landroidx/recyclerview/widget/h;->n(I)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    const/16 p1, 0x3f

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/h;->t(I)V

    .line 71
    .line 72
    .line 73
    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/h;->c:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p1, Landroidx/recyclerview/widget/h;

    .line 76
    .line 77
    invoke-virtual {p1, v10}, Landroidx/recyclerview/widget/h;->p(I)Z

    .line 78
    .line 79
    .line 80
    :cond_3
    return v6
.end method

.method public q()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lf2/u0;

    .line 4
    .line 5
    invoke-virtual {v0}, Lf2/u0;->q()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public r()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Landroidx/recyclerview/widget/h;->b:J

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/h;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Landroidx/recyclerview/widget/h;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/h;->r()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public read([BII)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ll2/l;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Ll2/l;->read([BII)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public readFully([BII)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/h;->c:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v1, Ll2/l;

    .line 5
    .line 6
    invoke-virtual {v1, p1, p2, p3, v0}, Ll2/l;->b([BIIZ)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public s(Ll2/c0;)V
    .locals 1

    .line 1
    new-instance v0, Ll2/h0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p1}, Ll2/h0;-><init>(Landroidx/recyclerview/widget/h;Ll2/c0;Ll2/c0;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/h;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lf2/u0;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lf2/u0;->s(Ll2/c0;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public t(I)V
    .locals 4

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/h;->m()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/recyclerview/widget/h;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Landroidx/recyclerview/widget/h;

    .line 11
    .line 12
    sub-int/2addr p1, v0

    .line 13
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/h;->t(I)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-wide v0, p0, Landroidx/recyclerview/widget/h;->b:J

    .line 18
    .line 19
    const-wide/16 v2, 0x1

    .line 20
    .line 21
    shl-long/2addr v2, p1

    .line 22
    or-long/2addr v0, v2

    .line 23
    iput-wide v0, p0, Landroidx/recyclerview/widget/h;->b:J

    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/h;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    iget-object v0, p0, Landroidx/recyclerview/widget/h;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Landroidx/recyclerview/widget/h;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-wide v0, p0, Landroidx/recyclerview/widget/h;->b:J

    .line 18
    .line 19
    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Landroidx/recyclerview/widget/h;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Landroidx/recyclerview/widget/h;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/recyclerview/widget/h;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, "xx"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-wide v1, p0, Landroidx/recyclerview/widget/h;->b:J

    .line 46
    .line 47
    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public z(II)Ll2/j0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lf2/u0;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lf2/u0;->z(II)Ll2/j0;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
