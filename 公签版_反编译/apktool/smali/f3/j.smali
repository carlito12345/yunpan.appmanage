.class public final Lf3/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/o;


# static fields
.field public static final M:[B

.field public static final N:Lr1/p;


# instance fields
.field public A:Lf3/i;

.field public B:I

.field public C:I

.field public D:I

.field public E:Z

.field public F:Z

.field public G:Ll2/q;

.field public H:[Ll2/j0;

.field public I:[Ll2/j0;

.field public J:Z

.field public K:Z

.field public L:J

.field public final a:Li3/h;

.field public final b:I

.field public final c:Ljava/util/List;

.field public final d:Landroid/util/SparseArray;

.field public final e:Lu1/q;

.field public final f:Lu1/q;

.field public final g:Lu1/q;

.field public final h:[B

.field public final i:Lu1/q;

.field public final j:Lua/i8;

.field public final k:Lu1/q;

.field public final l:Ljava/util/ArrayDeque;

.field public final m:Ljava/util/ArrayDeque;

.field public final n:Lb5/i;

.field public final o:Landroidx/room/o;

.field public p:Lu7/y0;

.field public q:I

.field public r:I

.field public s:J

.field public t:I

.field public u:Lu1/q;

.field public v:J

.field public w:I

.field public x:J

.field public y:J

.field public z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lf3/j;->M:[B

    .line 9
    .line 10
    new-instance v0, Lr1/o;

    .line 11
    .line 12
    invoke-direct {v0}, Lr1/o;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "application/x-emsg"

    .line 16
    .line 17
    invoke-static {v1}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, v0, Lr1/o;->n:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v1, Lr1/p;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Lr1/p;-><init>(Lr1/o;)V

    .line 26
    .line 27
    .line 28
    sput-object v1, Lf3/j;->N:Lr1/p;

    .line 29
    .line 30
    return-void

    .line 31
    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>(Li3/h;I)V
    .locals 2

    .line 1
    sget-object v0, Lu7/g0;->b:Lu7/e0;

    .line 2
    .line 3
    sget-object v0, Lu7/y0;->e:Lu7/y0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lf3/j;->a:Li3/h;

    .line 9
    .line 10
    iput p2, p0, Lf3/j;->b:I

    .line 11
    .line 12
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lf3/j;->c:Ljava/util/List;

    .line 17
    .line 18
    new-instance p1, Lua/i8;

    .line 19
    .line 20
    const/4 p2, 0x7

    .line 21
    invoke-direct {p1, p2}, Lua/i8;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lf3/j;->j:Lua/i8;

    .line 25
    .line 26
    new-instance p1, Lu1/q;

    .line 27
    .line 28
    const/16 p2, 0x10

    .line 29
    .line 30
    invoke-direct {p1, p2}, Lu1/q;-><init>(I)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lf3/j;->k:Lu1/q;

    .line 34
    .line 35
    new-instance p1, Lu1/q;

    .line 36
    .line 37
    sget-object v1, Lv1/o;->a:[B

    .line 38
    .line 39
    invoke-direct {p1, v1}, Lu1/q;-><init>([B)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lf3/j;->e:Lu1/q;

    .line 43
    .line 44
    new-instance p1, Lu1/q;

    .line 45
    .line 46
    const/4 v1, 0x6

    .line 47
    invoke-direct {p1, v1}, Lu1/q;-><init>(I)V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lf3/j;->f:Lu1/q;

    .line 51
    .line 52
    new-instance p1, Lu1/q;

    .line 53
    .line 54
    invoke-direct {p1}, Lu1/q;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lf3/j;->g:Lu1/q;

    .line 58
    .line 59
    new-array p1, p2, [B

    .line 60
    .line 61
    iput-object p1, p0, Lf3/j;->h:[B

    .line 62
    .line 63
    new-instance p2, Lu1/q;

    .line 64
    .line 65
    invoke-direct {p2, p1}, Lu1/q;-><init>([B)V

    .line 66
    .line 67
    .line 68
    iput-object p2, p0, Lf3/j;->i:Lu1/q;

    .line 69
    .line 70
    new-instance p1, Ljava/util/ArrayDeque;

    .line 71
    .line 72
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object p1, p0, Lf3/j;->l:Ljava/util/ArrayDeque;

    .line 76
    .line 77
    new-instance p1, Ljava/util/ArrayDeque;

    .line 78
    .line 79
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object p1, p0, Lf3/j;->m:Ljava/util/ArrayDeque;

    .line 83
    .line 84
    new-instance p1, Landroid/util/SparseArray;

    .line 85
    .line 86
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-object p1, p0, Lf3/j;->d:Landroid/util/SparseArray;

    .line 90
    .line 91
    iput-object v0, p0, Lf3/j;->p:Lu7/y0;

    .line 92
    .line 93
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    iput-wide p1, p0, Lf3/j;->y:J

    .line 99
    .line 100
    iput-wide p1, p0, Lf3/j;->x:J

    .line 101
    .line 102
    iput-wide p1, p0, Lf3/j;->z:J

    .line 103
    .line 104
    sget-object p1, Ll2/q;->C0:Lha/j2;

    .line 105
    .line 106
    iput-object p1, p0, Lf3/j;->G:Ll2/q;

    .line 107
    .line 108
    const/4 p1, 0x0

    .line 109
    new-array p2, p1, [Ll2/j0;

    .line 110
    .line 111
    iput-object p2, p0, Lf3/j;->H:[Ll2/j0;

    .line 112
    .line 113
    new-array p1, p1, [Ll2/j0;

    .line 114
    .line 115
    iput-object p1, p0, Lf3/j;->I:[Ll2/j0;

    .line 116
    .line 117
    new-instance p1, Lb5/i;

    .line 118
    .line 119
    new-instance p2, Lf3/g;

    .line 120
    .line 121
    invoke-direct {p2, p0}, Lf3/g;-><init>(Lf3/j;)V

    .line 122
    .line 123
    .line 124
    invoke-direct {p1, p2}, Lb5/i;-><init>(Lv1/t;)V

    .line 125
    .line 126
    .line 127
    iput-object p1, p0, Lf3/j;->n:Lb5/i;

    .line 128
    .line 129
    new-instance p1, Landroidx/room/o;

    .line 130
    .line 131
    const/4 p2, 0x2

    .line 132
    invoke-direct {p1, p2}, Landroidx/room/o;-><init>(I)V

    .line 133
    .line 134
    .line 135
    iput-object p1, p0, Lf3/j;->o:Landroidx/room/o;

    .line 136
    .line 137
    const-wide/16 p1, -0x1

    .line 138
    .line 139
    iput-wide p1, p0, Lf3/j;->L:J

    .line 140
    .line 141
    return-void
.end method

.method public static i(Ljava/util/ArrayList;)Lr1/l;
    .locals 18

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    :goto_0
    if-ge v3, v0, :cond_b

    .line 8
    .line 9
    move-object/from16 v5, p0

    .line 10
    .line 11
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v6

    .line 15
    check-cast v6, Lv1/d;

    .line 16
    .line 17
    iget v7, v6, Lab/a;->b:I

    .line 18
    .line 19
    const v8, 0x70737368    # 3.013775E29f

    .line 20
    .line 21
    .line 22
    if-ne v7, v8, :cond_a

    .line 23
    .line 24
    if-nez v4, :cond_0

    .line 25
    .line 26
    new-instance v4, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v6, v6, Lv1/d;->c:Lu1/q;

    .line 32
    .line 33
    iget-object v6, v6, Lu1/q;->a:[B

    .line 34
    .line 35
    new-instance v7, Lu1/q;

    .line 36
    .line 37
    invoke-direct {v7, v6}, Lu1/q;-><init>([B)V

    .line 38
    .line 39
    .line 40
    iget v8, v7, Lu1/q;->c:I

    .line 41
    .line 42
    const/16 v9, 0x20

    .line 43
    .line 44
    const/4 v10, 0x0

    .line 45
    if-ge v8, v9, :cond_1

    .line 46
    .line 47
    :goto_1
    move/from16 v16, v3

    .line 48
    .line 49
    goto/16 :goto_3

    .line 50
    .line 51
    :cond_1
    const/4 v8, 0x0

    .line 52
    invoke-virtual {v7, v8}, Lu1/q;->O(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v7}, Lu1/q;->a()I

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    invoke-virtual {v7}, Lu1/q;->o()I

    .line 60
    .line 61
    .line 62
    move-result v11

    .line 63
    if-eq v11, v9, :cond_2

    .line 64
    .line 65
    new-instance v7, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v8, "Advertised atom size ("

    .line 68
    .line 69
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v8, ") does not match buffer size: "

    .line 76
    .line 77
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    invoke-static {v7}, Lu1/a;->p(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    invoke-virtual {v7}, Lu1/q;->o()I

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    const v11, 0x70737368    # 3.013775E29f

    .line 96
    .line 97
    .line 98
    if-eq v9, v11, :cond_3

    .line 99
    .line 100
    const-string v7, "Atom type is not pssh: "

    .line 101
    .line 102
    invoke-static {v9, v7}, Lorg/bouncycastle/jcajce/provider/digest/a;->o(ILjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_3
    invoke-virtual {v7}, Lu1/q;->o()I

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    invoke-static {v9}, Lf3/e;->e(I)I

    .line 111
    .line 112
    .line 113
    move-result v9

    .line 114
    const/4 v11, 0x1

    .line 115
    if-le v9, v11, :cond_4

    .line 116
    .line 117
    const-string v7, "Unsupported pssh version: "

    .line 118
    .line 119
    invoke-static {v9, v7}, Lorg/bouncycastle/jcajce/provider/digest/a;->o(ILjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_4
    new-instance v12, Ljava/util/UUID;

    .line 124
    .line 125
    invoke-virtual {v7}, Lu1/q;->v()J

    .line 126
    .line 127
    .line 128
    move-result-wide v13

    .line 129
    move/from16 v16, v3

    .line 130
    .line 131
    invoke-virtual {v7}, Lu1/q;->v()J

    .line 132
    .line 133
    .line 134
    move-result-wide v2

    .line 135
    invoke-direct {v12, v13, v14, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 136
    .line 137
    .line 138
    if-ne v9, v11, :cond_5

    .line 139
    .line 140
    invoke-virtual {v7}, Lu1/q;->F()I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    new-array v3, v2, [Ljava/util/UUID;

    .line 145
    .line 146
    const/4 v11, 0x0

    .line 147
    :goto_2
    if-ge v11, v2, :cond_6

    .line 148
    .line 149
    new-instance v13, Ljava/util/UUID;

    .line 150
    .line 151
    move/from16 v17, v2

    .line 152
    .line 153
    invoke-virtual {v7}, Lu1/q;->v()J

    .line 154
    .line 155
    .line 156
    move-result-wide v1

    .line 157
    invoke-virtual {v7}, Lu1/q;->v()J

    .line 158
    .line 159
    .line 160
    move-result-wide v14

    .line 161
    invoke-direct {v13, v1, v2, v14, v15}, Ljava/util/UUID;-><init>(JJ)V

    .line 162
    .line 163
    .line 164
    aput-object v13, v3, v11

    .line 165
    .line 166
    add-int/lit8 v11, v11, 0x1

    .line 167
    .line 168
    move/from16 v2, v17

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_5
    move-object v3, v10

    .line 172
    :cond_6
    invoke-virtual {v7}, Lu1/q;->F()I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    invoke-virtual {v7}, Lu1/q;->a()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    if-eq v1, v2, :cond_7

    .line 181
    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    const-string v7, "Atom data size ("

    .line 185
    .line 186
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v1, ") does not match the bytes left: "

    .line 193
    .line 194
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-static {v1}, Lu1/a;->p(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_7
    new-array v2, v1, [B

    .line 209
    .line 210
    invoke-virtual {v7, v8, v1, v2}, Lu1/q;->l(II[B)V

    .line 211
    .line 212
    .line 213
    new-instance v10, La1/i;

    .line 214
    .line 215
    invoke-direct {v10, v12, v9, v2, v3}, La1/i;-><init>(Ljava/util/UUID;I[B[Ljava/util/UUID;)V

    .line 216
    .line 217
    .line 218
    :goto_3
    if-nez v10, :cond_8

    .line 219
    .line 220
    const/4 v14, 0x0

    .line 221
    goto :goto_4

    .line 222
    :cond_8
    iget-object v1, v10, La1/i;->b:Ljava/lang/Object;

    .line 223
    .line 224
    move-object v14, v1

    .line 225
    check-cast v14, Ljava/util/UUID;

    .line 226
    .line 227
    :goto_4
    if-nez v14, :cond_9

    .line 228
    .line 229
    const-string v1, "Skipped pssh atom (failed to extract uuid)"

    .line 230
    .line 231
    invoke-static {v1}, Lu1/a;->p(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    goto :goto_5

    .line 235
    :cond_9
    new-instance v1, Lr1/k;

    .line 236
    .line 237
    const-string v2, "video/mp4"

    .line 238
    .line 239
    const/4 v3, 0x0

    .line 240
    invoke-direct {v1, v14, v3, v2, v6}, Lr1/k;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    goto :goto_5

    .line 247
    :cond_a
    move/from16 v16, v3

    .line 248
    .line 249
    :goto_5
    add-int/lit8 v3, v16, 0x1

    .line 250
    .line 251
    goto/16 :goto_0

    .line 252
    .line 253
    :cond_b
    if-nez v4, :cond_c

    .line 254
    .line 255
    const/4 v1, 0x0

    .line 256
    goto :goto_6

    .line 257
    :cond_c
    new-instance v0, Lr1/l;

    .line 258
    .line 259
    const/4 v1, 0x0

    .line 260
    new-array v2, v1, [Lr1/k;

    .line 261
    .line 262
    invoke-interface {v4, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    check-cast v2, [Lr1/k;

    .line 267
    .line 268
    const/4 v3, 0x0

    .line 269
    invoke-direct {v0, v3, v1, v2}, Lr1/l;-><init>(Ljava/lang/String;Z[Lr1/k;)V

    .line 270
    .line 271
    .line 272
    move-object v1, v0

    .line 273
    :goto_6
    return-object v1
.end method

.method public static j(Lu1/q;ILf3/u;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    add-int/lit8 p1, p1, 0x8

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lu1/q;->O(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lu1/q;->o()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    sget-object v1, Lf3/e;->a:[B

    .line 12
    .line 13
    and-int/lit8 v1, p1, 0x1

    .line 14
    .line 15
    if-nez v1, :cond_3

    .line 16
    .line 17
    and-int/lit8 p1, p1, 0x2

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    invoke-virtual {p0}, Lu1/q;->F()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    iget-object p0, p2, Lf3/u;->l:[Z

    .line 32
    .line 33
    iget p1, p2, Lf3/u;->e:I

    .line 34
    .line 35
    invoke-static {p0, v1, p1, v1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    iget v3, p2, Lf3/u;->e:I

    .line 40
    .line 41
    if-ne v2, v3, :cond_2

    .line 42
    .line 43
    iget-object v3, p2, Lf3/u;->l:[Z

    .line 44
    .line 45
    invoke-static {v3, v1, v2, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lu1/q;->a()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iget-object v2, p2, Lf3/u;->n:Lu1/q;

    .line 53
    .line 54
    invoke-virtual {v2, p1}, Lu1/q;->L(I)V

    .line 55
    .line 56
    .line 57
    iput-boolean v0, p2, Lf3/u;->k:Z

    .line 58
    .line 59
    iput-boolean v0, p2, Lf3/u;->o:Z

    .line 60
    .line 61
    iget-object p1, v2, Lu1/q;->a:[B

    .line 62
    .line 63
    iget v0, v2, Lu1/q;->c:I

    .line 64
    .line 65
    invoke-virtual {p0, v1, v0, p1}, Lu1/q;->l(II[B)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v1}, Lu1/q;->O(I)V

    .line 69
    .line 70
    .line 71
    iput-boolean v1, p2, Lf3/u;->o:Z

    .line 72
    .line 73
    return-void

    .line 74
    :cond_2
    const-string p0, "Senc sample count "

    .line 75
    .line 76
    const-string p1, " is different from fragment sample count"

    .line 77
    .line 78
    invoke-static {p0, v2, p1}, Lg/b;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    iget p1, p2, Lf3/u;->e:I

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    const/4 p1, 0x0

    .line 92
    invoke-static {p1, p0}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    throw p0

    .line 97
    :cond_3
    const-string p0, "Overriding TrackEncryptionBox parameters is unsupported."

    .line 98
    .line 99
    invoke-static {p0}, Lr1/f0;->b(Ljava/lang/String;)Lr1/f0;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    throw p0
.end method

.method public static k(JLu1/q;)Landroid/util/Pair;
    .locals 26

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lu1/q;->O(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p2 .. p2}, Lu1/q;->o()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Lf3/e;->e(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x4

    .line 17
    invoke-virtual {v0, v2}, Lu1/q;->P(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual/range {p2 .. p2}, Lu1/q;->D()J

    .line 21
    .line 22
    .line 23
    move-result-wide v10

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    invoke-virtual/range {p2 .. p2}, Lu1/q;->D()J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    invoke-virtual/range {p2 .. p2}, Lu1/q;->D()J

    .line 31
    .line 32
    .line 33
    move-result-wide v5

    .line 34
    :goto_0
    add-long v5, v5, p0

    .line 35
    .line 36
    move-wide v12, v3

    .line 37
    move-wide v14, v5

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lu1/q;->H()J

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    invoke-virtual/range {p2 .. p2}, Lu1/q;->H()J

    .line 44
    .line 45
    .line 46
    move-result-wide v5

    .line 47
    goto :goto_0

    .line 48
    :goto_1
    sget-object v1, Lu1/f0;->a:Ljava/lang/String;

    .line 49
    .line 50
    sget-object v9, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 51
    .line 52
    const-wide/32 v5, 0xf4240

    .line 53
    .line 54
    .line 55
    move-wide v3, v12

    .line 56
    move-wide v7, v10

    .line 57
    invoke-static/range {v3 .. v9}, Lu1/f0;->M(JJJLjava/math/RoundingMode;)J

    .line 58
    .line 59
    .line 60
    move-result-wide v16

    .line 61
    const/4 v1, 0x2

    .line 62
    invoke-virtual {v0, v1}, Lu1/q;->P(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual/range {p2 .. p2}, Lu1/q;->I()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    new-array v9, v1, [I

    .line 70
    .line 71
    new-array v7, v1, [J

    .line 72
    .line 73
    new-array v8, v1, [J

    .line 74
    .line 75
    new-array v5, v1, [J

    .line 76
    .line 77
    const/4 v3, 0x0

    .line 78
    move-wide v3, v12

    .line 79
    move-wide/from16 v18, v16

    .line 80
    .line 81
    const/4 v12, 0x0

    .line 82
    :goto_2
    if-ge v12, v1, :cond_2

    .line 83
    .line 84
    invoke-virtual/range {p2 .. p2}, Lu1/q;->o()I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    const/high16 v13, -0x80000000

    .line 89
    .line 90
    and-int/2addr v13, v6

    .line 91
    if-nez v13, :cond_1

    .line 92
    .line 93
    invoke-virtual/range {p2 .. p2}, Lu1/q;->D()J

    .line 94
    .line 95
    .line 96
    move-result-wide v20

    .line 97
    const v13, 0x7fffffff

    .line 98
    .line 99
    .line 100
    and-int/2addr v6, v13

    .line 101
    aput v6, v9, v12

    .line 102
    .line 103
    aput-wide v14, v7, v12

    .line 104
    .line 105
    aput-wide v18, v5, v12

    .line 106
    .line 107
    add-long v18, v3, v20

    .line 108
    .line 109
    sget-object v13, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 110
    .line 111
    const-wide/32 v20, 0xf4240

    .line 112
    .line 113
    .line 114
    move-wide/from16 v3, v18

    .line 115
    .line 116
    move-object v2, v5

    .line 117
    move-wide/from16 v5, v20

    .line 118
    .line 119
    move-object/from16 v22, v7

    .line 120
    .line 121
    move-object/from16 v23, v8

    .line 122
    .line 123
    move-wide v7, v10

    .line 124
    move/from16 p0, v1

    .line 125
    .line 126
    move-object v1, v9

    .line 127
    move-object v9, v13

    .line 128
    invoke-static/range {v3 .. v9}, Lu1/f0;->M(JJJLjava/math/RoundingMode;)J

    .line 129
    .line 130
    .line 131
    move-result-wide v3

    .line 132
    aget-wide v5, v2, v12

    .line 133
    .line 134
    sub-long v5, v3, v5

    .line 135
    .line 136
    move-object/from16 v7, v23

    .line 137
    .line 138
    aput-wide v5, v7, v12

    .line 139
    .line 140
    const/4 v5, 0x4

    .line 141
    invoke-virtual {v0, v5}, Lu1/q;->P(I)V

    .line 142
    .line 143
    .line 144
    aget v6, v1, v12

    .line 145
    .line 146
    int-to-long v8, v6

    .line 147
    add-long/2addr v14, v8

    .line 148
    add-int/lit8 v12, v12, 0x1

    .line 149
    .line 150
    move-object v9, v1

    .line 151
    move-object v5, v2

    .line 152
    move-object v8, v7

    .line 153
    move-object/from16 v7, v22

    .line 154
    .line 155
    const/4 v2, 0x4

    .line 156
    move/from16 v1, p0

    .line 157
    .line 158
    move-wide/from16 v24, v3

    .line 159
    .line 160
    move-wide/from16 v3, v18

    .line 161
    .line 162
    move-wide/from16 v18, v24

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_1
    const-string v0, "Unhandled indirect reference"

    .line 166
    .line 167
    const/4 v1, 0x0

    .line 168
    invoke-static {v1, v0}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    throw v0

    .line 173
    :cond_2
    move-object v2, v5

    .line 174
    move-object/from16 v22, v7

    .line 175
    .line 176
    move-object v7, v8

    .line 177
    move-object v1, v9

    .line 178
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    new-instance v3, Ll2/j;

    .line 183
    .line 184
    move-object/from16 v4, v22

    .line 185
    .line 186
    invoke-direct {v3, v1, v4, v7, v2}, Ll2/j;-><init>([I[J[J[J)V

    .line 187
    .line 188
    .line 189
    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()Ll2/o;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final c(Ll2/q;)V
    .locals 6

    .line 1
    iget v0, p0, Lf3/j;->b:I

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x20

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    new-instance v1, Landroidx/room/i;

    .line 8
    .line 9
    iget-object v2, p0, Lf3/j;->a:Li3/h;

    .line 10
    .line 11
    invoke-direct {v1, p1, v2}, Landroidx/room/i;-><init>(Ll2/q;Li3/h;)V

    .line 12
    .line 13
    .line 14
    move-object p1, v1

    .line 15
    :cond_0
    iput-object p1, p0, Lf3/j;->G:Ll2/q;

    .line 16
    .line 17
    invoke-virtual {p0}, Lf3/j;->h()V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x2

    .line 21
    new-array p1, p1, [Ll2/j0;

    .line 22
    .line 23
    iput-object p1, p0, Lf3/j;->H:[Ll2/j0;

    .line 24
    .line 25
    and-int/lit8 v0, v0, 0x4

    .line 26
    .line 27
    const/16 v1, 0x64

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lf3/j;->G:Ll2/q;

    .line 33
    .line 34
    const/4 v3, 0x5

    .line 35
    invoke-interface {v0, v1, v3}, Ll2/q;->z(II)Ll2/j0;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    aput-object v0, p1, v2

    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    const/16 v1, 0x65

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 p1, 0x0

    .line 46
    :goto_0
    iget-object v0, p0, Lf3/j;->H:[Ll2/j0;

    .line 47
    .line 48
    invoke-static {p1, v0}, Lu1/f0;->I(I[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, [Ll2/j0;

    .line 53
    .line 54
    iput-object p1, p0, Lf3/j;->H:[Ll2/j0;

    .line 55
    .line 56
    array-length v0, p1

    .line 57
    const/4 v3, 0x0

    .line 58
    :goto_1
    if-ge v3, v0, :cond_2

    .line 59
    .line 60
    aget-object v4, p1, v3

    .line 61
    .line 62
    sget-object v5, Lf3/j;->N:Lr1/p;

    .line 63
    .line 64
    invoke-interface {v4, v5}, Ll2/j0;->g(Lr1/p;)V

    .line 65
    .line 66
    .line 67
    add-int/lit8 v3, v3, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    iget-object p1, p0, Lf3/j;->c:Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    new-array v0, v0, [Ll2/j0;

    .line 77
    .line 78
    iput-object v0, p0, Lf3/j;->I:[Ll2/j0;

    .line 79
    .line 80
    :goto_2
    iget-object v0, p0, Lf3/j;->I:[Ll2/j0;

    .line 81
    .line 82
    array-length v0, v0

    .line 83
    if-ge v2, v0, :cond_3

    .line 84
    .line 85
    iget-object v0, p0, Lf3/j;->G:Ll2/q;

    .line 86
    .line 87
    add-int/lit8 v3, v1, 0x1

    .line 88
    .line 89
    const/4 v4, 0x3

    .line 90
    invoke-interface {v0, v1, v4}, Ll2/q;->z(II)Ll2/j0;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Lr1/p;

    .line 99
    .line 100
    invoke-interface {v0, v1}, Ll2/j0;->g(Lr1/p;)V

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lf3/j;->I:[Ll2/j0;

    .line 104
    .line 105
    aput-object v0, v1, v2

    .line 106
    .line 107
    add-int/lit8 v2, v2, 0x1

    .line 108
    .line 109
    move v1, v3

    .line 110
    goto :goto_2

    .line 111
    :cond_3
    return-void
.end method

.method public final d(Ll2/p;Ldd/c;)I
    .locals 37

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "video/hevc"

    .line 6
    .line 7
    const-string v3, "video/avc"

    .line 8
    .line 9
    :goto_0
    const/4 v4, 0x2

    .line 10
    const/4 v7, 0x1

    .line 11
    iget v8, v1, Lf3/j;->q:I

    .line 12
    .line 13
    iget-object v9, v1, Lf3/j;->l:Ljava/util/ArrayDeque;

    .line 14
    .line 15
    iget-object v10, v1, Lf3/j;->d:Landroid/util/SparseArray;

    .line 16
    .line 17
    iget-object v13, v1, Lf3/j;->n:Lb5/i;

    .line 18
    .line 19
    iget-object v14, v1, Lf3/j;->i:Lu1/q;

    .line 20
    .line 21
    iget-object v15, v1, Lf3/j;->o:Landroidx/room/o;

    .line 22
    .line 23
    if-eqz v8, :cond_45

    .line 24
    .line 25
    iget-object v5, v1, Lf3/j;->m:Ljava/util/ArrayDeque;

    .line 26
    .line 27
    iget v11, v1, Lf3/j;->b:I

    .line 28
    .line 29
    if-eq v8, v7, :cond_36

    .line 30
    .line 31
    const-wide v15, 0x7fffffffffffffffL

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    if-eq v8, v4, :cond_31

    .line 37
    .line 38
    iget-object v8, v1, Lf3/j;->A:Lf3/i;

    .line 39
    .line 40
    if-nez v8, :cond_b

    .line 41
    .line 42
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    move-wide/from16 v16, v15

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    const/4 v15, 0x0

    .line 50
    :goto_1
    if-ge v4, v8, :cond_6

    .line 51
    .line 52
    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v20

    .line 56
    move-object/from16 v9, v20

    .line 57
    .line 58
    check-cast v9, Lf3/i;

    .line 59
    .line 60
    iget-boolean v12, v9, Lf3/i;->m:Z

    .line 61
    .line 62
    if-nez v12, :cond_1

    .line 63
    .line 64
    iget v6, v9, Lf3/i;->f:I

    .line 65
    .line 66
    iget-object v7, v9, Lf3/i;->d:Lf3/v;

    .line 67
    .line 68
    iget v7, v7, Lf3/v;->b:I

    .line 69
    .line 70
    if-eq v6, v7, :cond_0

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_0
    move/from16 v22, v8

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_1
    :goto_2
    iget-object v6, v9, Lf3/i;->b:Lf3/u;

    .line 77
    .line 78
    if-eqz v12, :cond_2

    .line 79
    .line 80
    iget v7, v9, Lf3/i;->h:I

    .line 81
    .line 82
    move/from16 v22, v8

    .line 83
    .line 84
    iget v8, v6, Lf3/u;->d:I

    .line 85
    .line 86
    if-ne v7, v8, :cond_3

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_2
    move/from16 v22, v8

    .line 90
    .line 91
    :cond_3
    if-nez v12, :cond_4

    .line 92
    .line 93
    iget-object v6, v9, Lf3/i;->d:Lf3/v;

    .line 94
    .line 95
    iget-object v6, v6, Lf3/v;->c:[J

    .line 96
    .line 97
    iget v7, v9, Lf3/i;->f:I

    .line 98
    .line 99
    aget-wide v7, v6, v7

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_4
    iget-object v6, v6, Lf3/u;->f:[J

    .line 103
    .line 104
    iget v7, v9, Lf3/i;->h:I

    .line 105
    .line 106
    aget-wide v7, v6, v7

    .line 107
    .line 108
    :goto_3
    cmp-long v6, v7, v16

    .line 109
    .line 110
    if-gez v6, :cond_5

    .line 111
    .line 112
    move-wide/from16 v16, v7

    .line 113
    .line 114
    move-object v15, v9

    .line 115
    :cond_5
    :goto_4
    const/4 v6, 0x1

    .line 116
    add-int/2addr v4, v6

    .line 117
    move/from16 v8, v22

    .line 118
    .line 119
    const/4 v7, 0x1

    .line 120
    goto :goto_1

    .line 121
    :cond_6
    if-nez v15, :cond_8

    .line 122
    .line 123
    iget-wide v4, v1, Lf3/j;->v:J

    .line 124
    .line 125
    move-object v6, v0

    .line 126
    check-cast v6, Ll2/l;

    .line 127
    .line 128
    iget-wide v6, v6, Ll2/l;->d:J

    .line 129
    .line 130
    sub-long/2addr v4, v6

    .line 131
    long-to-int v5, v4

    .line 132
    if-ltz v5, :cond_7

    .line 133
    .line 134
    move-object v4, v0

    .line 135
    check-cast v4, Ll2/l;

    .line 136
    .line 137
    const/4 v6, 0x0

    .line 138
    invoke-virtual {v4, v5, v6}, Ll2/l;->o(IZ)Z

    .line 139
    .line 140
    .line 141
    invoke-virtual/range {p0 .. p0}, Lf3/j;->h()V

    .line 142
    .line 143
    .line 144
    goto/16 :goto_0

    .line 145
    .line 146
    :cond_7
    const-string v0, "Offset to end of mdat was negative."

    .line 147
    .line 148
    const/4 v2, 0x0

    .line 149
    invoke-static {v2, v0}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    throw v0

    .line 154
    :cond_8
    iget-boolean v4, v15, Lf3/i;->m:Z

    .line 155
    .line 156
    if-nez v4, :cond_9

    .line 157
    .line 158
    iget-object v4, v15, Lf3/i;->d:Lf3/v;

    .line 159
    .line 160
    iget-object v4, v4, Lf3/v;->c:[J

    .line 161
    .line 162
    iget v6, v15, Lf3/i;->f:I

    .line 163
    .line 164
    aget-wide v6, v4, v6

    .line 165
    .line 166
    goto :goto_5

    .line 167
    :cond_9
    iget-object v4, v15, Lf3/i;->b:Lf3/u;

    .line 168
    .line 169
    iget-object v4, v4, Lf3/u;->f:[J

    .line 170
    .line 171
    iget v6, v15, Lf3/i;->h:I

    .line 172
    .line 173
    aget-wide v6, v4, v6

    .line 174
    .line 175
    :goto_5
    move-object v4, v0

    .line 176
    check-cast v4, Ll2/l;

    .line 177
    .line 178
    iget-wide v8, v4, Ll2/l;->d:J

    .line 179
    .line 180
    sub-long/2addr v6, v8

    .line 181
    long-to-int v4, v6

    .line 182
    if-gez v4, :cond_a

    .line 183
    .line 184
    const-string v4, "Ignoring negative offset to sample data."

    .line 185
    .line 186
    invoke-static {v4}, Lu1/a;->p(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    const/4 v4, 0x0

    .line 190
    :cond_a
    move-object v6, v0

    .line 191
    check-cast v6, Ll2/l;

    .line 192
    .line 193
    const/4 v7, 0x0

    .line 194
    invoke-virtual {v6, v4, v7}, Ll2/l;->o(IZ)Z

    .line 195
    .line 196
    .line 197
    iput-object v15, v1, Lf3/j;->A:Lf3/i;

    .line 198
    .line 199
    move-object v8, v15

    .line 200
    :cond_b
    iget v4, v1, Lf3/j;->q:I

    .line 201
    .line 202
    iget-object v6, v8, Lf3/i;->a:Ll2/j0;

    .line 203
    .line 204
    const/4 v7, 0x6

    .line 205
    const/4 v9, 0x4

    .line 206
    iget-object v10, v8, Lf3/i;->b:Lf3/u;

    .line 207
    .line 208
    const/4 v12, 0x3

    .line 209
    if-ne v4, v12, :cond_16

    .line 210
    .line 211
    iget-boolean v4, v8, Lf3/i;->m:Z

    .line 212
    .line 213
    if-nez v4, :cond_c

    .line 214
    .line 215
    iget-object v4, v8, Lf3/i;->d:Lf3/v;

    .line 216
    .line 217
    iget-object v4, v4, Lf3/v;->d:[I

    .line 218
    .line 219
    iget v12, v8, Lf3/i;->f:I

    .line 220
    .line 221
    aget v4, v4, v12

    .line 222
    .line 223
    goto :goto_6

    .line 224
    :cond_c
    iget-object v4, v10, Lf3/u;->h:[I

    .line 225
    .line 226
    iget v12, v8, Lf3/i;->f:I

    .line 227
    .line 228
    aget v4, v4, v12

    .line 229
    .line 230
    :goto_6
    iput v4, v1, Lf3/j;->B:I

    .line 231
    .line 232
    iget-object v4, v8, Lf3/i;->d:Lf3/v;

    .line 233
    .line 234
    iget-object v4, v4, Lf3/v;->a:Lf3/s;

    .line 235
    .line 236
    iget-object v4, v4, Lf3/s;->g:Lr1/p;

    .line 237
    .line 238
    iget-object v12, v4, Lr1/p;->o:Ljava/lang/String;

    .line 239
    .line 240
    invoke-static {v12, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v12

    .line 244
    if-eqz v12, :cond_d

    .line 245
    .line 246
    and-int/lit8 v4, v11, 0x40

    .line 247
    .line 248
    if-eqz v4, :cond_e

    .line 249
    .line 250
    :goto_7
    const/4 v4, 0x1

    .line 251
    :goto_8
    const/4 v11, 0x1

    .line 252
    goto :goto_9

    .line 253
    :cond_d
    iget-object v4, v4, Lr1/p;->o:Ljava/lang/String;

    .line 254
    .line 255
    invoke-static {v4, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v4

    .line 259
    if-eqz v4, :cond_e

    .line 260
    .line 261
    and-int/lit16 v4, v11, 0x80

    .line 262
    .line 263
    if-eqz v4, :cond_e

    .line 264
    .line 265
    goto :goto_7

    .line 266
    :cond_e
    const/4 v4, 0x0

    .line 267
    goto :goto_8

    .line 268
    :goto_9
    xor-int/2addr v4, v11

    .line 269
    iput-boolean v4, v1, Lf3/j;->E:Z

    .line 270
    .line 271
    iget v4, v8, Lf3/i;->f:I

    .line 272
    .line 273
    iget v11, v8, Lf3/i;->i:I

    .line 274
    .line 275
    if-ge v4, v11, :cond_13

    .line 276
    .line 277
    iget v2, v1, Lf3/j;->B:I

    .line 278
    .line 279
    check-cast v0, Ll2/l;

    .line 280
    .line 281
    const/4 v3, 0x0

    .line 282
    invoke-virtual {v0, v2, v3}, Ll2/l;->o(IZ)Z

    .line 283
    .line 284
    .line 285
    invoke-virtual {v8}, Lf3/i;->b()Lf3/t;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    if-nez v0, :cond_f

    .line 290
    .line 291
    goto :goto_a

    .line 292
    :cond_f
    iget-object v2, v10, Lf3/u;->n:Lu1/q;

    .line 293
    .line 294
    iget v0, v0, Lf3/t;->d:I

    .line 295
    .line 296
    if-eqz v0, :cond_10

    .line 297
    .line 298
    invoke-virtual {v2, v0}, Lu1/q;->P(I)V

    .line 299
    .line 300
    .line 301
    :cond_10
    iget v0, v8, Lf3/i;->f:I

    .line 302
    .line 303
    iget-boolean v3, v10, Lf3/u;->k:Z

    .line 304
    .line 305
    if-eqz v3, :cond_11

    .line 306
    .line 307
    iget-object v3, v10, Lf3/u;->l:[Z

    .line 308
    .line 309
    aget-boolean v0, v3, v0

    .line 310
    .line 311
    if-eqz v0, :cond_11

    .line 312
    .line 313
    invoke-virtual {v2}, Lu1/q;->I()I

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    mul-int/lit8 v0, v0, 0x6

    .line 318
    .line 319
    invoke-virtual {v2, v0}, Lu1/q;->P(I)V

    .line 320
    .line 321
    .line 322
    :cond_11
    :goto_a
    invoke-virtual {v8}, Lf3/i;->c()Z

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    if-nez v0, :cond_12

    .line 327
    .line 328
    const/4 v0, 0x0

    .line 329
    iput-object v0, v1, Lf3/j;->A:Lf3/i;

    .line 330
    .line 331
    :cond_12
    const/4 v0, 0x3

    .line 332
    iput v0, v1, Lf3/j;->q:I

    .line 333
    .line 334
    :goto_b
    const/4 v0, 0x0

    .line 335
    goto/16 :goto_1e

    .line 336
    .line 337
    :cond_13
    iget-object v4, v8, Lf3/i;->d:Lf3/v;

    .line 338
    .line 339
    iget-object v4, v4, Lf3/v;->a:Lf3/s;

    .line 340
    .line 341
    iget v4, v4, Lf3/s;->h:I

    .line 342
    .line 343
    const/4 v11, 0x1

    .line 344
    if-ne v4, v11, :cond_14

    .line 345
    .line 346
    iget v4, v1, Lf3/j;->B:I

    .line 347
    .line 348
    const/16 v11, 0x8

    .line 349
    .line 350
    sub-int/2addr v4, v11

    .line 351
    iput v4, v1, Lf3/j;->B:I

    .line 352
    .line 353
    move-object v4, v0

    .line 354
    check-cast v4, Ll2/l;

    .line 355
    .line 356
    const/4 v12, 0x0

    .line 357
    invoke-virtual {v4, v11, v12}, Ll2/l;->o(IZ)Z

    .line 358
    .line 359
    .line 360
    :cond_14
    iget-object v4, v8, Lf3/i;->d:Lf3/v;

    .line 361
    .line 362
    iget-object v4, v4, Lf3/v;->a:Lf3/s;

    .line 363
    .line 364
    iget-object v4, v4, Lf3/s;->g:Lr1/p;

    .line 365
    .line 366
    iget-object v4, v4, Lr1/p;->o:Ljava/lang/String;

    .line 367
    .line 368
    const-string v11, "audio/ac4"

    .line 369
    .line 370
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    move-result v4

    .line 374
    if-eqz v4, :cond_15

    .line 375
    .line 376
    iget v4, v1, Lf3/j;->B:I

    .line 377
    .line 378
    const/4 v11, 0x7

    .line 379
    invoke-virtual {v8, v4, v11}, Lf3/i;->d(II)I

    .line 380
    .line 381
    .line 382
    move-result v4

    .line 383
    iput v4, v1, Lf3/j;->C:I

    .line 384
    .line 385
    iget v4, v1, Lf3/j;->B:I

    .line 386
    .line 387
    invoke-static {v4, v14}, Ll2/b;->f(ILu1/q;)V

    .line 388
    .line 389
    .line 390
    invoke-interface {v6, v11, v14}, Ll2/j0;->a(ILu1/q;)V

    .line 391
    .line 392
    .line 393
    iget v4, v1, Lf3/j;->C:I

    .line 394
    .line 395
    add-int/2addr v4, v11

    .line 396
    iput v4, v1, Lf3/j;->C:I

    .line 397
    .line 398
    const/4 v11, 0x0

    .line 399
    goto :goto_c

    .line 400
    :cond_15
    iget v4, v1, Lf3/j;->B:I

    .line 401
    .line 402
    const/4 v11, 0x0

    .line 403
    invoke-virtual {v8, v4, v11}, Lf3/i;->d(II)I

    .line 404
    .line 405
    .line 406
    move-result v4

    .line 407
    iput v4, v1, Lf3/j;->C:I

    .line 408
    .line 409
    :goto_c
    iget v4, v1, Lf3/j;->B:I

    .line 410
    .line 411
    iget v12, v1, Lf3/j;->C:I

    .line 412
    .line 413
    add-int/2addr v4, v12

    .line 414
    iput v4, v1, Lf3/j;->B:I

    .line 415
    .line 416
    iput v9, v1, Lf3/j;->q:I

    .line 417
    .line 418
    iput v11, v1, Lf3/j;->D:I

    .line 419
    .line 420
    :cond_16
    iget-object v4, v8, Lf3/i;->d:Lf3/v;

    .line 421
    .line 422
    iget-boolean v11, v8, Lf3/i;->m:Z

    .line 423
    .line 424
    if-nez v11, :cond_17

    .line 425
    .line 426
    iget-object v10, v4, Lf3/v;->f:[J

    .line 427
    .line 428
    iget v11, v8, Lf3/i;->f:I

    .line 429
    .line 430
    aget-wide v11, v10, v11

    .line 431
    .line 432
    goto :goto_d

    .line 433
    :cond_17
    iget v11, v8, Lf3/i;->f:I

    .line 434
    .line 435
    iget-object v10, v10, Lf3/u;->i:[J

    .line 436
    .line 437
    aget-wide v11, v10, v11

    .line 438
    .line 439
    :goto_d
    iget-object v4, v4, Lf3/v;->a:Lf3/s;

    .line 440
    .line 441
    iget v10, v4, Lf3/s;->k:I

    .line 442
    .line 443
    if-eqz v10, :cond_29

    .line 444
    .line 445
    iget-object v14, v1, Lf3/j;->f:Lu1/q;

    .line 446
    .line 447
    iget-object v15, v14, Lu1/q;->a:[B

    .line 448
    .line 449
    const/16 v16, 0x0

    .line 450
    .line 451
    aput-byte v16, v15, v16

    .line 452
    .line 453
    const/16 v17, 0x1

    .line 454
    .line 455
    aput-byte v16, v15, v17

    .line 456
    .line 457
    const/16 v17, 0x2

    .line 458
    .line 459
    aput-byte v16, v15, v17

    .line 460
    .line 461
    rsub-int/lit8 v10, v10, 0x4

    .line 462
    .line 463
    :goto_e
    iget v7, v1, Lf3/j;->C:I

    .line 464
    .line 465
    iget v9, v1, Lf3/j;->B:I

    .line 466
    .line 467
    if-ge v7, v9, :cond_28

    .line 468
    .line 469
    iget v7, v1, Lf3/j;->D:I

    .line 470
    .line 471
    iget-object v9, v4, Lf3/s;->g:Lr1/p;

    .line 472
    .line 473
    if-nez v7, :cond_23

    .line 474
    .line 475
    iget-object v7, v1, Lf3/j;->I:[Ll2/j0;

    .line 476
    .line 477
    array-length v7, v7

    .line 478
    move-object/from16 v29, v5

    .line 479
    .line 480
    iget v5, v4, Lf3/s;->k:I

    .line 481
    .line 482
    if-gtz v7, :cond_19

    .line 483
    .line 484
    iget-boolean v7, v1, Lf3/j;->E:Z

    .line 485
    .line 486
    if-nez v7, :cond_18

    .line 487
    .line 488
    goto :goto_f

    .line 489
    :cond_18
    move-object/from16 v17, v4

    .line 490
    .line 491
    move-object/from16 v30, v8

    .line 492
    .line 493
    goto :goto_10

    .line 494
    :cond_19
    :goto_f
    invoke-static {v9}, Lv1/o;->g(Lr1/p;)I

    .line 495
    .line 496
    .line 497
    move-result v7

    .line 498
    move-object/from16 v17, v4

    .line 499
    .line 500
    add-int v4, v5, v7

    .line 501
    .line 502
    move/from16 v19, v7

    .line 503
    .line 504
    iget v7, v1, Lf3/j;->B:I

    .line 505
    .line 506
    move-object/from16 v30, v8

    .line 507
    .line 508
    iget v8, v1, Lf3/j;->C:I

    .line 509
    .line 510
    sub-int/2addr v7, v8

    .line 511
    if-gt v4, v7, :cond_1a

    .line 512
    .line 513
    move/from16 v4, v19

    .line 514
    .line 515
    goto :goto_11

    .line 516
    :cond_1a
    :goto_10
    const/4 v4, 0x0

    .line 517
    :goto_11
    add-int/2addr v5, v4

    .line 518
    move-object v7, v0

    .line 519
    check-cast v7, Ll2/l;

    .line 520
    .line 521
    const/4 v8, 0x0

    .line 522
    invoke-virtual {v7, v15, v10, v5, v8}, Ll2/l;->b([BIIZ)Z

    .line 523
    .line 524
    .line 525
    invoke-virtual {v14, v8}, Lu1/q;->O(I)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v14}, Lu1/q;->o()I

    .line 529
    .line 530
    .line 531
    move-result v5

    .line 532
    if-ltz v5, :cond_22

    .line 533
    .line 534
    sub-int/2addr v5, v4

    .line 535
    iput v5, v1, Lf3/j;->D:I

    .line 536
    .line 537
    iget-object v5, v1, Lf3/j;->e:Lu1/q;

    .line 538
    .line 539
    invoke-virtual {v5, v8}, Lu1/q;->O(I)V

    .line 540
    .line 541
    .line 542
    const/4 v7, 0x4

    .line 543
    invoke-interface {v6, v7, v5}, Ll2/j0;->a(ILu1/q;)V

    .line 544
    .line 545
    .line 546
    iget v5, v1, Lf3/j;->C:I

    .line 547
    .line 548
    add-int/2addr v5, v7

    .line 549
    iput v5, v1, Lf3/j;->C:I

    .line 550
    .line 551
    iget v5, v1, Lf3/j;->B:I

    .line 552
    .line 553
    add-int/2addr v5, v10

    .line 554
    iput v5, v1, Lf3/j;->B:I

    .line 555
    .line 556
    iget-object v5, v1, Lf3/j;->I:[Ll2/j0;

    .line 557
    .line 558
    array-length v5, v5

    .line 559
    if-lez v5, :cond_1f

    .line 560
    .line 561
    if-lez v4, :cond_1f

    .line 562
    .line 563
    invoke-static {v9}, Lv1/o;->d(Lr1/p;)Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v5

    .line 567
    if-nez v5, :cond_1b

    .line 568
    .line 569
    goto :goto_15

    .line 570
    :cond_1b
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 571
    .line 572
    .line 573
    move-result v7

    .line 574
    sparse-switch v7, :sswitch_data_0

    .line 575
    .line 576
    .line 577
    :goto_12
    const/4 v5, -0x1

    .line 578
    goto :goto_13

    .line 579
    :sswitch_0
    const-string v7, "video/vvc"

    .line 580
    .line 581
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 582
    .line 583
    .line 584
    move-result v5

    .line 585
    if-nez v5, :cond_1c

    .line 586
    .line 587
    goto :goto_12

    .line 588
    :cond_1c
    const/4 v5, 0x2

    .line 589
    goto :goto_13

    .line 590
    :sswitch_1
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 591
    .line 592
    .line 593
    move-result v5

    .line 594
    if-nez v5, :cond_1d

    .line 595
    .line 596
    goto :goto_12

    .line 597
    :cond_1d
    const/4 v5, 0x1

    .line 598
    goto :goto_13

    .line 599
    :sswitch_2
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 600
    .line 601
    .line 602
    move-result v5

    .line 603
    if-nez v5, :cond_1e

    .line 604
    .line 605
    goto :goto_12

    .line 606
    :cond_1e
    const/4 v5, 0x0

    .line 607
    :goto_13
    packed-switch v5, :pswitch_data_0

    .line 608
    .line 609
    .line 610
    goto :goto_15

    .line 611
    :pswitch_0
    const/4 v5, 0x5

    .line 612
    aget-byte v5, v15, v5

    .line 613
    .line 614
    and-int/lit16 v5, v5, 0xf8

    .line 615
    .line 616
    const/4 v7, 0x3

    .line 617
    shr-int/2addr v5, v7

    .line 618
    const/16 v7, 0x17

    .line 619
    .line 620
    if-ne v5, v7, :cond_1f

    .line 621
    .line 622
    const/4 v8, 0x6

    .line 623
    goto :goto_14

    .line 624
    :pswitch_1
    const/4 v5, 0x4

    .line 625
    aget-byte v7, v15, v5

    .line 626
    .line 627
    and-int/lit8 v7, v7, 0x1f

    .line 628
    .line 629
    const/4 v8, 0x6

    .line 630
    if-ne v7, v8, :cond_20

    .line 631
    .line 632
    goto :goto_14

    .line 633
    :pswitch_2
    const/4 v5, 0x4

    .line 634
    const/4 v8, 0x6

    .line 635
    aget-byte v7, v15, v5

    .line 636
    .line 637
    and-int/lit8 v5, v7, 0x7e

    .line 638
    .line 639
    const/4 v7, 0x1

    .line 640
    shr-int/2addr v5, v7

    .line 641
    const/16 v7, 0x27

    .line 642
    .line 643
    if-ne v5, v7, :cond_20

    .line 644
    .line 645
    :goto_14
    const/4 v5, 0x1

    .line 646
    goto :goto_16

    .line 647
    :cond_1f
    :goto_15
    const/4 v8, 0x6

    .line 648
    :cond_20
    const/4 v5, 0x0

    .line 649
    :goto_16
    iput-boolean v5, v1, Lf3/j;->F:Z

    .line 650
    .line 651
    invoke-interface {v6, v4, v14}, Ll2/j0;->a(ILu1/q;)V

    .line 652
    .line 653
    .line 654
    iget v5, v1, Lf3/j;->C:I

    .line 655
    .line 656
    add-int/2addr v5, v4

    .line 657
    iput v5, v1, Lf3/j;->C:I

    .line 658
    .line 659
    if-lez v4, :cond_21

    .line 660
    .line 661
    iget-boolean v5, v1, Lf3/j;->E:Z

    .line 662
    .line 663
    if-nez v5, :cond_21

    .line 664
    .line 665
    invoke-static {v15, v4, v9}, Lv1/o;->f([BILr1/p;)Z

    .line 666
    .line 667
    .line 668
    move-result v4

    .line 669
    if-eqz v4, :cond_21

    .line 670
    .line 671
    const/4 v4, 0x1

    .line 672
    iput-boolean v4, v1, Lf3/j;->E:Z

    .line 673
    .line 674
    :cond_21
    move-object/from16 v4, v17

    .line 675
    .line 676
    :goto_17
    move-object/from16 v5, v29

    .line 677
    .line 678
    move-object/from16 v8, v30

    .line 679
    .line 680
    const/4 v9, 0x4

    .line 681
    goto/16 :goto_e

    .line 682
    .line 683
    :cond_22
    const-string v0, "Invalid NAL length"

    .line 684
    .line 685
    const/4 v2, 0x0

    .line 686
    invoke-static {v2, v0}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    throw v0

    .line 691
    :cond_23
    move-object/from16 v17, v4

    .line 692
    .line 693
    move-object/from16 v29, v5

    .line 694
    .line 695
    move-object/from16 v30, v8

    .line 696
    .line 697
    const/4 v8, 0x6

    .line 698
    iget-boolean v4, v1, Lf3/j;->F:Z

    .line 699
    .line 700
    if-eqz v4, :cond_27

    .line 701
    .line 702
    iget-object v4, v1, Lf3/j;->g:Lu1/q;

    .line 703
    .line 704
    invoke-virtual {v4, v7}, Lu1/q;->L(I)V

    .line 705
    .line 706
    .line 707
    iget-object v5, v4, Lu1/q;->a:[B

    .line 708
    .line 709
    iget v7, v1, Lf3/j;->D:I

    .line 710
    .line 711
    move-object v8, v0

    .line 712
    check-cast v8, Ll2/l;

    .line 713
    .line 714
    move-object/from16 v22, v2

    .line 715
    .line 716
    const/4 v2, 0x0

    .line 717
    invoke-virtual {v8, v5, v2, v7, v2}, Ll2/l;->b([BIIZ)Z

    .line 718
    .line 719
    .line 720
    iget v5, v1, Lf3/j;->D:I

    .line 721
    .line 722
    invoke-interface {v6, v5, v4}, Ll2/j0;->a(ILu1/q;)V

    .line 723
    .line 724
    .line 725
    iget v5, v1, Lf3/j;->D:I

    .line 726
    .line 727
    iget-object v7, v4, Lu1/q;->a:[B

    .line 728
    .line 729
    iget v8, v4, Lu1/q;->c:I

    .line 730
    .line 731
    invoke-static {v8, v7}, Lv1/o;->p(I[B)I

    .line 732
    .line 733
    .line 734
    move-result v7

    .line 735
    invoke-virtual {v4, v2}, Lu1/q;->O(I)V

    .line 736
    .line 737
    .line 738
    invoke-virtual {v4, v7}, Lu1/q;->N(I)V

    .line 739
    .line 740
    .line 741
    iget v7, v9, Lr1/p;->q:I

    .line 742
    .line 743
    const/4 v8, -0x1

    .line 744
    if-ne v7, v8, :cond_24

    .line 745
    .line 746
    iget v7, v13, Lb5/i;->a:I

    .line 747
    .line 748
    if-eqz v7, :cond_25

    .line 749
    .line 750
    invoke-virtual {v13, v2}, Lb5/i;->n(I)V

    .line 751
    .line 752
    .line 753
    goto :goto_18

    .line 754
    :cond_24
    iget v2, v13, Lb5/i;->a:I

    .line 755
    .line 756
    if-eq v2, v7, :cond_25

    .line 757
    .line 758
    invoke-virtual {v13, v7}, Lb5/i;->n(I)V

    .line 759
    .line 760
    .line 761
    :cond_25
    :goto_18
    invoke-virtual {v13, v11, v12, v4}, Lb5/i;->a(JLu1/q;)V

    .line 762
    .line 763
    .line 764
    invoke-virtual/range {v30 .. v30}, Lf3/i;->a()I

    .line 765
    .line 766
    .line 767
    move-result v2

    .line 768
    const/4 v4, 0x4

    .line 769
    and-int/2addr v2, v4

    .line 770
    if-eqz v2, :cond_26

    .line 771
    .line 772
    const/4 v2, 0x0

    .line 773
    invoke-virtual {v13, v2}, Lb5/i;->d(I)V

    .line 774
    .line 775
    .line 776
    goto :goto_19

    .line 777
    :cond_26
    const/4 v2, 0x0

    .line 778
    goto :goto_19

    .line 779
    :cond_27
    move-object/from16 v22, v2

    .line 780
    .line 781
    const/4 v2, 0x0

    .line 782
    const/4 v4, 0x4

    .line 783
    invoke-interface {v6, v0, v7, v2}, Ll2/j0;->e(Lr1/h;IZ)I

    .line 784
    .line 785
    .line 786
    move-result v5

    .line 787
    :goto_19
    iget v2, v1, Lf3/j;->C:I

    .line 788
    .line 789
    add-int/2addr v2, v5

    .line 790
    iput v2, v1, Lf3/j;->C:I

    .line 791
    .line 792
    iget v2, v1, Lf3/j;->D:I

    .line 793
    .line 794
    sub-int/2addr v2, v5

    .line 795
    iput v2, v1, Lf3/j;->D:I

    .line 796
    .line 797
    move-object/from16 v4, v17

    .line 798
    .line 799
    move-object/from16 v2, v22

    .line 800
    .line 801
    goto :goto_17

    .line 802
    :cond_28
    move-object/from16 v29, v5

    .line 803
    .line 804
    move-object/from16 v30, v8

    .line 805
    .line 806
    goto :goto_1b

    .line 807
    :cond_29
    move-object/from16 v29, v5

    .line 808
    .line 809
    move-object/from16 v30, v8

    .line 810
    .line 811
    :goto_1a
    iget v2, v1, Lf3/j;->C:I

    .line 812
    .line 813
    iget v3, v1, Lf3/j;->B:I

    .line 814
    .line 815
    if-ge v2, v3, :cond_2a

    .line 816
    .line 817
    sub-int/2addr v3, v2

    .line 818
    const/4 v2, 0x0

    .line 819
    invoke-interface {v6, v0, v3, v2}, Ll2/j0;->e(Lr1/h;IZ)I

    .line 820
    .line 821
    .line 822
    move-result v3

    .line 823
    iget v2, v1, Lf3/j;->C:I

    .line 824
    .line 825
    add-int/2addr v2, v3

    .line 826
    iput v2, v1, Lf3/j;->C:I

    .line 827
    .line 828
    goto :goto_1a

    .line 829
    :cond_2a
    :goto_1b
    invoke-virtual/range {v30 .. v30}, Lf3/i;->a()I

    .line 830
    .line 831
    .line 832
    move-result v0

    .line 833
    iget-boolean v2, v1, Lf3/j;->E:Z

    .line 834
    .line 835
    if-nez v2, :cond_2b

    .line 836
    .line 837
    const/high16 v2, 0x4000000

    .line 838
    .line 839
    or-int/2addr v0, v2

    .line 840
    :cond_2b
    move/from16 v25, v0

    .line 841
    .line 842
    invoke-virtual/range {v30 .. v30}, Lf3/i;->b()Lf3/t;

    .line 843
    .line 844
    .line 845
    move-result-object v0

    .line 846
    if-eqz v0, :cond_2c

    .line 847
    .line 848
    iget-object v0, v0, Lf3/t;->c:Ll2/i0;

    .line 849
    .line 850
    move-object/from16 v28, v0

    .line 851
    .line 852
    goto :goto_1c

    .line 853
    :cond_2c
    const/16 v28, 0x0

    .line 854
    .line 855
    :goto_1c
    iget v0, v1, Lf3/j;->B:I

    .line 856
    .line 857
    const/16 v27, 0x0

    .line 858
    .line 859
    move-object/from16 v22, v6

    .line 860
    .line 861
    move-wide/from16 v23, v11

    .line 862
    .line 863
    move/from16 v26, v0

    .line 864
    .line 865
    invoke-interface/range {v22 .. v28}, Ll2/j0;->b(JIIILl2/i0;)V

    .line 866
    .line 867
    .line 868
    :cond_2d
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 869
    .line 870
    .line 871
    move-result v0

    .line 872
    if-nez v0, :cond_2f

    .line 873
    .line 874
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 875
    .line 876
    .line 877
    move-result-object v0

    .line 878
    check-cast v0, Lf3/h;

    .line 879
    .line 880
    iget v2, v1, Lf3/j;->w:I

    .line 881
    .line 882
    iget v3, v0, Lf3/h;->c:I

    .line 883
    .line 884
    sub-int/2addr v2, v3

    .line 885
    iput v2, v1, Lf3/j;->w:I

    .line 886
    .line 887
    iget-boolean v2, v0, Lf3/h;->b:Z

    .line 888
    .line 889
    iget-wide v3, v0, Lf3/h;->a:J

    .line 890
    .line 891
    if-eqz v2, :cond_2e

    .line 892
    .line 893
    add-long/2addr v3, v11

    .line 894
    :cond_2e
    iget-object v2, v1, Lf3/j;->H:[Ll2/j0;

    .line 895
    .line 896
    array-length v5, v2

    .line 897
    const/4 v6, 0x0

    .line 898
    :goto_1d
    if-ge v6, v5, :cond_2d

    .line 899
    .line 900
    aget-object v13, v2, v6

    .line 901
    .line 902
    iget v7, v1, Lf3/j;->w:I

    .line 903
    .line 904
    const/16 v19, 0x0

    .line 905
    .line 906
    const/16 v16, 0x1

    .line 907
    .line 908
    iget v8, v0, Lf3/h;->c:I

    .line 909
    .line 910
    move-wide v14, v3

    .line 911
    move/from16 v17, v8

    .line 912
    .line 913
    move/from16 v18, v7

    .line 914
    .line 915
    invoke-interface/range {v13 .. v19}, Ll2/j0;->b(JIIILl2/i0;)V

    .line 916
    .line 917
    .line 918
    const/4 v7, 0x1

    .line 919
    add-int/2addr v6, v7

    .line 920
    goto :goto_1d

    .line 921
    :cond_2f
    invoke-virtual/range {v30 .. v30}, Lf3/i;->c()Z

    .line 922
    .line 923
    .line 924
    move-result v0

    .line 925
    if-nez v0, :cond_30

    .line 926
    .line 927
    const/4 v0, 0x0

    .line 928
    iput-object v0, v1, Lf3/j;->A:Lf3/i;

    .line 929
    .line 930
    :cond_30
    const/4 v0, 0x3

    .line 931
    iput v0, v1, Lf3/j;->q:I

    .line 932
    .line 933
    goto/16 :goto_b

    .line 934
    .line 935
    :goto_1e
    return v0

    .line 936
    :cond_31
    move-object/from16 v22, v2

    .line 937
    .line 938
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    .line 939
    .line 940
    .line 941
    move-result v2

    .line 942
    const/4 v4, 0x0

    .line 943
    const/4 v5, 0x0

    .line 944
    :goto_1f
    if-ge v5, v2, :cond_33

    .line 945
    .line 946
    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 947
    .line 948
    .line 949
    move-result-object v6

    .line 950
    check-cast v6, Lf3/i;

    .line 951
    .line 952
    iget-object v6, v6, Lf3/i;->b:Lf3/u;

    .line 953
    .line 954
    iget-boolean v7, v6, Lf3/u;->o:Z

    .line 955
    .line 956
    if-eqz v7, :cond_32

    .line 957
    .line 958
    iget-wide v6, v6, Lf3/u;->c:J

    .line 959
    .line 960
    cmp-long v8, v6, v15

    .line 961
    .line 962
    if-gez v8, :cond_32

    .line 963
    .line 964
    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 965
    .line 966
    .line 967
    move-result-object v4

    .line 968
    check-cast v4, Lf3/i;

    .line 969
    .line 970
    move-wide v15, v6

    .line 971
    :cond_32
    const/4 v6, 0x1

    .line 972
    add-int/2addr v5, v6

    .line 973
    goto :goto_1f

    .line 974
    :cond_33
    if-nez v4, :cond_34

    .line 975
    .line 976
    const/4 v2, 0x3

    .line 977
    iput v2, v1, Lf3/j;->q:I

    .line 978
    .line 979
    goto :goto_20

    .line 980
    :cond_34
    move-object v2, v0

    .line 981
    check-cast v2, Ll2/l;

    .line 982
    .line 983
    iget-wide v5, v2, Ll2/l;->d:J

    .line 984
    .line 985
    sub-long v5, v15, v5

    .line 986
    .line 987
    long-to-int v2, v5

    .line 988
    if-ltz v2, :cond_35

    .line 989
    .line 990
    move-object v5, v0

    .line 991
    check-cast v5, Ll2/l;

    .line 992
    .line 993
    const/4 v6, 0x0

    .line 994
    invoke-virtual {v5, v2, v6}, Ll2/l;->o(IZ)Z

    .line 995
    .line 996
    .line 997
    iget-object v2, v4, Lf3/i;->b:Lf3/u;

    .line 998
    .line 999
    iget-object v4, v2, Lf3/u;->n:Lu1/q;

    .line 1000
    .line 1001
    iget-object v7, v4, Lu1/q;->a:[B

    .line 1002
    .line 1003
    iget v8, v4, Lu1/q;->c:I

    .line 1004
    .line 1005
    invoke-virtual {v5, v7, v6, v8, v6}, Ll2/l;->b([BIIZ)Z

    .line 1006
    .line 1007
    .line 1008
    invoke-virtual {v4, v6}, Lu1/q;->O(I)V

    .line 1009
    .line 1010
    .line 1011
    iput-boolean v6, v2, Lf3/u;->o:Z

    .line 1012
    .line 1013
    :goto_20
    move-object/from16 v2, v22

    .line 1014
    .line 1015
    goto/16 :goto_0

    .line 1016
    .line 1017
    :cond_35
    const-string v0, "Offset to encryption data was negative."

    .line 1018
    .line 1019
    const/4 v2, 0x0

    .line 1020
    invoke-static {v2, v0}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v0

    .line 1024
    throw v0

    .line 1025
    :cond_36
    move-object/from16 v22, v2

    .line 1026
    .line 1027
    move-object/from16 v29, v5

    .line 1028
    .line 1029
    iget-wide v4, v1, Lf3/j;->s:J

    .line 1030
    .line 1031
    iget v2, v1, Lf3/j;->t:I

    .line 1032
    .line 1033
    int-to-long v6, v2

    .line 1034
    sub-long/2addr v4, v6

    .line 1035
    long-to-int v2, v4

    .line 1036
    iget-object v4, v1, Lf3/j;->u:Lu1/q;

    .line 1037
    .line 1038
    if-eqz v4, :cond_43

    .line 1039
    .line 1040
    iget-object v5, v4, Lu1/q;->a:[B

    .line 1041
    .line 1042
    move-object v6, v0

    .line 1043
    check-cast v6, Ll2/l;

    .line 1044
    .line 1045
    const/16 v7, 0x8

    .line 1046
    .line 1047
    const/4 v8, 0x0

    .line 1048
    invoke-virtual {v6, v5, v7, v2, v8}, Ll2/l;->b([BIIZ)Z

    .line 1049
    .line 1050
    .line 1051
    new-instance v2, Lv1/d;

    .line 1052
    .line 1053
    iget v5, v1, Lf3/j;->r:I

    .line 1054
    .line 1055
    invoke-direct {v2, v5, v4}, Lv1/d;-><init>(ILu1/q;)V

    .line 1056
    .line 1057
    .line 1058
    invoke-virtual {v9}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 1059
    .line 1060
    .line 1061
    move-result v6

    .line 1062
    if-nez v6, :cond_37

    .line 1063
    .line 1064
    invoke-virtual {v9}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v4

    .line 1068
    check-cast v4, Lv1/c;

    .line 1069
    .line 1070
    iget-object v4, v4, Lv1/c;->d:Ljava/util/ArrayList;

    .line 1071
    .line 1072
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1073
    .line 1074
    .line 1075
    goto :goto_23

    .line 1076
    :cond_37
    const v2, 0x73696478

    .line 1077
    .line 1078
    .line 1079
    if-ne v5, v2, :cond_3a

    .line 1080
    .line 1081
    move-object v2, v0

    .line 1082
    check-cast v2, Ll2/l;

    .line 1083
    .line 1084
    iget-wide v5, v2, Ll2/l;->d:J

    .line 1085
    .line 1086
    invoke-static {v5, v6, v4}, Lf3/j;->k(JLu1/q;)Landroid/util/Pair;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v4

    .line 1090
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1091
    .line 1092
    check-cast v5, Ll2/j;

    .line 1093
    .line 1094
    invoke-virtual {v15, v5}, Landroidx/room/o;->a(Ll2/j;)V

    .line 1095
    .line 1096
    .line 1097
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1098
    .line 1099
    check-cast v5, Ljava/lang/Long;

    .line 1100
    .line 1101
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 1102
    .line 1103
    .line 1104
    move-result-wide v5

    .line 1105
    iput-wide v5, v1, Lf3/j;->z:J

    .line 1106
    .line 1107
    iget-boolean v5, v1, Lf3/j;->K:Z

    .line 1108
    .line 1109
    iget-object v6, v15, Landroidx/room/o;->a:Ljava/util/LinkedHashMap;

    .line 1110
    .line 1111
    if-nez v5, :cond_39

    .line 1112
    .line 1113
    iget-object v5, v1, Lf3/j;->G:Ll2/q;

    .line 1114
    .line 1115
    invoke-interface {v6}, Ljava/util/Map;->size()I

    .line 1116
    .line 1117
    .line 1118
    move-result v7

    .line 1119
    const/4 v8, 0x1

    .line 1120
    if-ne v7, v8, :cond_38

    .line 1121
    .line 1122
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1123
    .line 1124
    check-cast v4, Ll2/c0;

    .line 1125
    .line 1126
    goto :goto_21

    .line 1127
    :cond_38
    invoke-virtual {v15}, Landroidx/room/o;->b()Ll2/j;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v4

    .line 1131
    :goto_21
    invoke-interface {v5, v4}, Ll2/q;->s(Ll2/c0;)V

    .line 1132
    .line 1133
    .line 1134
    iput-boolean v8, v1, Lf3/j;->J:Z

    .line 1135
    .line 1136
    goto :goto_22

    .line 1137
    :cond_39
    const/4 v8, 0x1

    .line 1138
    :goto_22
    and-int/lit16 v4, v11, 0x100

    .line 1139
    .line 1140
    if-eqz v4, :cond_3b

    .line 1141
    .line 1142
    iget-boolean v4, v1, Lf3/j;->K:Z

    .line 1143
    .line 1144
    if-nez v4, :cond_3b

    .line 1145
    .line 1146
    invoke-interface {v6}, Ljava/util/Map;->size()I

    .line 1147
    .line 1148
    .line 1149
    move-result v4

    .line 1150
    if-le v4, v8, :cond_3b

    .line 1151
    .line 1152
    iget-wide v4, v2, Ll2/l;->d:J

    .line 1153
    .line 1154
    iput-wide v4, v1, Lf3/j;->L:J

    .line 1155
    .line 1156
    goto :goto_23

    .line 1157
    :cond_3a
    const v2, 0x656d7367

    .line 1158
    .line 1159
    .line 1160
    if-ne v5, v2, :cond_3b

    .line 1161
    .line 1162
    iget-object v2, v1, Lf3/j;->H:[Ll2/j0;

    .line 1163
    .line 1164
    array-length v2, v2

    .line 1165
    if-nez v2, :cond_3c

    .line 1166
    .line 1167
    :cond_3b
    :goto_23
    move-object/from16 v21, v3

    .line 1168
    .line 1169
    goto/16 :goto_29

    .line 1170
    .line 1171
    :cond_3c
    const/16 v2, 0x8

    .line 1172
    .line 1173
    invoke-virtual {v4, v2}, Lu1/q;->O(I)V

    .line 1174
    .line 1175
    .line 1176
    invoke-virtual {v4}, Lu1/q;->o()I

    .line 1177
    .line 1178
    .line 1179
    move-result v2

    .line 1180
    invoke-static {v2}, Lf3/e;->e(I)I

    .line 1181
    .line 1182
    .line 1183
    move-result v2

    .line 1184
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    if-eqz v2, :cond_3e

    .line 1190
    .line 1191
    const/4 v7, 0x1

    .line 1192
    if-eq v2, v7, :cond_3d

    .line 1193
    .line 1194
    const-string v4, "Skipping unsupported emsg version: "

    .line 1195
    .line 1196
    invoke-static {v2, v4}, Lorg/bouncycastle/jcajce/provider/digest/a;->o(ILjava/lang/String;)V

    .line 1197
    .line 1198
    .line 1199
    goto :goto_23

    .line 1200
    :cond_3d
    invoke-virtual {v4}, Lu1/q;->D()J

    .line 1201
    .line 1202
    .line 1203
    move-result-wide v14

    .line 1204
    invoke-virtual {v4}, Lu1/q;->H()J

    .line 1205
    .line 1206
    .line 1207
    move-result-wide v7

    .line 1208
    sget-object v2, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 1209
    .line 1210
    const-wide/32 v9, 0xf4240

    .line 1211
    .line 1212
    .line 1213
    move-wide v11, v14

    .line 1214
    move-object v13, v2

    .line 1215
    invoke-static/range {v7 .. v13}, Lu1/f0;->M(JJJLjava/math/RoundingMode;)J

    .line 1216
    .line 1217
    .line 1218
    move-result-wide v16

    .line 1219
    invoke-virtual {v4}, Lu1/q;->D()J

    .line 1220
    .line 1221
    .line 1222
    move-result-wide v7

    .line 1223
    const-wide/16 v9, 0x3e8

    .line 1224
    .line 1225
    move-wide v11, v14

    .line 1226
    move-object v13, v2

    .line 1227
    invoke-static/range {v7 .. v13}, Lu1/f0;->M(JJJLjava/math/RoundingMode;)J

    .line 1228
    .line 1229
    .line 1230
    move-result-wide v7

    .line 1231
    invoke-virtual {v4}, Lu1/q;->D()J

    .line 1232
    .line 1233
    .line 1234
    move-result-wide v9

    .line 1235
    invoke-virtual {v4}, Lu1/q;->w()Ljava/lang/String;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v2

    .line 1239
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1240
    .line 1241
    .line 1242
    invoke-virtual {v4}, Lu1/q;->w()Ljava/lang/String;

    .line 1243
    .line 1244
    .line 1245
    move-result-object v11

    .line 1246
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1247
    .line 1248
    .line 1249
    move-wide v12, v5

    .line 1250
    :goto_24
    move-wide/from16 v14, v16

    .line 1251
    .line 1252
    goto :goto_26

    .line 1253
    :cond_3e
    invoke-virtual {v4}, Lu1/q;->w()Ljava/lang/String;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v2

    .line 1257
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1258
    .line 1259
    .line 1260
    invoke-virtual {v4}, Lu1/q;->w()Ljava/lang/String;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v11

    .line 1264
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1265
    .line 1266
    .line 1267
    invoke-virtual {v4}, Lu1/q;->D()J

    .line 1268
    .line 1269
    .line 1270
    move-result-wide v7

    .line 1271
    invoke-virtual {v4}, Lu1/q;->D()J

    .line 1272
    .line 1273
    .line 1274
    move-result-wide v30

    .line 1275
    sget-object v9, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 1276
    .line 1277
    const-wide/32 v32, 0xf4240

    .line 1278
    .line 1279
    .line 1280
    move-wide/from16 v34, v7

    .line 1281
    .line 1282
    move-object/from16 v36, v9

    .line 1283
    .line 1284
    invoke-static/range {v30 .. v36}, Lu1/f0;->M(JJJLjava/math/RoundingMode;)J

    .line 1285
    .line 1286
    .line 1287
    move-result-wide v12

    .line 1288
    iget-wide v14, v1, Lf3/j;->z:J

    .line 1289
    .line 1290
    cmp-long v10, v14, v5

    .line 1291
    .line 1292
    if-eqz v10, :cond_3f

    .line 1293
    .line 1294
    add-long/2addr v14, v12

    .line 1295
    move-wide/from16 v16, v14

    .line 1296
    .line 1297
    goto :goto_25

    .line 1298
    :cond_3f
    move-wide/from16 v16, v5

    .line 1299
    .line 1300
    :goto_25
    invoke-virtual {v4}, Lu1/q;->D()J

    .line 1301
    .line 1302
    .line 1303
    move-result-wide v30

    .line 1304
    const-wide/16 v32, 0x3e8

    .line 1305
    .line 1306
    move-wide/from16 v34, v7

    .line 1307
    .line 1308
    move-object/from16 v36, v9

    .line 1309
    .line 1310
    invoke-static/range {v30 .. v36}, Lu1/f0;->M(JJJLjava/math/RoundingMode;)J

    .line 1311
    .line 1312
    .line 1313
    move-result-wide v7

    .line 1314
    invoke-virtual {v4}, Lu1/q;->D()J

    .line 1315
    .line 1316
    .line 1317
    move-result-wide v9

    .line 1318
    goto :goto_24

    .line 1319
    :goto_26
    invoke-virtual {v4}, Lu1/q;->a()I

    .line 1320
    .line 1321
    .line 1322
    move-result v5

    .line 1323
    new-array v5, v5, [B

    .line 1324
    .line 1325
    invoke-virtual {v4}, Lu1/q;->a()I

    .line 1326
    .line 1327
    .line 1328
    move-result v6

    .line 1329
    move-object/from16 v21, v3

    .line 1330
    .line 1331
    const/4 v3, 0x0

    .line 1332
    invoke-virtual {v4, v3, v6, v5}, Lu1/q;->l(II[B)V

    .line 1333
    .line 1334
    .line 1335
    new-instance v3, Lw2/a;

    .line 1336
    .line 1337
    new-instance v3, Lu1/q;

    .line 1338
    .line 1339
    iget-object v4, v1, Lf3/j;->j:Lua/i8;

    .line 1340
    .line 1341
    iget-object v6, v4, Lua/i8;->b:Ljava/lang/Object;

    .line 1342
    .line 1343
    check-cast v6, Ljava/io/ByteArrayOutputStream;

    .line 1344
    .line 1345
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1346
    .line 1347
    .line 1348
    iget-object v4, v4, Lua/i8;->c:Ljava/lang/Object;

    .line 1349
    .line 1350
    check-cast v4, Ljava/io/DataOutputStream;

    .line 1351
    .line 1352
    :try_start_0
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1353
    .line 1354
    .line 1355
    const/4 v2, 0x0

    .line 1356
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1357
    .line 1358
    .line 1359
    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1360
    .line 1361
    .line 1362
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1363
    .line 1364
    .line 1365
    invoke-virtual {v4, v7, v8}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1366
    .line 1367
    .line 1368
    invoke-virtual {v4, v9, v10}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1369
    .line 1370
    .line 1371
    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 1372
    .line 1373
    .line 1374
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 1375
    .line 1376
    .line 1377
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 1378
    .line 1379
    .line 1380
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1381
    invoke-direct {v3, v2}, Lu1/q;-><init>([B)V

    .line 1382
    .line 1383
    .line 1384
    invoke-virtual {v3}, Lu1/q;->a()I

    .line 1385
    .line 1386
    .line 1387
    move-result v2

    .line 1388
    iget-object v4, v1, Lf3/j;->H:[Ll2/j0;

    .line 1389
    .line 1390
    array-length v5, v4

    .line 1391
    const/4 v6, 0x0

    .line 1392
    :goto_27
    if-ge v6, v5, :cond_40

    .line 1393
    .line 1394
    aget-object v7, v4, v6

    .line 1395
    .line 1396
    const/4 v8, 0x0

    .line 1397
    invoke-virtual {v3, v8}, Lu1/q;->O(I)V

    .line 1398
    .line 1399
    .line 1400
    invoke-interface {v7, v2, v3}, Ll2/j0;->a(ILu1/q;)V

    .line 1401
    .line 1402
    .line 1403
    const/4 v7, 0x1

    .line 1404
    add-int/2addr v6, v7

    .line 1405
    goto :goto_27

    .line 1406
    :cond_40
    const/4 v7, 0x1

    .line 1407
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 1408
    .line 1409
    .line 1410
    .line 1411
    .line 1412
    cmp-long v3, v14, v8

    .line 1413
    .line 1414
    if-nez v3, :cond_41

    .line 1415
    .line 1416
    new-instance v3, Lf3/h;

    .line 1417
    .line 1418
    invoke-direct {v3, v2, v12, v13, v7}, Lf3/h;-><init>(IJZ)V

    .line 1419
    .line 1420
    .line 1421
    move-object/from16 v4, v29

    .line 1422
    .line 1423
    invoke-virtual {v4, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 1424
    .line 1425
    .line 1426
    iget v3, v1, Lf3/j;->w:I

    .line 1427
    .line 1428
    add-int/2addr v3, v2

    .line 1429
    iput v3, v1, Lf3/j;->w:I

    .line 1430
    .line 1431
    goto :goto_29

    .line 1432
    :cond_41
    move-object/from16 v4, v29

    .line 1433
    .line 1434
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 1435
    .line 1436
    .line 1437
    move-result v3

    .line 1438
    if-nez v3, :cond_42

    .line 1439
    .line 1440
    new-instance v3, Lf3/h;

    .line 1441
    .line 1442
    const/4 v5, 0x0

    .line 1443
    invoke-direct {v3, v2, v14, v15, v5}, Lf3/h;-><init>(IJZ)V

    .line 1444
    .line 1445
    .line 1446
    invoke-virtual {v4, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 1447
    .line 1448
    .line 1449
    iget v3, v1, Lf3/j;->w:I

    .line 1450
    .line 1451
    add-int/2addr v3, v2

    .line 1452
    iput v3, v1, Lf3/j;->w:I

    .line 1453
    .line 1454
    goto :goto_29

    .line 1455
    :cond_42
    iget-object v3, v1, Lf3/j;->H:[Ll2/j0;

    .line 1456
    .line 1457
    array-length v4, v3

    .line 1458
    const/4 v5, 0x0

    .line 1459
    :goto_28
    if-ge v5, v4, :cond_44

    .line 1460
    .line 1461
    aget-object v30, v3, v5

    .line 1462
    .line 1463
    const/16 v36, 0x0

    .line 1464
    .line 1465
    const/16 v33, 0x1

    .line 1466
    .line 1467
    const/16 v35, 0x0

    .line 1468
    .line 1469
    move-wide/from16 v31, v14

    .line 1470
    .line 1471
    move/from16 v34, v2

    .line 1472
    .line 1473
    invoke-interface/range {v30 .. v36}, Ll2/j0;->b(JIIILl2/i0;)V

    .line 1474
    .line 1475
    .line 1476
    const/4 v6, 0x1

    .line 1477
    add-int/2addr v5, v6

    .line 1478
    goto :goto_28

    .line 1479
    :catch_0
    move-exception v0

    .line 1480
    new-instance v2, Ljava/lang/RuntimeException;

    .line 1481
    .line 1482
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 1483
    .line 1484
    .line 1485
    throw v2

    .line 1486
    :cond_43
    move-object/from16 v21, v3

    .line 1487
    .line 1488
    move-object v3, v0

    .line 1489
    check-cast v3, Ll2/l;

    .line 1490
    .line 1491
    const/4 v4, 0x0

    .line 1492
    invoke-virtual {v3, v2, v4}, Ll2/l;->o(IZ)Z

    .line 1493
    .line 1494
    .line 1495
    :cond_44
    :goto_29
    move-object v2, v0

    .line 1496
    check-cast v2, Ll2/l;

    .line 1497
    .line 1498
    iget-wide v2, v2, Ll2/l;->d:J

    .line 1499
    .line 1500
    invoke-virtual {v1, v2, v3}, Lf3/j;->l(J)V

    .line 1501
    .line 1502
    .line 1503
    :goto_2a
    move-object/from16 v3, v21

    .line 1504
    .line 1505
    goto/16 :goto_20

    .line 1506
    .line 1507
    :cond_45
    move-object/from16 v22, v2

    .line 1508
    .line 1509
    move-object/from16 v21, v3

    .line 1510
    .line 1511
    iget v2, v1, Lf3/j;->t:I

    .line 1512
    .line 1513
    const-wide/16 v3, -0x1

    .line 1514
    .line 1515
    iget-object v5, v1, Lf3/j;->k:Lu1/q;

    .line 1516
    .line 1517
    if-nez v2, :cond_48

    .line 1518
    .line 1519
    iget-object v2, v5, Lu1/q;->a:[B

    .line 1520
    .line 1521
    move-object v6, v0

    .line 1522
    check-cast v6, Ll2/l;

    .line 1523
    .line 1524
    const/16 v7, 0x8

    .line 1525
    .line 1526
    const/4 v8, 0x1

    .line 1527
    const/4 v11, 0x0

    .line 1528
    invoke-virtual {v6, v2, v11, v7, v8}, Ll2/l;->b([BIIZ)Z

    .line 1529
    .line 1530
    .line 1531
    move-result v2

    .line 1532
    if-nez v2, :cond_47

    .line 1533
    .line 1534
    iget-wide v5, v1, Lf3/j;->L:J

    .line 1535
    .line 1536
    cmp-long v0, v5, v3

    .line 1537
    .line 1538
    if-eqz v0, :cond_46

    .line 1539
    .line 1540
    move-object/from16 v2, p2

    .line 1541
    .line 1542
    iput-wide v5, v2, Ldd/c;->b:J

    .line 1543
    .line 1544
    iput-wide v3, v1, Lf3/j;->L:J

    .line 1545
    .line 1546
    iget-object v0, v1, Lf3/j;->G:Ll2/q;

    .line 1547
    .line 1548
    invoke-virtual {v15}, Landroidx/room/o;->b()Ll2/j;

    .line 1549
    .line 1550
    .line 1551
    move-result-object v2

    .line 1552
    invoke-interface {v0, v2}, Ll2/q;->s(Ll2/c0;)V

    .line 1553
    .line 1554
    .line 1555
    iput-boolean v8, v1, Lf3/j;->K:Z

    .line 1556
    .line 1557
    return v8

    .line 1558
    :cond_46
    const/4 v6, 0x0

    .line 1559
    invoke-virtual {v13, v6}, Lb5/i;->d(I)V

    .line 1560
    .line 1561
    .line 1562
    const/4 v7, -0x1

    .line 1563
    return v7

    .line 1564
    :cond_47
    move-object/from16 v2, p2

    .line 1565
    .line 1566
    const/4 v6, 0x0

    .line 1567
    const/4 v7, -0x1

    .line 1568
    const/16 v8, 0x8

    .line 1569
    .line 1570
    iput v8, v1, Lf3/j;->t:I

    .line 1571
    .line 1572
    invoke-virtual {v5, v6}, Lu1/q;->O(I)V

    .line 1573
    .line 1574
    .line 1575
    invoke-virtual {v5}, Lu1/q;->D()J

    .line 1576
    .line 1577
    .line 1578
    move-result-wide v11

    .line 1579
    iput-wide v11, v1, Lf3/j;->s:J

    .line 1580
    .line 1581
    invoke-virtual {v5}, Lu1/q;->o()I

    .line 1582
    .line 1583
    .line 1584
    move-result v6

    .line 1585
    iput v6, v1, Lf3/j;->r:I

    .line 1586
    .line 1587
    goto :goto_2b

    .line 1588
    :cond_48
    move-object/from16 v2, p2

    .line 1589
    .line 1590
    const/4 v7, -0x1

    .line 1591
    :goto_2b
    iget-wide v11, v1, Lf3/j;->s:J

    .line 1592
    .line 1593
    const-wide/16 v23, 0x1

    .line 1594
    .line 1595
    cmp-long v6, v11, v23

    .line 1596
    .line 1597
    if-nez v6, :cond_49

    .line 1598
    .line 1599
    iget-object v6, v5, Lu1/q;->a:[B

    .line 1600
    .line 1601
    move-object v8, v0

    .line 1602
    check-cast v8, Ll2/l;

    .line 1603
    .line 1604
    const/16 v11, 0x8

    .line 1605
    .line 1606
    const/4 v12, 0x0

    .line 1607
    invoke-virtual {v8, v6, v11, v11, v12}, Ll2/l;->b([BIIZ)Z

    .line 1608
    .line 1609
    .line 1610
    iget v6, v1, Lf3/j;->t:I

    .line 1611
    .line 1612
    add-int/2addr v6, v11

    .line 1613
    iput v6, v1, Lf3/j;->t:I

    .line 1614
    .line 1615
    invoke-virtual {v5}, Lu1/q;->H()J

    .line 1616
    .line 1617
    .line 1618
    move-result-wide v11

    .line 1619
    iput-wide v11, v1, Lf3/j;->s:J

    .line 1620
    .line 1621
    goto :goto_2c

    .line 1622
    :cond_49
    const-wide/16 v23, 0x0

    .line 1623
    .line 1624
    cmp-long v6, v11, v23

    .line 1625
    .line 1626
    if-nez v6, :cond_4b

    .line 1627
    .line 1628
    move-object v6, v0

    .line 1629
    check-cast v6, Ll2/l;

    .line 1630
    .line 1631
    iget-wide v11, v6, Ll2/l;->c:J

    .line 1632
    .line 1633
    cmp-long v6, v11, v3

    .line 1634
    .line 1635
    if-nez v6, :cond_4a

    .line 1636
    .line 1637
    invoke-virtual {v9}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 1638
    .line 1639
    .line 1640
    move-result v6

    .line 1641
    if-nez v6, :cond_4a

    .line 1642
    .line 1643
    invoke-virtual {v9}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 1644
    .line 1645
    .line 1646
    move-result-object v6

    .line 1647
    check-cast v6, Lv1/c;

    .line 1648
    .line 1649
    iget-wide v11, v6, Lv1/c;->c:J

    .line 1650
    .line 1651
    :cond_4a
    cmp-long v6, v11, v3

    .line 1652
    .line 1653
    if-eqz v6, :cond_4b

    .line 1654
    .line 1655
    move-object v6, v0

    .line 1656
    check-cast v6, Ll2/l;

    .line 1657
    .line 1658
    iget-wide v7, v6, Ll2/l;->d:J

    .line 1659
    .line 1660
    sub-long/2addr v11, v7

    .line 1661
    iget v6, v1, Lf3/j;->t:I

    .line 1662
    .line 1663
    int-to-long v6, v6

    .line 1664
    add-long/2addr v11, v6

    .line 1665
    iput-wide v11, v1, Lf3/j;->s:J

    .line 1666
    .line 1667
    :cond_4b
    :goto_2c
    iget-wide v6, v1, Lf3/j;->s:J

    .line 1668
    .line 1669
    iget v8, v1, Lf3/j;->t:I

    .line 1670
    .line 1671
    int-to-long v11, v8

    .line 1672
    cmp-long v13, v6, v11

    .line 1673
    .line 1674
    if-gez v13, :cond_4d

    .line 1675
    .line 1676
    iget v6, v1, Lf3/j;->r:I

    .line 1677
    .line 1678
    const v7, 0x66726565

    .line 1679
    .line 1680
    .line 1681
    if-ne v6, v7, :cond_4c

    .line 1682
    .line 1683
    const/16 v6, 0x8

    .line 1684
    .line 1685
    if-ne v8, v6, :cond_4c

    .line 1686
    .line 1687
    iput-wide v11, v1, Lf3/j;->s:J

    .line 1688
    .line 1689
    goto :goto_2d

    .line 1690
    :cond_4c
    const-string v0, "Atom size less than header length (unsupported)."

    .line 1691
    .line 1692
    invoke-static {v0}, Lr1/f0;->b(Ljava/lang/String;)Lr1/f0;

    .line 1693
    .line 1694
    .line 1695
    move-result-object v0

    .line 1696
    throw v0

    .line 1697
    :cond_4d
    :goto_2d
    iget-wide v6, v1, Lf3/j;->L:J

    .line 1698
    .line 1699
    cmp-long v13, v6, v3

    .line 1700
    .line 1701
    if-eqz v13, :cond_4f

    .line 1702
    .line 1703
    iget v3, v1, Lf3/j;->r:I

    .line 1704
    .line 1705
    const v4, 0x73696478

    .line 1706
    .line 1707
    .line 1708
    if-ne v3, v4, :cond_4e

    .line 1709
    .line 1710
    iget-wide v3, v1, Lf3/j;->s:J

    .line 1711
    .line 1712
    long-to-int v4, v3

    .line 1713
    invoke-virtual {v14, v4}, Lu1/q;->L(I)V

    .line 1714
    .line 1715
    .line 1716
    iget-object v3, v5, Lu1/q;->a:[B

    .line 1717
    .line 1718
    iget-object v4, v14, Lu1/q;->a:[B

    .line 1719
    .line 1720
    const/16 v5, 0x8

    .line 1721
    .line 1722
    const/4 v6, 0x0

    .line 1723
    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1724
    .line 1725
    .line 1726
    iget-object v3, v14, Lu1/q;->a:[B

    .line 1727
    .line 1728
    iget-wide v4, v1, Lf3/j;->s:J

    .line 1729
    .line 1730
    iget v6, v1, Lf3/j;->t:I

    .line 1731
    .line 1732
    int-to-long v6, v6

    .line 1733
    sub-long/2addr v4, v6

    .line 1734
    long-to-int v5, v4

    .line 1735
    move-object v4, v0

    .line 1736
    check-cast v4, Ll2/l;

    .line 1737
    .line 1738
    const/16 v6, 0x8

    .line 1739
    .line 1740
    const/4 v7, 0x0

    .line 1741
    invoke-virtual {v4, v3, v6, v5, v7}, Ll2/l;->b([BIIZ)Z

    .line 1742
    .line 1743
    .line 1744
    move-object v3, v0

    .line 1745
    check-cast v3, Ll2/l;

    .line 1746
    .line 1747
    invoke-virtual {v3}, Ll2/l;->d()J

    .line 1748
    .line 1749
    .line 1750
    move-result-wide v3

    .line 1751
    invoke-static {v3, v4, v14}, Lf3/j;->k(JLu1/q;)Landroid/util/Pair;

    .line 1752
    .line 1753
    .line 1754
    move-result-object v3

    .line 1755
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1756
    .line 1757
    check-cast v3, Ll2/j;

    .line 1758
    .line 1759
    invoke-virtual {v15, v3}, Landroidx/room/o;->a(Ll2/j;)V

    .line 1760
    .line 1761
    .line 1762
    goto :goto_2e

    .line 1763
    :cond_4e
    iget-wide v3, v1, Lf3/j;->s:J

    .line 1764
    .line 1765
    sub-long/2addr v3, v11

    .line 1766
    long-to-int v4, v3

    .line 1767
    move-object v3, v0

    .line 1768
    check-cast v3, Ll2/l;

    .line 1769
    .line 1770
    const/4 v5, 0x1

    .line 1771
    invoke-virtual {v3, v4, v5}, Ll2/l;->o(IZ)Z

    .line 1772
    .line 1773
    .line 1774
    :goto_2e
    invoke-virtual/range {p0 .. p0}, Lf3/j;->h()V

    .line 1775
    .line 1776
    .line 1777
    :goto_2f
    const/4 v6, 0x0

    .line 1778
    goto/16 :goto_2a

    .line 1779
    .line 1780
    :cond_4f
    move-object v3, v0

    .line 1781
    check-cast v3, Ll2/l;

    .line 1782
    .line 1783
    iget-wide v3, v3, Ll2/l;->d:J

    .line 1784
    .line 1785
    int-to-long v6, v8

    .line 1786
    sub-long/2addr v3, v6

    .line 1787
    iget v6, v1, Lf3/j;->r:I

    .line 1788
    .line 1789
    const v7, 0x6d646174

    .line 1790
    .line 1791
    .line 1792
    const v8, 0x6d6f6f66

    .line 1793
    .line 1794
    .line 1795
    if-eq v6, v8, :cond_50

    .line 1796
    .line 1797
    if-ne v6, v7, :cond_51

    .line 1798
    .line 1799
    :cond_50
    iget-boolean v6, v1, Lf3/j;->J:Z

    .line 1800
    .line 1801
    if-nez v6, :cond_51

    .line 1802
    .line 1803
    iget-object v6, v1, Lf3/j;->G:Ll2/q;

    .line 1804
    .line 1805
    new-instance v11, Ll2/s;

    .line 1806
    .line 1807
    iget-wide v12, v1, Lf3/j;->y:J

    .line 1808
    .line 1809
    invoke-direct {v11, v12, v13, v3, v4}, Ll2/s;-><init>(JJ)V

    .line 1810
    .line 1811
    .line 1812
    invoke-interface {v6, v11}, Ll2/q;->s(Ll2/c0;)V

    .line 1813
    .line 1814
    .line 1815
    const/4 v6, 0x1

    .line 1816
    iput-boolean v6, v1, Lf3/j;->J:Z

    .line 1817
    .line 1818
    :cond_51
    iget v6, v1, Lf3/j;->r:I

    .line 1819
    .line 1820
    if-ne v6, v8, :cond_52

    .line 1821
    .line 1822
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    .line 1823
    .line 1824
    .line 1825
    move-result v6

    .line 1826
    const/4 v11, 0x0

    .line 1827
    :goto_30
    if-ge v11, v6, :cond_52

    .line 1828
    .line 1829
    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1830
    .line 1831
    .line 1832
    move-result-object v12

    .line 1833
    check-cast v12, Lf3/i;

    .line 1834
    .line 1835
    iget-object v12, v12, Lf3/i;->b:Lf3/u;

    .line 1836
    .line 1837
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1838
    .line 1839
    .line 1840
    iput-wide v3, v12, Lf3/u;->c:J

    .line 1841
    .line 1842
    iput-wide v3, v12, Lf3/u;->b:J

    .line 1843
    .line 1844
    const/4 v12, 0x1

    .line 1845
    add-int/2addr v11, v12

    .line 1846
    goto :goto_30

    .line 1847
    :cond_52
    iget v6, v1, Lf3/j;->r:I

    .line 1848
    .line 1849
    if-ne v6, v7, :cond_53

    .line 1850
    .line 1851
    const/4 v7, 0x0

    .line 1852
    iput-object v7, v1, Lf3/j;->A:Lf3/i;

    .line 1853
    .line 1854
    iget-wide v5, v1, Lf3/j;->s:J

    .line 1855
    .line 1856
    add-long/2addr v3, v5

    .line 1857
    iput-wide v3, v1, Lf3/j;->v:J

    .line 1858
    .line 1859
    const/4 v3, 0x2

    .line 1860
    iput v3, v1, Lf3/j;->q:I

    .line 1861
    .line 1862
    goto :goto_2f

    .line 1863
    :cond_53
    const/4 v3, 0x2

    .line 1864
    const v4, 0x6d6f6f76

    .line 1865
    .line 1866
    .line 1867
    const v7, 0x6d657461

    .line 1868
    .line 1869
    .line 1870
    if-eq v6, v4, :cond_54

    .line 1871
    .line 1872
    const v4, 0x7472616b

    .line 1873
    .line 1874
    .line 1875
    if-eq v6, v4, :cond_54

    .line 1876
    .line 1877
    const v4, 0x6d646961

    .line 1878
    .line 1879
    .line 1880
    if-eq v6, v4, :cond_54

    .line 1881
    .line 1882
    const v4, 0x6d696e66

    .line 1883
    .line 1884
    .line 1885
    if-eq v6, v4, :cond_54

    .line 1886
    .line 1887
    const v4, 0x7374626c

    .line 1888
    .line 1889
    .line 1890
    if-eq v6, v4, :cond_54

    .line 1891
    .line 1892
    if-eq v6, v8, :cond_54

    .line 1893
    .line 1894
    const v4, 0x74726166

    .line 1895
    .line 1896
    .line 1897
    if-eq v6, v4, :cond_54

    .line 1898
    .line 1899
    const v4, 0x6d766578

    .line 1900
    .line 1901
    .line 1902
    if-eq v6, v4, :cond_54

    .line 1903
    .line 1904
    const v4, 0x65647473

    .line 1905
    .line 1906
    .line 1907
    if-eq v6, v4, :cond_54

    .line 1908
    .line 1909
    if-ne v6, v7, :cond_55

    .line 1910
    .line 1911
    :cond_54
    const/4 v4, 0x1

    .line 1912
    goto/16 :goto_32

    .line 1913
    .line 1914
    :cond_55
    const v4, 0x68646c72    # 4.3148E24f

    .line 1915
    .line 1916
    .line 1917
    const-wide/32 v7, 0x7fffffff

    .line 1918
    .line 1919
    .line 1920
    if-eq v6, v4, :cond_58

    .line 1921
    .line 1922
    const v4, 0x6d646864

    .line 1923
    .line 1924
    .line 1925
    if-eq v6, v4, :cond_58

    .line 1926
    .line 1927
    const v4, 0x6d766864

    .line 1928
    .line 1929
    .line 1930
    if-eq v6, v4, :cond_58

    .line 1931
    .line 1932
    const v4, 0x73696478

    .line 1933
    .line 1934
    .line 1935
    if-eq v6, v4, :cond_58

    .line 1936
    .line 1937
    const v4, 0x73747364

    .line 1938
    .line 1939
    .line 1940
    if-eq v6, v4, :cond_58

    .line 1941
    .line 1942
    const v4, 0x73747473

    .line 1943
    .line 1944
    .line 1945
    if-eq v6, v4, :cond_58

    .line 1946
    .line 1947
    const v4, 0x63747473

    .line 1948
    .line 1949
    .line 1950
    if-eq v6, v4, :cond_58

    .line 1951
    .line 1952
    const v4, 0x73747363

    .line 1953
    .line 1954
    .line 1955
    if-eq v6, v4, :cond_58

    .line 1956
    .line 1957
    const v4, 0x7374737a

    .line 1958
    .line 1959
    .line 1960
    if-eq v6, v4, :cond_58

    .line 1961
    .line 1962
    const v4, 0x73747a32

    .line 1963
    .line 1964
    .line 1965
    if-eq v6, v4, :cond_58

    .line 1966
    .line 1967
    const v4, 0x7374636f

    .line 1968
    .line 1969
    .line 1970
    if-eq v6, v4, :cond_58

    .line 1971
    .line 1972
    const v4, 0x636f3634

    .line 1973
    .line 1974
    .line 1975
    if-eq v6, v4, :cond_58

    .line 1976
    .line 1977
    const v4, 0x73747373

    .line 1978
    .line 1979
    .line 1980
    if-eq v6, v4, :cond_58

    .line 1981
    .line 1982
    const v4, 0x74666474

    .line 1983
    .line 1984
    .line 1985
    if-eq v6, v4, :cond_58

    .line 1986
    .line 1987
    const v4, 0x74666864

    .line 1988
    .line 1989
    .line 1990
    if-eq v6, v4, :cond_58

    .line 1991
    .line 1992
    const v4, 0x746b6864

    .line 1993
    .line 1994
    .line 1995
    if-eq v6, v4, :cond_58

    .line 1996
    .line 1997
    const v4, 0x74726578

    .line 1998
    .line 1999
    .line 2000
    if-eq v6, v4, :cond_58

    .line 2001
    .line 2002
    const v4, 0x7472756e

    .line 2003
    .line 2004
    .line 2005
    if-eq v6, v4, :cond_58

    .line 2006
    .line 2007
    const v4, 0x70737368    # 3.013775E29f

    .line 2008
    .line 2009
    .line 2010
    if-eq v6, v4, :cond_58

    .line 2011
    .line 2012
    const v4, 0x7361697a

    .line 2013
    .line 2014
    .line 2015
    if-eq v6, v4, :cond_58

    .line 2016
    .line 2017
    const v4, 0x7361696f

    .line 2018
    .line 2019
    .line 2020
    if-eq v6, v4, :cond_58

    .line 2021
    .line 2022
    const v4, 0x73656e63

    .line 2023
    .line 2024
    .line 2025
    if-eq v6, v4, :cond_58

    .line 2026
    .line 2027
    const v4, 0x75756964

    .line 2028
    .line 2029
    .line 2030
    if-eq v6, v4, :cond_58

    .line 2031
    .line 2032
    const v4, 0x73626770

    .line 2033
    .line 2034
    .line 2035
    if-eq v6, v4, :cond_58

    .line 2036
    .line 2037
    const v4, 0x73677064

    .line 2038
    .line 2039
    .line 2040
    if-eq v6, v4, :cond_58

    .line 2041
    .line 2042
    const v4, 0x656c7374

    .line 2043
    .line 2044
    .line 2045
    if-eq v6, v4, :cond_58

    .line 2046
    .line 2047
    const v4, 0x6d656864

    .line 2048
    .line 2049
    .line 2050
    if-eq v6, v4, :cond_58

    .line 2051
    .line 2052
    const v4, 0x656d7367

    .line 2053
    .line 2054
    .line 2055
    if-eq v6, v4, :cond_58

    .line 2056
    .line 2057
    const v4, 0x75647461

    .line 2058
    .line 2059
    .line 2060
    if-eq v6, v4, :cond_58

    .line 2061
    .line 2062
    const v4, 0x6b657973

    .line 2063
    .line 2064
    .line 2065
    if-eq v6, v4, :cond_58

    .line 2066
    .line 2067
    const v4, 0x696c7374

    .line 2068
    .line 2069
    .line 2070
    if-ne v6, v4, :cond_56

    .line 2071
    .line 2072
    goto :goto_31

    .line 2073
    :cond_56
    iget-wide v4, v1, Lf3/j;->s:J

    .line 2074
    .line 2075
    cmp-long v6, v4, v7

    .line 2076
    .line 2077
    if-gtz v6, :cond_57

    .line 2078
    .line 2079
    const/4 v4, 0x0

    .line 2080
    iput-object v4, v1, Lf3/j;->u:Lu1/q;

    .line 2081
    .line 2082
    const/4 v4, 0x1

    .line 2083
    iput v4, v1, Lf3/j;->q:I

    .line 2084
    .line 2085
    goto/16 :goto_2f

    .line 2086
    .line 2087
    :cond_57
    const-string v0, "Skipping atom with length > 2147483647 (unsupported)."

    .line 2088
    .line 2089
    invoke-static {v0}, Lr1/f0;->b(Ljava/lang/String;)Lr1/f0;

    .line 2090
    .line 2091
    .line 2092
    move-result-object v0

    .line 2093
    throw v0

    .line 2094
    :cond_58
    :goto_31
    iget v4, v1, Lf3/j;->t:I

    .line 2095
    .line 2096
    const/16 v6, 0x8

    .line 2097
    .line 2098
    if-ne v4, v6, :cond_5a

    .line 2099
    .line 2100
    iget-wide v9, v1, Lf3/j;->s:J

    .line 2101
    .line 2102
    cmp-long v4, v9, v7

    .line 2103
    .line 2104
    if-gtz v4, :cond_59

    .line 2105
    .line 2106
    new-instance v4, Lu1/q;

    .line 2107
    .line 2108
    iget-wide v6, v1, Lf3/j;->s:J

    .line 2109
    .line 2110
    long-to-int v7, v6

    .line 2111
    invoke-direct {v4, v7}, Lu1/q;-><init>(I)V

    .line 2112
    .line 2113
    .line 2114
    iget-object v5, v5, Lu1/q;->a:[B

    .line 2115
    .line 2116
    iget-object v6, v4, Lu1/q;->a:[B

    .line 2117
    .line 2118
    const/16 v7, 0x8

    .line 2119
    .line 2120
    const/4 v8, 0x0

    .line 2121
    invoke-static {v5, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2122
    .line 2123
    .line 2124
    iput-object v4, v1, Lf3/j;->u:Lu1/q;

    .line 2125
    .line 2126
    const/4 v4, 0x1

    .line 2127
    iput v4, v1, Lf3/j;->q:I

    .line 2128
    .line 2129
    goto/16 :goto_2f

    .line 2130
    .line 2131
    :cond_59
    const-string v0, "Leaf atom with length > 2147483647 (unsupported)."

    .line 2132
    .line 2133
    invoke-static {v0}, Lr1/f0;->b(Ljava/lang/String;)Lr1/f0;

    .line 2134
    .line 2135
    .line 2136
    move-result-object v0

    .line 2137
    throw v0

    .line 2138
    :cond_5a
    const-string v0, "Leaf atom defines extended atom size (unsupported)."

    .line 2139
    .line 2140
    invoke-static {v0}, Lr1/f0;->b(Ljava/lang/String;)Lr1/f0;

    .line 2141
    .line 2142
    .line 2143
    move-result-object v0

    .line 2144
    throw v0

    .line 2145
    :goto_32
    move-object v5, v0

    .line 2146
    check-cast v5, Ll2/l;

    .line 2147
    .line 2148
    iget-wide v10, v5, Ll2/l;->d:J

    .line 2149
    .line 2150
    iget-wide v12, v1, Lf3/j;->s:J

    .line 2151
    .line 2152
    add-long/2addr v10, v12

    .line 2153
    const-wide/16 v15, 0x8

    .line 2154
    .line 2155
    sub-long/2addr v10, v15

    .line 2156
    iget v8, v1, Lf3/j;->t:I

    .line 2157
    .line 2158
    int-to-long v3, v8

    .line 2159
    cmp-long v8, v12, v3

    .line 2160
    .line 2161
    if-eqz v8, :cond_5b

    .line 2162
    .line 2163
    if-ne v6, v7, :cond_5b

    .line 2164
    .line 2165
    const/16 v3, 0x8

    .line 2166
    .line 2167
    invoke-virtual {v14, v3}, Lu1/q;->L(I)V

    .line 2168
    .line 2169
    .line 2170
    iget-object v4, v14, Lu1/q;->a:[B

    .line 2171
    .line 2172
    const/4 v6, 0x0

    .line 2173
    invoke-virtual {v5, v4, v6, v3, v6}, Ll2/l;->c([BIIZ)Z

    .line 2174
    .line 2175
    .line 2176
    invoke-static {v14}, Lf3/e;->a(Lu1/q;)V

    .line 2177
    .line 2178
    .line 2179
    iget v3, v14, Lu1/q;->b:I

    .line 2180
    .line 2181
    invoke-virtual {v5, v3, v6}, Ll2/l;->o(IZ)Z

    .line 2182
    .line 2183
    .line 2184
    iput v6, v5, Ll2/l;->f:I

    .line 2185
    .line 2186
    goto :goto_33

    .line 2187
    :cond_5b
    const/4 v6, 0x0

    .line 2188
    :goto_33
    new-instance v3, Lv1/c;

    .line 2189
    .line 2190
    iget v4, v1, Lf3/j;->r:I

    .line 2191
    .line 2192
    invoke-direct {v3, v4, v10, v11}, Lv1/c;-><init>(IJ)V

    .line 2193
    .line 2194
    .line 2195
    invoke-virtual {v9, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 2196
    .line 2197
    .line 2198
    iget-wide v3, v1, Lf3/j;->s:J

    .line 2199
    .line 2200
    iget v5, v1, Lf3/j;->t:I

    .line 2201
    .line 2202
    int-to-long v7, v5

    .line 2203
    cmp-long v5, v3, v7

    .line 2204
    .line 2205
    if-nez v5, :cond_5c

    .line 2206
    .line 2207
    invoke-virtual {v1, v10, v11}, Lf3/j;->l(J)V

    .line 2208
    .line 2209
    .line 2210
    goto/16 :goto_2a

    .line 2211
    .line 2212
    :cond_5c
    invoke-virtual/range {p0 .. p0}, Lf3/j;->h()V

    .line 2213
    .line 2214
    .line 2215
    goto/16 :goto_2a

    :sswitch_data_0
    .sparse-switch
        -0x63185e82 -> :sswitch_2
        0x4f62373a -> :sswitch_1
        0x4f62860f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(JJ)V
    .locals 3

    .line 1
    iget-object p1, p0, Lf3/j;->d:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lf3/i;

    .line 16
    .line 17
    invoke-virtual {v2}, Lf3/i;->e()V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p0, Lf3/j;->m:Ljava/util/ArrayDeque;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 26
    .line 27
    .line 28
    iput v0, p0, Lf3/j;->w:I

    .line 29
    .line 30
    iget-object p1, p0, Lf3/j;->n:Lb5/i;

    .line 31
    .line 32
    iget-object p1, p1, Lb5/i;->e:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Ljava/util/PriorityQueue;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->clear()V

    .line 37
    .line 38
    .line 39
    iput-wide p3, p0, Lf3/j;->x:J

    .line 40
    .line 41
    iget-object p1, p0, Lf3/j;->l:Ljava/util/ArrayDeque;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lf3/j;->h()V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final f()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lf3/j;->p:Lu7/y0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g(Ll2/p;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v0, v1}, Lf3/r;->i(Ll2/p;ZZ)Ll2/g0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v2, Lu7/g0;->b:Lu7/e0;

    .line 15
    .line 16
    sget-object v2, Lu7/y0;->e:Lu7/y0;

    .line 17
    .line 18
    :goto_0
    iput-object v2, p0, Lf3/j;->p:Lu7/y0;

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    :goto_1
    return v0
.end method

.method public final h()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lf3/j;->q:I

    .line 3
    .line 4
    iput v0, p0, Lf3/j;->t:I

    .line 5
    .line 6
    return-void
.end method

.method public final l(J)V
    .locals 55

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    :goto_0
    const/4 v6, 0x1

    .line 4
    iget-object v7, v0, Lf3/j;->l:Ljava/util/ArrayDeque;

    .line 5
    .line 6
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v8

    .line 10
    if-nez v8, :cond_5e

    .line 11
    .line 12
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v8

    .line 16
    check-cast v8, Lv1/c;

    .line 17
    .line 18
    iget-wide v8, v8, Lv1/c;->c:J

    .line 19
    .line 20
    cmp-long v10, v8, p1

    .line 21
    .line 22
    if-nez v10, :cond_5e

    .line 23
    .line 24
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v8

    .line 28
    move-object v9, v8

    .line 29
    check-cast v9, Lv1/c;

    .line 30
    .line 31
    iget v8, v9, Lab/a;->b:I

    .line 32
    .line 33
    iget-object v15, v0, Lf3/j;->d:Landroid/util/SparseArray;

    .line 34
    .line 35
    iget-object v10, v9, Lv1/c;->d:Ljava/util/ArrayList;

    .line 36
    .line 37
    const v12, 0x6d6f6f76

    .line 38
    .line 39
    .line 40
    iget v13, v0, Lf3/j;->b:I

    .line 41
    .line 42
    const/16 v14, 0xc

    .line 43
    .line 44
    if-ne v8, v12, :cond_e

    .line 45
    .line 46
    invoke-static {v10}, Lf3/j;->i(Ljava/util/ArrayList;)Lr1/l;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    const v8, 0x6d766578

    .line 51
    .line 52
    .line 53
    invoke-virtual {v9, v8}, Lv1/c;->g(I)Lv1/c;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    new-instance v12, Landroid/util/SparseArray;

    .line 61
    .line 62
    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    .line 63
    .line 64
    .line 65
    iget-object v8, v8, Lv1/c;->d:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    const/4 v11, 0x0

    .line 77
    :goto_1
    if-ge v11, v10, :cond_3

    .line 78
    .line 79
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v17

    .line 83
    move-object/from16 v1, v17

    .line 84
    .line 85
    check-cast v1, Lv1/d;

    .line 86
    .line 87
    iget v5, v1, Lab/a;->b:I

    .line 88
    .line 89
    const v2, 0x74726578

    .line 90
    .line 91
    .line 92
    iget-object v1, v1, Lv1/d;->c:Lu1/q;

    .line 93
    .line 94
    if-ne v5, v2, :cond_0

    .line 95
    .line 96
    invoke-virtual {v1, v14}, Lu1/q;->O(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Lu1/q;->o()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    invoke-virtual {v1}, Lu1/q;->o()I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    sub-int/2addr v5, v6

    .line 108
    invoke-virtual {v1}, Lu1/q;->o()I

    .line 109
    .line 110
    .line 111
    move-result v14

    .line 112
    invoke-virtual {v1}, Lu1/q;->o()I

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    invoke-virtual {v1}, Lu1/q;->o()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    move-object/from16 v21, v8

    .line 125
    .line 126
    new-instance v8, Lf3/f;

    .line 127
    .line 128
    invoke-direct {v8, v5, v14, v6, v1}, Lf3/f;-><init>(IIII)V

    .line 129
    .line 130
    .line 131
    invoke-static {v2, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v2, Ljava/lang/Integer;

    .line 138
    .line 139
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v1, Lf3/f;

    .line 146
    .line 147
    invoke-virtual {v12, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_0
    move-object/from16 v21, v8

    .line 152
    .line 153
    const v2, 0x6d656864

    .line 154
    .line 155
    .line 156
    if-ne v5, v2, :cond_2

    .line 157
    .line 158
    const/16 v2, 0x8

    .line 159
    .line 160
    invoke-virtual {v1, v2}, Lu1/q;->O(I)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1}, Lu1/q;->o()I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    invoke-static {v2}, Lf3/e;->e(I)I

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    if-nez v2, :cond_1

    .line 172
    .line 173
    invoke-virtual {v1}, Lu1/q;->D()J

    .line 174
    .line 175
    .line 176
    move-result-wide v1

    .line 177
    :goto_2
    move-wide v3, v1

    .line 178
    goto :goto_3

    .line 179
    :cond_1
    invoke-virtual {v1}, Lu1/q;->H()J

    .line 180
    .line 181
    .line 182
    move-result-wide v1

    .line 183
    goto :goto_2

    .line 184
    :cond_2
    :goto_3
    const/4 v1, 0x1

    .line 185
    add-int/2addr v11, v1

    .line 186
    move-object/from16 v8, v21

    .line 187
    .line 188
    const/4 v6, 0x1

    .line 189
    const/16 v14, 0xc

    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_3
    const v1, 0x6d657461

    .line 193
    .line 194
    .line 195
    invoke-virtual {v9, v1}, Lv1/c;->g(I)Lv1/c;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    if-eqz v1, :cond_4

    .line 200
    .line 201
    invoke-static {v1}, Lf3/e;->f(Lv1/c;)Lr1/d0;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    goto :goto_4

    .line 206
    :cond_4
    const/4 v1, 0x0

    .line 207
    :goto_4
    new-instance v2, Ll2/v;

    .line 208
    .line 209
    invoke-direct {v2}, Ll2/v;-><init>()V

    .line 210
    .line 211
    .line 212
    const v5, 0x75647461

    .line 213
    .line 214
    .line 215
    invoke-virtual {v9, v5}, Lv1/c;->i(I)Lv1/d;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    if-eqz v5, :cond_5

    .line 220
    .line 221
    invoke-static {v5}, Lf3/e;->j(Lv1/d;)Lr1/d0;

    .line 222
    .line 223
    .line 224
    move-result-object v11

    .line 225
    invoke-virtual {v2, v11}, Ll2/v;->c(Lr1/d0;)V

    .line 226
    .line 227
    .line 228
    move-object v5, v11

    .line 229
    goto :goto_5

    .line 230
    :cond_5
    const/4 v5, 0x0

    .line 231
    :goto_5
    new-instance v6, Lr1/d0;

    .line 232
    .line 233
    const v8, 0x6d766864

    .line 234
    .line 235
    .line 236
    invoke-virtual {v9, v8}, Lv1/c;->i(I)Lv1/d;

    .line 237
    .line 238
    .line 239
    move-result-object v8

    .line 240
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    iget-object v8, v8, Lv1/d;->c:Lu1/q;

    .line 244
    .line 245
    invoke-static {v8}, Lf3/e;->g(Lu1/q;)Lv1/f;

    .line 246
    .line 247
    .line 248
    move-result-object v8

    .line 249
    const/4 v10, 0x1

    .line 250
    new-array v11, v10, [Lr1/c0;

    .line 251
    .line 252
    const/4 v10, 0x0

    .line 253
    aput-object v8, v11, v10

    .line 254
    .line 255
    invoke-direct {v6, v11}, Lr1/d0;-><init>([Lr1/c0;)V

    .line 256
    .line 257
    .line 258
    const/16 v8, 0x10

    .line 259
    .line 260
    and-int/lit8 v10, v13, 0x10

    .line 261
    .line 262
    if-eqz v10, :cond_6

    .line 263
    .line 264
    const/4 v14, 0x1

    .line 265
    goto :goto_6

    .line 266
    :cond_6
    const/4 v14, 0x0

    .line 267
    :goto_6
    new-instance v8, Lf3/g;

    .line 268
    .line 269
    invoke-direct {v8, v0}, Lf3/g;-><init>(Lf3/j;)V

    .line 270
    .line 271
    .line 272
    const/16 v17, 0x0

    .line 273
    .line 274
    const/16 v16, 0x0

    .line 275
    .line 276
    move-object v10, v2

    .line 277
    move-object v13, v12

    .line 278
    move-wide v11, v3

    .line 279
    move-object v3, v13

    .line 280
    move-object v13, v7

    .line 281
    move-object v4, v15

    .line 282
    move/from16 v15, v16

    .line 283
    .line 284
    move-object/from16 v16, v8

    .line 285
    .line 286
    invoke-static/range {v9 .. v17}, Lf3/e;->i(Lv1/c;Ll2/v;JLr1/l;ZZLt7/d;Z)Ljava/util/ArrayList;

    .line 287
    .line 288
    .line 289
    move-result-object v7

    .line 290
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 291
    .line 292
    .line 293
    move-result v8

    .line 294
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 295
    .line 296
    .line 297
    move-result v9

    .line 298
    if-nez v9, :cond_a

    .line 299
    .line 300
    invoke-static {v7}, Lf3/r;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v9

    .line 304
    const/4 v10, 0x0

    .line 305
    :goto_7
    if-ge v10, v8, :cond_9

    .line 306
    .line 307
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v11

    .line 311
    check-cast v11, Lf3/v;

    .line 312
    .line 313
    iget-object v12, v11, Lf3/v;->a:Lf3/s;

    .line 314
    .line 315
    iget-object v13, v0, Lf3/j;->G:Ll2/q;

    .line 316
    .line 317
    iget v14, v12, Lf3/s;->b:I

    .line 318
    .line 319
    invoke-interface {v13, v10, v14}, Ll2/q;->z(II)Ll2/j0;

    .line 320
    .line 321
    .line 322
    move-result-object v13

    .line 323
    iget-wide v14, v12, Lf3/s;->e:J

    .line 324
    .line 325
    invoke-interface {v13, v14, v15}, Ll2/j0;->d(J)V

    .line 326
    .line 327
    .line 328
    move-object/from16 v16, v7

    .line 329
    .line 330
    iget-object v7, v12, Lf3/s;->g:Lr1/p;

    .line 331
    .line 332
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 333
    .line 334
    .line 335
    move/from16 v17, v8

    .line 336
    .line 337
    new-instance v8, Lr1/o;

    .line 338
    .line 339
    invoke-direct {v8, v7}, Lr1/o;-><init>(Lr1/p;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v8, v9}, Lr1/o;->b(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    move-object/from16 v21, v9

    .line 346
    .line 347
    iget v9, v12, Lf3/s;->b:I

    .line 348
    .line 349
    move/from16 v22, v10

    .line 350
    .line 351
    const/4 v10, 0x1

    .line 352
    if-ne v9, v10, :cond_7

    .line 353
    .line 354
    invoke-virtual {v2}, Ll2/v;->a()Z

    .line 355
    .line 356
    .line 357
    move-result v10

    .line 358
    if-eqz v10, :cond_7

    .line 359
    .line 360
    iget v10, v2, Ll2/v;->a:I

    .line 361
    .line 362
    iput v10, v8, Lr1/o;->I:I

    .line 363
    .line 364
    iget v10, v2, Ll2/v;->b:I

    .line 365
    .line 366
    iput v10, v8, Lr1/o;->J:I

    .line 367
    .line 368
    :cond_7
    iget-object v7, v7, Lr1/p;->l:Lr1/d0;

    .line 369
    .line 370
    move-object/from16 v23, v2

    .line 371
    .line 372
    const/4 v10, 0x2

    .line 373
    new-array v2, v10, [Lr1/d0;

    .line 374
    .line 375
    const/4 v10, 0x0

    .line 376
    aput-object v5, v2, v10

    .line 377
    .line 378
    const/4 v10, 0x1

    .line 379
    aput-object v6, v2, v10

    .line 380
    .line 381
    invoke-static {v9, v1, v8, v7, v2}, Lf3/r;->h(ILr1/d0;Lr1/o;Lr1/d0;[Lr1/d0;)V

    .line 382
    .line 383
    .line 384
    new-instance v2, Lf3/i;

    .line 385
    .line 386
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 387
    .line 388
    .line 389
    move-result v7

    .line 390
    iget v9, v12, Lf3/s;->a:I

    .line 391
    .line 392
    if-ne v7, v10, :cond_8

    .line 393
    .line 394
    const/4 v7, 0x0

    .line 395
    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v10

    .line 399
    check-cast v10, Lf3/f;

    .line 400
    .line 401
    goto :goto_8

    .line 402
    :cond_8
    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v7

    .line 406
    move-object v10, v7

    .line 407
    check-cast v10, Lf3/f;

    .line 408
    .line 409
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 410
    .line 411
    .line 412
    :goto_8
    new-instance v7, Lr1/p;

    .line 413
    .line 414
    invoke-direct {v7, v8}, Lr1/p;-><init>(Lr1/o;)V

    .line 415
    .line 416
    .line 417
    invoke-direct {v2, v13, v11, v10, v7}, Lf3/i;-><init>(Ll2/j0;Lf3/v;Lf3/f;Lr1/p;)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v4, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 421
    .line 422
    .line 423
    iget-wide v7, v0, Lf3/j;->y:J

    .line 424
    .line 425
    invoke-static {v7, v8, v14, v15}, Ljava/lang/Math;->max(JJ)J

    .line 426
    .line 427
    .line 428
    move-result-wide v7

    .line 429
    iput-wide v7, v0, Lf3/j;->y:J

    .line 430
    .line 431
    const/4 v2, 0x1

    .line 432
    add-int/lit8 v10, v22, 0x1

    .line 433
    .line 434
    move-object/from16 v7, v16

    .line 435
    .line 436
    move/from16 v8, v17

    .line 437
    .line 438
    move-object/from16 v9, v21

    .line 439
    .line 440
    move-object/from16 v2, v23

    .line 441
    .line 442
    goto/16 :goto_7

    .line 443
    .line 444
    :cond_9
    iget-object v1, v0, Lf3/j;->G:Ll2/q;

    .line 445
    .line 446
    invoke-interface {v1}, Ll2/q;->q()V

    .line 447
    .line 448
    .line 449
    goto :goto_c

    .line 450
    :cond_a
    move-object/from16 v16, v7

    .line 451
    .line 452
    move/from16 v17, v8

    .line 453
    .line 454
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 455
    .line 456
    .line 457
    move-result v1

    .line 458
    move/from16 v2, v17

    .line 459
    .line 460
    if-ne v1, v2, :cond_b

    .line 461
    .line 462
    const/4 v1, 0x1

    .line 463
    goto :goto_9

    .line 464
    :cond_b
    const/4 v1, 0x0

    .line 465
    :goto_9
    invoke-static {v1}, La9/o;->t(Z)V

    .line 466
    .line 467
    .line 468
    const/4 v1, 0x0

    .line 469
    :goto_a
    if-ge v1, v2, :cond_d

    .line 470
    .line 471
    move-object/from16 v5, v16

    .line 472
    .line 473
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v6

    .line 477
    check-cast v6, Lf3/v;

    .line 478
    .line 479
    iget-object v7, v6, Lf3/v;->a:Lf3/s;

    .line 480
    .line 481
    iget v8, v7, Lf3/s;->a:I

    .line 482
    .line 483
    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v8

    .line 487
    check-cast v8, Lf3/i;

    .line 488
    .line 489
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 490
    .line 491
    .line 492
    move-result v9

    .line 493
    const/4 v10, 0x1

    .line 494
    if-ne v9, v10, :cond_c

    .line 495
    .line 496
    const/4 v9, 0x0

    .line 497
    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v7

    .line 501
    check-cast v7, Lf3/f;

    .line 502
    .line 503
    goto :goto_b

    .line 504
    :cond_c
    iget v7, v7, Lf3/s;->a:I

    .line 505
    .line 506
    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v7

    .line 510
    check-cast v7, Lf3/f;

    .line 511
    .line 512
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 513
    .line 514
    .line 515
    :goto_b
    iput-object v6, v8, Lf3/i;->d:Lf3/v;

    .line 516
    .line 517
    iput-object v7, v8, Lf3/i;->e:Lf3/f;

    .line 518
    .line 519
    iget-object v6, v8, Lf3/i;->a:Ll2/j0;

    .line 520
    .line 521
    iget-object v7, v8, Lf3/i;->j:Lr1/p;

    .line 522
    .line 523
    invoke-interface {v6, v7}, Ll2/j0;->g(Lr1/p;)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v8}, Lf3/i;->e()V

    .line 527
    .line 528
    .line 529
    const/4 v6, 0x1

    .line 530
    add-int/2addr v1, v6

    .line 531
    move-object/from16 v16, v5

    .line 532
    .line 533
    goto :goto_a

    .line 534
    :cond_d
    :goto_c
    move-object v5, v0

    .line 535
    const/16 v4, 0x8

    .line 536
    .line 537
    const/4 v8, 0x0

    .line 538
    const/16 v11, 0x10

    .line 539
    .line 540
    const/4 v12, 0x1

    .line 541
    const/4 v14, 0x4

    .line 542
    const/4 v15, 0x2

    .line 543
    goto/16 :goto_47

    .line 544
    .line 545
    :cond_e
    move-object v1, v15

    .line 546
    const v2, 0x6d6f6f66

    .line 547
    .line 548
    .line 549
    if-ne v8, v2, :cond_5c

    .line 550
    .line 551
    iget-object v2, v9, Lv1/c;->e:Ljava/util/ArrayList;

    .line 552
    .line 553
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 554
    .line 555
    .line 556
    move-result v5

    .line 557
    const/4 v6, 0x0

    .line 558
    :goto_d
    if-ge v6, v5, :cond_55

    .line 559
    .line 560
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 561
    .line 562
    .line 563
    move-result-object v7

    .line 564
    check-cast v7, Lv1/c;

    .line 565
    .line 566
    iget v8, v7, Lab/a;->b:I

    .line 567
    .line 568
    const v9, 0x74726166

    .line 569
    .line 570
    .line 571
    if-ne v8, v9, :cond_54

    .line 572
    .line 573
    const v8, 0x74666864

    .line 574
    .line 575
    .line 576
    invoke-virtual {v7, v8}, Lv1/c;->i(I)Lv1/d;

    .line 577
    .line 578
    .line 579
    move-result-object v8

    .line 580
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 581
    .line 582
    .line 583
    iget-object v8, v8, Lv1/d;->c:Lu1/q;

    .line 584
    .line 585
    const/16 v9, 0x8

    .line 586
    .line 587
    invoke-virtual {v8, v9}, Lu1/q;->O(I)V

    .line 588
    .line 589
    .line 590
    invoke-virtual {v8}, Lu1/q;->o()I

    .line 591
    .line 592
    .line 593
    move-result v9

    .line 594
    sget-object v11, Lf3/e;->a:[B

    .line 595
    .line 596
    invoke-virtual {v8}, Lu1/q;->o()I

    .line 597
    .line 598
    .line 599
    move-result v11

    .line 600
    invoke-virtual {v1, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 601
    .line 602
    .line 603
    move-result-object v11

    .line 604
    check-cast v11, Lf3/i;

    .line 605
    .line 606
    if-nez v11, :cond_f

    .line 607
    .line 608
    const/4 v11, 0x0

    .line 609
    goto :goto_14

    .line 610
    :cond_f
    const/4 v12, 0x1

    .line 611
    and-int/lit8 v14, v9, 0x1

    .line 612
    .line 613
    iget-object v12, v11, Lf3/i;->b:Lf3/u;

    .line 614
    .line 615
    if-eqz v14, :cond_10

    .line 616
    .line 617
    invoke-virtual {v8}, Lu1/q;->H()J

    .line 618
    .line 619
    .line 620
    move-result-wide v14

    .line 621
    iput-wide v14, v12, Lf3/u;->b:J

    .line 622
    .line 623
    iput-wide v14, v12, Lf3/u;->c:J

    .line 624
    .line 625
    :cond_10
    iget-object v14, v11, Lf3/i;->e:Lf3/f;

    .line 626
    .line 627
    const/4 v15, 0x2

    .line 628
    and-int/lit8 v21, v9, 0x2

    .line 629
    .line 630
    if-eqz v21, :cond_11

    .line 631
    .line 632
    invoke-virtual {v8}, Lu1/q;->o()I

    .line 633
    .line 634
    .line 635
    move-result v15

    .line 636
    const/16 v20, 0x1

    .line 637
    .line 638
    add-int/lit8 v15, v15, -0x1

    .line 639
    .line 640
    :goto_e
    const/16 v19, 0x8

    .line 641
    .line 642
    goto :goto_f

    .line 643
    :cond_11
    iget v15, v14, Lf3/f;->a:I

    .line 644
    .line 645
    goto :goto_e

    .line 646
    :goto_f
    and-int/lit8 v21, v9, 0x8

    .line 647
    .line 648
    if-eqz v21, :cond_12

    .line 649
    .line 650
    invoke-virtual {v8}, Lu1/q;->o()I

    .line 651
    .line 652
    .line 653
    move-result v21

    .line 654
    move/from16 v3, v21

    .line 655
    .line 656
    :goto_10
    const/16 v4, 0x10

    .line 657
    .line 658
    goto :goto_11

    .line 659
    :cond_12
    iget v3, v14, Lf3/f;->b:I

    .line 660
    .line 661
    goto :goto_10

    .line 662
    :goto_11
    and-int/lit8 v23, v9, 0x10

    .line 663
    .line 664
    if-eqz v23, :cond_13

    .line 665
    .line 666
    invoke-virtual {v8}, Lu1/q;->o()I

    .line 667
    .line 668
    .line 669
    move-result v4

    .line 670
    goto :goto_12

    .line 671
    :cond_13
    iget v4, v14, Lf3/f;->c:I

    .line 672
    .line 673
    :goto_12
    and-int/lit8 v9, v9, 0x20

    .line 674
    .line 675
    if-eqz v9, :cond_14

    .line 676
    .line 677
    invoke-virtual {v8}, Lu1/q;->o()I

    .line 678
    .line 679
    .line 680
    move-result v8

    .line 681
    goto :goto_13

    .line 682
    :cond_14
    iget v8, v14, Lf3/f;->d:I

    .line 683
    .line 684
    :goto_13
    new-instance v9, Lf3/f;

    .line 685
    .line 686
    invoke-direct {v9, v15, v3, v4, v8}, Lf3/f;-><init>(IIII)V

    .line 687
    .line 688
    .line 689
    iput-object v9, v12, Lf3/u;->a:Lf3/f;

    .line 690
    .line 691
    :goto_14
    if-nez v11, :cond_15

    .line 692
    .line 693
    goto/16 :goto_41

    .line 694
    .line 695
    :cond_15
    iget-object v3, v11, Lf3/i;->b:Lf3/u;

    .line 696
    .line 697
    iget-wide v8, v3, Lf3/u;->p:J

    .line 698
    .line 699
    iget-boolean v4, v3, Lf3/u;->q:Z

    .line 700
    .line 701
    invoke-virtual {v11}, Lf3/i;->e()V

    .line 702
    .line 703
    .line 704
    const/4 v12, 0x1

    .line 705
    iput-boolean v12, v11, Lf3/i;->m:Z

    .line 706
    .line 707
    const v14, 0x74666474

    .line 708
    .line 709
    .line 710
    invoke-virtual {v7, v14}, Lv1/c;->i(I)Lv1/d;

    .line 711
    .line 712
    .line 713
    move-result-object v14

    .line 714
    if-eqz v14, :cond_17

    .line 715
    .line 716
    const/4 v15, 0x2

    .line 717
    and-int/lit8 v20, v13, 0x2

    .line 718
    .line 719
    if-nez v20, :cond_17

    .line 720
    .line 721
    iget-object v4, v14, Lv1/d;->c:Lu1/q;

    .line 722
    .line 723
    const/16 v8, 0x8

    .line 724
    .line 725
    invoke-virtual {v4, v8}, Lu1/q;->O(I)V

    .line 726
    .line 727
    .line 728
    invoke-virtual {v4}, Lu1/q;->o()I

    .line 729
    .line 730
    .line 731
    move-result v8

    .line 732
    invoke-static {v8}, Lf3/e;->e(I)I

    .line 733
    .line 734
    .line 735
    move-result v8

    .line 736
    if-ne v8, v12, :cond_16

    .line 737
    .line 738
    invoke-virtual {v4}, Lu1/q;->H()J

    .line 739
    .line 740
    .line 741
    move-result-wide v8

    .line 742
    goto :goto_15

    .line 743
    :cond_16
    invoke-virtual {v4}, Lu1/q;->D()J

    .line 744
    .line 745
    .line 746
    move-result-wide v8

    .line 747
    :goto_15
    iput-wide v8, v3, Lf3/u;->p:J

    .line 748
    .line 749
    iput-boolean v12, v3, Lf3/u;->q:Z

    .line 750
    .line 751
    goto :goto_16

    .line 752
    :cond_17
    iput-wide v8, v3, Lf3/u;->p:J

    .line 753
    .line 754
    iput-boolean v4, v3, Lf3/u;->q:Z

    .line 755
    .line 756
    :goto_16
    iget-object v4, v7, Lv1/c;->d:Ljava/util/ArrayList;

    .line 757
    .line 758
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 759
    .line 760
    .line 761
    move-result v8

    .line 762
    const/4 v9, 0x0

    .line 763
    const/4 v12, 0x0

    .line 764
    const/4 v14, 0x0

    .line 765
    :goto_17
    const v15, 0x7472756e

    .line 766
    .line 767
    .line 768
    if-ge v9, v8, :cond_19

    .line 769
    .line 770
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 771
    .line 772
    .line 773
    move-result-object v23

    .line 774
    move-object/from16 v24, v2

    .line 775
    .line 776
    move-object/from16 v2, v23

    .line 777
    .line 778
    check-cast v2, Lv1/d;

    .line 779
    .line 780
    move/from16 v23, v5

    .line 781
    .line 782
    iget v5, v2, Lab/a;->b:I

    .line 783
    .line 784
    if-ne v5, v15, :cond_18

    .line 785
    .line 786
    iget-object v2, v2, Lv1/d;->c:Lu1/q;

    .line 787
    .line 788
    const/16 v5, 0xc

    .line 789
    .line 790
    invoke-virtual {v2, v5}, Lu1/q;->O(I)V

    .line 791
    .line 792
    .line 793
    invoke-virtual {v2}, Lu1/q;->F()I

    .line 794
    .line 795
    .line 796
    move-result v2

    .line 797
    if-lez v2, :cond_18

    .line 798
    .line 799
    add-int/2addr v14, v2

    .line 800
    const/4 v2, 0x1

    .line 801
    add-int/2addr v12, v2

    .line 802
    goto :goto_18

    .line 803
    :cond_18
    const/4 v2, 0x1

    .line 804
    :goto_18
    add-int/2addr v9, v2

    .line 805
    move/from16 v5, v23

    .line 806
    .line 807
    move-object/from16 v2, v24

    .line 808
    .line 809
    goto :goto_17

    .line 810
    :cond_19
    move-object/from16 v24, v2

    .line 811
    .line 812
    move/from16 v23, v5

    .line 813
    .line 814
    const/4 v2, 0x0

    .line 815
    iput v2, v11, Lf3/i;->h:I

    .line 816
    .line 817
    iput v2, v11, Lf3/i;->g:I

    .line 818
    .line 819
    iput v2, v11, Lf3/i;->f:I

    .line 820
    .line 821
    iput v12, v3, Lf3/u;->d:I

    .line 822
    .line 823
    iput v14, v3, Lf3/u;->e:I

    .line 824
    .line 825
    iget-object v2, v3, Lf3/u;->g:[I

    .line 826
    .line 827
    array-length v2, v2

    .line 828
    if-ge v2, v12, :cond_1a

    .line 829
    .line 830
    new-array v2, v12, [J

    .line 831
    .line 832
    iput-object v2, v3, Lf3/u;->f:[J

    .line 833
    .line 834
    new-array v2, v12, [I

    .line 835
    .line 836
    iput-object v2, v3, Lf3/u;->g:[I

    .line 837
    .line 838
    :cond_1a
    iget-object v2, v3, Lf3/u;->h:[I

    .line 839
    .line 840
    array-length v2, v2

    .line 841
    if-ge v2, v14, :cond_1b

    .line 842
    .line 843
    mul-int/lit8 v14, v14, 0x7d

    .line 844
    .line 845
    div-int/lit8 v14, v14, 0x64

    .line 846
    .line 847
    new-array v2, v14, [I

    .line 848
    .line 849
    iput-object v2, v3, Lf3/u;->h:[I

    .line 850
    .line 851
    new-array v2, v14, [J

    .line 852
    .line 853
    iput-object v2, v3, Lf3/u;->i:[J

    .line 854
    .line 855
    new-array v2, v14, [Z

    .line 856
    .line 857
    iput-object v2, v3, Lf3/u;->j:[Z

    .line 858
    .line 859
    new-array v2, v14, [Z

    .line 860
    .line 861
    iput-object v2, v3, Lf3/u;->l:[Z

    .line 862
    .line 863
    :cond_1b
    const/4 v2, 0x0

    .line 864
    const/4 v5, 0x0

    .line 865
    const/4 v9, 0x0

    .line 866
    :goto_19
    const-wide/16 v25, 0x0

    .line 867
    .line 868
    if-ge v2, v8, :cond_35

    .line 869
    .line 870
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 871
    .line 872
    .line 873
    move-result-object v12

    .line 874
    check-cast v12, Lv1/d;

    .line 875
    .line 876
    iget v14, v12, Lab/a;->b:I

    .line 877
    .line 878
    if-ne v14, v15, :cond_34

    .line 879
    .line 880
    const/4 v14, 0x1

    .line 881
    add-int/lit8 v27, v5, 0x1

    .line 882
    .line 883
    iget-object v12, v12, Lv1/d;->c:Lu1/q;

    .line 884
    .line 885
    const/16 v14, 0x8

    .line 886
    .line 887
    invoke-virtual {v12, v14}, Lu1/q;->O(I)V

    .line 888
    .line 889
    .line 890
    invoke-virtual {v12}, Lu1/q;->o()I

    .line 891
    .line 892
    .line 893
    move-result v14

    .line 894
    sget-object v28, Lf3/e;->a:[B

    .line 895
    .line 896
    iget-object v15, v11, Lf3/i;->d:Lf3/v;

    .line 897
    .line 898
    move/from16 v29, v8

    .line 899
    .line 900
    iget-object v8, v3, Lf3/u;->a:Lf3/f;

    .line 901
    .line 902
    sget-object v30, Lu1/f0;->a:Ljava/lang/String;

    .line 903
    .line 904
    move-object/from16 v30, v1

    .line 905
    .line 906
    iget-object v1, v3, Lf3/u;->g:[I

    .line 907
    .line 908
    invoke-virtual {v12}, Lu1/q;->F()I

    .line 909
    .line 910
    .line 911
    move-result v31

    .line 912
    aput v31, v1, v5

    .line 913
    .line 914
    iget-object v1, v3, Lf3/u;->f:[J

    .line 915
    .line 916
    move/from16 v31, v6

    .line 917
    .line 918
    move-object/from16 v32, v7

    .line 919
    .line 920
    iget-wide v6, v3, Lf3/u;->b:J

    .line 921
    .line 922
    aput-wide v6, v1, v5

    .line 923
    .line 924
    const/16 v20, 0x1

    .line 925
    .line 926
    and-int/lit8 v33, v14, 0x1

    .line 927
    .line 928
    if-eqz v33, :cond_1c

    .line 929
    .line 930
    move-object/from16 v33, v10

    .line 931
    .line 932
    invoke-virtual {v12}, Lu1/q;->o()I

    .line 933
    .line 934
    .line 935
    move-result v10

    .line 936
    move-object/from16 v34, v11

    .line 937
    .line 938
    int-to-long v10, v10

    .line 939
    add-long/2addr v6, v10

    .line 940
    aput-wide v6, v1, v5

    .line 941
    .line 942
    :goto_1a
    const/4 v1, 0x4

    .line 943
    goto :goto_1b

    .line 944
    :cond_1c
    move-object/from16 v33, v10

    .line 945
    .line 946
    move-object/from16 v34, v11

    .line 947
    .line 948
    goto :goto_1a

    .line 949
    :goto_1b
    and-int/lit8 v6, v14, 0x4

    .line 950
    .line 951
    if-eqz v6, :cond_1d

    .line 952
    .line 953
    const/4 v1, 0x1

    .line 954
    goto :goto_1c

    .line 955
    :cond_1d
    const/4 v1, 0x0

    .line 956
    :goto_1c
    iget v6, v8, Lf3/f;->d:I

    .line 957
    .line 958
    if-eqz v1, :cond_1e

    .line 959
    .line 960
    invoke-virtual {v12}, Lu1/q;->o()I

    .line 961
    .line 962
    .line 963
    move-result v6

    .line 964
    :cond_1e
    and-int/lit16 v7, v14, 0x100

    .line 965
    .line 966
    if-eqz v7, :cond_1f

    .line 967
    .line 968
    const/4 v7, 0x1

    .line 969
    goto :goto_1d

    .line 970
    :cond_1f
    const/4 v7, 0x0

    .line 971
    :goto_1d
    and-int/lit16 v10, v14, 0x200

    .line 972
    .line 973
    if-eqz v10, :cond_20

    .line 974
    .line 975
    const/4 v10, 0x1

    .line 976
    goto :goto_1e

    .line 977
    :cond_20
    const/4 v10, 0x0

    .line 978
    :goto_1e
    and-int/lit16 v11, v14, 0x400

    .line 979
    .line 980
    if-eqz v11, :cond_21

    .line 981
    .line 982
    const/4 v11, 0x1

    .line 983
    goto :goto_1f

    .line 984
    :cond_21
    const/4 v11, 0x0

    .line 985
    :goto_1f
    and-int/lit16 v14, v14, 0x800

    .line 986
    .line 987
    if-eqz v14, :cond_22

    .line 988
    .line 989
    const/4 v14, 0x1

    .line 990
    goto :goto_20

    .line 991
    :cond_22
    const/4 v14, 0x0

    .line 992
    :goto_20
    iget-object v15, v15, Lf3/v;->a:Lf3/s;

    .line 993
    .line 994
    move/from16 v35, v6

    .line 995
    .line 996
    iget-object v6, v15, Lf3/s;->i:[J

    .line 997
    .line 998
    if-eqz v6, :cond_26

    .line 999
    .line 1000
    array-length v0, v6

    .line 1001
    move-object/from16 v36, v4

    .line 1002
    .line 1003
    const/4 v4, 0x1

    .line 1004
    if-ne v0, v4, :cond_23

    .line 1005
    .line 1006
    iget-object v0, v15, Lf3/s;->j:[J

    .line 1007
    .line 1008
    if-nez v0, :cond_24

    .line 1009
    .line 1010
    :cond_23
    move v6, v1

    .line 1011
    move v4, v2

    .line 1012
    move/from16 v37, v10

    .line 1013
    .line 1014
    move/from16 v38, v11

    .line 1015
    .line 1016
    goto :goto_23

    .line 1017
    :cond_24
    const/4 v4, 0x0

    .line 1018
    aget-wide v37, v6, v4

    .line 1019
    .line 1020
    cmp-long v4, v37, v25

    .line 1021
    .line 1022
    if-nez v4, :cond_25

    .line 1023
    .line 1024
    move v6, v1

    .line 1025
    move v4, v2

    .line 1026
    move/from16 v37, v10

    .line 1027
    .line 1028
    move/from16 v38, v11

    .line 1029
    .line 1030
    :goto_21
    const/4 v1, 0x0

    .line 1031
    goto :goto_22

    .line 1032
    :cond_25
    sget-object v45, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 1033
    .line 1034
    const-wide/32 v39, 0xf4240

    .line 1035
    .line 1036
    .line 1037
    move v6, v1

    .line 1038
    move v4, v2

    .line 1039
    iget-wide v1, v15, Lf3/s;->d:J

    .line 1040
    .line 1041
    move-wide/from16 v41, v1

    .line 1042
    .line 1043
    move-object/from16 v43, v45

    .line 1044
    .line 1045
    invoke-static/range {v37 .. v43}, Lu1/f0;->M(JJJLjava/math/RoundingMode;)J

    .line 1046
    .line 1047
    .line 1048
    move-result-wide v1

    .line 1049
    const/16 v18, 0x0

    .line 1050
    .line 1051
    aget-wide v39, v0, v18

    .line 1052
    .line 1053
    const-wide/32 v41, 0xf4240

    .line 1054
    .line 1055
    .line 1056
    move/from16 v37, v10

    .line 1057
    .line 1058
    move/from16 v38, v11

    .line 1059
    .line 1060
    iget-wide v10, v15, Lf3/s;->c:J

    .line 1061
    .line 1062
    move-wide/from16 v43, v10

    .line 1063
    .line 1064
    invoke-static/range {v39 .. v45}, Lu1/f0;->M(JJJLjava/math/RoundingMode;)J

    .line 1065
    .line 1066
    .line 1067
    move-result-wide v10

    .line 1068
    add-long/2addr v1, v10

    .line 1069
    iget-wide v10, v15, Lf3/s;->e:J

    .line 1070
    .line 1071
    cmp-long v39, v1, v10

    .line 1072
    .line 1073
    if-ltz v39, :cond_27

    .line 1074
    .line 1075
    goto :goto_21

    .line 1076
    :goto_22
    aget-wide v25, v0, v1

    .line 1077
    .line 1078
    goto :goto_23

    .line 1079
    :cond_26
    move v6, v1

    .line 1080
    move-object/from16 v36, v4

    .line 1081
    .line 1082
    move/from16 v37, v10

    .line 1083
    .line 1084
    move/from16 v38, v11

    .line 1085
    .line 1086
    move v4, v2

    .line 1087
    :cond_27
    :goto_23
    iget-object v0, v3, Lf3/u;->h:[I

    .line 1088
    .line 1089
    iget-object v1, v3, Lf3/u;->i:[J

    .line 1090
    .line 1091
    iget-object v2, v3, Lf3/u;->j:[Z

    .line 1092
    .line 1093
    iget v10, v15, Lf3/s;->b:I

    .line 1094
    .line 1095
    const/4 v11, 0x2

    .line 1096
    if-ne v10, v11, :cond_28

    .line 1097
    .line 1098
    const/4 v10, 0x1

    .line 1099
    and-int/lit8 v11, v13, 0x1

    .line 1100
    .line 1101
    if-eqz v11, :cond_28

    .line 1102
    .line 1103
    const/4 v10, 0x1

    .line 1104
    goto :goto_24

    .line 1105
    :cond_28
    const/4 v10, 0x0

    .line 1106
    :goto_24
    iget-object v11, v3, Lf3/u;->g:[I

    .line 1107
    .line 1108
    aget v5, v11, v5

    .line 1109
    .line 1110
    add-int/2addr v5, v9

    .line 1111
    move v11, v9

    .line 1112
    move/from16 v39, v10

    .line 1113
    .line 1114
    iget-wide v9, v3, Lf3/u;->p:J

    .line 1115
    .line 1116
    move-wide/from16 v53, v9

    .line 1117
    .line 1118
    move v9, v11

    .line 1119
    move-wide/from16 v10, v53

    .line 1120
    .line 1121
    :goto_25
    if-ge v9, v5, :cond_33

    .line 1122
    .line 1123
    if-eqz v7, :cond_29

    .line 1124
    .line 1125
    invoke-virtual {v12}, Lu1/q;->o()I

    .line 1126
    .line 1127
    .line 1128
    move-result v40

    .line 1129
    move/from16 v41, v7

    .line 1130
    .line 1131
    move/from16 v53, v40

    .line 1132
    .line 1133
    move/from16 v40, v5

    .line 1134
    .line 1135
    move/from16 v5, v53

    .line 1136
    .line 1137
    goto :goto_26

    .line 1138
    :cond_29
    move/from16 v40, v5

    .line 1139
    .line 1140
    iget v5, v8, Lf3/f;->b:I

    .line 1141
    .line 1142
    move/from16 v41, v7

    .line 1143
    .line 1144
    :goto_26
    const-string v7, "Unexpected negative value: "

    .line 1145
    .line 1146
    if-ltz v5, :cond_32

    .line 1147
    .line 1148
    if-eqz v37, :cond_2a

    .line 1149
    .line 1150
    invoke-virtual {v12}, Lu1/q;->o()I

    .line 1151
    .line 1152
    .line 1153
    move-result v42

    .line 1154
    move/from16 v53, v42

    .line 1155
    .line 1156
    move/from16 v42, v13

    .line 1157
    .line 1158
    move/from16 v13, v53

    .line 1159
    .line 1160
    goto :goto_27

    .line 1161
    :cond_2a
    move/from16 v42, v13

    .line 1162
    .line 1163
    iget v13, v8, Lf3/f;->c:I

    .line 1164
    .line 1165
    :goto_27
    if-ltz v13, :cond_31

    .line 1166
    .line 1167
    if-eqz v38, :cond_2b

    .line 1168
    .line 1169
    invoke-virtual {v12}, Lu1/q;->o()I

    .line 1170
    .line 1171
    .line 1172
    move-result v7

    .line 1173
    goto :goto_28

    .line 1174
    :cond_2b
    if-nez v9, :cond_2c

    .line 1175
    .line 1176
    if-eqz v6, :cond_2c

    .line 1177
    .line 1178
    move/from16 v7, v35

    .line 1179
    .line 1180
    goto :goto_28

    .line 1181
    :cond_2c
    iget v7, v8, Lf3/f;->d:I

    .line 1182
    .line 1183
    :goto_28
    if-eqz v14, :cond_2d

    .line 1184
    .line 1185
    invoke-virtual {v12}, Lu1/q;->o()I

    .line 1186
    .line 1187
    .line 1188
    move-result v43

    .line 1189
    move/from16 v44, v4

    .line 1190
    .line 1191
    move/from16 v45, v5

    .line 1192
    .line 1193
    move/from16 v53, v43

    .line 1194
    .line 1195
    move/from16 v43, v6

    .line 1196
    .line 1197
    move/from16 v6, v53

    .line 1198
    .line 1199
    goto :goto_29

    .line 1200
    :cond_2d
    move/from16 v44, v4

    .line 1201
    .line 1202
    move/from16 v45, v5

    .line 1203
    .line 1204
    move/from16 v43, v6

    .line 1205
    .line 1206
    const/4 v6, 0x0

    .line 1207
    :goto_29
    int-to-long v4, v6

    .line 1208
    add-long/2addr v4, v10

    .line 1209
    sub-long v46, v4, v25

    .line 1210
    .line 1211
    sget-object v52, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 1212
    .line 1213
    const-wide/32 v48, 0xf4240

    .line 1214
    .line 1215
    .line 1216
    iget-wide v4, v15, Lf3/s;->c:J

    .line 1217
    .line 1218
    move-wide/from16 v50, v4

    .line 1219
    .line 1220
    invoke-static/range {v46 .. v52}, Lu1/f0;->M(JJJLjava/math/RoundingMode;)J

    .line 1221
    .line 1222
    .line 1223
    move-result-wide v4

    .line 1224
    aput-wide v4, v1, v9

    .line 1225
    .line 1226
    iget-boolean v6, v3, Lf3/u;->q:Z

    .line 1227
    .line 1228
    if-nez v6, :cond_2e

    .line 1229
    .line 1230
    move-object/from16 v6, v34

    .line 1231
    .line 1232
    move-object/from16 v34, v8

    .line 1233
    .line 1234
    iget-object v8, v6, Lf3/i;->d:Lf3/v;

    .line 1235
    .line 1236
    move/from16 v46, v14

    .line 1237
    .line 1238
    move-object/from16 v47, v15

    .line 1239
    .line 1240
    iget-wide v14, v8, Lf3/v;->i:J

    .line 1241
    .line 1242
    add-long/2addr v4, v14

    .line 1243
    aput-wide v4, v1, v9

    .line 1244
    .line 1245
    goto :goto_2a

    .line 1246
    :cond_2e
    move/from16 v46, v14

    .line 1247
    .line 1248
    move-object/from16 v47, v15

    .line 1249
    .line 1250
    move-object/from16 v6, v34

    .line 1251
    .line 1252
    move-object/from16 v34, v8

    .line 1253
    .line 1254
    :goto_2a
    aput v13, v0, v9

    .line 1255
    .line 1256
    const/16 v4, 0x10

    .line 1257
    .line 1258
    shr-int/lit8 v5, v7, 0x10

    .line 1259
    .line 1260
    const/4 v4, 0x1

    .line 1261
    and-int/2addr v5, v4

    .line 1262
    if-nez v5, :cond_30

    .line 1263
    .line 1264
    if-eqz v39, :cond_2f

    .line 1265
    .line 1266
    if-nez v9, :cond_30

    .line 1267
    .line 1268
    :cond_2f
    const/4 v4, 0x1

    .line 1269
    goto :goto_2b

    .line 1270
    :cond_30
    const/4 v4, 0x0

    .line 1271
    :goto_2b
    aput-boolean v4, v2, v9

    .line 1272
    .line 1273
    move/from16 v5, v45

    .line 1274
    .line 1275
    int-to-long v4, v5

    .line 1276
    add-long/2addr v10, v4

    .line 1277
    const/4 v4, 0x1

    .line 1278
    add-int/2addr v9, v4

    .line 1279
    move-object/from16 v8, v34

    .line 1280
    .line 1281
    move/from16 v5, v40

    .line 1282
    .line 1283
    move/from16 v7, v41

    .line 1284
    .line 1285
    move/from16 v13, v42

    .line 1286
    .line 1287
    move/from16 v4, v44

    .line 1288
    .line 1289
    move/from16 v14, v46

    .line 1290
    .line 1291
    move-object/from16 v15, v47

    .line 1292
    .line 1293
    move-object/from16 v34, v6

    .line 1294
    .line 1295
    move/from16 v6, v43

    .line 1296
    .line 1297
    goto/16 :goto_25

    .line 1298
    .line 1299
    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1300
    .line 1301
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1302
    .line 1303
    .line 1304
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1305
    .line 1306
    .line 1307
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1308
    .line 1309
    .line 1310
    move-result-object v0

    .line 1311
    const/4 v1, 0x0

    .line 1312
    invoke-static {v1, v0}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v0

    .line 1316
    throw v0

    .line 1317
    :cond_32
    const/4 v1, 0x0

    .line 1318
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1319
    .line 1320
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1321
    .line 1322
    .line 1323
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1324
    .line 1325
    .line 1326
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v0

    .line 1330
    invoke-static {v1, v0}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v0

    .line 1334
    throw v0

    .line 1335
    :cond_33
    move/from16 v44, v4

    .line 1336
    .line 1337
    move/from16 v40, v5

    .line 1338
    .line 1339
    move/from16 v42, v13

    .line 1340
    .line 1341
    move-object/from16 v6, v34

    .line 1342
    .line 1343
    iput-wide v10, v3, Lf3/u;->p:J

    .line 1344
    .line 1345
    move/from16 v5, v27

    .line 1346
    .line 1347
    move/from16 v9, v40

    .line 1348
    .line 1349
    :goto_2c
    const/4 v0, 0x1

    .line 1350
    goto :goto_2d

    .line 1351
    :cond_34
    move-object/from16 v30, v1

    .line 1352
    .line 1353
    move/from16 v44, v2

    .line 1354
    .line 1355
    move-object/from16 v36, v4

    .line 1356
    .line 1357
    move/from16 v31, v6

    .line 1358
    .line 1359
    move-object/from16 v32, v7

    .line 1360
    .line 1361
    move/from16 v29, v8

    .line 1362
    .line 1363
    move-object/from16 v33, v10

    .line 1364
    .line 1365
    move-object v6, v11

    .line 1366
    move/from16 v42, v13

    .line 1367
    .line 1368
    move v11, v9

    .line 1369
    goto :goto_2c

    .line 1370
    :goto_2d
    add-int/lit8 v2, v44, 0x1

    .line 1371
    .line 1372
    move-object/from16 v0, p0

    .line 1373
    .line 1374
    move-object v11, v6

    .line 1375
    move/from16 v8, v29

    .line 1376
    .line 1377
    move-object/from16 v1, v30

    .line 1378
    .line 1379
    move/from16 v6, v31

    .line 1380
    .line 1381
    move-object/from16 v7, v32

    .line 1382
    .line 1383
    move-object/from16 v10, v33

    .line 1384
    .line 1385
    move-object/from16 v4, v36

    .line 1386
    .line 1387
    move/from16 v13, v42

    .line 1388
    .line 1389
    const v15, 0x7472756e

    .line 1390
    .line 1391
    .line 1392
    goto/16 :goto_19

    .line 1393
    .line 1394
    :cond_35
    move-object/from16 v30, v1

    .line 1395
    .line 1396
    move-object/from16 v36, v4

    .line 1397
    .line 1398
    move/from16 v31, v6

    .line 1399
    .line 1400
    move-object/from16 v32, v7

    .line 1401
    .line 1402
    move-object/from16 v33, v10

    .line 1403
    .line 1404
    move-object v6, v11

    .line 1405
    move/from16 v42, v13

    .line 1406
    .line 1407
    iget-object v0, v6, Lf3/i;->d:Lf3/v;

    .line 1408
    .line 1409
    iget-object v1, v3, Lf3/u;->a:Lf3/f;

    .line 1410
    .line 1411
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1412
    .line 1413
    .line 1414
    iget-object v0, v0, Lf3/v;->a:Lf3/s;

    .line 1415
    .line 1416
    iget-object v0, v0, Lf3/s;->l:[Lf3/t;

    .line 1417
    .line 1418
    iget v1, v1, Lf3/f;->a:I

    .line 1419
    .line 1420
    aget-object v0, v0, v1

    .line 1421
    .line 1422
    const v1, 0x7361697a

    .line 1423
    .line 1424
    .line 1425
    move-object/from16 v7, v32

    .line 1426
    .line 1427
    invoke-virtual {v7, v1}, Lv1/c;->i(I)Lv1/d;

    .line 1428
    .line 1429
    .line 1430
    move-result-object v1

    .line 1431
    if-eqz v1, :cond_3c

    .line 1432
    .line 1433
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1434
    .line 1435
    .line 1436
    iget-object v1, v1, Lv1/d;->c:Lu1/q;

    .line 1437
    .line 1438
    const/16 v2, 0x8

    .line 1439
    .line 1440
    invoke-virtual {v1, v2}, Lu1/q;->O(I)V

    .line 1441
    .line 1442
    .line 1443
    invoke-virtual {v1}, Lu1/q;->o()I

    .line 1444
    .line 1445
    .line 1446
    move-result v4

    .line 1447
    sget-object v5, Lf3/e;->a:[B

    .line 1448
    .line 1449
    const/4 v5, 0x1

    .line 1450
    and-int/2addr v4, v5

    .line 1451
    if-ne v4, v5, :cond_36

    .line 1452
    .line 1453
    invoke-virtual {v1, v2}, Lu1/q;->P(I)V

    .line 1454
    .line 1455
    .line 1456
    :cond_36
    invoke-virtual {v1}, Lu1/q;->B()I

    .line 1457
    .line 1458
    .line 1459
    move-result v2

    .line 1460
    invoke-virtual {v1}, Lu1/q;->F()I

    .line 1461
    .line 1462
    .line 1463
    move-result v4

    .line 1464
    iget v5, v3, Lf3/u;->e:I

    .line 1465
    .line 1466
    if-gt v4, v5, :cond_3b

    .line 1467
    .line 1468
    iget v5, v0, Lf3/t;->d:I

    .line 1469
    .line 1470
    if-nez v2, :cond_39

    .line 1471
    .line 1472
    iget-object v2, v3, Lf3/u;->l:[Z

    .line 1473
    .line 1474
    const/4 v6, 0x0

    .line 1475
    const/4 v8, 0x0

    .line 1476
    :goto_2e
    if-ge v6, v4, :cond_38

    .line 1477
    .line 1478
    invoke-virtual {v1}, Lu1/q;->B()I

    .line 1479
    .line 1480
    .line 1481
    move-result v9

    .line 1482
    add-int/2addr v8, v9

    .line 1483
    if-le v9, v5, :cond_37

    .line 1484
    .line 1485
    const/4 v9, 0x1

    .line 1486
    goto :goto_2f

    .line 1487
    :cond_37
    const/4 v9, 0x0

    .line 1488
    :goto_2f
    aput-boolean v9, v2, v6

    .line 1489
    .line 1490
    const/4 v9, 0x1

    .line 1491
    add-int/2addr v6, v9

    .line 1492
    goto :goto_2e

    .line 1493
    :cond_38
    const/4 v5, 0x0

    .line 1494
    goto :goto_31

    .line 1495
    :cond_39
    if-le v2, v5, :cond_3a

    .line 1496
    .line 1497
    const/4 v1, 0x1

    .line 1498
    goto :goto_30

    .line 1499
    :cond_3a
    const/4 v1, 0x0

    .line 1500
    :goto_30
    mul-int v8, v2, v4

    .line 1501
    .line 1502
    iget-object v2, v3, Lf3/u;->l:[Z

    .line 1503
    .line 1504
    const/4 v5, 0x0

    .line 1505
    invoke-static {v2, v5, v4, v1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 1506
    .line 1507
    .line 1508
    :goto_31
    iget-object v1, v3, Lf3/u;->l:[Z

    .line 1509
    .line 1510
    iget v2, v3, Lf3/u;->e:I

    .line 1511
    .line 1512
    invoke-static {v1, v4, v2, v5}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 1513
    .line 1514
    .line 1515
    if-lez v8, :cond_3c

    .line 1516
    .line 1517
    iget-object v1, v3, Lf3/u;->n:Lu1/q;

    .line 1518
    .line 1519
    invoke-virtual {v1, v8}, Lu1/q;->L(I)V

    .line 1520
    .line 1521
    .line 1522
    const/4 v1, 0x1

    .line 1523
    iput-boolean v1, v3, Lf3/u;->k:Z

    .line 1524
    .line 1525
    iput-boolean v1, v3, Lf3/u;->o:Z

    .line 1526
    .line 1527
    goto :goto_32

    .line 1528
    :cond_3b
    const-string v0, "Saiz sample count "

    .line 1529
    .line 1530
    const-string v1, " is greater than fragment sample count"

    .line 1531
    .line 1532
    invoke-static {v0, v4, v1}, Lg/b;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1533
    .line 1534
    .line 1535
    move-result-object v0

    .line 1536
    iget v1, v3, Lf3/u;->e:I

    .line 1537
    .line 1538
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1539
    .line 1540
    .line 1541
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1542
    .line 1543
    .line 1544
    move-result-object v0

    .line 1545
    const/4 v1, 0x0

    .line 1546
    invoke-static {v1, v0}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 1547
    .line 1548
    .line 1549
    move-result-object v0

    .line 1550
    throw v0

    .line 1551
    :cond_3c
    :goto_32
    const v1, 0x7361696f

    .line 1552
    .line 1553
    .line 1554
    invoke-virtual {v7, v1}, Lv1/c;->i(I)Lv1/d;

    .line 1555
    .line 1556
    .line 1557
    move-result-object v1

    .line 1558
    if-eqz v1, :cond_3f

    .line 1559
    .line 1560
    iget-object v1, v1, Lv1/d;->c:Lu1/q;

    .line 1561
    .line 1562
    const/16 v2, 0x8

    .line 1563
    .line 1564
    invoke-virtual {v1, v2}, Lu1/q;->O(I)V

    .line 1565
    .line 1566
    .line 1567
    invoke-virtual {v1}, Lu1/q;->o()I

    .line 1568
    .line 1569
    .line 1570
    move-result v4

    .line 1571
    sget-object v5, Lf3/e;->a:[B

    .line 1572
    .line 1573
    const/4 v5, 0x1

    .line 1574
    and-int/lit8 v6, v4, 0x1

    .line 1575
    .line 1576
    if-ne v6, v5, :cond_3d

    .line 1577
    .line 1578
    invoke-virtual {v1, v2}, Lu1/q;->P(I)V

    .line 1579
    .line 1580
    .line 1581
    :cond_3d
    invoke-virtual {v1}, Lu1/q;->F()I

    .line 1582
    .line 1583
    .line 1584
    move-result v2

    .line 1585
    if-ne v2, v5, :cond_40

    .line 1586
    .line 1587
    invoke-static {v4}, Lf3/e;->e(I)I

    .line 1588
    .line 1589
    .line 1590
    move-result v2

    .line 1591
    iget-wide v4, v3, Lf3/u;->c:J

    .line 1592
    .line 1593
    if-nez v2, :cond_3e

    .line 1594
    .line 1595
    invoke-virtual {v1}, Lu1/q;->D()J

    .line 1596
    .line 1597
    .line 1598
    move-result-wide v1

    .line 1599
    goto :goto_33

    .line 1600
    :cond_3e
    invoke-virtual {v1}, Lu1/q;->H()J

    .line 1601
    .line 1602
    .line 1603
    move-result-wide v1

    .line 1604
    :goto_33
    add-long/2addr v4, v1

    .line 1605
    iput-wide v4, v3, Lf3/u;->c:J

    .line 1606
    .line 1607
    :cond_3f
    const/4 v1, 0x0

    .line 1608
    goto :goto_34

    .line 1609
    :cond_40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1610
    .line 1611
    const-string v1, "Unexpected saio entry count: "

    .line 1612
    .line 1613
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1614
    .line 1615
    .line 1616
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1617
    .line 1618
    .line 1619
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1620
    .line 1621
    .line 1622
    move-result-object v0

    .line 1623
    const/4 v1, 0x0

    .line 1624
    invoke-static {v1, v0}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 1625
    .line 1626
    .line 1627
    move-result-object v0

    .line 1628
    throw v0

    .line 1629
    :goto_34
    const v2, 0x73656e63

    .line 1630
    .line 1631
    .line 1632
    invoke-virtual {v7, v2}, Lv1/c;->i(I)Lv1/d;

    .line 1633
    .line 1634
    .line 1635
    move-result-object v2

    .line 1636
    if-eqz v2, :cond_41

    .line 1637
    .line 1638
    iget-object v2, v2, Lv1/d;->c:Lu1/q;

    .line 1639
    .line 1640
    const/4 v4, 0x0

    .line 1641
    invoke-static {v2, v4, v3}, Lf3/j;->j(Lu1/q;ILf3/u;)V

    .line 1642
    .line 1643
    .line 1644
    :cond_41
    if-eqz v0, :cond_42

    .line 1645
    .line 1646
    iget-object v0, v0, Lf3/t;->b:Ljava/lang/String;

    .line 1647
    .line 1648
    move-object v6, v0

    .line 1649
    goto :goto_35

    .line 1650
    :cond_42
    move-object v6, v1

    .line 1651
    :goto_35
    move-object v0, v1

    .line 1652
    move-object v2, v0

    .line 1653
    const/4 v4, 0x0

    .line 1654
    :goto_36
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    .line 1655
    .line 1656
    .line 1657
    move-result v5

    .line 1658
    if-ge v4, v5, :cond_45

    .line 1659
    .line 1660
    move-object/from16 v12, v36

    .line 1661
    .line 1662
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1663
    .line 1664
    .line 1665
    move-result-object v5

    .line 1666
    check-cast v5, Lv1/d;

    .line 1667
    .line 1668
    iget-object v7, v5, Lv1/d;->c:Lu1/q;

    .line 1669
    .line 1670
    const v8, 0x73626770

    .line 1671
    .line 1672
    .line 1673
    const v9, 0x73656967

    .line 1674
    .line 1675
    .line 1676
    iget v5, v5, Lab/a;->b:I

    .line 1677
    .line 1678
    if-ne v5, v8, :cond_44

    .line 1679
    .line 1680
    const/16 v13, 0xc

    .line 1681
    .line 1682
    invoke-virtual {v7, v13}, Lu1/q;->O(I)V

    .line 1683
    .line 1684
    .line 1685
    invoke-virtual {v7}, Lu1/q;->o()I

    .line 1686
    .line 1687
    .line 1688
    move-result v5

    .line 1689
    if-ne v5, v9, :cond_43

    .line 1690
    .line 1691
    move-object v0, v7

    .line 1692
    :cond_43
    :goto_37
    const/4 v5, 0x1

    .line 1693
    goto :goto_38

    .line 1694
    :cond_44
    const/16 v13, 0xc

    .line 1695
    .line 1696
    const v8, 0x73677064

    .line 1697
    .line 1698
    .line 1699
    if-ne v5, v8, :cond_43

    .line 1700
    .line 1701
    invoke-virtual {v7, v13}, Lu1/q;->O(I)V

    .line 1702
    .line 1703
    .line 1704
    invoke-virtual {v7}, Lu1/q;->o()I

    .line 1705
    .line 1706
    .line 1707
    move-result v5

    .line 1708
    if-ne v5, v9, :cond_43

    .line 1709
    .line 1710
    move-object v2, v7

    .line 1711
    goto :goto_37

    .line 1712
    :goto_38
    add-int/2addr v4, v5

    .line 1713
    move-object/from16 v36, v12

    .line 1714
    .line 1715
    goto :goto_36

    .line 1716
    :cond_45
    move-object/from16 v12, v36

    .line 1717
    .line 1718
    const/4 v5, 0x1

    .line 1719
    const/16 v13, 0xc

    .line 1720
    .line 1721
    if-eqz v0, :cond_46

    .line 1722
    .line 1723
    if-nez v2, :cond_47

    .line 1724
    .line 1725
    :cond_46
    const/4 v14, 0x4

    .line 1726
    const/4 v15, 0x2

    .line 1727
    goto/16 :goto_3d

    .line 1728
    .line 1729
    :cond_47
    const/16 v4, 0x8

    .line 1730
    .line 1731
    invoke-virtual {v0, v4}, Lu1/q;->O(I)V

    .line 1732
    .line 1733
    .line 1734
    invoke-virtual {v0}, Lu1/q;->o()I

    .line 1735
    .line 1736
    .line 1737
    move-result v7

    .line 1738
    invoke-static {v7}, Lf3/e;->e(I)I

    .line 1739
    .line 1740
    .line 1741
    move-result v7

    .line 1742
    const/4 v14, 0x4

    .line 1743
    invoke-virtual {v0, v14}, Lu1/q;->P(I)V

    .line 1744
    .line 1745
    .line 1746
    if-ne v7, v5, :cond_48

    .line 1747
    .line 1748
    invoke-virtual {v0, v14}, Lu1/q;->P(I)V

    .line 1749
    .line 1750
    .line 1751
    :cond_48
    invoke-virtual {v0}, Lu1/q;->o()I

    .line 1752
    .line 1753
    .line 1754
    move-result v0

    .line 1755
    if-ne v0, v5, :cond_50

    .line 1756
    .line 1757
    invoke-virtual {v2, v4}, Lu1/q;->O(I)V

    .line 1758
    .line 1759
    .line 1760
    invoke-virtual {v2}, Lu1/q;->o()I

    .line 1761
    .line 1762
    .line 1763
    move-result v0

    .line 1764
    invoke-static {v0}, Lf3/e;->e(I)I

    .line 1765
    .line 1766
    .line 1767
    move-result v0

    .line 1768
    invoke-virtual {v2, v14}, Lu1/q;->P(I)V

    .line 1769
    .line 1770
    .line 1771
    if-ne v0, v5, :cond_4a

    .line 1772
    .line 1773
    invoke-virtual {v2}, Lu1/q;->D()J

    .line 1774
    .line 1775
    .line 1776
    move-result-wide v4

    .line 1777
    cmp-long v0, v4, v25

    .line 1778
    .line 1779
    if-eqz v0, :cond_49

    .line 1780
    .line 1781
    const/4 v15, 0x2

    .line 1782
    goto :goto_39

    .line 1783
    :cond_49
    const-string v0, "Variable length description in sgpd found (unsupported)"

    .line 1784
    .line 1785
    invoke-static {v0}, Lr1/f0;->b(Ljava/lang/String;)Lr1/f0;

    .line 1786
    .line 1787
    .line 1788
    move-result-object v0

    .line 1789
    throw v0

    .line 1790
    :cond_4a
    const/4 v15, 0x2

    .line 1791
    if-lt v0, v15, :cond_4b

    .line 1792
    .line 1793
    invoke-virtual {v2, v14}, Lu1/q;->P(I)V

    .line 1794
    .line 1795
    .line 1796
    :cond_4b
    :goto_39
    invoke-virtual {v2}, Lu1/q;->D()J

    .line 1797
    .line 1798
    .line 1799
    move-result-wide v4

    .line 1800
    const-wide/16 v7, 0x1

    .line 1801
    .line 1802
    cmp-long v0, v4, v7

    .line 1803
    .line 1804
    if-nez v0, :cond_4f

    .line 1805
    .line 1806
    const/4 v0, 0x1

    .line 1807
    invoke-virtual {v2, v0}, Lu1/q;->P(I)V

    .line 1808
    .line 1809
    .line 1810
    invoke-virtual {v2}, Lu1/q;->B()I

    .line 1811
    .line 1812
    .line 1813
    move-result v4

    .line 1814
    and-int/lit16 v5, v4, 0xf0

    .line 1815
    .line 1816
    shr-int/lit8 v9, v5, 0x4

    .line 1817
    .line 1818
    and-int/lit8 v10, v4, 0xf

    .line 1819
    .line 1820
    invoke-virtual {v2}, Lu1/q;->B()I

    .line 1821
    .line 1822
    .line 1823
    move-result v4

    .line 1824
    if-ne v4, v0, :cond_4c

    .line 1825
    .line 1826
    const/4 v5, 0x1

    .line 1827
    goto :goto_3a

    .line 1828
    :cond_4c
    const/4 v5, 0x0

    .line 1829
    :goto_3a
    if-nez v5, :cond_4d

    .line 1830
    .line 1831
    goto :goto_3d

    .line 1832
    :cond_4d
    invoke-virtual {v2}, Lu1/q;->B()I

    .line 1833
    .line 1834
    .line 1835
    move-result v7

    .line 1836
    const/16 v0, 0x10

    .line 1837
    .line 1838
    new-array v8, v0, [B

    .line 1839
    .line 1840
    const/4 v4, 0x0

    .line 1841
    invoke-virtual {v2, v4, v0, v8}, Lu1/q;->l(II[B)V

    .line 1842
    .line 1843
    .line 1844
    if-nez v7, :cond_4e

    .line 1845
    .line 1846
    invoke-virtual {v2}, Lu1/q;->B()I

    .line 1847
    .line 1848
    .line 1849
    move-result v0

    .line 1850
    new-array v11, v0, [B

    .line 1851
    .line 1852
    invoke-virtual {v2, v4, v0, v11}, Lu1/q;->l(II[B)V

    .line 1853
    .line 1854
    .line 1855
    :goto_3b
    const/4 v0, 0x1

    .line 1856
    goto :goto_3c

    .line 1857
    :cond_4e
    move-object v11, v1

    .line 1858
    goto :goto_3b

    .line 1859
    :goto_3c
    iput-boolean v0, v3, Lf3/u;->k:Z

    .line 1860
    .line 1861
    new-instance v0, Lf3/t;

    .line 1862
    .line 1863
    move-object v4, v0

    .line 1864
    invoke-direct/range {v4 .. v11}, Lf3/t;-><init>(ZLjava/lang/String;I[BII[B)V

    .line 1865
    .line 1866
    .line 1867
    iput-object v0, v3, Lf3/u;->m:Lf3/t;

    .line 1868
    .line 1869
    goto :goto_3d

    .line 1870
    :cond_4f
    const-string v0, "Entry count in sgpd != 1 (unsupported)."

    .line 1871
    .line 1872
    invoke-static {v0}, Lr1/f0;->b(Ljava/lang/String;)Lr1/f0;

    .line 1873
    .line 1874
    .line 1875
    move-result-object v0

    .line 1876
    throw v0

    .line 1877
    :cond_50
    const-string v0, "Entry count in sbgp != 1 (unsupported)."

    .line 1878
    .line 1879
    invoke-static {v0}, Lr1/f0;->b(Ljava/lang/String;)Lr1/f0;

    .line 1880
    .line 1881
    .line 1882
    move-result-object v0

    .line 1883
    throw v0

    .line 1884
    :goto_3d
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 1885
    .line 1886
    .line 1887
    move-result v0

    .line 1888
    const/4 v10, 0x0

    .line 1889
    :goto_3e
    if-ge v10, v0, :cond_53

    .line 1890
    .line 1891
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1892
    .line 1893
    .line 1894
    move-result-object v2

    .line 1895
    check-cast v2, Lv1/d;

    .line 1896
    .line 1897
    iget v4, v2, Lab/a;->b:I

    .line 1898
    .line 1899
    const v5, 0x75756964

    .line 1900
    .line 1901
    .line 1902
    if-ne v4, v5, :cond_52

    .line 1903
    .line 1904
    iget-object v2, v2, Lv1/d;->c:Lu1/q;

    .line 1905
    .line 1906
    const/16 v4, 0x8

    .line 1907
    .line 1908
    invoke-virtual {v2, v4}, Lu1/q;->O(I)V

    .line 1909
    .line 1910
    .line 1911
    move-object/from16 v5, p0

    .line 1912
    .line 1913
    iget-object v6, v5, Lf3/j;->h:[B

    .line 1914
    .line 1915
    const/4 v8, 0x0

    .line 1916
    const/16 v11, 0x10

    .line 1917
    .line 1918
    invoke-virtual {v2, v8, v11, v6}, Lu1/q;->l(II[B)V

    .line 1919
    .line 1920
    .line 1921
    sget-object v7, Lf3/j;->M:[B

    .line 1922
    .line 1923
    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    .line 1924
    .line 1925
    .line 1926
    move-result v6

    .line 1927
    if-nez v6, :cond_51

    .line 1928
    .line 1929
    goto :goto_3f

    .line 1930
    :cond_51
    invoke-static {v2, v11, v3}, Lf3/j;->j(Lu1/q;ILf3/u;)V

    .line 1931
    .line 1932
    .line 1933
    :goto_3f
    const/4 v2, 0x1

    .line 1934
    goto :goto_40

    .line 1935
    :cond_52
    const/16 v4, 0x8

    .line 1936
    .line 1937
    const/4 v8, 0x0

    .line 1938
    const/16 v11, 0x10

    .line 1939
    .line 1940
    move-object/from16 v5, p0

    .line 1941
    .line 1942
    goto :goto_3f

    .line 1943
    :goto_40
    add-int/2addr v10, v2

    .line 1944
    goto :goto_3e

    .line 1945
    :cond_53
    const/4 v2, 0x1

    .line 1946
    const/16 v4, 0x8

    .line 1947
    .line 1948
    const/4 v8, 0x0

    .line 1949
    const/16 v11, 0x10

    .line 1950
    .line 1951
    move-object/from16 v5, p0

    .line 1952
    .line 1953
    goto :goto_42

    .line 1954
    :cond_54
    :goto_41
    move-object/from16 v30, v1

    .line 1955
    .line 1956
    move-object/from16 v24, v2

    .line 1957
    .line 1958
    move/from16 v23, v5

    .line 1959
    .line 1960
    move/from16 v31, v6

    .line 1961
    .line 1962
    move-object/from16 v33, v10

    .line 1963
    .line 1964
    move/from16 v42, v13

    .line 1965
    .line 1966
    const/4 v1, 0x0

    .line 1967
    const/4 v2, 0x1

    .line 1968
    const/16 v4, 0x8

    .line 1969
    .line 1970
    const/4 v8, 0x0

    .line 1971
    const/16 v11, 0x10

    .line 1972
    .line 1973
    const/16 v13, 0xc

    .line 1974
    .line 1975
    const/4 v14, 0x4

    .line 1976
    const/4 v15, 0x2

    .line 1977
    move-object v5, v0

    .line 1978
    :goto_42
    add-int/lit8 v6, v31, 0x1

    .line 1979
    .line 1980
    move-object v0, v5

    .line 1981
    move/from16 v5, v23

    .line 1982
    .line 1983
    move-object/from16 v2, v24

    .line 1984
    .line 1985
    move-object/from16 v1, v30

    .line 1986
    .line 1987
    move-object/from16 v10, v33

    .line 1988
    .line 1989
    move/from16 v13, v42

    .line 1990
    .line 1991
    goto/16 :goto_d

    .line 1992
    .line 1993
    :cond_55
    move-object v5, v0

    .line 1994
    move-object/from16 v30, v1

    .line 1995
    .line 1996
    move-object/from16 v33, v10

    .line 1997
    .line 1998
    const/4 v1, 0x0

    .line 1999
    const/16 v4, 0x8

    .line 2000
    .line 2001
    const/4 v8, 0x0

    .line 2002
    const/16 v11, 0x10

    .line 2003
    .line 2004
    const/4 v14, 0x4

    .line 2005
    const/4 v15, 0x2

    .line 2006
    invoke-static/range {v33 .. v33}, Lf3/j;->i(Ljava/util/ArrayList;)Lr1/l;

    .line 2007
    .line 2008
    .line 2009
    move-result-object v0

    .line 2010
    if-eqz v0, :cond_57

    .line 2011
    .line 2012
    invoke-virtual/range {v30 .. v30}, Landroid/util/SparseArray;->size()I

    .line 2013
    .line 2014
    .line 2015
    move-result v2

    .line 2016
    const/4 v10, 0x0

    .line 2017
    :goto_43
    if-ge v10, v2, :cond_57

    .line 2018
    .line 2019
    move-object/from16 v3, v30

    .line 2020
    .line 2021
    invoke-virtual {v3, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 2022
    .line 2023
    .line 2024
    move-result-object v6

    .line 2025
    check-cast v6, Lf3/i;

    .line 2026
    .line 2027
    iget-object v7, v6, Lf3/i;->d:Lf3/v;

    .line 2028
    .line 2029
    iget-object v9, v6, Lf3/i;->b:Lf3/u;

    .line 2030
    .line 2031
    iget-object v9, v9, Lf3/u;->a:Lf3/f;

    .line 2032
    .line 2033
    sget-object v12, Lu1/f0;->a:Ljava/lang/String;

    .line 2034
    .line 2035
    iget v9, v9, Lf3/f;->a:I

    .line 2036
    .line 2037
    iget-object v7, v7, Lf3/v;->a:Lf3/s;

    .line 2038
    .line 2039
    iget-object v7, v7, Lf3/s;->l:[Lf3/t;

    .line 2040
    .line 2041
    aget-object v7, v7, v9

    .line 2042
    .line 2043
    if-eqz v7, :cond_56

    .line 2044
    .line 2045
    iget-object v7, v7, Lf3/t;->b:Ljava/lang/String;

    .line 2046
    .line 2047
    goto :goto_44

    .line 2048
    :cond_56
    move-object v7, v1

    .line 2049
    :goto_44
    invoke-virtual {v0, v7}, Lr1/l;->a(Ljava/lang/String;)Lr1/l;

    .line 2050
    .line 2051
    .line 2052
    move-result-object v7

    .line 2053
    iget-object v9, v6, Lf3/i;->j:Lr1/p;

    .line 2054
    .line 2055
    new-instance v12, Lr1/o;

    .line 2056
    .line 2057
    invoke-direct {v12, v9}, Lr1/o;-><init>(Lr1/p;)V

    .line 2058
    .line 2059
    .line 2060
    iput-object v7, v12, Lr1/o;->r:Lr1/l;

    .line 2061
    .line 2062
    new-instance v7, Lr1/p;

    .line 2063
    .line 2064
    invoke-direct {v7, v12}, Lr1/p;-><init>(Lr1/o;)V

    .line 2065
    .line 2066
    .line 2067
    iget-object v6, v6, Lf3/i;->a:Ll2/j0;

    .line 2068
    .line 2069
    invoke-interface {v6, v7}, Ll2/j0;->g(Lr1/p;)V

    .line 2070
    .line 2071
    .line 2072
    const/4 v6, 0x1

    .line 2073
    add-int/2addr v10, v6

    .line 2074
    move-object/from16 v30, v3

    .line 2075
    .line 2076
    goto :goto_43

    .line 2077
    :cond_57
    move-object/from16 v3, v30

    .line 2078
    .line 2079
    iget-wide v0, v5, Lf3/j;->x:J

    .line 2080
    .line 2081
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 2082
    .line 2083
    .line 2084
    .line 2085
    .line 2086
    cmp-long v2, v0, v6

    .line 2087
    .line 2088
    if-eqz v2, :cond_5b

    .line 2089
    .line 2090
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 2091
    .line 2092
    .line 2093
    move-result v0

    .line 2094
    const/4 v10, 0x0

    .line 2095
    :goto_45
    if-ge v10, v0, :cond_5a

    .line 2096
    .line 2097
    invoke-virtual {v3, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 2098
    .line 2099
    .line 2100
    move-result-object v1

    .line 2101
    check-cast v1, Lf3/i;

    .line 2102
    .line 2103
    iget-wide v6, v5, Lf3/j;->x:J

    .line 2104
    .line 2105
    iget v2, v1, Lf3/i;->f:I

    .line 2106
    .line 2107
    :goto_46
    iget-object v9, v1, Lf3/i;->b:Lf3/u;

    .line 2108
    .line 2109
    iget v12, v9, Lf3/u;->e:I

    .line 2110
    .line 2111
    if-ge v2, v12, :cond_59

    .line 2112
    .line 2113
    iget-object v12, v9, Lf3/u;->i:[J

    .line 2114
    .line 2115
    aget-wide v16, v12, v2

    .line 2116
    .line 2117
    cmp-long v12, v16, v6

    .line 2118
    .line 2119
    if-gtz v12, :cond_59

    .line 2120
    .line 2121
    iget-object v9, v9, Lf3/u;->j:[Z

    .line 2122
    .line 2123
    aget-boolean v9, v9, v2

    .line 2124
    .line 2125
    if-eqz v9, :cond_58

    .line 2126
    .line 2127
    iput v2, v1, Lf3/i;->i:I

    .line 2128
    .line 2129
    :cond_58
    const/4 v12, 0x1

    .line 2130
    add-int/2addr v2, v12

    .line 2131
    goto :goto_46

    .line 2132
    :cond_59
    const/4 v12, 0x1

    .line 2133
    add-int/2addr v10, v12

    .line 2134
    goto :goto_45

    .line 2135
    :cond_5a
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 2136
    .line 2137
    .line 2138
    .line 2139
    .line 2140
    const/4 v12, 0x1

    .line 2141
    iput-wide v1, v5, Lf3/j;->x:J

    .line 2142
    .line 2143
    goto :goto_47

    .line 2144
    :cond_5b
    const/4 v12, 0x1

    .line 2145
    goto :goto_47

    .line 2146
    :cond_5c
    move-object v5, v0

    .line 2147
    const/16 v4, 0x8

    .line 2148
    .line 2149
    const/4 v8, 0x0

    .line 2150
    const/16 v11, 0x10

    .line 2151
    .line 2152
    const/4 v12, 0x1

    .line 2153
    const/4 v14, 0x4

    .line 2154
    const/4 v15, 0x2

    .line 2155
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 2156
    .line 2157
    .line 2158
    move-result v0

    .line 2159
    if-nez v0, :cond_5d

    .line 2160
    .line 2161
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 2162
    .line 2163
    .line 2164
    move-result-object v0

    .line 2165
    check-cast v0, Lv1/c;

    .line 2166
    .line 2167
    iget-object v0, v0, Lv1/c;->e:Ljava/util/ArrayList;

    .line 2168
    .line 2169
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2170
    .line 2171
    .line 2172
    :cond_5d
    :goto_47
    move-object v0, v5

    .line 2173
    goto/16 :goto_0

    .line 2174
    .line 2175
    :cond_5e
    move-object v5, v0

    .line 2176
    invoke-virtual/range {p0 .. p0}, Lf3/j;->h()V

    .line 2177
    .line 2178
    .line 2179
    return-void
.end method
