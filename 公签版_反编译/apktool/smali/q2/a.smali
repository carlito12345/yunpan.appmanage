.class public final Lq2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ll2/e;

.field public final b:Ll2/i;

.field public c:Ll2/f;

.field public final d:I


# direct methods
.method public constructor <init>(Ll2/g;Ll2/i;JJJJJI)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    iput-object v1, v0, Lq2/a;->b:Ll2/i;

    .line 8
    .line 9
    move/from16 v1, p13

    .line 10
    .line 11
    iput v1, v0, Lq2/a;->d:I

    .line 12
    .line 13
    new-instance v13, Ll2/e;

    .line 14
    .line 15
    move-object v1, v13

    .line 16
    move-object v2, p1

    .line 17
    move-wide/from16 v3, p3

    .line 18
    .line 19
    move-wide/from16 v5, p5

    .line 20
    .line 21
    move-wide/from16 v7, p7

    .line 22
    .line 23
    move-wide/from16 v9, p9

    .line 24
    .line 25
    move-wide/from16 v11, p11

    .line 26
    .line 27
    invoke-direct/range {v1 .. v12}, Ll2/e;-><init>(Ll2/g;JJJJJ)V

    .line 28
    .line 29
    .line 30
    iput-object v13, v0, Lq2/a;->a:Ll2/e;

    .line 31
    .line 32
    return-void
.end method

