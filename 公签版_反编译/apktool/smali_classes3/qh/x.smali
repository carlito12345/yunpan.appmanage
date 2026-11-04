.class public final enum Lqh/x;
.super Lqh/c0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "AfterHead"

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {p0, v0, v1}, Lqh/c0;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final d(Lqh/r0;Lqh/c;)Z
    .locals 8

    .line 1
    invoke-static {p1}, Lqh/c0;->a(Lqh/r0;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p1, Lqh/j0;

    .line 9
    .line 10
    invoke-virtual {p2, p1}, Lqh/c;->t(Lqh/j0;)V

    .line 11
    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Lqh/r0;->b()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    check-cast p1, Lqh/k0;

    .line 22
    .line 23
    invoke-virtual {p2, p1}, Lqh/c;->v(Lqh/k0;)V

    .line 24
    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :cond_1
    invoke-virtual {p1}, Lqh/r0;->c()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_0

    .line 38
    .line 39
    :cond_2
    invoke-virtual {p1}, Lqh/r0;->f()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    sget-object v2, Lqh/c0;->d:Lqh/v;

    .line 44
    .line 45
    const-string v3, "body"

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    if-eqz v0, :cond_8

    .line 49
    .line 50
    move-object v0, p1

    .line 51
    check-cast v0, Lqh/o0;

    .line 52
    .line 53
    invoke-virtual {v0}, Lqh/p0;->m()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    const-string v6, "html"

    .line 58
    .line 59
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    sget-object v7, Lqh/c0;->g:Lqh/y;

    .line 64
    .line 65
    if-eqz v6, :cond_3

    .line 66
    .line 67
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v7, p1, p2}, Lqh/y;->d(Lqh/r0;Lqh/c;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    return p1

    .line 75
    :cond_3
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-eqz v6, :cond_4

    .line 80
    .line 81
    invoke-virtual {p2, v0}, Lqh/c;->w(Lqh/o0;)Lph/l;

    .line 82
    .line 83
    .line 84
    iput-boolean v4, p2, Lqh/c;->u:Z

    .line 85
    .line 86
    iput-object v7, p2, Lqh/c;->l:Lqh/c0;

    .line 87
    .line 88
    goto/16 :goto_0

    .line 89
    .line 90
    :cond_4
    const-string v6, "frameset"

    .line 91
    .line 92
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-eqz v6, :cond_5

    .line 97
    .line 98
    invoke-virtual {p2, v0}, Lqh/c;->w(Lqh/o0;)Lph/l;

    .line 99
    .line 100
    .line 101
    sget-object p1, Lqh/c0;->v:Lqh/o;

    .line 102
    .line 103
    iput-object p1, p2, Lqh/c;->l:Lqh/c0;

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_5
    sget-object v0, Lqh/b0;->g:[Ljava/lang/String;

    .line 107
    .line 108
    invoke-static {v5, v0}, Loh/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_6

    .line 113
    .line 114
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p2, Lqh/c;->o:Lph/l;

    .line 118
    .line 119
    iget-object v3, p2, Lqh/c;->e:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, p1, p2}, Lqh/v;->d(Lqh/r0;Lqh/c;)Z

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2, v0}, Lqh/c;->N(Lph/l;)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_6
    const-string v0, "head"

    .line 132
    .line 133
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_7

    .line 138
    .line 139
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 140
    .line 141
    .line 142
    return v4

    .line 143
    :cond_7
    invoke-virtual {p2, v3}, Lqh/c;->J(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iput-boolean v1, p2, Lqh/c;->u:Z

    .line 147
    .line 148
    invoke-virtual {p2, p1}, Lqh/c;->H(Lqh/r0;)Z

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_8
    invoke-virtual {p1}, Lqh/r0;->e()Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-eqz v0, :cond_b

    .line 157
    .line 158
    move-object v0, p1

    .line 159
    check-cast v0, Lqh/n0;

    .line 160
    .line 161
    invoke-virtual {v0}, Lqh/p0;->m()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    sget-object v5, Lqh/b0;->d:[Ljava/lang/String;

    .line 166
    .line 167
    invoke-static {v0, v5}, Loh/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 168
    .line 169
    .line 170
    move-result v5

    .line 171
    if-eqz v5, :cond_9

    .line 172
    .line 173
    invoke-virtual {p2, v3}, Lqh/c;->J(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    iput-boolean v1, p2, Lqh/c;->u:Z

    .line 177
    .line 178
    invoke-virtual {p2, p1}, Lqh/c;->H(Lqh/r0;)Z

    .line 179
    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_9
    const-string v3, "template"

    .line 183
    .line 184
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_a

    .line 189
    .line 190
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2, p1, p2}, Lqh/v;->d(Lqh/r0;Lqh/c;)Z

    .line 194
    .line 195
    .line 196
    goto :goto_0

    .line 197
    :cond_a
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 198
    .line 199
    .line 200
    return v4

    .line 201
    :cond_b
    invoke-virtual {p2, v3}, Lqh/c;->J(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    iput-boolean v1, p2, Lqh/c;->u:Z

    .line 205
    .line 206
    invoke-virtual {p2, p1}, Lqh/c;->H(Lqh/r0;)Z

    .line 207
    .line 208
    .line 209
    :goto_0
    return v1
.end method
