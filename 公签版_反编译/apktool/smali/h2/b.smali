.class public final Lh2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/p;


# instance fields
.field public final a:Lr1/r0;

.field public final b:I

.field public final c:[I

.field public final d:[Lr1/p;

.field public e:I

.field public final synthetic f:I


# direct methods
.method public constructor <init>(Lr1/r0;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lh2/b;->f:I

    .line 1
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lh2/b;-><init>(Lr1/r0;[I)V

    return-void
.end method

.method public constructor <init>(Lr1/r0;[I)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, La9/o;->t(Z)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Lh2/b;->a:Lr1/r0;

    .line 6
    array-length v0, p2

    iput v0, p0, Lh2/b;->b:I

    .line 7
    new-array v0, v0, [Lr1/p;

    iput-object v0, p0, Lh2/b;->d:[Lr1/p;

    const/4 v0, 0x0

    .line 8
    :goto_1
    array-length v2, p2

    iget-object v3, p1, Lr1/r0;->d:[Lr1/p;

    if-ge v0, v2, :cond_1

    .line 9
    iget-object v2, p0, Lh2/b;->d:[Lr1/p;

    aget v4, p2, v0

    .line 10
    aget-object v3, v3, v4

    .line 11
    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 12
    :cond_1
    iget-object p1, p0, Lh2/b;->d:[Lr1/p;

    new-instance p2, La2/m;

    const/16 v0, 0x9

    invoke-direct {p2, v0}, La2/m;-><init>(I)V

    invoke-static {p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 13
    iget p1, p0, Lh2/b;->b:I

    new-array p1, p1, [I

    iput-object p1, p0, Lh2/b;->c:[I

    const/4 p1, 0x0

    .line 14
    :goto_2
    iget p2, p0, Lh2/b;->b:I

    if-ge p1, p2, :cond_4

    .line 15
    iget-object p2, p0, Lh2/b;->c:[I

    iget-object v0, p0, Lh2/b;->d:[Lr1/p;

    aget-object v0, v0, p1

    const/4 v2, 0x0

    .line 16
    :goto_3
    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 17
    aget-object v4, v3, v2

    if-ne v0, v4, :cond_2

    goto :goto_4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, -0x1

    .line 18
    :goto_4
    aput v2, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 19
    :cond_4
    new-array p1, p2, [J

    return-void
.end method

.method public constructor <init>(Lr1/r0;[IJJLu7/g0;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lh2/b;->f:I

    .line 20
    invoke-direct {p0, p1, p2}, Lh2/b;-><init>(Lr1/r0;[I)V

    cmp-long p1, p5, p3

    if-gez p1, :cond_0

    .line 21
    const-string p1, "Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs"

    invoke-static {p1}, Lu1/a;->p(Ljava/lang/String;)V

    .line 22
    :cond_0
    invoke-static {p7}, Lu7/g0;->m(Ljava/util/Collection;)Lu7/g0;

    return-void
.end method

.method public static m(Ljava/util/ArrayList;[J)V
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    :goto_0
    array-length v4, p1

    .line 6
    if-ge v3, v4, :cond_0

    .line 7
    .line 8
    aget-wide v4, p1, v3

    .line 9
    .line 10
    add-long/2addr v0, v4

    .line 11
    add-int/lit8 v3, v3, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ge v2, v3, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lu7/d0;

    .line 25
    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_1
    new-instance v4, Lh2/a;

    .line 30
    .line 31
    aget-wide v5, p1, v2

    .line 32
    .line 33
    invoke-direct {v4, v0, v1, v5, v6}, Lh2/a;-><init>(JJ)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v4}, Lu7/a0;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    return-void
.end method

.method private final n()V
    .locals 0

    .line 1
    return-void
.end method

.method private final p()V
    .locals 0

    .line 1
    return-void
.end method

.method private final r(F)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final a()Lr1/r0;
    .locals 1

    .line 1
    iget-object v0, p0, Lh2/b;->a:Lr1/r0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(I)Lr1/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lh2/b;->d:[Lr1/p;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    return-object p1
.end method

.method public d()V
    .locals 1

    .line 1
    iget v0, p0, Lh2/b;->f:I

    return-void
.end method

.method public final e(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lh2/b;->c:[I

    .line 2
    .line 3
    aget p1, v0, p1

    .line 4
    .line 5
    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    check-cast p1, Lh2/b;

    .line 20
    .line 21
    iget-object v2, p0, Lh2/b;->a:Lr1/r0;

    .line 22
    .line 23
    iget-object v3, p1, Lh2/b;->a:Lr1/r0;

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Lr1/r0;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    iget-object v2, p0, Lh2/b;->c:[I

    .line 32
    .line 33
    iget-object p1, p1, Lh2/b;->c:[I

    .line 34
    .line 35
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/4 v0, 0x0

    .line 43
    :goto_0
    return v0

    .line 44
    :cond_3
    :goto_1
    return v1
.end method

.method public f()V
    .locals 1

    .line 1
    iget v0, p0, Lh2/b;->f:I

    return-void
.end method

.method public final g()I
    .locals 2

    .line 1
    iget-object v0, p0, Lh2/b;->c:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v0, v0, v1

    .line 5
    .line 6
    return v0
.end method

.method public final h()Lr1/p;
    .locals 2

    .line 1
    iget-object v0, p0, Lh2/b;->d:[Lr1/p;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lh2/b;->e:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lh2/b;->a:Lr1/r0;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    mul-int/lit8 v0, v0, 0x1f

    .line 12
    .line 13
    iget-object v1, p0, Lh2/b;->c:[I

    .line 14
    .line 15
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    add-int/2addr v1, v0

    .line 20
    iput v1, p0, Lh2/b;->e:I

    .line 21
    .line 22
    :cond_0
    iget v0, p0, Lh2/b;->e:I

    .line 23
    .line 24
    return v0
.end method

.method public i(F)V
    .locals 0

    .line 1
    iget p1, p0, Lh2/b;->f:I

    return-void
.end method

.method public final synthetic j()V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic k()V
    .locals 0

    .line 1
    return-void
.end method

.method public final l(I)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lh2/b;->b:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Lh2/b;->c:[I

    .line 7
    .line 8
    aget v1, v1, v0

    .line 9
    .line 10
    if-ne v1, p1, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 p1, -0x1

    .line 17
    return p1
.end method

.method public final length()I
    .locals 1

    .line 1
    iget-object v0, p0, Lh2/b;->c:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public final o()V
    .locals 0

    .line 1
    return-void
.end method

.method public final q()V
    .locals 0

    .line 1
    return-void
.end method

.method public final s(F)V
    .locals 0

    .line 1
    return-void
.end method
