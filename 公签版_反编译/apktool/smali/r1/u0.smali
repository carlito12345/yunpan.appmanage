.class public Lr1/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Lu7/y0;

.field public j:Lu7/y0;

.field public k:Lu7/y0;

.field public l:Lu7/y0;

.field public m:Lu7/y0;

.field public n:I

.field public o:I

.field public p:Lu7/y0;

.field public q:Lr1/t0;

.field public r:Lu7/y0;

.field public s:Z

.field public t:Lu7/y0;

.field public u:I

.field public v:Ljava/util/HashMap;

.field public w:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Lr1/u0;->a:I

    .line 3
    iput v0, p0, Lr1/u0;->b:I

    .line 4
    iput v0, p0, Lr1/u0;->c:I

    .line 5
    iput v0, p0, Lr1/u0;->d:I

    .line 6
    iput v0, p0, Lr1/u0;->e:I

    .line 7
    iput v0, p0, Lr1/u0;->f:I

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lr1/u0;->g:Z

    .line 9
    iput-boolean v1, p0, Lr1/u0;->h:Z

    .line 10
    sget-object v2, Lu7/g0;->b:Lu7/e0;

    .line 11
    sget-object v2, Lu7/y0;->e:Lu7/y0;

    .line 12
    iput-object v2, p0, Lr1/u0;->i:Lu7/y0;

    .line 13
    iput-object v2, p0, Lr1/u0;->j:Lu7/y0;

    .line 14
    iput-object v2, p0, Lr1/u0;->k:Lu7/y0;

    .line 15
    iput-object v2, p0, Lr1/u0;->l:Lu7/y0;

    .line 16
    iput-object v2, p0, Lr1/u0;->m:Lu7/y0;

    .line 17
    iput v0, p0, Lr1/u0;->n:I

    .line 18
    iput v0, p0, Lr1/u0;->o:I

    .line 19
    iput-object v2, p0, Lr1/u0;->p:Lu7/y0;

    .line 20
    sget-object v0, Lr1/t0;->a:Lr1/t0;

    iput-object v0, p0, Lr1/u0;->q:Lr1/t0;

    .line 21
    iput-object v2, p0, Lr1/u0;->r:Lu7/y0;

    .line 22
    iput-boolean v1, p0, Lr1/u0;->s:Z

    .line 23
    iput-object v2, p0, Lr1/u0;->t:Lu7/y0;

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lr1/u0;->u:I

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lr1/u0;->v:Ljava/util/HashMap;

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lr1/u0;->w:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lr1/v0;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Lr1/u0;->c(Lr1/v0;)V

    return-void
.end method