.method public static a(I[B)I
    .locals 2

    .line 1
    aget-byte v0, p1, p0

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    shl-int/lit8 v0, v0, 0x18

    .line 6
    .line 7
    add-int/lit8 v1, p0, 0x1

    .line 8
    .line 9
    aget-byte v1, p1, v1

    .line 10
    .line 11
    and-int/lit16 v1, v1, 0xff

    .line 12
    .line 13
    shl-int/lit8 v1, v1, 0x10

    .line 14
    .line 15
    or-int/2addr v0, v1

    .line 16
    add-int/lit8 v1, p0, 0x2

    .line 17
    .line 18
    aget-byte v1, p1, v1

    .line 19
    .line 20
    and-int/lit16 v1, v1, 0xff

    .line 21
    .line 22
    shl-int/lit8 v1, v1, 0x8

    .line 23
    .line 24
    or-int/2addr v0, v1

    .line 25
    add-int/lit8 p0, p0, 0x3

    .line 26
    .line 27
    aget-byte p0, p1, p0

    .line 28
    .line 29
    and-int/lit16 p0, p0, 0xff

    .line 30
    .line 31
    or-int/2addr p0, v0

    .line 32
    return p0
.end method

.method public static c(Ll2/l;JLdd/c;)I
    .locals 2

    .line 1
    iget-wide v0, p0, Ll2/l;->d:J

    .line 2
    .line 3
    cmp-long p0, p1, v0

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iput-wide p1, p3, Ldd/c;->b:J

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0
.end method


# virtual methods
.method public final b(Ll2/l;Ldd/c;)I
    .locals 28

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
    :goto_0
    iget-object v3, v0, Lq2/a;->c:Ll2/f;

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-wide v4, v3, Ll2/f;->f:J

    .line 13
    .line 14
    iget-wide v6, v3, Ll2/f;->g:J

    .line 15
    .line 16
    iget-wide v8, v3, Ll2/f;->h:J

    .line 17
    .line 18
    sub-long/2addr v6, v4

    .line 19
    iget v10, v0, Lq2/a;->d:I

    .line 20
    .line 21
    int-to-long v10, v10

    .line 22
    const/4 v12, 0x0

    .line 23
    iget-object v13, v0, Lq2/a;->b:Ll2/i;

    .line 24
    .line 25
    cmp-long v14, v6, v10

    .line 26
    .line 27
    if-gtz v14, :cond_0

    .line 28
    .line 29
    iput-object v12, v0, Lq2/a;->c:Ll2/f;

    .line 30
    .line 31
    invoke-interface {v13}, Ll2/i;->i()V

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v4, v5, v2}, Lq2/a;->c(Ll2/l;JLdd/c;)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    return v1

    .line 39
    :cond_0
    iget-wide v4, v1, Ll2/l;->d:J

    .line 40
    .line 41
    sub-long v4, v8, v4

    .line 42
    .line 43
    const-wide/16 v6, 0x0

    .line 44
    .line 45
    cmp-long v10, v4, v6

    .line 46
    .line 47
    if-ltz v10, :cond_6

    .line 48
    .line 49
    const-wide/32 v10, 0x40000

    .line 50
    .line 51
    .line 52
    cmp-long v14, v4, v10

    .line 53
    .line 54
    if-gtz v14, :cond_6

    .line 55
    .line 56
    long-to-int v5, v4

    .line 57
    const/4 v4, 0x0

    .line 58
    invoke-virtual {v1, v5, v4}, Ll2/l;->o(IZ)Z

    .line 59
    .line 60
    .line 61
    iput v4, v1, Ll2/l;->f:I

    .line 62
    .line 63
    iget-wide v14, v3, Ll2/f;->b:J

    .line 64
    .line 65
    invoke-interface {v13, v1, v14, v15}, Ll2/i;->h(Ll2/l;J)Ll2/h;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    const/4 v14, -0x3

    .line 70
    iget v15, v5, Ll2/h;->a:I

    .line 71
    .line 72
    if-eq v15, v14, :cond_5

    .line 73
    .line 74
    const/4 v8, -0x2

    .line 75
    move-object/from16 v16, v13

    .line 76
    .line 77
    iget-wide v12, v5, Ll2/h;->b:J

    .line 78
    .line 79
    iget-wide v4, v5, Ll2/h;->c:J

    .line 80
    .line 81
    if-eq v15, v8, :cond_4

    .line 82
    .line 83
    const/4 v8, -0x1

    .line 84
    if-eq v15, v8, :cond_3

    .line 85
    .line 86
    if-nez v15, :cond_2

    .line 87
    .line 88
    iget-wide v8, v1, Ll2/l;->d:J

    .line 89
    .line 90
    sub-long v8, v4, v8

    .line 91
    .line 92
    cmp-long v3, v8, v6

    .line 93
    .line 94
    if-ltz v3, :cond_1

    .line 95
    .line 96
    cmp-long v3, v8, v10

    .line 97
    .line 98
    if-gtz v3, :cond_1

    .line 99
    .line 100
    long-to-int v3, v8

    .line 101
    const/4 v6, 0x0

    .line 102
    invoke-virtual {v1, v3, v6}, Ll2/l;->o(IZ)Z

    .line 103
    .line 104
    .line 105
    :cond_1
    const/4 v3, 0x0

    .line 106
    iput-object v3, v0, Lq2/a;->c:Ll2/f;

    .line 107
    .line 108
    invoke-interface/range {v16 .. v16}, Ll2/i;->i()V

    .line 109
    .line 110
    .line 111
    invoke-static {v1, v4, v5, v2}, Lq2/a;->c(Ll2/l;JLdd/c;)I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    return v1

    .line 116
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 117
    .line 118
    const-string v2, "Invalid case"

    .line 119
    .line 120
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v1

    .line 124
    :cond_3
    iput-wide v12, v3, Ll2/f;->e:J

    .line 125
    .line 126
    iput-wide v4, v3, Ll2/f;->g:J

    .line 127
    .line 128
    iget-wide v6, v3, Ll2/f;->d:J

    .line 129
    .line 130
    iget-wide v8, v3, Ll2/f;->f:J

    .line 131
    .line 132
    iget-wide v10, v3, Ll2/f;->c:J

    .line 133
    .line 134
    iget-wide v14, v3, Ll2/f;->b:J

    .line 135
    .line 136
    move-wide/from16 v16, v14

    .line 137
    .line 138
    move-wide/from16 v18, v6

    .line 139
    .line 140
    move-wide/from16 v20, v12

    .line 141
    .line 142
    move-wide/from16 v22, v8

    .line 143
    .line 144
    move-wide/from16 v24, v4

    .line 145
    .line 146
    move-wide/from16 v26, v10

    .line 147
    .line 148
    invoke-static/range {v16 .. v27}, Ll2/f;->a(JJJJJJ)J

    .line 149
    .line 150
    .line 151
    move-result-wide v4

    .line 152
    iput-wide v4, v3, Ll2/f;->h:J

    .line 153
    .line 154
    goto/16 :goto_0

    .line 155
    .line 156
    :cond_4
    iput-wide v12, v3, Ll2/f;->d:J

    .line 157
    .line 158
    iput-wide v4, v3, Ll2/f;->f:J

    .line 159
    .line 160
    iget-wide v6, v3, Ll2/f;->e:J

    .line 161
    .line 162
    iget-wide v8, v3, Ll2/f;->g:J

    .line 163
    .line 164
    iget-wide v10, v3, Ll2/f;->c:J

    .line 165
    .line 166
    iget-wide v14, v3, Ll2/f;->b:J

    .line 167
    .line 168
    move-wide/from16 v16, v14

    .line 169
    .line 170
    move-wide/from16 v18, v12

    .line 171
    .line 172
    move-wide/from16 v20, v6

    .line 173
    .line 174
    move-wide/from16 v22, v4

    .line 175
    .line 176
    move-wide/from16 v24, v8

    .line 177
    .line 178
    move-wide/from16 v26, v10

    .line 179
    .line 180
    invoke-static/range {v16 .. v27}, Ll2/f;->a(JJJJJJ)J

    .line 181
    .line 182
    .line 183
    move-result-wide v4

    .line 184
    iput-wide v4, v3, Ll2/f;->h:J

    .line 185
    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :cond_5
    move-object v3, v12

    .line 189
    move-object/from16 v16, v13

    .line 190
    .line 191
    iput-object v3, v0, Lq2/a;->c:Ll2/f;

    .line 192
    .line 193
    invoke-interface/range {v16 .. v16}, Ll2/i;->i()V

    .line 194
    .line 195
    .line 196
    invoke-static {v1, v8, v9, v2}, Lq2/a;->c(Ll2/l;JLdd/c;)I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    return v1

    .line 201
    :cond_6
    invoke-static {v1, v8, v9, v2}, Lq2/a;->c(Ll2/l;JLdd/c;)I

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    return v1
.end method

