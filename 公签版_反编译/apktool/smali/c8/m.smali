.class public final Lc8/m;
.super Lz7/a0;
.source "SourceFile"


# static fields
.field public static final a:Lc8/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc8/m;

    .line 2
    .line 3
    invoke-direct {v0}, Lc8/m;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lc8/m;->a:Lc8/m;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lz7/a0;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static d(Lh8/a;I)Lz7/p;
    .locals 2

    .line 1
    invoke-static {p1}, Ld0/f;->c(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x5

    .line 6
    if-eq v0, v1, :cond_3

    .line 7
    .line 8
    const/4 v1, 0x6

    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    .line 11
    const/4 v1, 0x7

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lh8/a;->a0()V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lz7/r;->a:Lz7/r;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    invoke-static {p1}, Lg/b;->B(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v0, "Unexpected token: "

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p0

    .line 40
    :cond_1
    new-instance p1, Lz7/t;

    .line 41
    .line 42
    invoke-virtual {p0}, Lh8/a;->U()Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-direct {p1, p0}, Lz7/t;-><init>(Ljava/lang/Boolean;)V

    .line 51
    .line 52
    .line 53
    return-object p1

    .line 54
    :cond_2
    invoke-virtual {p0}, Lh8/a;->c0()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    new-instance p1, Lz7/t;

    .line 59
    .line 60
    new-instance v0, Lb8/j;

    .line 61
    .line 62
    invoke-direct {v0, p0}, Lb8/j;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p1, v0}, Lz7/t;-><init>(Ljava/lang/Number;)V

    .line 66
    .line 67
    .line 68
    return-object p1

    .line 69
    :cond_3
    new-instance p1, Lz7/t;

    .line 70
    .line 71
    invoke-virtual {p0}, Lh8/a;->c0()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-direct {p1, p0}, Lz7/t;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-object p1
.end method

.method public static e(Lh8/b;Lz7/p;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_b

    .line 2
    .line 3
    instance-of v0, p1, Lz7/r;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    instance-of v0, p1, Lz7/t;

    .line 10
    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    check-cast p1, Lz7/t;

    .line 16
    .line 17
    iget-object v0, p1, Lz7/t;->a:Ljava/io/Serializable;

    .line 18
    .line 19
    instance-of v1, v0, Ljava/lang/Number;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Lz7/t;->k()Ljava/lang/Number;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Lh8/b;->W(Ljava/lang/Number;)V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    :cond_1
    instance-of v0, v0, Ljava/lang/Boolean;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {p1}, Lz7/t;->b()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-virtual {p0, p1}, Lh8/b;->Y(Z)V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_3

    .line 44
    .line 45
    :cond_2
    invoke-virtual {p1}, Lz7/t;->i()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0, p1}, Lh8/b;->X(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_3

    .line 53
    .line 54
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v1, "Not a JSON Primitive: "

    .line 59
    .line 60
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p0

    .line 74
    :cond_4
    instance-of v0, p1, Lz7/o;

    .line 75
    .line 76
    if-eqz v0, :cond_6

    .line 77
    .line 78
    invoke-virtual {p0}, Lh8/b;->A()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lz7/p;->f()Lz7/o;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget-object p1, p1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_5

    .line 96
    .line 97
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Lz7/p;

    .line 102
    .line 103
    invoke-static {p0, v0}, Lc8/m;->e(Lh8/b;Lz7/p;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_5
    invoke-virtual {p0}, Lh8/b;->L()V

    .line 108
    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_6
    instance-of v0, p1, Lz7/s;

    .line 112
    .line 113
    if-eqz v0, :cond_a

    .line 114
    .line 115
    invoke-virtual {p0}, Lh8/b;->J()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Lz7/p;->g()Lz7/s;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iget-object p1, p1, Lz7/s;->a:Lb8/n;

    .line 123
    .line 124
    invoke-virtual {p1}, Lb8/n;->entrySet()Ljava/util/Set;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    check-cast p1, Lb8/l;

    .line 129
    .line 130
    iget-object p1, p1, Lb8/l;->b:Ljava/util/Map;

    .line 131
    .line 132
    check-cast p1, Lb8/n;

    .line 133
    .line 134
    iget-object v0, p1, Lb8/n;->f:Lb8/m;

    .line 135
    .line 136
    iget-object v0, v0, Lb8/m;->d:Lb8/m;

    .line 137
    .line 138
    iget v1, p1, Lb8/n;->e:I

    .line 139
    .line 140
    :goto_1
    iget-object v2, p1, Lb8/n;->f:Lb8/m;

    .line 141
    .line 142
    if-eq v0, v2, :cond_9

    .line 143
    .line 144
    if-eq v0, v2, :cond_8

    .line 145
    .line 146
    iget v2, p1, Lb8/n;->e:I

    .line 147
    .line 148
    if-ne v2, v1, :cond_7

    .line 149
    .line 150
    iget-object v2, v0, Lb8/m;->d:Lb8/m;

    .line 151
    .line 152
    iget-object v3, v0, Lb8/m;->f:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v3, Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {p0, v3}, Lh8/b;->N(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget-object v0, v0, Lb8/m;->h:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast v0, Lz7/p;

    .line 162
    .line 163
    invoke-static {p0, v0}, Lc8/m;->e(Lh8/b;Lz7/p;)V

    .line 164
    .line 165
    .line 166
    move-object v0, v2

    .line 167
    goto :goto_1

    .line 168
    :cond_7
    new-instance p0, Ljava/util/ConcurrentModificationException;

    .line 169
    .line 170
    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 171
    .line 172
    .line 173
    throw p0

    .line 174
    :cond_8
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 175
    .line 176
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 177
    .line 178
    .line 179
    throw p0

    .line 180
    :cond_9
    invoke-virtual {p0}, Lh8/b;->M()V

    .line 181
    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 185
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    const-string v1, "Couldn\'t write "

    .line 189
    .line 190
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    throw p0

    .line 208
    :cond_b
    :goto_2
    invoke-virtual {p0}, Lh8/b;->P()Lh8/b;

    .line 209
    .line 210
    .line 211
    :goto_3
    return-void
.end method


# virtual methods
.method public final b(Lh8/a;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p1, Lc8/o;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    check-cast p1, Lc8/o;

    .line 7
    .line 8
    invoke-virtual {p1}, Lc8/o;->e0()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v2, 0x5

    .line 13
    if-eq v0, v2, :cond_0

    .line 14
    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    const/16 v1, 0xa

    .line 21
    .line 22
    if-eq v0, v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Lc8/o;->s0()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lz7/p;

    .line 29
    .line 30
    invoke-virtual {p1}, Lc8/o;->l0()V

    .line 31
    .line 32
    .line 33
    goto/16 :goto_7

    .line 34
    .line 35
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v2, "Unexpected "

    .line 40
    .line 41
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lg/b;->B(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v0, " when reading a JsonElement."

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :cond_1
    invoke-virtual {p1}, Lh8/a;->e0()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-static {v0}, Ld0/f;->c(I)I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    const/4 v3, 0x0

    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    if-eq v2, v1, :cond_2

    .line 76
    .line 77
    move-object v2, v3

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {p1}, Lh8/a;->A()V

    .line 80
    .line 81
    .line 82
    new-instance v2, Lz7/s;

    .line 83
    .line 84
    invoke-direct {v2}, Lz7/s;-><init>()V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    invoke-virtual {p1}, Lh8/a;->r()V

    .line 89
    .line 90
    .line 91
    new-instance v2, Lz7/o;

    .line 92
    .line 93
    invoke-direct {v2}, Lz7/o;-><init>()V

    .line 94
    .line 95
    .line 96
    :goto_0
    if-nez v2, :cond_4

    .line 97
    .line 98
    invoke-static {p1, v0}, Lc8/m;->d(Lh8/a;I)Lz7/p;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    goto/16 :goto_7

    .line 103
    .line 104
    :cond_4
    new-instance v0, Ljava/util/ArrayDeque;

    .line 105
    .line 106
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 107
    .line 108
    .line 109
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lh8/a;->R()Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-eqz v4, :cond_c

    .line 114
    .line 115
    instance-of v4, v2, Lz7/s;

    .line 116
    .line 117
    if-eqz v4, :cond_6

    .line 118
    .line 119
    invoke-virtual {p1}, Lh8/a;->Y()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    goto :goto_2

    .line 124
    :cond_6
    move-object v4, v3

    .line 125
    :goto_2
    invoke-virtual {p1}, Lh8/a;->e0()I

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    invoke-static {v5}, Ld0/f;->c(I)I

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    if-eqz v6, :cond_8

    .line 134
    .line 135
    if-eq v6, v1, :cond_7

    .line 136
    .line 137
    move-object v6, v3

    .line 138
    goto :goto_3

    .line 139
    :cond_7
    invoke-virtual {p1}, Lh8/a;->A()V

    .line 140
    .line 141
    .line 142
    new-instance v6, Lz7/s;

    .line 143
    .line 144
    invoke-direct {v6}, Lz7/s;-><init>()V

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_8
    invoke-virtual {p1}, Lh8/a;->r()V

    .line 149
    .line 150
    .line 151
    new-instance v6, Lz7/o;

    .line 152
    .line 153
    invoke-direct {v6}, Lz7/o;-><init>()V

    .line 154
    .line 155
    .line 156
    :goto_3
    if-eqz v6, :cond_9

    .line 157
    .line 158
    const/4 v7, 0x1

    .line 159
    goto :goto_4

    .line 160
    :cond_9
    const/4 v7, 0x0

    .line 161
    :goto_4
    if-nez v6, :cond_a

    .line 162
    .line 163
    invoke-static {p1, v5}, Lc8/m;->d(Lh8/a;I)Lz7/p;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    :cond_a
    instance-of v5, v2, Lz7/o;

    .line 168
    .line 169
    if-eqz v5, :cond_b

    .line 170
    .line 171
    move-object v4, v2

    .line 172
    check-cast v4, Lz7/o;

    .line 173
    .line 174
    invoke-virtual {v4, v6}, Lz7/o;->k(Lz7/p;)V

    .line 175
    .line 176
    .line 177
    goto :goto_5

    .line 178
    :cond_b
    move-object v5, v2

    .line 179
    check-cast v5, Lz7/s;

    .line 180
    .line 181
    invoke-virtual {v5, v4, v6}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 182
    .line 183
    .line 184
    :goto_5
    if-eqz v7, :cond_5

    .line 185
    .line 186
    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    move-object v2, v6

    .line 190
    goto :goto_1

    .line 191
    :cond_c
    instance-of v4, v2, Lz7/o;

    .line 192
    .line 193
    if-eqz v4, :cond_d

    .line 194
    .line 195
    invoke-virtual {p1}, Lh8/a;->L()V

    .line 196
    .line 197
    .line 198
    goto :goto_6

    .line 199
    :cond_d
    invoke-virtual {p1}, Lh8/a;->M()V

    .line 200
    .line 201
    .line 202
    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    if-eqz v4, :cond_e

    .line 207
    .line 208
    move-object v0, v2

    .line 209
    :goto_7
    return-object v0

    .line 210
    :cond_e
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    check-cast v2, Lz7/p;

    .line 215
    .line 216
    goto :goto_1
.end method

.method public final bridge synthetic c(Lh8/b;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lz7/p;

    .line 2
    .line 3
    invoke-static {p1, p2}, Lc8/m;->e(Lh8/b;Lz7/p;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
