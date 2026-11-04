.class public final Ll2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:F

.field public final l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;IIIIIIIIIFLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll2/d;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput p2, p0, Ll2/d;->b:I

    .line 7
    .line 8
    iput p3, p0, Ll2/d;->c:I

    .line 9
    .line 10
    iput p4, p0, Ll2/d;->d:I

    .line 11
    .line 12
    iput p5, p0, Ll2/d;->e:I

    .line 13
    .line 14
    iput p6, p0, Ll2/d;->f:I

    .line 15
    .line 16
    iput p7, p0, Ll2/d;->g:I

    .line 17
    .line 18
    iput p8, p0, Ll2/d;->h:I

    .line 19
    .line 20
    iput p9, p0, Ll2/d;->i:I

    .line 21
    .line 22
    iput p10, p0, Ll2/d;->j:I

    .line 23
    .line 24
    iput p11, p0, Ll2/d;->k:F

    .line 25
    .line 26
    iput-object p12, p0, Ll2/d;->l:Ljava/lang/String;

    .line 27
    .line 28
    return-void
.end method

.method public static a(Lu1/q;)Ll2/d;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x4

    .line 6
    const/4 v4, 0x1

    .line 7
    :try_start_0
    invoke-virtual {v0, v3}, Lu1/q;->P(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p0 .. p0}, Lu1/q;->B()I

    .line 11
    .line 12
    .line 13
    move-result v5

    .line 14
    and-int/2addr v5, v2

    .line 15
    add-int/lit8 v8, v5, 0x1

    .line 16
    .line 17
    if-eq v8, v2, :cond_3

    .line 18
    .line 19
    new-instance v7, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {p0 .. p0}, Lu1/q;->B()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    and-int/lit8 v5, v5, 0x1f

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    :goto_0
    if-ge v6, v5, :cond_0

    .line 32
    .line 33
    invoke-virtual/range {p0 .. p0}, Lu1/q;->I()I

    .line 34
    .line 35
    .line 36
    move-result v9

    .line 37
    iget v10, v0, Lu1/q;->b:I

    .line 38
    .line 39
    invoke-virtual {v0, v9}, Lu1/q;->P(I)V

    .line 40
    .line 41
    .line 42
    iget-object v11, v0, Lu1/q;->a:[B

    .line 43
    .line 44
    sget-object v12, Lu1/c;->a:[B

    .line 45
    .line 46
    add-int/lit8 v12, v9, 0x4

    .line 47
    .line 48
    new-array v12, v12, [B

    .line 49
    .line 50
    sget-object v13, Lu1/c;->a:[B

    .line 51
    .line 52
    invoke-static {v13, v1, v12, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    .line 54
    .line 55
    invoke-static {v11, v10, v12, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    add-int/2addr v6, v4

    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    goto/16 :goto_3

    .line 65
    .line 66
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lu1/q;->B()I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    const/4 v9, 0x0

    .line 71
    :goto_1
    if-ge v9, v6, :cond_1

    .line 72
    .line 73
    invoke-virtual/range {p0 .. p0}, Lu1/q;->I()I

    .line 74
    .line 75
    .line 76
    move-result v10

    .line 77
    iget v11, v0, Lu1/q;->b:I

    .line 78
    .line 79
    invoke-virtual {v0, v10}, Lu1/q;->P(I)V

    .line 80
    .line 81
    .line 82
    iget-object v12, v0, Lu1/q;->a:[B

    .line 83
    .line 84
    sget-object v13, Lu1/c;->a:[B

    .line 85
    .line 86
    add-int/lit8 v13, v10, 0x4

    .line 87
    .line 88
    new-array v13, v13, [B

    .line 89
    .line 90
    sget-object v14, Lu1/c;->a:[B

    .line 91
    .line 92
    invoke-static {v14, v1, v13, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    .line 94
    .line 95
    invoke-static {v12, v11, v13, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    add-int/2addr v9, v4

    .line 102
    goto :goto_1

    .line 103
    :cond_1
    if-lez v5, :cond_2

    .line 104
    .line 105
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, [B

    .line 110
    .line 111
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    check-cast v5, [B

    .line 116
    .line 117
    array-length v0, v0

    .line 118
    invoke-static {v3, v0, v5}, Lv1/o;->m(II[B)Lv1/n;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iget v3, v0, Lv1/n;->e:I

    .line 123
    .line 124
    iget v5, v0, Lv1/n;->f:I

    .line 125
    .line 126
    iget v6, v0, Lv1/n;->h:I

    .line 127
    .line 128
    add-int/lit8 v6, v6, 0x8

    .line 129
    .line 130
    iget v9, v0, Lv1/n;->i:I

    .line 131
    .line 132
    add-int/lit8 v9, v9, 0x8

    .line 133
    .line 134
    iget v10, v0, Lv1/n;->p:I

    .line 135
    .line 136
    iget v11, v0, Lv1/n;->q:I

    .line 137
    .line 138
    iget v12, v0, Lv1/n;->r:I

    .line 139
    .line 140
    iget v13, v0, Lv1/n;->s:I

    .line 141
    .line 142
    iget v14, v0, Lv1/n;->g:F

    .line 143
    .line 144
    iget v15, v0, Lv1/n;->a:I

    .line 145
    .line 146
    iget v4, v0, Lv1/n;->b:I

    .line 147
    .line 148
    iget v0, v0, Lv1/n;->c:I

    .line 149
    .line 150
    sget-object v17, Lu1/c;->a:[B

    .line 151
    .line 152
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v15

    .line 156
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    new-array v2, v2, [Ljava/lang/Object;

    .line 165
    .line 166
    aput-object v15, v2, v1

    .line 167
    .line 168
    const/4 v1, 0x1

    .line 169
    aput-object v4, v2, v1

    .line 170
    .line 171
    const/4 v1, 0x2

    .line 172
    aput-object v0, v2, v1

    .line 173
    .line 174
    const-string v0, "avc1.%02X%02X%02X"

    .line 175
    .line 176
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    move-object/from16 v18, v0

    .line 181
    .line 182
    move v15, v12

    .line 183
    move/from16 v16, v13

    .line 184
    .line 185
    move/from16 v17, v14

    .line 186
    .line 187
    move v12, v9

    .line 188
    move v13, v10

    .line 189
    move v14, v11

    .line 190
    move v9, v3

    .line 191
    move v10, v5

    .line 192
    move v11, v6

    .line 193
    goto :goto_2

    .line 194
    :cond_2
    const/4 v0, -0x1

    .line 195
    const/high16 v1, 0x3f800000    # 1.0f

    .line 196
    .line 197
    const/4 v2, 0x0

    .line 198
    const/16 v3, 0x10

    .line 199
    .line 200
    move-object/from16 v18, v2

    .line 201
    .line 202
    const/4 v9, -0x1

    .line 203
    const/4 v10, -0x1

    .line 204
    const/4 v11, -0x1

    .line 205
    const/4 v12, -0x1

    .line 206
    const/4 v13, -0x1

    .line 207
    const/4 v14, -0x1

    .line 208
    const/4 v15, -0x1

    .line 209
    const/16 v16, 0x10

    .line 210
    .line 211
    const/high16 v17, 0x3f800000    # 1.0f

    .line 212
    .line 213
    :goto_2
    new-instance v0, Ll2/d;

    .line 214
    .line 215
    move-object v6, v0

    .line 216
    invoke-direct/range {v6 .. v18}, Ll2/d;-><init>(Ljava/util/ArrayList;IIIIIIIIIFLjava/lang/String;)V

    .line 217
    .line 218
    .line 219
    return-object v0

    .line 220
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 221
    .line 222
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 223
    .line 224
    .line 225
    throw v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_3
    const-string v1, "Error parsing AVC config"

    .line 227
    .line 228
    invoke-static {v0, v1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    goto :goto_5

    .line 233
    :goto_4
    throw v0

    .line 234
    :goto_5
    goto :goto_4
.end method
