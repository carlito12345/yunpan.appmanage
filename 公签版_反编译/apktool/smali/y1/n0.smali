.class public final Ly1/n0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr1/o0;

.field public final b:Lr1/p0;

.field public final c:Lz1/e;

.field public final d:Lu1/b0;

.field public final e:Ly1/y;

.field public f:J

.field public g:I

.field public h:Z

.field public i:Ly1/l0;

.field public j:Ly1/l0;

.field public k:Ly1/l0;

.field public l:Ly1/l0;

.field public m:Ly1/l0;

.field public n:I

.field public o:Ljava/lang/Object;

.field public p:J

.field public q:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lz1/e;Lu1/b0;Ly1/y;Ly1/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly1/n0;->c:Lz1/e;

    .line 5
    .line 6
    iput-object p2, p0, Ly1/n0;->d:Lu1/b0;

    .line 7
    .line 8
    iput-object p3, p0, Ly1/n0;->e:Ly1/y;

    .line 9
    .line 10
    new-instance p1, Lr1/o0;

    .line 11
    .line 12
    invoke-direct {p1}, Lr1/o0;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Ly1/n0;->a:Lr1/o0;

    .line 16
    .line 17
    new-instance p1, Lr1/p0;

    .line 18
    .line 19
    invoke-direct {p1}, Lr1/p0;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Ly1/n0;->b:Lr1/p0;

    .line 23
    .line 24
    new-instance p1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Ly1/n0;->q:Ljava/util/ArrayList;

    .line 30
    .line 31
    return-void
.end method

