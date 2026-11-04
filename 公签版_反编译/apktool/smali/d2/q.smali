.class public final Ld2/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public j:I

.field public k:I

.field public l:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Ld2/q;->a:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Ld2/q;->b:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, Ld2/q;->c:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p4, p0, Ld2/q;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 14
    .line 15
    iput-boolean p5, p0, Ld2/q;->g:Z

    .line 16
    .line 17
    iput-boolean p8, p0, Ld2/q;->e:Z

    .line 18
    .line 19
    iput-boolean p9, p0, Ld2/q;->f:Z

    .line 20
    .line 21
    iput-boolean p10, p0, Ld2/q;->h:Z

    .line 22
    .line 23
    invoke-static {p2}, Lr1/e0;->k(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iput-boolean p1, p0, Ld2/q;->i:Z

    .line 28
    .line 29
    const p1, -0x800001

    .line 30
    .line 31
    .line 32
    iput p1, p0, Ld2/q;->l:F

    .line 33
    .line 34
    const/4 p1, -0x1

    .line 35
    iput p1, p0, Ld2/q;->j:I

    .line 36
    .line 37
    iput p1, p0, Ld2/q;->k:I

    .line 38
    .line 39
    return-void
.end method

.method public static a(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z
    .locals 4

    .line 1
    invoke-static {p0}, Ld2/a;->b(Landroid/media/MediaCodecInfo$VideoCapabilities;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0}, Ld2/a;->C(Landroid/media/MediaCodecInfo$VideoCapabilities;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    new-instance v2, Landroid/graphics/Point;

    .line 10
    .line 11
    invoke-static {p1, v0}, Lu1/f0;->e(II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    mul-int p1, p1, v0

    .line 16
    .line 17
    invoke-static {p2, v1}, Lu1/f0;->e(II)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    mul-int p2, p2, v1

    .line 22
    .line 23
    invoke-direct {v2, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 24
    .line 25
    .line 26
    iget p1, v2, Landroid/graphics/Point;->x:I

    .line 27
    .line 28
    iget p2, v2, Landroid/graphics/Point;->y:I

    .line 29
    .line 30
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 31
    .line 32
    cmpl-double v2, p3, v0

    .line 33
    .line 34
    if-eqz v2, :cond_5

    .line 35
    .line 36
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 37
    .line 38
    cmpg-double v2, p3, v0

    .line 39
    .line 40
    if-gez v2, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Math;->floor(D)D

    .line 44
    .line 45
    .line 46
    move-result-wide p3

    .line 47
    invoke-static {p0, p1, p2, p3, p4}, Ld2/a;->x(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const/4 v1, 0x0

    .line 52
    if-nez v0, :cond_1

    .line 53
    .line 54
    return v1

    .line 55
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 56
    .line 57
    const/16 v2, 0x18

    .line 58
    .line 59
    const/4 v3, 0x1

    .line 60
    if-ge v0, v2, :cond_2

    .line 61
    .line 62
    return v3

    .line 63
    :cond_2
    invoke-static {p0, p1, p2}, Ld2/c;->i(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/util/Range;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    if-nez p0, :cond_3

    .line 68
    .line 69
    return v3

    .line 70
    :cond_3
    invoke-static {p0}, Ld2/a;->k(Landroid/util/Range;)Ljava/lang/Comparable;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    check-cast p0, Ljava/lang/Double;

    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 77
    .line 78
    .line 79
    move-result-wide p0

    .line 80
    cmpg-double p2, p3, p0

    .line 81
    .line 82
    if-gtz p2, :cond_4

    .line 83
    .line 84
    const/4 v1, 0x1

    .line 85
    :cond_4
    return v1

    .line 86
    :cond_5
    :goto_0
    invoke-static {p0, p1, p2}, Ld2/a;->w(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Z

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZ)Ld2/q;
    .locals 12

    .line 1
    new-instance v11, Ld2/q;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    invoke-static {p3}, Lcom/hierynomus/security/jce/a;->u(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    const/4 v8, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v8, 0x0

    .line 16
    :goto_0
    if-eqz p3, :cond_1

    .line 17
    .line 18
    invoke-static {p3}, Lcom/hierynomus/security/jce/a;->D(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    :cond_1
    if-nez p7, :cond_3

    .line 23
    .line 24
    if-eqz p3, :cond_2

    .line 25
    .line 26
    invoke-static {p3}, Lcom/hierynomus/security/jce/a;->B(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    const/4 v9, 0x0

    .line 34
    goto :goto_2

    .line 35
    :cond_3
    :goto_1
    const/4 v9, 0x1

    .line 36
    :goto_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 37
    .line 38
    const/16 v3, 0x23

    .line 39
    .line 40
    if-lt v2, v3, :cond_5

    .line 41
    .line 42
    if-eqz p3, :cond_5

    .line 43
    .line 44
    invoke-static {p3}, Lcom/hierynomus/security/jce/a;->C(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_5

    .line 49
    .line 50
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 51
    .line 52
    const-string v3, "Xiaomi"

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_5

    .line 59
    .line 60
    const-string v3, "OPPO"

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-nez v3, :cond_5

    .line 67
    .line 68
    const-string v3, "realme"

    .line 69
    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-nez v3, :cond_5

    .line 75
    .line 76
    const-string v3, "motorola"

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-nez v3, :cond_5

    .line 83
    .line 84
    const-string v3, "LENOVO"

    .line 85
    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_4

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_4
    const/4 v10, 0x1

    .line 94
    goto :goto_4

    .line 95
    :cond_5
    :goto_3
    const/4 v10, 0x0

    .line 96
    :goto_4
    move-object v0, v11

    .line 97
    move-object v1, p0

    .line 98
    move-object v2, p1

    .line 99
    move-object v3, p2

    .line 100
    move-object v4, p3

    .line 101
    move/from16 v5, p4

    .line 102
    .line 103
    move/from16 v6, p5

    .line 104
    .line 105
    move/from16 v7, p6

    .line 106
    .line 107
    invoke-direct/range {v0 .. v10}, Ld2/q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZZ)V

    .line 108
    .line 109
    .line 110
    return-object v11
.end method


# virtual methods
.method public final b(Lr1/p;Lr1/p;)Ly1/d;
    .locals 10

    .line 1
    iget-object v0, p1, Lr1/p;->o:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p2, Lr1/p;->o:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/16 v0, 0x8

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    iget-boolean v4, p0, Ld2/q;->i:Z

    .line 17
    .line 18
    if-eqz v4, :cond_d

    .line 19
    .line 20
    iget v4, p1, Lr1/p;->A:I

    .line 21
    .line 22
    iget v5, p2, Lr1/p;->A:I

    .line 23
    .line 24
    if-eq v4, v5, :cond_1

    .line 25
    .line 26
    or-int/lit16 v0, v0, 0x400

    .line 27
    .line 28
    :cond_1
    iget v4, p1, Lr1/p;->v:I

    .line 29
    .line 30
    iget v5, p2, Lr1/p;->v:I

    .line 31
    .line 32
    if-ne v4, v5, :cond_2

    .line 33
    .line 34
    iget v4, p1, Lr1/p;->w:I

    .line 35
    .line 36
    iget v5, p2, Lr1/p;->w:I

    .line 37
    .line 38
    if-eq v4, v5, :cond_3

    .line 39
    .line 40
    :cond_2
    const/4 v1, 0x1

    .line 41
    :cond_3
    iget-boolean v4, p0, Ld2/q;->e:Z

    .line 42
    .line 43
    if-nez v4, :cond_4

    .line 44
    .line 45
    if-eqz v1, :cond_4

    .line 46
    .line 47
    or-int/lit16 v0, v0, 0x200

    .line 48
    .line 49
    :cond_4
    iget-object v4, p1, Lr1/p;->E:Lr1/g;

    .line 50
    .line 51
    invoke-static {v4}, Lr1/g;->e(Lr1/g;)Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    iget-object v6, p2, Lr1/p;->E:Lr1/g;

    .line 56
    .line 57
    if-eqz v5, :cond_5

    .line 58
    .line 59
    invoke-static {v6}, Lr1/g;->e(Lr1/g;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-nez v5, :cond_6

    .line 64
    .line 65
    :cond_5
    invoke-static {v4, v6}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-nez v4, :cond_6

    .line 70
    .line 71
    or-int/lit16 v0, v0, 0x800

    .line 72
    .line 73
    :cond_6
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 74
    .line 75
    const-string v5, "SM-T230"

    .line 76
    .line 77
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-eqz v4, :cond_7

    .line 82
    .line 83
    const-string v4, "OMX.MARVELL.VIDEO.HW.CODA7542DECODER"

    .line 84
    .line 85
    iget-object v5, p0, Ld2/q;->a:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_7

    .line 92
    .line 93
    invoke-virtual {p1, p2}, Lr1/p;->c(Lr1/p;)Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-nez v4, :cond_7

    .line 98
    .line 99
    or-int/lit8 v0, v0, 0x2

    .line 100
    .line 101
    :cond_7
    const/4 v4, -0x1

    .line 102
    iget v5, p1, Lr1/p;->x:I

    .line 103
    .line 104
    if-eq v5, v4, :cond_8

    .line 105
    .line 106
    iget v6, p1, Lr1/p;->y:I

    .line 107
    .line 108
    if-eq v6, v4, :cond_8

    .line 109
    .line 110
    iget v4, p2, Lr1/p;->x:I

    .line 111
    .line 112
    if-ne v5, v4, :cond_8

    .line 113
    .line 114
    iget v4, p2, Lr1/p;->y:I

    .line 115
    .line 116
    if-ne v6, v4, :cond_8

    .line 117
    .line 118
    if-eqz v1, :cond_8

    .line 119
    .line 120
    or-int/lit8 v0, v0, 0x2

    .line 121
    .line 122
    :cond_8
    if-nez v0, :cond_a

    .line 123
    .line 124
    iget-object v1, p2, Lr1/p;->o:Ljava/lang/String;

    .line 125
    .line 126
    const-string v4, "video/dolby-vision"

    .line 127
    .line 128
    invoke-static {v1, v4}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_a

    .line 133
    .line 134
    invoke-static {p1}, Lu1/c;->b(Lr1/p;)Landroid/util/Pair;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-static {p2}, Lu1/c;->b(Lr1/p;)Landroid/util/Pair;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    if-eqz v1, :cond_9

    .line 143
    .line 144
    if-eqz v4, :cond_9

    .line 145
    .line 146
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v1, Ljava/lang/Integer;

    .line 149
    .line 150
    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 151
    .line 152
    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-nez v1, :cond_a

    .line 157
    .line 158
    :cond_9
    or-int/lit8 v0, v0, 0x2

    .line 159
    .line 160
    :cond_a
    if-nez v0, :cond_c

    .line 161
    .line 162
    new-instance v6, Ly1/d;

    .line 163
    .line 164
    invoke-virtual {p1, p2}, Lr1/p;->c(Lr1/p;)Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_b

    .line 169
    .line 170
    const/4 v0, 0x3

    .line 171
    const/4 v4, 0x3

    .line 172
    goto :goto_1

    .line 173
    :cond_b
    const/4 v0, 0x2

    .line 174
    const/4 v4, 0x2

    .line 175
    :goto_1
    const/4 v5, 0x0

    .line 176
    iget-object v1, p0, Ld2/q;->a:Ljava/lang/String;

    .line 177
    .line 178
    move-object v0, v6

    .line 179
    move-object v2, p1

    .line 180
    move-object v3, p2

    .line 181
    invoke-direct/range {v0 .. v5}, Ly1/d;-><init>(Ljava/lang/String;Lr1/p;Lr1/p;II)V

    .line 182
    .line 183
    .line 184
    return-object v6

    .line 185
    :cond_c
    move v5, v0

    .line 186
    goto/16 :goto_2

    .line 187
    .line 188
    :cond_d
    iget v1, p1, Lr1/p;->G:I

    .line 189
    .line 190
    iget v4, p2, Lr1/p;->G:I

    .line 191
    .line 192
    if-eq v1, v4, :cond_e

    .line 193
    .line 194
    or-int/lit16 v0, v0, 0x1000

    .line 195
    .line 196
    :cond_e
    iget v1, p1, Lr1/p;->H:I

    .line 197
    .line 198
    iget v4, p2, Lr1/p;->H:I

    .line 199
    .line 200
    if-eq v1, v4, :cond_f

    .line 201
    .line 202
    or-int/lit16 v0, v0, 0x2000

    .line 203
    .line 204
    :cond_f
    iget v1, p1, Lr1/p;->I:I

    .line 205
    .line 206
    iget v4, p2, Lr1/p;->I:I

    .line 207
    .line 208
    if-eq v1, v4, :cond_10

    .line 209
    .line 210
    or-int/lit16 v0, v0, 0x4000

    .line 211
    .line 212
    :cond_10
    iget-object v1, p0, Ld2/q;->b:Ljava/lang/String;

    .line 213
    .line 214
    if-nez v0, :cond_13

    .line 215
    .line 216
    const-string v4, "audio/mp4a-latm"

    .line 217
    .line 218
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    const-string v5, "audio/ac4"

    .line 223
    .line 224
    if-nez v4, :cond_11

    .line 225
    .line 226
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v4

    .line 230
    if-eqz v4, :cond_13

    .line 231
    .line 232
    :cond_11
    invoke-static {p1}, Lu1/c;->b(Lr1/p;)Landroid/util/Pair;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    invoke-static {p2}, Lu1/c;->b(Lr1/p;)Landroid/util/Pair;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    if-eqz v4, :cond_13

    .line 241
    .line 242
    if-eqz v6, :cond_13

    .line 243
    .line 244
    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast v7, Ljava/lang/Integer;

    .line 247
    .line 248
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 249
    .line 250
    .line 251
    move-result v7

    .line 252
    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast v8, Ljava/lang/Integer;

    .line 255
    .line 256
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 257
    .line 258
    .line 259
    move-result v8

    .line 260
    const/16 v9, 0x2a

    .line 261
    .line 262
    if-ne v7, v9, :cond_12

    .line 263
    .line 264
    if-ne v8, v9, :cond_12

    .line 265
    .line 266
    new-instance v6, Ly1/d;

    .line 267
    .line 268
    const/4 v4, 0x3

    .line 269
    const/4 v5, 0x0

    .line 270
    iget-object v1, p0, Ld2/q;->a:Ljava/lang/String;

    .line 271
    .line 272
    move-object v0, v6

    .line 273
    move-object v2, p1

    .line 274
    move-object v3, p2

    .line 275
    invoke-direct/range {v0 .. v5}, Ly1/d;-><init>(Ljava/lang/String;Lr1/p;Lr1/p;II)V

    .line 276
    .line 277
    .line 278
    return-object v6

    .line 279
    :cond_12
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    if-eqz v5, :cond_13

    .line 284
    .line 285
    invoke-virtual {v4, v6}, Landroid/util/Pair;->equals(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v4

    .line 289
    if-eqz v4, :cond_13

    .line 290
    .line 291
    new-instance v6, Ly1/d;

    .line 292
    .line 293
    const/4 v4, 0x3

    .line 294
    const/4 v5, 0x0

    .line 295
    iget-object v1, p0, Ld2/q;->a:Ljava/lang/String;

    .line 296
    .line 297
    move-object v0, v6

    .line 298
    move-object v2, p1

    .line 299
    move-object v3, p2

    .line 300
    invoke-direct/range {v0 .. v5}, Ly1/d;-><init>(Ljava/lang/String;Lr1/p;Lr1/p;II)V

    .line 301
    .line 302
    .line 303
    return-object v6

    .line 304
    :cond_13
    if-nez v0, :cond_15

    .line 305
    .line 306
    const-string v4, "audio/eac3-joc"

    .line 307
    .line 308
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result v4

    .line 312
    if-nez v4, :cond_14

    .line 313
    .line 314
    const-string v4, "audio/eac3"

    .line 315
    .line 316
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v4

    .line 320
    if-eqz v4, :cond_15

    .line 321
    .line 322
    :cond_14
    new-instance v6, Ly1/d;

    .line 323
    .line 324
    const/4 v4, 0x3

    .line 325
    const/4 v5, 0x0

    .line 326
    iget-object v1, p0, Ld2/q;->a:Ljava/lang/String;

    .line 327
    .line 328
    move-object v0, v6

    .line 329
    move-object v2, p1

    .line 330
    move-object v3, p2

    .line 331
    invoke-direct/range {v0 .. v5}, Ly1/d;-><init>(Ljava/lang/String;Lr1/p;Lr1/p;II)V

    .line 332
    .line 333
    .line 334
    return-object v6

    .line 335
    :cond_15
    invoke-virtual {p1, p2}, Lr1/p;->c(Lr1/p;)Z

    .line 336
    .line 337
    .line 338
    move-result v4

    .line 339
    if-nez v4, :cond_16

    .line 340
    .line 341
    or-int/lit8 v0, v0, 0x20

    .line 342
    .line 343
    :cond_16
    const-string v4, "audio/opus"

    .line 344
    .line 345
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    if-eqz v1, :cond_17

    .line 350
    .line 351
    or-int/lit8 v0, v0, 0x2

    .line 352
    .line 353
    :cond_17
    if-nez v0, :cond_c

    .line 354
    .line 355
    new-instance v6, Ly1/d;

    .line 356
    .line 357
    const/4 v4, 0x1

    .line 358
    const/4 v5, 0x0

    .line 359
    iget-object v1, p0, Ld2/q;->a:Ljava/lang/String;

    .line 360
    .line 361
    move-object v0, v6

    .line 362
    move-object v2, p1

    .line 363
    move-object v3, p2

    .line 364
    invoke-direct/range {v0 .. v5}, Ly1/d;-><init>(Ljava/lang/String;Lr1/p;Lr1/p;II)V

    .line 365
    .line 366
    .line 367
    return-object v6

    .line 368
    :goto_2
    new-instance v6, Ly1/d;

    .line 369
    .line 370
    iget-object v1, p0, Ld2/q;->a:Ljava/lang/String;

    .line 371
    .line 372
    const/4 v4, 0x0

    .line 373
    move-object v0, v6

    .line 374
    move-object v2, p1

    .line 375
    move-object v3, p2

    .line 376
    invoke-direct/range {v0 .. v5}, Ly1/d;-><init>(Ljava/lang/String;Lr1/p;Lr1/p;II)V

    .line 377
    .line 378
    .line 379
    return-object v6
.end method

.method public final c(Landroid/content/Context;Lr1/p;Z)Z
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/4 v5, 0x4

    .line 6
    const/4 v6, 0x3

    .line 7
    invoke-static/range {p2 .. p2}, Lu1/c;->b(Lr1/p;)Landroid/util/Pair;

    .line 8
    .line 9
    .line 10
    move-result-object v8

    .line 11
    iget-object v9, v0, Ld2/q;->c:Ljava/lang/String;

    .line 12
    .line 13
    const-string v10, "video/hevc"

    .line 14
    .line 15
    const/4 v11, 0x1

    .line 16
    iget-object v12, v1, Lr1/p;->o:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v12, :cond_8

    .line 19
    .line 20
    const-string v13, "video/mv-hevc"

    .line 21
    .line 22
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v14

    .line 26
    if-eqz v14, :cond_8

    .line 27
    .line 28
    invoke-static {v9}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v14

    .line 32
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v13

    .line 36
    if-eqz v13, :cond_0

    .line 37
    .line 38
    return v11

    .line 39
    :cond_0
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v13

    .line 43
    if-eqz v13, :cond_8

    .line 44
    .line 45
    sget-object v8, Ld2/c0;->a:Ljava/util/HashMap;

    .line 46
    .line 47
    iget-object v8, v1, Lr1/p;->r:Ljava/util/List;

    .line 48
    .line 49
    const/4 v13, 0x0

    .line 50
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v14

    .line 54
    if-ge v13, v14, :cond_6

    .line 55
    .line 56
    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v14

    .line 60
    check-cast v14, [B

    .line 61
    .line 62
    array-length v15, v14

    .line 63
    if-le v15, v6, :cond_5

    .line 64
    .line 65
    new-array v4, v6, [Z

    .line 66
    .line 67
    sget-object v16, Lu7/g0;->b:Lu7/e0;

    .line 68
    .line 69
    const-string v7, "initialCapacity"

    .line 70
    .line 71
    invoke-static {v5, v7}, Lu7/q;->c(ILjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    new-array v7, v5, [Ljava/lang/Object;

    .line 75
    .line 76
    const/4 v2, 0x0

    .line 77
    const/4 v3, 0x0

    .line 78
    :goto_1
    array-length v5, v14

    .line 79
    if-ge v2, v5, :cond_3

    .line 80
    .line 81
    array-length v5, v14

    .line 82
    invoke-static {v14, v2, v5, v4}, Lv1/o;->c([BII[Z)I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    array-length v5, v14

    .line 87
    if-eq v2, v5, :cond_2

    .line 88
    .line 89
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    array-length v6, v7

    .line 94
    move-object/from16 v17, v4

    .line 95
    .line 96
    add-int/lit8 v4, v3, 0x1

    .line 97
    .line 98
    invoke-static {v6, v4}, Lu7/a0;->f(II)I

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    array-length v11, v7

    .line 103
    if-gt v6, v11, :cond_1

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_1
    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    :goto_2
    aput-object v5, v7, v3

    .line 111
    .line 112
    move v3, v4

    .line 113
    :goto_3
    const/4 v4, 0x3

    .line 114
    goto :goto_4

    .line 115
    :cond_2
    move-object/from16 v17, v4

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :goto_4
    add-int/2addr v2, v4

    .line 119
    move-object/from16 v4, v17

    .line 120
    .line 121
    const/4 v6, 0x3

    .line 122
    const/4 v11, 0x1

    .line 123
    goto :goto_1

    .line 124
    :cond_3
    const/4 v4, 0x3

    .line 125
    invoke-static {v3, v7}, Lu7/g0;->i(I[Ljava/lang/Object;)Lu7/y0;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    const/4 v3, 0x0

    .line 130
    :goto_5
    invoke-virtual {v2}, Lu7/y0;->size()I

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    if-ge v3, v5, :cond_5

    .line 135
    .line 136
    invoke-virtual {v2, v3}, Lu7/y0;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    check-cast v5, Ljava/lang/Integer;

    .line 141
    .line 142
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    add-int/2addr v5, v4

    .line 147
    if-ge v5, v15, :cond_4

    .line 148
    .line 149
    new-instance v5, Lt3/e;

    .line 150
    .line 151
    invoke-virtual {v2, v3}, Lu7/y0;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    check-cast v6, Ljava/lang/Integer;

    .line 156
    .line 157
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 158
    .line 159
    .line 160
    move-result v6

    .line 161
    add-int/2addr v6, v4

    .line 162
    invoke-direct {v5, v14, v6, v15}, Lt3/e;-><init>([BII)V

    .line 163
    .line 164
    .line 165
    invoke-static {v5}, Lv1/o;->h(Lt3/e;)Landroidx/media3/exoplayer/video/k;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    iget v7, v6, Landroidx/media3/exoplayer/video/k;->a:I

    .line 170
    .line 171
    const/16 v11, 0x21

    .line 172
    .line 173
    if-ne v7, v11, :cond_4

    .line 174
    .line 175
    iget v6, v6, Landroidx/media3/exoplayer/video/k;->b:I

    .line 176
    .line 177
    if-nez v6, :cond_4

    .line 178
    .line 179
    const/4 v6, 0x4

    .line 180
    invoke-virtual {v5, v6}, Lt3/e;->l(I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v5, v4}, Lt3/e;->f(I)I

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    invoke-virtual {v5}, Lt3/e;->k()V

    .line 188
    .line 189
    .line 190
    const/4 v3, 0x1

    .line 191
    const/4 v4, 0x0

    .line 192
    invoke-static {v5, v3, v2, v4}, Lv1/o;->i(Lt3/e;ZILv1/h;)Lv1/h;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    iget-object v3, v2, Lv1/h;->e:[I

    .line 197
    .line 198
    iget v5, v2, Lv1/h;->f:I

    .line 199
    .line 200
    iget v6, v2, Lv1/h;->a:I

    .line 201
    .line 202
    iget-boolean v7, v2, Lv1/h;->b:Z

    .line 203
    .line 204
    iget v8, v2, Lv1/h;->c:I

    .line 205
    .line 206
    iget v2, v2, Lv1/h;->d:I

    .line 207
    .line 208
    move/from16 v18, v6

    .line 209
    .line 210
    move/from16 v19, v8

    .line 211
    .line 212
    move/from16 v20, v2

    .line 213
    .line 214
    move-object/from16 v21, v3

    .line 215
    .line 216
    move/from16 v22, v7

    .line 217
    .line 218
    move/from16 v23, v5

    .line 219
    .line 220
    invoke-static/range {v18 .. v23}, Lu1/c;->a(III[IZI)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    goto :goto_6

    .line 225
    :cond_4
    const/4 v4, 0x0

    .line 226
    const/4 v5, 0x1

    .line 227
    add-int/2addr v3, v5

    .line 228
    const/4 v4, 0x3

    .line 229
    goto :goto_5

    .line 230
    :cond_5
    const/4 v4, 0x0

    .line 231
    const/4 v5, 0x1

    .line 232
    add-int/2addr v13, v5

    .line 233
    const/4 v5, 0x4

    .line 234
    const/4 v6, 0x3

    .line 235
    const/4 v11, 0x1

    .line 236
    goto/16 :goto_0

    .line 237
    .line 238
    :cond_6
    const/4 v4, 0x0

    .line 239
    move-object v2, v4

    .line 240
    :goto_6
    if-nez v2, :cond_7

    .line 241
    .line 242
    move-object v3, v4

    .line 243
    const/4 v5, -0x1

    .line 244
    goto :goto_7

    .line 245
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    sget-object v4, Lu1/f0;->a:Ljava/lang/String;

    .line 250
    .line 251
    const-string v4, "\\."

    .line 252
    .line 253
    const/4 v5, -0x1

    .line 254
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    iget-object v4, v1, Lr1/p;->E:Lr1/g;

    .line 259
    .line 260
    invoke-static {v2, v3, v4}, Lu1/c;->c(Ljava/lang/String;[Ljava/lang/String;Lr1/g;)Landroid/util/Pair;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    :goto_7
    move-object v8, v3

    .line 265
    goto :goto_8

    .line 266
    :cond_8
    const/4 v5, -0x1

    .line 267
    :goto_8
    if-nez v8, :cond_9

    .line 268
    .line 269
    const/4 v2, 0x1

    .line 270
    return v2

    .line 271
    :cond_9
    iget-object v2, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 272
    .line 273
    check-cast v2, Ljava/lang/Integer;

    .line 274
    .line 275
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    iget-object v3, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 280
    .line 281
    check-cast v3, Ljava/lang/Integer;

    .line 282
    .line 283
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 284
    .line 285
    .line 286
    move-result v3

    .line 287
    const-string v4, "video/dolby-vision"

    .line 288
    .line 289
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v4

    .line 293
    const/16 v6, 0x8

    .line 294
    .line 295
    iget-object v7, v0, Ld2/q;->b:Ljava/lang/String;

    .line 296
    .line 297
    if-eqz v4, :cond_d

    .line 298
    .line 299
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 303
    .line 304
    .line 305
    move-result v4

    .line 306
    sparse-switch v4, :sswitch_data_0

    .line 307
    .line 308
    .line 309
    goto :goto_9

    .line 310
    :sswitch_0
    const-string v4, "video/avc"

    .line 311
    .line 312
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v4

    .line 316
    if-nez v4, :cond_a

    .line 317
    .line 318
    goto :goto_9

    .line 319
    :cond_a
    const/4 v5, 0x2

    .line 320
    goto :goto_9

    .line 321
    :sswitch_1
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v4

    .line 325
    if-nez v4, :cond_b

    .line 326
    .line 327
    goto :goto_9

    .line 328
    :cond_b
    const/4 v5, 0x1

    .line 329
    goto :goto_9

    .line 330
    :sswitch_2
    const-string v4, "video/av01"

    .line 331
    .line 332
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result v4

    .line 336
    if-nez v4, :cond_c

    .line 337
    .line 338
    goto :goto_9

    .line 339
    :cond_c
    const/4 v5, 0x0

    .line 340
    :goto_9
    packed-switch v5, :pswitch_data_0

    .line 341
    .line 342
    .line 343
    goto :goto_b

    .line 344
    :pswitch_0
    const/16 v2, 0x8

    .line 345
    .line 346
    :goto_a
    const/4 v3, 0x0

    .line 347
    goto :goto_b

    .line 348
    :pswitch_1
    const/4 v2, 0x2

    .line 349
    goto :goto_a

    .line 350
    :cond_d
    :goto_b
    iget-boolean v4, v0, Ld2/q;->i:Z

    .line 351
    .line 352
    const-string v5, "audio/ac4"

    .line 353
    .line 354
    if-nez v4, :cond_e

    .line 355
    .line 356
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v4

    .line 360
    if-nez v4, :cond_e

    .line 361
    .line 362
    const/16 v4, 0x2a

    .line 363
    .line 364
    if-eq v2, v4, :cond_e

    .line 365
    .line 366
    const/4 v4, 0x1

    .line 367
    return v4

    .line 368
    :cond_e
    iget-object v4, v0, Ld2/q;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 369
    .line 370
    if-eqz v4, :cond_f

    .line 371
    .line 372
    iget-object v8, v4, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 373
    .line 374
    if-nez v8, :cond_10

    .line 375
    .line 376
    :cond_f
    const/4 v8, 0x0

    .line 377
    new-array v11, v8, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 378
    .line 379
    move-object v8, v11

    .line 380
    :cond_10
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result v5

    .line 384
    const/16 v11, 0x10

    .line 385
    .line 386
    if-eqz v5, :cond_13

    .line 387
    .line 388
    array-length v5, v8

    .line 389
    if-nez v5, :cond_13

    .line 390
    .line 391
    if-eqz v4, :cond_11

    .line 392
    .line 393
    invoke-static {v4}, Ld2/a;->g(Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$AudioCapabilities;

    .line 394
    .line 395
    .line 396
    move-result-object v5

    .line 397
    if-eqz v5, :cond_11

    .line 398
    .line 399
    invoke-static {v5}, Ld2/a;->a(Landroid/media/MediaCodecInfo$AudioCapabilities;)I

    .line 400
    .line 401
    .line 402
    move-result v5

    .line 403
    goto :goto_c

    .line 404
    :cond_11
    const/4 v5, 0x2

    .line 405
    :goto_c
    const/16 v8, 0x12

    .line 406
    .line 407
    if-le v5, v8, :cond_12

    .line 408
    .line 409
    const/16 v5, 0x10

    .line 410
    .line 411
    goto :goto_d

    .line 412
    :cond_12
    const/16 v5, 0x8

    .line 413
    .line 414
    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 415
    .line 416
    .line 417
    move-result-object v8

    .line 418
    const-string v12, "android.hardware.type.automotive"

    .line 419
    .line 420
    invoke-virtual {v8, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 421
    .line 422
    .line 423
    move-result v8

    .line 424
    const/16 v12, 0x402

    .line 425
    .line 426
    if-eqz v8, :cond_14

    .line 427
    .line 428
    invoke-static {v12, v5}, Ld2/c0;->b(II)Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 429
    .line 430
    .line 431
    move-result-object v5

    .line 432
    const/4 v8, 0x1

    .line 433
    new-array v12, v8, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 434
    .line 435
    const/4 v8, 0x0

    .line 436
    aput-object v5, v12, v8

    .line 437
    .line 438
    move-object v8, v12

    .line 439
    :cond_13
    const/4 v12, 0x4

    .line 440
    goto :goto_e

    .line 441
    :cond_14
    const/16 v8, 0x101

    .line 442
    .line 443
    invoke-static {v8, v5}, Ld2/c0;->b(II)Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 444
    .line 445
    .line 446
    move-result-object v8

    .line 447
    const/16 v13, 0x201

    .line 448
    .line 449
    invoke-static {v13, v5}, Ld2/c0;->b(II)Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 450
    .line 451
    .line 452
    move-result-object v13

    .line 453
    const/16 v14, 0x202

    .line 454
    .line 455
    invoke-static {v14, v5}, Ld2/c0;->b(II)Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 456
    .line 457
    .line 458
    move-result-object v14

    .line 459
    invoke-static {v12, v5}, Ld2/c0;->b(II)Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 460
    .line 461
    .line 462
    move-result-object v12

    .line 463
    const/16 v15, 0x404

    .line 464
    .line 465
    invoke-static {v15, v5}, Ld2/c0;->b(II)Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 466
    .line 467
    .line 468
    move-result-object v5

    .line 469
    const/4 v15, 0x5

    .line 470
    new-array v15, v15, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 471
    .line 472
    const/16 v16, 0x0

    .line 473
    .line 474
    aput-object v8, v15, v16

    .line 475
    .line 476
    const/4 v8, 0x1

    .line 477
    aput-object v13, v15, v8

    .line 478
    .line 479
    const/4 v8, 0x2

    .line 480
    aput-object v14, v15, v8

    .line 481
    .line 482
    const/4 v8, 0x3

    .line 483
    aput-object v12, v15, v8

    .line 484
    .line 485
    const/4 v12, 0x4

    .line 486
    aput-object v5, v15, v12

    .line 487
    .line 488
    move-object v8, v15

    .line 489
    :goto_e
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 490
    .line 491
    const/16 v13, 0x17

    .line 492
    .line 493
    if-ne v5, v13, :cond_20

    .line 494
    .line 495
    const-string v5, "video/x-vnd.on2.vp9"

    .line 496
    .line 497
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 498
    .line 499
    .line 500
    move-result v5

    .line 501
    if-eqz v5, :cond_20

    .line 502
    .line 503
    array-length v5, v8

    .line 504
    if-nez v5, :cond_20

    .line 505
    .line 506
    if-eqz v4, :cond_15

    .line 507
    .line 508
    invoke-static {v4}, Ld2/a;->h(Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 509
    .line 510
    .line 511
    move-result-object v4

    .line 512
    if-eqz v4, :cond_15

    .line 513
    .line 514
    invoke-static {v4}, Ld2/a;->j(Landroid/media/MediaCodecInfo$VideoCapabilities;)Landroid/util/Range;

    .line 515
    .line 516
    .line 517
    move-result-object v4

    .line 518
    invoke-static {v4}, Ld2/a;->k(Landroid/util/Range;)Ljava/lang/Comparable;

    .line 519
    .line 520
    .line 521
    move-result-object v4

    .line 522
    check-cast v4, Ljava/lang/Integer;

    .line 523
    .line 524
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 525
    .line 526
    .line 527
    move-result v4

    .line 528
    goto :goto_f

    .line 529
    :cond_15
    const/4 v4, 0x0

    .line 530
    :goto_f
    const v5, 0xaba9500

    .line 531
    .line 532
    .line 533
    if-lt v4, v5, :cond_16

    .line 534
    .line 535
    const/16 v5, 0x400

    .line 536
    .line 537
    :goto_10
    const/4 v4, 0x1

    .line 538
    goto :goto_11

    .line 539
    :cond_16
    const v5, 0x7270e00

    .line 540
    .line 541
    .line 542
    if-lt v4, v5, :cond_17

    .line 543
    .line 544
    const/16 v5, 0x200

    .line 545
    .line 546
    goto :goto_10

    .line 547
    :cond_17
    const v5, 0x3938700

    .line 548
    .line 549
    .line 550
    if-lt v4, v5, :cond_18

    .line 551
    .line 552
    const/16 v5, 0x100

    .line 553
    .line 554
    goto :goto_10

    .line 555
    :cond_18
    const v5, 0x1c9c380

    .line 556
    .line 557
    .line 558
    if-lt v4, v5, :cond_19

    .line 559
    .line 560
    const/16 v5, 0x80

    .line 561
    .line 562
    goto :goto_10

    .line 563
    :cond_19
    const v5, 0x112a880

    .line 564
    .line 565
    .line 566
    if-lt v4, v5, :cond_1a

    .line 567
    .line 568
    const/16 v5, 0x40

    .line 569
    .line 570
    goto :goto_10

    .line 571
    :cond_1a
    const v5, 0xb71b00

    .line 572
    .line 573
    .line 574
    if-lt v4, v5, :cond_1b

    .line 575
    .line 576
    const/16 v5, 0x20

    .line 577
    .line 578
    goto :goto_10

    .line 579
    :cond_1b
    const v5, 0x6ddd00

    .line 580
    .line 581
    .line 582
    if-lt v4, v5, :cond_1c

    .line 583
    .line 584
    const/4 v4, 0x1

    .line 585
    const/16 v5, 0x10

    .line 586
    .line 587
    goto :goto_11

    .line 588
    :cond_1c
    const v5, 0x36ee80

    .line 589
    .line 590
    .line 591
    if-lt v4, v5, :cond_1d

    .line 592
    .line 593
    const/4 v4, 0x1

    .line 594
    const/16 v5, 0x8

    .line 595
    .line 596
    goto :goto_11

    .line 597
    :cond_1d
    const v5, 0x1b7740

    .line 598
    .line 599
    .line 600
    if-lt v4, v5, :cond_1e

    .line 601
    .line 602
    const/4 v4, 0x1

    .line 603
    const/4 v5, 0x4

    .line 604
    goto :goto_11

    .line 605
    :cond_1e
    const v5, 0xc3500

    .line 606
    .line 607
    .line 608
    if-lt v4, v5, :cond_1f

    .line 609
    .line 610
    const/4 v4, 0x1

    .line 611
    const/4 v5, 0x2

    .line 612
    goto :goto_11

    .line 613
    :cond_1f
    const/4 v4, 0x1

    .line 614
    const/4 v5, 0x1

    .line 615
    :goto_11
    invoke-static {v4, v5}, Ld2/c0;->b(II)Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 616
    .line 617
    .line 618
    move-result-object v5

    .line 619
    new-array v8, v4, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 620
    .line 621
    const/4 v4, 0x0

    .line 622
    aput-object v5, v8, v4

    .line 623
    .line 624
    :cond_20
    array-length v4, v8

    .line 625
    const/4 v5, 0x0

    .line 626
    :goto_12
    if-ge v5, v4, :cond_27

    .line 627
    .line 628
    aget-object v6, v8, v5

    .line 629
    .line 630
    iget v11, v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 631
    .line 632
    if-ne v11, v2, :cond_21

    .line 633
    .line 634
    iget v6, v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 635
    .line 636
    if-ge v6, v3, :cond_23

    .line 637
    .line 638
    if-nez p3, :cond_21

    .line 639
    .line 640
    goto :goto_13

    .line 641
    :cond_21
    const/4 v6, 0x2

    .line 642
    :cond_22
    const/4 v11, 0x1

    .line 643
    goto :goto_15

    .line 644
    :cond_23
    :goto_13
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 645
    .line 646
    .line 647
    move-result v6

    .line 648
    if-eqz v6, :cond_25

    .line 649
    .line 650
    const/4 v6, 0x2

    .line 651
    if-ne v6, v2, :cond_26

    .line 652
    .line 653
    sget-object v11, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 654
    .line 655
    const-string v12, "sailfish"

    .line 656
    .line 657
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 658
    .line 659
    .line 660
    move-result v12

    .line 661
    if-nez v12, :cond_24

    .line 662
    .line 663
    const-string v12, "marlin"

    .line 664
    .line 665
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 666
    .line 667
    .line 668
    move-result v11

    .line 669
    if-eqz v11, :cond_26

    .line 670
    .line 671
    :cond_24
    const/4 v11, 0x1

    .line 672
    goto :goto_14

    .line 673
    :cond_25
    const/4 v6, 0x2

    .line 674
    :cond_26
    const/4 v11, 0x0

    .line 675
    :goto_14
    if-nez v11, :cond_22

    .line 676
    .line 677
    const/4 v11, 0x1

    .line 678
    return v11

    .line 679
    :goto_15
    add-int/2addr v5, v11

    .line 680
    goto :goto_12

    .line 681
    :cond_27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 682
    .line 683
    const-string v3, "codec.profileLevel, "

    .line 684
    .line 685
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 686
    .line 687
    .line 688
    iget-object v1, v1, Lr1/p;->k:Ljava/lang/String;

    .line 689
    .line 690
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    .line 692
    .line 693
    const-string v1, ", "

    .line 694
    .line 695
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    .line 697
    .line 698
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    .line 700
    .line 701
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object v1

    .line 705
    invoke-virtual {v0, v1}, Ld2/q;->h(Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    const/4 v1, 0x0

    .line 709
    return v1

    .line 710
    nop

    .line 711
    :sswitch_data_0
    .sparse-switch
        -0x631b55f6 -> :sswitch_2
        -0x63185e82 -> :sswitch_1
        0x4f62373a -> :sswitch_0
    .end sparse-switch

    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Lr1/p;)Z
    .locals 2

    .line 1
    iget-object v0, p1, Lr1/p;->o:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "audio/flac"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget p1, p1, Lr1/p;->I:I

    .line 12
    .line 13
    const/16 v0, 0x16

    .line 14
    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 18
    .line 19
    const/16 v0, 0x22

    .line 20
    .line 21
    if-ge p1, v0, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Ld2/q;->a:Ljava/lang/String;

    .line 24
    .line 25
    const-string v0, "c2.android.flac.decoder"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p1, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 37
    :goto_1
    return p1
.end method

.method public final e(Landroid/content/Context;Lr1/p;)Z
    .locals 6

    .line 1
    iget-object v0, p2, Lr1/p;->o:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Ld2/q;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-static {p2}, Ld2/c0;->c(Lr1/p;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 27
    :goto_1
    if-nez v0, :cond_2

    .line 28
    .line 29
    return v3

    .line 30
    :cond_2
    invoke-virtual {p0, p1, p2, v2}, Ld2/q;->c(Landroid/content/Context;Lr1/p;Z)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_3

    .line 35
    .line 36
    return v3

    .line 37
    :cond_3
    invoke-virtual {p0, p2}, Ld2/q;->d(Lr1/p;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_4

    .line 42
    .line 43
    return v3

    .line 44
    :cond_4
    iget-boolean p1, p0, Ld2/q;->i:Z

    .line 45
    .line 46
    if-eqz p1, :cond_7

    .line 47
    .line 48
    iget p1, p2, Lr1/p;->v:I

    .line 49
    .line 50
    if-lez p1, :cond_6

    .line 51
    .line 52
    iget v0, p2, Lr1/p;->w:I

    .line 53
    .line 54
    if-gtz v0, :cond_5

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_5
    iget p2, p2, Lr1/p;->z:F

    .line 58
    .line 59
    float-to-double v1, p2

    .line 60
    invoke-virtual {p0, p1, v0, v1, v2}, Ld2/q;->g(IID)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    return p1

    .line 65
    :cond_6
    :goto_2
    return v2

    .line 66
    :cond_7
    iget-object p1, p0, Ld2/q;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 67
    .line 68
    const/4 v0, -0x1

    .line 69
    iget v4, p2, Lr1/p;->H:I

    .line 70
    .line 71
    if-eq v4, v0, :cond_a

    .line 72
    .line 73
    if-nez p1, :cond_8

    .line 74
    .line 75
    const-string p1, "sampleRate.caps"

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Ld2/q;->h(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_5

    .line 81
    .line 82
    :cond_8
    invoke-static {p1}, Ld2/a;->g(Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$AudioCapabilities;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    if-nez v5, :cond_9

    .line 87
    .line 88
    const-string p1, "sampleRate.aCaps"

    .line 89
    .line 90
    invoke-virtual {p0, p1}, Ld2/q;->h(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_5

    .line 94
    .line 95
    :cond_9
    invoke-static {v5, v4}, Ld2/a;->u(Landroid/media/MediaCodecInfo$AudioCapabilities;I)Z

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-nez v5, :cond_a

    .line 100
    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string p2, "sampleRate.support, "

    .line 104
    .line 105
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p0, p1}, Ld2/q;->h(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_5

    .line 119
    .line 120
    :cond_a
    iget p2, p2, Lr1/p;->G:I

    .line 121
    .line 122
    if-eq p2, v0, :cond_12

    .line 123
    .line 124
    if-nez p1, :cond_b

    .line 125
    .line 126
    const-string p1, "channelCount.caps"

    .line 127
    .line 128
    invoke-virtual {p0, p1}, Ld2/q;->h(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    goto/16 :goto_5

    .line 132
    .line 133
    :cond_b
    invoke-static {p1}, Ld2/a;->g(Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$AudioCapabilities;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    if-nez p1, :cond_c

    .line 138
    .line 139
    const-string p1, "channelCount.aCaps"

    .line 140
    .line 141
    invoke-virtual {p0, p1}, Ld2/q;->h(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    goto/16 :goto_5

    .line 145
    .line 146
    :cond_c
    invoke-static {p1}, Ld2/a;->a(Landroid/media/MediaCodecInfo$AudioCapabilities;)I

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-gt p1, v2, :cond_11

    .line 151
    .line 152
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 153
    .line 154
    const/16 v4, 0x1a

    .line 155
    .line 156
    if-lt v0, v4, :cond_d

    .line 157
    .line 158
    if-lez p1, :cond_d

    .line 159
    .line 160
    goto/16 :goto_4

    .line 161
    .line 162
    :cond_d
    const-string v0, "audio/mpeg"

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-nez v0, :cond_11

    .line 169
    .line 170
    const-string v0, "audio/3gpp"

    .line 171
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-nez v0, :cond_11

    .line 177
    .line 178
    const-string v0, "audio/amr-wb"

    .line 179
    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-nez v0, :cond_11

    .line 185
    .line 186
    const-string v0, "audio/mp4a-latm"

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-nez v0, :cond_11

    .line 193
    .line 194
    const-string v0, "audio/vorbis"

    .line 195
    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-nez v0, :cond_11

    .line 201
    .line 202
    const-string v0, "audio/opus"

    .line 203
    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-nez v0, :cond_11

    .line 209
    .line 210
    const-string v0, "audio/raw"

    .line 211
    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-nez v0, :cond_11

    .line 217
    .line 218
    const-string v0, "audio/flac"

    .line 219
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-nez v0, :cond_11

    .line 225
    .line 226
    const-string v0, "audio/g711-alaw"

    .line 227
    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-nez v0, :cond_11

    .line 233
    .line 234
    const-string v0, "audio/g711-mlaw"

    .line 235
    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-nez v0, :cond_11

    .line 241
    .line 242
    const-string v0, "audio/gsm"

    .line 243
    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-eqz v0, :cond_e

    .line 249
    .line 250
    goto :goto_4

    .line 251
    :cond_e
    const-string v0, "audio/ac3"

    .line 252
    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    if-eqz v0, :cond_f

    .line 258
    .line 259
    const/4 v0, 0x6

    .line 260
    goto :goto_3

    .line 261
    :cond_f
    const-string v0, "audio/eac3"

    .line 262
    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    if-eqz v0, :cond_10

    .line 268
    .line 269
    const/16 v0, 0x10

    .line 270
    .line 271
    goto :goto_3

    .line 272
    :cond_10
    const/16 v0, 0x1e

    .line 273
    .line 274
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    const-string v4, "AssumedMaxChannelAdjustment: "

    .line 277
    .line 278
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    iget-object v4, p0, Ld2/q;->a:Ljava/lang/String;

    .line 282
    .line 283
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    const-string v4, ", ["

    .line 287
    .line 288
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    const-string p1, " to "

    .line 295
    .line 296
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    const-string p1, "]"

    .line 303
    .line 304
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    invoke-static {p1}, Lu1/a;->p(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    move p1, v0

    .line 315
    :cond_11
    :goto_4
    if-ge p1, p2, :cond_12

    .line 316
    .line 317
    new-instance p1, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    const-string v0, "channelCount.support, "

    .line 320
    .line 321
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    invoke-virtual {p0, p1}, Ld2/q;->h(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    :goto_5
    const/4 v2, 0x0

    .line 335
    :cond_12
    return v2
.end method

.method public final f(Lr1/p;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ld2/q;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean p1, p0, Ld2/q;->e:Z

    .line 6
    .line 7
    return p1

    .line 8
    :cond_0
    invoke-static {p1}, Lu1/c;->b(Lr1/p;)Landroid/util/Pair;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const/16 v0, 0x2a

    .line 23
    .line 24
    if-ne p1, v0, :cond_1

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p1, 0x0

    .line 29
    :goto_0
    return p1
.end method

.method public final g(IID)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Ld2/q;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    const-string p1, "sizeAndRate.caps"

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Ld2/q;->h(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    invoke-static {v1}, Ld2/a;->h(Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    const-string p1, "sizeAndRate.vCaps"

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ld2/q;->h(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return v0

    .line 24
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 25
    .line 26
    const/16 v3, 0x1d

    .line 27
    .line 28
    const-string v4, "@"

    .line 29
    .line 30
    const-string v5, "x"

    .line 31
    .line 32
    const/4 v6, 0x1

    .line 33
    if-lt v2, v3, :cond_5

    .line 34
    .line 35
    if-lt v2, v3, :cond_3

    .line 36
    .line 37
    sget-object v2, Lqf/c;->a:Ljava/lang/Boolean;

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-static {v1, p1, p2, p3, p4}, Ld2/r;->a(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    goto :goto_1

    .line 53
    :cond_3
    :goto_0
    const/4 v2, 0x0

    .line 54
    :goto_1
    const/4 v3, 0x2

    .line 55
    if-ne v2, v3, :cond_4

    .line 56
    .line 57
    return v6

    .line 58
    :cond_4
    if-ne v2, v6, :cond_5

    .line 59
    .line 60
    const-string v1, "sizeAndRate.cover, "

    .line 61
    .line 62
    invoke-static {p1, p2, v1, v5, v4}, Lta/q;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p0, p1}, Ld2/q;->h(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return v0

    .line 77
    :cond_5
    invoke-static {v1, p1, p2, p3, p4}, Ld2/q;->a(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-nez v2, :cond_9

    .line 82
    .line 83
    if-ge p1, p2, :cond_8

    .line 84
    .line 85
    const-string v2, "OMX.MTK.VIDEO.DECODER.HEVC"

    .line 86
    .line 87
    iget-object v3, p0, Ld2/q;->a:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_6

    .line 94
    .line 95
    const-string v2, "mcv5a"

    .line 96
    .line 97
    sget-object v7, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_6

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_6
    invoke-static {v1, p2, p1, p3, p4}, Ld2/q;->a(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-nez v1, :cond_7

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_7
    const-string v0, "sizeAndRate.rotated, "

    .line 114
    .line 115
    invoke-static {p1, p2, v0, v5, v4}, Lta/q;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    new-instance p2, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    const-string p3, "AssumedSupport ["

    .line 129
    .line 130
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string p1, "] ["

    .line 137
    .line 138
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string p3, ", "

    .line 145
    .line 146
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    iget-object p3, p0, Ld2/q;->b:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    sget-object p1, Lu1/f0;->a:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string p1, "]"

    .line 163
    .line 164
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-static {p1}, Lu1/a;->e(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_8
    :goto_2
    const-string v1, "sizeAndRate.support, "

    .line 176
    .line 177
    invoke-static {p1, p2, v1, v5, v4}, Lta/q;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-virtual {p0, p1}, Ld2/q;->h(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    return v0

    .line 192
    :cond_9
    :goto_3
    return v6
.end method

.method public final h(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "NoSupport ["

    .line 2
    .line 3
    const-string v1, "] ["

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lda/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Ld2/q;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v0, ", "

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Ld2/q;->b:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    sget-object v0, Lu1/f0;->a:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, "]"

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p1}, Lu1/a;->e(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ld2/q;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
