.class public final Lh2/j;
.super Lh2/l;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final e:I

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:Z


# direct methods
.method public constructor <init>(ILr1/r0;ILh2/i;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lh2/l;-><init>(ILr1/r0;I)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-static {p5, p1}, Lta/q;->f(IZ)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    iput-boolean p2, p0, Lh2/j;->f:Z

    .line 10
    .line 11
    iget-object p2, p0, Lh2/l;->d:Lr1/p;

    .line 12
    .line 13
    iget p2, p2, Lr1/p;->e:I

    .line 14
    .line 15
    iget p3, p4, Lr1/v0;->u:I

    .line 16
    .line 17
    xor-int/lit8 p3, p3, -0x1

    .line 18
    .line 19
    and-int/2addr p2, p3

    .line 20
    and-int/lit8 p3, p2, 0x1

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    if-eqz p3, :cond_0

    .line 24
    .line 25
    const/4 p3, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p3, 0x0

    .line 28
    :goto_0
    iput-boolean p3, p0, Lh2/j;->g:Z

    .line 29
    .line 30
    and-int/lit8 p2, p2, 0x2

    .line 31
    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    const/4 p2, 0x1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 p2, 0x0

    .line 37
    :goto_1
    iput-boolean p2, p0, Lh2/j;->h:Z

    .line 38
    .line 39
    iget-object p2, p4, Lr1/v0;->r:Lu7/y0;

    .line 40
    .line 41
    if-eqz p7, :cond_2

    .line 42
    .line 43
    invoke-static {p7}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    if-eqz p3, :cond_3

    .line 53
    .line 54
    const-string p3, ""

    .line 55
    .line 56
    invoke-static {p3}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    goto :goto_2

    .line 61
    :cond_3
    move-object p3, p2

    .line 62
    :goto_2
    const/4 v1, 0x0

    .line 63
    :goto_3
    invoke-virtual {p3}, Lu7/y0;->size()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    const v3, 0x7fffffff

    .line 68
    .line 69
    .line 70
    if-ge v1, v2, :cond_5

    .line 71
    .line 72
    iget-object v2, p0, Lh2/l;->d:Lr1/p;

    .line 73
    .line 74
    invoke-virtual {p3, v1}, Lu7/y0;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    check-cast v4, Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {v2, v4, p1}, Lh2/n;->j(Lr1/p;Ljava/lang/String;Z)I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-lez v2, :cond_4

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_5
    const v1, 0x7fffffff

    .line 91
    .line 92
    .line 93
    const/4 v2, 0x0

    .line 94
    :goto_4
    iput v1, p0, Lh2/j;->i:I

    .line 95
    .line 96
    iput v2, p0, Lh2/j;->j:I

    .line 97
    .line 98
    const/16 p3, 0x440

    .line 99
    .line 100
    if-eqz p7, :cond_6

    .line 101
    .line 102
    const/16 p7, 0x440

    .line 103
    .line 104
    goto :goto_5

    .line 105
    :cond_6
    const/4 p7, 0x0

    .line 106
    :goto_5
    iget-object v1, p0, Lh2/l;->d:Lr1/p;

    .line 107
    .line 108
    iget v1, v1, Lr1/p;->f:I

    .line 109
    .line 110
    invoke-static {v1, p7}, Lh2/n;->c(II)I

    .line 111
    .line 112
    .line 113
    move-result p7

    .line 114
    iput p7, p0, Lh2/j;->k:I

    .line 115
    .line 116
    iget-object v1, p0, Lh2/l;->d:Lr1/p;

    .line 117
    .line 118
    iget v4, v1, Lr1/p;->f:I

    .line 119
    .line 120
    and-int/2addr p3, v4

    .line 121
    if-eqz p3, :cond_7

    .line 122
    .line 123
    const/4 p3, 0x1

    .line 124
    goto :goto_6

    .line 125
    :cond_7
    const/4 p3, 0x0

    .line 126
    :goto_6
    iput-boolean p3, p0, Lh2/j;->n:Z

    .line 127
    .line 128
    iget-object p3, p4, Lr1/v0;->s:Lu7/y0;

    .line 129
    .line 130
    invoke-static {v1, p3}, Lh2/n;->d(Lr1/p;Lu7/y0;)I

    .line 131
    .line 132
    .line 133
    move-result p3

    .line 134
    iput p3, p0, Lh2/j;->l:I

    .line 135
    .line 136
    invoke-static {p6}, Lh2/n;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    if-nez v1, :cond_8

    .line 141
    .line 142
    const/4 v1, 0x1

    .line 143
    goto :goto_7

    .line 144
    :cond_8
    const/4 v1, 0x0

    .line 145
    :goto_7
    iget-object v4, p0, Lh2/l;->d:Lr1/p;

    .line 146
    .line 147
    invoke-static {v4, p6, v1}, Lh2/n;->j(Lr1/p;Ljava/lang/String;Z)I

    .line 148
    .line 149
    .line 150
    move-result p6

    .line 151
    iput p6, p0, Lh2/j;->m:I

    .line 152
    .line 153
    if-gtz v2, :cond_c

    .line 154
    .line 155
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-eqz v1, :cond_9

    .line 160
    .line 161
    if-gtz p7, :cond_c

    .line 162
    .line 163
    :cond_9
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 164
    .line 165
    .line 166
    move-result p2

    .line 167
    if-eqz p2, :cond_a

    .line 168
    .line 169
    if-ne p3, v3, :cond_c

    .line 170
    .line 171
    :cond_a
    iget-boolean p2, p0, Lh2/j;->g:Z

    .line 172
    .line 173
    if-nez p2, :cond_c

    .line 174
    .line 175
    iget-boolean p2, p0, Lh2/j;->h:Z

    .line 176
    .line 177
    if-eqz p2, :cond_b

    .line 178
    .line 179
    if-gtz p6, :cond_c

    .line 180
    .line 181
    :cond_b
    const/4 p2, 0x0

    .line 182
    goto :goto_8

    .line 183
    :cond_c
    const/4 p2, 0x1

    .line 184
    :goto_8
    iget-boolean p3, p4, Lh2/i;->C:Z

    .line 185
    .line 186
    invoke-static {p5, p3}, Lta/q;->f(IZ)Z

    .line 187
    .line 188
    .line 189
    move-result p3

    .line 190
    if-eqz p3, :cond_d

    .line 191
    .line 192
    if-eqz p2, :cond_d

    .line 193
    .line 194
    const/4 p1, 0x1

    .line 195
    :cond_d
    iput p1, p0, Lh2/j;->e:I

    .line 196
    .line 197
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lh2/j;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public final bridge synthetic b(Lh2/l;)Z
    .locals 0

    .line 1
    check-cast p1, Lh2/j;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1
.end method

.method public final c(Lh2/j;)I
    .locals 7

    .line 1
    sget-object v0, Lu7/y;->a:Lu7/w;

    .line 2
    .line 3
    iget-boolean v1, p1, Lh2/j;->f:Z

    .line 4
    .line 5
    iget-boolean v2, p0, Lh2/j;->f:Z

    .line 6
    .line 7
    invoke-virtual {v0, v2, v1}, Lu7/w;->c(ZZ)Lu7/y;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v1, p0, Lh2/j;->i:I

    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget v2, p1, Lh2/j;->i:I

    .line 18
    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    sget-object v3, Lu7/w0;->a:Lu7/w0;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    sget-object v4, Lu7/g1;->a:Lu7/g1;

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2, v4}, Lu7/y;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lu7/y;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget v1, p0, Lh2/j;->j:I

    .line 35
    .line 36
    iget v2, p1, Lh2/j;->j:I

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lu7/y;->a(II)Lu7/y;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget v2, p0, Lh2/j;->k:I

    .line 43
    .line 44
    iget v5, p1, Lh2/j;->k:I

    .line 45
    .line 46
    invoke-virtual {v0, v2, v5}, Lu7/y;->a(II)Lu7/y;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget v5, p0, Lh2/j;->l:I

    .line 51
    .line 52
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    iget v6, p1, Lh2/j;->l:I

    .line 57
    .line 58
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {v0, v5, v6, v4}, Lu7/y;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lu7/y;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-boolean v5, p0, Lh2/j;->g:Z

    .line 67
    .line 68
    iget-boolean v6, p1, Lh2/j;->g:Z

    .line 69
    .line 70
    invoke-virtual {v0, v5, v6}, Lu7/y;->c(ZZ)Lu7/y;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-boolean v5, p0, Lh2/j;->h:Z

    .line 75
    .line 76
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    iget-boolean v6, p1, Lh2/j;->h:Z

    .line 81
    .line 82
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    if-nez v1, :cond_0

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    move-object v3, v4

    .line 90
    :goto_0
    invoke-virtual {v0, v5, v6, v3}, Lu7/y;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lu7/y;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iget v1, p0, Lh2/j;->m:I

    .line 95
    .line 96
    iget v3, p1, Lh2/j;->m:I

    .line 97
    .line 98
    invoke-virtual {v0, v1, v3}, Lu7/y;->a(II)Lu7/y;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-nez v2, :cond_1

    .line 103
    .line 104
    iget-boolean v1, p0, Lh2/j;->n:Z

    .line 105
    .line 106
    iget-boolean p1, p1, Lh2/j;->n:Z

    .line 107
    .line 108
    invoke-virtual {v0, v1, p1}, Lu7/y;->d(ZZ)Lu7/y;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    :cond_1
    invoke-virtual {v0}, Lu7/y;->e()I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    return p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lh2/j;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lh2/j;->c(Lh2/j;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