.method public static o(Lr1/q0;Ljava/lang/Object;JJLr1/p0;Lr1/o0;)Lf2/c0;
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-wide v2, p2

    .line 4
    move-object/from16 v4, p7

    .line 5
    .line 6
    invoke-virtual {p0, p1, v4}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 7
    .line 8
    .line 9
    iget v5, v4, Lr1/o0;->c:I

    .line 10
    .line 11
    move-object/from16 v6, p6

    .line 12
    .line 13
    invoke-virtual {p0, v5, v6}, Lr1/q0;->n(ILr1/p0;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lr1/q0;->b(Ljava/lang/Object;)I

    .line 17
    .line 18
    .line 19
    iget-object v5, v4, Lr1/o0;->g:Lr1/c;

    .line 20
    .line 21
    iget v5, v5, Lr1/c;->a:I

    .line 22
    .line 23
    if-eqz v5, :cond_1

    .line 24
    .line 25
    const/4 v6, 0x1

    .line 26
    const/4 v7, 0x0

    .line 27
    if-ne v5, v6, :cond_0

    .line 28
    .line 29
    invoke-virtual {v4, v7}, Lr1/o0;->f(I)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v5, v4, Lr1/o0;->g:Lr1/c;

    .line 33
    .line 34
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4, v7}, Lr1/o0;->g(I)Z

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {p0, p1, v4}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, p2, p3}, Lr1/o0;->c(J)I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    const/4 v0, -0x1

    .line 48
    if-ne v5, v0, :cond_2

    .line 49
    .line 50
    invoke-virtual {v4, p2, p3}, Lr1/o0;->b(J)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    new-instance v2, Lf2/c0;

    .line 55
    .line 56
    move-wide v6, p4

    .line 57
    invoke-direct {v2, v0, p4, p5, p1}, Lf2/c0;-><init>(IJLjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    return-object v2

    .line 61
    :cond_2
    move-wide v6, p4

    .line 62
    invoke-virtual {v4, v5}, Lr1/o0;->e(I)I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    new-instance v8, Lf2/c0;

    .line 67
    .line 68
    const/4 v9, -0x1

    .line 69
    move-object v0, v8

    .line 70
    move-object v1, p1

    .line 71
    move v2, v5

    .line 72
    move-wide v4, p4

    .line 73
    move v6, v9

    .line 74
    invoke-direct/range {v0 .. v6}, Lf2/c0;-><init>(Ljava/lang/Object;IIJI)V

    .line 75
    .line 76
    .line 77
    return-object v8
.end method


# virtual methods
.method public final a()Ly1/l0;
    .locals 3

    .line 1
    iget-object v0, p0, Ly1/n0;->i:Ly1/l0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-object v2, p0, Ly1/n0;->j:Ly1/l0;

    .line 8
    .line 9
    if-ne v0, v2, :cond_1

    .line 10
    .line 11
    iget-object v2, v0, Ly1/l0;->m:Ly1/l0;

    .line 12
    .line 13
    iput-object v2, p0, Ly1/n0;->j:Ly1/l0;

    .line 14
    .line 15
    :cond_1
    iget-object v2, p0, Ly1/n0;->k:Ly1/l0;

    .line 16
    .line 17
    if-ne v0, v2, :cond_2

    .line 18
    .line 19
    iget-object v2, v0, Ly1/l0;->m:Ly1/l0;

    .line 20
    .line 21
    iput-object v2, p0, Ly1/n0;->k:Ly1/l0;

    .line 22
    .line 23
    :cond_2
    invoke-virtual {v0}, Ly1/l0;->i()V

    .line 24
    .line 25
    .line 26
    iget v0, p0, Ly1/n0;->n:I

    .line 27
    .line 28
    add-int/lit8 v0, v0, -0x1

    .line 29
    .line 30
    iput v0, p0, Ly1/n0;->n:I

    .line 31
    .line 32
    if-nez v0, :cond_3

    .line 33
    .line 34
    iput-object v1, p0, Ly1/n0;->l:Ly1/l0;

    .line 35
    .line 36
    iget-object v0, p0, Ly1/n0;->i:Ly1/l0;

    .line 37
    .line 38
    iget-object v1, v0, Ly1/l0;->b:Ljava/lang/Object;

    .line 39
    .line 40
    iput-object v1, p0, Ly1/n0;->o:Ljava/lang/Object;

    .line 41
    .line 42
    iget-object v0, v0, Ly1/l0;->g:Ly1/m0;

    .line 43
    .line 44
    iget-object v0, v0, Ly1/m0;->a:Lf2/c0;

    .line 45
    .line 46
    iget-wide v0, v0, Lf2/c0;->d:J

    .line 47
    .line 48
    iput-wide v0, p0, Ly1/n0;->p:J

    .line 49
    .line 50
    :cond_3
    iget-object v0, p0, Ly1/n0;->i:Ly1/l0;

    .line 51
    .line 52
    iget-object v0, v0, Ly1/l0;->m:Ly1/l0;

    .line 53
    .line 54
    iput-object v0, p0, Ly1/n0;->i:Ly1/l0;

    .line 55
    .line 56
    invoke-virtual {p0}, Ly1/n0;->l()V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Ly1/n0;->i:Ly1/l0;

    .line 60
    .line 61
    return-object v0
.end method

.method public final b()V
    .locals 3

    .line 1
    iget v0, p0, Ly1/n0;->n:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Ly1/n0;->i:Ly1/l0;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Ly1/l0;->b:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object v1, p0, Ly1/n0;->o:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v1, v0, Ly1/l0;->g:Ly1/m0;

    .line 16
    .line 17
    iget-object v1, v1, Ly1/m0;->a:Lf2/c0;

    .line 18
    .line 19
    iget-wide v1, v1, Lf2/c0;->d:J

    .line 20
    .line 21
    iput-wide v1, p0, Ly1/n0;->p:J

    .line 22
    .line 23
    :goto_0
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Ly1/l0;->i()V

    .line 26
    .line 27
    .line 28
    iget-object v0, v0, Ly1/l0;->m:Ly1/l0;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Ly1/n0;->i:Ly1/l0;

    .line 33
    .line 34
    iput-object v0, p0, Ly1/n0;->l:Ly1/l0;

    .line 35
    .line 36
    iput-object v0, p0, Ly1/n0;->j:Ly1/l0;

    .line 37
    .line 38
    iput-object v0, p0, Ly1/n0;->k:Ly1/l0;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    iput v0, p0, Ly1/n0;->n:I

    .line 42
    .line 43
    invoke-virtual {p0}, Ly1/n0;->l()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final c(Lr1/q0;Ly1/l0;J)Ly1/m0;
    .locals 22

    .line 1
    move-object/from16 v12, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    iget-object v10, v9, Ly1/l0;->g:Ly1/m0;

    .line 8
    .line 9
    iget-wide v0, v9, Ly1/l0;->p:J

    .line 10
    .line 11
    iget-wide v2, v10, Ly1/m0;->f:J

    .line 12
    .line 13
    add-long/2addr v0, v2

    .line 14
    sub-long v6, v0, p3

    .line 15
    .line 16
    iget-boolean v0, v10, Ly1/m0;->i:Z

    .line 17
    .line 18
    if-eqz v0, :cond_8

    .line 19
    .line 20
    iget-object v10, v9, Ly1/l0;->g:Ly1/m0;

    .line 21
    .line 22
    iget-object v11, v10, Ly1/m0;->a:Lf2/c0;

    .line 23
    .line 24
    iget-object v0, v11, Lf2/c0;->a:Ljava/lang/Object;

    .line 25
    .line 26
    invoke-virtual {v8, v0}, Lr1/q0;->b(Ljava/lang/Object;)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iget v4, v12, Ly1/n0;->g:I

    .line 31
    .line 32
    iget-boolean v5, v12, Ly1/n0;->h:Z

    .line 33
    .line 34
    iget-object v2, v12, Ly1/n0;->a:Lr1/o0;

    .line 35
    .line 36
    iget-object v3, v12, Ly1/n0;->b:Lr1/p0;

    .line 37
    .line 38
    move-object/from16 v0, p1

    .line 39
    .line 40
    invoke-virtual/range {v0 .. v5}, Lr1/q0;->d(ILr1/o0;Lr1/p0;IZ)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v1, -0x1

    .line 45
    if-ne v0, v1, :cond_0

    .line 46
    .line 47
    :goto_0
    const/4 v13, 0x0

    .line 48
    goto/16 :goto_8

    .line 49
    .line 50
    :cond_0
    const/4 v1, 0x1

    .line 51
    iget-object v14, v12, Ly1/n0;->a:Lr1/o0;

    .line 52
    .line 53
    invoke-virtual {v8, v0, v14, v1}, Lr1/q0;->f(ILr1/o0;Z)Lr1/o0;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iget v3, v1, Lr1/o0;->c:I

    .line 58
    .line 59
    iget-object v1, v14, Lr1/o0;->b:Ljava/lang/Object;

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    iget-wide v4, v11, Lf2/c0;->d:J

    .line 65
    .line 66
    iget-object v2, v12, Ly1/n0;->b:Lr1/p0;

    .line 67
    .line 68
    move-object/from16 p4, v14

    .line 69
    .line 70
    const-wide/16 v13, 0x0

    .line 71
    .line 72
    invoke-virtual {v8, v3, v2, v13, v14}, Lr1/q0;->m(ILr1/p0;J)Lr1/p0;

    .line 73
    .line 74
    .line 75
    move-result-object v15

    .line 76
    iget v15, v15, Lr1/p0;->m:I

    .line 77
    .line 78
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    if-ne v15, v0, :cond_6

    .line 84
    .line 85
    move-object/from16 v15, p4

    .line 86
    .line 87
    iget v0, v15, Lr1/o0;->c:I

    .line 88
    .line 89
    iget-wide v4, v15, Lr1/o0;->d:J

    .line 90
    .line 91
    cmp-long v1, v4, v16

    .line 92
    .line 93
    if-eqz v1, :cond_1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    invoke-virtual {v8, v0, v2}, Lr1/q0;->n(ILr1/p0;)V

    .line 97
    .line 98
    .line 99
    iget-boolean v0, v2, Lr1/p0;->h:Z

    .line 100
    .line 101
    if-eqz v0, :cond_2

    .line 102
    .line 103
    iget-boolean v0, v2, Lr1/p0;->j:Z

    .line 104
    .line 105
    if-nez v0, :cond_2

    .line 106
    .line 107
    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 108
    .line 109
    .line 110
    move-result-wide v0

    .line 111
    move-wide v13, v0

    .line 112
    goto :goto_2

    .line 113
    :cond_2
    :goto_1
    move-wide/from16 v13, v16

    .line 114
    .line 115
    :goto_2
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    iget-object v1, v12, Ly1/n0;->b:Lr1/p0;

    .line 121
    .line 122
    iget-object v2, v12, Ly1/n0;->a:Lr1/o0;

    .line 123
    .line 124
    move-object/from16 v0, p1

    .line 125
    .line 126
    move-wide v6, v13

    .line 127
    invoke-virtual/range {v0 .. v7}, Lr1/q0;->j(Lr1/p0;Lr1/o0;IJJ)Landroid/util/Pair;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    if-nez v0, :cond_3

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_3
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 135
    .line 136
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v0, Ljava/lang/Long;

    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 141
    .line 142
    .line 143
    move-result-wide v2

    .line 144
    iget-object v0, v9, Ly1/l0;->m:Ly1/l0;

    .line 145
    .line 146
    if-eqz v0, :cond_5

    .line 147
    .line 148
    iget-object v4, v0, Ly1/l0;->b:Ljava/lang/Object;

    .line 149
    .line 150
    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    if-eqz v4, :cond_5

    .line 155
    .line 156
    iget-object v0, v0, Ly1/l0;->g:Ly1/m0;

    .line 157
    .line 158
    iget-object v0, v0, Ly1/m0;->a:Lf2/c0;

    .line 159
    .line 160
    iget-wide v4, v0, Lf2/c0;->d:J

    .line 161
    .line 162
    :cond_4
    :goto_3
    move-wide/from16 v18, v2

    .line 163
    .line 164
    move-wide/from16 v20, v13

    .line 165
    .line 166
    move-wide/from16 v13, v16

    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_5
    invoke-virtual {v12, v1}, Ly1/n0;->q(Ljava/lang/Object;)J

    .line 170
    .line 171
    .line 172
    move-result-wide v4

    .line 173
    const-wide/16 v6, -0x1

    .line 174
    .line 175
    cmp-long v0, v4, v6

    .line 176
    .line 177
    if-nez v0, :cond_4

    .line 178
    .line 179
    iget-wide v4, v12, Ly1/n0;->f:J

    .line 180
    .line 181
    const-wide/16 v6, 0x1

    .line 182
    .line 183
    add-long/2addr v6, v4

    .line 184
    iput-wide v6, v12, Ly1/n0;->f:J

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_6
    move-object/from16 v15, p4

    .line 188
    .line 189
    move-wide/from16 v18, v13

    .line 190
    .line 191
    move-wide/from16 v20, v16

    .line 192
    .line 193
    :goto_4
    iget-object v6, v12, Ly1/n0;->b:Lr1/p0;

    .line 194
    .line 195
    iget-object v7, v12, Ly1/n0;->a:Lr1/o0;

    .line 196
    .line 197
    move-object/from16 v0, p1

    .line 198
    .line 199
    move-wide/from16 v2, v18

    .line 200
    .line 201
    invoke-static/range {v0 .. v7}, Ly1/n0;->o(Lr1/q0;Ljava/lang/Object;JJLr1/p0;Lr1/o0;)Lf2/c0;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    cmp-long v0, v13, v16

    .line 206
    .line 207
    if-eqz v0, :cond_7

    .line 208
    .line 209
    iget-wide v0, v10, Ly1/m0;->d:J

    .line 210
    .line 211
    cmp-long v3, v0, v16

    .line 212
    .line 213
    if-eqz v3, :cond_7

    .line 214
    .line 215
    iget-object v0, v11, Lf2/c0;->a:Ljava/lang/Object;

    .line 216
    .line 217
    invoke-virtual {v8, v0, v15}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    iget-object v0, v0, Lr1/o0;->g:Lr1/c;

    .line 222
    .line 223
    iget v0, v0, Lr1/c;->a:I

    .line 224
    .line 225
    iget-object v1, v15, Lr1/o0;->g:Lr1/c;

    .line 226
    .line 227
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    if-lez v0, :cond_7

    .line 231
    .line 232
    const/4 v0, 0x0

    .line 233
    invoke-virtual {v15, v0}, Lr1/o0;->g(I)Z

    .line 234
    .line 235
    .line 236
    :cond_7
    move-object/from16 v0, p0

    .line 237
    .line 238
    move-object/from16 v1, p1

    .line 239
    .line 240
    move-wide v3, v13

    .line 241
    move-wide/from16 v5, v18

    .line 242
    .line 243
    move-wide/from16 v7, v20

    .line 244
    .line 245
    invoke-virtual/range {v0 .. v8}, Ly1/n0;->d(Lr1/q0;Lf2/c0;JJJ)Ly1/m0;

    .line 246
    .line 247
    .line 248
    move-result-object v13

    .line 249
    goto/16 :goto_8

    .line 250
    .line 251
    :cond_8
    iget-object v9, v10, Ly1/m0;->a:Lf2/c0;

    .line 252
    .line 253
    iget-object v0, v9, Lf2/c0;->a:Ljava/lang/Object;

    .line 254
    .line 255
    iget-object v11, v12, Ly1/n0;->a:Lr1/o0;

    .line 256
    .line 257
    invoke-virtual {v8, v0, v11}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v9}, Lf2/c0;->b()Z

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    const/4 v1, -0x1

    .line 265
    iget-object v13, v9, Lf2/c0;->a:Ljava/lang/Object;

    .line 266
    .line 267
    iget-boolean v14, v10, Ly1/m0;->h:Z

    .line 268
    .line 269
    if-eqz v0, :cond_f

    .line 270
    .line 271
    iget-object v0, v11, Lr1/o0;->g:Lr1/c;

    .line 272
    .line 273
    iget v3, v9, Lf2/c0;->b:I

    .line 274
    .line 275
    invoke-virtual {v0, v3}, Lr1/c;->a(I)Lr1/a;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    iget v0, v0, Lr1/a;->a:I

    .line 280
    .line 281
    if-ne v0, v1, :cond_9

    .line 282
    .line 283
    goto/16 :goto_0

    .line 284
    .line 285
    :cond_9
    iget-object v1, v11, Lr1/o0;->g:Lr1/c;

    .line 286
    .line 287
    invoke-virtual {v1, v3}, Lr1/c;->a(I)Lr1/a;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    iget v2, v9, Lf2/c0;->c:I

    .line 292
    .line 293
    invoke-virtual {v1, v2}, Lr1/a;->a(I)I

    .line 294
    .line 295
    .line 296
    move-result v4

    .line 297
    if-ge v4, v0, :cond_a

    .line 298
    .line 299
    iget-object v2, v9, Lf2/c0;->a:Ljava/lang/Object;

    .line 300
    .line 301
    iget-wide v5, v10, Ly1/m0;->d:J

    .line 302
    .line 303
    iget-wide v9, v9, Lf2/c0;->d:J

    .line 304
    .line 305
    move-object/from16 v0, p0

    .line 306
    .line 307
    move-object/from16 v1, p1

    .line 308
    .line 309
    move-wide v7, v9

    .line 310
    move v9, v14

    .line 311
    invoke-virtual/range {v0 .. v9}, Ly1/n0;->e(Lr1/q0;Ljava/lang/Object;IIJJZ)Ly1/m0;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    :goto_5
    move-object v13, v0

    .line 316
    goto/16 :goto_8

    .line 317
    .line 318
    :cond_a
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    iget-wide v2, v10, Ly1/m0;->d:J

    .line 324
    .line 325
    cmp-long v16, v2, v0

    .line 326
    .line 327
    if-nez v16, :cond_e

    .line 328
    .line 329
    iget v2, v11, Lr1/o0;->c:I

    .line 330
    .line 331
    iget-wide v4, v11, Lr1/o0;->d:J

    .line 332
    .line 333
    cmp-long v3, v4, v0

    .line 334
    .line 335
    if-eqz v3, :cond_c

    .line 336
    .line 337
    :cond_b
    const-wide/16 v4, 0x0

    .line 338
    .line 339
    goto :goto_6

    .line 340
    :cond_c
    iget-object v3, v12, Ly1/n0;->b:Lr1/p0;

    .line 341
    .line 342
    invoke-virtual {v8, v2, v3}, Lr1/q0;->n(ILr1/p0;)V

    .line 343
    .line 344
    .line 345
    iget-boolean v2, v3, Lr1/p0;->h:Z

    .line 346
    .line 347
    if-eqz v2, :cond_b

    .line 348
    .line 349
    iget-boolean v2, v3, Lr1/p0;->j:Z

    .line 350
    .line 351
    if-nez v2, :cond_b

    .line 352
    .line 353
    const-wide/16 v4, 0x0

    .line 354
    .line 355
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 356
    .line 357
    .line 358
    move-result-wide v0

    .line 359
    :goto_6
    move-wide/from16 v16, v0

    .line 360
    .line 361
    iget v3, v11, Lr1/o0;->c:I

    .line 362
    .line 363
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    iget-object v1, v12, Ly1/n0;->b:Lr1/p0;

    .line 369
    .line 370
    move-object/from16 v0, p1

    .line 371
    .line 372
    move-object v2, v11

    .line 373
    move/from16 v18, v14

    .line 374
    .line 375
    move-wide v14, v4

    .line 376
    move-wide v4, v6

    .line 377
    move-wide/from16 v6, v16

    .line 378
    .line 379
    invoke-virtual/range {v0 .. v7}, Lr1/q0;->j(Lr1/p0;Lr1/o0;IJJ)Landroid/util/Pair;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    if-nez v0, :cond_d

    .line 384
    .line 385
    goto/16 :goto_0

    .line 386
    .line 387
    :cond_d
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 388
    .line 389
    check-cast v0, Ljava/lang/Long;

    .line 390
    .line 391
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 392
    .line 393
    .line 394
    move-result-wide v2

    .line 395
    move-wide/from16 v5, v16

    .line 396
    .line 397
    goto :goto_7

    .line 398
    :cond_e
    move/from16 v18, v14

    .line 399
    .line 400
    const-wide/16 v14, 0x0

    .line 401
    .line 402
    move-wide v5, v0

    .line 403
    :goto_7
    invoke-virtual {v8, v13, v11}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 404
    .line 405
    .line 406
    iget v0, v9, Lf2/c0;->b:I

    .line 407
    .line 408
    invoke-virtual {v11, v0}, Lr1/o0;->d(I)J

    .line 409
    .line 410
    .line 411
    iget-object v1, v11, Lr1/o0;->g:Lr1/c;

    .line 412
    .line 413
    invoke-virtual {v1, v0}, Lr1/c;->a(I)Lr1/a;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 418
    .line 419
    .line 420
    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 421
    .line 422
    .line 423
    move-result-wide v3

    .line 424
    iget-object v2, v9, Lf2/c0;->a:Ljava/lang/Object;

    .line 425
    .line 426
    iget-wide v10, v10, Ly1/m0;->d:J

    .line 427
    .line 428
    iget-wide v13, v9, Lf2/c0;->d:J

    .line 429
    .line 430
    move-object/from16 v0, p0

    .line 431
    .line 432
    move-object/from16 v1, p1

    .line 433
    .line 434
    move-wide v7, v10

    .line 435
    move-wide v9, v13

    .line 436
    move/from16 v11, v18

    .line 437
    .line 438
    invoke-virtual/range {v0 .. v11}, Ly1/n0;->f(Lr1/q0;Ljava/lang/Object;JJJJZ)Ly1/m0;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    goto :goto_5

    .line 443
    :cond_f
    move/from16 v18, v14

    .line 444
    .line 445
    iget v0, v9, Lf2/c0;->e:I

    .line 446
    .line 447
    if-eq v0, v1, :cond_10

    .line 448
    .line 449
    invoke-virtual {v11, v0}, Lr1/o0;->f(I)Z

    .line 450
    .line 451
    .line 452
    :cond_10
    invoke-virtual {v11, v0}, Lr1/o0;->e(I)I

    .line 453
    .line 454
    .line 455
    move-result v4

    .line 456
    invoke-virtual {v11, v0}, Lr1/o0;->g(I)Z

    .line 457
    .line 458
    .line 459
    iget-object v1, v11, Lr1/o0;->g:Lr1/c;

    .line 460
    .line 461
    invoke-virtual {v1, v0}, Lr1/c;->a(I)Lr1/a;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    iget v1, v1, Lr1/a;->a:I

    .line 466
    .line 467
    if-eq v4, v1, :cond_11

    .line 468
    .line 469
    iget-wide v5, v10, Ly1/m0;->f:J

    .line 470
    .line 471
    iget-wide v10, v9, Lf2/c0;->d:J

    .line 472
    .line 473
    iget-object v2, v9, Lf2/c0;->a:Ljava/lang/Object;

    .line 474
    .line 475
    iget v3, v9, Lf2/c0;->e:I

    .line 476
    .line 477
    move-object/from16 v0, p0

    .line 478
    .line 479
    move-object/from16 v1, p1

    .line 480
    .line 481
    move-wide v7, v10

    .line 482
    move/from16 v9, v18

    .line 483
    .line 484
    invoke-virtual/range {v0 .. v9}, Ly1/n0;->e(Lr1/q0;Ljava/lang/Object;IIJJZ)Ly1/m0;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    goto/16 :goto_5

    .line 489
    .line 490
    :cond_11
    invoke-virtual {v8, v13, v11}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v11, v0}, Lr1/o0;->d(I)J

    .line 494
    .line 495
    .line 496
    iget-object v1, v11, Lr1/o0;->g:Lr1/c;

    .line 497
    .line 498
    invoke-virtual {v1, v0}, Lr1/c;->a(I)Lr1/a;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 503
    .line 504
    .line 505
    iget-wide v13, v9, Lf2/c0;->d:J

    .line 506
    .line 507
    const/4 v11, 0x0

    .line 508
    iget-object v2, v9, Lf2/c0;->a:Ljava/lang/Object;

    .line 509
    .line 510
    const-wide/16 v3, 0x0

    .line 511
    .line 512
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    iget-wide v9, v10, Ly1/m0;->f:J

    .line 518
    .line 519
    move-object/from16 v0, p0

    .line 520
    .line 521
    move-object/from16 v1, p1

    .line 522
    .line 523
    move-wide v7, v9

    .line 524
    move-wide v9, v13

    .line 525
    invoke-virtual/range {v0 .. v11}, Ly1/n0;->f(Lr1/q0;Ljava/lang/Object;JJJJZ)Ly1/m0;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    goto/16 :goto_5

    .line 530
    .line 531
    :goto_8
    return-object v13
