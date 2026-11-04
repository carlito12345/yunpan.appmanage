.class public final enum Lqh/l;
.super Lqh/c0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "InTemplate"

    .line 2
    .line 3
    const/16 v1, 0x11

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
    .locals 6

    .line 1
    iget v0, p1, Lqh/r0;->a:I

    .line 2
    .line 3
    invoke-static {v0}, Ld0/f;->c(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-object v1, Lqh/c0;->g:Lqh/y;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_c

    .line 11
    .line 12
    sget-object v3, Lqh/c0;->d:Lqh/v;

    .line 13
    .line 14
    if-eq v0, v2, :cond_5

    .line 15
    .line 16
    const/4 v4, 0x2

    .line 17
    const-string v5, "template"

    .line 18
    .line 19
    if-eq v0, v4, :cond_3

    .line 20
    .line 21
    const/4 v3, 0x3

    .line 22
    if-eq v0, v3, :cond_c

    .line 23
    .line 24
    const/4 v3, 0x4

    .line 25
    if-eq v0, v3, :cond_c

    .line 26
    .line 27
    const/4 v1, 0x6

    .line 28
    if-ne v0, v1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p2, v5}, Lqh/c;->B(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    return v2

    .line 37
    :cond_0
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, v5}, Lqh/c;->F(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Lqh/c;->c()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Lqh/c;->G()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Lqh/c;->P()Z

    .line 50
    .line 51
    .line 52
    iget-object v0, p2, Lqh/c;->l:Lqh/c0;

    .line 53
    .line 54
    sget-object v1, Lqh/c0;->s:Lqh/l;

    .line 55
    .line 56
    if-eq v0, v1, :cond_1

    .line 57
    .line 58
    iget-object v0, p2, Lqh/c;->r:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    const/16 v1, 0xc

    .line 65
    .line 66
    if-ge v0, v1, :cond_1

    .line 67
    .line 68
    invoke-virtual {p2, p1}, Lqh/c;->H(Lqh/r0;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    return p1

    .line 73
    :cond_1
    return v2

    .line 74
    :cond_2
    iget p1, p1, Lqh/r0;->a:I

    .line 75
    .line 76
    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/digest/a;->x(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-string p2, "Unexpected state: "

    .line 81
    .line 82
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 87
    .line 88
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p2

    .line 92
    :cond_3
    move-object v0, p1

    .line 93
    check-cast v0, Lqh/n0;

    .line 94
    .line 95
    invoke-virtual {v0}, Lqh/p0;->m()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_4

    .line 104
    .line 105
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, p1, p2}, Lqh/v;->d(Lqh/r0;Lqh/c;)Z

    .line 109
    .line 110
    .line 111
    goto/16 :goto_1

    .line 112
    .line 113
    :cond_4
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 114
    .line 115
    .line 116
    const/4 p1, 0x0

    .line 117
    return p1

    .line 118
    :cond_5
    move-object v0, p1

    .line 119
    check-cast v0, Lqh/o0;

    .line 120
    .line 121
    invoke-virtual {v0}, Lqh/p0;->m()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    sget-object v4, Lqh/b0;->J:[Ljava/lang/String;

    .line 126
    .line 127
    invoke-static {v0, v4}, Loh/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-eqz v4, :cond_6

    .line 132
    .line 133
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3, p1, p2}, Lqh/v;->d(Lqh/r0;Lqh/c;)Z

    .line 137
    .line 138
    .line 139
    goto/16 :goto_1

    .line 140
    .line 141
    :cond_6
    sget-object v2, Lqh/b0;->K:[Ljava/lang/String;

    .line 142
    .line 143
    invoke-static {v0, v2}, Loh/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-eqz v2, :cond_7

    .line 148
    .line 149
    invoke-virtual {p2}, Lqh/c;->G()V

    .line 150
    .line 151
    .line 152
    sget-object v0, Lqh/c0;->i:Lqh/a0;

    .line 153
    .line 154
    invoke-virtual {p2, v0}, Lqh/c;->K(Lqh/c0;)V

    .line 155
    .line 156
    .line 157
    iput-object v0, p2, Lqh/c;->l:Lqh/c0;

    .line 158
    .line 159
    invoke-virtual {p2, p1}, Lqh/c;->H(Lqh/r0;)Z

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    return p1

    .line 164
    :cond_7
    const-string v2, "col"

    .line 165
    .line 166
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    if-eqz v2, :cond_8

    .line 171
    .line 172
    invoke-virtual {p2}, Lqh/c;->G()V

    .line 173
    .line 174
    .line 175
    sget-object v0, Lqh/c0;->l:Lqh/f;

    .line 176
    .line 177
    invoke-virtual {p2, v0}, Lqh/c;->K(Lqh/c0;)V

    .line 178
    .line 179
    .line 180
    iput-object v0, p2, Lqh/c;->l:Lqh/c0;

    .line 181
    .line 182
    invoke-virtual {p2, p1}, Lqh/c;->H(Lqh/r0;)Z

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    return p1

    .line 187
    :cond_8
    const-string v2, "tr"

    .line 188
    .line 189
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-eqz v2, :cond_9

    .line 194
    .line 195
    invoke-virtual {p2}, Lqh/c;->G()V

    .line 196
    .line 197
    .line 198
    sget-object v0, Lqh/c0;->m:Lqh/g;

    .line 199
    .line 200
    invoke-virtual {p2, v0}, Lqh/c;->K(Lqh/c0;)V

    .line 201
    .line 202
    .line 203
    iput-object v0, p2, Lqh/c;->l:Lqh/c0;

    .line 204
    .line 205
    invoke-virtual {p2, p1}, Lqh/c;->H(Lqh/r0;)Z

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    return p1

    .line 210
    :cond_9
    const-string v2, "td"

    .line 211
    .line 212
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    if-nez v2, :cond_b

    .line 217
    .line 218
    const-string v2, "th"

    .line 219
    .line 220
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-eqz v0, :cond_a

    .line 225
    .line 226
    goto :goto_0

    .line 227
    :cond_a
    invoke-virtual {p2}, Lqh/c;->G()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p2, v1}, Lqh/c;->K(Lqh/c0;)V

    .line 231
    .line 232
    .line 233
    iput-object v1, p2, Lqh/c;->l:Lqh/c0;

    .line 234
    .line 235
    invoke-virtual {p2, p1}, Lqh/c;->H(Lqh/r0;)Z

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    return p1

    .line 240
    :cond_b
    :goto_0
    invoke-virtual {p2}, Lqh/c;->G()V

    .line 241
    .line 242
    .line 243
    sget-object v0, Lqh/c0;->n:Lqh/h;

    .line 244
    .line 245
    invoke-virtual {p2, v0}, Lqh/c;->K(Lqh/c0;)V

    .line 246
    .line 247
    .line 248
    iput-object v0, p2, Lqh/c;->l:Lqh/c0;

    .line 249
    .line 250
    invoke-virtual {p2, p1}, Lqh/c;->H(Lqh/r0;)Z

    .line 251
    .line 252
    .line 253
    move-result p1

    .line 254
    return p1

    .line 255
    :cond_c
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1, p1, p2}, Lqh/y;->d(Lqh/r0;Lqh/c;)Z

    .line 259
    .line 260
    .line 261
    :goto_1
    return v2
.end method
