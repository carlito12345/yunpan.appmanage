.class public final Lu4/e;
.super Lu4/x;
.source "SourceFile"


# instance fields
.field public final e:Lx4/q;

.field public final f:La2/w0;

.field public g:Lg3/j;

.field public final h:Z

.field public final i:Ly4/b;


# direct methods
.method public constructor <init>(Lx4/q;La2/w0;ZLy4/b;)V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, -0x1

    .line 3
    invoke-direct {p0, v0, v1}, Lu4/x;-><init>(II)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    if-eqz p4, :cond_0

    .line 11
    .line 12
    iput-object p1, p0, Lu4/e;->e:Lx4/q;

    .line 13
    .line 14
    iput-object p2, p0, Lu4/e;->f:La2/w0;

    .line 15
    .line 16
    iput-boolean p3, p0, Lu4/e;->h:Z

    .line 17
    .line 18
    iput-object p4, p0, Lu4/e;->i:Ly4/b;

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lu4/e;->g:Lg3/j;

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 25
    .line 26
    const-string p2, "throwsList == null"

    .line 27
    .line 28
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 33
    .line 34
    const-string p2, "code == null"

    .line 35
    .line 36
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 41
    .line 42
    const-string p2, "ref == null"

    .line 43
    .line 44
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1
.end method


