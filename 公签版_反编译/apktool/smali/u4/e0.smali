.class public final Lu4/e0;
.super Lu4/x;
.source "SourceFile"


# instance fields
.field public final e:Ly4/e;


# direct methods
.method public constructor <init>(Ly4/e;)V
    .locals 2

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lb5/c;

    .line 3
    .line 4
    iget-object v0, v0, Lb5/c;->b:[Ljava/lang/Object;

    .line 5
    .line 6
    array-length v0, v0

    .line 7
    mul-int/lit8 v0, v0, 0x2

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    add-int/2addr v0, v1

    .line 11
    invoke-direct {p0, v1, v0}, Lu4/x;-><init>(II)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lu4/e0;->e:Ly4/e;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(Lu4/f;)V
    .locals 4

    .line 1
    iget-object p1, p1, Lu4/f;->f:Lu4/z;

    .line 2
    .line 3
    iget-object v0, p0, Lu4/e0;->e:Ly4/e;

    .line 4
    .line 5
    move-object v1, v0

    .line 6
    check-cast v1, Lb5/c;

    .line 7
    .line 8
    iget-object v1, v1, Lb5/c;->b:[Ljava/lang/Object;

    .line 9
    .line 10
    array-length v1, v1

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_0

    .line 13
    .line 14
    invoke-interface {v0, v2}, Ly4/e;->b(I)Ly4/c;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {p1, v3}, Lu4/z;->q(Ly4/c;)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method public final b()Lu4/q;
    .locals 1

    .line 1
    sget-object v0, Lu4/q;->l:Lu4/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e(Lu4/x;)I
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    check-cast p1, Lu4/e0;

    .line 3
    .line 4
    iget-object p1, p1, Lu4/e0;->e:Ly4/e;

    .line 5
    .line 6
    sget-object v1, Ly4/b;->c:Ly4/b;

    .line 7
    .line 8
    iget-object v1, p0, Lu4/e0;->e:Ly4/e;

    .line 9
    .line 10
    move-object v2, v1

    .line 11
    check-cast v2, Lb5/c;

    .line 12
    .line 13
    iget-object v2, v2, Lb5/c;->b:[Ljava/lang/Object;

    .line 14
    .line 15
    array-length v2, v2

    .line 16
    move-object v3, p1

    .line 17
    check-cast v3, Lb5/c;

    .line 18
    .line 19
    iget-object v3, v3, Lb5/c;->b:[Ljava/lang/Object;

    .line 20
    .line 21
    array-length v3, v3

    .line 22
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const/4 v5, 0x0

    .line 27
    const/4 v6, 0x0

    .line 28
    :goto_0
    if-ge v6, v4, :cond_1

    .line 29
    .line 30
    invoke-interface {v1, v6}, Ly4/e;->b(I)Ly4/c;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    invoke-interface {p1, v6}, Ly4/e;->b(I)Ly4/c;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    iget-object v7, v7, Ly4/c;->a:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v8, v8, Ly4/c;->a:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    if-eqz v7, :cond_0

    .line 47
    .line 48
    move v0, v7

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    add-int/2addr v6, v0

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    if-ne v2, v3, :cond_2

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    if-ge v2, v3, :cond_3

    .line 57
    .line 58
    const/4 v0, -0x1

    .line 59
    :cond_3
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    sget-object v0, Ly4/b;->c:Ly4/b;

    .line 2
    .line 3
    iget-object v0, p0, Lu4/e0;->e:Ly4/e;

    .line 4
    .line 5
    move-object v1, v0

    .line 6
    check-cast v1, Lb5/c;

    .line 7
    .line 8
    iget-object v1, v1, Lb5/c;->b:[Ljava/lang/Object;

    .line 9
    .line 10
    array-length v1, v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_0

    .line 14
    .line 15
    mul-int/lit8 v3, v3, 0x1f

    .line 16
    .line 17
    invoke-interface {v0, v2}, Ly4/e;->b(I)Ly4/c;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    iget-object v4, v4, Ly4/c;->a:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    add-int/2addr v3, v4

    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return v3
.end method

.method public final k(Lu4/f;Lb5/b;)V
    .locals 8

    .line 1
    iget-object p1, p1, Lu4/f;->f:Lu4/z;

    .line 2
    .line 3
    iget-object v0, p0, Lu4/e0;->e:Ly4/e;

    .line 4
    .line 5
    move-object v1, v0

    .line 6
    check-cast v1, Lb5/c;

    .line 7
    .line 8
    iget-object v1, v1, Lb5/c;->b:[Ljava/lang/Object;

    .line 9
    .line 10
    array-length v1, v1

    .line 11
    invoke-virtual {p2}, Lb5/b;->d()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lu4/x;->g()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v4, " type_list"

    .line 31
    .line 32
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {p2, v3, v2}, Lb5/b;->b(ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Lqf/c;->f0(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-string v4, "  size: "

    .line 47
    .line 48
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const/4 v4, 0x4

    .line 53
    invoke-virtual {p2, v4, v2}, Lb5/b;->b(ILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    :goto_0
    if-ge v2, v1, :cond_0

    .line 58
    .line 59
    invoke-interface {v0, v2}, Ly4/e;->b(I)Ly4/c;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {p1, v4}, Lu4/z;->n(Ly4/c;)I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    new-instance v6, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v7, "  "

    .line 70
    .line 71
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v5}, Lqf/c;->e0(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v5, " // "

    .line 82
    .line 83
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Ly4/c;->a()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    const/4 v5, 0x2

    .line 98
    invoke-virtual {p2, v5, v4}, Lb5/b;->b(ILjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    add-int/lit8 v2, v2, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p2, v1}, Lb5/b;->j(I)V

    .line 105
    .line 106
    .line 107
    :goto_1
    if-ge v3, v1, :cond_1

    .line 108
    .line 109
    invoke-interface {v0, v3}, Ly4/e;->b(I)Ly4/c;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {p1, v2}, Lu4/z;->n(Ly4/c;)I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    invoke-virtual {p2, v2}, Lb5/b;->k(I)V

    .line 118
    .line 119
    .line 120
    add-int/lit8 v3, v3, 0x1

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_1
    return-void
.end method
