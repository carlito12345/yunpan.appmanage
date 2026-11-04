.class public final Lu4/y;
.super Lu4/o;
.source "SourceFile"


# instance fields
.field public final b:Ly4/a;

.field public final c:Lx4/t;

.field public d:Lu4/e0;


# direct methods
.method public constructor <init>(Ly4/a;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lu4/o;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_4

    .line 5
    .line 6
    iput-object p1, p0, Lu4/y;->b:Ly4/a;

    .line 7
    .line 8
    iget-object v0, p1, Ly4/a;->c:Ly4/b;

    .line 9
    .line 10
    iget-object v1, v0, Lb5/c;->b:[Ljava/lang/Object;

    .line 11
    .line 12
    array-length v1, v1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    add-int/lit8 v3, v1, 0x1

    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p1, Ly4/a;->b:Ly4/c;

    .line 21
    .line 22
    iget-object p1, p1, Ly4/c;->a:Ljava/lang/String;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const/16 v4, 0x4c

    .line 30
    .line 31
    const/16 v5, 0x5b

    .line 32
    .line 33
    if-ne p1, v5, :cond_0

    .line 34
    .line 35
    const/16 p1, 0x4c

    .line 36
    .line 37
    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    :goto_0
    if-ge p1, v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Ly4/c;

    .line 48
    .line 49
    iget-object v6, v6, Ly4/c;->a:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-ne v6, v5, :cond_1

    .line 56
    .line 57
    const/16 v6, 0x4c

    .line 58
    .line 59
    :cond_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    add-int/lit8 p1, p1, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    new-instance p1, Lx4/t;

    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-direct {p1, v1}, Lx4/t;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Lu4/y;->c:Lx4/t;

    .line 75
    .line 76
    iget-object p1, v0, Lb5/c;->b:[Ljava/lang/Object;

    .line 77
    .line 78
    array-length p1, p1

    .line 79
    if-nez p1, :cond_3

    .line 80
    .line 81
    const/4 p1, 0x0

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    new-instance p1, Lu4/e0;

    .line 84
    .line 85
    invoke-direct {p1, v0}, Lu4/e0;-><init>(Ly4/e;)V

    .line 86
    .line 87
    .line 88
    :goto_1
    iput-object p1, p0, Lu4/y;->d:Lu4/e0;

    .line 89
    .line 90
    return-void

    .line 91
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    .line 92
    .line 93
    const-string v0, "prototype == null"

    .line 94
    .line 95
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :goto_2
    throw p1

    .line 100
    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public final a(Lu4/f;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lu4/f;->e:Lu4/z;

    .line 2
    .line 3
    iget-object v1, p0, Lu4/y;->b:Ly4/a;

    .line 4
    .line 5
    iget-object v1, v1, Ly4/a;->b:Ly4/c;

    .line 6
    .line 7
    iget-object v2, p1, Lu4/f;->f:Lu4/z;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Lu4/z;->q(Ly4/c;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lu4/y;->c:Lx4/t;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lu4/z;->o(Lx4/t;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lu4/y;->d:Lu4/e0;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object p1, p1, Lu4/f;->b:Lu4/w;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lu4/w;->l(Lu4/x;)Lu4/x;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lu4/e0;

    .line 28
    .line 29
    iput-object p1, p0, Lu4/y;->d:Lu4/e0;

    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public final b()Lu4/q;
    .locals 1

    .line 1
    sget-object v0, Lu4/q;->g:Lu4/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    return v0
.end method

.method public final d(Lu4/f;Lb5/b;)V
    .locals 10

    .line 1
    iget-object v0, p1, Lu4/f;->e:Lu4/z;

    .line 2
    .line 3
    iget-object v1, p0, Lu4/y;->c:Lx4/t;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lu4/z;->l(Lx4/t;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v2, p0, Lu4/y;->b:Ly4/a;

    .line 10
    .line 11
    iget-object v3, v2, Ly4/a;->b:Ly4/c;

    .line 12
    .line 13
    iget-object p1, p1, Lu4/f;->f:Lu4/z;

    .line 14
    .line 15
    invoke-virtual {p1, v3}, Lu4/z;->n(Ly4/c;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget-object v3, p0, Lu4/y;->d:Lu4/e0;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v3}, Lu4/x;->f()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    :goto_0
    invoke-virtual {p2}, Lb5/b;->d()Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-eqz v5, :cond_3

    .line 35
    .line 36
    new-instance v5, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    iget-object v6, v2, Ly4/a;->b:Ly4/c;

    .line 42
    .line 43
    invoke-virtual {v6}, Ly4/c;->a()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v7, " proto("

    .line 51
    .line 52
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object v2, v2, Ly4/a;->c:Ly4/b;

    .line 56
    .line 57
    iget-object v7, v2, Lb5/c;->b:[Ljava/lang/Object;

    .line 58
    .line 59
    array-length v7, v7

    .line 60
    const/4 v8, 0x0

    .line 61
    :goto_1
    if-ge v8, v7, :cond_2

    .line 62
    .line 63
    if-eqz v8, :cond_1

    .line 64
    .line 65
    const-string v9, ", "

    .line 66
    .line 67
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    :cond_1
    invoke-virtual {v2, v8}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    check-cast v9, Ly4/c;

    .line 75
    .line 76
    invoke-virtual {v9}, Ly4/c;->a()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    add-int/lit8 v8, v8, 0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    const-string v2, ")"

    .line 87
    .line 88
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lu4/o;->f()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const/16 v7, 0x20

    .line 104
    .line 105
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {p2, v4, v2}, Lb5/b;->b(ILjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v4, "  shorty_idx:      "

    .line 125
    .line 126
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-static {v0}, Lqf/c;->f0(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v4, " // "

    .line 137
    .line 138
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1}, Lx4/t;->e()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    const/4 v2, 0x4

    .line 153
    invoke-virtual {p2, v2, v1}, Lb5/b;->b(ILjava/lang/String;)V

    .line 154
    .line 155
    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    const-string v5, "  return_type_idx: "

    .line 159
    .line 160
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-static {p1}, Lqf/c;->f0(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v6}, Ly4/c;->a()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {p2, v2, v1}, Lb5/b;->b(ILjava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-static {v3}, Lqf/c;->f0(I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    const-string v4, "  parameters_off:  "

    .line 192
    .line 193
    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {p2, v2, v1}, Lb5/b;->b(ILjava/lang/String;)V

    .line 198
    .line 199
    .line 200
    :cond_3
    invoke-virtual {p2, v0}, Lb5/b;->j(I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p2, p1}, Lb5/b;->j(I)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p2, v3}, Lb5/b;->j(I)V

    .line 207
    .line 208
    .line 209
    return-void
.end method
