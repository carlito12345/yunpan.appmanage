.class public Lcom/bumptech/glide/m;
.super Lw5/a;
.source "SourceFile"


# instance fields
.field public A:Lcom/bumptech/glide/m;

.field public B:Lcom/bumptech/glide/m;

.field public final C:Z

.field public D:Z

.field public E:Z

.field public final s:Landroid/content/Context;

.field public final t:Lcom/bumptech/glide/p;

.field public final v:Ljava/lang/Class;

.field public final w:Lcom/bumptech/glide/f;

.field public x:Lcom/bumptech/glide/a;

.field public y:Ljava/lang/Object;

.field public z:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lw5/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lw5/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lh5/l;->c:Lh5/l;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lw5/a;->e(Lh5/l;)Lw5/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lw5/e;

    .line 13
    .line 14
    invoke-virtual {v0}, Lw5/a;->p()Lw5/a;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lw5/e;

    .line 19
    .line 20
    invoke-virtual {v0}, Lw5/a;->u()Lw5/a;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lw5/e;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/p;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lw5/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bumptech/glide/m;->C:Z

    .line 6
    .line 7
    iput-object p2, p0, Lcom/bumptech/glide/m;->t:Lcom/bumptech/glide/p;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/bumptech/glide/m;->v:Ljava/lang/Class;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/bumptech/glide/m;->s:Landroid/content/Context;

    .line 12
    .line 13
    iget-object p4, p2, Lcom/bumptech/glide/p;->a:Lcom/bumptech/glide/b;

    .line 14
    .line 15
    iget-object p4, p4, Lcom/bumptech/glide/b;->c:Lcom/bumptech/glide/f;

    .line 16
    .line 17
    iget-object p4, p4, Lcom/bumptech/glide/f;->f:La0/e;

    .line 18
    .line 19
    invoke-virtual {p4, p3}, La0/t;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/bumptech/glide/a;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p4}, La0/e;->entrySet()Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object p4

    .line 31
    check-cast p4, Lb8/l;

    .line 32
    .line 33
    invoke-virtual {p4}, Lb8/l;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p4

    .line 37
    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Ljava/util/Map$Entry;

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Ljava/lang/Class;

    .line 54
    .line 55
    invoke-virtual {v2, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_0

    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Lcom/bumptech/glide/a;

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    if-nez v0, :cond_2

    .line 69
    .line 70
    sget-object v0, Lcom/bumptech/glide/f;->k:Lcom/bumptech/glide/a;

    .line 71
    .line 72
    :cond_2
    iput-object v0, p0, Lcom/bumptech/glide/m;->x:Lcom/bumptech/glide/a;

    .line 73
    .line 74
    iget-object p1, p1, Lcom/bumptech/glide/b;->c:Lcom/bumptech/glide/f;

    .line 75
    .line 76
    iput-object p1, p0, Lcom/bumptech/glide/m;->w:Lcom/bumptech/glide/f;

    .line 77
    .line 78
    iget-object p1, p2, Lcom/bumptech/glide/p;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result p3

    .line 88
    if-eqz p3, :cond_4

    .line 89
    .line 90
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    if-nez p3, :cond_3

    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->z()Lcom/bumptech/glide/m;

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    new-instance p1, Ljava/lang/ClassCastException;

    .line 101
    .line 102
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 103
    .line 104
    .line 105
    throw p1

    .line 106
    :cond_4
    monitor-enter p2

    .line 107
    :try_start_0
    iget-object p1, p2, Lcom/bumptech/glide/p;->j:Lw5/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .line 109
    monitor-exit p2

    .line 110
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/m;->A(Lw5/a;)Lcom/bumptech/glide/m;

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :catchall_0
    move-exception p1

    .line 115
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    goto :goto_3

    .line 117
    :goto_2
    throw p1

    .line 118
    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public A(Lw5/a;)Lcom/bumptech/glide/m;
    .locals 0

    .line 1
    invoke-static {p1}, La6/h;->b(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lw5/a;->a(Lw5/a;)Lw5/a;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/bumptech/glide/m;

    .line 9
    .line 10
    return-object p1
.end method

.method public final B(Ljava/lang/Object;Lx5/e;Lw5/d;Lcom/bumptech/glide/a;Lcom/bumptech/glide/i;IILw5/a;)Lw5/c;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v15, p1

    .line 4
    .line 5
    move-object/from16 v14, p8

    .line 6
    .line 7
    iget-object v1, v0, Lcom/bumptech/glide/m;->B:Lcom/bumptech/glide/m;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Lw5/b;

    .line 12
    .line 13
    move-object/from16 v2, p3

    .line 14
    .line 15
    invoke-direct {v1, v15, v2}, Lw5/b;-><init>(Ljava/lang/Object;Lw5/d;)V

    .line 16
    .line 17
    .line 18
    move-object v12, v1

    .line 19
    move-object v13, v12

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object/from16 v2, p3

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    move-object v13, v1

    .line 25
    move-object v12, v2

    .line 26
    :goto_0
    iget-object v1, v0, Lcom/bumptech/glide/m;->A:Lcom/bumptech/glide/m;

    .line 27
    .line 28
    if-eqz v1, :cond_8

    .line 29
    .line 30
    iget-boolean v2, v0, Lcom/bumptech/glide/m;->E:Z

    .line 31
    .line 32
    if-nez v2, :cond_7

    .line 33
    .line 34
    iget-object v2, v1, Lcom/bumptech/glide/m;->x:Lcom/bumptech/glide/a;

    .line 35
    .line 36
    iget-boolean v3, v1, Lcom/bumptech/glide/m;->C:Z

    .line 37
    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    move-object/from16 v16, p4

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move-object/from16 v16, v2

    .line 44
    .line 45
    :goto_1
    iget v1, v1, Lw5/a;->a:I

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    invoke-static {v1, v2}, Lw5/a;->i(II)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    const/4 v11, 0x1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    iget-object v1, v0, Lcom/bumptech/glide/m;->A:Lcom/bumptech/glide/m;

    .line 57
    .line 58
    iget-object v1, v1, Lw5/a;->c:Lcom/bumptech/glide/i;

    .line 59
    .line 60
    :goto_2
    move-object/from16 v17, v1

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_2
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Enum;->ordinal()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_5

    .line 68
    .line 69
    if-eq v1, v11, :cond_5

    .line 70
    .line 71
    const/4 v2, 0x2

    .line 72
    if-eq v1, v2, :cond_4

    .line 73
    .line 74
    const/4 v2, 0x3

    .line 75
    if-ne v1, v2, :cond_3

    .line 76
    .line 77
    sget-object v1, Lcom/bumptech/glide/i;->c:Lcom/bumptech/glide/i;

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 81
    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v3, "unknown priority: "

    .line 85
    .line 86
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v3, v0, Lw5/a;->c:Lcom/bumptech/glide/i;

    .line 90
    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw v1

    .line 102
    :cond_4
    sget-object v1, Lcom/bumptech/glide/i;->b:Lcom/bumptech/glide/i;

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_5
    sget-object v1, Lcom/bumptech/glide/i;->a:Lcom/bumptech/glide/i;

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :goto_3
    iget-object v1, v0, Lcom/bumptech/glide/m;->A:Lcom/bumptech/glide/m;

    .line 109
    .line 110
    iget v2, v1, Lw5/a;->g:I

    .line 111
    .line 112
    iget v1, v1, Lw5/a;->f:I

    .line 113
    .line 114
    invoke-static/range {p6 .. p7}, La6/q;->i(II)Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-eqz v3, :cond_6

    .line 119
    .line 120
    iget-object v3, v0, Lcom/bumptech/glide/m;->A:Lcom/bumptech/glide/m;

    .line 121
    .line 122
    iget v4, v3, Lw5/a;->g:I

    .line 123
    .line 124
    iget v3, v3, Lw5/a;->f:I

    .line 125
    .line 126
    invoke-static {v4, v3}, La6/q;->i(II)Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-nez v3, :cond_6

    .line 131
    .line 132
    iget v1, v14, Lw5/a;->g:I

    .line 133
    .line 134
    iget v2, v14, Lw5/a;->f:I

    .line 135
    .line 136
    move/from16 v18, v1

    .line 137
    .line 138
    move/from16 v19, v2

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_6
    move/from16 v19, v1

    .line 142
    .line 143
    move/from16 v18, v2

    .line 144
    .line 145
    :goto_4
    new-instance v10, Lw5/g;

    .line 146
    .line 147
    invoke-direct {v10, v15, v12}, Lw5/g;-><init>(Ljava/lang/Object;Lw5/d;)V

    .line 148
    .line 149
    .line 150
    iget-object v5, v0, Lcom/bumptech/glide/m;->y:Ljava/lang/Object;

    .line 151
    .line 152
    iget-object v12, v0, Lcom/bumptech/glide/m;->z:Ljava/util/ArrayList;

    .line 153
    .line 154
    iget-object v3, v0, Lcom/bumptech/glide/m;->w:Lcom/bumptech/glide/f;

    .line 155
    .line 156
    iget-object v9, v3, Lcom/bumptech/glide/f;->g:Lh5/n;

    .line 157
    .line 158
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    new-instance v8, Lw5/f;

    .line 162
    .line 163
    iget-object v2, v0, Lcom/bumptech/glide/m;->s:Landroid/content/Context;

    .line 164
    .line 165
    iget-object v6, v0, Lcom/bumptech/glide/m;->v:Ljava/lang/Class;

    .line 166
    .line 167
    move-object v1, v8

    .line 168
    move-object/from16 v4, p1

    .line 169
    .line 170
    move-object/from16 v7, p8

    .line 171
    .line 172
    move-object v15, v8

    .line 173
    move/from16 v8, p6

    .line 174
    .line 175
    move-object/from16 v20, v9

    .line 176
    .line 177
    move/from16 v9, p7

    .line 178
    .line 179
    move-object/from16 p3, v10

    .line 180
    .line 181
    move-object/from16 v10, p5

    .line 182
    .line 183
    move-object/from16 p4, v15

    .line 184
    .line 185
    const/4 v15, 0x1

    .line 186
    move-object/from16 v11, p2

    .line 187
    .line 188
    move-object/from16 v21, v13

    .line 189
    .line 190
    move-object/from16 v13, p3

    .line 191
    .line 192
    move-object/from16 v14, v20

    .line 193
    .line 194
    invoke-direct/range {v1 .. v14}, Lw5/f;-><init>(Landroid/content/Context;Lcom/bumptech/glide/f;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lw5/a;IILcom/bumptech/glide/i;Lx5/e;Ljava/util/ArrayList;Lw5/d;Lh5/n;)V

    .line 195
    .line 196
    .line 197
    iput-boolean v15, v0, Lcom/bumptech/glide/m;->E:Z

    .line 198
    .line 199
    iget-object v9, v0, Lcom/bumptech/glide/m;->A:Lcom/bumptech/glide/m;

    .line 200
    .line 201
    move-object v1, v9

    .line 202
    move-object/from16 v2, p1

    .line 203
    .line 204
    move-object/from16 v3, p2

    .line 205
    .line 206
    move-object/from16 v4, p3

    .line 207
    .line 208
    move-object/from16 v5, v16

    .line 209
    .line 210
    move-object/from16 v6, v17

    .line 211
    .line 212
    move/from16 v7, v18

    .line 213
    .line 214
    move/from16 v8, v19

    .line 215
    .line 216
    invoke-virtual/range {v1 .. v9}, Lcom/bumptech/glide/m;->B(Ljava/lang/Object;Lx5/e;Lw5/d;Lcom/bumptech/glide/a;Lcom/bumptech/glide/i;IILw5/a;)Lw5/c;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    const/4 v2, 0x0

    .line 221
    iput-boolean v2, v0, Lcom/bumptech/glide/m;->E:Z

    .line 222
    .line 223
    move-object/from16 v2, p3

    .line 224
    .line 225
    move-object/from16 v3, p4

    .line 226
    .line 227
    iput-object v3, v2, Lw5/g;->c:Lw5/f;

    .line 228
    .line 229
    iput-object v1, v2, Lw5/g;->d:Lw5/c;

    .line 230
    .line 231
    move-object v10, v2

    .line 232
    :goto_5
    move-object/from16 v11, v21

    .line 233
    .line 234
    goto :goto_6

    .line 235
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 236
    .line 237
    const-string v2, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    .line 238
    .line 239
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    throw v1

    .line 243
    :cond_8
    move-object/from16 v21, v13

    .line 244
    .line 245
    iget-object v5, v0, Lcom/bumptech/glide/m;->y:Ljava/lang/Object;

    .line 246
    .line 247
    iget-object v13, v0, Lcom/bumptech/glide/m;->z:Ljava/util/ArrayList;

    .line 248
    .line 249
    iget-object v3, v0, Lcom/bumptech/glide/m;->w:Lcom/bumptech/glide/f;

    .line 250
    .line 251
    iget-object v14, v3, Lcom/bumptech/glide/f;->g:Lh5/n;

    .line 252
    .line 253
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    new-instance v15, Lw5/f;

    .line 257
    .line 258
    iget-object v2, v0, Lcom/bumptech/glide/m;->s:Landroid/content/Context;

    .line 259
    .line 260
    iget-object v6, v0, Lcom/bumptech/glide/m;->v:Ljava/lang/Class;

    .line 261
    .line 262
    move-object v1, v15

    .line 263
    move-object/from16 v4, p1

    .line 264
    .line 265
    move-object/from16 v7, p8

    .line 266
    .line 267
    move/from16 v8, p6

    .line 268
    .line 269
    move/from16 v9, p7

    .line 270
    .line 271
    move-object/from16 v10, p5

    .line 272
    .line 273
    move-object/from16 v11, p2

    .line 274
    .line 275
    move-object/from16 v16, v12

    .line 276
    .line 277
    move-object v12, v13

    .line 278
    move-object/from16 v13, v16

    .line 279
    .line 280
    invoke-direct/range {v1 .. v14}, Lw5/f;-><init>(Landroid/content/Context;Lcom/bumptech/glide/f;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lw5/a;IILcom/bumptech/glide/i;Lx5/e;Ljava/util/ArrayList;Lw5/d;Lh5/n;)V

    .line 281
    .line 282
    .line 283
    move-object v10, v15

    .line 284
    goto :goto_5

    .line 285
    :goto_6
    if-nez v11, :cond_9

    .line 286
    .line 287
    return-object v10

    .line 288
    :cond_9
    iget-object v1, v0, Lcom/bumptech/glide/m;->B:Lcom/bumptech/glide/m;

    .line 289
    .line 290
    iget v2, v1, Lw5/a;->g:I

    .line 291
    .line 292
    iget v1, v1, Lw5/a;->f:I

    .line 293
    .line 294
    invoke-static/range {p6 .. p7}, La6/q;->i(II)Z

    .line 295
    .line 296
    .line 297
    move-result v3

    .line 298
    if-eqz v3, :cond_a

    .line 299
    .line 300
    iget-object v3, v0, Lcom/bumptech/glide/m;->B:Lcom/bumptech/glide/m;

    .line 301
    .line 302
    iget v4, v3, Lw5/a;->g:I

    .line 303
    .line 304
    iget v3, v3, Lw5/a;->f:I

    .line 305
    .line 306
    invoke-static {v4, v3}, La6/q;->i(II)Z

    .line 307
    .line 308
    .line 309
    move-result v3

    .line 310
    if-nez v3, :cond_a

    .line 311
    .line 312
    move-object/from16 v3, p8

    .line 313
    .line 314
    iget v1, v3, Lw5/a;->g:I

    .line 315
    .line 316
    iget v2, v3, Lw5/a;->f:I

    .line 317
    .line 318
    move v7, v1

    .line 319
    move v8, v2

    .line 320
    goto :goto_7

    .line 321
    :cond_a
    move v8, v1

    .line 322
    move v7, v2

    .line 323
    :goto_7
    iget-object v9, v0, Lcom/bumptech/glide/m;->B:Lcom/bumptech/glide/m;

    .line 324
    .line 325
    iget-object v5, v9, Lcom/bumptech/glide/m;->x:Lcom/bumptech/glide/a;

    .line 326
    .line 327
    iget-object v6, v9, Lw5/a;->c:Lcom/bumptech/glide/i;

    .line 328
    .line 329
    move-object v1, v9

    .line 330
    move-object/from16 v2, p1

    .line 331
    .line 332
    move-object/from16 v3, p2

    .line 333
    .line 334
    move-object v4, v11

    .line 335
    invoke-virtual/range {v1 .. v9}, Lcom/bumptech/glide/m;->B(Ljava/lang/Object;Lx5/e;Lw5/d;Lcom/bumptech/glide/a;Lcom/bumptech/glide/i;IILw5/a;)Lw5/c;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    iput-object v10, v11, Lw5/b;->c:Lw5/c;

    .line 340
    .line 341
    iput-object v1, v11, Lw5/b;->d:Lw5/c;

    .line 342
    .line 343
    return-object v11
.end method

.method public C()Lcom/bumptech/glide/m;
    .locals 3

    .line 1
    invoke-super {p0}, Lw5/a;->c()Lw5/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/bumptech/glide/m;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/bumptech/glide/m;->x:Lcom/bumptech/glide/a;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/bumptech/glide/a;->a()Lcom/bumptech/glide/a;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, v0, Lcom/bumptech/glide/m;->x:Lcom/bumptech/glide/a;

    .line 14
    .line 15
    iget-object v1, v0, Lcom/bumptech/glide/m;->z:Ljava/util/ArrayList;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    iget-object v2, v0, Lcom/bumptech/glide/m;->z:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, v0, Lcom/bumptech/glide/m;->z:Ljava/util/ArrayList;

    .line 27
    .line 28
    :cond_0
    iget-object v1, v0, Lcom/bumptech/glide/m;->A:Lcom/bumptech/glide/m;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/bumptech/glide/m;->C()Lcom/bumptech/glide/m;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, v0, Lcom/bumptech/glide/m;->A:Lcom/bumptech/glide/m;

    .line 37
    .line 38
    :cond_1
    iget-object v1, v0, Lcom/bumptech/glide/m;->B:Lcom/bumptech/glide/m;

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/bumptech/glide/m;->C()Lcom/bumptech/glide/m;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iput-object v1, v0, Lcom/bumptech/glide/m;->B:Lcom/bumptech/glide/m;

    .line 47
    .line 48
    :cond_2
    return-object v0
.end method

.method public final D(Landroid/widget/ImageView;)V
    .locals 3

    .line 1
    invoke-static {}, La6/q;->a()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, La6/h;->b(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget v0, p0, Lw5/a;->a:I

    .line 8
    .line 9
    const/16 v1, 0x800

    .line 10
    .line 11
    invoke-static {v0, v1}, Lw5/a;->i(II)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    sget-object v0, Lcom/bumptech/glide/l;->a:[I

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    aget v0, v0, v1

    .line 34
    .line 35
    packed-switch v0, :pswitch_data_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :pswitch_0
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->c()Lw5/a;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lw5/a;->l()Lw5/a;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    goto :goto_1

    .line 48
    :pswitch_1
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->c()Lw5/a;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lw5/a;->m()Lw5/a;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    goto :goto_1

    .line 57
    :pswitch_2
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->c()Lw5/a;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lw5/a;->l()Lw5/a;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    goto :goto_1

    .line 66
    :pswitch_3
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->c()Lw5/a;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lw5/a;->k()Lw5/a;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    goto :goto_1

    .line 75
    :cond_0
    :goto_0
    move-object v0, p0

    .line 76
    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/m;->w:Lcom/bumptech/glide/f;

    .line 77
    .line 78
    iget-object v1, v1, Lcom/bumptech/glide/f;->c:Ls9/a;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    const-class v1, Landroid/graphics/Bitmap;

    .line 84
    .line 85
    iget-object v2, p0, Lcom/bumptech/glide/m;->v:Ljava/lang/Class;

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_1

    .line 92
    .line 93
    new-instance v1, Lx5/a;

    .line 94
    .line 95
    const/4 v2, 0x0

    .line 96
    invoke-direct {v1, p1, v2}, Lx5/a;-><init>(Landroid/widget/ImageView;I)V

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_1
    const-class v1, Landroid/graphics/drawable/Drawable;

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_2

    .line 107
    .line 108
    new-instance v1, Lx5/a;

    .line 109
    .line 110
    const/4 v2, 0x1

    .line 111
    invoke-direct {v1, p1, v2}, Lx5/a;-><init>(Landroid/widget/ImageView;I)V

    .line 112
    .line 113
    .line 114
    :goto_2
    invoke-virtual {p0, v1, v0}, Lcom/bumptech/glide/m;->E(Lx5/e;Lw5/a;)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 119
    .line 120
    const-string v0, "Unhandled class: "

    .line 121
    .line 122
    const-string v1, ", try .as*(Class).transcode(ResourceTranscoder)"

    .line 123
    .line 124
    invoke-static {v0, v2, v1}, Landroid/support/v4/media/session/a;->r(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p1

    .line 132
    nop

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final E(Lx5/e;Lw5/a;)V
    .locals 10

    .line 1
    invoke-static {p1}, La6/h;->b(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/bumptech/glide/m;->D:Z

    .line 5
    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    new-instance v2, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v5, p0, Lcom/bumptech/glide/m;->x:Lcom/bumptech/glide/a;

    .line 14
    .line 15
    iget-object v6, p2, Lw5/a;->c:Lcom/bumptech/glide/i;

    .line 16
    .line 17
    iget v7, p2, Lw5/a;->g:I

    .line 18
    .line 19
    iget v8, p2, Lw5/a;->f:I

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    move-object v1, p0

    .line 23
    move-object v3, p1

    .line 24
    move-object v9, p2

    .line 25
    invoke-virtual/range {v1 .. v9}, Lcom/bumptech/glide/m;->B(Ljava/lang/Object;Lx5/e;Lw5/d;Lcom/bumptech/glide/a;Lcom/bumptech/glide/i;IILw5/a;)Lw5/c;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {p1}, Lx5/e;->g()Lw5/c;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v0, v1}, Lw5/c;->b(Lw5/c;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    iget-boolean p2, p2, Lw5/a;->e:Z

    .line 40
    .line 41
    if-nez p2, :cond_0

    .line 42
    .line 43
    invoke-interface {v1}, Lw5/c;->j()Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const-string p1, "Argument must not be null"

    .line 51
    .line 52
    invoke-static {v1, p1}, La6/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v1}, Lw5/c;->isRunning()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_1

    .line 60
    .line 61
    invoke-interface {v1}, Lw5/c;->h()V

    .line 62
    .line 63
    .line 64
    :cond_1
    return-void

    .line 65
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/bumptech/glide/m;->t:Lcom/bumptech/glide/p;

    .line 66
    .line 67
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/p;->o(Lx5/e;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, v0}, Lx5/e;->j(Lw5/c;)V

    .line 71
    .line 72
    .line 73
    iget-object p2, p0, Lcom/bumptech/glide/m;->t:Lcom/bumptech/glide/p;

    .line 74
    .line 75
    monitor-enter p2

    .line 76
    :try_start_0
    iget-object v1, p2, Lcom/bumptech/glide/p;->f:Lcom/bumptech/glide/manager/t;

    .line 77
    .line 78
    iget-object v1, v1, Lcom/bumptech/glide/manager/t;->a:Ljava/util/Set;

    .line 79
    .line 80
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    iget-object p1, p2, Lcom/bumptech/glide/p;->d:Lcom/bumptech/glide/manager/s;

    .line 84
    .line 85
    iget-object v1, p1, Lcom/bumptech/glide/manager/s;->c:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v1, Ljava/util/Set;

    .line 88
    .line 89
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    iget-boolean v1, p1, Lcom/bumptech/glide/manager/s;->b:Z

    .line 93
    .line 94
    if-nez v1, :cond_3

    .line 95
    .line 96
    invoke-interface {v0}, Lw5/c;->h()V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    invoke-interface {v0}, Lw5/c;->clear()V

    .line 101
    .line 102
    .line 103
    iget-object p1, p1, Lcom/bumptech/glide/manager/s;->d:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast p1, Ljava/util/HashSet;

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .line 109
    .line 110
    :goto_1
    monitor-exit p2

    .line 111
    return-void

    .line 112
    :catchall_0
    move-exception p1

    .line 113
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    throw p1

    .line 115
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 116
    .line 117
    const-string p2, "You must call #load() before calling #into()"

    .line 118
    .line 119
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p1
.end method

.method public F()Lcom/bumptech/glide/m;
    .locals 7

    .line 1
    const v0, 0x7f08021f

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/m;->K(Ljava/lang/Object;)Lcom/bumptech/glide/m;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/bumptech/glide/m;->s:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0, v2}, Lw5/a;->v(Landroid/content/res/Resources$Theme;)Lw5/a;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/bumptech/glide/m;

    .line 23
    .line 24
    sget-object v2, Lz5/b;->a:Lj$/util/concurrent/ConcurrentHashMap;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    sget-object v3, Lz5/b;->a:Lj$/util/concurrent/ConcurrentHashMap;

    .line 31
    .line 32
    invoke-virtual {v3, v2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Lf5/f;

    .line 37
    .line 38
    if-nez v4, :cond_1

    .line 39
    .line 40
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    const/4 v6, 0x0

    .line 49
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 50
    .line 51
    .line 52
    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_0

    .line 54
    :catch_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    :goto_0
    if-eqz v4, :cond_0

    .line 59
    .line 60
    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 61
    .line 62
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    goto :goto_1

    .line 67
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    :goto_1
    new-instance v5, Lz5/d;

    .line 76
    .line 77
    invoke-direct {v5, v4}, Lz5/d;-><init>(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v2, v5}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    move-object v4, v2

    .line 85
    check-cast v4, Lf5/f;

    .line 86
    .line 87
    if-nez v4, :cond_1

    .line 88
    .line 89
    move-object v4, v5

    .line 90
    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    .line 99
    .line 100
    and-int/lit8 v1, v1, 0x30

    .line 101
    .line 102
    new-instance v2, Lz5/a;

    .line 103
    .line 104
    invoke-direct {v2, v1, v4}, Lz5/a;-><init>(ILf5/f;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v2}, Lw5/a;->t(Lf5/f;)Lw5/a;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Lcom/bumptech/glide/m;

    .line 112
    .line 113
    return-object v0
.end method

.method public G(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/m;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/m;->K(Ljava/lang/Object;)Lcom/bumptech/glide/m;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lh5/l;->b:Lh5/l;

    .line 6
    .line 7
    new-instance v1, Lw5/e;

    .line 8
    .line 9
    invoke-direct {v1}, Lw5/e;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lw5/a;->e(Lh5/l;)Lw5/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lw5/e;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/m;->A(Lw5/a;)Lcom/bumptech/glide/m;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public H(Ljava/io/File;)Lcom/bumptech/glide/m;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/m;->K(Ljava/lang/Object;)Lcom/bumptech/glide/m;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public I(Ljava/lang/Object;)Lcom/bumptech/glide/m;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/m;->K(Ljava/lang/Object;)Lcom/bumptech/glide/m;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public J(Ljava/lang/String;)Lcom/bumptech/glide/m;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/m;->K(Ljava/lang/Object;)Lcom/bumptech/glide/m;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final K(Ljava/lang/Object;)Lcom/bumptech/glide/m;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lw5/a;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->C()Lcom/bumptech/glide/m;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/m;->K(Ljava/lang/Object;)Lcom/bumptech/glide/m;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/m;->y:Ljava/lang/Object;

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/bumptech/glide/m;->D:Z

    .line 18
    .line 19
    invoke-virtual {p0}, Lw5/a;->r()V

    .line 20
    .line 21
    .line 22
    return-object p0
.end method

.method public bridge synthetic a(Lw5/a;)Lw5/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/m;->A(Lw5/a;)Lcom/bumptech/glide/m;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic c()Lw5/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->C()Lcom/bumptech/glide/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->C()Lcom/bumptech/glide/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/bumptech/glide/m;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/bumptech/glide/m;

    .line 7
    .line 8
    invoke-super {p0, p1}, Lw5/a;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p1, Lcom/bumptech/glide/m;->v:Ljava/lang/Class;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/bumptech/glide/m;->v:Ljava/lang/Class;

    .line 17
    .line 18
    invoke-static {v2, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/bumptech/glide/m;->x:Lcom/bumptech/glide/a;

    .line 25
    .line 26
    iget-object v2, p1, Lcom/bumptech/glide/m;->x:Lcom/bumptech/glide/a;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/a;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/bumptech/glide/m;->y:Ljava/lang/Object;

    .line 35
    .line 36
    iget-object v2, p1, Lcom/bumptech/glide/m;->y:Ljava/lang/Object;

    .line 37
    .line 38
    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    iget-object v0, p0, Lcom/bumptech/glide/m;->z:Ljava/util/ArrayList;

    .line 45
    .line 46
    iget-object v2, p1, Lcom/bumptech/glide/m;->z:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    iget-object v0, p0, Lcom/bumptech/glide/m;->A:Lcom/bumptech/glide/m;

    .line 55
    .line 56
    iget-object v2, p1, Lcom/bumptech/glide/m;->A:Lcom/bumptech/glide/m;

    .line 57
    .line 58
    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    .line 64
    iget-object v0, p0, Lcom/bumptech/glide/m;->B:Lcom/bumptech/glide/m;

    .line 65
    .line 66
    iget-object v2, p1, Lcom/bumptech/glide/m;->B:Lcom/bumptech/glide/m;

    .line 67
    .line 68
    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_0

    .line 73
    .line 74
    iget-boolean v0, p0, Lcom/bumptech/glide/m;->C:Z

    .line 75
    .line 76
    iget-boolean v2, p1, Lcom/bumptech/glide/m;->C:Z

    .line 77
    .line 78
    if-ne v0, v2, :cond_0

    .line 79
    .line 80
    iget-boolean v0, p0, Lcom/bumptech/glide/m;->D:Z

    .line 81
    .line 82
    iget-boolean p1, p1, Lcom/bumptech/glide/m;->D:Z

    .line 83
    .line 84
    if-ne v0, p1, :cond_0

    .line 85
    .line 86
    const/4 v1, 0x1

    .line 87
    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    invoke-super {p0}, Lw5/a;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/bumptech/glide/m;->v:Ljava/lang/Class;

    .line 6
    .line 7
    invoke-static {v0, v1}, La6/q;->h(ILjava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/bumptech/glide/m;->x:Lcom/bumptech/glide/a;

    .line 12
    .line 13
    invoke-static {v0, v1}, La6/q;->h(ILjava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/bumptech/glide/m;->y:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-static {v0, v1}, La6/q;->h(ILjava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Lcom/bumptech/glide/m;->z:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-static {v0, v1}, La6/q;->h(ILjava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v1, p0, Lcom/bumptech/glide/m;->A:Lcom/bumptech/glide/m;

    .line 30
    .line 31
    invoke-static {v0, v1}, La6/q;->h(ILjava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget-object v1, p0, Lcom/bumptech/glide/m;->B:Lcom/bumptech/glide/m;

    .line 36
    .line 37
    invoke-static {v0, v1}, La6/q;->h(ILjava/lang/Object;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-static {v0, v1}, La6/q;->h(ILjava/lang/Object;)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iget-boolean v1, p0, Lcom/bumptech/glide/m;->C:Z

    .line 47
    .line 48
    invoke-static {v1, v0}, La6/q;->g(II)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget-boolean v1, p0, Lcom/bumptech/glide/m;->D:Z

    .line 53
    .line 54
    invoke-static {v1, v0}, La6/q;->g(II)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    return v0
.end method

.method public z()Lcom/bumptech/glide/m;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lw5/a;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->C()Lcom/bumptech/glide/m;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/bumptech/glide/m;->z()Lcom/bumptech/glide/m;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lw5/a;->r()V

    .line 15
    .line 16
    .line 17
    return-object p0
.end method
