.class public final Ls3/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls3/f;


# instance fields
.field public final a:Ls3/a0;

.field public b:Ljava/lang/String;

.field public c:Ll2/j0;

.field public d:Ls3/o;

.field public e:Z

.field public final f:[Z

.field public final g:Ls3/t;

.field public final h:Ls3/t;

.field public final i:Ls3/t;

.field public final j:Ls3/t;

.field public final k:Ls3/t;

.field public l:J

.field public m:J

.field public final n:Lu1/q;


# direct methods
.method public constructor <init>(Ls3/a0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls3/p;->a:Ls3/a0;

    .line 5
    .line 6
    const/4 p1, 0x3

    .line 7
    new-array p1, p1, [Z

    .line 8
    .line 9
    iput-object p1, p0, Ls3/p;->f:[Z

    .line 10
    .line 11
    new-instance p1, Ls3/t;

    .line 12
    .line 13
    const/16 v0, 0x20

    .line 14
    .line 15
    invoke-direct {p1, v0}, Ls3/t;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Ls3/p;->g:Ls3/t;

    .line 19
    .line 20
    new-instance p1, Ls3/t;

    .line 21
    .line 22
    const/16 v0, 0x21

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ls3/t;-><init>(I)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Ls3/p;->h:Ls3/t;

    .line 28
    .line 29
    new-instance p1, Ls3/t;

    .line 30
    .line 31
    const/16 v0, 0x22

    .line 32
    .line 33
    invoke-direct {p1, v0}, Ls3/t;-><init>(I)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Ls3/p;->i:Ls3/t;

    .line 37
    .line 38
    new-instance p1, Ls3/t;

    .line 39
    .line 40
    const/16 v0, 0x27

    .line 41
    .line 42
    invoke-direct {p1, v0}, Ls3/t;-><init>(I)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Ls3/p;->j:Ls3/t;

    .line 46
    .line 47
    new-instance p1, Ls3/t;

    .line 48
    .line 49
    const/16 v0, 0x28

    .line 50
    .line 51
    invoke-direct {p1, v0}, Ls3/t;-><init>(I)V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Ls3/p;->k:Ls3/t;

    .line 55
    .line 56
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    iput-wide v0, p0, Ls3/p;->m:J

    .line 62
    .line 63
    new-instance p1, Lu1/q;

    .line 64
    .line 65
    invoke-direct {p1}, Lu1/q;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Ls3/p;->n:Lu1/q;

    .line 69
    .line 70
    return-void
.end method


# virtual methods
.method public final a(Lu1/q;)V
    .locals 18

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    const/4 v9, 0x3

    .line 6
    iget-object v0, v7, Ls3/p;->c:Ll2/j0;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget-object v0, Lu1/f0;->a:Ljava/lang/String;

    .line 12
    .line 13
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lu1/q;->a()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_5

    .line 18
    .line 19
    iget v0, v8, Lu1/q;->b:I

    .line 20
    .line 21
    iget v10, v8, Lu1/q;->c:I

    .line 22
    .line 23
    iget-object v11, v8, Lu1/q;->a:[B

    .line 24
    .line 25
    iget-wide v1, v7, Ls3/p;->l:J

    .line 26
    .line 27
    invoke-virtual/range {p1 .. p1}, Lu1/q;->a()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    int-to-long v3, v3

    .line 32
    add-long/2addr v1, v3

    .line 33
    iput-wide v1, v7, Ls3/p;->l:J

    .line 34
    .line 35
    iget-object v1, v7, Ls3/p;->c:Ll2/j0;

    .line 36
    .line 37
    invoke-virtual/range {p1 .. p1}, Lu1/q;->a()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-interface {v1, v2, v8}, Ll2/j0;->a(ILu1/q;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    if-ge v0, v10, :cond_0

    .line 45
    .line 46
    iget-object v1, v7, Ls3/p;->f:[Z

    .line 47
    .line 48
    invoke-static {v11, v0, v10, v1}, Lv1/o;->c([BII[Z)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-ne v1, v10, :cond_1

    .line 53
    .line 54
    invoke-virtual {v7, v0, v10, v11}, Ls3/p;->g(II[B)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    add-int/lit8 v2, v1, 0x3

    .line 59
    .line 60
    aget-byte v2, v11, v2

    .line 61
    .line 62
    and-int/lit8 v2, v2, 0x7e

    .line 63
    .line 64
    shr-int/lit8 v12, v2, 0x1

    .line 65
    .line 66
    if-lez v1, :cond_2

    .line 67
    .line 68
    add-int/lit8 v2, v1, -0x1

    .line 69
    .line 70
    aget-byte v2, v11, v2

    .line 71
    .line 72
    if-nez v2, :cond_2

    .line 73
    .line 74
    add-int/lit8 v1, v1, -0x1

    .line 75
    .line 76
    const/4 v2, 0x4

    .line 77
    move v13, v1

    .line 78
    const/4 v14, 0x4

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    move v13, v1

    .line 81
    const/4 v14, 0x3

    .line 82
    :goto_1
    sub-int v1, v13, v0

    .line 83
    .line 84
    if-lez v1, :cond_3

    .line 85
    .line 86
    invoke-virtual {v7, v0, v13, v11}, Ls3/p;->g(II[B)V

    .line 87
    .line 88
    .line 89
    :cond_3
    sub-int v15, v10, v13

    .line 90
    .line 91
    iget-wide v2, v7, Ls3/p;->l:J

    .line 92
    .line 93
    int-to-long v4, v15

    .line 94
    sub-long v16, v2, v4

    .line 95
    .line 96
    if-gez v1, :cond_4

    .line 97
    .line 98
    neg-int v0, v1

    .line 99
    move v2, v0

    .line 100
    goto :goto_2

    .line 101
    :cond_4
    const/4 v0, 0x0

    .line 102
    const/4 v2, 0x0

    .line 103
    :goto_2
    iget-wide v5, v7, Ls3/p;->m:J

    .line 104
    .line 105
    move-object/from16 v0, p0

    .line 106
    .line 107
    move v1, v15

    .line 108
    move-wide/from16 v3, v16

    .line 109
    .line 110
    invoke-virtual/range {v0 .. v6}, Ls3/p;->f(IIJJ)V

    .line 111
    .line 112
    .line 113
    iget-wide v5, v7, Ls3/p;->m:J

    .line 114
    .line 115
    move v2, v12

    .line 116
    invoke-virtual/range {v0 .. v6}, Ls3/p;->h(IIJJ)V

    .line 117
    .line 118
    .line 119
    add-int v0, v13, v14

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_5
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Ls3/p;->l:J

    .line 4
    .line 5
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    iput-wide v0, p0, Ls3/p;->m:J

    .line 11
    .line 12
    iget-object v0, p0, Ls3/p;->f:[Z

    .line 13
    .line 14
    invoke-static {v0}, Lv1/o;->b([Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Ls3/p;->g:Ls3/t;

    .line 18
    .line 19
    invoke-virtual {v0}, Ls3/t;->d()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Ls3/p;->h:Ls3/t;

    .line 23
    .line 24
    invoke-virtual {v0}, Ls3/t;->d()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Ls3/p;->i:Ls3/t;

    .line 28
    .line 29
    invoke-virtual {v0}, Ls3/t;->d()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Ls3/p;->j:Ls3/t;

    .line 33
    .line 34
    invoke-virtual {v0}, Ls3/t;->d()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Ls3/p;->k:Ls3/t;

    .line 38
    .line 39
    invoke-virtual {v0}, Ls3/t;->d()V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Ls3/p;->a:Ls3/a0;

    .line 43
    .line 44
    iget-object v0, v0, Ls3/a0;->d:Lb5/i;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-virtual {v0, v1}, Lb5/i;->d(I)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Ls3/p;->d:Ls3/o;

    .line 51
    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    iput-boolean v1, v0, Ls3/o;->f:Z

    .line 55
    .line 56
    iput-boolean v1, v0, Ls3/o;->g:Z

    .line 57
    .line 58
    iput-boolean v1, v0, Ls3/o;->h:Z

    .line 59
    .line 60
    iput-boolean v1, v0, Ls3/o;->i:Z

    .line 61
    .line 62
    iput-boolean v1, v0, Ls3/o;->j:Z

    .line 63
    .line 64
    :cond_0
    return-void
.end method

.method public final c(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Ls3/p;->c:Ll2/j0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lu1/f0;->a:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Ls3/p;->a:Ls3/a0;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iget-object v0, v0, Ls3/a0;->d:Lb5/i;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lb5/i;->d(I)V

    .line 16
    .line 17
    .line 18
    iget-wide v3, p0, Ls3/p;->l:J

    .line 19
    .line 20
    iget-wide v5, p0, Ls3/p;->m:J

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    move-object v0, p0

    .line 25
    invoke-virtual/range {v0 .. v6}, Ls3/p;->f(IIJJ)V

    .line 26
    .line 27
    .line 28
    iget-wide v3, p0, Ls3/p;->l:J

    .line 29
    .line 30
    iget-wide v5, p0, Ls3/p;->m:J

    .line 31
    .line 32
    const/16 v2, 0x30

    .line 33
    .line 34
    invoke-virtual/range {v0 .. v6}, Ls3/p;->h(IIJJ)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public final d(IJ)V
    .locals 0

    .line 1
    iput-wide p2, p0, Ls3/p;->m:J

    .line 2
    .line 3
    return-void
.end method

.method public final e(Ll2/q;Ls3/d0;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ls3/d0;->m()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ls3/d0;->n()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p2, Ls3/d0;->f:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Ls3/p;->b:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p2}, Ls3/d0;->n()V

    .line 14
    .line 15
    .line 16
    iget v0, p2, Ls3/d0;->d:I

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    invoke-interface {p1, v0, v1}, Ll2/q;->z(II)Ll2/j0;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Ls3/p;->c:Ll2/j0;

    .line 24
    .line 25
    new-instance v1, Ls3/o;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Ls3/o;-><init>(Ll2/j0;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Ls3/p;->d:Ls3/o;

    .line 31
    .line 32
    iget-object v0, p0, Ls3/p;->a:Ls3/a0;

    .line 33
    .line 34
    invoke-virtual {v0, p1, p2}, Ls3/a0;->b(Ll2/q;Ls3/d0;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final f(IIJJ)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-wide/from16 v2, p5

    .line 6
    .line 7
    iget-object v4, v0, Ls3/p;->d:Ls3/o;

    .line 8
    .line 9
    iget-boolean v5, v0, Ls3/p;->e:Z

    .line 10
    .line 11
    iget-boolean v6, v4, Ls3/o;->j:Z

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v8, 0x1

    .line 15
    if-eqz v6, :cond_0

    .line 16
    .line 17
    iget-boolean v6, v4, Ls3/o;->g:Z

    .line 18
    .line 19
    if-eqz v6, :cond_0

    .line 20
    .line 21
    iget-boolean v5, v4, Ls3/o;->c:Z

    .line 22
    .line 23
    iput-boolean v5, v4, Ls3/o;->m:Z

    .line 24
    .line 25
    iput-boolean v7, v4, Ls3/o;->j:Z

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-boolean v6, v4, Ls3/o;->h:Z

    .line 29
    .line 30
    if-nez v6, :cond_1

    .line 31
    .line 32
    iget-boolean v6, v4, Ls3/o;->g:Z

    .line 33
    .line 34
    if-eqz v6, :cond_3

    .line 35
    .line 36
    :cond_1
    if-eqz v5, :cond_2

    .line 37
    .line 38
    iget-boolean v5, v4, Ls3/o;->i:Z

    .line 39
    .line 40
    if-eqz v5, :cond_2

    .line 41
    .line 42
    iget-wide v5, v4, Ls3/o;->b:J

    .line 43
    .line 44
    sub-long v5, p3, v5

    .line 45
    .line 46
    long-to-int v6, v5

    .line 47
    add-int v5, p1, v6

    .line 48
    .line 49
    invoke-virtual {v4, v5}, Ls3/o;->a(I)V

    .line 50
    .line 51
    .line 52
    :cond_2
    iget-wide v5, v4, Ls3/o;->b:J

    .line 53
    .line 54
    iput-wide v5, v4, Ls3/o;->k:J

    .line 55
    .line 56
    iget-wide v5, v4, Ls3/o;->e:J

    .line 57
    .line 58
    iput-wide v5, v4, Ls3/o;->l:J

    .line 59
    .line 60
    iget-boolean v5, v4, Ls3/o;->c:Z

    .line 61
    .line 62
    iput-boolean v5, v4, Ls3/o;->m:Z

    .line 63
    .line 64
    iput-boolean v8, v4, Ls3/o;->i:Z

    .line 65
    .line 66
    :cond_3
    :goto_0
    iget-boolean v4, v0, Ls3/p;->e:Z

    .line 67
    .line 68
    iget-object v5, v0, Ls3/p;->a:Ls3/a0;

    .line 69
    .line 70
    iget-object v5, v5, Ls3/a0;->d:Lb5/i;

    .line 71
    .line 72
    if-nez v4, :cond_6

    .line 73
    .line 74
    iget-object v4, v0, Ls3/p;->g:Ls3/t;

    .line 75
    .line 76
    invoke-virtual {v4, v1}, Ls3/t;->b(I)Z

    .line 77
    .line 78
    .line 79
    iget-object v6, v0, Ls3/p;->h:Ls3/t;

    .line 80
    .line 81
    invoke-virtual {v6, v1}, Ls3/t;->b(I)Z

    .line 82
    .line 83
    .line 84
    iget-object v9, v0, Ls3/p;->i:Ls3/t;

    .line 85
    .line 86
    invoke-virtual {v9, v1}, Ls3/t;->b(I)Z

    .line 87
    .line 88
    .line 89
    iget-boolean v10, v4, Ls3/t;->c:Z

    .line 90
    .line 91
    if-eqz v10, :cond_6

    .line 92
    .line 93
    iget-boolean v10, v6, Ls3/t;->c:Z

    .line 94
    .line 95
    if-eqz v10, :cond_6

    .line 96
    .line 97
    iget-boolean v10, v9, Ls3/t;->c:Z

    .line 98
    .line 99
    if-eqz v10, :cond_6

    .line 100
    .line 101
    iget-object v10, v0, Ls3/p;->b:Ljava/lang/String;

    .line 102
    .line 103
    iget v11, v4, Ls3/t;->d:I

    .line 104
    .line 105
    iget v12, v6, Ls3/t;->d:I

    .line 106
    .line 107
    add-int/2addr v12, v11

    .line 108
    iget v13, v9, Ls3/t;->d:I

    .line 109
    .line 110
    add-int/2addr v12, v13

    .line 111
    new-array v12, v12, [B

    .line 112
    .line 113
    iget-object v13, v4, Ls3/t;->e:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v13, [B

    .line 116
    .line 117
    invoke-static {v13, v7, v12, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    .line 119
    .line 120
    iget-object v11, v6, Ls3/t;->e:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v11, [B

    .line 123
    .line 124
    iget v13, v4, Ls3/t;->d:I

    .line 125
    .line 126
    iget v14, v6, Ls3/t;->d:I

    .line 127
    .line 128
    invoke-static {v11, v7, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    .line 130
    .line 131
    iget-object v11, v9, Ls3/t;->e:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v11, [B

    .line 134
    .line 135
    iget v4, v4, Ls3/t;->d:I

    .line 136
    .line 137
    iget v13, v6, Ls3/t;->d:I

    .line 138
    .line 139
    add-int/2addr v4, v13

    .line 140
    iget v9, v9, Ls3/t;->d:I

    .line 141
    .line 142
    invoke-static {v11, v7, v12, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    .line 144
    .line 145
    iget-object v4, v6, Ls3/t;->e:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast v4, [B

    .line 148
    .line 149
    iget v6, v6, Ls3/t;->d:I

    .line 150
    .line 151
    const/4 v9, 0x3

    .line 152
    const/4 v11, 0x0

    .line 153
    invoke-static {v4, v9, v6, v11}, Lv1/o;->k([BIILa2/w0;)Lv1/k;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    iget-object v6, v4, Lv1/k;->b:Lv1/h;

    .line 158
    .line 159
    if-eqz v6, :cond_4

    .line 160
    .line 161
    iget v14, v6, Lv1/h;->c:I

    .line 162
    .line 163
    iget v15, v6, Lv1/h;->d:I

    .line 164
    .line 165
    iget v13, v6, Lv1/h;->a:I

    .line 166
    .line 167
    iget-boolean v9, v6, Lv1/h;->b:Z

    .line 168
    .line 169
    iget-object v11, v6, Lv1/h;->e:[I

    .line 170
    .line 171
    iget v6, v6, Lv1/h;->f:I

    .line 172
    .line 173
    move-object/from16 v16, v11

    .line 174
    .line 175
    move/from16 v17, v9

    .line 176
    .line 177
    move/from16 v18, v6

    .line 178
    .line 179
    invoke-static/range {v13 .. v18}, Lu1/c;->a(III[IZI)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v11

    .line 183
    :cond_4
    new-instance v6, Lr1/o;

    .line 184
    .line 185
    invoke-direct {v6}, Lr1/o;-><init>()V

    .line 186
    .line 187
    .line 188
    iput-object v10, v6, Lr1/o;->a:Ljava/lang/String;

    .line 189
    .line 190
    const-string v9, "video/mp2t"

    .line 191
    .line 192
    invoke-static {v9}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v9

    .line 196
    iput-object v9, v6, Lr1/o;->m:Ljava/lang/String;

    .line 197
    .line 198
    const-string v9, "video/hevc"

    .line 199
    .line 200
    invoke-static {v9}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    iput-object v9, v6, Lr1/o;->n:Ljava/lang/String;

    .line 205
    .line 206
    iput-object v11, v6, Lr1/o;->j:Ljava/lang/String;

    .line 207
    .line 208
    iget v9, v4, Lv1/k;->e:I

    .line 209
    .line 210
    iput v9, v6, Lr1/o;->u:I

    .line 211
    .line 212
    iget v9, v4, Lv1/k;->f:I

    .line 213
    .line 214
    iput v9, v6, Lr1/o;->v:I

    .line 215
    .line 216
    iget v9, v4, Lv1/k;->g:I

    .line 217
    .line 218
    iput v9, v6, Lr1/o;->w:I

    .line 219
    .line 220
    iget v9, v4, Lv1/k;->h:I

    .line 221
    .line 222
    iput v9, v6, Lr1/o;->x:I

    .line 223
    .line 224
    iget v9, v4, Lv1/k;->c:I

    .line 225
    .line 226
    add-int/lit8 v18, v9, 0x8

    .line 227
    .line 228
    iget v9, v4, Lv1/k;->d:I

    .line 229
    .line 230
    add-int/lit8 v19, v9, 0x8

    .line 231
    .line 232
    new-instance v9, Lr1/g;

    .line 233
    .line 234
    iget v14, v4, Lv1/k;->k:I

    .line 235
    .line 236
    iget v15, v4, Lv1/k;->l:I

    .line 237
    .line 238
    iget v10, v4, Lv1/k;->m:I

    .line 239
    .line 240
    const/16 v17, 0x0

    .line 241
    .line 242
    move-object v13, v9

    .line 243
    move/from16 v16, v10

    .line 244
    .line 245
    invoke-direct/range {v13 .. v19}, Lr1/g;-><init>(III[BII)V

    .line 246
    .line 247
    .line 248
    iput-object v9, v6, Lr1/o;->D:Lr1/g;

    .line 249
    .line 250
    iget v9, v4, Lv1/k;->i:F

    .line 251
    .line 252
    iput v9, v6, Lr1/o;->A:F

    .line 253
    .line 254
    iget v9, v4, Lv1/k;->j:I

    .line 255
    .line 256
    iput v9, v6, Lr1/o;->p:I

    .line 257
    .line 258
    iget v4, v4, Lv1/k;->a:I

    .line 259
    .line 260
    add-int/2addr v4, v8

    .line 261
    iput v4, v6, Lr1/o;->E:I

    .line 262
    .line 263
    invoke-static {v12}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 264
    .line 265
    .line 266
    move-result-object v4

    .line 267
    iput-object v4, v6, Lr1/o;->q:Ljava/util/List;

    .line 268
    .line 269
    new-instance v4, Lr1/p;

    .line 270
    .line 271
    invoke-direct {v4, v6}, Lr1/p;-><init>(Lr1/o;)V

    .line 272
    .line 273
    .line 274
    iget-object v6, v0, Ls3/p;->c:Ll2/j0;

    .line 275
    .line 276
    invoke-interface {v6, v4}, Ll2/j0;->g(Lr1/p;)V

    .line 277
    .line 278
    .line 279
    const/4 v6, -0x1

    .line 280
    iget v4, v4, Lr1/p;->q:I

    .line 281
    .line 282
    if-eq v4, v6, :cond_5

    .line 283
    .line 284
    const/4 v7, 0x1

    .line 285
    :cond_5
    invoke-static {v7}, La9/o;->t(Z)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v5, v4}, Lb5/i;->n(I)V

    .line 289
    .line 290
    .line 291
    iput-boolean v8, v0, Ls3/p;->e:Z

    .line 292
    .line 293
    :cond_6
    iget-object v4, v0, Ls3/p;->j:Ls3/t;

    .line 294
    .line 295
    invoke-virtual {v4, v1}, Ls3/t;->b(I)Z

    .line 296
    .line 297
    .line 298
    move-result v6

    .line 299
    const/4 v7, 0x5

    .line 300
    iget-object v8, v0, Ls3/p;->n:Lu1/q;

    .line 301
    .line 302
    if-eqz v6, :cond_7

    .line 303
    .line 304
    iget-object v6, v4, Ls3/t;->e:Ljava/lang/Object;

    .line 305
    .line 306
    check-cast v6, [B

    .line 307
    .line 308
    iget v9, v4, Ls3/t;->d:I

    .line 309
    .line 310
    invoke-static {v9, v6}, Lv1/o;->p(I[B)I

    .line 311
    .line 312
    .line 313
    move-result v6

    .line 314
    iget-object v4, v4, Ls3/t;->e:Ljava/lang/Object;

    .line 315
    .line 316
    check-cast v4, [B

    .line 317
    .line 318
    invoke-virtual {v8, v6, v4}, Lu1/q;->M(I[B)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v8, v7}, Lu1/q;->P(I)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v5, v2, v3, v8}, Lb5/i;->a(JLu1/q;)V

    .line 325
    .line 326
    .line 327
    :cond_7
    iget-object v4, v0, Ls3/p;->k:Ls3/t;

    .line 328
    .line 329
    invoke-virtual {v4, v1}, Ls3/t;->b(I)Z

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    if-eqz v1, :cond_8

    .line 334
    .line 335
    iget-object v1, v4, Ls3/t;->e:Ljava/lang/Object;

    .line 336
    .line 337
    check-cast v1, [B

    .line 338
    .line 339
    iget v6, v4, Ls3/t;->d:I

    .line 340
    .line 341
    invoke-static {v6, v1}, Lv1/o;->p(I[B)I

    .line 342
    .line 343
    .line 344
    move-result v1

    .line 345
    iget-object v4, v4, Ls3/t;->e:Ljava/lang/Object;

    .line 346
    .line 347
    check-cast v4, [B

    .line 348
    .line 349
    invoke-virtual {v8, v1, v4}, Lu1/q;->M(I[B)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v8, v7}, Lu1/q;->P(I)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v5, v2, v3, v8}, Lb5/i;->a(JLu1/q;)V

    .line 356
    .line 357
    .line 358
    :cond_8
    return-void
.end method

.method public final g(II[B)V
    .locals 3

    .line 1
    iget-object v0, p0, Ls3/p;->d:Ls3/o;

    .line 2
    .line 3
    iget-boolean v1, v0, Ls3/o;->f:Z

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    add-int/lit8 v1, p1, 0x2

    .line 8
    .line 9
    iget v2, v0, Ls3/o;->d:I

    .line 10
    .line 11
    sub-int/2addr v1, v2

    .line 12
    if-ge v1, p2, :cond_1

    .line 13
    .line 14
    aget-byte v1, p3, v1

    .line 15
    .line 16
    and-int/lit16 v1, v1, 0x80

    .line 17
    .line 18
    const/4 v2, 0x0

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
    iput-boolean v1, v0, Ls3/o;->g:Z

    .line 25
    .line 26
    iput-boolean v2, v0, Ls3/o;->f:Z

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    sub-int v1, p2, p1

    .line 30
    .line 31
    add-int/2addr v1, v2

    .line 32
    iput v1, v0, Ls3/o;->d:I

    .line 33
    .line 34
    :cond_2
    :goto_1
    iget-boolean v0, p0, Ls3/p;->e:Z

    .line 35
    .line 36
    if-nez v0, :cond_3

    .line 37
    .line 38
    iget-object v0, p0, Ls3/p;->g:Ls3/t;

    .line 39
    .line 40
    invoke-virtual {v0, p1, p2, p3}, Ls3/t;->a(II[B)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Ls3/p;->h:Ls3/t;

    .line 44
    .line 45
    invoke-virtual {v0, p1, p2, p3}, Ls3/t;->a(II[B)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Ls3/p;->i:Ls3/t;

    .line 49
    .line 50
    invoke-virtual {v0, p1, p2, p3}, Ls3/t;->a(II[B)V

    .line 51
    .line 52
    .line 53
    :cond_3
    iget-object v0, p0, Ls3/p;->j:Ls3/t;

    .line 54
    .line 55
    invoke-virtual {v0, p1, p2, p3}, Ls3/t;->a(II[B)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Ls3/p;->k:Ls3/t;

    .line 59
    .line 60
    invoke-virtual {v0, p1, p2, p3}, Ls3/t;->a(II[B)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final h(IIJJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Ls3/p;->d:Ls3/o;

    .line 2
    .line 3
    iget-boolean v1, p0, Ls3/p;->e:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-boolean v2, v0, Ls3/o;->g:Z

    .line 7
    .line 8
    iput-boolean v2, v0, Ls3/o;->h:Z

    .line 9
    .line 10
    iput-wide p5, v0, Ls3/o;->e:J

    .line 11
    .line 12
    iput v2, v0, Ls3/o;->d:I

    .line 13
    .line 14
    iput-wide p3, v0, Ls3/o;->b:J

    .line 15
    .line 16
    const/16 p3, 0x20

    .line 17
    .line 18
    const/4 p4, 0x1

    .line 19
    if-lt p2, p3, :cond_5

    .line 20
    .line 21
    const/16 p5, 0x28

    .line 22
    .line 23
    if-ne p2, p5, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-boolean p5, v0, Ls3/o;->i:Z

    .line 27
    .line 28
    if-eqz p5, :cond_2

    .line 29
    .line 30
    iget-boolean p5, v0, Ls3/o;->j:Z

    .line 31
    .line 32
    if-nez p5, :cond_2

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ls3/o;->a(I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iput-boolean v2, v0, Ls3/o;->i:Z

    .line 40
    .line 41
    :cond_2
    if-gt p3, p2, :cond_3

    .line 42
    .line 43
    const/16 p1, 0x23

    .line 44
    .line 45
    if-le p2, p1, :cond_4

    .line 46
    .line 47
    :cond_3
    const/16 p1, 0x27

    .line 48
    .line 49
    if-ne p2, p1, :cond_5

    .line 50
    .line 51
    :cond_4
    iget-boolean p1, v0, Ls3/o;->j:Z

    .line 52
    .line 53
    xor-int/2addr p1, p4

    .line 54
    iput-boolean p1, v0, Ls3/o;->h:Z

    .line 55
    .line 56
    iput-boolean p4, v0, Ls3/o;->j:Z

    .line 57
    .line 58
    :cond_5
    :goto_0
    const/16 p1, 0x10

    .line 59
    .line 60
    if-lt p2, p1, :cond_6

    .line 61
    .line 62
    const/16 p1, 0x15

    .line 63
    .line 64
    if-gt p2, p1, :cond_6

    .line 65
    .line 66
    const/4 p1, 0x1

    .line 67
    goto :goto_1

    .line 68
    :cond_6
    const/4 p1, 0x0

    .line 69
    :goto_1
    iput-boolean p1, v0, Ls3/o;->c:Z

    .line 70
    .line 71
    if-nez p1, :cond_7

    .line 72
    .line 73
    const/16 p1, 0x9

    .line 74
    .line 75
    if-gt p2, p1, :cond_8

    .line 76
    .line 77
    :cond_7
    const/4 v2, 0x1

    .line 78
    :cond_8
    iput-boolean v2, v0, Ls3/o;->f:Z

    .line 79
    .line 80
    iget-boolean p1, p0, Ls3/p;->e:Z

    .line 81
    .line 82
    if-nez p1, :cond_9

    .line 83
    .line 84
    iget-object p1, p0, Ls3/p;->g:Ls3/t;

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Ls3/t;->e(I)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Ls3/p;->h:Ls3/t;

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Ls3/t;->e(I)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Ls3/p;->i:Ls3/t;

    .line 95
    .line 96
    invoke-virtual {p1, p2}, Ls3/t;->e(I)V

    .line 97
    .line 98
    .line 99
    :cond_9
    iget-object p1, p0, Ls3/p;->j:Ls3/t;

    .line 100
    .line 101
    invoke-virtual {p1, p2}, Ls3/t;->e(I)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Ls3/p;->k:Ls3/t;

    .line 105
    .line 106
    invoke-virtual {p1, p2}, Ls3/t;->e(I)V

    .line 107
    .line 108
    .line 109
    return-void
.end method
