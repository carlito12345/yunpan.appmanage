.class public final Lf3/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lf3/s;

.field public final b:I

.field public final c:[J

.field public final d:[I

.field public final e:I

.field public final f:[J

.field public final g:[I

.field public final h:[I

.field public final i:J

.field public final j:Z


# direct methods
.method public constructor <init>(Lf3/s;[J[II[J[I[IZJI)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    array-length v0, p3

    .line 5
    array-length v1, p5

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-static {v0}, La9/o;->k(Z)V

    .line 14
    .line 15
    .line 16
    array-length v0, p2

    .line 17
    array-length v1, p5

    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    :goto_1
    invoke-static {v0}, La9/o;->k(Z)V

    .line 24
    .line 25
    .line 26
    array-length v0, p6

    .line 27
    array-length v1, p5

    .line 28
    if-ne v0, v1, :cond_2

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    :cond_2
    invoke-static {v2}, La9/o;->k(Z)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lf3/v;->a:Lf3/s;

    .line 35
    .line 36
    iput-object p2, p0, Lf3/v;->c:[J

    .line 37
    .line 38
    iput-object p3, p0, Lf3/v;->d:[I

    .line 39
    .line 40
    iput p4, p0, Lf3/v;->e:I

    .line 41
    .line 42
    iput-object p5, p0, Lf3/v;->f:[J

    .line 43
    .line 44
    iput-object p6, p0, Lf3/v;->g:[I

    .line 45
    .line 46
    iput-object p7, p0, Lf3/v;->h:[I

    .line 47
    .line 48
    iput-boolean p8, p0, Lf3/v;->j:Z

    .line 49
    .line 50
    iput-wide p9, p0, Lf3/v;->i:J

    .line 51
    .line 52
    iput p11, p0, Lf3/v;->b:I

    .line 53
    .line 54
    array-length p1, p6

    .line 55
    if-lez p1, :cond_3

    .line 56
    .line 57
    array-length p1, p6

    .line 58
    sub-int/2addr p1, v3

    .line 59
    aget p2, p6, p1

    .line 60
    .line 61
    const/high16 p3, 0x20000000

    .line 62
    .line 63
    or-int/2addr p2, p3

    .line 64
    aput p2, p6, p1

    .line 65
    .line 66
    :cond_3
    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 10

    .line 1
    iget-object v0, p0, Lf3/v;->f:[J

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-lez v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    const/4 v4, -0x1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    return v4

    .line 15
    :cond_1
    iget-boolean v1, p0, Lf3/v;->j:Z

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    invoke-static {v0, p1, p2, v2}, Lu1/f0;->d([JJZ)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_2
    iget-object v1, p0, Lf3/v;->h:[I

    .line 25
    .line 26
    array-length v5, v1

    .line 27
    sub-int/2addr v5, v3

    .line 28
    const/4 v3, -0x1

    .line 29
    :goto_1
    if-gt v2, v5, :cond_4

    .line 30
    .line 31
    const/4 v6, 0x2

    .line 32
    invoke-static {v5, v2, v6, v2}, Lta/q;->g(IIII)I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    aget v7, v1, v6

    .line 37
    .line 38
    aget-wide v7, v0, v7

    .line 39
    .line 40
    cmp-long v9, v7, p1

    .line 41
    .line 42
    if-gtz v9, :cond_3

    .line 43
    .line 44
    add-int/lit8 v2, v6, 0x1

    .line 45
    .line 46
    move v3, v6

    .line 47
    goto :goto_1

    .line 48
    :cond_3
    add-int/lit8 v6, v6, -0x1

    .line 49
    .line 50
    move v5, v6

    .line 51
    goto :goto_1

    .line 52
    :cond_4
    if-ne v3, v4, :cond_5

    .line 53
    .line 54
    return v4

    .line 55
    :cond_5
    aget v2, v1, v3

    .line 56
    .line 57
    aget-wide v4, v0, v2

    .line 58
    .line 59
    cmp-long v2, v4, p1

    .line 60
    .line 61
    if-nez v2, :cond_6

    .line 62
    .line 63
    :goto_2
    if-lez v3, :cond_6

    .line 64
    .line 65
    add-int/lit8 p1, v3, -0x1

    .line 66
    .line 67
    aget p1, v1, p1

    .line 68
    .line 69
    aget-wide p1, v0, p1

    .line 70
    .line 71
    cmp-long v2, p1, v4

    .line 72
    .line 73
    if-nez v2, :cond_6

    .line 74
    .line 75
    add-int/lit8 v3, v3, -0x1

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_6
    aget p1, v1, v3

    .line 79
    .line 80
    return p1
.end method

.method public final b(J)I
    .locals 11

    .line 1
    iget-object v0, p0, Lf3/v;->f:[J

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-lez v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    const/4 v4, -0x1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    return v4

    .line 15
    :cond_1
    iget-boolean v1, p0, Lf3/v;->j:Z

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    invoke-static {v0, p1, p2, v3}, Lu1/f0;->a([JJZ)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_2
    iget-object v1, p0, Lf3/v;->h:[I

    .line 25
    .line 26
    array-length v5, v1

    .line 27
    sub-int/2addr v5, v3

    .line 28
    const/4 v6, -0x1

    .line 29
    :goto_1
    if-gt v2, v5, :cond_4

    .line 30
    .line 31
    const/4 v7, 0x2

    .line 32
    invoke-static {v5, v2, v7, v2}, Lta/q;->g(IIII)I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    aget v8, v1, v7

    .line 37
    .line 38
    aget-wide v8, v0, v8

    .line 39
    .line 40
    cmp-long v10, v8, p1

    .line 41
    .line 42
    if-ltz v10, :cond_3

    .line 43
    .line 44
    add-int/lit8 v5, v7, -0x1

    .line 45
    .line 46
    move v6, v7

    .line 47
    goto :goto_1

    .line 48
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 49
    .line 50
    move v2, v7

    .line 51
    goto :goto_1

    .line 52
    :cond_4
    if-ne v6, v4, :cond_5

    .line 53
    .line 54
    return v4

    .line 55
    :cond_5
    aget v2, v1, v6

    .line 56
    .line 57
    aget-wide v4, v0, v2

    .line 58
    .line 59
    cmp-long v2, v4, p1

    .line 60
    .line 61
    if-nez v2, :cond_6

    .line 62
    .line 63
    :goto_2
    array-length p1, v1

    .line 64
    sub-int/2addr p1, v3

    .line 65
    if-ge v6, p1, :cond_6

    .line 66
    .line 67
    add-int/lit8 p1, v6, 0x1

    .line 68
    .line 69
    aget p2, v1, p1

    .line 70
    .line 71
    aget-wide v7, v0, p2

    .line 72
    .line 73
    cmp-long p2, v7, v4

    .line 74
    .line 75
    if-nez p2, :cond_6

    .line 76
    .line 77
    move v6, p1

    .line 78
    goto :goto_2

    .line 79
    :cond_6
    aget p1, v1, v6

    .line 80
    .line 81
    return p1
.end method
