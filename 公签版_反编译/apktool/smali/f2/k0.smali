.class public final Lf2/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf2/a0;
.implements Lf2/z;


# instance fields
.field public final a:[Lf2/a0;

.field public final b:[Z

.field public final c:Ljava/util/IdentityHashMap;

.field public final d:Lm7/e;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/HashMap;

.field public g:Lf2/z;

.field public h:Lf2/j1;

.field public i:[Lf2/a0;

.field public j:Lf2/m;


# direct methods
.method public varargs constructor <init>(Lm7/e;[J[Lf2/a0;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lf2/k0;->d:Lm7/e;

    .line 6
    .line 7
    iput-object p3, p0, Lf2/k0;->a:[Lf2/a0;

    .line 8
    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lf2/k0;->e:Ljava/util/ArrayList;

    .line 15
    .line 16
    new-instance v1, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lf2/k0;->f:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    new-instance p1, Lf2/m;

    .line 27
    .line 28
    sget-object v1, Lu7/g0;->b:Lu7/e0;

    .line 29
    .line 30
    sget-object v1, Lu7/y0;->e:Lu7/y0;

    .line 31
    .line 32
    invoke-direct {p1, v1, v1}, Lf2/m;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lf2/k0;->j:Lf2/m;

    .line 36
    .line 37
    new-instance p1, Ljava/util/IdentityHashMap;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lf2/k0;->c:Ljava/util/IdentityHashMap;

    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    new-array v1, p1, [Lf2/a0;

    .line 46
    .line 47
    iput-object v1, p0, Lf2/k0;->i:[Lf2/a0;

    .line 48
    .line 49
    array-length v1, p3

    .line 50
    new-array v1, v1, [Z

    .line 51
    .line 52
    iput-object v1, p0, Lf2/k0;->b:[Z

    .line 53
    .line 54
    :goto_0
    array-length v1, p3

    .line 55
    if-ge p1, v1, :cond_1

    .line 56
    .line 57
    aget-wide v1, p2, p1

    .line 58
    .line 59
    const-wide/16 v3, 0x0

    .line 60
    .line 61
    cmp-long v5, v1, v3

    .line 62
    .line 63
    if-eqz v5, :cond_0

    .line 64
    .line 65
    iget-object v3, p0, Lf2/k0;->b:[Z

    .line 66
    .line 67
    aput-boolean v0, v3, p1

    .line 68
    .line 69
    iget-object v3, p0, Lf2/k0;->a:[Lf2/a0;

    .line 70
    .line 71
    new-instance v4, Lf2/h1;

    .line 72
    .line 73
    aget-object v5, p3, p1

    .line 74
    .line 75
    invoke-direct {v4, v5, v1, v2}, Lf2/h1;-><init>(Lf2/a0;J)V

    .line 76
    .line 77
    .line 78
    aput-object v4, v3, p1

    .line 79
    .line 80
    :cond_0
    add-int/2addr p1, v0

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Ly1/j0;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lf2/k0;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_0
    if-ge v3, v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    check-cast v4, Lf2/a0;

    .line 22
    .line 23
    invoke-interface {v4, p1}, Lf2/d1;->a(Ly1/j0;)Z

    .line 24
    .line 25
    .line 26
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return v2

    .line 30
    :cond_1
    iget-object v0, p0, Lf2/k0;->j:Lf2/m;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lf2/m;->a(Ly1/j0;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    return p1
.end method

.method public final b(Lf2/d1;)V
    .locals 0

    .line 1
    check-cast p1, Lf2/a0;

    .line 2
    .line 3
    iget-object p1, p0, Lf2/k0;->g:Lf2/z;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, p0}, Lf2/z;->b(Lf2/d1;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final c()J
    .locals 2

    .line 1
    iget-object v0, p0, Lf2/k0;->j:Lf2/m;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf2/m;->c()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final d(Lf2/a0;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lf2/k0;->e:Ljava/util/ArrayList;

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v1, v0, Lf2/k0;->a:[Lf2/a0;

    .line 18
    .line 19
    array-length v2, v1

    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    :goto_0
    if-ge v4, v2, :cond_1

    .line 23
    .line 24
    aget-object v6, v1, v4

    .line 25
    .line 26
    invoke-interface {v6}, Lf2/a0;->n()Lf2/j1;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    iget v6, v6, Lf2/j1;->a:I

    .line 31
    .line 32
    add-int/2addr v5, v6

    .line 33
    add-int/lit8 v4, v4, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    new-array v2, v5, [Lr1/r0;

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    const/4 v5, 0x0

    .line 40
    :goto_1
    array-length v6, v1

    .line 41
    if-ge v4, v6, :cond_6

    .line 42
    .line 43
    aget-object v6, v1, v4

    .line 44
    .line 45
    invoke-interface {v6}, Lf2/a0;->n()Lf2/j1;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    iget v7, v6, Lf2/j1;->a:I

    .line 50
    .line 51
    const/4 v8, 0x0

    .line 52
    :goto_2
    if-ge v8, v7, :cond_5

    .line 53
    .line 54
    invoke-virtual {v6, v8}, Lf2/j1;->a(I)Lr1/r0;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    iget v10, v9, Lr1/r0;->a:I

    .line 59
    .line 60
    new-array v11, v10, [Lr1/p;

    .line 61
    .line 62
    const/4 v12, 0x0

    .line 63
    :goto_3
    const-string v13, ":"

    .line 64
    .line 65
    if-ge v12, v10, :cond_4

    .line 66
    .line 67
    iget-object v14, v9, Lr1/r0;->d:[Lr1/p;

    .line 68
    .line 69
    aget-object v14, v14, v12

    .line 70
    .line 71
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    new-instance v15, Lr1/o;

    .line 75
    .line 76
    invoke-direct {v15, v14}, Lr1/o;-><init>(Lr1/p;)V

    .line 77
    .line 78
    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    move-object/from16 v16, v1

    .line 91
    .line 92
    iget-object v1, v14, Lr1/p;->a:Ljava/lang/String;

    .line 93
    .line 94
    if-nez v1, :cond_2

    .line 95
    .line 96
    const-string v1, ""

    .line 97
    .line 98
    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    iput-object v1, v15, Lr1/o;->a:Ljava/lang/String;

    .line 106
    .line 107
    iget-object v1, v14, Lr1/p;->m:Ljava/lang/String;

    .line 108
    .line 109
    if-eqz v1, :cond_3

    .line 110
    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    iput-object v1, v15, Lr1/o;->l:Ljava/lang/String;

    .line 130
    .line 131
    :cond_3
    new-instance v1, Lr1/p;

    .line 132
    .line 133
    invoke-direct {v1, v15}, Lr1/p;-><init>(Lr1/o;)V

    .line 134
    .line 135
    .line 136
    aput-object v1, v11, v12

    .line 137
    .line 138
    add-int/lit8 v12, v12, 0x1

    .line 139
    .line 140
    move-object/from16 v1, v16

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_4
    move-object/from16 v16, v1

    .line 144
    .line 145
    new-instance v1, Lr1/r0;

    .line 146
    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget-object v10, v9, Lr1/r0;->b:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-direct {v1, v3, v11}, Lr1/r0;-><init>(Ljava/lang/String;[Lr1/p;)V

    .line 168
    .line 169
    .line 170
    iget-object v3, v0, Lf2/k0;->f:Ljava/util/HashMap;

    .line 171
    .line 172
    invoke-virtual {v3, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    add-int/lit8 v3, v5, 0x1

    .line 176
    .line 177
    aput-object v1, v2, v5

    .line 178
    .line 179
    add-int/lit8 v8, v8, 0x1

    .line 180
    .line 181
    move v5, v3

    .line 182
    move-object/from16 v1, v16

    .line 183
    .line 184
    goto/16 :goto_2

    .line 185
    .line 186
    :cond_5
    move-object/from16 v16, v1

    .line 187
    .line 188
    add-int/lit8 v4, v4, 0x1

    .line 189
    .line 190
    goto/16 :goto_1

    .line 191
    .line 192
    :cond_6
    new-instance v1, Lf2/j1;

    .line 193
    .line 194
    invoke-direct {v1, v2}, Lf2/j1;-><init>([Lr1/r0;)V

    .line 195
    .line 196
    .line 197
    iput-object v1, v0, Lf2/k0;->h:Lf2/j1;

    .line 198
    .line 199
    iget-object v1, v0, Lf2/k0;->g:Lf2/z;

    .line 200
    .line 201
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    invoke-interface {v1, v0}, Lf2/z;->d(Lf2/a0;)V

    .line 205
    .line 206
    .line 207
    return-void
.end method

.method public final g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lf2/k0;->a:[Lf2/a0;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-interface {v3}, Lf2/a0;->g()V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public final h(J)J
    .locals 4

    .line 1
    iget-object v0, p0, Lf2/k0;->i:[Lf2/a0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, Lf2/a0;->h(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    const/4 v0, 0x1

    .line 11
    :goto_0
    iget-object v1, p0, Lf2/k0;->i:[Lf2/a0;

    .line 12
    .line 13
    array-length v2, v1

    .line 14
    if-ge v0, v2, :cond_1

    .line 15
    .line 16
    aget-object v1, v1, v0

    .line 17
    .line 18
    invoke-interface {v1, p1, p2}, Lf2/a0;->h(J)J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    cmp-long v3, v1, p1

    .line 23
    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string p2, "Unexpected child seekToUs result."

    .line 32
    .line 33
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1

    .line 37
    :cond_1
    return-wide p1
.end method

.method public final i(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lf2/k0;->i:[Lf2/a0;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-interface {v3, p1, p2}, Lf2/a0;->i(J)V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/k0;->j:Lf2/m;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf2/m;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final k(JLy1/e1;)J
    .locals 3

    .line 1
    iget-object v0, p0, Lf2/k0;->i:[Lf2/a0;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-lez v1, :cond_0

    .line 6
    .line 7
    aget-object v0, v0, v2

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lf2/k0;->a:[Lf2/a0;

    .line 11
    .line 12
    aget-object v0, v0, v2

    .line 13
    .line 14
    :goto_0
    invoke-interface {v0, p1, p2, p3}, Lf2/a0;->k(JLy1/e1;)J

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    return-wide p1
.end method

.method public final l(Lf2/z;J)V
    .locals 3

    .line 1
    iput-object p1, p0, Lf2/k0;->g:Lf2/z;

    .line 2
    .line 3
    iget-object p1, p0, Lf2/k0;->e:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v0, p0, Lf2/k0;->a:[Lf2/a0;

    .line 6
    .line 7
    invoke-static {p1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    array-length p1, v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, p1, :cond_0

    .line 13
    .line 14
    aget-object v2, v0, v1

    .line 15
    .line 16
    invoke-interface {v2, p0, p2, p3}, Lf2/a0;->l(Lf2/z;J)V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public final m()J
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lf2/k0;->i:[Lf2/a0;

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    move-wide v7, v3

    .line 13
    const/4 v6, 0x0

    .line 14
    :goto_0
    if-ge v6, v2, :cond_8

    .line 15
    .line 16
    aget-object v9, v1, v6

    .line 17
    .line 18
    invoke-interface {v9}, Lf2/a0;->m()J

    .line 19
    .line 20
    .line 21
    move-result-wide v10

    .line 22
    const-string v12, "Unexpected child seekToUs result."

    .line 23
    .line 24
    cmp-long v13, v10, v3

    .line 25
    .line 26
    if-eqz v13, :cond_5

    .line 27
    .line 28
    cmp-long v13, v7, v3

    .line 29
    .line 30
    if-nez v13, :cond_3

    .line 31
    .line 32
    iget-object v7, v0, Lf2/k0;->i:[Lf2/a0;

    .line 33
    .line 34
    array-length v8, v7

    .line 35
    const/4 v13, 0x0

    .line 36
    :goto_1
    if-ge v13, v8, :cond_2

    .line 37
    .line 38
    aget-object v14, v7, v13

    .line 39
    .line 40
    if-ne v14, v9, :cond_0

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_0
    invoke-interface {v14, v10, v11}, Lf2/a0;->h(J)J

    .line 44
    .line 45
    .line 46
    move-result-wide v14

    .line 47
    cmp-long v16, v14, v10

    .line 48
    .line 49
    if-nez v16, :cond_1

    .line 50
    .line 51
    add-int/lit8 v13, v13, 0x1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    invoke-direct {v1, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v1

    .line 60
    :cond_2
    :goto_2
    move-wide v7, v10

    .line 61
    goto :goto_3

    .line 62
    :cond_3
    cmp-long v9, v10, v7

    .line 63
    .line 64
    if-nez v9, :cond_4

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 68
    .line 69
    const-string v2, "Conflicting discontinuities."

    .line 70
    .line 71
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v1

    .line 75
    :cond_5
    cmp-long v10, v7, v3

    .line 76
    .line 77
    if-eqz v10, :cond_7

    .line 78
    .line 79
    invoke-interface {v9, v7, v8}, Lf2/a0;->h(J)J

    .line 80
    .line 81
    .line 82
    move-result-wide v9

    .line 83
    cmp-long v11, v9, v7

    .line 84
    .line 85
    if-nez v11, :cond_6

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 89
    .line 90
    invoke-direct {v1, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v1

    .line 94
    :cond_7
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_8
    return-wide v7
.end method

.method public final n()Lf2/j1;
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/k0;->h:Lf2/j1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final o([Lh2/p;[Z[Lf2/c1;[ZJ)J
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    array-length v3, v1

    .line 8
    new-array v3, v3, [I

    .line 9
    .line 10
    array-length v4, v1

    .line 11
    new-array v4, v4, [I

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    :goto_0
    array-length v7, v1

    .line 16
    iget-object v8, v0, Lf2/k0;->c:Ljava/util/IdentityHashMap;

    .line 17
    .line 18
    if-ge v6, v7, :cond_3

    .line 19
    .line 20
    aget-object v7, v2, v6

    .line 21
    .line 22
    if-nez v7, :cond_0

    .line 23
    .line 24
    const/4 v9, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {v8, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    move-object v9, v7

    .line 31
    check-cast v9, Ljava/lang/Integer;

    .line 32
    .line 33
    :goto_1
    const/4 v7, -0x1

    .line 34
    if-nez v9, :cond_1

    .line 35
    .line 36
    const/4 v8, -0x1

    .line 37
    goto :goto_2

    .line 38
    :cond_1
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    :goto_2
    aput v8, v3, v6

    .line 43
    .line 44
    aget-object v8, v1, v6

    .line 45
    .line 46
    if-eqz v8, :cond_2

    .line 47
    .line 48
    invoke-interface {v8}, Lh2/p;->a()Lr1/r0;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    iget-object v7, v7, Lr1/r0;->b:Ljava/lang/String;

    .line 53
    .line 54
    const-string v8, ":"

    .line 55
    .line 56
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    invoke-virtual {v7, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    aput v7, v4, v6

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_2
    aput v7, v4, v6

    .line 72
    .line 73
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    invoke-virtual {v8}, Ljava/util/IdentityHashMap;->clear()V

    .line 77
    .line 78
    .line 79
    array-length v6, v1

    .line 80
    new-array v7, v6, [Lf2/c1;

    .line 81
    .line 82
    array-length v10, v1

    .line 83
    new-array v10, v10, [Lf2/c1;

    .line 84
    .line 85
    array-length v11, v1

    .line 86
    new-array v15, v11, [Lh2/p;

    .line 87
    .line 88
    new-instance v14, Ljava/util/ArrayList;

    .line 89
    .line 90
    iget-object v13, v0, Lf2/k0;->a:[Lf2/a0;

    .line 91
    .line 92
    array-length v11, v13

    .line 93
    invoke-direct {v14, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .line 95
    .line 96
    move-wide/from16 v18, p5

    .line 97
    .line 98
    const/4 v12, 0x0

    .line 99
    :goto_4
    array-length v11, v13

    .line 100
    if-ge v12, v11, :cond_e

    .line 101
    .line 102
    const/4 v11, 0x0

    .line 103
    :goto_5
    array-length v5, v1

    .line 104
    if-ge v11, v5, :cond_6

    .line 105
    .line 106
    aget v5, v3, v11

    .line 107
    .line 108
    if-ne v5, v12, :cond_4

    .line 109
    .line 110
    aget-object v5, v2, v11

    .line 111
    .line 112
    goto :goto_6

    .line 113
    :cond_4
    const/4 v5, 0x0

    .line 114
    :goto_6
    aput-object v5, v10, v11

    .line 115
    .line 116
    aget v5, v4, v11

    .line 117
    .line 118
    if-ne v5, v12, :cond_5

    .line 119
    .line 120
    aget-object v5, v1, v11

    .line 121
    .line 122
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    invoke-interface {v5}, Lh2/p;->a()Lr1/r0;

    .line 126
    .line 127
    .line 128
    move-result-object v9

    .line 129
    move-object/from16 v16, v14

    .line 130
    .line 131
    iget-object v14, v0, Lf2/k0;->f:Ljava/util/HashMap;

    .line 132
    .line 133
    invoke-virtual {v14, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    check-cast v9, Lr1/r0;

    .line 138
    .line 139
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    new-instance v14, Lf2/j0;

    .line 143
    .line 144
    invoke-direct {v14, v5, v9}, Lf2/j0;-><init>(Lh2/p;Lr1/r0;)V

    .line 145
    .line 146
    .line 147
    aput-object v14, v15, v11

    .line 148
    .line 149
    const/4 v5, 0x0

    .line 150
    goto :goto_7

    .line 151
    :cond_5
    move-object/from16 v16, v14

    .line 152
    .line 153
    const/4 v5, 0x0

    .line 154
    aput-object v5, v15, v11

    .line 155
    .line 156
    :goto_7
    add-int/lit8 v11, v11, 0x1

    .line 157
    .line 158
    move-object/from16 v14, v16

    .line 159
    .line 160
    goto :goto_5

    .line 161
    :cond_6
    move-object/from16 v16, v14

    .line 162
    .line 163
    const/4 v5, 0x0

    .line 164
    aget-object v11, v13, v12

    .line 165
    .line 166
    move v9, v12

    .line 167
    move-object v12, v15

    .line 168
    move-object/from16 v20, v13

    .line 169
    .line 170
    move-object/from16 v13, p2

    .line 171
    .line 172
    move-object/from16 v5, v16

    .line 173
    .line 174
    move-object v14, v10

    .line 175
    move-object/from16 v21, v15

    .line 176
    .line 177
    move-object/from16 v15, p4

    .line 178
    .line 179
    move-wide/from16 v16, v18

    .line 180
    .line 181
    invoke-interface/range {v11 .. v17}, Lf2/a0;->o([Lh2/p;[Z[Lf2/c1;[ZJ)J

    .line 182
    .line 183
    .line 184
    move-result-wide v11

    .line 185
    if-nez v9, :cond_7

    .line 186
    .line 187
    move-wide/from16 v18, v11

    .line 188
    .line 189
    goto :goto_8

    .line 190
    :cond_7
    cmp-long v13, v11, v18

    .line 191
    .line 192
    if-nez v13, :cond_d

    .line 193
    .line 194
    :goto_8
    const/4 v11, 0x0

    .line 195
    const/4 v12, 0x0

    .line 196
    :goto_9
    array-length v13, v1

    .line 197
    if-ge v11, v13, :cond_b

    .line 198
    .line 199
    aget v13, v4, v11

    .line 200
    .line 201
    const/4 v14, 0x1

    .line 202
    if-ne v13, v9, :cond_8

    .line 203
    .line 204
    aget-object v12, v10, v11

    .line 205
    .line 206
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    aget-object v13, v10, v11

    .line 210
    .line 211
    aput-object v13, v7, v11

    .line 212
    .line 213
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 214
    .line 215
    .line 216
    move-result-object v13

    .line 217
    invoke-virtual {v8, v12, v13}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    const/4 v12, 0x1

    .line 221
    goto :goto_b

    .line 222
    :cond_8
    aget v13, v3, v11

    .line 223
    .line 224
    if-ne v13, v9, :cond_a

    .line 225
    .line 226
    aget-object v13, v10, v11

    .line 227
    .line 228
    if-nez v13, :cond_9

    .line 229
    .line 230
    goto :goto_a

    .line 231
    :cond_9
    const/4 v14, 0x0

    .line 232
    :goto_a
    invoke-static {v14}, La9/o;->t(Z)V

    .line 233
    .line 234
    .line 235
    :cond_a
    :goto_b
    add-int/lit8 v11, v11, 0x1

    .line 236
    .line 237
    goto :goto_9

    .line 238
    :cond_b
    if-eqz v12, :cond_c

    .line 239
    .line 240
    aget-object v11, v20, v9

    .line 241
    .line 242
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    :cond_c
    add-int/lit8 v12, v9, 0x1

    .line 246
    .line 247
    move-object v14, v5

    .line 248
    move-object/from16 v13, v20

    .line 249
    .line 250
    move-object/from16 v15, v21

    .line 251
    .line 252
    const/4 v5, 0x0

    .line 253
    goto/16 :goto_4

    .line 254
    .line 255
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 256
    .line 257
    const-string v2, "Children enabled at different positions."

    .line 258
    .line 259
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    throw v1

    .line 263
    :cond_e
    move-object v5, v14

    .line 264
    const/4 v1, 0x0

    .line 265
    invoke-static {v7, v1, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    .line 267
    .line 268
    new-array v1, v1, [Lf2/a0;

    .line 269
    .line 270
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    check-cast v1, [Lf2/a0;

    .line 275
    .line 276
    iput-object v1, v0, Lf2/k0;->i:[Lf2/a0;

    .line 277
    .line 278
    new-instance v1, La2/u0;

    .line 279
    .line 280
    const/16 v2, 0x14

    .line 281
    .line 282
    invoke-direct {v1, v2}, La2/u0;-><init>(I)V

    .line 283
    .line 284
    .line 285
    invoke-static {v5, v1}, Lu7/q;->t(Ljava/util/List;Lt7/d;)Ljava/util/AbstractList;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    iget-object v2, v0, Lf2/k0;->d:Lm7/e;

    .line 290
    .line 291
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 292
    .line 293
    .line 294
    new-instance v2, Lf2/m;

    .line 295
    .line 296
    invoke-direct {v2, v5, v1}, Lf2/m;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 297
    .line 298
    .line 299
    iput-object v2, v0, Lf2/k0;->j:Lf2/m;

    .line 300
    .line 301
    return-wide v18
.end method

.method public final p()J
    .locals 2

    .line 1
    iget-object v0, p0, Lf2/k0;->j:Lf2/m;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf2/m;->p()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final r(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/k0;->j:Lf2/m;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lf2/m;->r(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
