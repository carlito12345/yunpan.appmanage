.class public final Lu7/u;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final j:Ljava/lang/Object;


# instance fields
.field public transient a:Ljava/lang/Object;

.field public transient b:[I

.field public transient c:[Ljava/lang/Object;

.field public transient d:[Ljava/lang/Object;

.field public transient e:I

.field public transient f:I

.field public transient g:Lu7/s;

.field public transient h:Lu7/s;

.field public transient i:Lu7/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lu7/u;->j:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x8

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const v0, 0x3fffffff    # 1.9999999f

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iput p1, p0, Lu7/u;->e:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 2

    .line 1
    iget-object v0, p0, Lu7/u;->a:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/util/Map;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/util/Map;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public final b()I
    .locals 2

    .line 1
    iget v0, p0, Lu7/u;->e:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    shl-int v0, v1, v0

    .line 7
    .line 8
    sub-int/2addr v0, v1

    .line 9
    return v0
.end method

.method public final c(Ljava/lang/Object;)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Lu7/u;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-static {p1}, Lu7/q;->q(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0}, Lu7/u;->b()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iget-object v3, p0, Lu7/u;->a:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    and-int v4, v0, v2

    .line 23
    .line 24
    invoke-static {v4, v3}, Lu7/q;->r(ILjava/lang/Object;)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    return v1

    .line 31
    :cond_1
    xor-int/lit8 v4, v2, -0x1

    .line 32
    .line 33
    and-int/2addr v0, v4

    .line 34
    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 35
    .line 36
    invoke-virtual {p0}, Lu7/u;->h()[I

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    aget v5, v5, v3

    .line 41
    .line 42
    and-int v6, v5, v4

    .line 43
    .line 44
    if-ne v6, v0, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0}, Lu7/u;->i()[Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    aget-object v6, v6, v3

    .line 51
    .line 52
    invoke-static {p1, v6}, Ls1/g;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-eqz v6, :cond_3

    .line 57
    .line 58
    return v3

    .line 59
    :cond_3
    and-int v3, v5, v2

    .line 60
    .line 61
    if-nez v3, :cond_2

    .line 62
    .line 63
    return v1
.end method

.method public final clear()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lu7/u;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v0, p0, Lu7/u;->e:I

    .line 9
    .line 10
    add-int/lit8 v0, v0, 0x20

    .line 11
    .line 12
    iput v0, p0, Lu7/u;->e:I

    .line 13
    .line 14
    invoke-virtual {p0}, Lu7/u;->a()Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lu7/u;->size()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x3

    .line 27
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const v4, 0x3fffffff    # 1.9999999f

    .line 32
    .line 33
    .line 34
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    iput v3, p0, Lu7/u;->e:I

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lu7/u;->a:Ljava/lang/Object;

    .line 44
    .line 45
    iput v2, p0, Lu7/u;->f:I

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {p0}, Lu7/u;->i()[Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget v3, p0, Lu7/u;->f:I

    .line 53
    .line 54
    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lu7/u;->j()[Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget v3, p0, Lu7/u;->f:I

    .line 62
    .line 63
    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lu7/u;->a:Ljava/lang/Object;

    .line 67
    .line 68
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    instance-of v1, v0, [B

    .line 72
    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    check-cast v0, [B

    .line 76
    .line 77
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    instance-of v1, v0, [S

    .line 82
    .line 83
    if-eqz v1, :cond_3

    .line 84
    .line 85
    check-cast v0, [S

    .line 86
    .line 87
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([SS)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    check-cast v0, [I

    .line 92
    .line 93
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 94
    .line 95
    .line 96
    :goto_0
    invoke-virtual {p0}, Lu7/u;->h()[I

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iget v1, p0, Lu7/u;->f:I

    .line 101
    .line 102
    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 103
    .line 104
    .line 105
    iput v2, p0, Lu7/u;->f:I

    .line 106
    .line 107
    :goto_1
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lu7/u;->a()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lu7/u;->c(Ljava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v0, -0x1

    .line 17
    if-eq p1, v0, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p1, 0x0

    .line 22
    :goto_0
    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lu7/u;->a()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    iget v2, p0, Lu7/u;->f:I

    .line 15
    .line 16
    if-ge v1, v2, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Lu7/u;->j()[Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    aget-object v2, v2, v1

    .line 23
    .line 24
    invoke-static {p1, v2}, Ls1/g;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    return p1

    .line 32
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    return v0
.end method

.method public final d(II)V
    .locals 10

    .line 1
    iget-object v0, p0, Lu7/u;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lu7/u;->h()[I

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0}, Lu7/u;->i()[Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {p0}, Lu7/u;->j()[Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {p0}, Lu7/u;->size()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    add-int/lit8 v5, v4, -0x1

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v7, 0x0

    .line 26
    if-ge p1, v5, :cond_2

    .line 27
    .line 28
    aget-object v8, v2, v5

    .line 29
    .line 30
    aput-object v8, v2, p1

    .line 31
    .line 32
    aget-object v9, v3, v5

    .line 33
    .line 34
    aput-object v9, v3, p1

    .line 35
    .line 36
    aput-object v7, v2, v5

    .line 37
    .line 38
    aput-object v7, v3, v5

    .line 39
    .line 40
    aget v2, v1, v5

    .line 41
    .line 42
    aput v2, v1, p1

    .line 43
    .line 44
    aput v6, v1, v5

    .line 45
    .line 46
    invoke-static {v8}, Lu7/q;->q(Ljava/lang/Object;)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    and-int/2addr v2, p2

    .line 51
    invoke-static {v2, v0}, Lu7/q;->r(ILjava/lang/Object;)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-ne v3, v4, :cond_0

    .line 56
    .line 57
    add-int/lit8 p1, p1, 0x1

    .line 58
    .line 59
    invoke-static {v2, p1, v0}, Lu7/q;->s(IILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_0
    :goto_0
    add-int/lit8 v3, v3, -0x1

    .line 64
    .line 65
    aget v0, v1, v3

    .line 66
    .line 67
    and-int v2, v0, p2

    .line 68
    .line 69
    if-ne v2, v4, :cond_1

    .line 70
    .line 71
    add-int/lit8 p1, p1, 0x1

    .line 72
    .line 73
    invoke-static {v0, p1, p2}, Lu7/q;->l(III)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    aput p1, v1, v3

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    move v3, v2

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    aput-object v7, v2, p1

    .line 83
    .line 84
    aput-object v7, v3, p1

    .line 85
    .line 86
    aput v6, v1, p1

    .line 87
    .line 88
    :goto_1
    return-void
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 2

    .line 1
    iget-object v0, p0, Lu7/u;->h:Lu7/s;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lu7/s;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Lu7/s;-><init>(Lu7/u;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lu7/u;->h:Lu7/s;

    .line 12
    .line 13
    :cond_0
    return-object v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lu7/u;->a:Ljava/lang/Object;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lu7/u;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lu7/u;->j:Ljava/lang/Object;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    invoke-virtual {p0}, Lu7/u;->b()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v5, p0, Lu7/u;->a:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-static {v5}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lu7/u;->h()[I

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    invoke-virtual {p0}, Lu7/u;->i()[Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v7

    .line 27
    const/4 v8, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    move-object v2, p1

    .line 30
    move v4, v0

    .line 31
    invoke-static/range {v2 .. v8}, Lu7/q;->n(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const/4 v2, -0x1

    .line 36
    if-ne p1, v2, :cond_1

    .line 37
    .line 38
    return-object v1

    .line 39
    :cond_1
    invoke-virtual {p0}, Lu7/u;->j()[Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    aget-object v1, v1, p1

    .line 44
    .line 45
    invoke-virtual {p0, p1, v0}, Lu7/u;->d(II)V

    .line 46
    .line 47
    .line 48
    iget p1, p0, Lu7/u;->f:I

    .line 49
    .line 50
    add-int/lit8 p1, p1, -0x1

    .line 51
    .line 52
    iput p1, p0, Lu7/u;->f:I

    .line 53
    .line 54
    iget p1, p0, Lu7/u;->e:I

    .line 55
    .line 56
    add-int/lit8 p1, p1, 0x20

    .line 57
    .line 58
    iput p1, p0, Lu7/u;->e:I

    .line 59
    .line 60
    return-object v1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lu7/u;->a()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lu7/u;->c(Ljava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v0, -0x1

    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return-object p1

    .line 21
    :cond_1
    invoke-virtual {p0}, Lu7/u;->j()[Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    aget-object p1, v0, p1

    .line 26
    .line 27
    return-object p1
.end method

.method public final h()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lu7/u;->b:[I

    .line 2
    .line 3
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    check-cast v0, [I

    .line 7
    .line 8
    return-object v0
.end method

.method public final i()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lu7/u;->c:[Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    check-cast v0, [Ljava/lang/Object;

    .line 7
    .line 8
    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lu7/u;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public final j()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lu7/u;->d:[Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    check-cast v0, [Ljava/lang/Object;

    .line 7
    .line 8
    return-object v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 2

    .line 1
    iget-object v0, p0, Lu7/u;->g:Lu7/s;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lu7/s;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, p0, v1}, Lu7/s;-><init>(Lu7/u;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lu7/u;->g:Lu7/s;

    .line 12
    .line 13
    :cond_0
    return-object v0
.end method

.method public final l(IIII)I
    .locals 8

    .line 1
    invoke-static {p2}, Lu7/q;->e(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    add-int/lit8 p2, p2, -0x1

    .line 6
    .line 7
    if-eqz p4, :cond_0

    .line 8
    .line 9
    and-int/2addr p3, p2

    .line 10
    add-int/lit8 p4, p4, 0x1

    .line 11
    .line 12
    invoke-static {p3, p4, v0}, Lu7/q;->s(IILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p3, p0, Lu7/u;->a:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-static {p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lu7/u;->h()[I

    .line 21
    .line 22
    .line 23
    move-result-object p4

    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_0
    if-gt v1, p1, :cond_2

    .line 26
    .line 27
    invoke-static {v1, p3}, Lu7/q;->r(ILjava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    :goto_1
    if-eqz v2, :cond_1

    .line 32
    .line 33
    add-int/lit8 v3, v2, -0x1

    .line 34
    .line 35
    aget v4, p4, v3

    .line 36
    .line 37
    xor-int/lit8 v5, p1, -0x1

    .line 38
    .line 39
    and-int/2addr v5, v4

    .line 40
    or-int/2addr v5, v1

    .line 41
    and-int v6, v5, p2

    .line 42
    .line 43
    invoke-static {v6, v0}, Lu7/q;->r(ILjava/lang/Object;)I

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    invoke-static {v6, v2, v0}, Lu7/q;->s(IILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v5, v7, p2}, Lu7/q;->l(III)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    aput v2, p4, v3

    .line 55
    .line 56
    and-int v2, v4, p1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    iput-object v0, p0, Lu7/u;->a:Ljava/lang/Object;

    .line 63
    .line 64
    invoke-static {p2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    rsub-int/lit8 p1, p1, 0x20

    .line 69
    .line 70
    iget p3, p0, Lu7/u;->e:I

    .line 71
    .line 72
    const/16 p4, 0x1f

    .line 73
    .line 74
    invoke-static {p3, p1, p4}, Lu7/q;->l(III)I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    iput p1, p0, Lu7/u;->e:I

    .line 79
    .line 80
    return p2
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Lu7/u;->f()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x4

    .line 12
    const/4 v5, 0x2

    .line 13
    const/16 v6, 0x20

    .line 14
    .line 15
    const/4 v7, 0x1

    .line 16
    if-eqz v3, :cond_2

    .line 17
    .line 18
    invoke-virtual/range {p0 .. p0}, Lu7/u;->f()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const-string v8, "Arrays already allocated"

    .line 23
    .line 24
    invoke-static {v8, v3}, La9/o;->s(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    iget v3, v0, Lu7/u;->e:I

    .line 28
    .line 29
    add-int/lit8 v8, v3, 0x1

    .line 30
    .line 31
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    .line 32
    .line 33
    .line 34
    move-result v8

    .line 35
    invoke-static {v8}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 36
    .line 37
    .line 38
    move-result v9

    .line 39
    int-to-double v10, v9

    .line 40
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 41
    .line 42
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    .line 43
    .line 44
    .line 45
    mul-double v12, v12, v10

    .line 46
    .line 47
    double-to-int v10, v12

    .line 48
    if-le v8, v10, :cond_1

    .line 49
    .line 50
    shl-int/lit8 v8, v9, 0x1

    .line 51
    .line 52
    if-lez v8, :cond_0

    .line 53
    .line 54
    move v9, v8

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/high16 v8, 0x40000000    # 2.0f

    .line 57
    .line 58
    const/high16 v9, 0x40000000    # 2.0f

    .line 59
    .line 60
    :cond_1
    :goto_0
    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    invoke-static {v8}, Lu7/q;->e(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    iput-object v9, v0, Lu7/u;->a:Ljava/lang/Object;

    .line 69
    .line 70
    sub-int/2addr v8, v7

    .line 71
    invoke-static {v8}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    rsub-int/lit8 v8, v8, 0x20

    .line 76
    .line 77
    iget v9, v0, Lu7/u;->e:I

    .line 78
    .line 79
    const/16 v10, 0x1f

    .line 80
    .line 81
    invoke-static {v9, v8, v10}, Lu7/q;->l(III)I

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    iput v8, v0, Lu7/u;->e:I

    .line 86
    .line 87
    new-array v8, v3, [I

    .line 88
    .line 89
    iput-object v8, v0, Lu7/u;->b:[I

    .line 90
    .line 91
    new-array v8, v3, [Ljava/lang/Object;

    .line 92
    .line 93
    iput-object v8, v0, Lu7/u;->c:[Ljava/lang/Object;

    .line 94
    .line 95
    new-array v3, v3, [Ljava/lang/Object;

    .line 96
    .line 97
    iput-object v3, v0, Lu7/u;->d:[Ljava/lang/Object;

    .line 98
    .line 99
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lu7/u;->a()Ljava/util/Map;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    if-eqz v3, :cond_3

    .line 104
    .line 105
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    return-object v1

    .line 110
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lu7/u;->h()[I

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual/range {p0 .. p0}, Lu7/u;->i()[Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    invoke-virtual/range {p0 .. p0}, Lu7/u;->j()[Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    iget v10, v0, Lu7/u;->f:I

    .line 123
    .line 124
    add-int/lit8 v11, v10, 0x1

    .line 125
    .line 126
    invoke-static/range {p1 .. p1}, Lu7/q;->q(Ljava/lang/Object;)I

    .line 127
    .line 128
    .line 129
    move-result v12

    .line 130
    invoke-virtual/range {p0 .. p0}, Lu7/u;->b()I

    .line 131
    .line 132
    .line 133
    move-result v13

    .line 134
    and-int v14, v12, v13

    .line 135
    .line 136
    iget-object v15, v0, Lu7/u;->a:Ljava/lang/Object;

    .line 137
    .line 138
    invoke-static {v15}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    invoke-static {v14, v15}, Lu7/q;->r(ILjava/lang/Object;)I

    .line 142
    .line 143
    .line 144
    move-result v15

    .line 145
    if-nez v15, :cond_6

    .line 146
    .line 147
    if-le v11, v13, :cond_5

    .line 148
    .line 149
    if-ge v13, v6, :cond_4

    .line 150
    .line 151
    const/16 v16, 0x4

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_4
    const/16 v16, 0x2

    .line 155
    .line 156
    :goto_1
    add-int/lit8 v3, v13, 0x1

    .line 157
    .line 158
    mul-int v3, v3, v16

    .line 159
    .line 160
    invoke-virtual {v0, v13, v3, v12, v10}, Lu7/u;->l(IIII)I

    .line 161
    .line 162
    .line 163
    move-result v13

    .line 164
    goto/16 :goto_5

    .line 165
    .line 166
    :cond_5
    iget-object v3, v0, Lu7/u;->a:Ljava/lang/Object;

    .line 167
    .line 168
    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    invoke-static {v14, v11, v3}, Lu7/q;->s(IILjava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    goto/16 :goto_5

    .line 175
    .line 176
    :cond_6
    xor-int/lit8 v14, v13, -0x1

    .line 177
    .line 178
    and-int v4, v12, v14

    .line 179
    .line 180
    const/16 v18, 0x0

    .line 181
    .line 182
    :goto_2
    sub-int/2addr v15, v7

    .line 183
    aget v6, v3, v15

    .line 184
    .line 185
    and-int v5, v6, v14

    .line 186
    .line 187
    if-ne v5, v4, :cond_7

    .line 188
    .line 189
    aget-object v5, v8, v15

    .line 190
    .line 191
    invoke-static {v1, v5}, Ls1/g;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    if-eqz v5, :cond_7

    .line 196
    .line 197
    aget-object v1, v9, v15

    .line 198
    .line 199
    aput-object v2, v9, v15

    .line 200
    .line 201
    return-object v1

    .line 202
    :cond_7
    and-int v5, v6, v13

    .line 203
    .line 204
    move/from16 v19, v4

    .line 205
    .line 206
    add-int/lit8 v4, v18, 0x1

    .line 207
    .line 208
    if-nez v5, :cond_f

    .line 209
    .line 210
    const/16 v5, 0x9

    .line 211
    .line 212
    if-lt v4, v5, :cond_b

    .line 213
    .line 214
    invoke-virtual/range {p0 .. p0}, Lu7/u;->b()I

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    add-int/2addr v3, v7

    .line 219
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 220
    .line 221
    const/high16 v5, 0x3f800000    # 1.0f

    .line 222
    .line 223
    invoke-direct {v4, v3, v5}, Ljava/util/LinkedHashMap;-><init>(IF)V

    .line 224
    .line 225
    .line 226
    invoke-virtual/range {p0 .. p0}, Lu7/u;->isEmpty()Z

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    const/4 v5, -0x1

    .line 231
    if-eqz v3, :cond_9

    .line 232
    .line 233
    :cond_8
    const/16 v17, -0x1

    .line 234
    .line 235
    goto :goto_3

    .line 236
    :cond_9
    const/16 v17, 0x0

    .line 237
    .line 238
    :goto_3
    if-ltz v17, :cond_a

    .line 239
    .line 240
    invoke-virtual/range {p0 .. p0}, Lu7/u;->i()[Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    aget-object v3, v3, v17

    .line 245
    .line 246
    invoke-virtual/range {p0 .. p0}, Lu7/u;->j()[Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v6

    .line 250
    aget-object v6, v6, v17

    .line 251
    .line 252
    invoke-interface {v4, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    add-int/lit8 v3, v17, 0x1

    .line 256
    .line 257
    iget v6, v0, Lu7/u;->f:I

    .line 258
    .line 259
    if-ge v3, v6, :cond_8

    .line 260
    .line 261
    move/from16 v17, v3

    .line 262
    .line 263
    goto :goto_3

    .line 264
    :cond_a
    iput-object v4, v0, Lu7/u;->a:Ljava/lang/Object;

    .line 265
    .line 266
    const/4 v3, 0x0

    .line 267
    iput-object v3, v0, Lu7/u;->b:[I

    .line 268
    .line 269
    iput-object v3, v0, Lu7/u;->c:[Ljava/lang/Object;

    .line 270
    .line 271
    iput-object v3, v0, Lu7/u;->d:[Ljava/lang/Object;

    .line 272
    .line 273
    iget v3, v0, Lu7/u;->e:I

    .line 274
    .line 275
    const/16 v5, 0x20

    .line 276
    .line 277
    add-int/2addr v3, v5

    .line 278
    iput v3, v0, Lu7/u;->e:I

    .line 279
    .line 280
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    return-object v1

    .line 285
    :cond_b
    const/16 v5, 0x20

    .line 286
    .line 287
    if-le v11, v13, :cond_d

    .line 288
    .line 289
    if-ge v13, v5, :cond_c

    .line 290
    .line 291
    const/4 v4, 0x4

    .line 292
    goto :goto_4

    .line 293
    :cond_c
    const/4 v4, 0x2

    .line 294
    :goto_4
    add-int/lit8 v3, v13, 0x1

    .line 295
    .line 296
    mul-int v3, v3, v4

    .line 297
    .line 298
    invoke-virtual {v0, v13, v3, v12, v10}, Lu7/u;->l(IIII)I

    .line 299
    .line 300
    .line 301
    move-result v13

    .line 302
    goto :goto_5

    .line 303
    :cond_d
    invoke-static {v6, v11, v13}, Lu7/q;->l(III)I

    .line 304
    .line 305
    .line 306
    move-result v4

    .line 307
    aput v4, v3, v15

    .line 308
    .line 309
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lu7/u;->h()[I

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    array-length v3, v3

    .line 314
    if-le v11, v3, :cond_e

    .line 315
    .line 316
    ushr-int/lit8 v4, v3, 0x1

    .line 317
    .line 318
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    .line 319
    .line 320
    .line 321
    move-result v4

    .line 322
    add-int/2addr v4, v3

    .line 323
    or-int/2addr v4, v7

    .line 324
    const v5, 0x3fffffff    # 1.9999999f

    .line 325
    .line 326
    .line 327
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    .line 328
    .line 329
    .line 330
    move-result v4

    .line 331
    if-eq v4, v3, :cond_e

    .line 332
    .line 333
    invoke-virtual/range {p0 .. p0}, Lu7/u;->h()[I

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    iput-object v3, v0, Lu7/u;->b:[I

    .line 342
    .line 343
    invoke-virtual/range {p0 .. p0}, Lu7/u;->i()[Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v3

    .line 347
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v3

    .line 351
    iput-object v3, v0, Lu7/u;->c:[Ljava/lang/Object;

    .line 352
    .line 353
    invoke-virtual/range {p0 .. p0}, Lu7/u;->j()[Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    iput-object v3, v0, Lu7/u;->d:[Ljava/lang/Object;

    .line 362
    .line 363
    :cond_e
    const/4 v6, 0x0

    .line 364
    invoke-static {v12, v6, v13}, Lu7/q;->l(III)I

    .line 365
    .line 366
    .line 367
    move-result v3

    .line 368
    invoke-virtual/range {p0 .. p0}, Lu7/u;->h()[I

    .line 369
    .line 370
    .line 371
    move-result-object v4

    .line 372
    aput v3, v4, v10

    .line 373
    .line 374
    invoke-virtual/range {p0 .. p0}, Lu7/u;->i()[Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v3

    .line 378
    aput-object v1, v3, v10

    .line 379
    .line 380
    invoke-virtual/range {p0 .. p0}, Lu7/u;->j()[Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    aput-object v2, v1, v10

    .line 385
    .line 386
    iput v11, v0, Lu7/u;->f:I

    .line 387
    .line 388
    iget v1, v0, Lu7/u;->e:I

    .line 389
    .line 390
    const/16 v15, 0x20

    .line 391
    .line 392
    add-int/2addr v1, v15

    .line 393
    iput v1, v0, Lu7/u;->e:I

    .line 394
    .line 395
    const/16 v17, 0x0

    .line 396
    .line 397
    return-object v17

    .line 398
    :cond_f
    move/from16 v18, v4

    .line 399
    .line 400
    move v15, v5

    .line 401
    move/from16 v4, v19

    .line 402
    .line 403
    const/16 v6, 0x20

    .line 404
    .line 405
    goto/16 :goto_2
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lu7/u;->a()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lu7/u;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    sget-object v0, Lu7/u;->j:Ljava/lang/Object;

    .line 17
    .line 18
    if-ne p1, v0, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    :cond_1
    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lu7/u;->a()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget v0, p0, Lu7/u;->f:I

    .line 13
    .line 14
    :goto_0
    return v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 2

    .line 1
    iget-object v0, p0, Lu7/u;->i:Lu7/n;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lu7/n;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1, p0}, Lu7/n;-><init>(ILjava/io/Serializable;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lu7/u;->i:Lu7/n;

    .line 12
    .line 13
    :cond_0
    return-object v0
.end method