.end method

.method public final d(Lr1/q0;Lf2/c0;JJJ)Ly1/m0;
    .locals 15

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    iget-object v1, v0, Lf2/c0;->a:Ljava/lang/Object;

    .line 4
    .line 5
    move-object v14, p0

    .line 6
    iget-object v2, v14, Ly1/n0;->a:Lr1/o0;

    .line 7
    .line 8
    move-object/from16 v3, p1

    .line 9
    .line 10
    invoke-virtual {v3, v1, v2}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p2 .. p2}, Lf2/c0;->b()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-wide v9, v0, Lf2/c0;->d:J

    .line 20
    .line 21
    const/4 v11, 0x0

    .line 22
    iget-object v4, v0, Lf2/c0;->a:Ljava/lang/Object;

    .line 23
    .line 24
    iget v5, v0, Lf2/c0;->b:I

    .line 25
    .line 26
    iget v6, v0, Lf2/c0;->c:I

    .line 27
    .line 28
    move-object v2, p0

    .line 29
    move-object/from16 v3, p1

    .line 30
    .line 31
    move-wide/from16 v7, p3

    .line 32
    .line 33
    invoke-virtual/range {v2 .. v11}, Ly1/n0;->e(Lr1/q0;Ljava/lang/Object;IIJJZ)Ly1/m0;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0

    .line 38
    :cond_0
    iget-wide v11, v0, Lf2/c0;->d:J

    .line 39
    .line 40
    const/4 v13, 0x0

    .line 41
    iget-object v4, v0, Lf2/c0;->a:Ljava/lang/Object;

    .line 42
    .line 43
    move-object v2, p0

    .line 44
    move-object/from16 v3, p1

    .line 45
    .line 46
    move-wide/from16 v5, p5

    .line 47
    .line 48
    move-wide/from16 v7, p7

    .line 49
    .line 50
    move-wide/from16 v9, p3

    .line 51
    .line 52
    invoke-virtual/range {v2 .. v13}, Ly1/n0;->f(Lr1/q0;Ljava/lang/Object;JJJJZ)Ly1/m0;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method

