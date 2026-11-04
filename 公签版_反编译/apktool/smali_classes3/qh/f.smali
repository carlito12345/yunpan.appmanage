.class public final enum Lqh/f;
.super Lqh/c0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "InColumnGroup"

    .line 2
    .line 3
    const/16 v1, 0xb

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
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "template"

    .line 3
    .line 4
    const-string v2, "html"

    .line 5
    .line 6
    const/4 v3, 0x2

    .line 7
    invoke-static {p1}, Lqh/c0;->a(Lqh/r0;)Z

    .line 8
    .line 9
    .line 10
    move-result v4

    .line 11
    const/4 v5, 0x1

    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    check-cast p1, Lqh/j0;

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Lqh/c;->t(Lqh/j0;)V

    .line 17
    .line 18
    .line 19
    return v5

    .line 20
    :cond_0
    iget v4, p1, Lqh/r0;->a:I

    .line 21
    .line 22
    invoke-static {v4}, Ld0/f;->c(I)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_c

    .line 27
    .line 28
    sget-object v6, Lqh/c0;->d:Lqh/v;

    .line 29
    .line 30
    if-eq v4, v5, :cond_8

    .line 31
    .line 32
    if-eq v4, v3, :cond_4

    .line 33
    .line 34
    const/4 v0, 0x3

    .line 35
    if-eq v4, v0, :cond_3

    .line 36
    .line 37
    const/4 v0, 0x6

    .line 38
    if-eq v4, v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0, p1, p2}, Lqh/f;->f(Lqh/r0;Lqh/c;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    return p1

    .line 45
    :cond_1
    invoke-virtual {p2, v2}, Lqh/c;->i(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    return v5

    .line 52
    :cond_2
    invoke-virtual {p0, p1, p2}, Lqh/f;->f(Lqh/r0;Lqh/c;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    return p1

    .line 57
    :cond_3
    check-cast p1, Lqh/k0;

    .line 58
    .line 59
    invoke-virtual {p2, p1}, Lqh/c;->v(Lqh/k0;)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_2

    .line 63
    .line 64
    :cond_4
    move-object v2, p1

    .line 65
    check-cast v2, Lqh/n0;

    .line 66
    .line 67
    invoke-virtual {v2}, Lqh/p0;->m()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_7

    .line 79
    .line 80
    const-string v1, "colgroup"

    .line 81
    .line 82
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-nez v1, :cond_5

    .line 87
    .line 88
    invoke-virtual {p0, p1, p2}, Lqh/f;->f(Lqh/r0;Lqh/c;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    return p1

    .line 93
    :cond_5
    invoke-virtual {p2, v2}, Lqh/c;->i(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-nez p1, :cond_6

    .line 98
    .line 99
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 100
    .line 101
    .line 102
    return v0

    .line 103
    :cond_6
    invoke-virtual {p2}, Lqh/c;->E()Lph/l;

    .line 104
    .line 105
    .line 106
    sget-object p1, Lqh/c0;->i:Lqh/a0;

    .line 107
    .line 108
    iput-object p1, p2, Lqh/c;->l:Lqh/c0;

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v6, p1, p2}, Lqh/v;->d(Lqh/r0;Lqh/c;)Z

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_8
    move-object v4, p1

    .line 119
    check-cast v4, Lqh/o0;

    .line 120
    .line 121
    invoke-virtual {v4}, Lqh/p0;->m()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    const/4 v8, -0x1

    .line 129
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    sparse-switch v9, :sswitch_data_0

    .line 134
    .line 135
    .line 136
    :goto_0
    const/4 v0, -0x1

    .line 137
    goto :goto_1

    .line 138
    :sswitch_0
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-nez v0, :cond_9

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_9
    const/4 v0, 0x2

    .line 146
    goto :goto_1

    .line 147
    :sswitch_1
    const-string v0, "col"

    .line 148
    .line 149
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-nez v0, :cond_a

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_a
    const/4 v0, 0x1

    .line 157
    goto :goto_1

    .line 158
    :sswitch_2
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-nez v1, :cond_b

    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_b
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0, p1, p2}, Lqh/f;->f(Lqh/r0;Lqh/c;)Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    return p1

    .line 173
    :pswitch_0
    sget-object v0, Lqh/c0;->g:Lqh/y;

    .line 174
    .line 175
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, p1, p2}, Lqh/y;->d(Lqh/r0;Lqh/c;)Z

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    return p1

    .line 183
    :pswitch_1
    invoke-virtual {p2, v4}, Lqh/c;->x(Lqh/o0;)Lph/l;

    .line 184
    .line 185
    .line 186
    goto :goto_2

    .line 187
    :pswitch_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v6, p1, p2}, Lqh/v;->d(Lqh/r0;Lqh/c;)Z

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_c
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 195
    .line 196
    .line 197
    :goto_2
    return v5

    .line 198
    nop

    .line 199
    :sswitch_data_0
    .sparse-switch
        -0x4ec53386 -> :sswitch_2
        0x18180 -> :sswitch_1
        0x3107ab -> :sswitch_0
    .end sparse-switch

    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Lqh/r0;Lqh/c;)Z
    .locals 1

    .line 1
    const-string v0, "colgroup"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Lqh/c;->i(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    return p1

    .line 14
    :cond_0
    invoke-virtual {p2}, Lqh/c;->E()Lph/l;

    .line 15
    .line 16
    .line 17
    sget-object v0, Lqh/c0;->i:Lqh/a0;

    .line 18
    .line 19
    iput-object v0, p2, Lqh/c;->l:Lqh/c0;

    .line 20
    .line 21
    invoke-virtual {p2, p1}, Lqh/c;->H(Lqh/r0;)Z

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    return p1
.end method
