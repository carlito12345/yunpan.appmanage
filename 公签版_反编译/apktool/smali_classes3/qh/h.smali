.class public final enum Lqh/h;
.super Lqh/c0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "InRow"

    .line 2
    .line 3
    const/16 v1, 0xd

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
    .locals 7

    .line 1
    invoke-virtual {p1}, Lqh/r0;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lqh/c0;->i:Lqh/a0;

    .line 6
    .line 7
    sget-object v2, Lqh/c0;->m:Lqh/g;

    .line 8
    .line 9
    const-string v3, "tr"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    move-object v0, p1

    .line 15
    check-cast v0, Lqh/o0;

    .line 16
    .line 17
    invoke-virtual {v0}, Lqh/p0;->m()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    sget-object v6, Lqh/b0;->u:[Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v5, v6}, Loh/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-eqz v6, :cond_0

    .line 28
    .line 29
    invoke-virtual {p2}, Lqh/c;->f()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Lqh/c;->w(Lqh/o0;)Lph/l;

    .line 33
    .line 34
    .line 35
    sget-object p1, Lqh/c0;->p:Lqh/i;

    .line 36
    .line 37
    iput-object p1, p2, Lqh/c;->l:Lqh/c0;

    .line 38
    .line 39
    iget-object p1, p2, Lqh/c;->q:Ljava/util/ArrayList;

    .line 40
    .line 41
    const/4 p2, 0x0

    .line 42
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    sget-object v0, Lqh/b0;->C:[Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v5, v0}, Loh/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    invoke-virtual {p2, v3}, Lqh/c;->s(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_1

    .line 59
    .line 60
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 61
    .line 62
    .line 63
    return v4

    .line 64
    :cond_1
    invoke-virtual {p2}, Lqh/c;->f()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Lqh/c;->E()Lph/l;

    .line 68
    .line 69
    .line 70
    iput-object v2, p2, Lqh/c;->l:Lqh/c0;

    .line 71
    .line 72
    invoke-virtual {p2, p1}, Lqh/c;->H(Lqh/r0;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    return p1

    .line 77
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, p1, p2}, Lqh/a0;->d(Lqh/r0;Lqh/c;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    return p1

    .line 85
    :cond_3
    invoke-virtual {p1}, Lqh/r0;->e()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_c

    .line 90
    .line 91
    move-object v0, p1

    .line 92
    check-cast v0, Lqh/n0;

    .line 93
    .line 94
    invoke-virtual {v0}, Lqh/p0;->m()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-eqz v5, :cond_5

    .line 103
    .line 104
    invoke-virtual {p2, v0}, Lqh/c;->s(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-nez p1, :cond_4

    .line 109
    .line 110
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 111
    .line 112
    .line 113
    return v4

    .line 114
    :cond_4
    invoke-virtual {p2}, Lqh/c;->f()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2}, Lqh/c;->E()Lph/l;

    .line 118
    .line 119
    .line 120
    iput-object v2, p2, Lqh/c;->l:Lqh/c0;

    .line 121
    .line 122
    :goto_0
    const/4 p1, 0x1

    .line 123
    return p1

    .line 124
    :cond_5
    const-string v5, "table"

    .line 125
    .line 126
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-eqz v5, :cond_7

    .line 131
    .line 132
    invoke-virtual {p2, v3}, Lqh/c;->s(Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-nez v0, :cond_6

    .line 137
    .line 138
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 139
    .line 140
    .line 141
    return v4

    .line 142
    :cond_6
    invoke-virtual {p2}, Lqh/c;->f()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2}, Lqh/c;->E()Lph/l;

    .line 146
    .line 147
    .line 148
    iput-object v2, p2, Lqh/c;->l:Lqh/c0;

    .line 149
    .line 150
    invoke-virtual {p2, p1}, Lqh/c;->H(Lqh/r0;)Z

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    return p1

    .line 155
    :cond_7
    sget-object v5, Lqh/b0;->r:[Ljava/lang/String;

    .line 156
    .line 157
    invoke-static {v0, v5}, Loh/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    if-eqz v5, :cond_a

    .line 162
    .line 163
    invoke-virtual {p2, v0}, Lqh/c;->s(Ljava/lang/String;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-nez v0, :cond_8

    .line 168
    .line 169
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 170
    .line 171
    .line 172
    return v4

    .line 173
    :cond_8
    invoke-virtual {p2, v3}, Lqh/c;->s(Ljava/lang/String;)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-nez v0, :cond_9

    .line 178
    .line 179
    return v4

    .line 180
    :cond_9
    invoke-virtual {p2}, Lqh/c;->f()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2}, Lqh/c;->E()Lph/l;

    .line 184
    .line 185
    .line 186
    iput-object v2, p2, Lqh/c;->l:Lqh/c0;

    .line 187
    .line 188
    invoke-virtual {p2, p1}, Lqh/c;->H(Lqh/r0;)Z

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    return p1

    .line 193
    :cond_a
    sget-object v2, Lqh/b0;->D:[Ljava/lang/String;

    .line 194
    .line 195
    invoke-static {v0, v2}, Loh/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_b

    .line 200
    .line 201
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 202
    .line 203
    .line 204
    return v4

    .line 205
    :cond_b
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, p1, p2}, Lqh/a0;->d(Lqh/r0;Lqh/c;)Z

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    return p1

    .line 213
    :cond_c
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, p1, p2}, Lqh/a0;->d(Lqh/r0;Lqh/c;)Z

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    return p1
.end method
