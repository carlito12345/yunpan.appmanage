.class public final Lg0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lg0/e;->a:Z

    .line 3
    iput-boolean v0, p0, Lg0/e;->b:Z

    .line 4
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lg0/e;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lf0/e;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lg0/e;->a:Z

    .line 7
    iput-boolean v0, p0, Lg0/e;->b:Z

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg0/e;->e:Ljava/lang/Object;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lg0/e;->g:Ljava/lang/Object;

    .line 11
    new-instance v0, Lg0/b;

    invoke-direct {v0}, Lg0/b;-><init>()V

    iput-object v0, p0, Lg0/e;->h:Ljava/lang/Object;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg0/e;->f:Ljava/lang/Object;

    .line 13
    iput-object p1, p0, Lg0/e;->c:Ljava/lang/Object;

    .line 14
    iput-object p1, p0, Lg0/e;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lg0/f;IILjava/util/ArrayList;Lg0/l;)V
    .locals 9

    .line 1
    iget-object p1, p1, Lg0/f;->d:Lg0/o;

    .line 2
    .line 3
    iget-object p3, p1, Lg0/o;->c:Lg0/l;

    .line 4
    .line 5
    if-nez p3, :cond_a

    .line 6
    .line 7
    iget-object p3, p0, Lg0/e;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p3, Lf0/e;

    .line 10
    .line 11
    iget-object v0, p3, Lf0/d;->d:Lg0/k;

    .line 12
    .line 13
    if-eq p1, v0, :cond_a

    .line 14
    .line 15
    iget-object p3, p3, Lf0/d;->e:Lg0/m;

    .line 16
    .line 17
    if-ne p1, p3, :cond_0

    .line 18
    .line 19
    goto/16 :goto_6

    .line 20
    .line 21
    :cond_0
    if-nez p5, :cond_1

    .line 22
    .line 23
    new-instance p5, Lg0/l;

    .line 24
    .line 25
    invoke-direct {p5, p1}, Lg0/l;-><init>(Lg0/o;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    :cond_1
    iput-object p5, p1, Lg0/o;->c:Lg0/l;

    .line 32
    .line 33
    iget-object p3, p5, Lg0/l;->b:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    iget-object p3, p1, Lg0/o;->h:Lg0/f;

    .line 39
    .line 40
    iget-object v0, p3, Lg0/f;->k:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lg0/d;

    .line 57
    .line 58
    instance-of v1, v0, Lg0/f;

    .line 59
    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    move-object v1, v0

    .line 63
    check-cast v1, Lg0/f;

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    move-object v0, p0

    .line 67
    move v2, p2

    .line 68
    move-object v4, p4

    .line 69
    move-object v5, p5

    .line 70
    invoke-virtual/range {v0 .. v5}, Lg0/e;->a(Lg0/f;IILjava/util/ArrayList;Lg0/l;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    iget-object v6, p1, Lg0/o;->i:Lg0/f;

    .line 75
    .line 76
    iget-object v0, v6, Lg0/f;->k:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_5

    .line 87
    .line 88
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lg0/d;

    .line 93
    .line 94
    instance-of v1, v0, Lg0/f;

    .line 95
    .line 96
    if-eqz v1, :cond_4

    .line 97
    .line 98
    move-object v1, v0

    .line 99
    check-cast v1, Lg0/f;

    .line 100
    .line 101
    const/4 v3, 0x1

    .line 102
    move-object v0, p0

    .line 103
    move v2, p2

    .line 104
    move-object v4, p4

    .line 105
    move-object v5, p5

    .line 106
    invoke-virtual/range {v0 .. v5}, Lg0/e;->a(Lg0/f;IILjava/util/ArrayList;Lg0/l;)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_5
    const/4 v7, 0x1

    .line 111
    if-ne p2, v7, :cond_7

    .line 112
    .line 113
    instance-of v0, p1, Lg0/m;

    .line 114
    .line 115
    if-eqz v0, :cond_7

    .line 116
    .line 117
    move-object v0, p1

    .line 118
    check-cast v0, Lg0/m;

    .line 119
    .line 120
    iget-object v0, v0, Lg0/m;->k:Lg0/f;

    .line 121
    .line 122
    iget-object v0, v0, Lg0/f;->k:Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    :cond_6
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_7

    .line 133
    .line 134
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Lg0/d;

    .line 139
    .line 140
    instance-of v1, v0, Lg0/f;

    .line 141
    .line 142
    if-eqz v1, :cond_6

    .line 143
    .line 144
    move-object v1, v0

    .line 145
    check-cast v1, Lg0/f;

    .line 146
    .line 147
    const/4 v3, 0x2

    .line 148
    move-object v0, p0

    .line 149
    move v2, p2

    .line 150
    move-object v4, p4

    .line 151
    move-object v5, p5

    .line 152
    invoke-virtual/range {v0 .. v5}, Lg0/e;->a(Lg0/f;IILjava/util/ArrayList;Lg0/l;)V

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_7
    iget-object p3, p3, Lg0/f;->l:Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 159
    .line 160
    .line 161
    move-result-object p3

    .line 162
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_8

    .line 167
    .line 168
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    move-object v1, v0

    .line 173
    check-cast v1, Lg0/f;

    .line 174
    .line 175
    const/4 v3, 0x0

    .line 176
    move-object v0, p0

    .line 177
    move v2, p2

    .line 178
    move-object v4, p4

    .line 179
    move-object v5, p5

    .line 180
    invoke-virtual/range {v0 .. v5}, Lg0/e;->a(Lg0/f;IILjava/util/ArrayList;Lg0/l;)V

    .line 181
    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_8
    iget-object p3, v6, Lg0/f;->l:Ljava/util/ArrayList;

    .line 185
    .line 186
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 187
    .line 188
    .line 189
    move-result-object p3

    .line 190
    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-eqz v0, :cond_9

    .line 195
    .line 196
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    move-object v1, v0

    .line 201
    check-cast v1, Lg0/f;

    .line 202
    .line 203
    const/4 v3, 0x1

    .line 204
    move-object v0, p0

    .line 205
    move v2, p2

    .line 206
    move-object v4, p4

    .line 207
    move-object v5, p5

    .line 208
    invoke-virtual/range {v0 .. v5}, Lg0/e;->a(Lg0/f;IILjava/util/ArrayList;Lg0/l;)V

    .line 209
    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_9
    if-ne p2, v7, :cond_a

    .line 213
    .line 214
    instance-of p3, p1, Lg0/m;

    .line 215
    .line 216
    if-eqz p3, :cond_a

    .line 217
    .line 218
    check-cast p1, Lg0/m;

    .line 219
    .line 220
    iget-object p1, p1, Lg0/m;->k:Lg0/f;

    .line 221
    .line 222
    iget-object p1, p1, Lg0/f;->l:Ljava/util/ArrayList;

    .line 223
    .line 224
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 229
    .line 230
    .line 231
    move-result p3

    .line 232
    if-eqz p3, :cond_a

    .line 233
    .line 234
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object p3

    .line 238
    move-object v1, p3

    .line 239
    check-cast v1, Lg0/f;

    .line 240
    .line 241
    const/4 v3, 0x2

    .line 242
    move-object v0, p0

    .line 243
    move v2, p2

    .line 244
    move-object v4, p4

    .line 245
    move-object v5, p5

    .line 246
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lg0/e;->a(Lg0/f;IILjava/util/ArrayList;Lg0/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    .line 248
    .line 249
    goto :goto_5

    .line 250
    :catchall_0
    move-exception p1

    .line 251
    throw p1

    .line 252
    :cond_a
    :goto_6
    return-void
.end method

.method public b(Lf0/e;)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    iget-object v1, v0, Lf0/e;->q0:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_26

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lf0/d;

    .line 20
    .line 21
    iget-object v3, v2, Lf0/d;->p0:[I

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    aget v5, v3, v4

    .line 25
    .line 26
    const/4 v9, 0x1

    .line 27
    aget v3, v3, v9

    .line 28
    .line 29
    iget v6, v2, Lf0/d;->g0:I

    .line 30
    .line 31
    const/16 v7, 0x8

    .line 32
    .line 33
    if-ne v6, v7, :cond_1

    .line 34
    .line 35
    iput-boolean v9, v2, Lf0/d;->a:Z

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget v6, v2, Lf0/d;->w:F

    .line 39
    .line 40
    const/4 v7, 0x3

    .line 41
    const/high16 v10, 0x3f800000    # 1.0f

    .line 42
    .line 43
    const/4 v8, 0x2

    .line 44
    cmpg-float v11, v6, v10

    .line 45
    .line 46
    if-gez v11, :cond_2

    .line 47
    .line 48
    if-ne v5, v7, :cond_2

    .line 49
    .line 50
    iput v8, v2, Lf0/d;->r:I

    .line 51
    .line 52
    :cond_2
    iget v11, v2, Lf0/d;->z:F

    .line 53
    .line 54
    cmpg-float v12, v11, v10

    .line 55
    .line 56
    if-gez v12, :cond_3

    .line 57
    .line 58
    if-ne v3, v7, :cond_3

    .line 59
    .line 60
    iput v8, v2, Lf0/d;->s:I

    .line 61
    .line 62
    :cond_3
    iget v12, v2, Lf0/d;->W:F

    .line 63
    .line 64
    const/4 v13, 0x0

    .line 65
    const/4 v14, 0x2

    .line 66
    const/4 v15, 0x1

    .line 67
    cmpl-float v12, v12, v13

    .line 68
    .line 69
    if-lez v12, :cond_9

    .line 70
    .line 71
    if-ne v5, v7, :cond_5

    .line 72
    .line 73
    if-eq v3, v14, :cond_4

    .line 74
    .line 75
    if-ne v3, v15, :cond_5

    .line 76
    .line 77
    :cond_4
    iput v7, v2, Lf0/d;->r:I

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_5
    if-ne v3, v7, :cond_7

    .line 81
    .line 82
    if-eq v5, v14, :cond_6

    .line 83
    .line 84
    if-ne v5, v15, :cond_7

    .line 85
    .line 86
    :cond_6
    iput v7, v2, Lf0/d;->s:I

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_7
    if-ne v5, v7, :cond_9

    .line 90
    .line 91
    if-ne v3, v7, :cond_9

    .line 92
    .line 93
    iget v12, v2, Lf0/d;->r:I

    .line 94
    .line 95
    if-nez v12, :cond_8

    .line 96
    .line 97
    iput v7, v2, Lf0/d;->r:I

    .line 98
    .line 99
    :cond_8
    iget v12, v2, Lf0/d;->s:I

    .line 100
    .line 101
    if-nez v12, :cond_9

    .line 102
    .line 103
    iput v7, v2, Lf0/d;->s:I

    .line 104
    .line 105
    :cond_9
    :goto_1
    iget-object v12, v2, Lf0/d;->K:Lf0/c;

    .line 106
    .line 107
    iget-object v13, v2, Lf0/d;->I:Lf0/c;

    .line 108
    .line 109
    if-ne v5, v7, :cond_b

    .line 110
    .line 111
    iget v10, v2, Lf0/d;->r:I

    .line 112
    .line 113
    if-ne v10, v9, :cond_b

    .line 114
    .line 115
    iget-object v10, v13, Lf0/c;->f:Lf0/c;

    .line 116
    .line 117
    if-eqz v10, :cond_a

    .line 118
    .line 119
    iget-object v10, v12, Lf0/c;->f:Lf0/c;

    .line 120
    .line 121
    if-nez v10, :cond_b

    .line 122
    .line 123
    :cond_a
    const/4 v5, 0x2

    .line 124
    :cond_b
    iget-object v10, v2, Lf0/d;->L:Lf0/c;

    .line 125
    .line 126
    iget-object v4, v2, Lf0/d;->J:Lf0/c;

    .line 127
    .line 128
    if-ne v3, v7, :cond_d

    .line 129
    .line 130
    iget v8, v2, Lf0/d;->s:I

    .line 131
    .line 132
    if-ne v8, v9, :cond_d

    .line 133
    .line 134
    iget-object v8, v4, Lf0/c;->f:Lf0/c;

    .line 135
    .line 136
    if-eqz v8, :cond_c

    .line 137
    .line 138
    iget-object v8, v10, Lf0/c;->f:Lf0/c;

    .line 139
    .line 140
    if-nez v8, :cond_d

    .line 141
    .line 142
    :cond_c
    const/4 v8, 0x2

    .line 143
    goto :goto_2

    .line 144
    :cond_d
    move v8, v3

    .line 145
    :goto_2
    iget-object v3, v2, Lf0/d;->d:Lg0/k;

    .line 146
    .line 147
    iput v5, v3, Lg0/o;->d:I

    .line 148
    .line 149
    iget v9, v2, Lf0/d;->r:I

    .line 150
    .line 151
    iput v9, v3, Lg0/o;->a:I

    .line 152
    .line 153
    iget-object v3, v2, Lf0/d;->e:Lg0/m;

    .line 154
    .line 155
    iput v8, v3, Lg0/o;->d:I

    .line 156
    .line 157
    iget v7, v2, Lf0/d;->s:I

    .line 158
    .line 159
    iput v7, v3, Lg0/o;->a:I

    .line 160
    .line 161
    const/4 v3, 0x4

    .line 162
    if-eq v5, v3, :cond_e

    .line 163
    .line 164
    if-eq v5, v15, :cond_e

    .line 165
    .line 166
    if-ne v5, v14, :cond_f

    .line 167
    .line 168
    :cond_e
    if-eq v8, v3, :cond_23

    .line 169
    .line 170
    if-eq v8, v15, :cond_23

    .line 171
    .line 172
    if-ne v8, v14, :cond_f

    .line 173
    .line 174
    goto/16 :goto_8

    .line 175
    .line 176
    :cond_f
    iget-object v4, v0, Lf0/d;->p0:[I

    .line 177
    .line 178
    iget-object v10, v2, Lf0/d;->Q:[Lf0/c;

    .line 179
    .line 180
    const/high16 v12, 0x3f000000    # 0.5f

    .line 181
    .line 182
    const/4 v13, 0x3

    .line 183
    if-ne v5, v13, :cond_10

    .line 184
    .line 185
    if-eq v8, v14, :cond_11

    .line 186
    .line 187
    if-ne v8, v15, :cond_10

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_10
    const/4 v3, 0x3

    .line 191
    goto/16 :goto_4

    .line 192
    .line 193
    :cond_11
    :goto_3
    if-ne v9, v13, :cond_13

    .line 194
    .line 195
    if-ne v8, v14, :cond_12

    .line 196
    .line 197
    const/4 v7, 0x0

    .line 198
    const/4 v5, 0x0

    .line 199
    move-object/from16 v3, p0

    .line 200
    .line 201
    move v4, v14

    .line 202
    move v6, v14

    .line 203
    move-object v8, v2

    .line 204
    invoke-virtual/range {v3 .. v8}, Lg0/e;->i(IIIILf0/d;)V

    .line 205
    .line 206
    .line 207
    :cond_12
    invoke-virtual {v2}, Lf0/d;->k()I

    .line 208
    .line 209
    .line 210
    move-result v7

    .line 211
    int-to-float v3, v7

    .line 212
    iget v4, v2, Lf0/d;->W:F

    .line 213
    .line 214
    mul-float v3, v3, v4

    .line 215
    .line 216
    add-float/2addr v3, v12

    .line 217
    float-to-int v5, v3

    .line 218
    move-object/from16 v3, p0

    .line 219
    .line 220
    move v4, v15

    .line 221
    move v6, v15

    .line 222
    move-object v8, v2

    .line 223
    invoke-virtual/range {v3 .. v8}, Lg0/e;->i(IIIILf0/d;)V

    .line 224
    .line 225
    .line 226
    iget-object v3, v2, Lf0/d;->d:Lg0/k;

    .line 227
    .line 228
    iget-object v3, v3, Lg0/o;->e:Lg0/g;

    .line 229
    .line 230
    invoke-virtual {v2}, Lf0/d;->q()I

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    invoke-virtual {v3, v4}, Lg0/g;->d(I)V

    .line 235
    .line 236
    .line 237
    iget-object v3, v2, Lf0/d;->e:Lg0/m;

    .line 238
    .line 239
    iget-object v3, v3, Lg0/o;->e:Lg0/g;

    .line 240
    .line 241
    invoke-virtual {v2}, Lf0/d;->k()I

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    invoke-virtual {v3, v4}, Lg0/g;->d(I)V

    .line 246
    .line 247
    .line 248
    const/4 v13, 0x1

    .line 249
    iput-boolean v13, v2, Lf0/d;->a:Z

    .line 250
    .line 251
    goto/16 :goto_0

    .line 252
    .line 253
    :cond_13
    const/4 v13, 0x1

    .line 254
    if-ne v9, v13, :cond_14

    .line 255
    .line 256
    const/4 v5, 0x0

    .line 257
    const/4 v7, 0x0

    .line 258
    move-object/from16 v3, p0

    .line 259
    .line 260
    move v4, v14

    .line 261
    move v6, v8

    .line 262
    move-object v8, v2

    .line 263
    invoke-virtual/range {v3 .. v8}, Lg0/e;->i(IIIILf0/d;)V

    .line 264
    .line 265
    .line 266
    iget-object v3, v2, Lf0/d;->d:Lg0/k;

    .line 267
    .line 268
    iget-object v3, v3, Lg0/o;->e:Lg0/g;

    .line 269
    .line 270
    invoke-virtual {v2}, Lf0/d;->q()I

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    iput v2, v3, Lg0/g;->m:I

    .line 275
    .line 276
    goto/16 :goto_0

    .line 277
    .line 278
    :cond_14
    const/4 v13, 0x2

    .line 279
    if-ne v9, v13, :cond_16

    .line 280
    .line 281
    const/4 v13, 0x0

    .line 282
    aget v14, v4, v13

    .line 283
    .line 284
    if-eq v14, v15, :cond_15

    .line 285
    .line 286
    if-ne v14, v3, :cond_10

    .line 287
    .line 288
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lf0/d;->q()I

    .line 289
    .line 290
    .line 291
    move-result v3

    .line 292
    int-to-float v3, v3

    .line 293
    mul-float v6, v6, v3

    .line 294
    .line 295
    add-float/2addr v6, v12

    .line 296
    float-to-int v5, v6

    .line 297
    invoke-virtual {v2}, Lf0/d;->k()I

    .line 298
    .line 299
    .line 300
    move-result v7

    .line 301
    move-object/from16 v3, p0

    .line 302
    .line 303
    move v4, v15

    .line 304
    move v6, v8

    .line 305
    move-object v8, v2

    .line 306
    invoke-virtual/range {v3 .. v8}, Lg0/e;->i(IIIILf0/d;)V

    .line 307
    .line 308
    .line 309
    iget-object v3, v2, Lf0/d;->d:Lg0/k;

    .line 310
    .line 311
    iget-object v3, v3, Lg0/o;->e:Lg0/g;

    .line 312
    .line 313
    invoke-virtual {v2}, Lf0/d;->q()I

    .line 314
    .line 315
    .line 316
    move-result v4

    .line 317
    invoke-virtual {v3, v4}, Lg0/g;->d(I)V

    .line 318
    .line 319
    .line 320
    iget-object v3, v2, Lf0/d;->e:Lg0/m;

    .line 321
    .line 322
    iget-object v3, v3, Lg0/o;->e:Lg0/g;

    .line 323
    .line 324
    invoke-virtual {v2}, Lf0/d;->k()I

    .line 325
    .line 326
    .line 327
    move-result v4

    .line 328
    invoke-virtual {v3, v4}, Lg0/g;->d(I)V

    .line 329
    .line 330
    .line 331
    const/4 v13, 0x1

    .line 332
    iput-boolean v13, v2, Lf0/d;->a:Z

    .line 333
    .line 334
    goto/16 :goto_0

    .line 335
    .line 336
    :cond_16
    const/4 v13, 0x1

    .line 337
    const/4 v14, 0x0

    .line 338
    aget-object v3, v10, v14

    .line 339
    .line 340
    iget-object v3, v3, Lf0/c;->f:Lf0/c;

    .line 341
    .line 342
    if-eqz v3, :cond_17

    .line 343
    .line 344
    aget-object v3, v10, v13

    .line 345
    .line 346
    iget-object v3, v3, Lf0/c;->f:Lf0/c;

    .line 347
    .line 348
    if-nez v3, :cond_10

    .line 349
    .line 350
    :cond_17
    const/4 v5, 0x0

    .line 351
    const/4 v7, 0x0

    .line 352
    move-object/from16 v3, p0

    .line 353
    .line 354
    const/4 v4, 0x2

    .line 355
    move v6, v8

    .line 356
    move-object v8, v2

    .line 357
    invoke-virtual/range {v3 .. v8}, Lg0/e;->i(IIIILf0/d;)V

    .line 358
    .line 359
    .line 360
    iget-object v3, v2, Lf0/d;->d:Lg0/k;

    .line 361
    .line 362
    iget-object v3, v3, Lg0/o;->e:Lg0/g;

    .line 363
    .line 364
    invoke-virtual {v2}, Lf0/d;->q()I

    .line 365
    .line 366
    .line 367
    move-result v4

    .line 368
    invoke-virtual {v3, v4}, Lg0/g;->d(I)V

    .line 369
    .line 370
    .line 371
    iget-object v3, v2, Lf0/d;->e:Lg0/m;

    .line 372
    .line 373
    iget-object v3, v3, Lg0/o;->e:Lg0/g;

    .line 374
    .line 375
    invoke-virtual {v2}, Lf0/d;->k()I

    .line 376
    .line 377
    .line 378
    move-result v4

    .line 379
    invoke-virtual {v3, v4}, Lg0/g;->d(I)V

    .line 380
    .line 381
    .line 382
    const/4 v3, 0x1

    .line 383
    iput-boolean v3, v2, Lf0/d;->a:Z

    .line 384
    .line 385
    goto/16 :goto_0

    .line 386
    .line 387
    :goto_4
    if-ne v8, v3, :cond_18

    .line 388
    .line 389
    const/4 v13, 0x2

    .line 390
    if-eq v5, v13, :cond_19

    .line 391
    .line 392
    if-ne v5, v15, :cond_18

    .line 393
    .line 394
    goto :goto_5

    .line 395
    :cond_18
    const/4 v3, 0x1

    .line 396
    const/4 v10, 0x3

    .line 397
    goto/16 :goto_6

    .line 398
    .line 399
    :cond_19
    :goto_5
    if-ne v7, v3, :cond_1c

    .line 400
    .line 401
    if-ne v5, v13, :cond_1a

    .line 402
    .line 403
    const/4 v7, 0x0

    .line 404
    const/4 v5, 0x0

    .line 405
    move-object/from16 v3, p0

    .line 406
    .line 407
    move v4, v13

    .line 408
    move v6, v13

    .line 409
    move-object v8, v2

    .line 410
    invoke-virtual/range {v3 .. v8}, Lg0/e;->i(IIIILf0/d;)V

    .line 411
    .line 412
    .line 413
    :cond_1a
    invoke-virtual {v2}, Lf0/d;->q()I

    .line 414
    .line 415
    .line 416
    move-result v5

    .line 417
    iget v3, v2, Lf0/d;->W:F

    .line 418
    .line 419
    iget v4, v2, Lf0/d;->X:I

    .line 420
    .line 421
    const/4 v6, -0x1

    .line 422
    if-ne v4, v6, :cond_1b

    .line 423
    .line 424
    const/high16 v4, 0x3f800000    # 1.0f

    .line 425
    .line 426
    div-float v3, v4, v3

    .line 427
    .line 428
    :cond_1b
    int-to-float v4, v5

    .line 429
    mul-float v4, v4, v3

    .line 430
    .line 431
    add-float/2addr v4, v12

    .line 432
    float-to-int v7, v4

    .line 433
    move-object/from16 v3, p0

    .line 434
    .line 435
    move v4, v15

    .line 436
    move v6, v15

    .line 437
    move-object v8, v2

    .line 438
    invoke-virtual/range {v3 .. v8}, Lg0/e;->i(IIIILf0/d;)V

    .line 439
    .line 440
    .line 441
    iget-object v3, v2, Lf0/d;->d:Lg0/k;

    .line 442
    .line 443
    iget-object v3, v3, Lg0/o;->e:Lg0/g;

    .line 444
    .line 445
    invoke-virtual {v2}, Lf0/d;->q()I

    .line 446
    .line 447
    .line 448
    move-result v4

    .line 449
    invoke-virtual {v3, v4}, Lg0/g;->d(I)V

    .line 450
    .line 451
    .line 452
    iget-object v3, v2, Lf0/d;->e:Lg0/m;

    .line 453
    .line 454
    iget-object v3, v3, Lg0/o;->e:Lg0/g;

    .line 455
    .line 456
    invoke-virtual {v2}, Lf0/d;->k()I

    .line 457
    .line 458
    .line 459
    move-result v4

    .line 460
    invoke-virtual {v3, v4}, Lg0/g;->d(I)V

    .line 461
    .line 462
    .line 463
    const/4 v3, 0x1

    .line 464
    iput-boolean v3, v2, Lf0/d;->a:Z

    .line 465
    .line 466
    goto/16 :goto_0

    .line 467
    .line 468
    :cond_1c
    const/4 v3, 0x1

    .line 469
    if-ne v7, v3, :cond_1d

    .line 470
    .line 471
    const/4 v7, 0x0

    .line 472
    const/4 v6, 0x0

    .line 473
    move-object/from16 v3, p0

    .line 474
    .line 475
    move v4, v5

    .line 476
    move v5, v6

    .line 477
    const/4 v6, 0x2

    .line 478
    move-object v8, v2

    .line 479
    invoke-virtual/range {v3 .. v8}, Lg0/e;->i(IIIILf0/d;)V

    .line 480
    .line 481
    .line 482
    iget-object v3, v2, Lf0/d;->e:Lg0/m;

    .line 483
    .line 484
    iget-object v3, v3, Lg0/o;->e:Lg0/g;

    .line 485
    .line 486
    invoke-virtual {v2}, Lf0/d;->k()I

    .line 487
    .line 488
    .line 489
    move-result v2

    .line 490
    iput v2, v3, Lg0/g;->m:I

    .line 491
    .line 492
    goto/16 :goto_0

    .line 493
    .line 494
    :cond_1d
    const/4 v3, 0x2

    .line 495
    if-ne v7, v3, :cond_1f

    .line 496
    .line 497
    const/4 v3, 0x1

    .line 498
    aget v10, v4, v3

    .line 499
    .line 500
    if-eq v10, v15, :cond_1e

    .line 501
    .line 502
    const/4 v3, 0x4

    .line 503
    if-ne v10, v3, :cond_18

    .line 504
    .line 505
    :cond_1e
    invoke-virtual {v2}, Lf0/d;->q()I

    .line 506
    .line 507
    .line 508
    move-result v6

    .line 509
    invoke-virtual/range {p1 .. p1}, Lf0/d;->k()I

    .line 510
    .line 511
    .line 512
    move-result v3

    .line 513
    int-to-float v3, v3

    .line 514
    mul-float v11, v11, v3

    .line 515
    .line 516
    add-float/2addr v11, v12

    .line 517
    float-to-int v7, v11

    .line 518
    move-object/from16 v3, p0

    .line 519
    .line 520
    move v4, v5

    .line 521
    move v5, v6

    .line 522
    move v6, v15

    .line 523
    move-object v8, v2

    .line 524
    invoke-virtual/range {v3 .. v8}, Lg0/e;->i(IIIILf0/d;)V

    .line 525
    .line 526
    .line 527
    iget-object v3, v2, Lf0/d;->d:Lg0/k;

    .line 528
    .line 529
    iget-object v3, v3, Lg0/o;->e:Lg0/g;

    .line 530
    .line 531
    invoke-virtual {v2}, Lf0/d;->q()I

    .line 532
    .line 533
    .line 534
    move-result v4

    .line 535
    invoke-virtual {v3, v4}, Lg0/g;->d(I)V

    .line 536
    .line 537
    .line 538
    iget-object v3, v2, Lf0/d;->e:Lg0/m;

    .line 539
    .line 540
    iget-object v3, v3, Lg0/o;->e:Lg0/g;

    .line 541
    .line 542
    invoke-virtual {v2}, Lf0/d;->k()I

    .line 543
    .line 544
    .line 545
    move-result v4

    .line 546
    invoke-virtual {v3, v4}, Lg0/g;->d(I)V

    .line 547
    .line 548
    .line 549
    const/4 v3, 0x1

    .line 550
    iput-boolean v3, v2, Lf0/d;->a:Z

    .line 551
    .line 552
    goto/16 :goto_0

    .line 553
    .line 554
    :cond_1f
    aget-object v13, v10, v3

    .line 555
    .line 556
    iget-object v3, v13, Lf0/c;->f:Lf0/c;

    .line 557
    .line 558
    if-eqz v3, :cond_20

    .line 559
    .line 560
    const/4 v3, 0x3

    .line 561
    aget-object v10, v10, v3

    .line 562
    .line 563
    iget-object v3, v10, Lf0/c;->f:Lf0/c;

    .line 564
    .line 565
    if-nez v3, :cond_18

    .line 566
    .line 567
    :cond_20
    const/4 v5, 0x0

    .line 568
    const/4 v7, 0x0

    .line 569
    move-object/from16 v3, p0

    .line 570
    .line 571
    const/4 v4, 0x2

    .line 572
    move v6, v8

    .line 573
    move-object v8, v2

    .line 574
    invoke-virtual/range {v3 .. v8}, Lg0/e;->i(IIIILf0/d;)V

    .line 575
    .line 576
    .line 577
    iget-object v3, v2, Lf0/d;->d:Lg0/k;

    .line 578
    .line 579
    iget-object v3, v3, Lg0/o;->e:Lg0/g;

    .line 580
    .line 581
    invoke-virtual {v2}, Lf0/d;->q()I

    .line 582
    .line 583
    .line 584
    move-result v4

    .line 585
    invoke-virtual {v3, v4}, Lg0/g;->d(I)V

    .line 586
    .line 587
    .line 588
    iget-object v3, v2, Lf0/d;->e:Lg0/m;

    .line 589
    .line 590
    iget-object v3, v3, Lg0/o;->e:Lg0/g;

    .line 591
    .line 592
    invoke-virtual {v2}, Lf0/d;->k()I

    .line 593
    .line 594
    .line 595
    move-result v4

    .line 596
    invoke-virtual {v3, v4}, Lg0/g;->d(I)V

    .line 597
    .line 598
    .line 599
    const/4 v3, 0x1

    .line 600
    iput-boolean v3, v2, Lf0/d;->a:Z

    .line 601
    .line 602
    goto/16 :goto_0

    .line 603
    .line 604
    :goto_6
    if-ne v5, v10, :cond_0

    .line 605
    .line 606
    if-ne v8, v10, :cond_0

    .line 607
    .line 608
    if-eq v9, v3, :cond_22

    .line 609
    .line 610
    if-ne v7, v3, :cond_21

    .line 611
    .line 612
    goto :goto_7

    .line 613
    :cond_21
    const/4 v5, 0x2

    .line 614
    if-ne v7, v5, :cond_0

    .line 615
    .line 616
    if-ne v9, v5, :cond_0

    .line 617
    .line 618
    const/4 v5, 0x0

    .line 619
    aget v5, v4, v5

    .line 620
    .line 621
    if-ne v5, v15, :cond_0

    .line 622
    .line 623
    aget v4, v4, v3

    .line 624
    .line 625
    if-ne v4, v15, :cond_0

    .line 626
    .line 627
    invoke-virtual/range {p1 .. p1}, Lf0/d;->q()I

    .line 628
    .line 629
    .line 630
    move-result v3

    .line 631
    int-to-float v3, v3

    .line 632
    mul-float v6, v6, v3

    .line 633
    .line 634
    add-float/2addr v6, v12

    .line 635
    float-to-int v5, v6

    .line 636
    invoke-virtual/range {p1 .. p1}, Lf0/d;->k()I

    .line 637
    .line 638
    .line 639
    move-result v3

    .line 640
    int-to-float v3, v3

    .line 641
    mul-float v11, v11, v3

    .line 642
    .line 643
    add-float/2addr v11, v12

    .line 644
    float-to-int v7, v11

    .line 645
    move-object/from16 v3, p0

    .line 646
    .line 647
    move v4, v15

    .line 648
    move v6, v15

    .line 649
    move-object v8, v2

    .line 650
    invoke-virtual/range {v3 .. v8}, Lg0/e;->i(IIIILf0/d;)V

    .line 651
    .line 652
    .line 653
    iget-object v3, v2, Lf0/d;->d:Lg0/k;

    .line 654
    .line 655
    iget-object v3, v3, Lg0/o;->e:Lg0/g;

    .line 656
    .line 657
    invoke-virtual {v2}, Lf0/d;->q()I

    .line 658
    .line 659
    .line 660
    move-result v4

    .line 661
    invoke-virtual {v3, v4}, Lg0/g;->d(I)V

    .line 662
    .line 663
    .line 664
    iget-object v3, v2, Lf0/d;->e:Lg0/m;

    .line 665
    .line 666
    iget-object v3, v3, Lg0/o;->e:Lg0/g;

    .line 667
    .line 668
    invoke-virtual {v2}, Lf0/d;->k()I

    .line 669
    .line 670
    .line 671
    move-result v4

    .line 672
    invoke-virtual {v3, v4}, Lg0/g;->d(I)V

    .line 673
    .line 674
    .line 675
    const/4 v3, 0x1

    .line 676
    iput-boolean v3, v2, Lf0/d;->a:Z

    .line 677
    .line 678
    goto/16 :goto_0

    .line 679
    .line 680
    :cond_22
    :goto_7
    const/4 v7, 0x0

    .line 681
    const/4 v5, 0x0

    .line 682
    move-object/from16 v3, p0

    .line 683
    .line 684
    const/4 v6, 0x2

    .line 685
    move v4, v6

    .line 686
    move-object v8, v2

    .line 687
    invoke-virtual/range {v3 .. v8}, Lg0/e;->i(IIIILf0/d;)V

    .line 688
    .line 689
    .line 690
    iget-object v3, v2, Lf0/d;->d:Lg0/k;

    .line 691
    .line 692
    iget-object v3, v3, Lg0/o;->e:Lg0/g;

    .line 693
    .line 694
    invoke-virtual {v2}, Lf0/d;->q()I

    .line 695
    .line 696
    .line 697
    move-result v4

    .line 698
    iput v4, v3, Lg0/g;->m:I

    .line 699
    .line 700
    iget-object v3, v2, Lf0/d;->e:Lg0/m;

    .line 701
    .line 702
    iget-object v3, v3, Lg0/o;->e:Lg0/g;

    .line 703
    .line 704
    invoke-virtual {v2}, Lf0/d;->k()I

    .line 705
    .line 706
    .line 707
    move-result v2

    .line 708
    iput v2, v3, Lg0/g;->m:I

    .line 709
    .line 710
    goto/16 :goto_0

    .line 711
    .line 712
    :cond_23
    :goto_8
    invoke-virtual {v2}, Lf0/d;->q()I

    .line 713
    .line 714
    .line 715
    move-result v3

    .line 716
    const/4 v6, 0x4

    .line 717
    if-ne v5, v6, :cond_24

    .line 718
    .line 719
    invoke-virtual/range {p1 .. p1}, Lf0/d;->q()I

    .line 720
    .line 721
    .line 722
    move-result v3

    .line 723
    iget v5, v13, Lf0/c;->g:I

    .line 724
    .line 725
    sub-int/2addr v3, v5

    .line 726
    iget v5, v12, Lf0/c;->g:I

    .line 727
    .line 728
    sub-int/2addr v3, v5

    .line 729
    move v7, v3

    .line 730
    const/4 v5, 0x1

    .line 731
    goto :goto_9

    .line 732
    :cond_24
    move v7, v3

    .line 733
    :goto_9
    invoke-virtual {v2}, Lf0/d;->k()I

    .line 734
    .line 735
    .line 736
    move-result v3

    .line 737
    if-ne v8, v6, :cond_25

    .line 738
    .line 739
    invoke-virtual/range {p1 .. p1}, Lf0/d;->k()I

    .line 740
    .line 741
    .line 742
    move-result v3

    .line 743
    iget v4, v4, Lf0/c;->g:I

    .line 744
    .line 745
    sub-int/2addr v3, v4

    .line 746
    iget v4, v10, Lf0/c;->g:I

    .line 747
    .line 748
    sub-int/2addr v3, v4

    .line 749
    move v8, v3

    .line 750
    const/4 v6, 0x1

    .line 751
    goto :goto_a

    .line 752
    :cond_25
    move v6, v8

    .line 753
    move v8, v3

    .line 754
    :goto_a
    move-object/from16 v3, p0

    .line 755
    .line 756
    move v4, v5

    .line 757
    move v5, v7

    .line 758
    move v7, v8

    .line 759
    move-object v8, v2

    .line 760
    invoke-virtual/range {v3 .. v8}, Lg0/e;->i(IIIILf0/d;)V

    .line 761
    .line 762
    .line 763
    iget-object v3, v2, Lf0/d;->d:Lg0/k;

    .line 764
    .line 765
    iget-object v3, v3, Lg0/o;->e:Lg0/g;

    .line 766
    .line 767
    invoke-virtual {v2}, Lf0/d;->q()I

    .line 768
    .line 769
    .line 770
    move-result v4

    .line 771
    invoke-virtual {v3, v4}, Lg0/g;->d(I)V

    .line 772
    .line 773
    .line 774
    iget-object v3, v2, Lf0/d;->e:Lg0/m;

    .line 775
    .line 776
    iget-object v3, v3, Lg0/o;->e:Lg0/g;

    .line 777
    .line 778
    invoke-virtual {v2}, Lf0/d;->k()I

    .line 779
    .line 780
    .line 781
    move-result v4

    .line 782
    invoke-virtual {v3, v4}, Lg0/g;->d(I)V

    .line 783
    .line 784
    .line 785
    const/4 v3, 0x1

    .line 786
    iput-boolean v3, v2, Lf0/d;->a:Z

    .line 787
    .line 788
    goto/16 :goto_0

    .line 789
    .line 790
    :cond_26
    return-void
.end method

.method public c()V
    .locals 8

    .line 1
    iget-object v0, p0, Lg0/e;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lg0/e;->d:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lf0/e;

    .line 11
    .line 12
    iget-object v2, v1, Lf0/d;->d:Lg0/k;

    .line 13
    .line 14
    invoke-virtual {v2}, Lg0/k;->f()V

    .line 15
    .line 16
    .line 17
    iget-object v2, v1, Lf0/d;->e:Lg0/m;

    .line 18
    .line 19
    invoke-virtual {v2}, Lg0/m;->f()V

    .line 20
    .line 21
    .line 22
    iget-object v2, v1, Lf0/d;->d:Lg0/k;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    iget-object v2, v1, Lf0/d;->e:Lg0/m;

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    iget-object v2, v1, Lf0/e;->q0:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const/4 v3, 0x0

    .line 39
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    const/4 v5, 0x1

    .line 44
    const/4 v6, 0x0

    .line 45
    if-eqz v4, :cond_8

    .line 46
    .line 47
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Lf0/d;

    .line 52
    .line 53
    instance-of v7, v4, Lf0/h;

    .line 54
    .line 55
    if-eqz v7, :cond_1

    .line 56
    .line 57
    new-instance v5, Lg0/i;

    .line 58
    .line 59
    check-cast v4, Lf0/h;

    .line 60
    .line 61
    invoke-direct {v5, v4}, Lg0/i;-><init>(Lf0/h;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {v4}, Lf0/d;->x()Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-eqz v7, :cond_4

    .line 73
    .line 74
    iget-object v7, v4, Lf0/d;->b:Lg0/c;

    .line 75
    .line 76
    if-nez v7, :cond_2

    .line 77
    .line 78
    new-instance v7, Lg0/c;

    .line 79
    .line 80
    invoke-direct {v7, v4, v6}, Lg0/c;-><init>(Lf0/d;I)V

    .line 81
    .line 82
    .line 83
    iput-object v7, v4, Lf0/d;->b:Lg0/c;

    .line 84
    .line 85
    :cond_2
    if-nez v3, :cond_3

    .line 86
    .line 87
    new-instance v3, Ljava/util/HashSet;

    .line 88
    .line 89
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 90
    .line 91
    .line 92
    :cond_3
    iget-object v6, v4, Lf0/d;->b:Lg0/c;

    .line 93
    .line 94
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_4
    iget-object v6, v4, Lf0/d;->d:Lg0/k;

    .line 99
    .line 100
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    :goto_1
    invoke-virtual {v4}, Lf0/d;->y()Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-eqz v6, :cond_7

    .line 108
    .line 109
    iget-object v6, v4, Lf0/d;->c:Lg0/c;

    .line 110
    .line 111
    if-nez v6, :cond_5

    .line 112
    .line 113
    new-instance v6, Lg0/c;

    .line 114
    .line 115
    invoke-direct {v6, v4, v5}, Lg0/c;-><init>(Lf0/d;I)V

    .line 116
    .line 117
    .line 118
    iput-object v6, v4, Lf0/d;->c:Lg0/c;

    .line 119
    .line 120
    :cond_5
    if-nez v3, :cond_6

    .line 121
    .line 122
    new-instance v3, Ljava/util/HashSet;

    .line 123
    .line 124
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 125
    .line 126
    .line 127
    :cond_6
    iget-object v5, v4, Lf0/d;->c:Lg0/c;

    .line 128
    .line 129
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_7
    iget-object v5, v4, Lf0/d;->e:Lg0/m;

    .line 134
    .line 135
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    :goto_2
    instance-of v5, v4, Lf0/i;

    .line 139
    .line 140
    if-eqz v5, :cond_0

    .line 141
    .line 142
    new-instance v5, Lg0/j;

    .line 143
    .line 144
    invoke-direct {v5, v4}, Lg0/j;-><init>(Lf0/d;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_8
    if-eqz v3, :cond_9

    .line 152
    .line 153
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 154
    .line 155
    .line 156
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    if-eqz v3, :cond_a

    .line 165
    .line 166
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    check-cast v3, Lg0/o;

    .line 171
    .line 172
    invoke-virtual {v3}, Lg0/o;->f()V

    .line 173
    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-eqz v2, :cond_c

    .line 185
    .line 186
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    check-cast v2, Lg0/o;

    .line 191
    .line 192
    iget-object v3, v2, Lg0/o;->b:Lf0/d;

    .line 193
    .line 194
    if-ne v3, v1, :cond_b

    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_b
    invoke-virtual {v2}, Lg0/o;->d()V

    .line 198
    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_c
    iget-object v0, p0, Lg0/e;->f:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast v0, Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 206
    .line 207
    .line 208
    iget-object v1, p0, Lg0/e;->c:Ljava/lang/Object;

    .line 209
    .line 210
    check-cast v1, Lf0/e;

    .line 211
    .line 212
    iget-object v2, v1, Lf0/d;->d:Lg0/k;

    .line 213
    .line 214
    invoke-virtual {p0, v2, v6, v0}, Lg0/e;->h(Lg0/o;ILjava/util/ArrayList;)V

    .line 215
    .line 216
    .line 217
    iget-object v1, v1, Lf0/d;->e:Lg0/m;

    .line 218
    .line 219
    invoke-virtual {p0, v1, v5, v0}, Lg0/e;->h(Lg0/o;ILjava/util/ArrayList;)V

    .line 220
    .line 221
    .line 222
    iput-boolean v6, p0, Lg0/e;->a:Z

    .line 223
    .line 224
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lg0/e;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/io/OutputStream;

    .line 4
    .line 5
    invoke-static {v0}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lg0/e;->e:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Ljava/io/InputStream;

    .line 11
    .line 12
    invoke-static {v0}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lg0/e;->d:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Ljava/lang/Process;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 22
    .line 23
    .line 24
    :cond_0
    :try_start_0
    iget-object v0, p0, Lg0/e;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Loa/b;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-interface {v0}, Loa/b;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    nop

    .line 35
    :cond_1
    :goto_0
    iget-object v0, p0, Lg0/e;->h:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lg0/e;->f:Ljava/lang/Object;

    .line 44
    .line 45
    iput-object v0, p0, Lg0/e;->e:Ljava/lang/Object;

    .line 46
    .line 47
    iput-object v0, p0, Lg0/e;->d:Ljava/lang/Object;

    .line 48
    .line 49
    iput-object v0, p0, Lg0/e;->c:Ljava/lang/Object;

    .line 50
    .line 51
    iget-object v1, p0, Lg0/e;->g:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v1, Lfg/b;

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    :try_start_1
    iget-object v1, p0, Lg0/e;->g:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v1, Lfg/b;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    .line 69
    .line 70
    :catch_1
    iput-object v0, p0, Lg0/e;->g:Ljava/lang/Object;

    .line 71
    .line 72
    :cond_2
    return-void
.end method

.method public e(Lf0/e;I)I
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v1, Lg0/e;->f:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v3, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    const/4 v7, 0x0

    .line 16
    const-wide/16 v8, 0x0

    .line 17
    .line 18
    :goto_0
    if-ge v7, v4, :cond_d

    .line 19
    .line 20
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v10

    .line 24
    check-cast v10, Lg0/l;

    .line 25
    .line 26
    iget-object v10, v10, Lg0/l;->a:Lg0/o;

    .line 27
    .line 28
    instance-of v11, v10, Lg0/c;

    .line 29
    .line 30
    if-eqz v11, :cond_0

    .line 31
    .line 32
    move-object v11, v10

    .line 33
    check-cast v11, Lg0/c;

    .line 34
    .line 35
    iget v11, v11, Lg0/o;->f:I

    .line 36
    .line 37
    if-eq v11, v2, :cond_2

    .line 38
    .line 39
    :goto_1
    move-object/from16 v18, v3

    .line 40
    .line 41
    move/from16 v16, v4

    .line 42
    .line 43
    move/from16 v17, v7

    .line 44
    .line 45
    const-wide/16 v0, 0x0

    .line 46
    .line 47
    goto/16 :goto_8

    .line 48
    .line 49
    :cond_0
    if-nez v2, :cond_1

    .line 50
    .line 51
    instance-of v11, v10, Lg0/k;

    .line 52
    .line 53
    if-nez v11, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    instance-of v11, v10, Lg0/m;

    .line 57
    .line 58
    if-nez v11, :cond_2

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    if-nez v2, :cond_3

    .line 62
    .line 63
    iget-object v11, v0, Lf0/d;->d:Lg0/k;

    .line 64
    .line 65
    :goto_2
    iget-object v11, v11, Lg0/o;->h:Lg0/f;

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_3
    iget-object v11, v0, Lf0/d;->e:Lg0/m;

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :goto_3
    if-nez v2, :cond_4

    .line 72
    .line 73
    iget-object v12, v0, Lf0/d;->d:Lg0/k;

    .line 74
    .line 75
    :goto_4
    iget-object v12, v12, Lg0/o;->i:Lg0/f;

    .line 76
    .line 77
    goto :goto_5

    .line 78
    :cond_4
    iget-object v12, v0, Lf0/d;->e:Lg0/m;

    .line 79
    .line 80
    goto :goto_4

    .line 81
    :goto_5
    iget-object v13, v10, Lg0/o;->h:Lg0/f;

    .line 82
    .line 83
    iget-object v13, v13, Lg0/f;->l:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v11

    .line 89
    iget-object v13, v10, Lg0/o;->i:Lg0/f;

    .line 90
    .line 91
    iget-object v14, v13, Lg0/f;->l:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v12

    .line 97
    invoke-virtual {v10}, Lg0/o;->j()J

    .line 98
    .line 99
    .line 100
    move-result-wide v14

    .line 101
    iget-object v5, v10, Lg0/o;->h:Lg0/f;

    .line 102
    .line 103
    if-eqz v11, :cond_a

    .line 104
    .line 105
    if-eqz v12, :cond_a

    .line 106
    .line 107
    const-wide/16 v0, 0x0

    .line 108
    .line 109
    invoke-static {v5, v0, v1}, Lg0/l;->b(Lg0/f;J)J

    .line 110
    .line 111
    .line 112
    move-result-wide v11

    .line 113
    move-object v6, v3

    .line 114
    move/from16 v16, v4

    .line 115
    .line 116
    invoke-static {v13, v0, v1}, Lg0/l;->a(Lg0/f;J)J

    .line 117
    .line 118
    .line 119
    move-result-wide v3

    .line 120
    sub-long/2addr v11, v14

    .line 121
    iget v0, v13, Lg0/f;->f:I

    .line 122
    .line 123
    neg-int v1, v0

    .line 124
    move-object/from16 v18, v6

    .line 125
    .line 126
    move/from16 v17, v7

    .line 127
    .line 128
    int-to-long v6, v1

    .line 129
    cmp-long v1, v11, v6

    .line 130
    .line 131
    if-ltz v1, :cond_5

    .line 132
    .line 133
    int-to-long v0, v0

    .line 134
    add-long/2addr v11, v0

    .line 135
    :cond_5
    neg-long v0, v3

    .line 136
    sub-long/2addr v0, v14

    .line 137
    iget v3, v5, Lg0/f;->f:I

    .line 138
    .line 139
    int-to-long v3, v3

    .line 140
    sub-long/2addr v0, v3

    .line 141
    cmp-long v6, v0, v3

    .line 142
    .line 143
    if-ltz v6, :cond_6

    .line 144
    .line 145
    sub-long/2addr v0, v3

    .line 146
    :cond_6
    iget-object v3, v10, Lg0/o;->b:Lf0/d;

    .line 147
    .line 148
    if-nez v2, :cond_7

    .line 149
    .line 150
    iget v3, v3, Lf0/d;->d0:F

    .line 151
    .line 152
    goto :goto_6

    .line 153
    :cond_7
    const/4 v4, 0x1

    .line 154
    if-ne v2, v4, :cond_8

    .line 155
    .line 156
    iget v3, v3, Lf0/d;->e0:F

    .line 157
    .line 158
    goto :goto_6

    .line 159
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    const/high16 v3, -0x40800000    # -1.0f

    .line 163
    .line 164
    :goto_6
    const/4 v4, 0x0

    .line 165
    const/high16 v6, 0x3f800000    # 1.0f

    .line 166
    .line 167
    cmpl-float v4, v3, v4

    .line 168
    .line 169
    if-lez v4, :cond_9

    .line 170
    .line 171
    long-to-float v0, v0

    .line 172
    div-float/2addr v0, v3

    .line 173
    long-to-float v1, v11

    .line 174
    sub-float v4, v6, v3

    .line 175
    .line 176
    div-float/2addr v1, v4

    .line 177
    add-float/2addr v1, v0

    .line 178
    float-to-long v0, v1

    .line 179
    goto :goto_7

    .line 180
    :cond_9
    const-wide/16 v0, 0x0

    .line 181
    .line 182
    :goto_7
    long-to-float v0, v0

    .line 183
    mul-float v1, v0, v3

    .line 184
    .line 185
    const/high16 v4, 0x3f000000    # 0.5f

    .line 186
    .line 187
    add-float/2addr v1, v4

    .line 188
    float-to-long v10, v1

    .line 189
    invoke-static {v6, v3, v0, v4}, Lg/b;->b(FFFF)F

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    float-to-long v0, v0

    .line 194
    add-long/2addr v10, v14

    .line 195
    add-long/2addr v10, v0

    .line 196
    iget v0, v5, Lg0/f;->f:I

    .line 197
    .line 198
    int-to-long v0, v0

    .line 199
    add-long/2addr v0, v10

    .line 200
    iget v3, v13, Lg0/f;->f:I

    .line 201
    .line 202
    int-to-long v3, v3

    .line 203
    sub-long/2addr v0, v3

    .line 204
    goto :goto_8

    .line 205
    :cond_a
    move-object/from16 v18, v3

    .line 206
    .line 207
    move/from16 v16, v4

    .line 208
    .line 209
    move/from16 v17, v7

    .line 210
    .line 211
    if-eqz v11, :cond_b

    .line 212
    .line 213
    iget v0, v5, Lg0/f;->f:I

    .line 214
    .line 215
    int-to-long v0, v0

    .line 216
    invoke-static {v5, v0, v1}, Lg0/l;->b(Lg0/f;J)J

    .line 217
    .line 218
    .line 219
    move-result-wide v0

    .line 220
    iget v3, v5, Lg0/f;->f:I

    .line 221
    .line 222
    int-to-long v3, v3

    .line 223
    add-long/2addr v3, v14

    .line 224
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 225
    .line 226
    .line 227
    move-result-wide v0

    .line 228
    goto :goto_8

    .line 229
    :cond_b
    if-eqz v12, :cond_c

    .line 230
    .line 231
    iget v0, v13, Lg0/f;->f:I

    .line 232
    .line 233
    int-to-long v0, v0

    .line 234
    invoke-static {v13, v0, v1}, Lg0/l;->a(Lg0/f;J)J

    .line 235
    .line 236
    .line 237
    move-result-wide v0

    .line 238
    iget v3, v13, Lg0/f;->f:I

    .line 239
    .line 240
    neg-int v3, v3

    .line 241
    int-to-long v3, v3

    .line 242
    add-long/2addr v3, v14

    .line 243
    neg-long v0, v0

    .line 244
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 245
    .line 246
    .line 247
    move-result-wide v0

    .line 248
    goto :goto_8

    .line 249
    :cond_c
    iget v0, v5, Lg0/f;->f:I

    .line 250
    .line 251
    int-to-long v0, v0

    .line 252
    invoke-virtual {v10}, Lg0/o;->j()J

    .line 253
    .line 254
    .line 255
    move-result-wide v3

    .line 256
    add-long/2addr v3, v0

    .line 257
    iget v0, v13, Lg0/f;->f:I

    .line 258
    .line 259
    int-to-long v0, v0

    .line 260
    sub-long v0, v3, v0

    .line 261
    .line 262
    :goto_8
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 263
    .line 264
    .line 265
    move-result-wide v8

    .line 266
    add-int/lit8 v7, v17, 0x1

    .line 267
    .line 268
    move-object/from16 v1, p0

    .line 269
    .line 270
    move-object/from16 v0, p1

    .line 271
    .line 272
    move/from16 v4, v16

    .line 273
    .line 274
    move-object/from16 v3, v18

    .line 275
    .line 276
    goto/16 :goto_0

    .line 277
    .line 278
    :cond_d
    long-to-int v0, v8

    .line 279
    return v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lg0/e;->d()V

    .line 3
    .line 4
    .line 5
    const-wide/16 v1, 0x1f4

    .line 6
    .line 7
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lq4/a;->c()V

    .line 11
    .line 12
    .line 13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v2, 0x1a

    .line 16
    .line 17
    if-lt v1, v2, :cond_1

    .line 18
    .line 19
    sget-object v1, Lfa/a;->a:Lfa/b;

    .line 20
    .line 21
    iget-object v1, v1, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    :try_start_0
    invoke-interface {v1}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->getNewProcess()Loa/b;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, p0, Lg0/e;->c:Ljava/lang/Object;

    .line 30
    .line 31
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 32
    .line 33
    iget-object v2, p0, Lg0/e;->c:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v2, Loa/b;

    .line 36
    .line 37
    invoke-interface {v2}, Loa/b;->getInputStream()Landroid/os/ParcelFileDescriptor;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-direct {v1, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lg0/e;->e:Ljava/lang/Object;

    .line 45
    .line 46
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 47
    .line 48
    iget-object v2, p0, Lg0/e;->c:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v2, Loa/b;

    .line 51
    .line 52
    invoke-interface {v2}, Loa/b;->getOutputStream()Landroid/os/ParcelFileDescriptor;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-direct {v1, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lg0/e;->f:Ljava/lang/Object;

    .line 60
    .line 61
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    const-string v1, "exec 2>&1"

    .line 67
    .line 68
    invoke-virtual {p0, v1}, Lg0/e;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception v1

    .line 73
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lg0/e;->c:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v1, Loa/b;

    .line 79
    .line 80
    if-eqz v1, :cond_0

    .line 81
    .line 82
    invoke-interface {v1}, Loa/b;->destroy()V

    .line 83
    .line 84
    .line 85
    :cond_0
    const/4 v1, 0x0

    .line 86
    iput-object v1, p0, Lg0/e;->c:Ljava/lang/Object;

    .line 87
    .line 88
    iget-object v2, p0, Lg0/e;->e:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v2, Ljava/io/InputStream;

    .line 91
    .line 92
    invoke-static {v2}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 93
    .line 94
    .line 95
    iget-object v2, p0, Lg0/e;->f:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v2, Ljava/io/OutputStream;

    .line 98
    .line 99
    invoke-static {v2}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 100
    .line 101
    .line 102
    iput-object v1, p0, Lg0/e;->e:Ljava/lang/Object;

    .line 103
    .line 104
    iput-object v1, p0, Lg0/e;->f:Ljava/lang/Object;

    .line 105
    .line 106
    iput-object v1, p0, Lg0/e;->d:Ljava/lang/Object;

    .line 107
    .line 108
    :cond_1
    :goto_0
    iget-object v1, p0, Lg0/e;->c:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v1, Loa/b;

    .line 111
    .line 112
    if-nez v1, :cond_2

    .line 113
    .line 114
    new-instance v1, Ljava/lang/ProcessBuilder;

    .line 115
    .line 116
    new-array v2, v0, [Ljava/lang/String;

    .line 117
    .line 118
    const/4 v3, 0x0

    .line 119
    aput-object p1, v2, v3

    .line 120
    .line 121
    invoke-direct {v1, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v0}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    iput-object p1, p0, Lg0/e;->d:Ljava/lang/Object;

    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    iput-object p1, p0, Lg0/e;->e:Ljava/lang/Object;

    .line 138
    .line 139
    iget-object p1, p0, Lg0/e;->d:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast p1, Ljava/lang/Process;

    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    iput-object p1, p0, Lg0/e;->f:Ljava/lang/Object;

    .line 148
    .line 149
    :cond_2
    new-instance p1, Lfg/b;

    .line 150
    .line 151
    new-instance v1, Lha/db;

    .line 152
    .line 153
    const/16 v2, 0x12

    .line 154
    .line 155
    invoke-direct {v1, v2, p0}, Lha/db;-><init>(ILjava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    invoke-direct {p1, v1, v0}, Lfg/b;-><init>(Ljava/lang/Runnable;I)V

    .line 159
    .line 160
    .line 161
    iput-object p1, p0, Lg0/e;->g:Ljava/lang/Object;

    .line 162
    .line 163
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 164
    .line 165
    .line 166
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg0/e;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/io/OutputStream;

    .line 4
    .line 5
    const-string v1, "UTF-8"

    .line 6
    .line 7
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lg0/e;->f:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Ljava/io/OutputStream;

    .line 21
    .line 22
    const/16 v0, 0xa

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lg0/e;->f:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Ljava/io/OutputStream;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public h(Lg0/o;ILjava/util/ArrayList;)V
    .locals 9

    .line 1
    iget-object v0, p1, Lg0/o;->h:Lg0/f;

    .line 2
    .line 3
    iget-object v0, v0, Lg0/f;->k:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p1, Lg0/o;->i:Lg0/f;

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lg0/d;

    .line 22
    .line 23
    instance-of v2, v1, Lg0/f;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    move-object v4, v1

    .line 28
    check-cast v4, Lg0/f;

    .line 29
    .line 30
    const/4 v8, 0x0

    .line 31
    const/4 v6, 0x0

    .line 32
    move-object v3, p0

    .line 33
    move v5, p2

    .line 34
    move-object v7, p3

    .line 35
    invoke-virtual/range {v3 .. v8}, Lg0/e;->a(Lg0/f;IILjava/util/ArrayList;Lg0/l;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    instance-of v2, v1, Lg0/o;

    .line 40
    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    check-cast v1, Lg0/o;

    .line 44
    .line 45
    iget-object v3, v1, Lg0/o;->h:Lg0/f;

    .line 46
    .line 47
    const/4 v7, 0x0

    .line 48
    const/4 v5, 0x0

    .line 49
    move-object v2, p0

    .line 50
    move v4, p2

    .line 51
    move-object v6, p3

    .line 52
    invoke-virtual/range {v2 .. v7}, Lg0/e;->a(Lg0/f;IILjava/util/ArrayList;Lg0/l;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    iget-object v0, v2, Lg0/f;->k:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_5

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Lg0/d;

    .line 73
    .line 74
    instance-of v2, v1, Lg0/f;

    .line 75
    .line 76
    if-eqz v2, :cond_4

    .line 77
    .line 78
    move-object v4, v1

    .line 79
    check-cast v4, Lg0/f;

    .line 80
    .line 81
    const/4 v8, 0x0

    .line 82
    const/4 v6, 0x1

    .line 83
    move-object v3, p0

    .line 84
    move v5, p2

    .line 85
    move-object v7, p3

    .line 86
    invoke-virtual/range {v3 .. v8}, Lg0/e;->a(Lg0/f;IILjava/util/ArrayList;Lg0/l;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_4
    instance-of v2, v1, Lg0/o;

    .line 91
    .line 92
    if-eqz v2, :cond_3

    .line 93
    .line 94
    check-cast v1, Lg0/o;

    .line 95
    .line 96
    iget-object v3, v1, Lg0/o;->i:Lg0/f;

    .line 97
    .line 98
    const/4 v7, 0x0

    .line 99
    const/4 v5, 0x1

    .line 100
    move-object v2, p0

    .line 101
    move v4, p2

    .line 102
    move-object v6, p3

    .line 103
    invoke-virtual/range {v2 .. v7}, Lg0/e;->a(Lg0/f;IILjava/util/ArrayList;Lg0/l;)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_5
    const/4 v0, 0x1

    .line 108
    if-ne p2, v0, :cond_7

    .line 109
    .line 110
    check-cast p1, Lg0/m;

    .line 111
    .line 112
    iget-object p1, p1, Lg0/m;->k:Lg0/f;

    .line 113
    .line 114
    iget-object p1, p1, Lg0/f;->k:Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_7

    .line 125
    .line 126
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Lg0/d;

    .line 131
    .line 132
    instance-of v1, v0, Lg0/f;

    .line 133
    .line 134
    if-eqz v1, :cond_6

    .line 135
    .line 136
    move-object v3, v0

    .line 137
    check-cast v3, Lg0/f;

    .line 138
    .line 139
    const/4 v7, 0x0

    .line 140
    const/4 v5, 0x2

    .line 141
    move-object v2, p0

    .line 142
    move v4, p2

    .line 143
    move-object v6, p3

    .line 144
    invoke-virtual/range {v2 .. v7}, Lg0/e;->a(Lg0/f;IILjava/util/ArrayList;Lg0/l;)V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_7
    return-void
.end method

.method public i(IIIILf0/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg0/e;->h:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lg0/b;

    .line 4
    .line 5
    iput p1, v0, Lg0/b;->a:I

    .line 6
    .line 7
    iput p3, v0, Lg0/b;->b:I

    .line 8
    .line 9
    iput p2, v0, Lg0/b;->c:I

    .line 10
    .line 11
    iput p4, v0, Lg0/b;->d:I

    .line 12
    .line 13
    iget-object p1, p0, Lg0/e;->g:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Li0/f;

    .line 16
    .line 17
    invoke-virtual {p1, p5, v0}, Li0/f;->b(Lf0/d;Lg0/b;)V

    .line 18
    .line 19
    .line 20
    iget p1, v0, Lg0/b;->e:I

    .line 21
    .line 22
    invoke-virtual {p5, p1}, Lf0/d;->O(I)V

    .line 23
    .line 24
    .line 25
    iget p1, v0, Lg0/b;->f:I

    .line 26
    .line 27
    invoke-virtual {p5, p1}, Lf0/d;->L(I)V

    .line 28
    .line 29
    .line 30
    iget-boolean p1, v0, Lg0/b;->h:Z

    .line 31
    .line 32
    iput-boolean p1, p5, Lf0/d;->E:Z

    .line 33
    .line 34
    iget p1, v0, Lg0/b;->g:I

    .line 35
    .line 36
    invoke-virtual {p5, p1}, Lf0/d;->I(I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public j()V
    .locals 14

    .line 1
    iget-object v0, p0, Lg0/e;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lf0/e;

    .line 4
    .line 5
    iget-object v0, v0, Lf0/e;->q0:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_b

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lf0/d;

    .line 22
    .line 23
    iget-boolean v2, v1, Lf0/d;->a:Z

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v2, v1, Lf0/d;->p0:[I

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    aget v8, v2, v3

    .line 32
    .line 33
    const/4 v9, 0x1

    .line 34
    aget v10, v2, v9

    .line 35
    .line 36
    iget v2, v1, Lf0/d;->r:I

    .line 37
    .line 38
    iget v4, v1, Lf0/d;->s:I

    .line 39
    .line 40
    const/4 v5, 0x2

    .line 41
    const/4 v11, 0x3

    .line 42
    if-eq v8, v5, :cond_3

    .line 43
    .line 44
    if-ne v8, v11, :cond_2

    .line 45
    .line 46
    if-ne v2, v9, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    const/4 v2, 0x0

    .line 50
    goto :goto_2

    .line 51
    :cond_3
    :goto_1
    const/4 v2, 0x1

    .line 52
    :goto_2
    if-eq v10, v5, :cond_4

    .line 53
    .line 54
    if-ne v10, v11, :cond_5

    .line 55
    .line 56
    if-ne v4, v9, :cond_5

    .line 57
    .line 58
    :cond_4
    const/4 v3, 0x1

    .line 59
    :cond_5
    iget-object v4, v1, Lf0/d;->d:Lg0/k;

    .line 60
    .line 61
    iget-object v4, v4, Lg0/o;->e:Lg0/g;

    .line 62
    .line 63
    iget-boolean v6, v4, Lg0/f;->j:Z

    .line 64
    .line 65
    iget-object v7, v1, Lf0/d;->e:Lg0/m;

    .line 66
    .line 67
    iget-object v7, v7, Lg0/o;->e:Lg0/g;

    .line 68
    .line 69
    iget-boolean v12, v7, Lg0/f;->j:Z

    .line 70
    .line 71
    const/4 v13, 0x1

    .line 72
    if-eqz v6, :cond_6

    .line 73
    .line 74
    if-eqz v12, :cond_6

    .line 75
    .line 76
    iget v4, v4, Lg0/f;->g:I

    .line 77
    .line 78
    iget v6, v7, Lg0/f;->g:I

    .line 79
    .line 80
    move-object v2, p0

    .line 81
    move v3, v13

    .line 82
    move v5, v13

    .line 83
    move-object v7, v1

    .line 84
    invoke-virtual/range {v2 .. v7}, Lg0/e;->i(IIIILf0/d;)V

    .line 85
    .line 86
    .line 87
    iput-boolean v9, v1, Lf0/d;->a:Z

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_6
    if-eqz v6, :cond_8

    .line 91
    .line 92
    if-eqz v3, :cond_8

    .line 93
    .line 94
    iget v4, v4, Lg0/f;->g:I

    .line 95
    .line 96
    iget v6, v7, Lg0/f;->g:I

    .line 97
    .line 98
    move-object v2, p0

    .line 99
    move v3, v13

    .line 100
    move-object v7, v1

    .line 101
    invoke-virtual/range {v2 .. v7}, Lg0/e;->i(IIIILf0/d;)V

    .line 102
    .line 103
    .line 104
    if-ne v10, v11, :cond_7

    .line 105
    .line 106
    iget-object v2, v1, Lf0/d;->e:Lg0/m;

    .line 107
    .line 108
    iget-object v2, v2, Lg0/o;->e:Lg0/g;

    .line 109
    .line 110
    invoke-virtual {v1}, Lf0/d;->k()I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    iput v3, v2, Lg0/g;->m:I

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_7
    iget-object v2, v1, Lf0/d;->e:Lg0/m;

    .line 118
    .line 119
    iget-object v2, v2, Lg0/o;->e:Lg0/g;

    .line 120
    .line 121
    invoke-virtual {v1}, Lf0/d;->k()I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    invoke-virtual {v2, v3}, Lg0/g;->d(I)V

    .line 126
    .line 127
    .line 128
    iput-boolean v9, v1, Lf0/d;->a:Z

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_8
    if-eqz v12, :cond_a

    .line 132
    .line 133
    if-eqz v2, :cond_a

    .line 134
    .line 135
    iget v4, v4, Lg0/f;->g:I

    .line 136
    .line 137
    iget v6, v7, Lg0/f;->g:I

    .line 138
    .line 139
    move-object v2, p0

    .line 140
    move v3, v5

    .line 141
    move v5, v13

    .line 142
    move-object v7, v1

    .line 143
    invoke-virtual/range {v2 .. v7}, Lg0/e;->i(IIIILf0/d;)V

    .line 144
    .line 145
    .line 146
    if-ne v8, v11, :cond_9

    .line 147
    .line 148
    iget-object v2, v1, Lf0/d;->d:Lg0/k;

    .line 149
    .line 150
    iget-object v2, v2, Lg0/o;->e:Lg0/g;

    .line 151
    .line 152
    invoke-virtual {v1}, Lf0/d;->q()I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    iput v3, v2, Lg0/g;->m:I

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_9
    iget-object v2, v1, Lf0/d;->d:Lg0/k;

    .line 160
    .line 161
    iget-object v2, v2, Lg0/o;->e:Lg0/g;

    .line 162
    .line 163
    invoke-virtual {v1}, Lf0/d;->q()I

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    invoke-virtual {v2, v3}, Lg0/g;->d(I)V

    .line 168
    .line 169
    .line 170
    iput-boolean v9, v1, Lf0/d;->a:Z

    .line 171
    .line 172
    :cond_a
    :goto_3
    iget-boolean v2, v1, Lf0/d;->a:Z

    .line 173
    .line 174
    if-eqz v2, :cond_0

    .line 175
    .line 176
    iget-object v2, v1, Lf0/d;->e:Lg0/m;

    .line 177
    .line 178
    iget-object v2, v2, Lg0/m;->l:Lg0/a;

    .line 179
    .line 180
    if-eqz v2, :cond_0

    .line 181
    .line 182
    iget v1, v1, Lf0/d;->a0:I

    .line 183
    .line 184
    invoke-virtual {v2, v1}, Lg0/g;->d(I)V

    .line 185
    .line 186
    .line 187
    goto/16 :goto_0

    .line 188
    .line 189
    :cond_b
    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lg0/e;->a:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lg0/e;->d()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
