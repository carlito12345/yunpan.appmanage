.class public final Lf2/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf2/c1;


# instance fields
.field public final a:I

.field public final synthetic b:Lf2/u0;


# direct methods
.method public constructor <init>(Lf2/u0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf2/s0;->b:Lf2/u0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lf2/s0;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final isReady()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lf2/s0;->b:Lf2/u0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf2/u0;->E()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v1, v0, Lf2/u0;->w:[Lf2/b1;

    .line 10
    .line 11
    iget v2, p0, Lf2/s0;->a:I

    .line 12
    .line 13
    aget-object v1, v1, v2

    .line 14
    .line 15
    iget-boolean v0, v0, Lf2/u0;->T:Z

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Lf2/b1;->o(Z)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method

.method public final j()V
    .locals 4

    .line 1
    iget-object v0, p0, Lf2/s0;->b:Lf2/u0;

    .line 2
    .line 3
    iget-object v1, v0, Lf2/u0;->w:[Lf2/b1;

    .line 4
    .line 5
    iget v2, p0, Lf2/s0;->a:I

    .line 6
    .line 7
    aget-object v1, v1, v2

    .line 8
    .line 9
    iget-object v2, v1, Lf2/b1;->h:La1/i;

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {v2}, La1/i;->t()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x1

    .line 18
    if-eq v2, v3, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, v1, Lf2/b1;->h:La1/i;

    .line 22
    .line 23
    invoke-virtual {v0}, La1/i;->o()Lb2/b;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    throw v0

    .line 31
    :cond_1
    :goto_0
    iget-object v1, v0, Lf2/u0;->d:Lha/j2;

    .line 32
    .line 33
    iget v2, v0, Lf2/u0;->G:I

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lha/j2;->d(I)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iget-object v0, v0, Lf2/u0;->l:Li2/j;

    .line 40
    .line 41
    iget-object v2, v0, Li2/j;->c:Ljava/io/IOException;

    .line 42
    .line 43
    if-nez v2, :cond_5

    .line 44
    .line 45
    iget-object v0, v0, Li2/j;->b:Li2/h;

    .line 46
    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    const/high16 v2, -0x80000000

    .line 50
    .line 51
    if-ne v1, v2, :cond_2

    .line 52
    .line 53
    iget v1, v0, Li2/h;->a:I

    .line 54
    .line 55
    :cond_2
    iget-object v2, v0, Li2/h;->e:Ljava/io/IOException;

    .line 56
    .line 57
    if-eqz v2, :cond_4

    .line 58
    .line 59
    iget v0, v0, Li2/h;->f:I

    .line 60
    .line 61
    if-gt v0, v1, :cond_3

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    throw v2

    .line 65
    :cond_4
    :goto_1
    return-void

    .line 66
    :cond_5
    throw v2
.end method

.method public final m(J)I
    .locals 11

    .line 1
    iget-object v0, p0, Lf2/s0;->b:Lf2/u0;

    .line 2
    .line 3
    iget v1, p0, Lf2/s0;->a:I

    .line 4
    .line 5
    invoke-virtual {v0}, Lf2/u0;->E()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    goto :goto_3

    .line 13
    :cond_0
    invoke-virtual {v0, v1}, Lf2/u0;->y(I)V

    .line 14
    .line 15
    .line 16
    iget-object v2, v0, Lf2/u0;->w:[Lf2/b1;

    .line 17
    .line 18
    aget-object v2, v2, v1

    .line 19
    .line 20
    iget-boolean v4, v0, Lf2/u0;->T:Z

    .line 21
    .line 22
    monitor-enter v2

    .line 23
    :try_start_0
    iget v5, v2, Lf2/b1;->s:I

    .line 24
    .line 25
    invoke-virtual {v2, v5}, Lf2/b1;->m(I)I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    iget v6, v2, Lf2/b1;->s:I

    .line 30
    .line 31
    iget v7, v2, Lf2/b1;->p:I

    .line 32
    .line 33
    if-eq v6, v7, :cond_1

    .line 34
    .line 35
    const/4 v8, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v8, 0x0

    .line 38
    :goto_0
    if-eqz v8, :cond_5

    .line 39
    .line 40
    iget-object v8, v2, Lf2/b1;->n:[J

    .line 41
    .line 42
    aget-wide v9, v8, v5

    .line 43
    .line 44
    cmp-long v8, p1, v9

    .line 45
    .line 46
    if-gez v8, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    iget-wide v8, v2, Lf2/b1;->w:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    cmp-long v10, p1, v8

    .line 52
    .line 53
    if-lez v10, :cond_3

    .line 54
    .line 55
    if-eqz v4, :cond_3

    .line 56
    .line 57
    sub-int v3, v7, v6

    .line 58
    .line 59
    monitor-exit v2

    .line 60
    goto :goto_2

    .line 61
    :cond_3
    sub-int v6, v7, v6

    .line 62
    .line 63
    const/4 v9, 0x1

    .line 64
    move-object v4, v2

    .line 65
    move-wide v7, p1

    .line 66
    :try_start_1
    invoke-virtual/range {v4 .. v9}, Lf2/b1;->k(IIJZ)I

    .line 67
    .line 68
    .line 69
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    const/4 p2, -0x1

    .line 71
    if-ne p1, p2, :cond_4

    .line 72
    .line 73
    monitor-exit v2

    .line 74
    goto :goto_2

    .line 75
    :cond_4
    monitor-exit v2

    .line 76
    move v3, p1

    .line 77
    goto :goto_2

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    goto :goto_4

    .line 80
    :cond_5
    :goto_1
    monitor-exit v2

    .line 81
    :goto_2
    invoke-virtual {v2, v3}, Lf2/b1;->v(I)V

    .line 82
    .line 83
    .line 84
    if-nez v3, :cond_6

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lf2/u0;->A(I)V

    .line 87
    .line 88
    .line 89
    :cond_6
    :goto_3
    return v3

    .line 90
    :goto_4
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    throw p1
.end method

.method public final n(Lua/i8;Lx1/g;I)I
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v1, Lf2/s0;->b:Lf2/u0;

    .line 8
    .line 9
    iget v4, v1, Lf2/s0;->a:I

    .line 10
    .line 11
    invoke-virtual {v3}, Lf2/u0;->E()Z

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    const/4 v6, -0x3

    .line 16
    if-eqz v5, :cond_0

    .line 17
    .line 18
    goto/16 :goto_c

    .line 19
    .line 20
    :cond_0
    invoke-virtual {v3, v4}, Lf2/u0;->y(I)V

    .line 21
    .line 22
    .line 23
    iget-object v5, v3, Lf2/u0;->w:[Lf2/b1;

    .line 24
    .line 25
    aget-object v5, v5, v4

    .line 26
    .line 27
    iget-boolean v7, v3, Lf2/u0;->T:Z

    .line 28
    .line 29
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    and-int/lit8 v8, p3, 0x2

    .line 33
    .line 34
    const/4 v9, 0x0

    .line 35
    const/4 v10, 0x1

    .line 36
    if-eqz v8, :cond_1

    .line 37
    .line 38
    const/4 v8, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v8, 0x0

    .line 41
    :goto_0
    iget-object v11, v5, Lf2/b1;->b:Lc2/g;

    .line 42
    .line 43
    monitor-enter v5

    .line 44
    :try_start_0
    iput-boolean v9, v2, Lx1/g;->f:Z

    .line 45
    .line 46
    iget v12, v5, Lf2/b1;->q:I

    .line 47
    .line 48
    iget v13, v5, Lf2/b1;->s:I

    .line 49
    .line 50
    add-int/2addr v12, v13

    .line 51
    iget v14, v5, Lf2/b1;->x:I

    .line 52
    .line 53
    const/4 v15, -0x1

    .line 54
    if-eq v14, v15, :cond_2

    .line 55
    .line 56
    if-lt v12, v14, :cond_2

    .line 57
    .line 58
    const/4 v14, 0x1

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const/4 v14, 0x0

    .line 61
    :goto_1
    iget v15, v5, Lf2/b1;->p:I

    .line 62
    .line 63
    if-eq v13, v15, :cond_3

    .line 64
    .line 65
    const/4 v13, 0x1

    .line 66
    goto :goto_2

    .line 67
    :cond_3
    const/4 v13, 0x0

    .line 68
    :goto_2
    const/4 v15, -0x4

    .line 69
    const/4 v9, 0x4

    .line 70
    const/16 v17, -0x5

    .line 71
    .line 72
    if-eqz v13, :cond_a

    .line 73
    .line 74
    if-eqz v14, :cond_4

    .line 75
    .line 76
    goto :goto_7

    .line 77
    :cond_4
    iget-object v13, v5, Lf2/b1;->c:Landroidx/room/s;

    .line 78
    .line 79
    invoke-virtual {v13, v12}, Landroidx/room/s;->g(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v12

    .line 83
    check-cast v12, Lf2/a1;

    .line 84
    .line 85
    iget-object v12, v12, Lf2/a1;->a:Lr1/p;

    .line 86
    .line 87
    if-nez v8, :cond_9

    .line 88
    .line 89
    iget-object v8, v5, Lf2/b1;->g:Lr1/p;

    .line 90
    .line 91
    if-eq v12, v8, :cond_5

    .line 92
    .line 93
    goto :goto_5

    .line 94
    :cond_5
    iget v0, v5, Lf2/b1;->s:I

    .line 95
    .line 96
    invoke-virtual {v5, v0}, Lf2/b1;->m(I)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    invoke-virtual {v5, v0}, Lf2/b1;->p(I)Z

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    if-nez v8, :cond_6

    .line 105
    .line 106
    iput-boolean v10, v2, Lx1/g;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .line 108
    monitor-exit v5

    .line 109
    :goto_3
    const/4 v0, -0x3

    .line 110
    goto :goto_9

    .line 111
    :catchall_0
    move-exception v0

    .line 112
    goto/16 :goto_d

    .line 113
    .line 114
    :cond_6
    :try_start_1
    iget-object v8, v5, Lf2/b1;->m:[I

    .line 115
    .line 116
    aget v8, v8, v0

    .line 117
    .line 118
    iput v8, v2, Lab/a;->b:I

    .line 119
    .line 120
    iget v8, v5, Lf2/b1;->s:I

    .line 121
    .line 122
    iget v12, v5, Lf2/b1;->p:I

    .line 123
    .line 124
    sub-int/2addr v12, v10

    .line 125
    if-ne v8, v12, :cond_8

    .line 126
    .line 127
    if-nez v7, :cond_7

    .line 128
    .line 129
    iget-boolean v7, v5, Lf2/b1;->y:Z

    .line 130
    .line 131
    if-eqz v7, :cond_8

    .line 132
    .line 133
    :cond_7
    const/high16 v7, 0x20000000

    .line 134
    .line 135
    invoke-virtual {v2, v7}, Lab/a;->a(I)V

    .line 136
    .line 137
    .line 138
    :cond_8
    iget-object v7, v5, Lf2/b1;->n:[J

    .line 139
    .line 140
    aget-wide v12, v7, v0

    .line 141
    .line 142
    iput-wide v12, v2, Lx1/g;->g:J

    .line 143
    .line 144
    iget-object v7, v5, Lf2/b1;->l:[I

    .line 145
    .line 146
    aget v7, v7, v0

    .line 147
    .line 148
    iput v7, v11, Lc2/g;->a:I

    .line 149
    .line 150
    iget-object v7, v5, Lf2/b1;->k:[J

    .line 151
    .line 152
    aget-wide v12, v7, v0

    .line 153
    .line 154
    iput-wide v12, v11, Lc2/g;->b:J

    .line 155
    .line 156
    iget-object v7, v5, Lf2/b1;->o:[Ll2/i0;

    .line 157
    .line 158
    aget-object v0, v7, v0

    .line 159
    .line 160
    iput-object v0, v11, Lc2/g;->c:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    .line 162
    monitor-exit v5

    .line 163
    :goto_4
    const/4 v0, -0x4

    .line 164
    goto :goto_9

    .line 165
    :cond_9
    :goto_5
    :try_start_2
    invoke-virtual {v5, v12, v0}, Lf2/b1;->q(Lr1/p;Lua/i8;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    .line 167
    .line 168
    monitor-exit v5

    .line 169
    :goto_6
    const/4 v0, -0x5

    .line 170
    goto :goto_9

    .line 171
    :cond_a
    :goto_7
    if-nez v7, :cond_e

    .line 172
    .line 173
    :try_start_3
    iget-boolean v7, v5, Lf2/b1;->y:Z

    .line 174
    .line 175
    if-nez v7, :cond_e

    .line 176
    .line 177
    if-eqz v14, :cond_b

    .line 178
    .line 179
    goto :goto_8

    .line 180
    :cond_b
    iget-object v7, v5, Lf2/b1;->B:Lr1/p;

    .line 181
    .line 182
    if-eqz v7, :cond_d

    .line 183
    .line 184
    if-nez v8, :cond_c

    .line 185
    .line 186
    iget-object v8, v5, Lf2/b1;->g:Lr1/p;

    .line 187
    .line 188
    if-eq v7, v8, :cond_d

    .line 189
    .line 190
    :cond_c
    invoke-virtual {v5, v7, v0}, Lf2/b1;->q(Lr1/p;Lua/i8;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 191
    .line 192
    .line 193
    monitor-exit v5

    .line 194
    goto :goto_6

    .line 195
    :cond_d
    monitor-exit v5

    .line 196
    goto :goto_3

    .line 197
    :cond_e
    :goto_8
    :try_start_4
    iput v9, v2, Lab/a;->b:I

    .line 198
    .line 199
    const-wide/high16 v7, -0x8000000000000000L

    .line 200
    .line 201
    iput-wide v7, v2, Lx1/g;->g:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 202
    .line 203
    monitor-exit v5

    .line 204
    goto :goto_4

    .line 205
    :goto_9
    if-ne v0, v15, :cond_12

    .line 206
    .line 207
    invoke-virtual {v2, v9}, Lab/a;->c(I)Z

    .line 208
    .line 209
    .line 210
    move-result v7

    .line 211
    if-nez v7, :cond_12

    .line 212
    .line 213
    and-int/lit8 v7, p3, 0x1

    .line 214
    .line 215
    if-eqz v7, :cond_f

    .line 216
    .line 217
    const/16 v16, 0x1

    .line 218
    .line 219
    goto :goto_a

    .line 220
    :cond_f
    const/16 v16, 0x0

    .line 221
    .line 222
    :goto_a
    and-int/lit8 v7, p3, 0x4

    .line 223
    .line 224
    if-nez v7, :cond_11

    .line 225
    .line 226
    if-eqz v16, :cond_10

    .line 227
    .line 228
    iget-object v7, v5, Lf2/b1;->a:Lf2/z0;

    .line 229
    .line 230
    iget-object v8, v5, Lf2/b1;->b:Lc2/g;

    .line 231
    .line 232
    iget-object v9, v7, Lf2/z0;->e:Lf2/y0;

    .line 233
    .line 234
    iget-object v7, v7, Lf2/z0;->c:Lu1/q;

    .line 235
    .line 236
    invoke-static {v9, v2, v8, v7}, Lf2/z0;->e(Lf2/y0;Lx1/g;Lc2/g;Lu1/q;)Lf2/y0;

    .line 237
    .line 238
    .line 239
    goto :goto_b

    .line 240
    :cond_10
    iget-object v7, v5, Lf2/b1;->a:Lf2/z0;

    .line 241
    .line 242
    iget-object v8, v5, Lf2/b1;->b:Lc2/g;

    .line 243
    .line 244
    iget-object v9, v7, Lf2/z0;->e:Lf2/y0;

    .line 245
    .line 246
    iget-object v11, v7, Lf2/z0;->c:Lu1/q;

    .line 247
    .line 248
    invoke-static {v9, v2, v8, v11}, Lf2/z0;->e(Lf2/y0;Lx1/g;Lc2/g;Lu1/q;)Lf2/y0;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    iput-object v2, v7, Lf2/z0;->e:Lf2/y0;

    .line 253
    .line 254
    :cond_11
    :goto_b
    if-nez v16, :cond_12

    .line 255
    .line 256
    iget v2, v5, Lf2/b1;->s:I

    .line 257
    .line 258
    add-int/2addr v2, v10

    .line 259
    iput v2, v5, Lf2/b1;->s:I

    .line 260
    .line 261
    :cond_12
    if-ne v0, v6, :cond_13

    .line 262
    .line 263
    invoke-virtual {v3, v4}, Lf2/u0;->A(I)V

    .line 264
    .line 265
    .line 266
    :cond_13
    move v6, v0

    .line 267
    :goto_c
    return v6

    .line 268
    :goto_d
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 269
    goto :goto_f

    .line 270
    :goto_e
    throw v0

    .line 271
    :goto_f
    goto :goto_e
.end method
