.class public final Lxh/b;
.super Lxh/h;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:[J

.field public final b:[Lsh/p;

.field public final c:[J

.field public final d:[Lsh/f;

.field public final e:[Lsh/p;

.field public final f:[Lxh/f;

.field public final g:Lj$/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>([J[Lsh/p;[J[Lsh/p;[Lxh/f;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lxh/h;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lxh/b;->g:Lj$/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    iput-object p1, p0, Lxh/b;->a:[J

    .line 12
    .line 13
    iput-object p2, p0, Lxh/b;->b:[Lsh/p;

    .line 14
    .line 15
    iput-object p3, p0, Lxh/b;->c:[J

    .line 16
    .line 17
    iput-object p4, p0, Lxh/b;->e:[Lsh/p;

    .line 18
    .line 19
    iput-object p5, p0, Lxh/b;->f:[Lxh/f;

    .line 20
    .line 21
    new-instance p1, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    const/4 p5, 0x0

    .line 28
    :goto_0
    array-length v0, p3

    .line 29
    if-ge p5, v0, :cond_1

    .line 30
    .line 31
    aget-object v0, p4, p5

    .line 32
    .line 33
    add-int/lit8 v1, p5, 0x1

    .line 34
    .line 35
    aget-object v2, p4, v1

    .line 36
    .line 37
    aget-wide v3, p3, p5

    .line 38
    .line 39
    invoke-static {v3, v4, p2, v0}, Lsh/f;->r(JILsh/p;)Lsh/f;

    .line 40
    .line 41
    .line 42
    move-result-object p5

    .line 43
    iget v3, v2, Lsh/p;->a:I

    .line 44
    .line 45
    iget v0, v0, Lsh/p;->a:I

    .line 46
    .line 47
    if-le v3, v0, :cond_0

    .line 48
    .line 49
    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    iget v2, v2, Lsh/p;->a:I

    .line 53
    .line 54
    sub-int/2addr v2, v0

    .line 55
    int-to-long v2, v2

    .line 56
    invoke-virtual {p5, v2, v3}, Lsh/f;->t(J)Lsh/f;

    .line 57
    .line 58
    .line 59
    move-result-object p5

    .line 60
    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_0
    sub-int/2addr v3, v0

    .line 65
    int-to-long v2, v3

    .line 66
    invoke-virtual {p5, v2, v3}, Lsh/f;->t(J)Lsh/f;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    :goto_1
    move p5, v1

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    new-array p2, p2, [Lsh/f;

    .line 83
    .line 84
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, [Lsh/f;

    .line 89
    .line 90
    iput-object p1, p0, Lxh/b;->d:[Lsh/f;

    .line 91
    .line 92
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lxh/a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1, p0}, Lxh/a;-><init>(BLjava/io/Serializable;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method


# virtual methods
.method public final a(Lsh/d;)Lsh/p;
    .locals 8

    .line 1
    iget-wide v0, p1, Lsh/d;->a:J

    .line 2
    .line 3
    iget-object p1, p0, Lxh/b;->f:[Lxh/f;

    .line 4
    .line 5
    array-length p1, p1

    .line 6
    iget-object v2, p0, Lxh/b;->e:[Lsh/p;

    .line 7
    .line 8
    iget-object v3, p0, Lxh/b;->c:[J

    .line 9
    .line 10
    if-lez p1, :cond_3

    .line 11
    .line 12
    array-length p1, v3

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    array-length p1, v3

    .line 16
    add-int/lit8 p1, p1, -0x1

    .line 17
    .line 18
    aget-wide v4, v3, p1

    .line 19
    .line 20
    cmp-long p1, v0, v4

    .line 21
    .line 22
    if-lez p1, :cond_3

    .line 23
    .line 24
    :cond_0
    array-length p1, v2

    .line 25
    add-int/lit8 p1, p1, -0x1

    .line 26
    .line 27
    aget-object p1, v2, p1

    .line 28
    .line 29
    iget p1, p1, Lsh/p;->a:I

    .line 30
    .line 31
    int-to-long v2, p1

    .line 32
    add-long/2addr v2, v0

    .line 33
    const-wide/32 v4, 0x15180

    .line 34
    .line 35
    .line 36
    invoke-static {v2, v3, v4, v5}, Lif/a;->C(JJ)J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    invoke-static {v2, v3}, Lsh/e;->w(J)Lsh/e;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget p1, p1, Lsh/e;->a:I

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lxh/b;->f(I)[Lxh/e;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const/4 v2, 0x0

    .line 51
    const/4 v3, 0x0

    .line 52
    :goto_0
    array-length v4, p1

    .line 53
    if-ge v3, v4, :cond_2

    .line 54
    .line 55
    aget-object v2, p1, v3

    .line 56
    .line 57
    iget-object v4, v2, Lxh/e;->a:Lsh/f;

    .line 58
    .line 59
    iget-object v5, v2, Lxh/e;->b:Lsh/p;

    .line 60
    .line 61
    invoke-virtual {v4, v5}, Lth/b;->m(Lsh/p;)J

    .line 62
    .line 63
    .line 64
    move-result-wide v6

    .line 65
    cmp-long v4, v0, v6

    .line 66
    .line 67
    if-gez v4, :cond_1

    .line 68
    .line 69
    return-object v5

    .line 70
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    iget-object p1, v2, Lxh/e;->c:Lsh/p;

    .line 74
    .line 75
    return-object p1

    .line 76
    :cond_3
    invoke-static {v3, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-gez p1, :cond_4

    .line 81
    .line 82
    neg-int p1, p1

    .line 83
    add-int/lit8 p1, p1, -0x2

    .line 84
    .line 85
    :cond_4
    add-int/lit8 p1, p1, 0x1

    .line 86
    .line 87
    aget-object p1, v2, p1

    .line 88
    .line 89
    return-object p1
.end method

.method public final b(Lsh/f;)Lxh/e;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lxh/b;->g(Lsh/f;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    instance-of v0, p1, Lxh/e;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Lxh/e;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    return-object p1
.end method

.method public final c(Lsh/f;)Ljava/util/List;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lxh/b;->g(Lsh/f;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    instance-of v0, p1, Lxh/e;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p1, Lxh/e;

    .line 10
    .line 11
    iget-object v0, p1, Lxh/e;->c:Lsh/p;

    .line 12
    .line 13
    iget v1, v0, Lsh/p;->a:I

    .line 14
    .line 15
    iget-object p1, p1, Lxh/e;->b:Lsh/p;

    .line 16
    .line 17
    iget v2, p1, Lsh/p;->a:I

    .line 18
    .line 19
    if-le v1, v2, :cond_0

    .line 20
    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x2

    .line 27
    new-array v1, v1, [Lsh/p;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    aput-object p1, v1, v2

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    aput-object v0, v1, p1

    .line 34
    .line 35
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :goto_0
    return-object p1

    .line 40
    :cond_1
    check-cast p1, Lsh/p;

    .line 41
    .line 42
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1
.end method

.method public final d(Lsh/f;Lsh/p;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lxh/b;->c(Lsh/f;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
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
    instance-of v1, p1, Lxh/b;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    check-cast p1, Lxh/b;

    .line 11
    .line 12
    iget-object v1, p1, Lxh/b;->a:[J

    .line 13
    .line 14
    iget-object v3, p0, Lxh/b;->a:[J

    .line 15
    .line 16
    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([J[J)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lxh/b;->b:[Lsh/p;

    .line 23
    .line 24
    iget-object v3, p1, Lxh/b;->b:[Lsh/p;

    .line 25
    .line 26
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Lxh/b;->c:[J

    .line 33
    .line 34
    iget-object v3, p1, Lxh/b;->c:[J

    .line 35
    .line 36
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([J[J)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    iget-object v1, p0, Lxh/b;->e:[Lsh/p;

    .line 43
    .line 44
    iget-object v3, p1, Lxh/b;->e:[Lsh/p;

    .line 45
    .line 46
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    iget-object v1, p0, Lxh/b;->f:[Lxh/f;

    .line 53
    .line 54
    iget-object p1, p1, Lxh/b;->f:[Lxh/f;

    .line 55
    .line 56
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const/4 v0, 0x0

    .line 64
    :goto_0
    return v0

    .line 65
    :cond_2
    instance-of v1, p1, Lxh/g;

    .line 66
    .line 67
    if-eqz v1, :cond_4

    .line 68
    .line 69
    invoke-virtual {p0}, Lxh/b;->h()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    sget-object v1, Lsh/d;->c:Lsh/d;

    .line 76
    .line 77
    invoke-virtual {p0, v1}, Lxh/b;->a(Lsh/d;)Lsh/p;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast p1, Lxh/g;

    .line 82
    .line 83
    iget-object p1, p1, Lxh/g;->a:Lsh/p;

    .line 84
    .line 85
    invoke-virtual {v1, p1}, Lsh/p;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_3

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    const/4 v0, 0x0

    .line 93
    :goto_1
    return v0

    .line 94
    :cond_4
    return v2
.end method

.method public final f(I)[Lxh/e;
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget-object v2, p0, Lxh/b;->g:Lj$/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v2, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    check-cast v3, [Lxh/e;

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    return-object v3

    .line 17
    :cond_0
    iget-object v3, p0, Lxh/b;->f:[Lxh/f;

    .line 18
    .line 19
    array-length v4, v3

    .line 20
    new-array v4, v4, [Lxh/e;

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x0

    .line 24
    :goto_0
    array-length v7, v3

    .line 25
    if-ge v6, v7, :cond_5

    .line 26
    .line 27
    aget-object v7, v3, v6

    .line 28
    .line 29
    iget-object v8, v7, Lxh/f;->c:Lsh/b;

    .line 30
    .line 31
    iget-object v9, v7, Lxh/f;->a:Lsh/h;

    .line 32
    .line 33
    iget-byte v10, v7, Lxh/f;->b:B

    .line 34
    .line 35
    if-gez v10, :cond_1

    .line 36
    .line 37
    sget-object v11, Lth/e;->a:Lth/e;

    .line 38
    .line 39
    int-to-long v12, p1

    .line 40
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-static {v12, v13}, Lth/e;->b(J)Z

    .line 44
    .line 45
    .line 46
    move-result v11

    .line 47
    invoke-virtual {v9, v11}, Lsh/h;->o(Z)I

    .line 48
    .line 49
    .line 50
    move-result v11

    .line 51
    add-int/2addr v11, v0

    .line 52
    add-int/2addr v11, v10

    .line 53
    sget-object v10, Lsh/e;->d:Lsh/e;

    .line 54
    .line 55
    sget-object v10, Lwh/a;->D:Lwh/a;

    .line 56
    .line 57
    invoke-virtual {v10, v12, v13}, Lwh/a;->h(J)V

    .line 58
    .line 59
    .line 60
    sget-object v10, Lwh/a;->v:Lwh/a;

    .line 61
    .line 62
    int-to-long v12, v11

    .line 63
    invoke-virtual {v10, v12, v13}, Lwh/a;->h(J)V

    .line 64
    .line 65
    .line 66
    invoke-static {p1, v9, v11}, Lsh/e;->p(ILsh/h;I)Lsh/e;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    if-eqz v8, :cond_2

    .line 71
    .line 72
    new-instance v10, Leb/j;

    .line 73
    .line 74
    invoke-direct {v10, v0, v8}, Leb/j;-><init>(ILsh/b;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v9, v10}, Lsh/e;->D(Lwh/l;)Lsh/e;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    sget-object v11, Lsh/e;->d:Lsh/e;

    .line 83
    .line 84
    sget-object v11, Lwh/a;->D:Lwh/a;

    .line 85
    .line 86
    int-to-long v12, p1

    .line 87
    invoke-virtual {v11, v12, v13}, Lwh/a;->h(J)V

    .line 88
    .line 89
    .line 90
    const-string v11, "month"

    .line 91
    .line 92
    invoke-static {v9, v11}, Lif/a;->t0(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sget-object v11, Lwh/a;->v:Lwh/a;

    .line 96
    .line 97
    int-to-long v12, v10

    .line 98
    invoke-virtual {v11, v12, v13}, Lwh/a;->h(J)V

    .line 99
    .line 100
    .line 101
    invoke-static {p1, v9, v10}, Lsh/e;->p(ILsh/h;I)Lsh/e;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    if-eqz v8, :cond_2

    .line 106
    .line 107
    new-instance v10, Leb/j;

    .line 108
    .line 109
    invoke-direct {v10, v5, v8}, Leb/j;-><init>(ILsh/b;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v9, v10}, Lsh/e;->D(Lwh/l;)Lsh/e;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    :cond_2
    :goto_1
    iget v8, v7, Lxh/f;->e:I

    .line 117
    .line 118
    int-to-long v10, v8

    .line 119
    invoke-virtual {v9, v10, v11}, Lsh/e;->y(J)Lsh/e;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    iget-object v9, v7, Lxh/f;->d:Lsh/g;

    .line 124
    .line 125
    invoke-static {v8, v9}, Lsh/f;->q(Lsh/e;Lsh/g;)Lsh/f;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    iget v9, v7, Lxh/f;->f:I

    .line 130
    .line 131
    invoke-static {v9}, Ld0/f;->c(I)I

    .line 132
    .line 133
    .line 134
    move-result v9

    .line 135
    iget-object v10, v7, Lxh/f;->h:Lsh/p;

    .line 136
    .line 137
    iget v11, v10, Lsh/p;->a:I

    .line 138
    .line 139
    if-eqz v9, :cond_4

    .line 140
    .line 141
    const/4 v12, 0x2

    .line 142
    if-eq v9, v12, :cond_3

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_3
    iget-object v9, v7, Lxh/f;->g:Lsh/p;

    .line 146
    .line 147
    iget v9, v9, Lsh/p;->a:I

    .line 148
    .line 149
    sub-int/2addr v11, v9

    .line 150
    int-to-long v11, v11

    .line 151
    invoke-virtual {v8, v11, v12}, Lsh/f;->t(J)Lsh/f;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    goto :goto_2

    .line 156
    :cond_4
    sget-object v9, Lsh/p;->e:Lsh/p;

    .line 157
    .line 158
    iget v9, v9, Lsh/p;->a:I

    .line 159
    .line 160
    sub-int/2addr v11, v9

    .line 161
    int-to-long v11, v11

    .line 162
    invoke-virtual {v8, v11, v12}, Lsh/f;->t(J)Lsh/f;

    .line 163
    .line 164
    .line 165
    move-result-object v8

    .line 166
    :goto_2
    new-instance v9, Lxh/e;

    .line 167
    .line 168
    iget-object v7, v7, Lxh/f;->i:Lsh/p;

    .line 169
    .line 170
    invoke-direct {v9, v8, v10, v7}, Lxh/e;-><init>(Lsh/f;Lsh/p;Lsh/p;)V

    .line 171
    .line 172
    .line 173
    aput-object v9, v4, v6

    .line 174
    .line 175
    add-int/2addr v6, v0

    .line 176
    goto/16 :goto_0

    .line 177
    .line 178
    :cond_5
    const/16 v0, 0x834

    .line 179
    .line 180
    if-ge p1, v0, :cond_6

    .line 181
    .line 182
    invoke-virtual {v2, v1, v4}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    :cond_6
    return-object v4
.end method

.method public final g(Lsh/f;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget-object v0, p0, Lxh/b;->f:[Lxh/f;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lxh/b;->d:[Lsh/f;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-lez v0, :cond_a

    .line 9
    .line 10
    array-length v0, v2

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    array-length v0, v2

    .line 14
    sub-int/2addr v0, v3

    .line 15
    aget-object v0, v2, v0

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    instance-of v4, v0, Lsh/f;

    .line 21
    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lsh/f;->o(Lsh/f;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-lez v0, :cond_a

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v4, p1, Lsh/f;->a:Lsh/e;

    .line 32
    .line 33
    invoke-virtual {v4}, Lsh/e;->m()J

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    iget-object v6, v0, Lsh/f;->a:Lsh/e;

    .line 38
    .line 39
    invoke-virtual {v6}, Lsh/e;->m()J

    .line 40
    .line 41
    .line 42
    move-result-wide v6

    .line 43
    cmp-long v8, v4, v6

    .line 44
    .line 45
    if-gtz v8, :cond_1

    .line 46
    .line 47
    cmp-long v8, v4, v6

    .line 48
    .line 49
    if-nez v8, :cond_a

    .line 50
    .line 51
    iget-object v4, p1, Lsh/f;->b:Lsh/g;

    .line 52
    .line 53
    invoke-virtual {v4}, Lsh/g;->w()J

    .line 54
    .line 55
    .line 56
    move-result-wide v4

    .line 57
    iget-object v0, v0, Lsh/f;->b:Lsh/g;

    .line 58
    .line 59
    invoke-virtual {v0}, Lsh/g;->w()J

    .line 60
    .line 61
    .line 62
    move-result-wide v6

    .line 63
    cmp-long v0, v4, v6

    .line 64
    .line 65
    if-lez v0, :cond_a

    .line 66
    .line 67
    :cond_1
    :goto_0
    iget-object v0, p1, Lsh/f;->a:Lsh/e;

    .line 68
    .line 69
    iget v0, v0, Lsh/e;->a:I

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Lxh/b;->f(I)[Lxh/e;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    array-length v2, v0

    .line 76
    const/4 v4, 0x0

    .line 77
    const/4 v5, 0x0

    .line 78
    :goto_1
    if-ge v5, v2, :cond_9

    .line 79
    .line 80
    aget-object v4, v0, v5

    .line 81
    .line 82
    iget-object v6, v4, Lxh/e;->a:Lsh/f;

    .line 83
    .line 84
    iget-object v7, v4, Lxh/e;->c:Lsh/p;

    .line 85
    .line 86
    iget v8, v7, Lsh/p;->a:I

    .line 87
    .line 88
    iget-object v9, v4, Lxh/e;->b:Lsh/p;

    .line 89
    .line 90
    iget v10, v9, Lsh/p;->a:I

    .line 91
    .line 92
    if-le v8, v10, :cond_2

    .line 93
    .line 94
    const/4 v8, 0x1

    .line 95
    goto :goto_2

    .line 96
    :cond_2
    const/4 v8, 0x0

    .line 97
    :goto_2
    iget-object v10, v4, Lxh/e;->a:Lsh/f;

    .line 98
    .line 99
    if-eqz v8, :cond_5

    .line 100
    .line 101
    invoke-virtual {p1, v6}, Lsh/f;->p(Lsh/f;)Z

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-eqz v6, :cond_3

    .line 106
    .line 107
    :goto_3
    move-object v4, v9

    .line 108
    goto :goto_5

    .line 109
    :cond_3
    iget v6, v7, Lsh/p;->a:I

    .line 110
    .line 111
    iget v8, v9, Lsh/p;->a:I

    .line 112
    .line 113
    sub-int/2addr v6, v8

    .line 114
    int-to-long v11, v6

    .line 115
    invoke-virtual {v10, v11, v12}, Lsh/f;->t(J)Lsh/f;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    invoke-virtual {p1, v6}, Lsh/f;->p(Lsh/f;)Z

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    if-eqz v6, :cond_4

    .line 124
    .line 125
    goto :goto_5

    .line 126
    :cond_4
    :goto_4
    move-object v4, v7

    .line 127
    goto :goto_5

    .line 128
    :cond_5
    invoke-virtual {p1, v6}, Lsh/f;->p(Lsh/f;)Z

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    if-nez v6, :cond_6

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_6
    iget v6, v7, Lsh/p;->a:I

    .line 136
    .line 137
    iget v7, v9, Lsh/p;->a:I

    .line 138
    .line 139
    sub-int/2addr v6, v7

    .line 140
    int-to-long v6, v6

    .line 141
    invoke-virtual {v10, v6, v7}, Lsh/f;->t(J)Lsh/f;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    invoke-virtual {p1, v6}, Lsh/f;->p(Lsh/f;)Z

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    if-eqz v6, :cond_7

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_7
    :goto_5
    instance-of v6, v4, Lxh/e;

    .line 153
    .line 154
    if-nez v6, :cond_9

    .line 155
    .line 156
    invoke-virtual {v4, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    if-eqz v6, :cond_8

    .line 161
    .line 162
    goto :goto_6

    .line 163
    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_9
    :goto_6
    return-object v4

    .line 167
    :cond_a
    invoke-static {v2, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    const/4 v0, -0x1

    .line 172
    iget-object v4, p0, Lxh/b;->e:[Lsh/p;

    .line 173
    .line 174
    if-ne p1, v0, :cond_b

    .line 175
    .line 176
    aget-object p1, v4, v1

    .line 177
    .line 178
    return-object p1

    .line 179
    :cond_b
    if-gez p1, :cond_c

    .line 180
    .line 181
    neg-int p1, p1

    .line 182
    add-int/lit8 p1, p1, -0x2

    .line 183
    .line 184
    goto :goto_7

    .line 185
    :cond_c
    array-length v0, v2

    .line 186
    sub-int/2addr v0, v3

    .line 187
    if-ge p1, v0, :cond_d

    .line 188
    .line 189
    aget-object v0, v2, p1

    .line 190
    .line 191
    add-int/lit8 v1, p1, 0x1

    .line 192
    .line 193
    aget-object v5, v2, v1

    .line 194
    .line 195
    invoke-virtual {v0, v5}, Lsh/f;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_d

    .line 200
    .line 201
    move p1, v1

    .line 202
    :cond_d
    :goto_7
    and-int/lit8 v0, p1, 0x1

    .line 203
    .line 204
    if-nez v0, :cond_f

    .line 205
    .line 206
    aget-object v0, v2, p1

    .line 207
    .line 208
    add-int/lit8 v1, p1, 0x1

    .line 209
    .line 210
    aget-object v1, v2, v1

    .line 211
    .line 212
    div-int/lit8 p1, p1, 0x2

    .line 213
    .line 214
    aget-object v2, v4, p1

    .line 215
    .line 216
    add-int/2addr p1, v3

    .line 217
    aget-object p1, v4, p1

    .line 218
    .line 219
    iget v3, p1, Lsh/p;->a:I

    .line 220
    .line 221
    iget v4, v2, Lsh/p;->a:I

    .line 222
    .line 223
    if-le v3, v4, :cond_e

    .line 224
    .line 225
    new-instance v1, Lxh/e;

    .line 226
    .line 227
    invoke-direct {v1, v0, v2, p1}, Lxh/e;-><init>(Lsh/f;Lsh/p;Lsh/p;)V

    .line 228
    .line 229
    .line 230
    return-object v1

    .line 231
    :cond_e
    new-instance v0, Lxh/e;

    .line 232
    .line 233
    invoke-direct {v0, v1, v2, p1}, Lxh/e;-><init>(Lsh/f;Lsh/p;Lsh/p;)V

    .line 234
    .line 235
    .line 236
    return-object v0

    .line 237
    :cond_f
    div-int/lit8 p1, p1, 0x2

    .line 238
    .line 239
    add-int/2addr p1, v3

    .line 240
    aget-object p1, v4, p1

    .line 241
    .line 242
    return-object p1
.end method

.method public final h()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lxh/b;->c:[J

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lxh/b;->f:[Lxh/f;

    .line 8
    .line 9
    array-length v0, v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lxh/b;->e:[Lsh/p;

    .line 13
    .line 14
    aget-object v0, v0, v1

    .line 15
    .line 16
    iget-object v2, p0, Lxh/b;->b:[Lsh/p;

    .line 17
    .line 18
    aget-object v2, v2, v1

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lsh/p;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lxh/b;->a:[J

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lxh/b;->b:[Lsh/p;

    .line 8
    .line 9
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    xor-int/2addr v0, v1

    .line 14
    iget-object v1, p0, Lxh/b;->c:[J

    .line 15
    .line 16
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    xor-int/2addr v0, v1

    .line 21
    iget-object v1, p0, Lxh/b;->e:[Lsh/p;

    .line 22
    .line 23
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    xor-int/2addr v0, v1

    .line 28
    iget-object v1, p0, Lxh/b;->f:[Lxh/f;

    .line 29
    .line 30
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    xor-int/2addr v0, v1

    .line 35
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "StandardZoneRules[currentStandardOffset="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lxh/b;->b:[Lsh/p;

    .line 9
    .line 10
    array-length v2, v1

    .line 11
    add-int/lit8 v2, v2, -0x1

    .line 12
    .line 13
    aget-object v1, v1, v2

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "]"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method
