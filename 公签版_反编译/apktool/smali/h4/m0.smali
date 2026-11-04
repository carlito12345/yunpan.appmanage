.class public final Lh4/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:Z

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ly1/a;Ly1/a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lh4/m0;->e:Ljava/lang/Object;

    .line 3
    iput p3, p0, Lh4/m0;->a:I

    .line 4
    iput-object p2, p0, Lh4/m0;->f:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lh4/m0;->b:I

    .line 6
    iput-boolean p1, p0, Lh4/m0;->c:Z

    .line 7
    iput-boolean p1, p0, Lh4/m0;->d:Z

    return-void
.end method

.method public static b(Ly1/a;)V
    .locals 3

    .line 1
    iget v0, p0, Ly1/a;->h:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v1, :cond_0

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
    invoke-static {v0}, La9/o;->t(Z)V

    .line 13
    .line 14
    .line 15
    iput v2, p0, Ly1/a;->h:I

    .line 16
    .line 17
    invoke-virtual {p0}, Ly1/a;->t()V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public static h(Ly1/a;)Z
    .locals 0

    .line 1
    iget p0, p0, Ly1/a;->h:I

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public static l(Ly1/a;J)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ly1/a;->n:Z

    .line 3
    .line 4
    instance-of v0, p0, Lg2/f;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p0, Lg2/f;

    .line 9
    .line 10
    iget-boolean v0, p0, Ly1/a;->n:Z

    .line 11
    .line 12
    invoke-static {v0}, La9/o;->t(Z)V

    .line 13
    .line 14
    .line 15
    iput-wide p1, p0, Lg2/f;->N:J

    .line 16
    .line 17
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ly1/a;Ly1/h;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lh4/m0;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ly1/a;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, p1, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lh4/m0;->f:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Ly1/a;

    .line 12
    .line 13
    if-ne v0, p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    :goto_1
    invoke-static {v0}, La9/o;->t(Z)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lh4/m0;->h(Ly1/a;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    iget-object v0, p2, Ly1/h;->c:Ly1/a;

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    if-ne p1, v0, :cond_3

    .line 33
    .line 34
    iput-object v3, p2, Ly1/h;->d:Ly1/k0;

    .line 35
    .line 36
    iput-object v3, p2, Ly1/h;->c:Ly1/a;

    .line 37
    .line 38
    iput-boolean v2, p2, Ly1/h;->e:Z

    .line 39
    .line 40
    :cond_3
    invoke-static {p1}, Lh4/m0;->b(Ly1/a;)V

    .line 41
    .line 42
    .line 43
    iget p2, p1, Ly1/a;->h:I

    .line 44
    .line 45
    if-ne p2, v2, :cond_4

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_4
    const/4 v2, 0x0

    .line 49
    :goto_2
    invoke-static {v2}, La9/o;->t(Z)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p1, Ly1/a;->c:Lua/i8;

    .line 53
    .line 54
    invoke-virtual {p2}, Lua/i8;->n()V

    .line 55
    .line 56
    .line 57
    iput v1, p1, Ly1/a;->h:I

    .line 58
    .line 59
    iput-object v3, p1, Ly1/a;->i:Lf2/c1;

    .line 60
    .line 61
    iput-object v3, p1, Ly1/a;->j:[Lr1/p;

    .line 62
    .line 63
    iput-boolean v1, p1, Ly1/a;->n:Z

    .line 64
    .line 65
    invoke-virtual {p1}, Ly1/a;->n()V

    .line 66
    .line 67
    .line 68
    iput-object v3, p1, Ly1/a;->r:Lf2/c0;

    .line 69
    .line 70
    return-void
.end method

.method public c()I
    .locals 2

    .line 1
    iget-object v0, p0, Lh4/m0;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ly1/a;

    .line 4
    .line 5
    invoke-static {v0}, Lh4/m0;->h(Ly1/a;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lh4/m0;->f:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Ly1/a;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-static {v1}, Lh4/m0;->h(Ly1/a;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_0
    add-int/2addr v0, v1

    .line 25
    return v0
.end method

.method public d(Ly1/l0;)Ly1/a;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    iget-object p1, p1, Ly1/l0;->c:[Lf2/c1;

    .line 5
    .line 6
    iget v1, p0, Lh4/m0;->a:I

    .line 7
    .line 8
    aget-object p1, p1, v1

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, p0, Lh4/m0;->e:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Ly1/a;

    .line 16
    .line 17
    iget-object v2, v1, Ly1/a;->i:Lf2/c1;

    .line 18
    .line 19
    if-ne v2, p1, :cond_1

    .line 20
    .line 21
    return-object v1

    .line 22
    :cond_1
    iget-object v1, p0, Lh4/m0;->f:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Ly1/a;

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    iget-object v2, v1, Ly1/a;->i:Lf2/c1;

    .line 29
    .line 30
    if-ne v2, p1, :cond_2

    .line 31
    .line 32
    return-object v1

    .line 33
    :cond_2
    :goto_0
    return-object v0
.end method

.method public e(Ly1/l0;Ly1/a;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p1, Ly1/l0;->c:[Lf2/c1;

    .line 6
    .line 7
    iget v2, p0, Lh4/m0;->a:I

    .line 8
    .line 9
    aget-object v1, v1, v2

    .line 10
    .line 11
    iget-object v3, p2, Ly1/a;->i:Lf2/c1;

    .line 12
    .line 13
    if-eqz v3, :cond_3

    .line 14
    .line 15
    if-ne v3, v1, :cond_1

    .line 16
    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    invoke-virtual {p2}, Ly1/a;->k()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_3

    .line 24
    .line 25
    iget-object v1, p1, Ly1/l0;->m:Ly1/l0;

    .line 26
    .line 27
    iget-object v3, p1, Ly1/l0;->g:Ly1/m0;

    .line 28
    .line 29
    iget-boolean v3, v3, Ly1/m0;->h:Z

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iget-boolean v3, v1, Ly1/l0;->e:Z

    .line 36
    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    instance-of v3, p2, Lg2/f;

    .line 40
    .line 41
    if-nez v3, :cond_3

    .line 42
    .line 43
    instance-of v3, p2, Le2/b;

    .line 44
    .line 45
    if-nez v3, :cond_3

    .line 46
    .line 47
    iget-wide v3, p2, Ly1/a;->m:J

    .line 48
    .line 49
    invoke-virtual {v1}, Ly1/l0;->e()J

    .line 50
    .line 51
    .line 52
    move-result-wide v5

    .line 53
    cmp-long v1, v3, v5

    .line 54
    .line 55
    if-ltz v1, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object p1, p1, Ly1/l0;->m:Ly1/l0;

    .line 59
    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    iget-object p1, p1, Ly1/l0;->c:[Lf2/c1;

    .line 63
    .line 64
    aget-object p1, p1, v2

    .line 65
    .line 66
    iget-object p2, p2, Ly1/a;->i:Lf2/c1;

    .line 67
    .line 68
    if-ne p1, p2, :cond_2

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const/4 v0, 0x0

    .line 72
    :cond_3
    :goto_0
    return v0
.end method

.method public f()Z
    .locals 2

    .line 1
    iget v0, p0, Lh4/m0;->b:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eq v0, v1, :cond_2

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x3

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method public g()Z
    .locals 2

    .line 1
    iget v0, p0, Lh4/m0;->b:I

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_2

    .line 7
    .line 8
    const/4 v1, 0x4

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lh4/m0;->f:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Ly1/a;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget v0, v0, Ly1/a;->h:I

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    :goto_0
    iget-object v0, p0, Lh4/m0;->e:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Ly1/a;

    .line 30
    .line 31
    invoke-static {v0}, Lh4/m0;->h(Ly1/a;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    :goto_1
    return v0
.end method

.method public i(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-boolean p1, p0, Lh4/m0;->c:Z

    .line 6
    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    iget-object p1, p0, Lh4/m0;->e:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Ly1/a;

    .line 12
    .line 13
    iget v2, p1, Ly1/a;->h:I

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    invoke-static {v0}, La9/o;->t(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p1, Ly1/a;->c:Lua/i8;

    .line 23
    .line 24
    invoke-virtual {v0}, Lua/i8;->n()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ly1/a;->r()V

    .line 28
    .line 29
    .line 30
    iput-boolean v1, p0, Lh4/m0;->c:Z

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_1
    iget-boolean p1, p0, Lh4/m0;->d:Z

    .line 34
    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    iget-object p1, p0, Lh4/m0;->f:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p1, Ly1/a;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    iget v2, p1, Ly1/a;->h:I

    .line 45
    .line 46
    if-nez v2, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    const/4 v0, 0x0

    .line 50
    :goto_1
    invoke-static {v0}, La9/o;->t(Z)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p1, Ly1/a;->c:Lua/i8;

    .line 54
    .line 55
    invoke-virtual {v0}, Lua/i8;->n()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ly1/a;->r()V

    .line 59
    .line 60
    .line 61
    iput-boolean v1, p0, Lh4/m0;->d:Z

    .line 62
    .line 63
    :cond_3
    :goto_2
    return-void
.end method

.method public j(Ly1/a;Ly1/l0;Lh2/r;Ly1/h;)I
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p2

    .line 4
    move-object v3, p3

    .line 5
    const/4 v4, 0x1

    .line 6
    if-eqz v1, :cond_b

    .line 7
    .line 8
    iget v5, v1, Ly1/a;->h:I

    .line 9
    .line 10
    if-eqz v5, :cond_b

    .line 11
    .line 12
    iget-object v5, v0, Lh4/m0;->e:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v5, Ly1/a;

    .line 15
    .line 16
    if-ne v1, v5, :cond_0

    .line 17
    .line 18
    iget v6, v0, Lh4/m0;->b:I

    .line 19
    .line 20
    const/4 v7, 0x2

    .line 21
    if-eq v6, v7, :cond_b

    .line 22
    .line 23
    const/4 v7, 0x4

    .line 24
    if-ne v6, v7, :cond_0

    .line 25
    .line 26
    goto/16 :goto_3

    .line 27
    .line 28
    :cond_0
    iget-object v6, v0, Lh4/m0;->f:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v6, Ly1/a;

    .line 31
    .line 32
    const/4 v9, 0x3

    .line 33
    if-ne v1, v6, :cond_1

    .line 34
    .line 35
    iget v6, v0, Lh4/m0;->b:I

    .line 36
    .line 37
    if-ne v6, v9, :cond_1

    .line 38
    .line 39
    goto/16 :goto_3

    .line 40
    .line 41
    :cond_1
    iget-object v6, v1, Ly1/a;->i:Lf2/c1;

    .line 42
    .line 43
    iget-object v7, v2, Ly1/l0;->c:[Lf2/c1;

    .line 44
    .line 45
    iget v8, v0, Lh4/m0;->a:I

    .line 46
    .line 47
    aget-object v7, v7, v8

    .line 48
    .line 49
    const/4 v10, 0x0

    .line 50
    if-eq v6, v7, :cond_2

    .line 51
    .line 52
    const/4 v6, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const/4 v6, 0x0

    .line 55
    :goto_0
    invoke-virtual {p3, v8}, Lh2/r;->b(I)Z

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-eqz v7, :cond_3

    .line 60
    .line 61
    if-nez v6, :cond_3

    .line 62
    .line 63
    return v4

    .line 64
    :cond_3
    iget-boolean v6, v1, Ly1/a;->n:Z

    .line 65
    .line 66
    if-nez v6, :cond_6

    .line 67
    .line 68
    iget-object v3, v3, Lh2/r;->c:[Lh2/p;

    .line 69
    .line 70
    aget-object v3, v3, v8

    .line 71
    .line 72
    if-eqz v3, :cond_4

    .line 73
    .line 74
    invoke-interface {v3}, Lh2/p;->length()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    goto :goto_1

    .line 79
    :cond_4
    const/4 v4, 0x0

    .line 80
    :goto_1
    new-array v5, v4, [Lr1/p;

    .line 81
    .line 82
    :goto_2
    if-ge v10, v4, :cond_5

    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-interface {v3, v10}, Lh2/p;->c(I)Lr1/p;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    aput-object v6, v5, v10

    .line 92
    .line 93
    add-int/lit8 v10, v10, 0x1

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_5
    iget-object v3, v2, Ly1/l0;->c:[Lf2/c1;

    .line 97
    .line 98
    aget-object v3, v3, v8

    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2}, Ly1/l0;->e()J

    .line 104
    .line 105
    .line 106
    move-result-wide v6

    .line 107
    iget-wide v10, v2, Ly1/l0;->p:J

    .line 108
    .line 109
    iget-object v2, v2, Ly1/l0;->g:Ly1/m0;

    .line 110
    .line 111
    iget-object v8, v2, Ly1/m0;->a:Lf2/c0;

    .line 112
    .line 113
    move-object v1, p1

    .line 114
    move-object v2, v5

    .line 115
    move-wide v4, v6

    .line 116
    move-wide v6, v10

    .line 117
    invoke-virtual/range {v1 .. v8}, Ly1/a;->y([Lr1/p;Lf2/c1;JJLf2/c0;)V

    .line 118
    .line 119
    .line 120
    return v9

    .line 121
    :cond_6
    invoke-virtual {p1}, Ly1/a;->l()Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-eqz v2, :cond_a

    .line 126
    .line 127
    move-object/from16 v2, p4

    .line 128
    .line 129
    invoke-virtual {p0, p1, v2}, Lh4/m0;->a(Ly1/a;Ly1/h;)V

    .line 130
    .line 131
    .line 132
    if-eqz v7, :cond_7

    .line 133
    .line 134
    invoke-virtual {p0}, Lh4/m0;->f()Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_9

    .line 139
    .line 140
    :cond_7
    if-ne v1, v5, :cond_8

    .line 141
    .line 142
    const/4 v10, 0x1

    .line 143
    :cond_8
    invoke-virtual {p0, v10}, Lh4/m0;->i(Z)V

    .line 144
    .line 145
    .line 146
    :cond_9
    return v4

    .line 147
    :cond_a
    return v10

    .line 148
    :cond_b
    :goto_3
    return v4
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lh4/m0;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ly1/a;

    .line 4
    .line 5
    invoke-static {v0}, Lh4/m0;->h(Ly1/a;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, v0}, Lh4/m0;->i(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lh4/m0;->f:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Ly1/a;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget v0, v0, Ly1/a;->h:I

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Lh4/m0;->i(Z)V

    .line 28
    .line 29
    .line 30
    :cond_2
    :goto_0
    return-void
.end method

.method public m()V
    .locals 7

    .line 1
    iget-object v0, p0, Lh4/m0;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ly1/a;

    .line 4
    .line 5
    iget v1, v0, Ly1/a;->h:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x1

    .line 10
    if-ne v1, v4, :cond_1

    .line 11
    .line 12
    iget v5, p0, Lh4/m0;->b:I

    .line 13
    .line 14
    const/4 v6, 0x4

    .line 15
    if-eq v5, v6, :cond_1

    .line 16
    .line 17
    if-ne v1, v4, :cond_0

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    :cond_0
    invoke-static {v3}, La9/o;->t(Z)V

    .line 21
    .line 22
    .line 23
    iput v2, v0, Ly1/a;->h:I

    .line 24
    .line 25
    invoke-virtual {v0}, Ly1/a;->s()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, p0, Lh4/m0;->f:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Ly1/a;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    iget v1, v0, Ly1/a;->h:I

    .line 36
    .line 37
    if-ne v1, v4, :cond_3

    .line 38
    .line 39
    iget v5, p0, Lh4/m0;->b:I

    .line 40
    .line 41
    const/4 v6, 0x3

    .line 42
    if-eq v5, v6, :cond_3

    .line 43
    .line 44
    if-ne v1, v4, :cond_2

    .line 45
    .line 46
    const/4 v3, 0x1

    .line 47
    :cond_2
    invoke-static {v3}, La9/o;->t(Z)V

    .line 48
    .line 49
    .line 50
    iput v2, v0, Ly1/a;->h:I

    .line 51
    .line 52
    invoke-virtual {v0}, Ly1/a;->s()V

    .line 53
    .line 54
    .line 55
    :cond_3
    :goto_0
    return-void
.end method
