.class public final Ly1/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:[Lf2/c1;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Ly1/m0;

.field public h:Z

.field public final i:[Z

.field public final j:[Ly1/a;

.field public final k:Lh2/q;

.field public final l:Lm7/l;

.field public m:Ly1/l0;

.field public n:Lf2/j1;

.field public o:Lh2/r;

.field public p:J


# direct methods
.method public constructor <init>([Ly1/a;JLh2/q;Ls4/a;Lm7/l;Ly1/m0;Lh2/r;)V
    .locals 9

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p6

    .line 4
    move-object/from16 v3, p7

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v1, v0, Ly1/l0;->j:[Ly1/a;

    .line 10
    .line 11
    move-wide v4, p2

    .line 12
    iput-wide v4, v0, Ly1/l0;->p:J

    .line 13
    .line 14
    move-object v4, p4

    .line 15
    iput-object v4, v0, Ly1/l0;->k:Lh2/q;

    .line 16
    .line 17
    iput-object v2, v0, Ly1/l0;->l:Lm7/l;

    .line 18
    .line 19
    iget-object v4, v3, Ly1/m0;->a:Lf2/c0;

    .line 20
    .line 21
    iget-object v5, v4, Lf2/c0;->a:Ljava/lang/Object;

    .line 22
    .line 23
    iput-object v5, v0, Ly1/l0;->b:Ljava/lang/Object;

    .line 24
    .line 25
    iput-object v3, v0, Ly1/l0;->g:Ly1/m0;

    .line 26
    .line 27
    sget-object v5, Lf2/j1;->d:Lf2/j1;

    .line 28
    .line 29
    iput-object v5, v0, Ly1/l0;->n:Lf2/j1;

    .line 30
    .line 31
    move-object/from16 v5, p8

    .line 32
    .line 33
    iput-object v5, v0, Ly1/l0;->o:Lh2/r;

    .line 34
    .line 35
    array-length v5, v1

    .line 36
    new-array v5, v5, [Lf2/c1;

    .line 37
    .line 38
    iput-object v5, v0, Ly1/l0;->c:[Lf2/c1;

    .line 39
    .line 40
    array-length v1, v1

    .line 41
    new-array v1, v1, [Z

    .line 42
    .line 43
    iput-object v1, v0, Ly1/l0;->i:[Z

    .line 44
    .line 45
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    sget v1, Ly1/a1;->k:I

    .line 49
    .line 50
    iget-object v1, v4, Lf2/c0;->a:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v1, Landroid/util/Pair;

    .line 53
    .line 54
    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 55
    .line 56
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 57
    .line 58
    invoke-virtual {v4, v1}, Lf2/c0;->a(Ljava/lang/Object;)Lf2/c0;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget-object v4, v2, Lm7/l;->e:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v4, Ljava/util/HashMap;

    .line 65
    .line 66
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    check-cast v4, Ly1/u0;

    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    iget-object v5, v2, Lm7/l;->h:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v5, Ljava/util/HashSet;

    .line 78
    .line 79
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    iget-object v5, v2, Lm7/l;->g:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v5, Ljava/util/HashMap;

    .line 85
    .line 86
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    check-cast v5, Ly1/t0;

    .line 91
    .line 92
    if-eqz v5, :cond_0

    .line 93
    .line 94
    iget-object v6, v5, Ly1/t0;->b:Ly1/p0;

    .line 95
    .line 96
    iget-object v5, v5, Ly1/t0;->a:Lf2/a;

    .line 97
    .line 98
    invoke-virtual {v5, v6}, Lf2/a;->d(Lf2/d0;)V

    .line 99
    .line 100
    .line 101
    :cond_0
    iget-object v5, v4, Ly1/u0;->c:Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    iget-object v5, v4, Ly1/u0;->a:Lf2/x;

    .line 107
    .line 108
    iget-wide v6, v3, Ly1/m0;->b:J

    .line 109
    .line 110
    move-object v8, p5

    .line 111
    invoke-virtual {v5, v1, p5, v6, v7}, Lf2/x;->B(Lf2/c0;Ls4/a;J)Lf2/u;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iget-object v5, v2, Lm7/l;->d:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v5, Ljava/util/IdentityHashMap;

    .line 118
    .line 119
    invoke-virtual {v5, v1, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p6}, Lm7/l;->d()V

    .line 123
    .line 124
    .line 125
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    iget-wide v6, v3, Ly1/m0;->e:J

    .line 131
    .line 132
    cmp-long v2, v6, v4

    .line 133
    .line 134
    if-eqz v2, :cond_1

    .line 135
    .line 136
    new-instance v2, Lf2/c;

    .line 137
    .line 138
    iget-boolean v3, v3, Ly1/m0;->g:Z

    .line 139
    .line 140
    xor-int/lit8 v3, v3, 0x1

    .line 141
    .line 142
    const-wide/16 v4, 0x0

    .line 143
    .line 144
    move-object p1, v2

    .line 145
    move-object p2, v1

    .line 146
    move p3, v3

    .line 147
    move-wide p4, v4

    .line 148
    move-wide p6, v6

    .line 149
    invoke-direct/range {p1 .. p7}, Lf2/c;-><init>(Lf2/a0;ZJJ)V

    .line 150
    .line 151
    .line 152
    move-object v1, v2

    .line 153
    :cond_1
    iput-object v1, v0, Ly1/l0;->a:Ljava/lang/Object;

    .line 154
    .line 155
    return-void
.end method


# virtual methods
.method public final a(Lh2/r;JZ[Z)J
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    :goto_0
    iget v4, v1, Lh2/r;->a:I

    .line 8
    .line 9
    const/4 v5, 0x1

    .line 10
    if-ge v3, v4, :cond_1

    .line 11
    .line 12
    if-nez p4, :cond_0

    .line 13
    .line 14
    iget-object v4, v0, Ly1/l0;->o:Lh2/r;

    .line 15
    .line 16
    invoke-virtual {v1, v4, v3}, Lh2/r;->a(Lh2/r;I)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 v5, 0x0

    .line 24
    :goto_1
    iget-object v4, v0, Ly1/l0;->i:[Z

    .line 25
    .line 26
    aput-boolean v5, v4, v3

    .line 27
    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v3, 0x0

    .line 32
    :goto_2
    iget-object v4, v0, Ly1/l0;->j:[Ly1/a;

    .line 33
    .line 34
    array-length v6, v4

    .line 35
    const/4 v7, -0x2

    .line 36
    iget-object v8, v0, Ly1/l0;->c:[Lf2/c1;

    .line 37
    .line 38
    if-ge v3, v6, :cond_3

    .line 39
    .line 40
    aget-object v4, v4, v3

    .line 41
    .line 42
    iget v4, v4, Ly1/a;->b:I

    .line 43
    .line 44
    if-ne v4, v7, :cond_2

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    aput-object v4, v8, v3

    .line 48
    .line 49
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ly1/l0;->b()V

    .line 53
    .line 54
    .line 55
    iput-object v1, v0, Ly1/l0;->o:Lh2/r;

    .line 56
    .line 57
    invoke-virtual/range {p0 .. p0}, Ly1/l0;->c()V

    .line 58
    .line 59
    .line 60
    iget-object v9, v0, Ly1/l0;->a:Ljava/lang/Object;

    .line 61
    .line 62
    iget-object v12, v0, Ly1/l0;->c:[Lf2/c1;

    .line 63
    .line 64
    iget-object v10, v1, Lh2/r;->c:[Lh2/p;

    .line 65
    .line 66
    iget-object v11, v0, Ly1/l0;->i:[Z

    .line 67
    .line 68
    move-object/from16 v13, p5

    .line 69
    .line 70
    move-wide/from16 v14, p2

    .line 71
    .line 72
    invoke-interface/range {v9 .. v15}, Lf2/a0;->o([Lh2/p;[Z[Lf2/c1;[ZJ)J

    .line 73
    .line 74
    .line 75
    move-result-wide v9

    .line 76
    const/4 v3, 0x0

    .line 77
    :goto_3
    array-length v6, v4

    .line 78
    if-ge v3, v6, :cond_5

    .line 79
    .line 80
    aget-object v6, v4, v3

    .line 81
    .line 82
    iget v6, v6, Ly1/a;->b:I

    .line 83
    .line 84
    if-ne v6, v7, :cond_4

    .line 85
    .line 86
    iget-object v6, v0, Ly1/l0;->o:Lh2/r;

    .line 87
    .line 88
    invoke-virtual {v6, v3}, Lh2/r;->b(I)Z

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    if-eqz v6, :cond_4

    .line 93
    .line 94
    new-instance v6, Lgf/g;

    .line 95
    .line 96
    const/16 v11, 0x16

    .line 97
    .line 98
    invoke-direct {v6, v11}, Lgf/g;-><init>(I)V

    .line 99
    .line 100
    .line 101
    aput-object v6, v8, v3

    .line 102
    .line 103
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_5
    iput-boolean v2, v0, Ly1/l0;->f:Z

    .line 107
    .line 108
    const/4 v3, 0x0

    .line 109
    :goto_4
    array-length v6, v8

    .line 110
    if-ge v3, v6, :cond_9

    .line 111
    .line 112
    aget-object v6, v8, v3

    .line 113
    .line 114
    if-eqz v6, :cond_6

    .line 115
    .line 116
    invoke-virtual {v1, v3}, Lh2/r;->b(I)Z

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    invoke-static {v6}, La9/o;->t(Z)V

    .line 121
    .line 122
    .line 123
    aget-object v6, v4, v3

    .line 124
    .line 125
    iget v6, v6, Ly1/a;->b:I

    .line 126
    .line 127
    if-eq v6, v7, :cond_8

    .line 128
    .line 129
    iput-boolean v5, v0, Ly1/l0;->f:Z

    .line 130
    .line 131
    goto :goto_6

    .line 132
    :cond_6
    iget-object v6, v1, Lh2/r;->c:[Lh2/p;

    .line 133
    .line 134
    aget-object v6, v6, v3

    .line 135
    .line 136
    if-nez v6, :cond_7

    .line 137
    .line 138
    const/4 v6, 0x1

    .line 139
    goto :goto_5

    .line 140
    :cond_7
    const/4 v6, 0x0

    .line 141
    :goto_5
    invoke-static {v6}, La9/o;->t(Z)V

    .line 142
    .line 143
    .line 144
    :cond_8
    :goto_6
    add-int/lit8 v3, v3, 0x1

    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_9
    return-wide v9
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Ly1/l0;->m:Ly1/l0;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Ly1/l0;->o:Lh2/r;

    .line 7
    .line 8
    iget v2, v1, Lh2/r;->a:I

    .line 9
    .line 10
    if-ge v0, v2, :cond_1

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lh2/r;->b(I)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Ly1/l0;->o:Lh2/r;

    .line 17
    .line 18
    iget-object v2, v2, Lh2/r;->c:[Lh2/p;

    .line 19
    .line 20
    aget-object v2, v2, v0

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {v2}, Lh2/p;->f()V

    .line 27
    .line 28
    .line 29
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Ly1/l0;->m:Ly1/l0;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Ly1/l0;->o:Lh2/r;

    .line 7
    .line 8
    iget v2, v1, Lh2/r;->a:I

    .line 9
    .line 10
    if-ge v0, v2, :cond_1

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lh2/r;->b(I)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Ly1/l0;->o:Lh2/r;

    .line 17
    .line 18
    iget-object v2, v2, Lh2/r;->c:[Lh2/p;

    .line 19
    .line 20
    aget-object v2, v2, v0

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {v2}, Lh2/p;->d()V

    .line 27
    .line 28
    .line 29
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-void
.end method

.method public final d()J
    .locals 5

    .line 1
    iget-boolean v0, p0, Ly1/l0;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ly1/l0;->g:Ly1/m0;

    .line 6
    .line 7
    iget-wide v0, v0, Ly1/m0;->b:J

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget-boolean v0, p0, Ly1/l0;->f:Z

    .line 11
    .line 12
    const-wide/high16 v1, -0x8000000000000000L

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Ly1/l0;->a:Ljava/lang/Object;

    .line 17
    .line 18
    invoke-interface {v0}, Lf2/d1;->p()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move-wide v3, v1

    .line 24
    :goto_0
    cmp-long v0, v3, v1

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Ly1/l0;->g:Ly1/m0;

    .line 29
    .line 30
    iget-wide v3, v0, Ly1/m0;->f:J

    .line 31
    .line 32
    :cond_2
    return-wide v3
.end method

.method public final e()J
    .locals 4

    .line 1
    iget-object v0, p0, Ly1/l0;->g:Ly1/m0;

    .line 2
    .line 3
    iget-wide v0, v0, Ly1/m0;->b:J

    .line 4
    .line 5
    iget-wide v2, p0, Ly1/l0;->p:J

    .line 6
    .line 7
    add-long/2addr v0, v2

    .line 8
    return-wide v0
.end method

.method public final f(FLr1/q0;Z)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ly1/l0;->e:Z

    .line 3
    .line 4
    iget-object v0, p0, Ly1/l0;->a:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-interface {v0}, Lf2/a0;->n()Lf2/j1;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Ly1/l0;->n:Lf2/j1;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2, p3}, Ly1/l0;->j(FLr1/q0;Z)Lh2/r;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object p1, p0, Ly1/l0;->g:Ly1/m0;

    .line 17
    .line 18
    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    iget-wide v0, p1, Ly1/m0;->b:J

    .line 24
    .line 25
    iget-wide v3, p1, Ly1/m0;->f:J

    .line 26
    .line 27
    cmp-long p1, v3, p2

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    cmp-long p1, v0, v3

    .line 32
    .line 33
    if-ltz p1, :cond_0

    .line 34
    .line 35
    const-wide/16 p1, 0x1

    .line 36
    .line 37
    sub-long/2addr v3, p1

    .line 38
    const-wide/16 p1, 0x0

    .line 39
    .line 40
    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 41
    .line 42
    .line 43
    move-result-wide p1

    .line 44
    move-wide v3, p1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move-wide v3, v0

    .line 47
    :goto_0
    iget-object p1, p0, Ly1/l0;->j:[Ly1/a;

    .line 48
    .line 49
    array-length p1, p1

    .line 50
    new-array v6, p1, [Z

    .line 51
    .line 52
    const/4 v5, 0x0

    .line 53
    move-object v1, p0

    .line 54
    invoke-virtual/range {v1 .. v6}, Ly1/l0;->a(Lh2/r;JZ[Z)J

    .line 55
    .line 56
    .line 57
    move-result-wide p1

    .line 58
    iget-wide v0, p0, Ly1/l0;->p:J

    .line 59
    .line 60
    iget-object p3, p0, Ly1/l0;->g:Ly1/m0;

    .line 61
    .line 62
    iget-wide v2, p3, Ly1/m0;->b:J

    .line 63
    .line 64
    sub-long/2addr v2, p1

    .line 65
    add-long/2addr v2, v0

    .line 66
    iput-wide v2, p0, Ly1/l0;->p:J

    .line 67
    .line 68
    iget-wide v0, p3, Ly1/m0;->c:J

    .line 69
    .line 70
    invoke-virtual {p3, p1, p2, v0, v1}, Ly1/m0;->b(JJ)Ly1/m0;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Ly1/l0;->g:Ly1/m0;

    .line 75
    .line 76
    return-void
.end method

.method public final g()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Ly1/l0;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Ly1/l0;->f:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Ly1/l0;->a:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-interface {v0}, Lf2/d1;->p()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    const-wide/high16 v2, -0x8000000000000000L

    .line 16
    .line 17
    cmp-long v4, v0, v2

    .line 18
    .line 19
    if-nez v4, :cond_1

    .line 20
    .line 21
    :cond_0
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method

.method public final h()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Ly1/l0;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Ly1/l0;->g()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Ly1/l0;->d()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-object v2, p0, Ly1/l0;->g:Ly1/m0;

    .line 16
    .line 17
    iget-wide v2, v2, Ly1/m0;->b:J

    .line 18
    .line 19
    sub-long/2addr v0, v2

    .line 20
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    cmp-long v4, v0, v2

    .line 26
    .line 27
    if-ltz v4, :cond_1

    .line 28
    .line 29
    :cond_0
    const/4 v0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0
.end method

.method public final i()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ly1/l0;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ly1/l0;->a:Ljava/lang/Object;

    .line 5
    .line 6
    :try_start_0
    instance-of v1, v0, Lf2/c;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    iget-object v2, p0, Ly1/l0;->l:Lm7/l;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    :try_start_1
    check-cast v0, Lf2/c;

    .line 13
    .line 14
    iget-object v0, v0, Lf2/c;->a:Lf2/a0;

    .line 15
    .line 16
    invoke-virtual {v2, v0}, Lm7/l;->h(Lf2/a0;)V

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :catch_0
    move-exception v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v2, v0}, Lm7/l;->h(Lf2/a0;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :goto_0
    const-string v1, "Period release failed."

    .line 27
    .line 28
    invoke-static {v1, v0}, Lu1/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    :goto_1
    return-void
.end method

.method public final j(FLr1/q0;Z)Lh2/r;
    .locals 33

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x5

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x1

    .line 6
    iget-object v5, v1, Ly1/l0;->k:Lh2/q;

    .line 7
    .line 8
    iget-object v6, v1, Ly1/l0;->j:[Ly1/a;

    .line 9
    .line 10
    iget-object v7, v1, Ly1/l0;->n:Lf2/j1;

    .line 11
    .line 12
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    array-length v8, v6

    .line 16
    add-int/2addr v8, v4

    .line 17
    new-array v8, v8, [I

    .line 18
    .line 19
    array-length v9, v6

    .line 20
    add-int/2addr v9, v4

    .line 21
    new-array v10, v9, [[Lr1/r0;

    .line 22
    .line 23
    array-length v11, v6

    .line 24
    add-int/2addr v11, v4

    .line 25
    new-array v11, v11, [[[I

    .line 26
    .line 27
    invoke-static {v3, v3, v3, v3}, Lta/q;->a(IIII)I

    .line 28
    .line 29
    .line 30
    move-result v15

    .line 31
    const/4 v12, 0x0

    .line 32
    :goto_0
    if-ge v12, v9, :cond_0

    .line 33
    .line 34
    iget v13, v7, Lf2/j1;->a:I

    .line 35
    .line 36
    new-array v14, v13, [Lr1/r0;

    .line 37
    .line 38
    aput-object v14, v10, v12

    .line 39
    .line 40
    new-array v13, v13, [[I

    .line 41
    .line 42
    aput-object v13, v11, v12

    .line 43
    .line 44
    add-int/2addr v12, v4

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    array-length v9, v6

    .line 47
    new-array v14, v9, [I

    .line 48
    .line 49
    const/4 v12, 0x0

    .line 50
    :goto_1
    if-ge v12, v9, :cond_1

    .line 51
    .line 52
    aget-object v13, v6, v12

    .line 53
    .line 54
    invoke-virtual {v13}, Ly1/a;->C()I

    .line 55
    .line 56
    .line 57
    move-result v13

    .line 58
    aput v13, v14, v12

    .line 59
    .line 60
    add-int/2addr v12, v4

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    const/4 v9, 0x0

    .line 63
    :goto_2
    iget v12, v7, Lf2/j1;->a:I

    .line 64
    .line 65
    if-ge v9, v12, :cond_a

    .line 66
    .line 67
    invoke-virtual {v7, v9}, Lf2/j1;->a(I)Lr1/r0;

    .line 68
    .line 69
    .line 70
    move-result-object v12

    .line 71
    iget v13, v12, Lr1/r0;->c:I

    .line 72
    .line 73
    if-ne v13, v2, :cond_2

    .line 74
    .line 75
    const/4 v13, 0x1

    .line 76
    goto :goto_3

    .line 77
    :cond_2
    const/4 v13, 0x0

    .line 78
    :goto_3
    array-length v0, v6

    .line 79
    const/4 v2, 0x0

    .line 80
    const/16 v16, 0x1

    .line 81
    .line 82
    :goto_4
    array-length v4, v6

    .line 83
    if-ge v2, v4, :cond_7

    .line 84
    .line 85
    aget-object v4, v6, v2

    .line 86
    .line 87
    move-object/from16 v17, v7

    .line 88
    .line 89
    move-object/from16 v18, v14

    .line 90
    .line 91
    move/from16 v19, v15

    .line 92
    .line 93
    const/4 v7, 0x0

    .line 94
    const/4 v14, 0x0

    .line 95
    :goto_5
    iget v15, v12, Lr1/r0;->a:I

    .line 96
    .line 97
    if-ge v7, v15, :cond_3

    .line 98
    .line 99
    iget-object v15, v12, Lr1/r0;->d:[Lr1/p;

    .line 100
    .line 101
    aget-object v15, v15, v7

    .line 102
    .line 103
    invoke-virtual {v4, v15}, Ly1/a;->B(Lr1/p;)I

    .line 104
    .line 105
    .line 106
    move-result v15

    .line 107
    and-int/lit8 v15, v15, 0x7

    .line 108
    .line 109
    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    .line 110
    .line 111
    .line 112
    move-result v14

    .line 113
    const/4 v15, 0x1

    .line 114
    add-int/2addr v7, v15

    .line 115
    goto :goto_5

    .line 116
    :cond_3
    aget v4, v8, v2

    .line 117
    .line 118
    if-nez v4, :cond_4

    .line 119
    .line 120
    const/4 v4, 0x1

    .line 121
    goto :goto_6

    .line 122
    :cond_4
    const/4 v4, 0x0

    .line 123
    :goto_6
    if-gt v14, v3, :cond_6

    .line 124
    .line 125
    if-ne v14, v3, :cond_5

    .line 126
    .line 127
    if-eqz v13, :cond_5

    .line 128
    .line 129
    if-nez v16, :cond_5

    .line 130
    .line 131
    if-eqz v4, :cond_5

    .line 132
    .line 133
    goto :goto_8

    .line 134
    :cond_5
    :goto_7
    const/4 v4, 0x1

    .line 135
    goto :goto_9

    .line 136
    :cond_6
    :goto_8
    move v0, v2

    .line 137
    move/from16 v16, v4

    .line 138
    .line 139
    move v3, v14

    .line 140
    goto :goto_7

    .line 141
    :goto_9
    add-int/2addr v2, v4

    .line 142
    move-object/from16 v7, v17

    .line 143
    .line 144
    move-object/from16 v14, v18

    .line 145
    .line 146
    move/from16 v15, v19

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_7
    move-object/from16 v17, v7

    .line 150
    .line 151
    move-object/from16 v18, v14

    .line 152
    .line 153
    move/from16 v19, v15

    .line 154
    .line 155
    array-length v2, v6

    .line 156
    if-ne v0, v2, :cond_8

    .line 157
    .line 158
    iget v2, v12, Lr1/r0;->a:I

    .line 159
    .line 160
    new-array v2, v2, [I

    .line 161
    .line 162
    const/4 v7, 0x1

    .line 163
    goto :goto_b

    .line 164
    :cond_8
    aget-object v2, v6, v0

    .line 165
    .line 166
    iget v3, v12, Lr1/r0;->a:I

    .line 167
    .line 168
    new-array v3, v3, [I

    .line 169
    .line 170
    const/4 v4, 0x0

    .line 171
    :goto_a
    iget v7, v12, Lr1/r0;->a:I

    .line 172
    .line 173
    if-ge v4, v7, :cond_9

    .line 174
    .line 175
    iget-object v7, v12, Lr1/r0;->d:[Lr1/p;

    .line 176
    .line 177
    aget-object v7, v7, v4

    .line 178
    .line 179
    invoke-virtual {v2, v7}, Ly1/a;->B(Lr1/p;)I

    .line 180
    .line 181
    .line 182
    move-result v7

    .line 183
    aput v7, v3, v4

    .line 184
    .line 185
    const/4 v7, 0x1

    .line 186
    add-int/2addr v4, v7

    .line 187
    goto :goto_a

    .line 188
    :cond_9
    const/4 v7, 0x1

    .line 189
    move-object v2, v3

    .line 190
    :goto_b
    aget v3, v8, v0

    .line 191
    .line 192
    aget-object v4, v10, v0

    .line 193
    .line 194
    aput-object v12, v4, v3

    .line 195
    .line 196
    aget-object v4, v11, v0

    .line 197
    .line 198
    aput-object v2, v4, v3

    .line 199
    .line 200
    add-int/2addr v3, v7

    .line 201
    aput v3, v8, v0

    .line 202
    .line 203
    add-int/2addr v9, v7

    .line 204
    move-object/from16 v7, v17

    .line 205
    .line 206
    move-object/from16 v14, v18

    .line 207
    .line 208
    move/from16 v15, v19

    .line 209
    .line 210
    const/4 v2, 0x5

    .line 211
    const/4 v3, 0x0

    .line 212
    const/4 v4, 0x1

    .line 213
    goto/16 :goto_2

    .line 214
    .line 215
    :cond_a
    move-object/from16 v18, v14

    .line 216
    .line 217
    move/from16 v19, v15

    .line 218
    .line 219
    array-length v0, v6

    .line 220
    new-array v0, v0, [Lf2/j1;

    .line 221
    .line 222
    array-length v2, v6

    .line 223
    new-array v2, v2, [Ljava/lang/String;

    .line 224
    .line 225
    array-length v3, v6

    .line 226
    new-array v3, v3, [I

    .line 227
    .line 228
    const/4 v4, 0x0

    .line 229
    :goto_c
    array-length v7, v6

    .line 230
    if-ge v4, v7, :cond_b

    .line 231
    .line 232
    aget v7, v8, v4

    .line 233
    .line 234
    new-instance v9, Lf2/j1;

    .line 235
    .line 236
    aget-object v12, v10, v4

    .line 237
    .line 238
    invoke-static {v7, v12}, Lu1/f0;->I(I[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v12

    .line 242
    check-cast v12, [Lr1/r0;

    .line 243
    .line 244
    invoke-direct {v9, v12}, Lf2/j1;-><init>([Lr1/r0;)V

    .line 245
    .line 246
    .line 247
    aput-object v9, v0, v4

    .line 248
    .line 249
    aget-object v9, v11, v4

    .line 250
    .line 251
    invoke-static {v7, v9}, Lu1/f0;->I(I[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v7

    .line 255
    check-cast v7, [[I

    .line 256
    .line 257
    aput-object v7, v11, v4

    .line 258
    .line 259
    aget-object v7, v6, v4

    .line 260
    .line 261
    invoke-virtual {v7}, Ly1/a;->j()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v7

    .line 265
    aput-object v7, v2, v4

    .line 266
    .line 267
    aget-object v7, v6, v4

    .line 268
    .line 269
    iget v7, v7, Ly1/a;->b:I

    .line 270
    .line 271
    aput v7, v3, v4

    .line 272
    .line 273
    const/4 v7, 0x1

    .line 274
    add-int/2addr v4, v7

    .line 275
    goto :goto_c

    .line 276
    :cond_b
    array-length v2, v6

    .line 277
    aget v2, v8, v2

    .line 278
    .line 279
    new-instance v4, Lf2/j1;

    .line 280
    .line 281
    array-length v6, v6

    .line 282
    aget-object v6, v10, v6

    .line 283
    .line 284
    invoke-static {v2, v6}, Lu1/f0;->I(I[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    check-cast v2, [Lr1/r0;

    .line 289
    .line 290
    invoke-direct {v4, v2}, Lf2/j1;-><init>([Lr1/r0;)V

    .line 291
    .line 292
    .line 293
    new-instance v2, Lb5/i;

    .line 294
    .line 295
    move-object v12, v2

    .line 296
    move-object v13, v3

    .line 297
    move-object/from16 v6, v18

    .line 298
    .line 299
    move-object v14, v0

    .line 300
    move/from16 v7, v19

    .line 301
    .line 302
    move-object v15, v6

    .line 303
    move-object/from16 v16, v11

    .line 304
    .line 305
    move-object/from16 v17, v4

    .line 306
    .line 307
    invoke-direct/range {v12 .. v17}, Lb5/i;-><init>([I[Lf2/j1;[I[[[ILf2/j1;)V

    .line 308
    .line 309
    .line 310
    check-cast v5, Lh2/n;

    .line 311
    .line 312
    iget-object v4, v5, Lh2/n;->c:Ljava/lang/Object;

    .line 313
    .line 314
    monitor-enter v4

    .line 315
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 316
    .line 317
    .line 318
    move-result-object v8

    .line 319
    iput-object v8, v5, Lh2/n;->g:Ljava/lang/Thread;

    .line 320
    .line 321
    iget-object v8, v5, Lh2/n;->f:Lh2/i;

    .line 322
    .line 323
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    iget-object v4, v5, Lh2/n;->j:Ljava/lang/Boolean;

    .line 325
    .line 326
    if-nez v4, :cond_c

    .line 327
    .line 328
    iget-object v4, v5, Lh2/n;->d:Landroid/content/Context;

    .line 329
    .line 330
    if-eqz v4, :cond_c

    .line 331
    .line 332
    invoke-static {v4}, Lu1/f0;->F(Landroid/content/Context;)Z

    .line 333
    .line 334
    .line 335
    move-result v4

    .line 336
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    iput-object v4, v5, Lh2/n;->j:Ljava/lang/Boolean;

    .line 341
    .line 342
    :cond_c
    iget-boolean v4, v8, Lh2/i;->B:Z

    .line 343
    .line 344
    if-eqz v4, :cond_d

    .line 345
    .line 346
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 347
    .line 348
    const/16 v9, 0x20

    .line 349
    .line 350
    if-lt v4, v9, :cond_d

    .line 351
    .line 352
    iget-object v4, v5, Lh2/n;->h:Lj2/d;

    .line 353
    .line 354
    if-nez v4, :cond_d

    .line 355
    .line 356
    new-instance v4, Lj2/d;

    .line 357
    .line 358
    iget-object v9, v5, Lh2/n;->d:Landroid/content/Context;

    .line 359
    .line 360
    new-instance v10, La2/h;

    .line 361
    .line 362
    const/16 v12, 0x15

    .line 363
    .line 364
    invoke-direct {v10, v12, v5}, La2/h;-><init>(ILjava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    iget-object v12, v5, Lh2/n;->j:Ljava/lang/Boolean;

    .line 368
    .line 369
    invoke-direct {v4, v9, v10, v12}, Lj2/d;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Boolean;)V

    .line 370
    .line 371
    .line 372
    iput-object v4, v5, Lh2/n;->h:Lj2/d;

    .line 373
    .line 374
    :cond_d
    iget v4, v2, Lb5/i;->a:I

    .line 375
    .line 376
    new-array v9, v4, [Lh2/o;

    .line 377
    .line 378
    invoke-static {v2, v8, v9}, Lh2/n;->g(Lb5/i;Lh2/i;[Lh2/o;)V

    .line 379
    .line 380
    .line 381
    invoke-static {v2, v8, v9}, Lh2/n;->e(Lb5/i;Lh2/i;[Lh2/o;)V

    .line 382
    .line 383
    .line 384
    invoke-static {v2, v8, v9}, Lh2/n;->f(Lb5/i;Lh2/i;[Lh2/o;)V

    .line 385
    .line 386
    .line 387
    iget v10, v2, Lb5/i;->a:I

    .line 388
    .line 389
    const/4 v12, 0x1

    .line 390
    invoke-static {v9, v12}, Lh2/n;->i([Lh2/o;I)Landroid/util/Pair;

    .line 391
    .line 392
    .line 393
    move-result-object v13

    .line 394
    iget v12, v2, Lb5/i;->a:I

    .line 395
    .line 396
    const/4 v14, 0x2

    .line 397
    if-nez v13, :cond_10

    .line 398
    .line 399
    const/4 v13, 0x0

    .line 400
    :goto_d
    if-ge v13, v12, :cond_f

    .line 401
    .line 402
    aget v15, v3, v13

    .line 403
    .line 404
    if-ne v14, v15, :cond_e

    .line 405
    .line 406
    aget-object v15, v0, v13

    .line 407
    .line 408
    iget v15, v15, Lf2/j1;->a:I

    .line 409
    .line 410
    if-lez v15, :cond_e

    .line 411
    .line 412
    const/4 v13, 0x1

    .line 413
    const/4 v15, 0x1

    .line 414
    goto :goto_e

    .line 415
    :cond_e
    const/4 v15, 0x1

    .line 416
    add-int/2addr v13, v15

    .line 417
    goto :goto_d

    .line 418
    :cond_f
    const/4 v15, 0x1

    .line 419
    const/4 v13, 0x0

    .line 420
    :goto_e
    new-instance v14, Lh2/d;

    .line 421
    .line 422
    invoke-direct {v14, v5, v8, v13, v6}, Lh2/d;-><init>(Lh2/n;Lh2/i;Z[I)V

    .line 423
    .line 424
    .line 425
    new-instance v13, La2/m;

    .line 426
    .line 427
    const/16 v1, 0xe

    .line 428
    .line 429
    invoke-direct {v13, v1}, La2/m;-><init>(I)V

    .line 430
    .line 431
    .line 432
    invoke-static {v15, v2, v11, v14, v13}, Lh2/n;->p(ILb5/i;[[[ILh2/k;Ljava/util/Comparator;)Landroid/util/Pair;

    .line 433
    .line 434
    .line 435
    move-result-object v13

    .line 436
    if-eqz v13, :cond_10

    .line 437
    .line 438
    iget-object v1, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 439
    .line 440
    check-cast v1, Ljava/lang/Integer;

    .line 441
    .line 442
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 443
    .line 444
    .line 445
    move-result v1

    .line 446
    iget-object v14, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 447
    .line 448
    check-cast v14, Lh2/o;

    .line 449
    .line 450
    aput-object v14, v9, v1

    .line 451
    .line 452
    :cond_10
    if-nez v13, :cond_11

    .line 453
    .line 454
    const/4 v1, 0x0

    .line 455
    :goto_f
    const/4 v13, 0x2

    .line 456
    goto :goto_10

    .line 457
    :cond_11
    iget-object v1, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 458
    .line 459
    check-cast v1, Lh2/o;

    .line 460
    .line 461
    iget-object v13, v1, Lh2/o;->a:Lr1/r0;

    .line 462
    .line 463
    iget-object v1, v1, Lh2/o;->b:[I

    .line 464
    .line 465
    const/4 v14, 0x0

    .line 466
    aget v1, v1, v14

    .line 467
    .line 468
    iget-object v13, v13, Lr1/r0;->d:[Lr1/p;

    .line 469
    .line 470
    aget-object v1, v13, v1

    .line 471
    .line 472
    iget-object v1, v1, Lr1/p;->d:Ljava/lang/String;

    .line 473
    .line 474
    goto :goto_f

    .line 475
    :goto_10
    invoke-static {v9, v13}, Lh2/n;->i([Lh2/o;I)Landroid/util/Pair;

    .line 476
    .line 477
    .line 478
    move-result-object v14

    .line 479
    const/4 v13, 0x4

    .line 480
    invoke-static {v9, v13}, Lh2/n;->i([Lh2/o;I)Landroid/util/Pair;

    .line 481
    .line 482
    .line 483
    move-result-object v15

    .line 484
    iget-object v13, v5, Lh2/n;->d:Landroid/content/Context;

    .line 485
    .line 486
    if-nez v14, :cond_15

    .line 487
    .line 488
    if-nez v15, :cond_15

    .line 489
    .line 490
    iget-object v14, v8, Lr1/v0;->q:Lr1/t0;

    .line 491
    .line 492
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 493
    .line 494
    .line 495
    iget-boolean v14, v8, Lr1/v0;->g:Z

    .line 496
    .line 497
    if-eqz v14, :cond_12

    .line 498
    .line 499
    if-eqz v13, :cond_12

    .line 500
    .line 501
    invoke-static {v13}, Lu1/f0;->p(Landroid/content/Context;)Landroid/graphics/Point;

    .line 502
    .line 503
    .line 504
    move-result-object v14

    .line 505
    move-object/from16 v20, v14

    .line 506
    .line 507
    goto :goto_11

    .line 508
    :cond_12
    const/16 v20, 0x0

    .line 509
    .line 510
    :goto_11
    new-instance v14, Landroidx/fragment/app/f;

    .line 511
    .line 512
    const/16 v21, 0x3

    .line 513
    .line 514
    move-object/from16 v16, v14

    .line 515
    .line 516
    move-object/from16 v17, v8

    .line 517
    .line 518
    move-object/from16 v18, v1

    .line 519
    .line 520
    move-object/from16 v19, v6

    .line 521
    .line 522
    invoke-direct/range {v16 .. v21}, Landroidx/fragment/app/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 523
    .line 524
    .line 525
    new-instance v6, La2/m;

    .line 526
    .line 527
    const/16 v15, 0xd

    .line 528
    .line 529
    invoke-direct {v6, v15}, La2/m;-><init>(I)V

    .line 530
    .line 531
    .line 532
    const/4 v15, 0x2

    .line 533
    invoke-static {v15, v2, v11, v14, v6}, Lh2/n;->p(ILb5/i;[[[ILh2/k;Ljava/util/Comparator;)Landroid/util/Pair;

    .line 534
    .line 535
    .line 536
    move-result-object v6

    .line 537
    if-nez v6, :cond_13

    .line 538
    .line 539
    iget-object v14, v8, Lr1/v0;->q:Lr1/t0;

    .line 540
    .line 541
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 542
    .line 543
    .line 544
    new-instance v14, La1/d;

    .line 545
    .line 546
    const/4 v15, 0x5

    .line 547
    invoke-direct {v14, v15, v8}, La1/d;-><init>(ILjava/lang/Object;)V

    .line 548
    .line 549
    .line 550
    new-instance v15, La2/m;

    .line 551
    .line 552
    move-object/from16 v16, v5

    .line 553
    .line 554
    const/16 v5, 0xc

    .line 555
    .line 556
    invoke-direct {v15, v5}, La2/m;-><init>(I)V

    .line 557
    .line 558
    .line 559
    const/4 v5, 0x4

    .line 560
    invoke-static {v5, v2, v11, v14, v15}, Lh2/n;->p(ILb5/i;[[[ILh2/k;Ljava/util/Comparator;)Landroid/util/Pair;

    .line 561
    .line 562
    .line 563
    move-result-object v14

    .line 564
    goto :goto_12

    .line 565
    :cond_13
    move-object/from16 v16, v5

    .line 566
    .line 567
    const/4 v14, 0x0

    .line 568
    :goto_12
    if-eqz v14, :cond_14

    .line 569
    .line 570
    iget-object v5, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 571
    .line 572
    check-cast v5, Ljava/lang/Integer;

    .line 573
    .line 574
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 575
    .line 576
    .line 577
    move-result v5

    .line 578
    iget-object v6, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 579
    .line 580
    check-cast v6, Lh2/o;

    .line 581
    .line 582
    aput-object v6, v9, v5

    .line 583
    .line 584
    goto :goto_13

    .line 585
    :cond_14
    if-eqz v6, :cond_16

    .line 586
    .line 587
    iget-object v5, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 588
    .line 589
    check-cast v5, Ljava/lang/Integer;

    .line 590
    .line 591
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 592
    .line 593
    .line 594
    move-result v5

    .line 595
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 596
    .line 597
    check-cast v6, Lh2/o;

    .line 598
    .line 599
    aput-object v6, v9, v5

    .line 600
    .line 601
    goto :goto_13

    .line 602
    :cond_15
    move-object/from16 v16, v5

    .line 603
    .line 604
    :cond_16
    :goto_13
    const/4 v5, 0x3

    .line 605
    invoke-static {v9, v5}, Lh2/n;->i([Lh2/o;I)Landroid/util/Pair;

    .line 606
    .line 607
    .line 608
    move-result-object v6

    .line 609
    if-nez v6, :cond_1b

    .line 610
    .line 611
    iget-object v6, v8, Lr1/v0;->q:Lr1/t0;

    .line 612
    .line 613
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 614
    .line 615
    .line 616
    iget-boolean v6, v8, Lr1/v0;->t:Z

    .line 617
    .line 618
    if-eqz v6, :cond_1a

    .line 619
    .line 620
    if-nez v13, :cond_17

    .line 621
    .line 622
    goto :goto_14

    .line 623
    :cond_17
    const-string v6, "captioning"

    .line 624
    .line 625
    invoke-virtual {v13, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object v6

    .line 629
    invoke-static {v6}, Lcom/hierynomus/security/jce/a;->d(Ljava/lang/Object;)Landroid/view/accessibility/CaptioningManager;

    .line 630
    .line 631
    .line 632
    move-result-object v6

    .line 633
    if-eqz v6, :cond_1a

    .line 634
    .line 635
    invoke-static {v6}, Lcom/hierynomus/security/jce/a;->x(Landroid/view/accessibility/CaptioningManager;)Z

    .line 636
    .line 637
    .line 638
    move-result v13

    .line 639
    if-nez v13, :cond_18

    .line 640
    .line 641
    goto :goto_14

    .line 642
    :cond_18
    invoke-static {v6}, Lcom/hierynomus/security/jce/a;->j(Landroid/view/accessibility/CaptioningManager;)Ljava/util/Locale;

    .line 643
    .line 644
    .line 645
    move-result-object v6

    .line 646
    if-nez v6, :cond_19

    .line 647
    .line 648
    goto :goto_14

    .line 649
    :cond_19
    sget-object v13, Lu1/f0;->a:Ljava/lang/String;

    .line 650
    .line 651
    invoke-static {v6}, Lm0/o;->i(Ljava/util/Locale;)Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v6

    .line 655
    goto :goto_15

    .line 656
    :cond_1a
    :goto_14
    const/4 v6, 0x0

    .line 657
    :goto_15
    new-instance v13, Lcom/hjq/permissions/b;

    .line 658
    .line 659
    const/4 v14, 0x1

    .line 660
    invoke-direct {v13, v8, v1, v6, v14}, Lcom/hjq/permissions/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 661
    .line 662
    .line 663
    new-instance v1, La2/m;

    .line 664
    .line 665
    const/16 v6, 0xa

    .line 666
    .line 667
    invoke-direct {v1, v6}, La2/m;-><init>(I)V

    .line 668
    .line 669
    .line 670
    invoke-static {v5, v2, v11, v13, v1}, Lh2/n;->p(ILb5/i;[[[ILh2/k;Ljava/util/Comparator;)Landroid/util/Pair;

    .line 671
    .line 672
    .line 673
    move-result-object v1

    .line 674
    if-eqz v1, :cond_1b

    .line 675
    .line 676
    iget-object v6, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 677
    .line 678
    check-cast v6, Ljava/lang/Integer;

    .line 679
    .line 680
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 681
    .line 682
    .line 683
    move-result v6

    .line 684
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 685
    .line 686
    check-cast v1, Lh2/o;

    .line 687
    .line 688
    aput-object v1, v9, v6

    .line 689
    .line 690
    :cond_1b
    iget-object v1, v8, Lr1/v0;->q:Lr1/t0;

    .line 691
    .line 692
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 693
    .line 694
    .line 695
    sget v1, Lu7/j0;->c:I

    .line 696
    .line 697
    new-instance v1, Lu7/i0;

    .line 698
    .line 699
    invoke-direct {v1}, Lu7/i0;-><init>()V

    .line 700
    .line 701
    .line 702
    const/4 v6, 0x0

    .line 703
    :goto_16
    if-ge v6, v4, :cond_1e

    .line 704
    .line 705
    aget-object v13, v9, v6

    .line 706
    .line 707
    if-eqz v13, :cond_1d

    .line 708
    .line 709
    iget-object v14, v8, Lh2/i;->F:Landroid/util/SparseBooleanArray;

    .line 710
    .line 711
    invoke-virtual {v14, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 712
    .line 713
    .line 714
    move-result v14

    .line 715
    if-nez v14, :cond_1d

    .line 716
    .line 717
    iget-object v14, v13, Lh2/o;->a:Lr1/r0;

    .line 718
    .line 719
    iget v15, v14, Lr1/r0;->c:I

    .line 720
    .line 721
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 722
    .line 723
    .line 724
    move-result-object v15

    .line 725
    iget-object v5, v8, Lr1/v0;->w:Lu7/j0;

    .line 726
    .line 727
    invoke-virtual {v5, v15}, Lu7/b0;->contains(Ljava/lang/Object;)Z

    .line 728
    .line 729
    .line 730
    move-result v5

    .line 731
    if-nez v5, :cond_1d

    .line 732
    .line 733
    iget-object v5, v14, Lr1/r0;->b:Ljava/lang/String;

    .line 734
    .line 735
    invoke-virtual {v1, v5}, Lu7/i0;->g(Ljava/lang/Object;)V

    .line 736
    .line 737
    .line 738
    const/4 v5, 0x0

    .line 739
    :goto_17
    iget-object v15, v13, Lh2/o;->b:[I

    .line 740
    .line 741
    move-object/from16 v18, v13

    .line 742
    .line 743
    array-length v13, v15

    .line 744
    if-ge v5, v13, :cond_1d

    .line 745
    .line 746
    aget v13, v15, v5

    .line 747
    .line 748
    iget-object v15, v14, Lr1/r0;->d:[Lr1/p;

    .line 749
    .line 750
    aget-object v13, v15, v13

    .line 751
    .line 752
    iget-object v13, v13, Lr1/p;->m:Ljava/lang/String;

    .line 753
    .line 754
    if-eqz v13, :cond_1c

    .line 755
    .line 756
    invoke-virtual {v1, v13}, Lu7/a0;->b(Ljava/lang/Object;)V

    .line 757
    .line 758
    .line 759
    :cond_1c
    const/4 v13, 0x1

    .line 760
    add-int/2addr v5, v13

    .line 761
    move-object/from16 v13, v18

    .line 762
    .line 763
    goto :goto_17

    .line 764
    :cond_1d
    const/4 v13, 0x1

    .line 765
    add-int/2addr v6, v13

    .line 766
    const/4 v5, 0x3

    .line 767
    goto :goto_16

    .line 768
    :cond_1e
    invoke-virtual {v1}, Lu7/i0;->h()Lu7/j0;

    .line 769
    .line 770
    .line 771
    move-result-object v1

    .line 772
    new-instance v5, Ljava/util/ArrayList;

    .line 773
    .line 774
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 775
    .line 776
    .line 777
    new-instance v6, Ljava/util/ArrayList;

    .line 778
    .line 779
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 780
    .line 781
    .line 782
    const/4 v13, 0x0

    .line 783
    :goto_18
    if-ge v13, v12, :cond_23

    .line 784
    .line 785
    aget v14, v3, v13

    .line 786
    .line 787
    const/4 v15, 0x5

    .line 788
    if-eq v14, v15, :cond_1f

    .line 789
    .line 790
    move-object/from16 v19, v2

    .line 791
    .line 792
    move/from16 v18, v4

    .line 793
    .line 794
    :goto_19
    move-object/from16 v21, v11

    .line 795
    .line 796
    const/4 v11, 0x1

    .line 797
    goto :goto_1c

    .line 798
    :cond_1f
    aget-object v14, v0, v13

    .line 799
    .line 800
    move/from16 v18, v4

    .line 801
    .line 802
    const/4 v15, 0x0

    .line 803
    :goto_1a
    iget v4, v14, Lf2/j1;->a:I

    .line 804
    .line 805
    if-ge v15, v4, :cond_22

    .line 806
    .line 807
    invoke-virtual {v14, v15}, Lf2/j1;->a(I)Lr1/r0;

    .line 808
    .line 809
    .line 810
    move-result-object v4

    .line 811
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    .line 813
    .line 814
    aget-object v19, v11, v13

    .line 815
    .line 816
    aget-object v19, v19, v15

    .line 817
    .line 818
    invoke-virtual/range {v19 .. v19}, [I->clone()Ljava/lang/Object;

    .line 819
    .line 820
    .line 821
    move-result-object v19

    .line 822
    move-object/from16 v20, v14

    .line 823
    .line 824
    move-object/from16 v14, v19

    .line 825
    .line 826
    check-cast v14, [I

    .line 827
    .line 828
    move-object/from16 v19, v2

    .line 829
    .line 830
    move-object/from16 v21, v11

    .line 831
    .line 832
    const/4 v2, 0x0

    .line 833
    :goto_1b
    array-length v11, v14

    .line 834
    if-ge v2, v11, :cond_21

    .line 835
    .line 836
    iget-object v11, v4, Lr1/r0;->d:[Lr1/p;

    .line 837
    .line 838
    aget-object v11, v11, v2

    .line 839
    .line 840
    iget-object v11, v11, Lr1/p;->m:Ljava/lang/String;

    .line 841
    .line 842
    if-eqz v11, :cond_20

    .line 843
    .line 844
    invoke-virtual {v1, v11}, Lu7/b0;->contains(Ljava/lang/Object;)Z

    .line 845
    .line 846
    .line 847
    move-result v11

    .line 848
    if-nez v11, :cond_20

    .line 849
    .line 850
    aput v7, v14, v2

    .line 851
    .line 852
    :cond_20
    const/4 v11, 0x1

    .line 853
    add-int/2addr v2, v11

    .line 854
    goto :goto_1b

    .line 855
    :cond_21
    const/4 v11, 0x1

    .line 856
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 857
    .line 858
    .line 859
    add-int/2addr v15, v11

    .line 860
    move-object/from16 v2, v19

    .line 861
    .line 862
    move-object/from16 v14, v20

    .line 863
    .line 864
    move-object/from16 v11, v21

    .line 865
    .line 866
    goto :goto_1a

    .line 867
    :cond_22
    move-object/from16 v19, v2

    .line 868
    .line 869
    goto :goto_19

    .line 870
    :goto_1c
    add-int/2addr v13, v11

    .line 871
    move/from16 v4, v18

    .line 872
    .line 873
    move-object/from16 v2, v19

    .line 874
    .line 875
    move-object/from16 v11, v21

    .line 876
    .line 877
    goto :goto_18

    .line 878
    :cond_23
    move-object/from16 v19, v2

    .line 879
    .line 880
    move/from16 v18, v4

    .line 881
    .line 882
    move-object/from16 v21, v11

    .line 883
    .line 884
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 885
    .line 886
    .line 887
    move-result v1

    .line 888
    new-array v2, v1, [Lr1/r0;

    .line 889
    .line 890
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 891
    .line 892
    .line 893
    move-result v4

    .line 894
    if-ne v4, v1, :cond_24

    .line 895
    .line 896
    const/4 v1, 0x1

    .line 897
    goto :goto_1d

    .line 898
    :cond_24
    const/4 v1, 0x0

    .line 899
    :goto_1d
    invoke-static {v1}, La9/o;->t(Z)V

    .line 900
    .line 901
    .line 902
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 903
    .line 904
    .line 905
    new-instance v1, Lf2/j1;

    .line 906
    .line 907
    invoke-direct {v1, v2}, Lf2/j1;-><init>([Lr1/r0;)V

    .line 908
    .line 909
    .line 910
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 911
    .line 912
    .line 913
    move-result v2

    .line 914
    new-array v4, v2, [[I

    .line 915
    .line 916
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 917
    .line 918
    .line 919
    move-result v5

    .line 920
    if-ne v5, v2, :cond_25

    .line 921
    .line 922
    const/4 v2, 0x1

    .line 923
    goto :goto_1e

    .line 924
    :cond_25
    const/4 v2, 0x0

    .line 925
    :goto_1e
    invoke-static {v2}, La9/o;->t(Z)V

    .line 926
    .line 927
    .line 928
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 929
    .line 930
    .line 931
    const/4 v2, 0x0

    .line 932
    :goto_1f
    if-ge v2, v12, :cond_28

    .line 933
    .line 934
    aget v6, v3, v2

    .line 935
    .line 936
    const/4 v11, 0x5

    .line 937
    if-eq v6, v11, :cond_26

    .line 938
    .line 939
    :goto_20
    const/4 v6, 0x1

    .line 940
    goto :goto_22

    .line 941
    :cond_26
    invoke-static {v1, v4, v8}, Lh2/n;->o(Lf2/j1;[[ILh2/i;)Lh2/o;

    .line 942
    .line 943
    .line 944
    move-result-object v6

    .line 945
    aput-object v6, v9, v2

    .line 946
    .line 947
    if-eqz v6, :cond_28

    .line 948
    .line 949
    iget-object v6, v6, Lh2/o;->a:Lr1/r0;

    .line 950
    .line 951
    iget-object v11, v1, Lf2/j1;->b:Lu7/y0;

    .line 952
    .line 953
    invoke-virtual {v11, v6}, Lu7/g0;->indexOf(Ljava/lang/Object;)I

    .line 954
    .line 955
    .line 956
    move-result v6

    .line 957
    if-ltz v6, :cond_27

    .line 958
    .line 959
    move v5, v6

    .line 960
    goto :goto_21

    .line 961
    :cond_27
    const/4 v5, -0x1

    .line 962
    :goto_21
    aget-object v5, v4, v5

    .line 963
    .line 964
    invoke-static {v5, v7}, Ljava/util/Arrays;->fill([II)V

    .line 965
    .line 966
    .line 967
    goto :goto_20

    .line 968
    :goto_22
    add-int/2addr v2, v6

    .line 969
    goto :goto_1f

    .line 970
    :cond_28
    const/4 v6, 0x1

    .line 971
    const/4 v1, 0x0

    .line 972
    :goto_23
    if-ge v1, v10, :cond_2c

    .line 973
    .line 974
    aget v2, v3, v1

    .line 975
    .line 976
    const/4 v4, 0x2

    .line 977
    if-eq v2, v4, :cond_2b

    .line 978
    .line 979
    if-eq v2, v6, :cond_2b

    .line 980
    .line 981
    const/4 v6, 0x3

    .line 982
    if-eq v2, v6, :cond_2a

    .line 983
    .line 984
    const/4 v7, 0x4

    .line 985
    if-eq v2, v7, :cond_2a

    .line 986
    .line 987
    const/4 v7, 0x5

    .line 988
    if-eq v2, v7, :cond_29

    .line 989
    .line 990
    aget-object v2, v9, v1

    .line 991
    .line 992
    if-nez v2, :cond_29

    .line 993
    .line 994
    aget-object v2, v0, v1

    .line 995
    .line 996
    aget-object v11, v21, v1

    .line 997
    .line 998
    invoke-static {v2, v11, v8}, Lh2/n;->o(Lf2/j1;[[ILh2/i;)Lh2/o;

    .line 999
    .line 1000
    .line 1001
    move-result-object v2

    .line 1002
    aput-object v2, v9, v1

    .line 1003
    .line 1004
    :cond_29
    :goto_24
    const/4 v2, 0x1

    .line 1005
    goto :goto_26

    .line 1006
    :cond_2a
    :goto_25
    const/4 v7, 0x5

    .line 1007
    goto :goto_24

    .line 1008
    :cond_2b
    const/4 v6, 0x3

    .line 1009
    goto :goto_25

    .line 1010
    :goto_26
    add-int/2addr v1, v2

    .line 1011
    const/4 v6, 0x1

    .line 1012
    goto :goto_23

    .line 1013
    :cond_2c
    move-object/from16 v1, v19

    .line 1014
    .line 1015
    invoke-static {v1, v8, v9}, Lh2/n;->g(Lb5/i;Lh2/i;[Lh2/o;)V

    .line 1016
    .line 1017
    .line 1018
    invoke-static {v1, v8, v9}, Lh2/n;->e(Lb5/i;Lh2/i;[Lh2/o;)V

    .line 1019
    .line 1020
    .line 1021
    invoke-static {v1, v8, v9}, Lh2/n;->f(Lb5/i;Lh2/i;[Lh2/o;)V

    .line 1022
    .line 1023
    .line 1024
    move-object/from16 v0, v16

    .line 1025
    .line 1026
    iget-object v2, v0, Lh2/n;->e:Lgf/g;

    .line 1027
    .line 1028
    iget-object v0, v0, Lh2/q;->b:Li2/c;

    .line 1029
    .line 1030
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1031
    .line 1032
    .line 1033
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1034
    .line 1035
    .line 1036
    new-instance v0, Ljava/util/ArrayList;

    .line 1037
    .line 1038
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1039
    .line 1040
    .line 1041
    const/4 v2, 0x0

    .line 1042
    :goto_27
    array-length v3, v9

    .line 1043
    const-wide/16 v6, 0x0

    .line 1044
    .line 1045
    if-ge v2, v3, :cond_2f

    .line 1046
    .line 1047
    aget-object v3, v9, v2

    .line 1048
    .line 1049
    if-eqz v3, :cond_2e

    .line 1050
    .line 1051
    iget-object v3, v3, Lh2/o;->b:[I

    .line 1052
    .line 1053
    array-length v3, v3

    .line 1054
    const/4 v4, 0x1

    .line 1055
    if-le v3, v4, :cond_2d

    .line 1056
    .line 1057
    invoke-static {}, Lu7/g0;->j()Lu7/d0;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v3

    .line 1061
    new-instance v10, Lh2/a;

    .line 1062
    .line 1063
    invoke-direct {v10, v6, v7, v6, v7}, Lh2/a;-><init>(JJ)V

    .line 1064
    .line 1065
    .line 1066
    invoke-virtual {v3, v10}, Lu7/d0;->c(Ljava/lang/Object;)V

    .line 1067
    .line 1068
    .line 1069
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1070
    .line 1071
    .line 1072
    const/4 v3, 0x0

    .line 1073
    goto :goto_2a

    .line 1074
    :cond_2d
    :goto_28
    const/4 v3, 0x0

    .line 1075
    goto :goto_29

    .line 1076
    :cond_2e
    const/4 v4, 0x1

    .line 1077
    goto :goto_28

    .line 1078
    :goto_29
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1079
    .line 1080
    .line 1081
    :goto_2a
    add-int/2addr v2, v4

    .line 1082
    goto :goto_27

    .line 1083
    :cond_2f
    const/4 v3, 0x0

    .line 1084
    array-length v2, v9

    .line 1085
    new-array v4, v2, [[J

    .line 1086
    .line 1087
    const/4 v10, 0x0

    .line 1088
    :goto_2b
    array-length v11, v9

    .line 1089
    const-wide/16 v12, -0x1

    .line 1090
    .line 1091
    if-ge v10, v11, :cond_33

    .line 1092
    .line 1093
    aget-object v11, v9, v10

    .line 1094
    .line 1095
    if-nez v11, :cond_30

    .line 1096
    .line 1097
    const/4 v14, 0x0

    .line 1098
    new-array v11, v14, [J

    .line 1099
    .line 1100
    aput-object v11, v4, v10

    .line 1101
    .line 1102
    const/4 v3, 0x1

    .line 1103
    goto :goto_2d

    .line 1104
    :cond_30
    iget-object v14, v11, Lh2/o;->b:[I

    .line 1105
    .line 1106
    array-length v15, v14

    .line 1107
    new-array v15, v15, [J

    .line 1108
    .line 1109
    aput-object v15, v4, v10

    .line 1110
    .line 1111
    const/4 v15, 0x0

    .line 1112
    :goto_2c
    array-length v3, v14

    .line 1113
    if-ge v15, v3, :cond_32

    .line 1114
    .line 1115
    aget v3, v14, v15

    .line 1116
    .line 1117
    iget-object v6, v11, Lh2/o;->a:Lr1/r0;

    .line 1118
    .line 1119
    iget-object v6, v6, Lr1/r0;->d:[Lr1/p;

    .line 1120
    .line 1121
    aget-object v3, v6, v3

    .line 1122
    .line 1123
    iget v3, v3, Lr1/p;->j:I

    .line 1124
    .line 1125
    int-to-long v6, v3

    .line 1126
    aget-object v3, v4, v10

    .line 1127
    .line 1128
    cmp-long v19, v6, v12

    .line 1129
    .line 1130
    if-nez v19, :cond_31

    .line 1131
    .line 1132
    const-wide/16 v6, 0x0

    .line 1133
    .line 1134
    :cond_31
    aput-wide v6, v3, v15

    .line 1135
    .line 1136
    const/4 v3, 0x1

    .line 1137
    add-int/2addr v15, v3

    .line 1138
    const-wide/16 v6, 0x0

    .line 1139
    .line 1140
    goto :goto_2c

    .line 1141
    :cond_32
    const/4 v3, 0x1

    .line 1142
    aget-object v6, v4, v10

    .line 1143
    .line 1144
    invoke-static {v6}, Ljava/util/Arrays;->sort([J)V

    .line 1145
    .line 1146
    .line 1147
    :goto_2d
    add-int/2addr v10, v3

    .line 1148
    const/4 v3, 0x0

    .line 1149
    const-wide/16 v6, 0x0

    .line 1150
    .line 1151
    goto :goto_2b

    .line 1152
    :cond_33
    new-array v3, v2, [I

    .line 1153
    .line 1154
    new-array v6, v2, [J

    .line 1155
    .line 1156
    const/4 v7, 0x0

    .line 1157
    :goto_2e
    if-ge v7, v2, :cond_35

    .line 1158
    .line 1159
    aget-object v10, v4, v7

    .line 1160
    .line 1161
    array-length v11, v10

    .line 1162
    if-nez v11, :cond_34

    .line 1163
    .line 1164
    const-wide/16 v14, 0x0

    .line 1165
    .line 1166
    goto :goto_2f

    .line 1167
    :cond_34
    const/4 v11, 0x0

    .line 1168
    aget-wide v14, v10, v11

    .line 1169
    .line 1170
    :goto_2f
    aput-wide v14, v6, v7

    .line 1171
    .line 1172
    const/4 v10, 0x1

    .line 1173
    add-int/2addr v7, v10

    .line 1174
    goto :goto_2e

    .line 1175
    :cond_35
    invoke-static {v0, v6}, Lh2/b;->m(Ljava/util/ArrayList;[J)V

    .line 1176
    .line 1177
    .line 1178
    sget-object v7, Lu7/w0;->a:Lu7/w0;

    .line 1179
    .line 1180
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1181
    .line 1182
    .line 1183
    new-instance v10, Lu7/s0;

    .line 1184
    .line 1185
    invoke-direct {v10, v7}, Lu7/s0;-><init>(Lu7/w0;)V

    .line 1186
    .line 1187
    .line 1188
    invoke-virtual {v10}, Lu7/q;->a()Ll5/y;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v7

    .line 1192
    invoke-virtual {v7}, Ll5/y;->s()Lu7/u0;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v7

    .line 1196
    const/4 v10, 0x0

    .line 1197
    :goto_30
    if-ge v10, v2, :cond_3e

    .line 1198
    .line 1199
    aget-object v11, v4, v10

    .line 1200
    .line 1201
    array-length v14, v11

    .line 1202
    const/4 v15, 0x1

    .line 1203
    if-gt v14, v15, :cond_36

    .line 1204
    .line 1205
    move/from16 v17, v2

    .line 1206
    .line 1207
    move-wide/from16 v19, v12

    .line 1208
    .line 1209
    :goto_31
    const/4 v13, 0x1

    .line 1210
    goto/16 :goto_37

    .line 1211
    .line 1212
    :cond_36
    array-length v11, v11

    .line 1213
    new-array v14, v11, [D

    .line 1214
    .line 1215
    const/4 v15, 0x0

    .line 1216
    :goto_32
    aget-object v5, v4, v10

    .line 1217
    .line 1218
    array-length v12, v5

    .line 1219
    const-wide/16 v21, 0x0

    .line 1220
    .line 1221
    if-ge v15, v12, :cond_38

    .line 1222
    .line 1223
    aget-wide v12, v5, v15

    .line 1224
    .line 1225
    const-wide/16 v19, -0x1

    .line 1226
    .line 1227
    cmp-long v5, v12, v19

    .line 1228
    .line 1229
    if-nez v5, :cond_37

    .line 1230
    .line 1231
    goto :goto_33

    .line 1232
    :cond_37
    long-to-double v12, v12

    .line 1233
    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    .line 1234
    .line 1235
    .line 1236
    move-result-wide v21

    .line 1237
    :goto_33
    aput-wide v21, v14, v15

    .line 1238
    .line 1239
    const/4 v5, 0x1

    .line 1240
    add-int/2addr v15, v5

    .line 1241
    move-wide/from16 v12, v19

    .line 1242
    .line 1243
    goto :goto_32

    .line 1244
    :cond_38
    const/4 v5, 0x1

    .line 1245
    const-wide/16 v19, -0x1

    .line 1246
    .line 1247
    sub-int/2addr v11, v5

    .line 1248
    aget-wide v12, v14, v11

    .line 1249
    .line 1250
    const/4 v15, 0x0

    .line 1251
    aget-wide v23, v14, v15

    .line 1252
    .line 1253
    sub-double v12, v12, v23

    .line 1254
    .line 1255
    const/4 v15, 0x0

    .line 1256
    :goto_34
    if-ge v15, v11, :cond_3d

    .line 1257
    .line 1258
    aget-wide v25, v14, v15

    .line 1259
    .line 1260
    add-int/2addr v15, v5

    .line 1261
    aget-wide v27, v14, v15

    .line 1262
    .line 1263
    add-double v25, v25, v27

    .line 1264
    .line 1265
    const-wide/high16 v27, 0x3fe0000000000000L    # 0.5

    .line 1266
    .line 1267
    mul-double v25, v25, v27

    .line 1268
    .line 1269
    cmpl-double v5, v12, v21

    .line 1270
    .line 1271
    if-nez v5, :cond_39

    .line 1272
    .line 1273
    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    .line 1274
    .line 1275
    goto :goto_35

    .line 1276
    :cond_39
    const/4 v5, 0x0

    .line 1277
    aget-wide v27, v14, v5

    .line 1278
    .line 1279
    sub-double v25, v25, v27

    .line 1280
    .line 1281
    div-double v25, v25, v12

    .line 1282
    .line 1283
    :goto_35
    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1284
    .line 1285
    .line 1286
    move-result-object v5

    .line 1287
    move/from16 v17, v2

    .line 1288
    .line 1289
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v2

    .line 1293
    move/from16 v24, v11

    .line 1294
    .line 1295
    iget-object v11, v7, Lu7/u0;->d:Ljava/util/Map;

    .line 1296
    .line 1297
    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v25

    .line 1301
    move-wide/from16 v26, v12

    .line 1302
    .line 1303
    move-object/from16 v12, v25

    .line 1304
    .line 1305
    check-cast v12, Ljava/util/Collection;

    .line 1306
    .line 1307
    if-nez v12, :cond_3b

    .line 1308
    .line 1309
    iget-object v12, v7, Lu7/u0;->f:Lu7/t0;

    .line 1310
    .line 1311
    invoke-virtual {v12}, Lu7/t0;->get()Ljava/lang/Object;

    .line 1312
    .line 1313
    .line 1314
    move-result-object v12

    .line 1315
    check-cast v12, Ljava/util/List;

    .line 1316
    .line 1317
    invoke-interface {v12, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1318
    .line 1319
    .line 1320
    move-result v2

    .line 1321
    if-eqz v2, :cond_3a

    .line 1322
    .line 1323
    iget v2, v7, Lu7/u0;->e:I

    .line 1324
    .line 1325
    const/4 v13, 0x1

    .line 1326
    add-int/2addr v2, v13

    .line 1327
    iput v2, v7, Lu7/u0;->e:I

    .line 1328
    .line 1329
    invoke-interface {v11, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    .line 1331
    .line 1332
    goto :goto_36

    .line 1333
    :cond_3a
    new-instance v0, Ljava/lang/AssertionError;

    .line 1334
    .line 1335
    const-string v1, "New Collection violated the Collection spec"

    .line 1336
    .line 1337
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 1338
    .line 1339
    .line 1340
    throw v0

    .line 1341
    :cond_3b
    const/4 v13, 0x1

    .line 1342
    invoke-interface {v12, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1343
    .line 1344
    .line 1345
    move-result v2

    .line 1346
    if-eqz v2, :cond_3c

    .line 1347
    .line 1348
    iget v2, v7, Lu7/u0;->e:I

    .line 1349
    .line 1350
    add-int/2addr v2, v13

    .line 1351
    iput v2, v7, Lu7/u0;->e:I

    .line 1352
    .line 1353
    :cond_3c
    :goto_36
    move/from16 v2, v17

    .line 1354
    .line 1355
    move/from16 v11, v24

    .line 1356
    .line 1357
    move-wide/from16 v12, v26

    .line 1358
    .line 1359
    const/4 v5, 0x1

    .line 1360
    goto :goto_34

    .line 1361
    :cond_3d
    move/from16 v17, v2

    .line 1362
    .line 1363
    goto/16 :goto_31

    .line 1364
    .line 1365
    :goto_37
    add-int/2addr v10, v13

    .line 1366
    move/from16 v2, v17

    .line 1367
    .line 1368
    move-wide/from16 v12, v19

    .line 1369
    .line 1370
    goto/16 :goto_30

    .line 1371
    .line 1372
    :cond_3e
    iget-object v2, v7, Lu7/o;->b:Ljava/util/Collection;

    .line 1373
    .line 1374
    if-nez v2, :cond_3f

    .line 1375
    .line 1376
    new-instance v2, Lu7/n;

    .line 1377
    .line 1378
    const/4 v5, 0x0

    .line 1379
    invoke-direct {v2, v5, v7}, Lu7/n;-><init>(ILjava/io/Serializable;)V

    .line 1380
    .line 1381
    .line 1382
    iput-object v2, v7, Lu7/o;->b:Ljava/util/Collection;

    .line 1383
    .line 1384
    :cond_3f
    invoke-static {v2}, Lu7/g0;->m(Ljava/util/Collection;)Lu7/g0;

    .line 1385
    .line 1386
    .line 1387
    move-result-object v2

    .line 1388
    const/4 v5, 0x0

    .line 1389
    :goto_38
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 1390
    .line 1391
    .line 1392
    move-result v7

    .line 1393
    if-ge v5, v7, :cond_40

    .line 1394
    .line 1395
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v7

    .line 1399
    check-cast v7, Ljava/lang/Integer;

    .line 1400
    .line 1401
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 1402
    .line 1403
    .line 1404
    move-result v7

    .line 1405
    aget v10, v3, v7

    .line 1406
    .line 1407
    const/4 v11, 0x1

    .line 1408
    add-int/2addr v10, v11

    .line 1409
    aput v10, v3, v7

    .line 1410
    .line 1411
    aget-object v12, v4, v7

    .line 1412
    .line 1413
    aget-wide v13, v12, v10

    .line 1414
    .line 1415
    aput-wide v13, v6, v7

    .line 1416
    .line 1417
    invoke-static {v0, v6}, Lh2/b;->m(Ljava/util/ArrayList;[J)V

    .line 1418
    .line 1419
    .line 1420
    add-int/2addr v5, v11

    .line 1421
    goto :goto_38

    .line 1422
    :cond_40
    const/4 v2, 0x0

    .line 1423
    :goto_39
    array-length v3, v9

    .line 1424
    if-ge v2, v3, :cond_42

    .line 1425
    .line 1426
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1427
    .line 1428
    .line 1429
    move-result-object v3

    .line 1430
    if-eqz v3, :cond_41

    .line 1431
    .line 1432
    aget-wide v3, v6, v2

    .line 1433
    .line 1434
    const-wide/16 v10, 0x2

    .line 1435
    .line 1436
    mul-long v3, v3, v10

    .line 1437
    .line 1438
    aput-wide v3, v6, v2

    .line 1439
    .line 1440
    :cond_41
    const/4 v3, 0x1

    .line 1441
    add-int/2addr v2, v3

    .line 1442
    goto :goto_39

    .line 1443
    :cond_42
    invoke-static {v0, v6}, Lh2/b;->m(Ljava/util/ArrayList;[J)V

    .line 1444
    .line 1445
    .line 1446
    invoke-static {}, Lu7/g0;->j()Lu7/d0;

    .line 1447
    .line 1448
    .line 1449
    move-result-object v2

    .line 1450
    const/4 v3, 0x0

    .line 1451
    :goto_3a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1452
    .line 1453
    .line 1454
    move-result v4

    .line 1455
    if-ge v3, v4, :cond_44

    .line 1456
    .line 1457
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1458
    .line 1459
    .line 1460
    move-result-object v4

    .line 1461
    check-cast v4, Lu7/d0;

    .line 1462
    .line 1463
    if-nez v4, :cond_43

    .line 1464
    .line 1465
    invoke-static {}, Lu7/g0;->p()Lu7/y0;

    .line 1466
    .line 1467
    .line 1468
    move-result-object v4

    .line 1469
    goto :goto_3b

    .line 1470
    :cond_43
    invoke-virtual {v4}, Lu7/d0;->g()Lu7/y0;

    .line 1471
    .line 1472
    .line 1473
    move-result-object v4

    .line 1474
    :goto_3b
    invoke-virtual {v2, v4}, Lu7/d0;->c(Ljava/lang/Object;)V

    .line 1475
    .line 1476
    .line 1477
    const/4 v4, 0x1

    .line 1478
    add-int/2addr v3, v4

    .line 1479
    goto :goto_3a

    .line 1480
    :cond_44
    invoke-virtual {v2}, Lu7/d0;->g()Lu7/y0;

    .line 1481
    .line 1482
    .line 1483
    move-result-object v0

    .line 1484
    array-length v2, v9

    .line 1485
    new-array v2, v2, [Lh2/p;

    .line 1486
    .line 1487
    const/4 v14, 0x0

    .line 1488
    :goto_3c
    array-length v3, v9

    .line 1489
    if-ge v14, v3, :cond_48

    .line 1490
    .line 1491
    aget-object v3, v9, v14

    .line 1492
    .line 1493
    if-eqz v3, :cond_45

    .line 1494
    .line 1495
    iget-object v4, v3, Lh2/o;->b:[I

    .line 1496
    .line 1497
    array-length v5, v4

    .line 1498
    if-nez v5, :cond_46

    .line 1499
    .line 1500
    :cond_45
    :goto_3d
    const/4 v3, 0x1

    .line 1501
    goto :goto_3f

    .line 1502
    :cond_46
    array-length v5, v4

    .line 1503
    const/4 v6, 0x1

    .line 1504
    if-ne v5, v6, :cond_47

    .line 1505
    .line 1506
    new-instance v5, Lh2/b;

    .line 1507
    .line 1508
    const/4 v6, 0x0

    .line 1509
    aget v4, v4, v6

    .line 1510
    .line 1511
    iget-object v3, v3, Lh2/o;->a:Lr1/r0;

    .line 1512
    .line 1513
    invoke-direct {v5, v3, v4}, Lh2/b;-><init>(Lr1/r0;I)V

    .line 1514
    .line 1515
    .line 1516
    goto :goto_3e

    .line 1517
    :cond_47
    invoke-virtual {v0, v14}, Lu7/y0;->get(I)Ljava/lang/Object;

    .line 1518
    .line 1519
    .line 1520
    move-result-object v5

    .line 1521
    move-object/from16 v32, v5

    .line 1522
    .line 1523
    check-cast v32, Lu7/g0;

    .line 1524
    .line 1525
    new-instance v5, Lh2/b;

    .line 1526
    .line 1527
    const/16 v6, 0x2710

    .line 1528
    .line 1529
    int-to-long v6, v6

    .line 1530
    const/16 v10, 0x61a8

    .line 1531
    .line 1532
    int-to-long v10, v10

    .line 1533
    iget-object v3, v3, Lh2/o;->a:Lr1/r0;

    .line 1534
    .line 1535
    move-object/from16 v25, v5

    .line 1536
    .line 1537
    move-object/from16 v26, v3

    .line 1538
    .line 1539
    move-object/from16 v27, v4

    .line 1540
    .line 1541
    move-wide/from16 v28, v6

    .line 1542
    .line 1543
    move-wide/from16 v30, v10

    .line 1544
    .line 1545
    invoke-direct/range {v25 .. v32}, Lh2/b;-><init>(Lr1/r0;[IJJLu7/g0;)V

    .line 1546
    .line 1547
    .line 1548
    :goto_3e
    aput-object v5, v2, v14

    .line 1549
    .line 1550
    goto :goto_3d

    .line 1551
    :goto_3f
    add-int/2addr v14, v3

    .line 1552
    goto :goto_3c

    .line 1553
    :cond_48
    move/from16 v3, v18

    .line 1554
    .line 1555
    new-array v0, v3, [Ly1/b1;

    .line 1556
    .line 1557
    const/4 v14, 0x0

    .line 1558
    :goto_40
    const/4 v4, -0x2

    .line 1559
    if-ge v14, v3, :cond_4c

    .line 1560
    .line 1561
    iget-object v5, v1, Lb5/i;->b:Ljava/lang/Object;

    .line 1562
    .line 1563
    check-cast v5, [I

    .line 1564
    .line 1565
    aget v5, v5, v14

    .line 1566
    .line 1567
    iget-object v6, v8, Lh2/i;->F:Landroid/util/SparseBooleanArray;

    .line 1568
    .line 1569
    invoke-virtual {v6, v14}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 1570
    .line 1571
    .line 1572
    move-result v6

    .line 1573
    if-nez v6, :cond_4b

    .line 1574
    .line 1575
    iget-object v6, v8, Lr1/v0;->w:Lu7/j0;

    .line 1576
    .line 1577
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1578
    .line 1579
    .line 1580
    move-result-object v5

    .line 1581
    invoke-virtual {v6, v5}, Lu7/b0;->contains(Ljava/lang/Object;)Z

    .line 1582
    .line 1583
    .line 1584
    move-result v5

    .line 1585
    if-eqz v5, :cond_49

    .line 1586
    .line 1587
    goto :goto_41

    .line 1588
    :cond_49
    iget-object v5, v1, Lb5/i;->b:Ljava/lang/Object;

    .line 1589
    .line 1590
    check-cast v5, [I

    .line 1591
    .line 1592
    aget v5, v5, v14

    .line 1593
    .line 1594
    if-eq v5, v4, :cond_4a

    .line 1595
    .line 1596
    aget-object v4, v2, v14

    .line 1597
    .line 1598
    if-eqz v4, :cond_4b

    .line 1599
    .line 1600
    :cond_4a
    sget-object v4, Ly1/b1;->c:Ly1/b1;

    .line 1601
    .line 1602
    goto :goto_42

    .line 1603
    :cond_4b
    :goto_41
    const/4 v4, 0x0

    .line 1604
    :goto_42
    aput-object v4, v0, v14

    .line 1605
    .line 1606
    const/4 v4, 0x1

    .line 1607
    add-int/2addr v14, v4

    .line 1608
    goto :goto_40

    .line 1609
    :cond_4c
    iget-object v3, v8, Lr1/v0;->q:Lr1/t0;

    .line 1610
    .line 1611
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1612
    .line 1613
    .line 1614
    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1615
    .line 1616
    .line 1617
    move-result-object v0

    .line 1618
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1619
    .line 1620
    check-cast v2, [Lh2/p;

    .line 1621
    .line 1622
    array-length v3, v2

    .line 1623
    new-array v5, v3, [Ljava/util/List;

    .line 1624
    .line 1625
    const/4 v14, 0x0

    .line 1626
    :goto_43
    array-length v6, v2

    .line 1627
    if-ge v14, v6, :cond_4e

    .line 1628
    .line 1629
    aget-object v6, v2, v14

    .line 1630
    .line 1631
    if-eqz v6, :cond_4d

    .line 1632
    .line 1633
    invoke-static {v6}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    .line 1634
    .line 1635
    .line 1636
    move-result-object v6

    .line 1637
    goto :goto_44

    .line 1638
    :cond_4d
    sget-object v6, Lu7/g0;->b:Lu7/e0;

    .line 1639
    .line 1640
    sget-object v6, Lu7/y0;->e:Lu7/y0;

    .line 1641
    .line 1642
    :goto_44
    aput-object v6, v5, v14

    .line 1643
    .line 1644
    const/4 v6, 0x1

    .line 1645
    add-int/2addr v14, v6

    .line 1646
    goto :goto_43

    .line 1647
    :cond_4e
    new-instance v2, Lu7/d0;

    .line 1648
    .line 1649
    invoke-direct {v2}, Lu7/d0;-><init>()V

    .line 1650
    .line 1651
    .line 1652
    const/4 v14, 0x0

    .line 1653
    :goto_45
    iget v6, v1, Lb5/i;->a:I

    .line 1654
    .line 1655
    if-ge v14, v6, :cond_5b

    .line 1656
    .line 1657
    iget-object v6, v1, Lb5/i;->c:Ljava/lang/Object;

    .line 1658
    .line 1659
    check-cast v6, [Lf2/j1;

    .line 1660
    .line 1661
    aget-object v7, v6, v14

    .line 1662
    .line 1663
    const/4 v8, 0x0

    .line 1664
    :goto_46
    iget v9, v7, Lf2/j1;->a:I

    .line 1665
    .line 1666
    if-ge v8, v9, :cond_5a

    .line 1667
    .line 1668
    invoke-virtual {v7, v8}, Lf2/j1;->a(I)Lr1/r0;

    .line 1669
    .line 1670
    .line 1671
    move-result-object v9

    .line 1672
    aget-object v10, v6, v14

    .line 1673
    .line 1674
    invoke-virtual {v10, v8}, Lf2/j1;->a(I)Lr1/r0;

    .line 1675
    .line 1676
    .line 1677
    move-result-object v10

    .line 1678
    iget v10, v10, Lr1/r0;->a:I

    .line 1679
    .line 1680
    new-array v11, v10, [I

    .line 1681
    .line 1682
    const/4 v12, 0x0

    .line 1683
    const/4 v13, 0x0

    .line 1684
    :goto_47
    if-ge v12, v10, :cond_50

    .line 1685
    .line 1686
    iget-object v15, v1, Lb5/i;->e:Ljava/lang/Object;

    .line 1687
    .line 1688
    check-cast v15, [[[I

    .line 1689
    .line 1690
    aget-object v15, v15, v14

    .line 1691
    .line 1692
    aget-object v15, v15, v8

    .line 1693
    .line 1694
    aget v15, v15, v12

    .line 1695
    .line 1696
    and-int/lit8 v15, v15, 0x7

    .line 1697
    .line 1698
    const/4 v4, 0x4

    .line 1699
    if-eq v15, v4, :cond_4f

    .line 1700
    .line 1701
    const/4 v15, 0x1

    .line 1702
    goto :goto_48

    .line 1703
    :cond_4f
    const/4 v15, 0x1

    .line 1704
    add-int/lit8 v18, v13, 0x1

    .line 1705
    .line 1706
    aput v12, v11, v13

    .line 1707
    .line 1708
    move/from16 v13, v18

    .line 1709
    .line 1710
    :goto_48
    add-int/2addr v12, v15

    .line 1711
    const/4 v4, -0x2

    .line 1712
    goto :goto_47

    .line 1713
    :cond_50
    const/4 v4, 0x4

    .line 1714
    invoke-static {v11, v13}, Ljava/util/Arrays;->copyOf([II)[I

    .line 1715
    .line 1716
    .line 1717
    move-result-object v10

    .line 1718
    const/16 v11, 0x10

    .line 1719
    .line 1720
    move-object/from16 v18, v7

    .line 1721
    .line 1722
    const/4 v4, 0x0

    .line 1723
    const/4 v12, 0x0

    .line 1724
    const/4 v13, 0x0

    .line 1725
    const/4 v15, 0x0

    .line 1726
    :goto_49
    array-length v7, v10

    .line 1727
    if-ge v12, v7, :cond_52

    .line 1728
    .line 1729
    aget v7, v10, v12

    .line 1730
    .line 1731
    move-object/from16 v19, v10

    .line 1732
    .line 1733
    aget-object v10, v6, v14

    .line 1734
    .line 1735
    invoke-virtual {v10, v8}, Lf2/j1;->a(I)Lr1/r0;

    .line 1736
    .line 1737
    .line 1738
    move-result-object v10

    .line 1739
    iget-object v10, v10, Lr1/r0;->d:[Lr1/p;

    .line 1740
    .line 1741
    aget-object v7, v10, v7

    .line 1742
    .line 1743
    iget-object v7, v7, Lr1/p;->o:Ljava/lang/String;

    .line 1744
    .line 1745
    const/4 v10, 0x1

    .line 1746
    add-int/lit8 v20, v15, 0x1

    .line 1747
    .line 1748
    if-nez v15, :cond_51

    .line 1749
    .line 1750
    move-object v4, v7

    .line 1751
    goto :goto_4a

    .line 1752
    :cond_51
    invoke-static {v4, v7}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1753
    .line 1754
    .line 1755
    move-result v7

    .line 1756
    xor-int/2addr v7, v10

    .line 1757
    or-int/2addr v7, v13

    .line 1758
    move v13, v7

    .line 1759
    :goto_4a
    iget-object v7, v1, Lb5/i;->e:Ljava/lang/Object;

    .line 1760
    .line 1761
    check-cast v7, [[[I

    .line 1762
    .line 1763
    aget-object v7, v7, v14

    .line 1764
    .line 1765
    aget-object v7, v7, v8

    .line 1766
    .line 1767
    aget v7, v7, v12

    .line 1768
    .line 1769
    and-int/lit8 v7, v7, 0x18

    .line 1770
    .line 1771
    invoke-static {v11, v7}, Ljava/lang/Math;->min(II)I

    .line 1772
    .line 1773
    .line 1774
    move-result v11

    .line 1775
    const/4 v7, 0x1

    .line 1776
    add-int/2addr v12, v7

    .line 1777
    move-object/from16 v10, v19

    .line 1778
    .line 1779
    move/from16 v15, v20

    .line 1780
    .line 1781
    goto :goto_49

    .line 1782
    :cond_52
    if-eqz v13, :cond_53

    .line 1783
    .line 1784
    iget-object v4, v1, Lb5/i;->d:Ljava/lang/Object;

    .line 1785
    .line 1786
    check-cast v4, [I

    .line 1787
    .line 1788
    aget v4, v4, v14

    .line 1789
    .line 1790
    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    .line 1791
    .line 1792
    .line 1793
    move-result v11

    .line 1794
    :cond_53
    if-eqz v11, :cond_54

    .line 1795
    .line 1796
    const/4 v4, 0x1

    .line 1797
    goto :goto_4b

    .line 1798
    :cond_54
    const/4 v4, 0x0

    .line 1799
    :goto_4b
    iget v7, v9, Lr1/r0;->a:I

    .line 1800
    .line 1801
    new-array v10, v7, [I

    .line 1802
    .line 1803
    new-array v7, v7, [Z

    .line 1804
    .line 1805
    const/4 v11, 0x0

    .line 1806
    :goto_4c
    iget v12, v9, Lr1/r0;->a:I

    .line 1807
    .line 1808
    if-ge v11, v12, :cond_59

    .line 1809
    .line 1810
    iget-object v12, v1, Lb5/i;->e:Ljava/lang/Object;

    .line 1811
    .line 1812
    check-cast v12, [[[I

    .line 1813
    .line 1814
    aget-object v12, v12, v14

    .line 1815
    .line 1816
    aget-object v12, v12, v8

    .line 1817
    .line 1818
    aget v12, v12, v11

    .line 1819
    .line 1820
    and-int/lit8 v12, v12, 0x7

    .line 1821
    .line 1822
    aput v12, v10, v11

    .line 1823
    .line 1824
    const/4 v12, 0x0

    .line 1825
    const/4 v13, 0x0

    .line 1826
    :goto_4d
    if-ge v12, v3, :cond_58

    .line 1827
    .line 1828
    aget-object v15, v5, v12

    .line 1829
    .line 1830
    move/from16 v19, v3

    .line 1831
    .line 1832
    move-object/from16 v20, v5

    .line 1833
    .line 1834
    const/4 v3, 0x0

    .line 1835
    :goto_4e
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 1836
    .line 1837
    .line 1838
    move-result v5

    .line 1839
    if-ge v3, v5, :cond_57

    .line 1840
    .line 1841
    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1842
    .line 1843
    .line 1844
    move-result-object v5

    .line 1845
    check-cast v5, Lh2/p;

    .line 1846
    .line 1847
    move-object/from16 v21, v6

    .line 1848
    .line 1849
    invoke-interface {v5}, Lh2/p;->a()Lr1/r0;

    .line 1850
    .line 1851
    .line 1852
    move-result-object v6

    .line 1853
    invoke-virtual {v6, v9}, Lr1/r0;->equals(Ljava/lang/Object;)Z

    .line 1854
    .line 1855
    .line 1856
    move-result v6

    .line 1857
    if-eqz v6, :cond_56

    .line 1858
    .line 1859
    invoke-interface {v5, v11}, Lh2/p;->l(I)I

    .line 1860
    .line 1861
    .line 1862
    move-result v5

    .line 1863
    const/4 v6, -0x1

    .line 1864
    if-eq v5, v6, :cond_55

    .line 1865
    .line 1866
    const/4 v5, 0x1

    .line 1867
    const/4 v13, 0x1

    .line 1868
    goto :goto_51

    .line 1869
    :cond_55
    :goto_4f
    const/4 v5, 0x1

    .line 1870
    goto :goto_50

    .line 1871
    :cond_56
    const/4 v6, -0x1

    .line 1872
    goto :goto_4f

    .line 1873
    :goto_50
    add-int/2addr v3, v5

    .line 1874
    move-object/from16 v6, v21

    .line 1875
    .line 1876
    goto :goto_4e

    .line 1877
    :cond_57
    move-object/from16 v21, v6

    .line 1878
    .line 1879
    const/4 v5, 0x1

    .line 1880
    const/4 v6, -0x1

    .line 1881
    :goto_51
    add-int/2addr v12, v5

    .line 1882
    move/from16 v3, v19

    .line 1883
    .line 1884
    move-object/from16 v5, v20

    .line 1885
    .line 1886
    move-object/from16 v6, v21

    .line 1887
    .line 1888
    goto :goto_4d

    .line 1889
    :cond_58
    move/from16 v19, v3

    .line 1890
    .line 1891
    move-object/from16 v20, v5

    .line 1892
    .line 1893
    move-object/from16 v21, v6

    .line 1894
    .line 1895
    const/4 v5, 0x1

    .line 1896
    const/4 v6, -0x1

    .line 1897
    aput-boolean v13, v7, v11

    .line 1898
    .line 1899
    add-int/2addr v11, v5

    .line 1900
    move-object/from16 v5, v20

    .line 1901
    .line 1902
    move-object/from16 v6, v21

    .line 1903
    .line 1904
    goto :goto_4c

    .line 1905
    :cond_59
    move/from16 v19, v3

    .line 1906
    .line 1907
    move-object/from16 v20, v5

    .line 1908
    .line 1909
    move-object/from16 v21, v6

    .line 1910
    .line 1911
    const/4 v5, 0x1

    .line 1912
    const/4 v6, -0x1

    .line 1913
    new-instance v3, Lr1/w0;

    .line 1914
    .line 1915
    invoke-direct {v3, v9, v4, v10, v7}, Lr1/w0;-><init>(Lr1/r0;Z[I[Z)V

    .line 1916
    .line 1917
    .line 1918
    invoke-virtual {v2, v3}, Lu7/a0;->b(Ljava/lang/Object;)V

    .line 1919
    .line 1920
    .line 1921
    add-int/2addr v8, v5

    .line 1922
    move-object/from16 v7, v18

    .line 1923
    .line 1924
    move/from16 v3, v19

    .line 1925
    .line 1926
    move-object/from16 v5, v20

    .line 1927
    .line 1928
    move-object/from16 v6, v21

    .line 1929
    .line 1930
    const/4 v4, -0x2

    .line 1931
    goto/16 :goto_46

    .line 1932
    .line 1933
    :cond_5a
    move/from16 v19, v3

    .line 1934
    .line 1935
    move-object/from16 v20, v5

    .line 1936
    .line 1937
    const/4 v5, 0x1

    .line 1938
    const/4 v6, -0x1

    .line 1939
    add-int/2addr v14, v5

    .line 1940
    move-object/from16 v5, v20

    .line 1941
    .line 1942
    const/4 v4, -0x2

    .line 1943
    goto/16 :goto_45

    .line 1944
    .line 1945
    :cond_5b
    const/4 v14, 0x0

    .line 1946
    :goto_52
    iget-object v3, v1, Lb5/i;->f:Ljava/lang/Object;

    .line 1947
    .line 1948
    check-cast v3, Lf2/j1;

    .line 1949
    .line 1950
    iget v4, v3, Lf2/j1;->a:I

    .line 1951
    .line 1952
    if-ge v14, v4, :cond_5c

    .line 1953
    .line 1954
    invoke-virtual {v3, v14}, Lf2/j1;->a(I)Lr1/r0;

    .line 1955
    .line 1956
    .line 1957
    move-result-object v3

    .line 1958
    iget v4, v3, Lr1/r0;->a:I

    .line 1959
    .line 1960
    new-array v4, v4, [I

    .line 1961
    .line 1962
    const/4 v5, 0x0

    .line 1963
    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([II)V

    .line 1964
    .line 1965
    .line 1966
    iget v6, v3, Lr1/r0;->a:I

    .line 1967
    .line 1968
    new-array v6, v6, [Z

    .line 1969
    .line 1970
    new-instance v7, Lr1/w0;

    .line 1971
    .line 1972
    invoke-direct {v7, v3, v5, v4, v6}, Lr1/w0;-><init>(Lr1/r0;Z[I[Z)V

    .line 1973
    .line 1974
    .line 1975
    invoke-virtual {v2, v7}, Lu7/a0;->b(Ljava/lang/Object;)V

    .line 1976
    .line 1977
    .line 1978
    const/4 v3, 0x1

    .line 1979
    add-int/2addr v14, v3

    .line 1980
    goto :goto_52

    .line 1981
    :cond_5c
    const/4 v5, 0x0

    .line 1982
    new-instance v3, Lr1/x0;

    .line 1983
    .line 1984
    invoke-virtual {v2}, Lu7/d0;->g()Lu7/y0;

    .line 1985
    .line 1986
    .line 1987
    move-result-object v2

    .line 1988
    invoke-direct {v3, v2}, Lr1/x0;-><init>(Lu7/g0;)V

    .line 1989
    .line 1990
    .line 1991
    new-instance v2, Lh2/r;

    .line 1992
    .line 1993
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1994
    .line 1995
    check-cast v4, [Ly1/b1;

    .line 1996
    .line 1997
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1998
    .line 1999
    check-cast v0, [Lh2/p;

    .line 2000
    .line 2001
    invoke-direct {v2, v4, v0, v3, v1}, Lh2/r;-><init>([Ly1/b1;[Lh2/p;Lr1/x0;Lb5/i;)V

    .line 2002
    .line 2003
    .line 2004
    const/4 v14, 0x0

    .line 2005
    :goto_53
    iget v0, v2, Lh2/r;->a:I

    .line 2006
    .line 2007
    if-ge v14, v0, :cond_61

    .line 2008
    .line 2009
    invoke-virtual {v2, v14}, Lh2/r;->b(I)Z

    .line 2010
    .line 2011
    .line 2012
    move-result v0

    .line 2013
    if-eqz v0, :cond_5f

    .line 2014
    .line 2015
    iget-object v0, v2, Lh2/r;->c:[Lh2/p;

    .line 2016
    .line 2017
    aget-object v0, v0, v14

    .line 2018
    .line 2019
    move-object/from16 v1, p0

    .line 2020
    .line 2021
    if-nez v0, :cond_5e

    .line 2022
    .line 2023
    iget-object v0, v1, Ly1/l0;->j:[Ly1/a;

    .line 2024
    .line 2025
    aget-object v0, v0, v14

    .line 2026
    .line 2027
    iget v0, v0, Ly1/a;->b:I

    .line 2028
    .line 2029
    const/4 v3, -0x2

    .line 2030
    if-ne v0, v3, :cond_5d

    .line 2031
    .line 2032
    goto :goto_54

    .line 2033
    :cond_5d
    const/4 v0, 0x0

    .line 2034
    goto :goto_55

    .line 2035
    :cond_5e
    const/4 v3, -0x2

    .line 2036
    :goto_54
    const/4 v0, 0x1

    .line 2037
    :goto_55
    invoke-static {v0}, La9/o;->t(Z)V

    .line 2038
    .line 2039
    .line 2040
    :goto_56
    const/4 v0, 0x1

    .line 2041
    goto :goto_58

    .line 2042
    :cond_5f
    move-object/from16 v1, p0

    .line 2043
    .line 2044
    const/4 v3, -0x2

    .line 2045
    iget-object v0, v2, Lh2/r;->c:[Lh2/p;

    .line 2046
    .line 2047
    aget-object v0, v0, v14

    .line 2048
    .line 2049
    if-nez v0, :cond_60

    .line 2050
    .line 2051
    const/4 v0, 0x1

    .line 2052
    goto :goto_57

    .line 2053
    :cond_60
    const/4 v0, 0x0

    .line 2054
    :goto_57
    invoke-static {v0}, La9/o;->t(Z)V

    .line 2055
    .line 2056
    .line 2057
    goto :goto_56

    .line 2058
    :goto_58
    add-int/2addr v14, v0

    .line 2059
    goto :goto_53

    .line 2060
    :cond_61
    move-object/from16 v1, p0

    .line 2061
    .line 2062
    iget-object v0, v2, Lh2/r;->c:[Lh2/p;

    .line 2063
    .line 2064
    array-length v3, v0

    .line 2065
    :goto_59
    if-ge v5, v3, :cond_63

    .line 2066
    .line 2067
    aget-object v4, v0, v5

    .line 2068
    .line 2069
    move/from16 v6, p1

    .line 2070
    .line 2071
    if-eqz v4, :cond_62

    .line 2072
    .line 2073
    invoke-interface {v4, v6}, Lh2/p;->i(F)V

    .line 2074
    .line 2075
    .line 2076
    move/from16 v7, p3

    .line 2077
    .line 2078
    invoke-interface {v4, v7}, Lh2/p;->b(Z)V

    .line 2079
    .line 2080
    .line 2081
    :goto_5a
    const/4 v4, 0x1

    .line 2082
    goto :goto_5b

    .line 2083
    :cond_62
    move/from16 v7, p3

    .line 2084
    .line 2085
    goto :goto_5a

    .line 2086
    :goto_5b
    add-int/2addr v5, v4

    .line 2087
    goto :goto_59

    .line 2088
    :cond_63
    return-object v2

    .line 2089
    :catchall_0
    move-exception v0

    .line 2090
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2091
    goto :goto_5d

    .line 2092
    :goto_5c
    throw v0

    .line 2093
    :goto_5d
    goto :goto_5c
.end method

.method public final k()V
    .locals 6

    .line 1
    iget-object v0, p0, Ly1/l0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lf2/c;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Ly1/l0;->g:Ly1/m0;

    .line 8
    .line 9
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    iget-wide v4, v1, Ly1/m0;->e:J

    .line 15
    .line 16
    cmp-long v1, v4, v2

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const-wide/high16 v4, -0x8000000000000000L

    .line 21
    .line 22
    :cond_0
    check-cast v0, Lf2/c;

    .line 23
    .line 24
    const-wide/16 v1, 0x0

    .line 25
    .line 26
    iput-wide v1, v0, Lf2/c;->f:J

    .line 27
    .line 28
    iput-wide v4, v0, Lf2/c;->g:J

    .line 29
    .line 30
    :cond_1
    return-void
.end method
