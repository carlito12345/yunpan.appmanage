.class public final Ls4/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lha/j2;

.field public final b:I

.field public c:Ljava/util/ArrayList;

.field public d:I

.field public e:I

.field public final f:I


# direct methods
.method public constructor <init>(Lha/j2;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls4/r;->a:Lha/j2;

    .line 5
    .line 6
    iput p3, p0, Ls4/r;->b:I

    .line 7
    .line 8
    new-instance p1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Ls4/r;->c:Ljava/util/ArrayList;

    .line 14
    .line 15
    const/4 p1, -0x1

    .line 16
    iput p1, p0, Ls4/r;->d:I

    .line 17
    .line 18
    iput p4, p0, Ls4/r;->f:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a(Ls4/h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls4/r;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Ls4/h;->c:Lw4/p;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    instance-of v0, p1, Ls4/p;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    instance-of v0, p1, Ls4/q;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    check-cast p1, Ls4/q;

    .line 20
    .line 21
    :cond_0
    return-void

    .line 22
    :cond_1
    check-cast p1, Ls4/p;

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    throw p1
.end method

.method public final b()V
    .locals 13

    .line 1
    iget-object v0, p0, Ls4/r;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Ls4/r;->b:I

    .line 8
    .line 9
    iget v2, p0, Ls4/r;->d:I

    .line 10
    .line 11
    add-int/2addr v1, v2

    .line 12
    iget v2, p0, Ls4/r;->e:I

    .line 13
    .line 14
    add-int/2addr v1, v2

    .line 15
    iget v2, p0, Ls4/r;->f:I

    .line 16
    .line 17
    sub-int v2, v1, v2

    .line 18
    .line 19
    new-instance v3, Ld3/g;

    .line 20
    .line 21
    const/16 v4, 0x17

    .line 22
    .line 23
    invoke-direct {v3, v1, v4}, Ld3/g;-><init>(II)V

    .line 24
    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    :goto_0
    if-ge v5, v1, :cond_1

    .line 29
    .line 30
    if-lt v5, v2, :cond_0

    .line 31
    .line 32
    add-int/lit8 v6, v5, 0x1

    .line 33
    .line 34
    invoke-virtual {v3, v5, v6}, Ld3/g;->e(II)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    invoke-virtual {v3, v5, v5}, Ld3/g;->e(II)V

    .line 39
    .line 40
    .line 41
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    :goto_2
    if-ge v4, v0, :cond_8

    .line 45
    .line 46
    iget-object v1, p0, Ls4/r;->c:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Ls4/h;

    .line 53
    .line 54
    instance-of v2, v1, Ls4/f;

    .line 55
    .line 56
    if-nez v2, :cond_7

    .line 57
    .line 58
    iget-object v2, p0, Ls4/r;->c:Ljava/util/ArrayList;

    .line 59
    .line 60
    iget-object v5, v1, Ls4/h;->d:Lw4/l;

    .line 61
    .line 62
    iget-object v6, v5, Lb5/c;->b:[Ljava/lang/Object;

    .line 63
    .line 64
    array-length v6, v6

    .line 65
    new-instance v7, Lw4/l;

    .line 66
    .line 67
    invoke-direct {v7, v6}, Lw4/l;-><init>(I)V

    .line 68
    .line 69
    .line 70
    const/4 v8, 0x0

    .line 71
    const/4 v9, 0x0

    .line 72
    :goto_3
    if-ge v9, v6, :cond_5

    .line 73
    .line 74
    invoke-virtual {v5, v9}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    check-cast v10, Lw4/k;

    .line 79
    .line 80
    if-nez v10, :cond_2

    .line 81
    .line 82
    const/4 v10, 0x0

    .line 83
    goto :goto_5

    .line 84
    :cond_2
    :try_start_0
    iget-object v11, v3, Ld3/g;->c:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v11, Lb5/e;

    .line 87
    .line 88
    iget v12, v10, Lw4/k;->a:I

    .line 89
    .line 90
    invoke-virtual {v11, v12}, Lb5/e;->e(I)I

    .line 91
    .line 92
    .line 93
    move-result v11
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    goto :goto_4

    .line 95
    :catch_0
    const/4 v11, -0x1

    .line 96
    :goto_4
    if-ltz v11, :cond_4

    .line 97
    .line 98
    iget v12, v10, Lw4/k;->a:I

    .line 99
    .line 100
    if-ne v12, v11, :cond_3

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_3
    iget-object v10, v10, Lw4/k;->b:Ly4/c;

    .line 104
    .line 105
    invoke-static {v11, v10}, Lw4/k;->d(ILy4/c;)Lw4/k;

    .line 106
    .line 107
    .line 108
    move-result-object v10

    .line 109
    :goto_5
    invoke-virtual {v7, v9, v10}, Lb5/c;->e(ILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    add-int/lit8 v9, v9, 0x1

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    .line 116
    .line 117
    const-string v1, "no mapping specified for register"

    .line 118
    .line 119
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw v0

    .line 123
    :cond_5
    iput-boolean v8, v7, Lb5/f;->a:Z

    .line 124
    .line 125
    invoke-virtual {v7, v5}, Lb5/c;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    if-eqz v6, :cond_6

    .line 130
    .line 131
    goto :goto_6

    .line 132
    :cond_6
    move-object v5, v7

    .line 133
    :goto_6
    invoke-virtual {v1, v5}, Ls4/h;->k(Lw4/l;)Ls4/h;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v2, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_8
    iget v0, p0, Ls4/r;->e:I

    .line 144
    .line 145
    add-int/lit8 v0, v0, 0x1

    .line 146
    .line 147
    iput v0, p0, Ls4/r;->e:I

    .line 148
    .line 149
    return-void
.end method

.method public final c()V
    .locals 5

    .line 1
    iget-object v0, p0, Ls4/r;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    const/4 v2, 0x1

    .line 9
    if-ge v1, v0, :cond_1

    .line 10
    .line 11
    iget-object v3, p0, Ls4/r;->c:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Ls4/h;

    .line 18
    .line 19
    instance-of v4, v3, Ls4/f;

    .line 20
    .line 21
    if-nez v4, :cond_0

    .line 22
    .line 23
    iget-object v4, p0, Ls4/r;->c:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v3, v2}, Ls4/h;->j(I)Ls4/h;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v4, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget v0, p0, Ls4/r;->d:I

    .line 36
    .line 37
    add-int/2addr v0, v2

    .line 38
    iput v0, p0, Ls4/r;->d:I

    .line 39
    .line 40
    return-void
.end method

.method public final d(Ls4/h;)Ls4/j;
    .locals 3

    .line 1
    iget-object v0, p1, Ls4/h;->b:Ls4/j;

    .line 2
    .line 3
    iget-boolean v0, v0, Ls4/j;->e:Z

    .line 4
    .line 5
    iget-object v1, p1, Ls4/h;->d:Lw4/l;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v0, v2}, Lw4/l;->i(ZLjava/util/BitSet;)Lw4/l;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Ls4/h;->k(Lw4/l;)Ls4/h;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p1, Ls4/h;->b:Ls4/j;

    .line 17
    .line 18
    invoke-virtual {p0, v0, v1}, Ls4/r;->e(Ls4/h;Ls4/j;)Ls4/j;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_0
    new-instance v0, Lb5/g;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, "No expanded opcode for "

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {v0, p1}, Lb5/g;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0
.end method

.method public final e(Ls4/h;Ls4/j;)Ls4/j;
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    :goto_0
    if-eqz p2, :cond_3

    .line 3
    .line 4
    iget-object v1, p2, Ls4/j;->d:Ld/b;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ld/b;->Q(Ls4/h;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Ls4/r;->a:Lha/j2;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    sget-object v1, Ls4/k;->a:[Ls4/j;

    .line 19
    .line 20
    iget p2, p2, Ls4/j;->c:I

    .line 21
    .line 22
    if-ne p2, v0, :cond_1

    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    sub-int/2addr p2, v0

    .line 27
    :try_start_0
    sget-object v1, Ls4/k;->a:[Ls4/j;

    .line 28
    .line 29
    aget-object p2, v1, p2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    if-eqz p2, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    const-string p2, "bogus opcode"

    .line 37
    .line 38
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_3
    :goto_1
    return-object p2
.end method

.method public final f([Ls4/j;)Z
    .locals 14

    .line 1
    iget v0, p0, Ls4/r;->d:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-gez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :cond_0
    const/4 v2, 0x0

    .line 8
    :goto_0
    iget-object v3, p0, Ls4/r;->c:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    iget v4, p0, Ls4/r;->d:I

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    :goto_1
    if-ge v5, v3, :cond_6

    .line 18
    .line 19
    iget-object v6, p0, Ls4/r;->c:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    check-cast v6, Ls4/h;

    .line 26
    .line 27
    aget-object v7, p1, v5

    .line 28
    .line 29
    invoke-virtual {p0, v6, v7}, Ls4/r;->e(Ls4/h;Ls4/j;)Ls4/j;

    .line 30
    .line 31
    .line 32
    move-result-object v8

    .line 33
    if-nez v8, :cond_4

    .line 34
    .line 35
    invoke-virtual {p0, v6}, Ls4/r;->d(Ls4/h;)Ls4/j;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    iget-object v7, v7, Ls4/j;->d:Ld/b;

    .line 40
    .line 41
    invoke-virtual {v7, v6}, Ld/b;->k(Ls4/h;)Ljava/util/BitSet;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    iget-object v9, v6, Ls4/h;->b:Ls4/j;

    .line 46
    .line 47
    iget-boolean v9, v9, Ls4/j;->e:Z

    .line 48
    .line 49
    iget-object v6, v6, Ls4/h;->d:Lw4/l;

    .line 50
    .line 51
    iget-object v10, v6, Lb5/c;->b:[Ljava/lang/Object;

    .line 52
    .line 53
    array-length v10, v10

    .line 54
    if-eqz v9, :cond_1

    .line 55
    .line 56
    invoke-virtual {v7, v1}, Ljava/util/BitSet;->get(I)Z

    .line 57
    .line 58
    .line 59
    move-result v11

    .line 60
    if-nez v11, :cond_1

    .line 61
    .line 62
    invoke-virtual {v6, v1}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v11

    .line 66
    check-cast v11, Lw4/k;

    .line 67
    .line 68
    invoke-virtual {v11}, Lw4/k;->c()I

    .line 69
    .line 70
    .line 71
    move-result v11

    .line 72
    goto :goto_2

    .line 73
    :cond_1
    const/4 v11, 0x0

    .line 74
    :goto_2
    const/4 v12, 0x0

    .line 75
    :goto_3
    if-ge v9, v10, :cond_3

    .line 76
    .line 77
    invoke-virtual {v7, v9}, Ljava/util/BitSet;->get(I)Z

    .line 78
    .line 79
    .line 80
    move-result v13

    .line 81
    if-nez v13, :cond_2

    .line 82
    .line 83
    invoke-virtual {v6, v9}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v13

    .line 87
    check-cast v13, Lw4/k;

    .line 88
    .line 89
    invoke-virtual {v13}, Lw4/k;->c()I

    .line 90
    .line 91
    .line 92
    move-result v13

    .line 93
    add-int/2addr v12, v13

    .line 94
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_3
    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    if-le v6, v4, :cond_5

    .line 102
    .line 103
    move v4, v6

    .line 104
    goto :goto_4

    .line 105
    :cond_4
    if-ne v7, v8, :cond_5

    .line 106
    .line 107
    goto :goto_5

    .line 108
    :cond_5
    :goto_4
    aput-object v8, p1, v5

    .line 109
    .line 110
    :goto_5
    add-int/lit8 v5, v5, 0x1

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_6
    if-lt v0, v4, :cond_7

    .line 114
    .line 115
    iput v0, p0, Ls4/r;->d:I

    .line 116
    .line 117
    return v2

    .line 118
    :cond_7
    sub-int v0, v4, v0

    .line 119
    .line 120
    iget-object v2, p0, Ls4/r;->c:Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    const/4 v3, 0x0

    .line 127
    :goto_6
    if-ge v3, v2, :cond_9

    .line 128
    .line 129
    iget-object v5, p0, Ls4/r;->c:Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    check-cast v5, Ls4/h;

    .line 136
    .line 137
    instance-of v6, v5, Ls4/f;

    .line 138
    .line 139
    if-nez v6, :cond_8

    .line 140
    .line 141
    iget-object v6, p0, Ls4/r;->c:Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-virtual {v5, v0}, Ls4/h;->j(I)Ls4/h;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    invoke-virtual {v6, v3, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 151
    .line 152
    goto :goto_6

    .line 153
    :cond_9
    const/4 v2, 0x1

    .line 154
    move v0, v4

    .line 155
    goto/16 :goto_0
.end method
