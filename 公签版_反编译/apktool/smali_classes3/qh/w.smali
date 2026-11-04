.class public final enum Lqh/w;
.super Lqh/c0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "InHeadNoscript"

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {p0, v0, v1}, Lqh/c0;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final d(Lqh/r0;Lqh/c;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lqh/r0;->c()Z

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
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lqh/r0;->f()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    move-object v0, p1

    .line 19
    check-cast v0, Lqh/o0;

    .line 20
    .line 21
    invoke-virtual {v0}, Lqh/p0;->m()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v2, "html"

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    sget-object v0, Lqh/c0;->g:Lqh/y;

    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1, p2}, Lqh/y;->d(Lqh/r0;Lqh/c;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1

    .line 43
    :cond_1
    invoke-virtual {p1}, Lqh/r0;->e()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    sget-object v2, Lqh/c0;->d:Lqh/v;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    move-object v0, p1

    .line 52
    check-cast v0, Lqh/n0;

    .line 53
    .line 54
    invoke-virtual {v0}, Lqh/p0;->m()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v3, "noscript"

    .line 59
    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    invoke-virtual {p2}, Lqh/c;->E()Lph/l;

    .line 67
    .line 68
    .line 69
    iput-object v2, p2, Lqh/c;->l:Lqh/c0;

    .line 70
    .line 71
    :goto_0
    return v1

    .line 72
    :cond_2
    invoke-static {p1}, Lqh/c0;->a(Lqh/r0;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_8

    .line 77
    .line 78
    invoke-virtual {p1}, Lqh/r0;->b()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_8

    .line 83
    .line 84
    invoke-virtual {p1}, Lqh/r0;->f()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_3

    .line 89
    .line 90
    move-object v0, p1

    .line 91
    check-cast v0, Lqh/o0;

    .line 92
    .line 93
    invoke-virtual {v0}, Lqh/p0;->m()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    sget-object v3, Lqh/b0;->f:[Ljava/lang/String;

    .line 98
    .line 99
    invoke-static {v0, v3}, Loh/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_3

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_3
    invoke-virtual {p1}, Lqh/r0;->e()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_4

    .line 111
    .line 112
    move-object v0, p1

    .line 113
    check-cast v0, Lqh/n0;

    .line 114
    .line 115
    invoke-virtual {v0}, Lqh/p0;->m()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    const-string v2, "br"

    .line 120
    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_4

    .line 126
    .line 127
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 128
    .line 129
    .line 130
    new-instance v0, Lqh/j0;

    .line 131
    .line 132
    invoke-direct {v0}, Lqh/j0;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    iget-object v2, v0, Lqh/j0;->d:Lkf/d;

    .line 140
    .line 141
    invoke-virtual {v2}, Lkf/d;->reset()V

    .line 142
    .line 143
    .line 144
    iput-object p1, v2, Lkf/d;->b:Ljava/lang/Object;

    .line 145
    .line 146
    invoke-virtual {p2, v0}, Lqh/c;->t(Lqh/j0;)V

    .line 147
    .line 148
    .line 149
    return v1

    .line 150
    :cond_4
    invoke-virtual {p1}, Lqh/r0;->f()Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_5

    .line 155
    .line 156
    move-object v0, p1

    .line 157
    check-cast v0, Lqh/o0;

    .line 158
    .line 159
    invoke-virtual {v0}, Lqh/p0;->m()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    sget-object v2, Lqh/b0;->H:[Ljava/lang/String;

    .line 164
    .line 165
    invoke-static {v0, v2}, Loh/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-nez v0, :cond_6

    .line 170
    .line 171
    :cond_5
    invoke-virtual {p1}, Lqh/r0;->e()Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_7

    .line 176
    .line 177
    :cond_6
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 178
    .line 179
    .line 180
    const/4 p1, 0x0

    .line 181
    return p1

    .line 182
    :cond_7
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 183
    .line 184
    .line 185
    new-instance v0, Lqh/j0;

    .line 186
    .line 187
    invoke-direct {v0}, Lqh/j0;-><init>()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    iget-object v2, v0, Lqh/j0;->d:Lkf/d;

    .line 195
    .line 196
    invoke-virtual {v2}, Lkf/d;->reset()V

    .line 197
    .line 198
    .line 199
    iput-object p1, v2, Lkf/d;->b:Ljava/lang/Object;

    .line 200
    .line 201
    invoke-virtual {p2, v0}, Lqh/c;->t(Lqh/j0;)V

    .line 202
    .line 203
    .line 204
    return v1

    .line 205
    :cond_8
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2, p1, p2}, Lqh/v;->d(Lqh/r0;Lqh/c;)Z

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    return p1
.end method