.method public final e(Lr1/q0;Ljava/lang/Object;IIJJZ)Ly1/m0;
    .locals 20

    .line 1
    move/from16 v7, p3

    .line 2
    .line 3
    move/from16 v8, p4

    .line 4
    .line 5
    new-instance v10, Lf2/c0;

    .line 6
    .line 7
    const/4 v6, -0x1

    .line 8
    move-object v0, v10

    .line 9
    move-object/from16 v1, p2

    .line 10
    .line 11
    move/from16 v2, p3

    .line 12
    .line 13
    move/from16 v3, p4

    .line 14
    .line 15
    move-wide/from16 v4, p7

    .line 16
    .line 17
    invoke-direct/range {v0 .. v6}, Lf2/c0;-><init>(Ljava/lang/Object;IIJI)V

    .line 18
    .line 19
    .line 20
    move-object/from16 v12, p0

    .line 21
    .line 22
    iget-object v0, v12, Ly1/n0;->a:Lr1/o0;

    .line 23
    .line 24
    move-object/from16 v1, p1

    .line 25
    .line 26
    move-object/from16 v2, p2

    .line 27
    .line 28
    invoke-virtual {v1, v2, v0}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1, v7, v8}, Lr1/o0;->a(II)J

    .line 33
    .line 34
    .line 35
    move-result-wide v17

    .line 36
    invoke-virtual {v0, v7}, Lr1/o0;->e(I)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-ne v8, v1, :cond_0

    .line 41
    .line 42
    iget-object v1, v0, Lr1/o0;->g:Lr1/c;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {v0, v7}, Lr1/o0;->g(I)Z

    .line 48
    .line 49
    .line 50
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    const-wide/16 v2, 0x0

    .line 56
    .line 57
    cmp-long v4, v17, v0

    .line 58
    .line 59
    if-eqz v4, :cond_1

    .line 60
    .line 61
    cmp-long v0, v2, v17

    .line 62
    .line 63
    if-ltz v0, :cond_1

    .line 64
    .line 65
    const-wide/16 v0, 0x1

    .line 66
    .line 67
    sub-long v0, v17, v0

    .line 68
    .line 69
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 70
    .line 71
    .line 72
    move-result-wide v0

    .line 73
    move-wide v2, v0

    .line 74
    :cond_1
    new-instance v19, Ly1/m0;

    .line 75
    .line 76
    move-object/from16 v0, v19

    .line 77
    .line 78
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    const/4 v14, 0x0

    .line 84
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    const/4 v13, 0x0

    .line 90
    const/4 v15, 0x0

    .line 91
    const/16 v16, 0x0

    .line 92
    .line 93
    move-object v1, v10

    .line 94
    move-wide/from16 v6, p5

    .line 95
    .line 96
    move-wide/from16 v10, v17

    .line 97
    .line 98
    move/from16 v12, p9

    .line 99
    .line 100
    invoke-direct/range {v0 .. v16}, Ly1/m0;-><init>(Lf2/c0;JJJJJZZZZZ)V

    .line 101
    .line 102
    .line 103
    return-object v19
.end method

