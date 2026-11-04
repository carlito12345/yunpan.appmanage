.class public abstract Ly1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly1/x0;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:I

.field public final c:Lua/i8;

.field public d:Ly1/b1;

.field public e:I

.field public f:Lz1/i;

.field public g:Lu1/z;

.field public h:I

.field public i:Lf2/c1;

.field public j:[Lr1/p;

.field public k:J

.field public l:J

.field public m:J

.field public n:Z

.field public p:Z

.field public q:Lr1/q0;

.field public r:Lf2/c0;

.field public s:Lh2/n;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ly1/a;->a:Ljava/lang/Object;

    .line 10
    .line 11
    iput p1, p0, Ly1/a;->b:I

    .line 12
    .line 13
    new-instance p1, Lua/i8;

    .line 14
    .line 15
    const/16 v0, 0xb

    .line 16
    .line 17
    invoke-direct {p1, v0}, Lua/i8;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Ly1/a;->c:Lua/i8;

    .line 21
    .line 22
    const-wide/high16 v0, -0x8000000000000000L

    .line 23
    .line 24
    iput-wide v0, p0, Ly1/a;->m:J

    .line 25
    .line 26
    sget-object p1, Lr1/q0;->a:Lr1/n0;

    .line 27
    .line 28
    iput-object p1, p0, Ly1/a;->q:Lr1/q0;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public A(FF)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract B(Lr1/p;)I
.end method

.method public C()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public D(J)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public d(ILjava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final f(Ljava/lang/Exception;Lr1/p;ZI)Ly1/k;
    .locals 13

    .line 1
    move-object v1, p0

    .line 2
    move-object v0, p2

    .line 3
    const/4 v2, 0x4

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v3, v1, Ly1/a;->p:Z

    .line 7
    .line 8
    if-nez v3, :cond_0

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    iput-boolean v3, v1, Ly1/a;->p:Z

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    :try_start_0
    invoke-virtual {p0, p2}, Ly1/a;->B(Lr1/p;)I

    .line 15
    .line 16
    .line 17
    move-result v4
    :try_end_0
    .catch Ly1/k; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    and-int/lit8 v4, v4, 0x7

    .line 19
    .line 20
    iput-boolean v3, v1, Ly1/a;->p:Z

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    move-object v2, v0

    .line 25
    iput-boolean v3, v1, Ly1/a;->p:Z

    .line 26
    .line 27
    throw v2

    .line 28
    :catch_0
    iput-boolean v3, v1, Ly1/a;->p:Z

    .line 29
    .line 30
    :cond_0
    const/4 v4, 0x4

    .line 31
    :goto_0
    invoke-virtual {p0}, Ly1/a;->j()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    iget v7, v1, Ly1/a;->e:I

    .line 36
    .line 37
    iget-object v10, v1, Ly1/a;->r:Lf2/c0;

    .line 38
    .line 39
    new-instance v12, Ly1/k;

    .line 40
    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    const/4 v9, 0x4

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move v9, v4

    .line 46
    :goto_1
    const/4 v3, 0x1

    .line 47
    move-object v2, v12

    .line 48
    move-object v4, p1

    .line 49
    move/from16 v5, p4

    .line 50
    .line 51
    move-object v8, p2

    .line 52
    move/from16 v11, p3

    .line 53
    .line 54
    invoke-direct/range {v2 .. v11}, Ly1/k;-><init>(ILjava/lang/Exception;ILjava/lang/String;ILr1/p;ILf2/c0;Z)V

    .line 55
    .line 56
    .line 57
    return-object v12
.end method

.method public g()V
    .locals 0

    .line 1
    return-void
.end method

.method public h(JJ)J
    .locals 0

    .line 1
    iget p1, p0, Ly1/a;->h:I

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    if-ne p1, p2, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Ly1/a;->m()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Ly1/a;->l()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    :cond_0
    const-wide/32 p1, 0xf4240

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const-wide/16 p1, 0x2710

    .line 23
    .line 24
    :goto_0
    return-wide p1
.end method

.method public i()Ly1/k0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public abstract j()Ljava/lang/String;
.end method

.method public final k()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Ly1/a;->m:J

    .line 2
    .line 3
    const-wide/high16 v2, -0x8000000000000000L

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public abstract l()Z
.end method

.method public abstract m()Z
.end method

.method public abstract n()V
.end method

.method public o(ZZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract p(JZZ)V
.end method

.method public q()V
    .locals 0

    .line 1
    return-void
.end method

.method public r()V
    .locals 0

    .line 1
    return-void
.end method

.method public s()V
    .locals 0

    .line 1
    return-void
.end method

.method public t()V
    .locals 0

    .line 1
    return-void
.end method

.method public u([Lr1/p;JJLf2/c0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public v()V
    .locals 0

    .line 1
    return-void
.end method

.method public final w(Lua/i8;Lx1/g;I)I
    .locals 6

    .line 1
    iget-object v0, p0, Ly1/a;->i:Lf2/c1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3}, Lf2/c1;->n(Lua/i8;Lx1/g;I)I

    .line 7
    .line 8
    .line 9
    move-result p3

    .line 10
    const/4 v0, -0x4

    .line 11
    if-ne p3, v0, :cond_2

    .line 12
    .line 13
    const/4 p1, 0x4

    .line 14
    invoke-virtual {p2, p1}, Lab/a;->c(I)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    const-wide/high16 p1, -0x8000000000000000L

    .line 21
    .line 22
    iput-wide p1, p0, Ly1/a;->m:J

    .line 23
    .line 24
    iget-boolean p1, p0, Ly1/a;->n:Z

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, -0x3

    .line 30
    :goto_0
    return v0

    .line 31
    :cond_1
    iget-wide v0, p2, Lx1/g;->g:J

    .line 32
    .line 33
    iget-wide v2, p0, Ly1/a;->k:J

    .line 34
    .line 35
    add-long/2addr v0, v2

    .line 36
    iput-wide v0, p2, Lx1/g;->g:J

    .line 37
    .line 38
    iget-wide p1, p0, Ly1/a;->m:J

    .line 39
    .line 40
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 41
    .line 42
    .line 43
    move-result-wide p1

    .line 44
    iput-wide p1, p0, Ly1/a;->m:J

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const/4 p2, -0x5

    .line 48
    if-ne p3, p2, :cond_3

    .line 49
    .line 50
    iget-object p2, p1, Lua/i8;->c:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p2, Lr1/p;

    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    const-wide v0, 0x7fffffffffffffffL

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    iget-wide v2, p2, Lr1/p;->t:J

    .line 63
    .line 64
    cmp-long v4, v2, v0

    .line 65
    .line 66
    if-eqz v4, :cond_3

    .line 67
    .line 68
    new-instance v0, Lr1/o;

    .line 69
    .line 70
    invoke-direct {v0, p2}, Lr1/o;-><init>(Lr1/p;)V

    .line 71
    .line 72
    .line 73
    iget-wide v4, p0, Ly1/a;->k:J

    .line 74
    .line 75
    add-long/2addr v2, v4

    .line 76
    iput-wide v2, v0, Lr1/o;->s:J

    .line 77
    .line 78
    new-instance p2, Lr1/p;

    .line 79
    .line 80
    invoke-direct {p2, v0}, Lr1/p;-><init>(Lr1/o;)V

    .line 81
    .line 82
    .line 83
    iput-object p2, p1, Lua/i8;->c:Ljava/lang/Object;

    .line 84
    .line 85
    :cond_3
    :goto_1
    return p3
.end method

.method public abstract x(JJ)V
.end method

.method public final y([Lr1/p;Lf2/c1;JJLf2/c0;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Ly1/a;->n:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    invoke-static {v0}, La9/o;->t(Z)V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Ly1/a;->i:Lf2/c1;

    .line 9
    .line 10
    iput-object p7, p0, Ly1/a;->r:Lf2/c0;

    .line 11
    .line 12
    iget-wide v0, p0, Ly1/a;->m:J

    .line 13
    .line 14
    const-wide/high16 v2, -0x8000000000000000L

    .line 15
    .line 16
    cmp-long p2, v0, v2

    .line 17
    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    iput-wide p3, p0, Ly1/a;->m:J

    .line 21
    .line 22
    :cond_0
    iput-object p1, p0, Ly1/a;->j:[Lr1/p;

    .line 23
    .line 24
    iput-wide p5, p0, Ly1/a;->k:J

    .line 25
    .line 26
    move-object v0, p0

    .line 27
    move-object v1, p1

    .line 28
    move-wide v2, p3

    .line 29
    move-wide v4, p5

    .line 30
    move-object v6, p7

    .line 31
    invoke-virtual/range {v0 .. v6}, Ly1/a;->u([Lr1/p;JJLf2/c0;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final z(JZZ)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ly1/a;->n:Z

    .line 3
    .line 4
    iput-wide p1, p0, Ly1/a;->l:J

    .line 5
    .line 6
    iput-wide p1, p0, Ly1/a;->m:J

    .line 7
    .line 8
    if-nez p4, :cond_1

    .line 9
    .line 10
    iget-object p4, p0, Ly1/a;->i:Lf2/c1;

    .line 11
    .line 12
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-wide v1, p0, Ly1/a;->k:J

    .line 16
    .line 17
    sub-long v1, p1, v1

    .line 18
    .line 19
    invoke-interface {p4, v1, v2}, Lf2/c1;->m(J)I

    .line 20
    .line 21
    .line 22
    move-result p4

    .line 23
    if-eqz p4, :cond_0

    .line 24
    .line 25
    const/4 p4, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p4, 0x0

    .line 28
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Ly1/a;->p(JZZ)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
