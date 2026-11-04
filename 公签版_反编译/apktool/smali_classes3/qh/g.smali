.class public final enum Lqh/g;
.super Lqh/c0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "InTableBody"

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lqh/c0;-><init>(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d(Lqh/r0;Lqh/c;)Z
    .locals 17

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
    const/4 v3, 0x3

    .line 8
    const/4 v4, 0x4

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x2

    .line 11
    const/4 v7, 0x1

    .line 12
    iget v8, v1, Lqh/r0;->a:I

    .line 13
    .line 14
    invoke-static {v8}, Ld0/f;->c(I)I

    .line 15
    .line 16
    .line 17
    move-result v8

    .line 18
    sget-object v9, Lqh/c0;->i:Lqh/a0;

    .line 19
    .line 20
    const-string v10, "tfoot"

    .line 21
    .line 22
    const-string v11, "tbody"

    .line 23
    .line 24
    const-string v12, "template"

    .line 25
    .line 26
    const-string v13, "thead"

    .line 27
    .line 28
    if-eq v8, v7, :cond_5

    .line 29
    .line 30
    if-eq v8, v6, :cond_0

    .line 31
    .line 32
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v9, v1, v2}, Lqh/a0;->d(Lqh/r0;Lqh/c;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    return v1

    .line 40
    :cond_0
    move-object v8, v1

    .line 41
    check-cast v8, Lqh/n0;

    .line 42
    .line 43
    invoke-virtual {v8}, Lqh/p0;->m()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    sget-object v14, Lqh/b0;->G:[Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v8, v14}, Loh/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v14

    .line 53
    if-eqz v14, :cond_2

    .line 54
    .line 55
    invoke-virtual {v2, v8}, Lqh/c;->s(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_1

    .line 60
    .line 61
    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    .line 62
    .line 63
    .line 64
    return v5

    .line 65
    :cond_1
    new-array v1, v4, [Ljava/lang/String;

    .line 66
    .line 67
    aput-object v11, v1, v5

    .line 68
    .line 69
    aput-object v10, v1, v7

    .line 70
    .line 71
    aput-object v13, v1, v6

    .line 72
    .line 73
    aput-object v12, v1, v3

    .line 74
    .line 75
    invoke-virtual {v2, v1}, Lqh/c;->d([Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual/range {p2 .. p2}, Lqh/c;->E()Lph/l;

    .line 79
    .line 80
    .line 81
    iput-object v9, v2, Lqh/c;->l:Lqh/c0;

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    const-string v3, "table"

    .line 85
    .line 86
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_3

    .line 91
    .line 92
    invoke-virtual/range {p0 .. p2}, Lqh/g;->f(Lqh/r0;Lqh/c;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    return v1

    .line 97
    :cond_3
    sget-object v3, Lqh/b0;->B:[Ljava/lang/String;

    .line 98
    .line 99
    invoke-static {v8, v3}, Loh/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_4

    .line 104
    .line 105
    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    .line 106
    .line 107
    .line 108
    return v5

    .line 109
    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v9, v1, v2}, Lqh/a0;->d(Lqh/r0;Lqh/c;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    return v1

    .line 117
    :cond_5
    move-object v8, v1

    .line 118
    check-cast v8, Lqh/o0;

    .line 119
    .line 120
    invoke-virtual {v8}, Lqh/p0;->m()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v14

    .line 124
    const-string v15, "tr"

    .line 125
    .line 126
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v16

    .line 130
    if-eqz v16, :cond_6

    .line 131
    .line 132
    new-array v1, v4, [Ljava/lang/String;

    .line 133
    .line 134
    aput-object v11, v1, v5

    .line 135
    .line 136
    aput-object v10, v1, v7

    .line 137
    .line 138
    aput-object v13, v1, v6

    .line 139
    .line 140
    aput-object v12, v1, v3

    .line 141
    .line 142
    invoke-virtual {v2, v1}, Lqh/c;->d([Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, v8}, Lqh/c;->w(Lqh/o0;)Lph/l;

    .line 146
    .line 147
    .line 148
    sget-object v1, Lqh/c0;->n:Lqh/h;

    .line 149
    .line 150
    iput-object v1, v2, Lqh/c;->l:Lqh/c0;

    .line 151
    .line 152
    :goto_0
    return v7

    .line 153
    :cond_6
    sget-object v3, Lqh/b0;->u:[Ljava/lang/String;

    .line 154
    .line 155
    invoke-static {v14, v3}, Loh/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    if-eqz v3, :cond_7

    .line 160
    .line 161
    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v15}, Lqh/c;->J(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2, v8}, Lqh/c;->H(Lqh/r0;)Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    return v1

    .line 172
    :cond_7
    sget-object v3, Lqh/b0;->A:[Ljava/lang/String;

    .line 173
    .line 174
    invoke-static {v14, v3}, Loh/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    if-eqz v3, :cond_8

    .line 179
    .line 180
    invoke-virtual/range {p0 .. p2}, Lqh/g;->f(Lqh/r0;Lqh/c;)Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    return v1

    .line 185
    :cond_8
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v9, v1, v2}, Lqh/a0;->d(Lqh/r0;Lqh/c;)Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    return v1
.end method

.method public final f(Lqh/r0;Lqh/c;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "tbody"

    .line 3
    .line 4
    invoke-virtual {p2, v1}, Lqh/c;->s(Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    const-string v3, "tfoot"

    .line 9
    .line 10
    const-string v4, "thead"

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p2, v4}, Lqh/c;->s(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p2, v3}, Lqh/c;->p(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 27
    .line 28
    .line 29
    return v0

    .line 30
    :cond_0
    const/4 v2, 0x4

    .line 31
    new-array v2, v2, [Ljava/lang/String;

    .line 32
    .line 33
    aput-object v1, v2, v0

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    aput-object v3, v2, v0

    .line 37
    .line 38
    const/4 v0, 0x2

    .line 39
    aput-object v4, v2, v0

    .line 40
    .line 41
    const-string v0, "template"

    .line 42
    .line 43
    const/4 v1, 0x3

    .line 44
    aput-object v0, v2, v1

    .line 45
    .line 46
    invoke-virtual {p2, v2}, Lqh/c;->d([Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Lqh/c;->h()Lph/l;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v0, v0, Lph/l;->d:Lqh/f0;

    .line 54
    .line 55
    iget-object v0, v0, Lqh/f0;->c:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p2, v0}, Lqh/c;->I(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p1}, Lqh/c;->H(Lqh/r0;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    return p1
.end method