.method public final f(Lr1/q0;Ljava/lang/Object;JJJJZ)Ly1/m0;
    .locals 27

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
    move-wide/from16 v3, p3

    .line 8
    .line 9
    iget-object v5, v0, Ly1/n0;->a:Lr1/o0;

    .line 10
    .line 11
    invoke-virtual {v1, v2, v5}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v5, v3, v4}, Lr1/o0;->b(J)I

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    const/4 v7, 0x0

    .line 19
    const/4 v8, -0x1

    .line 20
    if-ne v6, v8, :cond_0

    .line 21
    .line 22
    iget-object v9, v5, Lr1/o0;->g:Lr1/c;

    .line 23
    .line 24
    iget v9, v9, Lr1/c;->a:I

    .line 25
    .line 26
    if-lez v9, :cond_1

    .line 27
    .line 28
    invoke-virtual {v5, v7}, Lr1/o0;->g(I)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v5, v6}, Lr1/o0;->g(I)Z

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    new-instance v11, Lf2/c0;

    .line 36
    .line 37
    move-wide/from16 v9, p9

    .line 38
    .line 39
    invoke-direct {v11, v6, v9, v10, v2}, Lf2/c0;-><init>(IJLjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v11}, Lf2/c0;->b()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const/4 v9, 0x1

    .line 47
    if-nez v2, :cond_2

    .line 48
    .line 49
    if-ne v6, v8, :cond_2

    .line 50
    .line 51
    const/4 v7, 0x1

    .line 52
    :cond_2
    invoke-virtual {v0, v1, v11}, Ly1/n0;->j(Lr1/q0;Lf2/c0;)Z

    .line 53
    .line 54
    .line 55
    move-result v25

    .line 56
    invoke-virtual {v0, v1, v11, v7}, Ly1/n0;->i(Lr1/q0;Lf2/c0;Z)Z

    .line 57
    .line 58
    .line 59
    move-result v26

    .line 60
    if-eq v6, v8, :cond_3

    .line 61
    .line 62
    invoke-virtual {v5, v6}, Lr1/o0;->g(I)Z

    .line 63
    .line 64
    .line 65
    :cond_3
    if-eq v6, v8, :cond_4

    .line 66
    .line 67
    invoke-virtual {v5, v6}, Lr1/o0;->f(I)Z

    .line 68
    .line 69
    .line 70
    :cond_4
    const-wide/16 v1, 0x0

    .line 71
    .line 72
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    if-eq v6, v8, :cond_5

    .line 78
    .line 79
    invoke-virtual {v5, v6}, Lr1/o0;->d(I)J

    .line 80
    .line 81
    .line 82
    move-wide/from16 v18, v1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_5
    move-wide/from16 v18, v12

    .line 86
    .line 87
    :goto_1
    cmp-long v6, v18, v12

    .line 88
    .line 89
    if-eqz v6, :cond_7

    .line 90
    .line 91
    const-wide/high16 v14, -0x8000000000000000L

    .line 92
    .line 93
    cmp-long v6, v18, v14

    .line 94
    .line 95
    if-nez v6, :cond_6

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_6
    move-wide/from16 v20, v18

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_7
    :goto_2
    iget-wide v5, v5, Lr1/o0;->d:J

    .line 102
    .line 103
    move-wide/from16 v20, v5

    .line 104
    .line 105
    :goto_3
    cmp-long v5, v20, v12

    .line 106
    .line 107
    if-eqz v5, :cond_8

    .line 108
    .line 109
    cmp-long v5, v3, v20

    .line 110
    .line 111
    if-ltz v5, :cond_8

    .line 112
    .line 113
    int-to-long v3, v9

    .line 114
    sub-long v3, v20, v3

    .line 115
    .line 116
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 117
    .line 118
    .line 119
    move-result-wide v1

    .line 120
    move-wide v12, v1

    .line 121
    goto :goto_4

    .line 122
    :cond_8
    move-wide v12, v3

    .line 123
    :goto_4
    new-instance v1, Ly1/m0;

    .line 124
    .line 125
    move-object v10, v1

    .line 126
    const/16 v23, 0x0

    .line 127
    .line 128
    move-wide/from16 v14, p5

    .line 129
    .line 130
    move-wide/from16 v16, p7

    .line 131
    .line 132
    move/from16 v22, p11

    .line 133
    .line 134
    move/from16 v24, v7

    .line 135
    .line 136
    invoke-direct/range {v10 .. v26}, Ly1/m0;-><init>(Lf2/c0;JJJJJZZZZZ)V

    .line 137
    .line 138
    .line 139
    return-object v1
.end method

.method public final g()Ly1/l0;
    .locals 1

    .line 1
    iget-object v0, p0, Ly1/n0;->k:Ly1/l0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(Lr1/q0;Ly1/m0;)Ly1/m0;
    .locals 22

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
    iget-object v4, v2, Ly1/m0;->a:Lf2/c0;

    .line 8
    .line 9
    invoke-virtual {v4}, Lf2/c0;->b()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v5, -0x1

    .line 14
    iget v6, v4, Lf2/c0;->e:I

    .line 15
    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    if-ne v6, v5, :cond_0

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    const/4 v13, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v3, 0x0

    .line 24
    const/4 v13, 0x0

    .line 25
    :goto_0
    invoke-virtual {v0, v1, v4}, Ly1/n0;->j(Lr1/q0;Lf2/c0;)Z

    .line 26
    .line 27
    .line 28
    move-result v18

    .line 29
    invoke-virtual {v0, v1, v4, v13}, Ly1/n0;->i(Lr1/q0;Lf2/c0;Z)Z

    .line 30
    .line 31
    .line 32
    move-result v19

    .line 33
    iget-object v3, v4, Lf2/c0;->a:Ljava/lang/Object;

    .line 34
    .line 35
    iget-object v7, v0, Ly1/n0;->a:Lr1/o0;

    .line 36
    .line 37
    invoke-virtual {v1, v3, v7}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4}, Lf2/c0;->b()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    if-ne v6, v5, :cond_1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {v7, v6}, Lr1/o0;->d(I)J

    .line 55
    .line 56
    .line 57
    const-wide/16 v10, 0x0

    .line 58
    .line 59
    move-wide v11, v10

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    :goto_1
    move-wide v11, v8

    .line 62
    :goto_2
    invoke-virtual {v4}, Lf2/c0;->b()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    iget v3, v4, Lf2/c0;->b:I

    .line 67
    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    iget v1, v4, Lf2/c0;->c:I

    .line 71
    .line 72
    invoke-virtual {v7, v3, v1}, Lr1/o0;->a(II)J

    .line 73
    .line 74
    .line 75
    move-result-wide v8

    .line 76
    :goto_3
    move-wide/from16 v20, v8

    .line 77
    .line 78
    goto :goto_5

    .line 79
    :cond_3
    cmp-long v1, v11, v8

    .line 80
    .line 81
    if-eqz v1, :cond_5

    .line 82
    .line 83
    const-wide/high16 v8, -0x8000000000000000L

    .line 84
    .line 85
    cmp-long v1, v11, v8

    .line 86
    .line 87
    if-nez v1, :cond_4

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_4
    move-wide/from16 v20, v11

    .line 91
    .line 92
    goto :goto_5

    .line 93
    :cond_5
    :goto_4
    iget-wide v8, v7, Lr1/o0;->d:J

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :goto_5
    invoke-virtual {v4}, Lf2/c0;->b()Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_6

    .line 101
    .line 102
    invoke-virtual {v7, v3}, Lr1/o0;->g(I)Z

    .line 103
    .line 104
    .line 105
    goto :goto_6

    .line 106
    :cond_6
    if-eq v6, v5, :cond_7

    .line 107
    .line 108
    invoke-virtual {v7, v6}, Lr1/o0;->g(I)Z

    .line 109
    .line 110
    .line 111
    :cond_7
    :goto_6
    new-instance v1, Ly1/m0;

    .line 112
    .line 113
    move-object v3, v1

    .line 114
    iget-wide v5, v2, Ly1/m0;->b:J

    .line 115
    .line 116
    iget-wide v7, v2, Ly1/m0;->c:J

    .line 117
    .line 118
    iget-wide v9, v2, Ly1/m0;->d:J

    .line 119
    .line 120
    iget-boolean v15, v2, Ly1/m0;->g:Z

    .line 121
    .line 122
    const/16 v16, 0x0

    .line 123
    .line 124
    move v2, v13

    .line 125
    move-wide/from16 v13, v20

    .line 126
    .line 127
    move/from16 v17, v2

    .line 128
    .line 129
    invoke-direct/range {v3 .. v19}, Ly1/m0;-><init>(Lf2/c0;JJJJJZZZZZ)V

    .line 130
    .line 131
    .line 132
    return-object v1
.end method