# virtual methods
.method public a()Lr1/v0;
    .locals 1

    .line 1
    new-instance v0, Lr1/v0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lr1/v0;-><init>(Lr1/u0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public b(I)Lr1/u0;
    .locals 2

    .line 1
    iget-object v0, p0, Lr1/u0;->v:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lr1/s0;

    .line 22
    .line 23
    iget-object v1, v1, Lr1/s0;->a:Lr1/r0;

    .line 24
    .line 25
    iget v1, v1, Lr1/r0;->c:I

    .line 26
    .line 27
    if-ne v1, p1, :cond_0

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-object p0
.end method

.method public final c(Lr1/v0;)V
    .locals 2

    .line 1
    iget v0, p1, Lr1/v0;->a:I

    .line 2
    .line 3
    iput v0, p0, Lr1/u0;->a:I

    .line 4
    .line 5
    iget v0, p1, Lr1/v0;->b:I

    .line 6
    .line 7
    iput v0, p0, Lr1/u0;->b:I

    .line 8
    .line 9
    iget v0, p1, Lr1/v0;->c:I

    .line 10
    .line 11
    iput v0, p0, Lr1/u0;->c:I

    .line 12
    .line 13
    iget v0, p1, Lr1/v0;->d:I

    .line 14
    .line 15
    iput v0, p0, Lr1/u0;->d:I

    .line 16
    .line 17
    iget v0, p1, Lr1/v0;->e:I

    .line 18
    .line 19
    iput v0, p0, Lr1/u0;->e:I

    .line 20
    .line 21
    iget v0, p1, Lr1/v0;->f:I

    .line 22
    .line 23
    iput v0, p0, Lr1/u0;->f:I

    .line 24
    .line 25
    iget-boolean v0, p1, Lr1/v0;->g:Z

    .line 26
    .line 27
    iput-boolean v0, p0, Lr1/u0;->g:Z

    .line 28
    .line 29
    iget-boolean v0, p1, Lr1/v0;->h:Z

    .line 30
    .line 31
    iput-boolean v0, p0, Lr1/u0;->h:Z

    .line 32
    .line 33
    iget-object v0, p1, Lr1/v0;->j:Lu7/y0;

    .line 34
    .line 35
    iput-object v0, p0, Lr1/u0;->j:Lu7/y0;

    .line 36
    .line 37
    iget-object v0, p1, Lr1/v0;->i:Lu7/y0;

    .line 38
    .line 39
    iput-object v0, p0, Lr1/u0;->i:Lu7/y0;

    .line 40
    .line 41
    iget-object v0, p1, Lr1/v0;->k:Lu7/y0;

    .line 42
    .line 43
    iput-object v0, p0, Lr1/u0;->k:Lu7/y0;

    .line 44
    .line 45
    iget-object v0, p1, Lr1/v0;->l:Lu7/y0;

    .line 46
    .line 47
    iput-object v0, p0, Lr1/u0;->l:Lu7/y0;

    .line 48
    .line 49
    iget-object v0, p1, Lr1/v0;->m:Lu7/y0;

    .line 50
    .line 51
    iput-object v0, p0, Lr1/u0;->m:Lu7/y0;

    .line 52
    .line 53
    iget v0, p1, Lr1/v0;->n:I

    .line 54
    .line 55
    iput v0, p0, Lr1/u0;->n:I

    .line 56
    .line 57
    iget v0, p1, Lr1/v0;->o:I

    .line 58
    .line 59
    iput v0, p0, Lr1/u0;->o:I

    .line 60
    .line 61
    iget-object v0, p1, Lr1/v0;->p:Lu7/y0;

    .line 62
    .line 63
    iput-object v0, p0, Lr1/u0;->p:Lu7/y0;

    .line 64
    .line 65
    iget-object v0, p1, Lr1/v0;->q:Lr1/t0;

    .line 66
    .line 67
    iput-object v0, p0, Lr1/u0;->q:Lr1/t0;

    .line 68
    .line 69
    iget-object v0, p1, Lr1/v0;->r:Lu7/y0;

    .line 70
    .line 71
    iput-object v0, p0, Lr1/u0;->r:Lu7/y0;

    .line 72
    .line 73
    iget-boolean v0, p1, Lr1/v0;->t:Z

    .line 74
    .line 75
    iput-boolean v0, p0, Lr1/u0;->s:Z

    .line 76
    .line 77
    iget-object v0, p1, Lr1/v0;->s:Lu7/y0;

    .line 78
    .line 79
    iput-object v0, p0, Lr1/u0;->t:Lu7/y0;

    .line 80
    .line 81
    iget v0, p1, Lr1/v0;->u:I

    .line 82
    .line 83
    iput v0, p0, Lr1/u0;->u:I

    .line 84
    .line 85
    new-instance v0, Ljava/util/HashSet;

    .line 86
    .line 87
    iget-object v1, p1, Lr1/v0;->w:Lu7/j0;

    .line 88
    .line 89
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 90
    .line 91
    .line 92
    iput-object v0, p0, Lr1/u0;->w:Ljava/util/HashSet;

    .line 93
    .line 94
    new-instance v0, Ljava/util/HashMap;

    .line 95
    .line 96
    iget-object p1, p1, Lr1/v0;->v:Lu7/d1;

    .line 97
    .line 98
    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 99
    .line 100
    .line 101
    iput-object v0, p0, Lr1/u0;->v:Ljava/util/HashMap;

    .line 102
    .line 103
    return-void
.end method

.method public d()Lr1/u0;
    .locals 1

    .line 1
    const/4 v0, -0x3

    .line 2
    iput v0, p0, Lr1/u0;->u:I

    .line 3
    .line 4
    return-object p0
.end method

.method public e(Lr1/s0;)Lr1/u0;
    .locals 2

    .line 1
    iget-object v0, p1, Lr1/s0;->a:Lr1/r0;

    .line 2
    .line 3
    iget v1, v0, Lr1/r0;->c:I

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Lr1/u0;->b(I)Lr1/u0;

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lr1/u0;->v:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public f()Lr1/u0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lr1/u0;->g([Ljava/lang/String;)Lr1/u0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public varargs g([Ljava/lang/String;)Lr1/u0;
    .locals 9

    .line 1
    sget-object v0, Lu7/g0;->b:Lu7/e0;

    .line 2
    .line 3
    const-string v0, "initialCapacity"

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-static {v1, v0}, Lu7/q;->c(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-array v0, v1, [Ljava/lang/Object;

    .line 10
    .line 11
    array-length v1, p1

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    :goto_0
    if-ge v3, v1, :cond_1

    .line 16
    .line 17
    aget-object v5, p1, v3

    .line 18
    .line 19
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {v5}, Lu1/f0;->H(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    array-length v6, v0

    .line 30
    add-int/lit8 v7, v4, 0x1

    .line 31
    .line 32
    invoke-static {v6, v7}, Lu7/a0;->f(II)I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    array-length v8, v0

    .line 37
    if-gt v6, v8, :cond_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :goto_1
    aput-object v5, v0, v4

    .line 45
    .line 46
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    move v4, v7

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-static {v4, v0}, Lu7/g0;->i(I[Ljava/lang/Object;)Lu7/y0;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Lr1/u0;->r:Lu7/y0;

    .line 55
    .line 56
    iput-boolean v2, p0, Lr1/u0;->s:Z

    .line 57
    .line 58
    return-object p0
.end method

.method public h()Lr1/u0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lr1/u0;->s:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public i(IZ)Lr1/u0;
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lr1/u0;->w:Ljava/util/HashSet;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p2, p0, Lr1/u0;->w:Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    :goto_0
    return-object p0
.end method