.method public final d(J)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-wide/from16 v2, p1

    .line 3
    .line 4
    iget-object v1, v0, Lq2/a;->c:Ll2/f;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-wide v4, v1, Ll2/f;->a:J

    .line 9
    .line 10
    cmp-long v1, v4, v2

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v14, Ll2/f;

    .line 16
    .line 17
    iget-object v1, v0, Lq2/a;->a:Ll2/e;

    .line 18
    .line 19
    iget-object v4, v1, Ll2/e;->a:Ll2/g;

    .line 20
    .line 21
    invoke-interface {v4, v2, v3}, Ll2/g;->d(J)J

    .line 22
    .line 23
    .line 24
    move-result-wide v4

    .line 25
    iget-wide v10, v1, Ll2/e;->e:J

    .line 26
    .line 27
    iget-wide v12, v1, Ll2/e;->f:J

    .line 28
    .line 29
    iget-wide v6, v1, Ll2/e;->c:J

    .line 30
    .line 31
    iget-wide v8, v1, Ll2/e;->d:J

    .line 32
    .line 33
    move-object v1, v14

    .line 34
    move-wide/from16 v2, p1

    .line 35
    .line 36
    invoke-direct/range {v1 .. v13}, Ll2/f;-><init>(JJJJJJ)V

    .line 37
    .line 38
    .line 39
    iput-object v14, v0, Lq2/a;->c:Ll2/f;

    .line 40
    .line 41
    return-void
.end method