.method public final i(Lr1/q0;Lf2/c0;Z)Z
    .locals 7

    .line 1
    iget-object p2, p2, Lf2/c0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lr1/q0;->b(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object p2, p0, Ly1/n0;->a:Lr1/o0;

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    invoke-virtual {p1, v1, p2, v6}, Lr1/q0;->f(ILr1/o0;Z)Lr1/o0;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iget p2, p2, Lr1/o0;->c:I

    .line 15
    .line 16
    const-wide/16 v2, 0x0

    .line 17
    .line 18
    iget-object v0, p0, Ly1/n0;->b:Lr1/p0;

    .line 19
    .line 20
    invoke-virtual {p1, p2, v0, v2, v3}, Lr1/q0;->m(ILr1/p0;J)Lr1/p0;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    iget-boolean p2, p2, Lr1/p0;->h:Z

    .line 25
    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    iget v4, p0, Ly1/n0;->g:I

    .line 29
    .line 30
    iget-boolean v5, p0, Ly1/n0;->h:Z

    .line 31
    .line 32
    iget-object v2, p0, Ly1/n0;->a:Lr1/o0;

    .line 33
    .line 34
    iget-object v3, p0, Ly1/n0;->b:Lr1/p0;

    .line 35
    .line 36
    move-object v0, p1

    .line 37
    invoke-virtual/range {v0 .. v5}, Lr1/q0;->d(ILr1/o0;Lr1/p0;IZ)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    const/4 p2, -0x1

    .line 42
    if-ne p1, p2, :cond_0

    .line 43
    .line 44
    if-eqz p3, :cond_0

    .line 45
    .line 46
    const/4 v6, 0x1

    .line 47
    :cond_0
    return v6
.end method

.method public final j(Lr1/q0;Lf2/c0;)Z
    .locals 6

    .line 1
    invoke-virtual {p2}, Lf2/c0;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p2, Lf2/c0;->e:I

    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    if-ne v0, v3, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-nez v0, :cond_1

    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    iget-object p2, p2, Lf2/c0;->a:Ljava/lang/Object;

    .line 21
    .line 22
    iget-object v0, p0, Ly1/n0;->a:Lr1/o0;

    .line 23
    .line 24
    invoke-virtual {p1, p2, v0}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget v0, v0, Lr1/o0;->c:I

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lr1/q0;->b(Ljava/lang/Object;)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    const-wide/16 v3, 0x0

    .line 35
    .line 36
    iget-object v5, p0, Ly1/n0;->b:Lr1/p0;

    .line 37
    .line 38
    invoke-virtual {p1, v0, v5, v3, v4}, Lr1/q0;->m(ILr1/p0;J)Lr1/p0;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget p1, p1, Lr1/p0;->n:I

    .line 43
    .line 44
    if-ne p1, p2, :cond_2

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    :cond_2
    return v1
.end method

.method public final k()V
    .locals 3

    .line 1
    iget-object v0, p0, Ly1/n0;->m:Ly1/l0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ly1/l0;->h()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Ly1/n0;->m:Ly1/l0;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    :goto_0
    iget-object v1, p0, Ly1/n0;->q:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-ge v0, v1, :cond_2

    .line 23
    .line 24
    iget-object v1, p0, Ly1/n0;->q:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ly1/l0;

    .line 31
    .line 32
    invoke-virtual {v1}, Ly1/l0;->h()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    iput-object v1, p0, Ly1/n0;->m:Ly1/l0;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    :goto_1
    return-void
.end method

.method public final l()V
    .locals 4

    .line 1
    sget-object v0, Lu7/g0;->b:Lu7/e0;

    .line 2
    .line 3
    new-instance v0, Lu7/d0;

    .line 4
    .line 5
    invoke-direct {v0}, Lu7/d0;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Ly1/n0;->i:Ly1/l0;

    .line 9
    .line 10
    :goto_0
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v2, v1, Ly1/l0;->g:Ly1/m0;

    .line 13
    .line 14
    iget-object v2, v2, Ly1/m0;->a:Lf2/c0;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Lu7/a0;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, v1, Ly1/l0;->m:Ly1/l0;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v1, p0, Ly1/n0;->j:Ly1/l0;

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    iget-object v1, v1, Ly1/l0;->g:Ly1/m0;

    .line 29
    .line 30
    iget-object v1, v1, Ly1/m0;->a:Lf2/c0;

    .line 31
    .line 32
    :goto_1
    new-instance v2, La2/e0;

    .line 33
    .line 34
    const/16 v3, 0x18

    .line 35
    .line 36
    invoke-direct {v2, p0, v0, v1, v3}, La2/e0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Ly1/n0;->d:Lu1/b0;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Lu1/b0;->d(Ljava/lang/Runnable;)Z

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final m(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Ly1/n0;->l:Ly1/l0;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Ly1/l0;->m:Ly1/l0;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-static {v1}, La9/o;->t(Z)V

    .line 13
    .line 14
    .line 15
    iget-boolean v1, v0, Ly1/l0;->e:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v1, v0, Ly1/l0;->a:Ljava/lang/Object;

    .line 20
    .line 21
    iget-wide v2, v0, Ly1/l0;->p:J

    .line 22
    .line 23
    sub-long/2addr p1, v2

    .line 24
    invoke-interface {v1, p1, p2}, Lf2/d1;->r(J)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final n(Ly1/l0;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ly1/n0;->l:Ly1/l0;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    iput-object p1, p0, Ly1/n0;->l:Ly1/l0;

    .line 15
    .line 16
    :goto_0
    iget-object p1, p1, Ly1/l0;->m:Ly1/l0;

    .line 17
    .line 18
    if-eqz p1, :cond_3

    .line 19
    .line 20
    iget-object v0, p0, Ly1/n0;->j:Ly1/l0;

    .line 21
    .line 22
    if-ne p1, v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Ly1/n0;->i:Ly1/l0;

    .line 25
    .line 26
    iput-object v0, p0, Ly1/n0;->j:Ly1/l0;

    .line 27
    .line 28
    iput-object v0, p0, Ly1/n0;->k:Ly1/l0;

    .line 29
    .line 30
    const/4 v1, 0x3

    .line 31
    :cond_1
    iget-object v0, p0, Ly1/n0;->k:Ly1/l0;

    .line 32
    .line 33
    if-ne p1, v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Ly1/n0;->j:Ly1/l0;

    .line 36
    .line 37
    iput-object v0, p0, Ly1/n0;->k:Ly1/l0;

    .line 38
    .line 39
    or-int/lit8 v0, v1, 0x2

    .line 40
    .line 41
    move v1, v0

    .line 42
    :cond_2
    invoke-virtual {p1}, Ly1/l0;->i()V

    .line 43
    .line 44
    .line 45
    iget v0, p0, Ly1/n0;->n:I

    .line 46
    .line 47
    add-int/lit8 v0, v0, -0x1

    .line 48
    .line 49
    iput v0, p0, Ly1/n0;->n:I

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    iget-object p1, p0, Ly1/n0;->l:Ly1/l0;

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    iget-object v0, p1, Ly1/l0;->m:Ly1/l0;

    .line 58
    .line 59
    if-nez v0, :cond_4

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_4
    invoke-virtual {p1}, Ly1/l0;->b()V

    .line 63
    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    iput-object v0, p1, Ly1/l0;->m:Ly1/l0;

    .line 67
    .line 68
    invoke-virtual {p1}, Ly1/l0;->c()V

    .line 69
    .line 70
    .line 71
    :goto_1
    invoke-virtual {p0}, Ly1/n0;->l()V

    .line 72
    .line 73
    .line 74
    return v1
.end method

.method public final p(Lr1/q0;Ljava/lang/Object;J)Lf2/c0;
    .locals 16

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
    iget-object v3, v0, Ly1/n0;->a:Lr1/o0;

    .line 8
    .line 9
    invoke-virtual {v1, v2, v3}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    iget v4, v4, Lr1/o0;->c:I

    .line 14
    .line 15
    iget-object v5, v0, Ly1/n0;->o:Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v6, -0x1

    .line 18
    const/4 v7, 0x0

    .line 19
    if-eqz v5, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1, v5}, Lr1/q0;->b(Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eq v5, v6, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1, v5, v3, v7}, Lr1/q0;->f(ILr1/o0;Z)Lr1/o0;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    iget v5, v5, Lr1/o0;->c:I

    .line 32
    .line 33
    if-ne v5, v4, :cond_1

    .line 34
    .line 35
    iget-wide v4, v0, Ly1/n0;->p:J

    .line 36
    .line 37
    :cond_0
    :goto_0
    move-wide v8, v4

    .line 38
    goto :goto_3

    .line 39
    :cond_1
    iget-object v5, v0, Ly1/n0;->i:Ly1/l0;

    .line 40
    .line 41
    :goto_1
    if-eqz v5, :cond_3

    .line 42
    .line 43
    iget-object v8, v5, Ly1/l0;->b:Ljava/lang/Object;

    .line 44
    .line 45
    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    if-eqz v8, :cond_2

    .line 50
    .line 51
    iget-object v4, v5, Ly1/l0;->g:Ly1/m0;

    .line 52
    .line 53
    iget-object v4, v4, Ly1/m0;->a:Lf2/c0;

    .line 54
    .line 55
    iget-wide v4, v4, Lf2/c0;->d:J

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    iget-object v5, v5, Ly1/l0;->m:Ly1/l0;

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    iget-object v5, v0, Ly1/n0;->i:Ly1/l0;

    .line 62
    .line 63
    :goto_2
    if-eqz v5, :cond_5

    .line 64
    .line 65
    iget-object v8, v5, Ly1/l0;->b:Ljava/lang/Object;

    .line 66
    .line 67
    invoke-virtual {v1, v8}, Lr1/q0;->b(Ljava/lang/Object;)I

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    if-eq v8, v6, :cond_4

    .line 72
    .line 73
    invoke-virtual {v1, v8, v3, v7}, Lr1/q0;->f(ILr1/o0;Z)Lr1/o0;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    iget v8, v8, Lr1/o0;->c:I

    .line 78
    .line 79
    if-ne v8, v4, :cond_4

    .line 80
    .line 81
    iget-object v4, v5, Ly1/l0;->g:Ly1/m0;

    .line 82
    .line 83
    iget-object v4, v4, Ly1/m0;->a:Lf2/c0;

    .line 84
    .line 85
    iget-wide v4, v4, Lf2/c0;->d:J

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    iget-object v5, v5, Ly1/l0;->m:Ly1/l0;

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_5
    invoke-virtual {v0, v2}, Ly1/n0;->q(Ljava/lang/Object;)J

    .line 92
    .line 93
    .line 94
    move-result-wide v4

    .line 95
    const-wide/16 v8, -0x1

    .line 96
    .line 97
    cmp-long v10, v4, v8

    .line 98
    .line 99
    if-eqz v10, :cond_6

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_6
    iget-wide v4, v0, Ly1/n0;->f:J

    .line 103
    .line 104
    const-wide/16 v8, 0x1

    .line 105
    .line 106
    add-long/2addr v8, v4

    .line 107
    iput-wide v8, v0, Ly1/n0;->f:J

    .line 108
    .line 109
    iget-object v8, v0, Ly1/n0;->i:Ly1/l0;

    .line 110
    .line 111
    if-nez v8, :cond_0

    .line 112
    .line 113
    iput-object v2, v0, Ly1/n0;->o:Ljava/lang/Object;

    .line 114
    .line 115
    iput-wide v4, v0, Ly1/n0;->p:J

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :goto_3
    invoke-virtual {v1, v2, v3}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 119
    .line 120
    .line 121
    iget v4, v3, Lr1/o0;->c:I

    .line 122
    .line 123
    iget-object v5, v0, Ly1/n0;->b:Lr1/p0;

    .line 124
    .line 125
    invoke-virtual {v1, v4, v5}, Lr1/q0;->n(ILr1/p0;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual/range {p1 .. p2}, Lr1/q0;->b(Ljava/lang/Object;)I

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    const/4 v10, 0x0

    .line 133
    :goto_4
    iget v11, v5, Lr1/p0;->m:I

    .line 134
    .line 135
    if-lt v4, v11, :cond_a

    .line 136
    .line 137
    const/4 v11, 0x1

    .line 138
    invoke-virtual {v1, v4, v3, v11}, Lr1/q0;->f(ILr1/o0;Z)Lr1/o0;

    .line 139
    .line 140
    .line 141
    iget-object v12, v3, Lr1/o0;->g:Lr1/c;

    .line 142
    .line 143
    iget v12, v12, Lr1/c;->a:I

    .line 144
    .line 145
    if-lez v12, :cond_7

    .line 146
    .line 147
    goto :goto_5

    .line 148
    :cond_7
    const/4 v11, 0x0

    .line 149
    :goto_5
    or-int/2addr v10, v11

    .line 150
    iget-wide v12, v3, Lr1/o0;->d:J

    .line 151
    .line 152
    invoke-virtual {v3, v12, v13}, Lr1/o0;->c(J)I

    .line 153
    .line 154
    .line 155
    move-result v12

    .line 156
    if-eq v12, v6, :cond_8

    .line 157
    .line 158
    iget-object v2, v3, Lr1/o0;->b:Ljava/lang/Object;

    .line 159
    .line 160
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    :cond_8
    if-eqz v10, :cond_9

    .line 164
    .line 165
    if-eqz v11, :cond_a

    .line 166
    .line 167
    iget-wide v11, v3, Lr1/o0;->d:J

    .line 168
    .line 169
    const-wide/16 v13, 0x0

    .line 170
    .line 171
    cmp-long v15, v11, v13

    .line 172
    .line 173
    if-eqz v15, :cond_9

    .line 174
    .line 175
    goto :goto_6

    .line 176
    :cond_9
    add-int/lit8 v4, v4, -0x1

    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_a
    :goto_6
    iget-object v7, v0, Ly1/n0;->b:Lr1/p0;

    .line 180
    .line 181
    iget-object v10, v0, Ly1/n0;->a:Lr1/o0;

    .line 182
    .line 183
    move-object/from16 v1, p1

    .line 184
    .line 185
    move-wide/from16 v3, p3

    .line 186
    .line 187
    move-wide v5, v8

    .line 188
    move-object v8, v10

    .line 189
    invoke-static/range {v1 .. v8}, Ly1/n0;->o(Lr1/q0;Ljava/lang/Object;JJLr1/p0;Lr1/o0;)Lf2/c0;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    return-object v1
.end method

.method public final q(Ljava/lang/Object;)J
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Ly1/n0;->q:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Ly1/n0;->q:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ly1/l0;

    .line 17
    .line 18
    iget-object v2, v1, Ly1/l0;->b:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    iget-object p1, v1, Ly1/l0;->g:Ly1/m0;

    .line 27
    .line 28
    iget-object p1, p1, Ly1/m0;->a:Lf2/c0;

    .line 29
    .line 30
    iget-wide v0, p1, Lf2/c0;->d:J

    .line 31
    .line 32
    return-wide v0

    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-wide/16 v0, -0x1

    .line 37
    .line 38
    return-wide v0
.end method

.method public final r(Lr1/q0;)I
    .locals 7

    .line 1
    iget-object v0, p0, Ly1/n0;->i:Ly1/l0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    iget-object v1, v0, Ly1/l0;->b:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Lr1/q0;->b(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    move v2, v1

    .line 14
    :goto_0
    iget v5, p0, Ly1/n0;->g:I

    .line 15
    .line 16
    iget-boolean v6, p0, Ly1/n0;->h:Z

    .line 17
    .line 18
    iget-object v3, p0, Ly1/n0;->a:Lr1/o0;

    .line 19
    .line 20
    iget-object v4, p0, Ly1/n0;->b:Lr1/p0;

    .line 21
    .line 22
    move-object v1, p1

    .line 23
    invoke-virtual/range {v1 .. v6}, Lr1/q0;->d(ILr1/o0;Lr1/p0;IZ)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Ly1/l0;->m:Ly1/l0;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iget-object v3, v0, Ly1/l0;->g:Ly1/m0;

    .line 35
    .line 36
    iget-boolean v3, v3, Ly1/m0;->i:Z

    .line 37
    .line 38
    if-nez v3, :cond_1

    .line 39
    .line 40
    move-object v0, v1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/4 v3, -0x1

    .line 43
    if-eq v2, v3, :cond_4

    .line 44
    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    iget-object v3, v1, Ly1/l0;->b:Ljava/lang/Object;

    .line 49
    .line 50
    invoke-virtual {p1, v3}, Lr1/q0;->b(Ljava/lang/Object;)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eq v3, v2, :cond_3

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_3
    move-object v0, v1

    .line 58
    goto :goto_0

    .line 59
    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Ly1/n0;->n(Ly1/l0;)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    iget-object v2, v0, Ly1/l0;->g:Ly1/m0;

    .line 64
    .line 65
    invoke-virtual {p0, p1, v2}, Ly1/n0;->h(Lr1/q0;Ly1/m0;)Ly1/m0;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, v0, Ly1/l0;->g:Ly1/m0;

    .line 70
    .line 71
    return v1
.end method

.method public final s(Lr1/q0;JJJ)I
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Ly1/n0;->i:Ly1/l0;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :goto_0
    if-eqz v2, :cond_11

    .line 9
    .line 10
    iget-object v5, v2, Ly1/l0;->g:Ly1/m0;

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, v1, v5}, Ly1/n0;->h(Lr1/q0;Ly1/m0;)Ly1/m0;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    move-wide/from16 v8, p2

    .line 19
    .line 20
    move-object v4, v5

    .line 21
    goto :goto_3

    .line 22
    :cond_0
    move-wide/from16 v8, p2

    .line 23
    .line 24
    invoke-virtual {v0, v1, v3, v8, v9}, Ly1/n0;->c(Lr1/q0;Ly1/l0;J)Ly1/m0;

    .line 25
    .line 26
    .line 27
    move-result-object v10

    .line 28
    if-eqz v10, :cond_10

    .line 29
    .line 30
    iget-object v11, v5, Ly1/m0;->a:Lf2/c0;

    .line 31
    .line 32
    iget-object v12, v10, Ly1/m0;->a:Lf2/c0;

    .line 33
    .line 34
    invoke-virtual {v11, v12}, Lf2/c0;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v11

    .line 38
    if-nez v11, :cond_1

    .line 39
    .line 40
    goto/16 :goto_9

    .line 41
    .line 42
    :cond_1
    iget-wide v11, v10, Ly1/m0;->b:J

    .line 43
    .line 44
    iget-wide v13, v5, Ly1/m0;->c:J

    .line 45
    .line 46
    iget-wide v6, v5, Ly1/m0;->b:J

    .line 47
    .line 48
    cmp-long v17, v6, v11

    .line 49
    .line 50
    if-nez v17, :cond_2

    .line 51
    .line 52
    move-object/from16 v18, v5

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    cmp-long v17, v13, v15

    .line 61
    .line 62
    if-eqz v17, :cond_10

    .line 63
    .line 64
    move-object/from16 v18, v5

    .line 65
    .line 66
    iget-wide v4, v10, Ly1/m0;->c:J

    .line 67
    .line 68
    cmp-long v19, v4, v15

    .line 69
    .line 70
    if-nez v19, :cond_3

    .line 71
    .line 72
    goto/16 :goto_9

    .line 73
    .line 74
    :cond_3
    sub-long v19, v6, v13

    .line 75
    .line 76
    sub-long v4, v11, v4

    .line 77
    .line 78
    sub-long v4, v4, v19

    .line 79
    .line 80
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    .line 81
    .line 82
    .line 83
    move-result-wide v4

    .line 84
    const-wide/32 v19, 0x4c4b40

    .line 85
    .line 86
    .line 87
    cmp-long v21, v4, v19

    .line 88
    .line 89
    if-gez v21, :cond_10

    .line 90
    .line 91
    :goto_1
    cmp-long v3, v6, v11

    .line 92
    .line 93
    if-eqz v3, :cond_4

    .line 94
    .line 95
    invoke-virtual {v10, v6, v7, v13, v14}, Ly1/m0;->b(JJ)Ly1/m0;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    :goto_2
    move-object/from16 v4, v18

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_4
    move-object v3, v10

    .line 103
    goto :goto_2

    .line 104
    :goto_3
    iget-wide v5, v4, Ly1/m0;->d:J

    .line 105
    .line 106
    invoke-virtual {v3, v5, v6}, Ly1/m0;->a(J)Ly1/m0;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    iput-object v5, v2, Ly1/l0;->g:Ly1/m0;

    .line 111
    .line 112
    iget-wide v5, v3, Ly1/m0;->f:J

    .line 113
    .line 114
    iget-wide v10, v4, Ly1/m0;->f:J

    .line 115
    .line 116
    cmp-long v7, v10, v5

    .line 117
    .line 118
    if-eqz v7, :cond_f

    .line 119
    .line 120
    invoke-virtual {v2}, Ly1/l0;->k()V

    .line 121
    .line 122
    .line 123
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    cmp-long v1, v5, v7

    .line 129
    .line 130
    if-nez v1, :cond_5

    .line 131
    .line 132
    const-wide v5, 0x7fffffffffffffffL

    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_5
    iget-wide v7, v2, Ly1/l0;->p:J

    .line 139
    .line 140
    add-long/2addr v5, v7

    .line 141
    :goto_4
    iget-object v1, v0, Ly1/n0;->j:Ly1/l0;

    .line 142
    .line 143
    const/4 v7, 0x1

    .line 144
    const-wide/high16 v8, -0x8000000000000000L

    .line 145
    .line 146
    if-ne v2, v1, :cond_7

    .line 147
    .line 148
    iget-object v1, v2, Ly1/l0;->g:Ly1/m0;

    .line 149
    .line 150
    iget-boolean v1, v1, Ly1/m0;->h:Z

    .line 151
    .line 152
    if-nez v1, :cond_7

    .line 153
    .line 154
    cmp-long v1, p4, v8

    .line 155
    .line 156
    if-eqz v1, :cond_6

    .line 157
    .line 158
    cmp-long v1, p4, v5

    .line 159
    .line 160
    if-ltz v1, :cond_7

    .line 161
    .line 162
    :cond_6
    const/4 v1, 0x1

    .line 163
    goto :goto_5

    .line 164
    :cond_7
    const/4 v1, 0x0

    .line 165
    :goto_5
    iget-object v12, v0, Ly1/n0;->k:Ly1/l0;

    .line 166
    .line 167
    if-ne v2, v12, :cond_9

    .line 168
    .line 169
    cmp-long v12, p6, v8

    .line 170
    .line 171
    if-eqz v12, :cond_8

    .line 172
    .line 173
    cmp-long v12, p6, v5

    .line 174
    .line 175
    if-ltz v12, :cond_9

    .line 176
    .line 177
    :cond_8
    const/4 v5, 0x1

    .line 178
    goto :goto_6

    .line 179
    :cond_9
    const/4 v5, 0x0

    .line 180
    :goto_6
    invoke-virtual {v0, v2}, Ly1/n0;->n(Ly1/l0;)I

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-eqz v2, :cond_a

    .line 185
    .line 186
    return v2

    .line 187
    :cond_a
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    cmp-long v2, v10, v12

    .line 193
    .line 194
    if-nez v2, :cond_b

    .line 195
    .line 196
    iget-wide v14, v4, Ly1/m0;->e:J

    .line 197
    .line 198
    cmp-long v2, v14, v8

    .line 199
    .line 200
    if-nez v2, :cond_b

    .line 201
    .line 202
    iget-wide v2, v3, Ly1/m0;->e:J

    .line 203
    .line 204
    cmp-long v4, v2, v12

    .line 205
    .line 206
    if-eqz v4, :cond_b

    .line 207
    .line 208
    cmp-long v4, v2, v8

    .line 209
    .line 210
    if-eqz v4, :cond_b

    .line 211
    .line 212
    const/4 v2, 0x1

    .line 213
    goto :goto_7

    .line 214
    :cond_b
    const/4 v2, 0x0

    .line 215
    :goto_7
    if-eqz v1, :cond_d

    .line 216
    .line 217
    cmp-long v1, v10, v12

    .line 218
    .line 219
    if-nez v1, :cond_c

    .line 220
    .line 221
    if-eqz v2, :cond_d

    .line 222
    .line 223
    :cond_c
    const/4 v4, 0x1

    .line 224
    goto :goto_8

    .line 225
    :cond_d
    const/4 v4, 0x0

    .line 226
    :goto_8
    if-eqz v5, :cond_e

    .line 227
    .line 228
    or-int/lit8 v4, v4, 0x2

    .line 229
    .line 230
    :cond_e
    return v4

    .line 231
    :cond_f
    iget-object v3, v2, Ly1/l0;->m:Ly1/l0;

    .line 232
    .line 233
    move-object/from16 v22, v3

    .line 234
    .line 235
    move-object v3, v2

    .line 236
    move-object/from16 v2, v22

    .line 237
    .line 238
    goto/16 :goto_0

    .line 239
    .line 240
    :cond_10
    :goto_9
    invoke-virtual {v0, v3}, Ly1/n0;->n(Ly1/l0;)I

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    return v1

    .line 245
    :cond_11
    const/4 v1, 0x0

    .line 246
    return v1
.end method
