.class public final Ls3/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/util/List;

.field public final c:[Ll2/j0;

.field public final d:Lb5/i;


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 1

    .line 1
    iput p2, p0, Ls3/a0;->a:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Ls3/a0;->b:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    new-array p1, p1, [Ll2/j0;

    .line 16
    .line 17
    iput-object p1, p0, Ls3/a0;->c:[Ll2/j0;

    .line 18
    .line 19
    new-instance p1, Lb5/i;

    .line 20
    .line 21
    new-instance p2, Lph/j;

    .line 22
    .line 23
    const/4 v0, 0x6

    .line 24
    invoke-direct {p2, v0, p0}, Lph/j;-><init>(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, p2}, Lb5/i;-><init>(Lv1/t;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Ls3/a0;->d:Lb5/i;

    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Ls3/a0;->b:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    new-array p1, p1, [Ll2/j0;

    .line 43
    .line 44
    iput-object p1, p0, Ls3/a0;->c:[Ll2/j0;

    .line 45
    .line 46
    new-instance p1, Lb5/i;

    .line 47
    .line 48
    new-instance p2, Lph/j;

    .line 49
    .line 50
    const/4 v0, 0x7

    .line 51
    invoke-direct {p2, v0, p0}, Lph/j;-><init>(ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p1, p2}, Lb5/i;-><init>(Lv1/t;)V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Ls3/a0;->d:Lb5/i;

    .line 58
    .line 59
    const/4 p2, 0x3

    .line 60
    invoke-virtual {p1, p2}, Lb5/i;->n(I)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(JLu1/q;)V
    .locals 4

    .line 1
    invoke-virtual {p3}, Lu1/q;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x9

    .line 6
    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p3}, Lu1/q;->o()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p3}, Lu1/q;->o()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p3}, Lu1/q;->B()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/16 v3, 0x1b2

    .line 23
    .line 24
    if-ne v0, v3, :cond_1

    .line 25
    .line 26
    const v0, 0x47413934

    .line 27
    .line 28
    .line 29
    if-ne v1, v0, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x3

    .line 32
    if-ne v2, v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Ls3/a0;->d:Lb5/i;

    .line 35
    .line 36
    invoke-virtual {v0, p1, p2, p3}, Lb5/i;->a(JLu1/q;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public final b(Ll2/q;Ls3/d0;)V
    .locals 8

    .line 1
    iget v0, p0, Ls3/a0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    iget-object v2, p0, Ls3/a0;->c:[Ll2/j0;

    .line 9
    .line 10
    array-length v3, v2

    .line 11
    if-ge v1, v3, :cond_2

    .line 12
    .line 13
    invoke-virtual {p2}, Ls3/d0;->m()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Ls3/d0;->n()V

    .line 17
    .line 18
    .line 19
    iget v3, p2, Ls3/d0;->d:I

    .line 20
    .line 21
    const/4 v4, 0x3

    .line 22
    invoke-interface {p1, v3, v4}, Ll2/q;->z(II)Ll2/j0;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iget-object v4, p0, Ls3/a0;->b:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Lr1/p;

    .line 33
    .line 34
    iget-object v5, v4, Lr1/p;->o:Ljava/lang/String;

    .line 35
    .line 36
    const-string v6, "application/cea-608"

    .line 37
    .line 38
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-nez v6, :cond_1

    .line 43
    .line 44
    const-string v6, "application/cea-708"

    .line 45
    .line 46
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-eqz v6, :cond_0

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    const/4 v6, 0x0

    .line 54
    goto :goto_2

    .line 55
    :cond_1
    :goto_1
    const/4 v6, 0x1

    .line 56
    :goto_2
    const-string v7, "Invalid closed caption MIME type provided: %s"

    .line 57
    .line 58
    invoke-static {v6, v7, v5}, La9/o;->l(ZLjava/lang/String;Ljava/lang/Comparable;)V

    .line 59
    .line 60
    .line 61
    new-instance v6, Lr1/o;

    .line 62
    .line 63
    invoke-direct {v6}, Lr1/o;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Ls3/d0;->n()V

    .line 67
    .line 68
    .line 69
    iget-object v7, p2, Ls3/d0;->f:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v7, Ljava/lang/String;

    .line 72
    .line 73
    iput-object v7, v6, Lr1/o;->a:Ljava/lang/String;

    .line 74
    .line 75
    const-string v7, "video/mp2t"

    .line 76
    .line 77
    invoke-static {v7}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    iput-object v7, v6, Lr1/o;->m:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v5}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    iput-object v5, v6, Lr1/o;->n:Ljava/lang/String;

    .line 88
    .line 89
    iget v5, v4, Lr1/p;->e:I

    .line 90
    .line 91
    iput v5, v6, Lr1/o;->e:I

    .line 92
    .line 93
    iget-object v5, v4, Lr1/p;->d:Ljava/lang/String;

    .line 94
    .line 95
    iput-object v5, v6, Lr1/o;->d:Ljava/lang/String;

    .line 96
    .line 97
    iget v5, v4, Lr1/p;->L:I

    .line 98
    .line 99
    iput v5, v6, Lr1/o;->K:I

    .line 100
    .line 101
    iget-object v4, v4, Lr1/p;->r:Ljava/util/List;

    .line 102
    .line 103
    iput-object v4, v6, Lr1/o;->q:Ljava/util/List;

    .line 104
    .line 105
    new-instance v4, Lr1/p;

    .line 106
    .line 107
    invoke-direct {v4, v6}, Lr1/p;-><init>(Lr1/o;)V

    .line 108
    .line 109
    .line 110
    invoke-interface {v3, v4}, Ll2/j0;->g(Lr1/p;)V

    .line 111
    .line 112
    .line 113
    aput-object v3, v2, v1

    .line 114
    .line 115
    add-int/lit8 v1, v1, 0x1

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_2
    return-void

    .line 119
    :pswitch_0
    const/4 v0, 0x0

    .line 120
    const/4 v1, 0x0

    .line 121
    :goto_3
    iget-object v2, p0, Ls3/a0;->c:[Ll2/j0;

    .line 122
    .line 123
    array-length v3, v2

    .line 124
    if-ge v1, v3, :cond_6

    .line 125
    .line 126
    invoke-virtual {p2}, Ls3/d0;->m()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2}, Ls3/d0;->n()V

    .line 130
    .line 131
    .line 132
    iget v3, p2, Ls3/d0;->d:I

    .line 133
    .line 134
    const/4 v4, 0x3

    .line 135
    invoke-interface {p1, v3, v4}, Ll2/q;->z(II)Ll2/j0;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    iget-object v4, p0, Ls3/a0;->b:Ljava/util/List;

    .line 140
    .line 141
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    check-cast v4, Lr1/p;

    .line 146
    .line 147
    iget-object v5, v4, Lr1/p;->o:Ljava/lang/String;

    .line 148
    .line 149
    const-string v6, "application/cea-608"

    .line 150
    .line 151
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    if-nez v6, :cond_4

    .line 156
    .line 157
    const-string v6, "application/cea-708"

    .line 158
    .line 159
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    if-eqz v6, :cond_3

    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_3
    const/4 v6, 0x0

    .line 167
    goto :goto_5

    .line 168
    :cond_4
    :goto_4
    const/4 v6, 0x1

    .line 169
    :goto_5
    const-string v7, "Invalid closed caption MIME type provided: %s"

    .line 170
    .line 171
    invoke-static {v6, v7, v5}, La9/o;->l(ZLjava/lang/String;Ljava/lang/Comparable;)V

    .line 172
    .line 173
    .line 174
    iget-object v6, v4, Lr1/p;->a:Ljava/lang/String;

    .line 175
    .line 176
    if-eqz v6, :cond_5

    .line 177
    .line 178
    goto :goto_6

    .line 179
    :cond_5
    invoke-virtual {p2}, Ls3/d0;->n()V

    .line 180
    .line 181
    .line 182
    iget-object v6, p2, Ls3/d0;->f:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v6, Ljava/lang/String;

    .line 185
    .line 186
    :goto_6
    new-instance v7, Lr1/o;

    .line 187
    .line 188
    invoke-direct {v7}, Lr1/o;-><init>()V

    .line 189
    .line 190
    .line 191
    iput-object v6, v7, Lr1/o;->a:Ljava/lang/String;

    .line 192
    .line 193
    const-string v6, "video/mp2t"

    .line 194
    .line 195
    invoke-static {v6}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    iput-object v6, v7, Lr1/o;->m:Ljava/lang/String;

    .line 200
    .line 201
    invoke-static {v5}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    iput-object v5, v7, Lr1/o;->n:Ljava/lang/String;

    .line 206
    .line 207
    iget v5, v4, Lr1/p;->e:I

    .line 208
    .line 209
    iput v5, v7, Lr1/o;->e:I

    .line 210
    .line 211
    iget-object v5, v4, Lr1/p;->d:Ljava/lang/String;

    .line 212
    .line 213
    iput-object v5, v7, Lr1/o;->d:Ljava/lang/String;

    .line 214
    .line 215
    iget v5, v4, Lr1/p;->L:I

    .line 216
    .line 217
    iput v5, v7, Lr1/o;->K:I

    .line 218
    .line 219
    iget-object v4, v4, Lr1/p;->r:Ljava/util/List;

    .line 220
    .line 221
    iput-object v4, v7, Lr1/o;->q:Ljava/util/List;

    .line 222
    .line 223
    new-instance v4, Lr1/p;

    .line 224
    .line 225
    invoke-direct {v4, v7}, Lr1/p;-><init>(Lr1/o;)V

    .line 226
    .line 227
    .line 228
    invoke-interface {v3, v4}, Ll2/j0;->g(Lr1/p;)V

    .line 229
    .line 230
    .line 231
    aput-object v3, v2, v1

    .line 232
    .line 233
    add-int/lit8 v1, v1, 0x1

    .line 234
    .line 235
    goto :goto_3

    .line 236
    :cond_6
    return-void

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