# virtual methods
.method public final a(Lu4/f;)V
    .locals 11

    .line 1
    iget-object v0, p1, Lu4/f;->l:Lu4/w;

    .line 2
    .line 3
    iget-object v0, p0, Lu4/e;->f:La2/w0;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, La2/w0;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Ls4/r;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, La2/w0;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Ls4/a;

    .line 18
    .line 19
    iget-object v1, v1, Ls4/a;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Ls4/a;

    .line 22
    .line 23
    iget-object v1, v1, Ls4/a;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, Lw4/b;

    .line 26
    .line 27
    iget-object v2, v1, Lb5/c;->b:[Ljava/lang/Object;

    .line 28
    .line 29
    array-length v2, v2

    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x0

    .line 32
    :goto_0
    const/16 v5, 0x14

    .line 33
    .line 34
    if-ge v4, v2, :cond_4

    .line 35
    .line 36
    invoke-virtual {v1, v4}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    check-cast v6, Lw4/a;

    .line 41
    .line 42
    iget-object v6, v6, Lw4/a;->b:Lw4/g;

    .line 43
    .line 44
    invoke-virtual {v6}, Lw4/g;->g()Lw4/f;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-virtual {v6}, Lw4/f;->c()Ly4/e;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    check-cast v6, Lb5/c;

    .line 53
    .line 54
    iget-object v6, v6, Lb5/c;->b:[Ljava/lang/Object;

    .line 55
    .line 56
    array-length v6, v6

    .line 57
    if-eqz v6, :cond_3

    .line 58
    .line 59
    iget-object v1, v0, La2/w0;->c:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v1, Ls4/a;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    new-instance v2, Ljava/util/HashSet;

    .line 67
    .line 68
    invoke-direct {v2, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 69
    .line 70
    .line 71
    iget-object v1, v1, Ls4/a;->b:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v1, Ls4/a;

    .line 74
    .line 75
    iget-object v1, v1, Ls4/a;->b:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v1, Lw4/b;

    .line 78
    .line 79
    iget-object v4, v1, Lb5/c;->b:[Ljava/lang/Object;

    .line 80
    .line 81
    array-length v4, v4

    .line 82
    const/4 v6, 0x0

    .line 83
    :goto_1
    if-ge v6, v4, :cond_1

    .line 84
    .line 85
    invoke-virtual {v1, v6}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    check-cast v7, Lw4/a;

    .line 90
    .line 91
    iget-object v7, v7, Lw4/a;->b:Lw4/g;

    .line 92
    .line 93
    invoke-virtual {v7}, Lw4/g;->g()Lw4/f;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    invoke-virtual {v7}, Lw4/f;->c()Ly4/e;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    move-object v8, v7

    .line 102
    check-cast v8, Lb5/c;

    .line 103
    .line 104
    iget-object v8, v8, Lb5/c;->b:[Ljava/lang/Object;

    .line 105
    .line 106
    array-length v8, v8

    .line 107
    const/4 v9, 0x0

    .line 108
    :goto_2
    if-ge v9, v8, :cond_0

    .line 109
    .line 110
    invoke-interface {v7, v9}, Ly4/e;->b(I)Ly4/c;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    invoke-virtual {v2, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    add-int/lit8 v9, v9, 0x1

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_1
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-eqz v2, :cond_2

    .line 132
    .line 133
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    check-cast v2, Ly4/c;

    .line 138
    .line 139
    iget-object v3, p1, Lu4/f;->f:Lu4/z;

    .line 140
    .line 141
    invoke-virtual {v3, v2}, Lu4/z;->q(Ly4/c;)V

    .line 142
    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_2
    new-instance v1, Lg3/j;

    .line 146
    .line 147
    invoke-direct {v1, v0}, Lg3/j;-><init>(La2/w0;)V

    .line 148
    .line 149
    .line 150
    iput-object v1, p0, Lu4/e;->g:Lg3/j;

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_4
    :goto_4
    iget-object v0, v0, La2/w0;->b:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast v0, Ls4/r;

    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    new-instance v1, Ljava/util/HashSet;

    .line 164
    .line 165
    invoke-direct {v1, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 166
    .line 167
    .line 168
    iget-object v0, v0, Ls4/r;->c:Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    :cond_5
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-eqz v2, :cond_8

    .line 179
    .line 180
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    check-cast v2, Ls4/h;

    .line 185
    .line 186
    instance-of v3, v2, Ls4/g;

    .line 187
    .line 188
    if-eqz v3, :cond_6

    .line 189
    .line 190
    check-cast v2, Ls4/g;

    .line 191
    .line 192
    iget-object v2, v2, Ls4/g;->e:Lx4/a;

    .line 193
    .line 194
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_6
    instance-of v3, v2, Ls4/p;

    .line 199
    .line 200
    if-nez v3, :cond_7

    .line 201
    .line 202
    instance-of v3, v2, Ls4/q;

    .line 203
    .line 204
    if-eqz v3, :cond_5

    .line 205
    .line 206
    check-cast v2, Ls4/q;

    .line 207
    .line 208
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    goto :goto_5

    .line 212
    :cond_7
    check-cast v2, Ls4/p;

    .line 213
    .line 214
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    const/4 p1, 0x0

    .line 218
    throw p1

    .line 219
    :cond_8
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    if-eqz v1, :cond_9

    .line 228
    .line 229
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    check-cast v1, Lx4/a;

    .line 234
    .line 235
    invoke-virtual {p1, v1}, Lu4/f;->a(Lx4/a;)V

    .line 236
    .line 237
    .line 238
    goto :goto_6

    .line 239
    :cond_9
    return-void
.end method

.method public final b()Lu4/q;
    .locals 1

    .line 1
    sget-object v0, Lu4/q;->n:Lu4/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i(Lu4/w;I)V
    .locals 10

    .line 1
    new-instance p2, Ll5/y;

    .line 2
    .line 3
    iget-object p1, p1, Lu4/a0;->b:Lu4/f;

    .line 4
    .line 5
    const/16 v0, 0x14

    .line 6
    .line 7
    invoke-direct {p2, v0, p1}, Ll5/y;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lu4/e;->f:La2/w0;

    .line 11
    .line 12
    iget-object v1, v0, La2/w0;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Ls4/r;

    .line 15
    .line 16
    iget-object v1, v1, Ls4/r;->c:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ls4/h;

    .line 33
    .line 34
    instance-of v3, v2, Ls4/g;

    .line 35
    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    check-cast v2, Ls4/g;

    .line 39
    .line 40
    iget-object v3, v2, Ls4/g;->e:Lx4/a;

    .line 41
    .line 42
    invoke-virtual {p2, v3}, Ll5/y;->C(Lx4/a;)I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-ltz v4, :cond_1

    .line 47
    .line 48
    invoke-virtual {v2, v4}, Ls4/g;->o(I)V

    .line 49
    .line 50
    .line 51
    :cond_1
    instance-of v4, v3, Lx4/p;

    .line 52
    .line 53
    if-eqz v4, :cond_0

    .line 54
    .line 55
    check-cast v3, Lx4/p;

    .line 56
    .line 57
    iget-object v3, v3, Lx4/p;->a:Lx4/u;

    .line 58
    .line 59
    invoke-virtual {p2, v3}, Ll5/y;->C(Lx4/a;)I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-ltz v3, :cond_0

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ls4/g;->n(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    iget-object p2, p0, Lu4/e;->g:Lg3/j;

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    if-eqz p2, :cond_a

    .line 73
    .line 74
    invoke-virtual {p2}, Lg3/j;->e()V

    .line 75
    .line 76
    .line 77
    iget-object p1, p1, Lu4/f;->f:Lu4/z;

    .line 78
    .line 79
    iget-object v2, p2, Lg3/j;->c:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v2, Ls4/e;

    .line 82
    .line 83
    iget-object v2, v2, Lb5/c;->b:[Ljava/lang/Object;

    .line 84
    .line 85
    array-length v2, v2

    .line 86
    new-instance v3, Ljava/util/TreeMap;

    .line 87
    .line 88
    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 89
    .line 90
    .line 91
    iput-object v3, p2, Lg3/j;->e:Ljava/lang/Object;

    .line 92
    .line 93
    const/4 v3, 0x0

    .line 94
    :goto_1
    if-ge v3, v2, :cond_3

    .line 95
    .line 96
    iget-object v4, p2, Lg3/j;->e:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v4, Ljava/util/TreeMap;

    .line 99
    .line 100
    iget-object v5, p2, Lg3/j;->c:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v5, Ls4/e;

    .line 103
    .line 104
    invoke-virtual {v5, v3}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    check-cast v5, Ls4/d;

    .line 109
    .line 110
    iget-object v5, v5, Ls4/d;->c:Ls4/c;

    .line 111
    .line 112
    const/4 v6, 0x0

    .line 113
    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    add-int/lit8 v3, v3, 0x1

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_3
    iget-object v2, p2, Lg3/j;->e:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v2, Ljava/util/TreeMap;

    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    const v3, 0xffff

    .line 128
    .line 129
    .line 130
    if-gt v2, v3, :cond_9

    .line 131
    .line 132
    new-instance v2, Lb5/b;

    .line 133
    .line 134
    invoke-direct {v2}, Lb5/b;-><init>()V

    .line 135
    .line 136
    .line 137
    iget-object v3, p2, Lg3/j;->e:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v3, Ljava/util/TreeMap;

    .line 140
    .line 141
    invoke-virtual {v3}, Ljava/util/TreeMap;->size()I

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    invoke-virtual {v2, v3}, Lb5/b;->m(I)I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    iput v3, p2, Lg3/j;->a:I

    .line 150
    .line 151
    iget-object v3, p2, Lg3/j;->e:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v3, Ljava/util/TreeMap;

    .line 154
    .line 155
    invoke-virtual {v3}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    if-eqz v4, :cond_8

    .line 168
    .line 169
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    check-cast v4, Ljava/util/Map$Entry;

    .line 174
    .line 175
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    check-cast v5, Ls4/c;

    .line 180
    .line 181
    iget-object v6, v5, Lb5/c;->b:[Ljava/lang/Object;

    .line 182
    .line 183
    array-length v7, v6

    .line 184
    array-length v6, v6

    .line 185
    if-nez v6, :cond_5

    .line 186
    .line 187
    const/4 v6, 0x0

    .line 188
    goto :goto_3

    .line 189
    :cond_5
    add-int/lit8 v6, v6, -0x1

    .line 190
    .line 191
    invoke-virtual {v5, v6}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    check-cast v6, Ls4/b;

    .line 196
    .line 197
    sget-object v8, Lx4/u;->d:Lx4/u;

    .line 198
    .line 199
    iget-object v6, v6, Ls4/b;->a:Lx4/u;

    .line 200
    .line 201
    invoke-virtual {v6, v8}, Lx4/u;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v6

    .line 205
    :goto_3
    iget v8, v2, Lb5/b;->c:I

    .line 206
    .line 207
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    .line 209
    .line 210
    move-result-object v8

    .line 211
    invoke-interface {v4, v8}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    if-eqz v6, :cond_6

    .line 215
    .line 216
    add-int/lit8 v4, v7, -0x1

    .line 217
    .line 218
    neg-int v4, v4

    .line 219
    invoke-virtual {v2, v4}, Lb5/b;->l(I)V

    .line 220
    .line 221
    .line 222
    add-int/lit8 v7, v7, -0x1

    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_6
    invoke-virtual {v2, v7}, Lb5/b;->l(I)V

    .line 226
    .line 227
    .line 228
    :goto_4
    const/4 v4, 0x0

    .line 229
    :goto_5
    if-ge v4, v7, :cond_7

    .line 230
    .line 231
    invoke-virtual {v5, v4}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v8

    .line 235
    check-cast v8, Ls4/b;

    .line 236
    .line 237
    iget-object v9, v8, Ls4/b;->a:Lx4/u;

    .line 238
    .line 239
    invoke-virtual {p1, v9}, Lu4/z;->m(Lx4/u;)I

    .line 240
    .line 241
    .line 242
    move-result v9

    .line 243
    invoke-virtual {v2, v9}, Lb5/b;->m(I)I

    .line 244
    .line 245
    .line 246
    iget v8, v8, Ls4/b;->b:I

    .line 247
    .line 248
    invoke-virtual {v2, v8}, Lb5/b;->m(I)I

    .line 249
    .line 250
    .line 251
    add-int/lit8 v4, v4, 0x1

    .line 252
    .line 253
    goto :goto_5

    .line 254
    :cond_7
    if-eqz v6, :cond_4

    .line 255
    .line 256
    invoke-virtual {v5, v7}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    check-cast v4, Ls4/b;

    .line 261
    .line 262
    iget v4, v4, Ls4/b;->b:I

    .line 263
    .line 264
    invoke-virtual {v2, v4}, Lb5/b;->m(I)I

    .line 265
    .line 266
    .line 267
    goto :goto_2

    .line 268
    :cond_8
    iget p1, v2, Lb5/b;->c:I

    .line 269
    .line 270
    new-array v3, p1, [B

    .line 271
    .line 272
    iget-object v2, v2, Lb5/b;->b:[B

    .line 273
    .line 274
    invoke-static {v2, v1, v3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    .line 276
    .line 277
    iput-object v3, p2, Lg3/j;->d:Ljava/lang/Object;

    .line 278
    .line 279
    iget-object p1, p0, Lu4/e;->g:Lg3/j;

    .line 280
    .line 281
    invoke-virtual {p1}, Lg3/j;->e()V

    .line 282
    .line 283
    .line 284
    iget-object p2, p1, Lg3/j;->c:Ljava/lang/Object;

    .line 285
    .line 286
    check-cast p2, Ls4/e;

    .line 287
    .line 288
    iget-object p2, p2, Lb5/c;->b:[Ljava/lang/Object;

    .line 289
    .line 290
    array-length p2, p2

    .line 291
    mul-int/lit8 p2, p2, 0x8

    .line 292
    .line 293
    iget-object p1, p1, Lg3/j;->d:Ljava/lang/Object;

    .line 294
    .line 295
    check-cast p1, [B

    .line 296
    .line 297
    array-length p1, p1

    .line 298
    add-int v1, p2, p1

    .line 299
    .line 300
    goto :goto_6

    .line 301
    :cond_9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 302
    .line 303
    const-string p2, "too many catch handlers"

    .line 304
    .line 305
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    throw p1

    .line 309
    :cond_a
    :goto_6
    invoke-virtual {v0}, La2/w0;->E()V

    .line 310
    .line 311
    .line 312
    iget-object p1, v0, La2/w0;->e:Ljava/lang/Object;

    .line 313
    .line 314
    check-cast p1, Ls4/i;

    .line 315
    .line 316
    invoke-virtual {p1}, Ls4/i;->g()I

    .line 317
    .line 318
    .line 319
    move-result p1

    .line 320
    and-int/lit8 p2, p1, 0x1

    .line 321
    .line 322
    if-eqz p2, :cond_b

    .line 323
    .line 324
    add-int/lit8 p1, p1, 0x1

    .line 325
    .line 326
    :cond_b
    mul-int/lit8 p1, p1, 0x2

    .line 327
    .line 328
    add-int/lit8 p1, p1, 0x10

    .line 329
    .line 330
    add-int/2addr p1, v1

    .line 331
    invoke-virtual {p0, p1}, Lu4/x;->j(I)V

    .line 332
    .line 333
    .line 334
    return-void
.end method

.method public final k(Lu4/f;Lb5/b;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    invoke-virtual/range {p2 .. p2}, Lb5/b;->d()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget-object v3, v1, Lu4/e;->f:La2/w0;

    .line 10
    .line 11
    invoke-virtual {v3}, La2/w0;->E()V

    .line 12
    .line 13
    .line 14
    iget-object v4, v3, La2/w0;->e:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v4, Ls4/i;

    .line 17
    .line 18
    iget v4, v4, Ls4/i;->c:I

    .line 19
    .line 20
    invoke-virtual {v3}, La2/w0;->E()V

    .line 21
    .line 22
    .line 23
    iget-object v5, v3, La2/w0;->e:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v5, Ls4/i;

    .line 26
    .line 27
    iget-object v6, v5, Lb5/c;->b:[Ljava/lang/Object;

    .line 28
    .line 29
    array-length v6, v6

    .line 30
    const/4 v7, 0x0

    .line 31
    const/4 v8, 0x0

    .line 32
    const/4 v9, 0x0

    .line 33
    :goto_0
    const/4 v10, 0x1

    .line 34
    if-ge v8, v6, :cond_3

    .line 35
    .line 36
    invoke-virtual {v5, v8}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v11

    .line 40
    check-cast v11, Ls4/h;

    .line 41
    .line 42
    instance-of v12, v11, Ls4/g;

    .line 43
    .line 44
    if-eqz v12, :cond_2

    .line 45
    .line 46
    move-object v12, v11

    .line 47
    check-cast v12, Ls4/g;

    .line 48
    .line 49
    iget-object v12, v12, Ls4/g;->e:Lx4/a;

    .line 50
    .line 51
    instance-of v13, v12, Lx4/q;

    .line 52
    .line 53
    if-eqz v13, :cond_1

    .line 54
    .line 55
    check-cast v12, Lx4/q;

    .line 56
    .line 57
    iget-object v11, v11, Ls4/h;->b:Ls4/j;

    .line 58
    .line 59
    iget v11, v11, Ls4/j;->b:I

    .line 60
    .line 61
    const/16 v13, 0x71

    .line 62
    .line 63
    if-ne v11, v13, :cond_0

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_0
    const/4 v10, 0x0

    .line 67
    :goto_1
    invoke-virtual {v12, v10}, Lx4/q;->e(Z)I

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    goto :goto_2

    .line 72
    :cond_1
    const/4 v10, 0x0

    .line 73
    :goto_2
    if-le v10, v9, :cond_2

    .line 74
    .line 75
    move v9, v10

    .line 76
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    iget-object v5, v1, Lu4/e;->e:Lx4/q;

    .line 80
    .line 81
    iget-boolean v6, v1, Lu4/e;->h:Z

    .line 82
    .line 83
    invoke-virtual {v5, v6}, Lx4/q;->e(Z)I

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    invoke-virtual {v3}, La2/w0;->E()V

    .line 88
    .line 89
    .line 90
    iget-object v8, v3, La2/w0;->e:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v8, Ls4/i;

    .line 93
    .line 94
    invoke-virtual {v8}, Ls4/i;->g()I

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    and-int/lit8 v11, v8, 0x1

    .line 99
    .line 100
    if-eqz v11, :cond_4

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_4
    const/4 v10, 0x0

    .line 104
    :goto_3
    iget-object v11, v1, Lu4/e;->g:Lg3/j;

    .line 105
    .line 106
    if-nez v11, :cond_5

    .line 107
    .line 108
    const/4 v11, 0x0

    .line 109
    goto :goto_4

    .line 110
    :cond_5
    invoke-virtual {v11}, Lg3/j;->e()V

    .line 111
    .line 112
    .line 113
    iget-object v11, v11, Lg3/j;->c:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v11, Ls4/e;

    .line 116
    .line 117
    iget-object v11, v11, Lb5/c;->b:[Ljava/lang/Object;

    .line 118
    .line 119
    array-length v11, v11

    .line 120
    :goto_4
    const/4 v12, 0x2

    .line 121
    if-eqz v2, :cond_9

    .line 122
    .line 123
    new-instance v13, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual/range {p0 .. p0}, Lu4/x;->g()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v14

    .line 132
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const/16 v14, 0x20

    .line 136
    .line 137
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v5}, Lx4/p;->a()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v14

    .line 144
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v13

    .line 151
    invoke-virtual {v0, v7, v13}, Lb5/b;->b(ILjava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-static {v4}, Lqf/c;->e0(I)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v13

    .line 158
    const-string v14, "  registers_size: "

    .line 159
    .line 160
    invoke-virtual {v14, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v13

    .line 164
    invoke-virtual {v0, v12, v13}, Lb5/b;->b(ILjava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-static {v6}, Lqf/c;->e0(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v13

    .line 171
    const-string v14, "  ins_size:       "

    .line 172
    .line 173
    invoke-virtual {v14, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v13

    .line 177
    invoke-virtual {v0, v12, v13}, Lb5/b;->b(ILjava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-static {v9}, Lqf/c;->e0(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v13

    .line 184
    const-string v14, "  outs_size:      "

    .line 185
    .line 186
    invoke-virtual {v14, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v13

    .line 190
    invoke-virtual {v0, v12, v13}, Lb5/b;->b(ILjava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-static {v11}, Lqf/c;->e0(I)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v13

    .line 197
    const-string v14, "  tries_size:     "

    .line 198
    .line 199
    invoke-virtual {v14, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v13

    .line 203
    invoke-virtual {v0, v12, v13}, Lb5/b;->b(ILjava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-static {v7}, Lqf/c;->f0(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v13

    .line 210
    const-string v14, "  debug_off:      "

    .line 211
    .line 212
    invoke-virtual {v14, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v13

    .line 216
    const/4 v14, 0x4

    .line 217
    invoke-virtual {v0, v14, v13}, Lb5/b;->b(ILjava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-static {v8}, Lqf/c;->f0(I)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v13

    .line 224
    const-string v15, "  insns_size:     "

    .line 225
    .line 226
    invoke-virtual {v15, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v13

    .line 230
    invoke-virtual {v0, v14, v13}, Lb5/b;->b(ILjava/lang/String;)V

    .line 231
    .line 232
    .line 233
    iget-object v13, v1, Lu4/e;->i:Ly4/b;

    .line 234
    .line 235
    iget-object v14, v13, Lb5/c;->b:[Ljava/lang/Object;

    .line 236
    .line 237
    array-length v14, v14

    .line 238
    if-eqz v14, :cond_9

    .line 239
    .line 240
    new-instance v14, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    const-string v15, "  throws "

    .line 243
    .line 244
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    iget-object v15, v13, Lb5/c;->b:[Ljava/lang/Object;

    .line 248
    .line 249
    array-length v15, v15

    .line 250
    if-nez v15, :cond_6

    .line 251
    .line 252
    const-string v13, "<empty>"

    .line 253
    .line 254
    goto :goto_6

    .line 255
    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    const/16 v7, 0x64

    .line 258
    .line 259
    invoke-direct {v12, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 260
    .line 261
    .line 262
    const/4 v7, 0x0

    .line 263
    :goto_5
    if-ge v7, v15, :cond_8

    .line 264
    .line 265
    move/from16 v16, v15

    .line 266
    .line 267
    if-eqz v7, :cond_7

    .line 268
    .line 269
    const-string v15, ", "

    .line 270
    .line 271
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    :cond_7
    invoke-virtual {v13, v7}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v15

    .line 278
    check-cast v15, Ly4/c;

    .line 279
    .line 280
    invoke-virtual {v15}, Ly4/c;->a()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v15

    .line 284
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    add-int/lit8 v7, v7, 0x1

    .line 288
    .line 289
    move/from16 v15, v16

    .line 290
    .line 291
    goto :goto_5

    .line 292
    :cond_8
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v13

    .line 296
    :goto_6
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v7

    .line 303
    const/4 v12, 0x0

    .line 304
    invoke-virtual {v0, v12, v7}, Lb5/b;->b(ILjava/lang/String;)V

    .line 305
    .line 306
    .line 307
    goto :goto_7

    .line 308
    :cond_9
    const/4 v12, 0x0

    .line 309
    :goto_7
    invoke-virtual {v0, v4}, Lb5/b;->k(I)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0, v6}, Lb5/b;->k(I)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0, v9}, Lb5/b;->k(I)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0, v11}, Lb5/b;->k(I)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0, v12}, Lb5/b;->j(I)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0, v8}, Lb5/b;->j(I)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v3}, La2/w0;->E()V

    .line 328
    .line 329
    .line 330
    iget-object v3, v3, La2/w0;->e:Ljava/lang/Object;

    .line 331
    .line 332
    check-cast v3, Ls4/i;

    .line 333
    .line 334
    :try_start_0
    invoke-virtual {v3, v0}, Ls4/i;->h(Lb5/b;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    .line 336
    .line 337
    iget-object v3, v1, Lu4/e;->g:Lg3/j;

    .line 338
    .line 339
    if-eqz v3, :cond_14

    .line 340
    .line 341
    if-eqz v10, :cond_b

    .line 342
    .line 343
    if-eqz v2, :cond_a

    .line 344
    .line 345
    const-string v2, "  padding: 0"

    .line 346
    .line 347
    const/4 v3, 0x2

    .line 348
    invoke-virtual {v0, v3, v2}, Lb5/b;->b(ILjava/lang/String;)V

    .line 349
    .line 350
    .line 351
    :cond_a
    const/4 v2, 0x0

    .line 352
    invoke-virtual {v0, v2}, Lb5/b;->k(I)V

    .line 353
    .line 354
    .line 355
    :cond_b
    iget-object v2, v1, Lu4/e;->g:Lg3/j;

    .line 356
    .line 357
    invoke-virtual {v2}, Lg3/j;->e()V

    .line 358
    .line 359
    .line 360
    invoke-virtual/range {p2 .. p2}, Lb5/b;->d()Z

    .line 361
    .line 362
    .line 363
    move-result v3

    .line 364
    const-string v4, ".."

    .line 365
    .line 366
    if-eqz v3, :cond_11

    .line 367
    .line 368
    invoke-virtual {v2}, Lg3/j;->e()V

    .line 369
    .line 370
    .line 371
    iget-object v3, v2, Lg3/j;->c:Ljava/lang/Object;

    .line 372
    .line 373
    check-cast v3, Ls4/e;

    .line 374
    .line 375
    iget-object v3, v3, Lb5/c;->b:[Ljava/lang/Object;

    .line 376
    .line 377
    array-length v3, v3

    .line 378
    const-string v5, "  tries:"

    .line 379
    .line 380
    const/4 v6, 0x0

    .line 381
    invoke-virtual {v0, v6, v5}, Lb5/b;->b(ILjava/lang/String;)V

    .line 382
    .line 383
    .line 384
    const/4 v12, 0x0

    .line 385
    :goto_8
    const-string v5, "    "

    .line 386
    .line 387
    if-ge v12, v3, :cond_e

    .line 388
    .line 389
    iget-object v6, v2, Lg3/j;->c:Ljava/lang/Object;

    .line 390
    .line 391
    check-cast v6, Ls4/e;

    .line 392
    .line 393
    invoke-virtual {v6, v12}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v6

    .line 397
    check-cast v6, Ls4/d;

    .line 398
    .line 399
    new-instance v7, Ljava/lang/StringBuilder;

    .line 400
    .line 401
    const-string v8, "    try "

    .line 402
    .line 403
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    iget v8, v6, Ls4/d;->a:I

    .line 407
    .line 408
    int-to-char v9, v8

    .line 409
    if-ne v8, v9, :cond_c

    .line 410
    .line 411
    invoke-static {v8}, Lqf/c;->e0(I)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v8

    .line 415
    goto :goto_9

    .line 416
    :cond_c
    invoke-static {v8}, Lqf/c;->f0(I)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v8

    .line 420
    :goto_9
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    iget v8, v6, Ls4/d;->b:I

    .line 427
    .line 428
    int-to-char v9, v8

    .line 429
    if-ne v8, v9, :cond_d

    .line 430
    .line 431
    invoke-static {v8}, Lqf/c;->e0(I)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v8

    .line 435
    goto :goto_a

    .line 436
    :cond_d
    invoke-static {v8}, Lqf/c;->f0(I)Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v8

    .line 440
    :goto_a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v7

    .line 447
    iget-object v6, v6, Ls4/d;->c:Ls4/c;

    .line 448
    .line 449
    const-string v8, ""

    .line 450
    .line 451
    invoke-virtual {v6, v5, v8}, Ls4/c;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v5

    .line 455
    const/4 v6, 0x6

    .line 456
    invoke-virtual {v0, v6, v7}, Lb5/b;->b(ILjava/lang/String;)V

    .line 457
    .line 458
    .line 459
    const/4 v6, 0x2

    .line 460
    invoke-virtual {v0, v6, v5}, Lb5/b;->b(ILjava/lang/String;)V

    .line 461
    .line 462
    .line 463
    add-int/lit8 v12, v12, 0x1

    .line 464
    .line 465
    goto :goto_8

    .line 466
    :cond_e
    const-string v3, "  handlers:"

    .line 467
    .line 468
    const/4 v12, 0x0

    .line 469
    invoke-virtual {v0, v12, v3}, Lb5/b;->b(ILjava/lang/String;)V

    .line 470
    .line 471
    .line 472
    iget v3, v2, Lg3/j;->a:I

    .line 473
    .line 474
    iget-object v6, v2, Lg3/j;->e:Ljava/lang/Object;

    .line 475
    .line 476
    check-cast v6, Ljava/util/TreeMap;

    .line 477
    .line 478
    invoke-virtual {v6}, Ljava/util/TreeMap;->size()I

    .line 479
    .line 480
    .line 481
    move-result v6

    .line 482
    invoke-static {v6}, Lqf/c;->e0(I)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v6

    .line 486
    const-string v7, "    size: "

    .line 487
    .line 488
    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v6

    .line 492
    invoke-virtual {v0, v3, v6}, Lb5/b;->b(ILjava/lang/String;)V

    .line 493
    .line 494
    .line 495
    iget-object v3, v2, Lg3/j;->e:Ljava/lang/Object;

    .line 496
    .line 497
    check-cast v3, Ljava/util/TreeMap;

    .line 498
    .line 499
    invoke-virtual {v3}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 500
    .line 501
    .line 502
    move-result-object v3

    .line 503
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 504
    .line 505
    .line 506
    move-result-object v3

    .line 507
    const/4 v6, 0x0

    .line 508
    const/4 v7, 0x0

    .line 509
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 510
    .line 511
    .line 512
    move-result v8

    .line 513
    const-string v9, ": "

    .line 514
    .line 515
    if-eqz v8, :cond_10

    .line 516
    .line 517
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object v8

    .line 521
    check-cast v8, Ljava/util/Map$Entry;

    .line 522
    .line 523
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v10

    .line 527
    check-cast v10, Ls4/c;

    .line 528
    .line 529
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v8

    .line 533
    check-cast v8, Ljava/lang/Integer;

    .line 534
    .line 535
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 536
    .line 537
    .line 538
    move-result v8

    .line 539
    if-eqz v6, :cond_f

    .line 540
    .line 541
    sub-int v11, v8, v7

    .line 542
    .line 543
    invoke-static {v7}, Lqf/c;->e0(I)Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v7

    .line 547
    invoke-virtual {v7, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v7

    .line 551
    invoke-virtual {v6, v5, v7}, Ls4/c;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v6

    .line 555
    invoke-virtual {v0, v11, v6}, Lb5/b;->b(ILjava/lang/String;)V

    .line 556
    .line 557
    .line 558
    :cond_f
    move v7, v8

    .line 559
    move-object v6, v10

    .line 560
    goto :goto_b

    .line 561
    :cond_10
    iget-object v3, v2, Lg3/j;->d:Ljava/lang/Object;

    .line 562
    .line 563
    check-cast v3, [B

    .line 564
    .line 565
    array-length v3, v3

    .line 566
    sub-int/2addr v3, v7

    .line 567
    invoke-static {v7}, Lqf/c;->e0(I)Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v7

    .line 571
    invoke-virtual {v7, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v7

    .line 575
    invoke-virtual {v6, v5, v7}, Ls4/c;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v5

    .line 579
    invoke-virtual {v0, v3, v5}, Lb5/b;->b(ILjava/lang/String;)V

    .line 580
    .line 581
    .line 582
    goto :goto_c

    .line 583
    :cond_11
    const/4 v12, 0x0

    .line 584
    :goto_c
    iget-object v3, v2, Lg3/j;->c:Ljava/lang/Object;

    .line 585
    .line 586
    check-cast v3, Ls4/e;

    .line 587
    .line 588
    iget-object v3, v3, Lb5/c;->b:[Ljava/lang/Object;

    .line 589
    .line 590
    array-length v3, v3

    .line 591
    const/4 v7, 0x0

    .line 592
    :goto_d
    if-ge v7, v3, :cond_13

    .line 593
    .line 594
    iget-object v5, v2, Lg3/j;->c:Ljava/lang/Object;

    .line 595
    .line 596
    check-cast v5, Ls4/e;

    .line 597
    .line 598
    invoke-virtual {v5, v7}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 599
    .line 600
    .line 601
    move-result-object v5

    .line 602
    check-cast v5, Ls4/d;

    .line 603
    .line 604
    iget v6, v5, Ls4/d;->b:I

    .line 605
    .line 606
    iget v8, v5, Ls4/d;->a:I

    .line 607
    .line 608
    sub-int v9, v6, v8

    .line 609
    .line 610
    const/high16 v10, 0x10000

    .line 611
    .line 612
    if-ge v9, v10, :cond_12

    .line 613
    .line 614
    invoke-virtual {v0, v8}, Lb5/b;->j(I)V

    .line 615
    .line 616
    .line 617
    invoke-virtual {v0, v9}, Lb5/b;->k(I)V

    .line 618
    .line 619
    .line 620
    iget-object v6, v2, Lg3/j;->e:Ljava/lang/Object;

    .line 621
    .line 622
    check-cast v6, Ljava/util/TreeMap;

    .line 623
    .line 624
    iget-object v5, v5, Ls4/d;->c:Ls4/c;

    .line 625
    .line 626
    invoke-virtual {v6, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    .line 628
    .line 629
    move-result-object v5

    .line 630
    check-cast v5, Ljava/lang/Integer;

    .line 631
    .line 632
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 633
    .line 634
    .line 635
    move-result v5

    .line 636
    invoke-virtual {v0, v5}, Lb5/b;->k(I)V

    .line 637
    .line 638
    .line 639
    add-int/lit8 v7, v7, 0x1

    .line 640
    .line 641
    goto :goto_d

    .line 642
    :cond_12
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 643
    .line 644
    new-instance v2, Ljava/lang/StringBuilder;

    .line 645
    .line 646
    const-string v3, "bogus exception range: "

    .line 647
    .line 648
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    invoke-static {v8}, Lqf/c;->f0(I)Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v3

    .line 655
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    .line 657
    .line 658
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    invoke-static {v6}, Lqf/c;->f0(I)Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v3

    .line 665
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    .line 667
    .line 668
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v2

    .line 672
    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 673
    .line 674
    .line 675
    throw v0

    .line 676
    :cond_13
    iget-object v2, v2, Lg3/j;->d:Ljava/lang/Object;

    .line 677
    .line 678
    check-cast v2, [B

    .line 679
    .line 680
    invoke-virtual {v0, v2}, Lb5/b;->h([B)V

    .line 681
    .line 682
    .line 683
    :cond_14
    return-void

    .line 684
    :catch_0
    move-exception v0

    .line 685
    move-object v2, v0

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    .line 687
    .line 688
    const-string v3, "...while writing instructions for "

    .line 689
    .line 690
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 691
    .line 692
    .line 693
    invoke-virtual {v5}, Lx4/p;->a()Ljava/lang/String;

    .line 694
    .line 695
    .line 696
    move-result-object v3

    .line 697
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    .line 699
    .line 700
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v0

    .line 704
    invoke-static {v2, v0}, Lp4/a;->a(Ljava/lang/Exception;Ljava/lang/String;)Lp4/a;

    .line 705
    .line 706
    .line 707
    move-result-object v0

    .line 708
    goto :goto_f

    .line 709
    :goto_e
    throw v0

    .line 710
    :goto_f
    goto :goto_e
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CodeItem{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lu4/e;->e:Lx4/q;

    .line 9
    .line 10
    invoke-virtual {v1}, Lx4/p;->a()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "}"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method
