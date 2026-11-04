.class public final Landroidx/recyclerview/widget/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:Z

.field public d:I

.field public final e:Ljava/io/Serializable;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/c;Ljava/util/ArrayList;[I[I)V
    .locals 9

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/u;->a:I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p2, p0, Landroidx/recyclerview/widget/u;->e:Ljava/io/Serializable;

    .line 13
    iput-object p3, p0, Landroidx/recyclerview/widget/u;->f:Ljava/lang/Object;

    .line 14
    iput-object p4, p0, Landroidx/recyclerview/widget/u;->g:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 15
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([II)V

    .line 16
    invoke-static {p4, v0}, Ljava/util/Arrays;->fill([II)V

    .line 17
    iput-object p1, p0, Landroidx/recyclerview/widget/u;->h:Ljava/lang/Object;

    .line 18
    iget-object p1, p1, Landroidx/recyclerview/widget/c;->a:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/u1;

    iget-object p3, p1, Landroidx/fragment/app/u1;->c:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    .line 19
    iput p3, p0, Landroidx/recyclerview/widget/u;->b:I

    .line 20
    iget-object p1, p1, Landroidx/fragment/app/u1;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 21
    iput p1, p0, Landroidx/recyclerview/widget/u;->d:I

    const/4 p4, 0x1

    .line 22
    iput-boolean p4, p0, Landroidx/recyclerview/widget/u;->c:Z

    .line 23
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/t;

    :goto_0
    if-eqz v1, :cond_1

    .line 24
    iget v2, v1, Landroidx/recyclerview/widget/t;->a:I

    if-nez v2, :cond_1

    iget v1, v1, Landroidx/recyclerview/widget/t;->b:I

    if-eqz v1, :cond_2

    .line 25
    :cond_1
    new-instance v1, Landroidx/recyclerview/widget/t;

    invoke-direct {v1, v0, v0, v0}, Landroidx/recyclerview/widget/t;-><init>(III)V

    invoke-virtual {p2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 26
    :cond_2
    new-instance v1, Landroidx/recyclerview/widget/t;

    invoke-direct {v1, p3, p1, v0}, Landroidx/recyclerview/widget/t;-><init>(III)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    iget-object v1, p0, Landroidx/recyclerview/widget/u;->g:Ljava/lang/Object;

    check-cast v1, [I

    iget-object v2, p0, Landroidx/recyclerview/widget/u;->f:Ljava/lang/Object;

    check-cast v2, [I

    iget-object v3, p0, Landroidx/recyclerview/widget/u;->h:Ljava/lang/Object;

    check-cast v3, Landroidx/recyclerview/widget/c;

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/t;

    const/4 v4, 0x0

    .line 28
    :goto_1
    iget v5, p3, Landroidx/recyclerview/widget/t;->c:I

    if-ge v4, v5, :cond_3

    .line 29
    iget v5, p3, Landroidx/recyclerview/widget/t;->a:I

    add-int/2addr v5, v4

    .line 30
    iget v6, p3, Landroidx/recyclerview/widget/t;->b:I

    add-int/2addr v6, v4

    .line 31
    invoke-virtual {v3, v5, v6}, Landroidx/recyclerview/widget/c;->a(II)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x2

    :goto_2
    shl-int/lit8 v8, v6, 0x4

    or-int/2addr v8, v7

    .line 32
    aput v8, v2, v5

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v5, v7

    .line 33
    aput v5, v1, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 34
    :cond_5
    iget-boolean p1, p0, Landroidx/recyclerview/widget/u;->c:Z

    if-eqz p1, :cond_b

    .line 35
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x0

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/recyclerview/widget/t;

    .line 36
    :goto_4
    iget v4, p4, Landroidx/recyclerview/widget/t;->a:I

    if-ge p3, v4, :cond_a

    .line 37
    aget v4, v2, p3

    if-nez v4, :cond_9

    .line 38
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_5
    if-ge v5, v4, :cond_9

    .line 39
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/t;

    .line 40
    :goto_6
    iget v8, v7, Landroidx/recyclerview/widget/t;->b:I

    if-ge v6, v8, :cond_8

    .line 41
    aget v8, v1, v6

    if-nez v8, :cond_7

    .line 42
    invoke-virtual {v3, p3, v6}, Landroidx/recyclerview/widget/c;->b(II)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 43
    invoke-virtual {v3, p3, v6}, Landroidx/recyclerview/widget/c;->a(II)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x8

    goto :goto_7

    :cond_6
    const/4 v4, 0x4

    :goto_7
    shl-int/lit8 v5, v6, 0x4

    or-int/2addr v5, v4

    .line 44
    aput v5, v2, p3

    shl-int/lit8 v5, p3, 0x4

    or-int/2addr v4, v5

    .line 45
    aput v4, v1, v6

    goto :goto_8

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 46
    :cond_8
    iget v6, v7, Landroidx/recyclerview/widget/t;->c:I

    add-int/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    :goto_8
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    .line 47
    :cond_a
    iget p3, p4, Landroidx/recyclerview/widget/t;->c:I

    add-int/2addr p3, v4

    goto :goto_3

    :cond_b
    return-void
.end method

.method public constructor <init>(Lce/p;Z)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/u;->a:I

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean v1, p0, Landroidx/recyclerview/widget/u;->c:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Landroidx/recyclerview/widget/u;->f:Ljava/lang/Object;

    .line 4
    iput-object v1, p0, Landroidx/recyclerview/widget/u;->g:Ljava/lang/Object;

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/u;->d:I

    .line 6
    iput-object p1, p0, Landroidx/recyclerview/widget/u;->e:Ljava/io/Serializable;

    .line 7
    iget p1, p0, Landroidx/recyclerview/widget/u;->b:I

    const v0, 0x20080004

    or-int/2addr v0, p1

    iput v0, p0, Landroidx/recyclerview/widget/u;->b:I

    if-eqz p2, :cond_0

    const p2, 0x60088014

    or-int/2addr p1, p2

    .line 8
    iput p1, p0, Landroidx/recyclerview/widget/u;->b:I

    .line 9
    :cond_0
    sget p1, Lbe/b;->f:I

    .line 10
    invoke-static {}, Lde/d;->r()Lde/d;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/u;->h:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/util/ArrayDeque;IZ)Landroidx/recyclerview/widget/v;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/recyclerview/widget/v;

    .line 16
    .line 17
    iget v1, v0, Landroidx/recyclerview/widget/v;->a:I

    .line 18
    .line 19
    if-ne v1, p1, :cond_0

    .line 20
    .line 21
    iget-boolean v1, v0, Landroidx/recyclerview/widget/v;->c:Z

    .line 22
    .line 23
    if-ne v1, p2, :cond_0

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Landroidx/recyclerview/widget/v;

    .line 41
    .line 42
    if-eqz p2, :cond_2

    .line 43
    .line 44
    iget v1, p1, Landroidx/recyclerview/widget/v;->b:I

    .line 45
    .line 46
    add-int/lit8 v1, v1, -0x1

    .line 47
    .line 48
    iput v1, p1, Landroidx/recyclerview/widget/v;->b:I

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget v1, p1, Landroidx/recyclerview/widget/v;->b:I

    .line 52
    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    iput v1, p1, Landroidx/recyclerview/widget/v;->b:I

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    return-object v0
.end method


# virtual methods
.method public b([B)[B
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget v2, v1, Landroidx/recyclerview/widget/u;->d:I

    .line 6
    .line 7
    iget-object v3, v1, Landroidx/recyclerview/widget/u;->e:Ljava/io/Serializable;

    .line 8
    .line 9
    check-cast v3, Lce/p;

    .line 10
    .line 11
    iget-object v4, v1, Landroidx/recyclerview/widget/u;->h:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v4, Lde/d;

    .line 14
    .line 15
    const/16 v5, 0x10

    .line 16
    .line 17
    const/4 v6, 0x6

    .line 18
    const/4 v7, 0x4

    .line 19
    const/4 v8, 0x0

    .line 20
    const/4 v9, 0x1

    .line 21
    if-eq v2, v9, :cond_4

    .line 22
    .line 23
    const/4 v10, 0x2

    .line 24
    if-ne v2, v10, :cond_3

    .line 25
    .line 26
    :try_start_0
    new-instance v12, Lbe/c;

    .line 27
    .line 28
    invoke-direct {v12, v0}, Lbe/c;-><init>([B)V

    .line 29
    .line 30
    .line 31
    sget v2, Lde/d;->b:I

    .line 32
    .line 33
    if-lt v2, v7, :cond_0

    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    sget v2, Lde/d;->b:I

    .line 39
    .line 40
    if-lt v2, v6, :cond_0

    .line 41
    .line 42
    array-length v2, v0

    .line 43
    invoke-static {v4, v0, v8, v2}, Lde/c;->a(Ljava/io/PrintStream;[BII)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    :goto_0
    iget-object v0, v12, Lbe/c;->d:[B

    .line 50
    .line 51
    iput-object v0, v1, Landroidx/recyclerview/widget/u;->f:Ljava/lang/Object;

    .line 52
    .line 53
    iget v0, v1, Landroidx/recyclerview/widget/u;->b:I

    .line 54
    .line 55
    iget v2, v12, Lbe/a;->a:I

    .line 56
    .line 57
    and-int/2addr v0, v2

    .line 58
    iput v0, v1, Landroidx/recyclerview/widget/u;->b:I

    .line 59
    .line 60
    new-instance v0, Lbe/d;

    .line 61
    .line 62
    iget-object v13, v3, Lce/p;->c:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v14, v3, Lce/p;->a:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v15, v3, Lce/p;->b:Ljava/lang/String;

    .line 67
    .line 68
    sget v2, Lbe/b;->f:I

    .line 69
    .line 70
    iget v2, v1, Landroidx/recyclerview/widget/u;->b:I

    .line 71
    .line 72
    move-object v11, v0

    .line 73
    move/from16 v16, v2

    .line 74
    .line 75
    invoke-direct/range {v11 .. v16}, Lbe/d;-><init>(Lbe/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lbe/d;->f()[B

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    sget v3, Lde/d;->b:I

    .line 83
    .line 84
    if-lt v3, v7, :cond_1

    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    sget v3, Lde/d;->b:I

    .line 90
    .line 91
    if-lt v3, v6, :cond_1

    .line 92
    .line 93
    array-length v3, v2

    .line 94
    invoke-static {v4, v2, v8, v3}, Lde/c;->a(Ljava/io/PrintStream;[BII)V

    .line 95
    .line 96
    .line 97
    :cond_1
    iget v3, v1, Landroidx/recyclerview/widget/u;->b:I

    .line 98
    .line 99
    and-int/2addr v3, v5

    .line 100
    if-eqz v3, :cond_2

    .line 101
    .line 102
    iget-object v0, v0, Lbe/d;->i:[B

    .line 103
    .line 104
    iput-object v0, v1, Landroidx/recyclerview/widget/u;->g:Ljava/lang/Object;

    .line 105
    .line 106
    :cond_2
    iput-boolean v9, v1, Landroidx/recyclerview/widget/u;->c:Z

    .line 107
    .line 108
    iget v0, v1, Landroidx/recyclerview/widget/u;->d:I

    .line 109
    .line 110
    add-int/2addr v0, v9

    .line 111
    iput v0, v1, Landroidx/recyclerview/widget/u;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    goto/16 :goto_5

    .line 114
    .line 115
    :goto_1
    new-instance v2, Lce/r0;

    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-direct {v2, v3, v0}, Lce/r0;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 122
    .line 123
    .line 124
    throw v2

    .line 125
    :cond_3
    new-instance v0, Lce/r0;

    .line 126
    .line 127
    const-string v2, "Invalid state"

    .line 128
    .line 129
    invoke-direct {v0, v2}, Lce/r0;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw v0

    .line 133
    :cond_4
    new-instance v0, Lbe/b;

    .line 134
    .line 135
    iget v2, v1, Landroidx/recyclerview/widget/u;->b:I

    .line 136
    .line 137
    iget-object v3, v3, Lce/p;->a:Ljava/lang/String;

    .line 138
    .line 139
    sget v10, Lbe/b;->f:I

    .line 140
    .line 141
    invoke-direct {v0, v2, v3}, Lbe/b;-><init>(ILjava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :try_start_1
    iget-object v2, v0, Lbe/b;->d:Ljava/lang/String;

    .line 145
    .line 146
    iget-object v3, v0, Lbe/b;->e:Ljava/lang/String;

    .line 147
    .line 148
    iget v0, v0, Lbe/a;->a:I

    .line 149
    .line 150
    new-array v10, v8, [B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 151
    .line 152
    sget-object v11, Lbe/a;->c:Ljava/lang/String;

    .line 153
    .line 154
    if-eqz v2, :cond_5

    .line 155
    .line 156
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 157
    .line 158
    .line 159
    move-result v12

    .line 160
    if-eqz v12, :cond_5

    .line 161
    .line 162
    or-int/lit16 v0, v0, 0x1000

    .line 163
    .line 164
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v2, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 169
    .line 170
    .line 171
    move-result-object v10

    .line 172
    const/4 v2, 0x1

    .line 173
    goto :goto_2

    .line 174
    :catch_1
    move-exception v0

    .line 175
    goto :goto_6

    .line 176
    :cond_5
    and-int/lit16 v0, v0, -0x1001

    .line 177
    .line 178
    const/4 v2, 0x0

    .line 179
    :goto_2
    new-array v12, v8, [B

    .line 180
    .line 181
    if-eqz v3, :cond_6

    .line 182
    .line 183
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 184
    .line 185
    .line 186
    move-result v13

    .line 187
    if-eqz v13, :cond_6

    .line 188
    .line 189
    or-int/lit16 v0, v0, 0x2000

    .line 190
    .line 191
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {v2, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 196
    .line 197
    .line 198
    move-result-object v12

    .line 199
    const/4 v2, 0x1

    .line 200
    goto :goto_3

    .line 201
    :cond_6
    and-int/lit16 v0, v0, -0x2001

    .line 202
    .line 203
    :goto_3
    const/16 v3, 0x20

    .line 204
    .line 205
    if-eqz v2, :cond_7

    .line 206
    .line 207
    array-length v11, v10

    .line 208
    add-int/2addr v11, v3

    .line 209
    array-length v13, v12

    .line 210
    add-int/2addr v11, v13

    .line 211
    goto :goto_4

    .line 212
    :cond_7
    const/16 v11, 0x10

    .line 213
    .line 214
    :goto_4
    new-array v13, v11, [B

    .line 215
    .line 216
    sget-object v14, Lbe/a;->b:[B

    .line 217
    .line 218
    const/16 v15, 0x8

    .line 219
    .line 220
    invoke-static {v14, v8, v13, v8, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    .line 222
    .line 223
    invoke-static {v15, v9, v13}, Lbe/a;->d(II[B)V

    .line 224
    .line 225
    .line 226
    const/16 v14, 0xc

    .line 227
    .line 228
    invoke-static {v14, v0, v13}, Lbe/a;->d(II[B)V

    .line 229
    .line 230
    .line 231
    if-eqz v2, :cond_8

    .line 232
    .line 233
    invoke-static {v5, v3, v13, v10}, Lbe/a;->c(II[B[B)V

    .line 234
    .line 235
    .line 236
    array-length v0, v10

    .line 237
    add-int/2addr v0, v3

    .line 238
    const/16 v2, 0x18

    .line 239
    .line 240
    invoke-static {v2, v0, v13, v12}, Lbe/a;->c(II[B[B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 241
    .line 242
    .line 243
    :cond_8
    sget v0, Lde/d;->b:I

    .line 244
    .line 245
    if-lt v0, v7, :cond_9

    .line 246
    .line 247
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 248
    .line 249
    .line 250
    sget v0, Lde/d;->b:I

    .line 251
    .line 252
    if-lt v0, v6, :cond_9

    .line 253
    .line 254
    invoke-static {v4, v13, v8, v11}, Lde/c;->a(Ljava/io/PrintStream;[BII)V

    .line 255
    .line 256
    .line 257
    :cond_9
    iget v0, v1, Landroidx/recyclerview/widget/u;->d:I

    .line 258
    .line 259
    add-int/2addr v0, v9

    .line 260
    iput v0, v1, Landroidx/recyclerview/widget/u;->d:I

    .line 261
    .line 262
    move-object v2, v13

    .line 263
    :goto_5
    return-object v2

    .line 264
    :goto_6
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 265
    .line 266
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/u;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "NtlmContext[auth="

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/recyclerview/widget/u;->e:Ljava/io/Serializable;

    .line 19
    .line 20
    check-cast v1, Lce/p;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, ",ntlmsspFlags=0x"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget v1, p0, Landroidx/recyclerview/widget/u;->b:I

    .line 31
    .line 32
    const/16 v2, 0x8

    .line 33
    .line 34
    const-string v3, ",workstation="

    .line 35
    .line 36
    invoke-static {v1, v2, v3, v0}, Landroid/support/v4/media/session/a;->y(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 37
    .line 38
    .line 39
    sget-object v1, Lbe/b;->g:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ",isEstablished="

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-boolean v1, p0, Landroidx/recyclerview/widget/u;->c:Z

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ",state="

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget v1, p0, Landroidx/recyclerview/widget/u;->d:I

    .line 60
    .line 61
    const-string v2, ",serverChallenge="

    .line 62
    .line 63
    invoke-static {v0, v1, v2}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-object v1, p0, Landroidx/recyclerview/widget/u;->f:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v1, [B

    .line 70
    .line 71
    const-string v2, "null"

    .line 72
    .line 73
    if-nez v1, :cond_0

    .line 74
    .line 75
    invoke-static {v0, v2}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    invoke-static {v0}, Lg/b;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v1, p0, Landroidx/recyclerview/widget/u;->f:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v1, [B

    .line 87
    .line 88
    array-length v3, v1

    .line 89
    mul-int/lit8 v3, v3, 0x2

    .line 90
    .line 91
    invoke-static {v3, v1}, Lde/c;->d(I[B)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    :goto_0
    const-string v1, ",signingKey="

    .line 103
    .line 104
    invoke-static {v0, v1}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iget-object v1, p0, Landroidx/recyclerview/widget/u;->g:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v1, [B

    .line 111
    .line 112
    if-nez v1, :cond_1

    .line 113
    .line 114
    invoke-static {v0, v2}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    goto :goto_1

    .line 119
    :cond_1
    invoke-static {v0}, Lg/b;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    iget-object v1, p0, Landroidx/recyclerview/widget/u;->g:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v1, [B

    .line 126
    .line 127
    array-length v2, v1

    .line 128
    mul-int/lit8 v2, v2, 0x2

    .line 129
    .line 130
    invoke-static {v2, v1}, Lde/c;->d(I[B)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    :goto_1
    const-string v1, "]"

    .line 142
    .line 143
    invoke-static {v0, v1}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    return-object v0

    .line 148
    nop

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
