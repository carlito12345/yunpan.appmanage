.class public final Ll5/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll5/r;
.implements Lt5/a;
.implements Lv3/m0;


# instance fields
.field public final synthetic a:I

.field public final b:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Ll5/x;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-object p1, p0, Ll5/x;->b:Landroid/content/res/Resources;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/res/Resources;I)V
    .locals 0

    .line 1
    iput p2, p0, Ll5/x;->a:I

    iput-object p1, p0, Ll5/x;->b:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lr1/p;)Ljava/lang/String;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p1, Lr1/p;->d:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    const-string v4, ""

    .line 10
    .line 11
    if-nez v3, :cond_2

    .line 12
    .line 13
    const-string v3, "und"

    .line 14
    .line 15
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-static {v2}, Lua/t7;->l(Ljava/lang/String;)Ljava/util/Locale;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    sget-object v3, Lu1/f0;->a:Ljava/lang/String;

    .line 27
    .line 28
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 29
    .line 30
    const/16 v5, 0x18

    .line 31
    .line 32
    if-lt v3, v5, :cond_1

    .line 33
    .line 34
    invoke-static {}, Lq/t;->z()Ljava/util/Locale$Category;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-static {v3}, Lq/t;->m(Ljava/util/Locale$Category;)Ljava/util/Locale;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    :goto_0
    invoke-virtual {v2, v3}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_3

    .line 56
    .line 57
    :cond_2
    :goto_1
    move-object v2, v4

    .line 58
    goto :goto_2

    .line 59
    :cond_3
    :try_start_0
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->offsetByCodePoints(II)I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    new-instance v6, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    invoke-virtual {v7, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_2

    .line 91
    :catch_0
    nop

    .line 92
    :goto_2
    invoke-virtual {p0, p1}, Ll5/x;->b(Lr1/p;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    const/4 v5, 0x2

    .line 97
    new-array v5, v5, [Ljava/lang/String;

    .line 98
    .line 99
    aput-object v2, v5, v0

    .line 100
    .line 101
    aput-object v3, v5, v1

    .line 102
    .line 103
    invoke-virtual {p0, v5}, Ll5/x;->e([Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_5

    .line 112
    .line 113
    iget-object p1, p1, Lr1/p;->b:Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_4

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_4
    move-object v4, p1

    .line 123
    :goto_3
    move-object v0, v4

    .line 124
    :cond_5
    return-object v0
.end method

.method public b(Lr1/p;)Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget v2, p1, Lr1/p;->f:I

    .line 4
    .line 5
    const/4 v3, 0x2

    .line 6
    and-int/2addr v2, v3

    .line 7
    iget-object v4, p0, Ll5/x;->b:Landroid/content/res/Resources;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const v2, 0x7f13007b

    .line 12
    .line 13
    .line 14
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v2, ""

    .line 20
    .line 21
    :goto_0
    iget p1, p1, Lr1/p;->f:I

    .line 22
    .line 23
    and-int/lit8 v5, p1, 0x4

    .line 24
    .line 25
    if-eqz v5, :cond_1

    .line 26
    .line 27
    const v5, 0x7f13007e

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    new-array v6, v3, [Ljava/lang/String;

    .line 35
    .line 36
    aput-object v2, v6, v1

    .line 37
    .line 38
    aput-object v5, v6, v0

    .line 39
    .line 40
    invoke-virtual {p0, v6}, Ll5/x;->e([Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    :cond_1
    and-int/lit8 v5, p1, 0x8

    .line 45
    .line 46
    if-eqz v5, :cond_2

    .line 47
    .line 48
    const v5, 0x7f13007d

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    new-array v6, v3, [Ljava/lang/String;

    .line 56
    .line 57
    aput-object v2, v6, v1

    .line 58
    .line 59
    aput-object v5, v6, v0

    .line 60
    .line 61
    invoke-virtual {p0, v6}, Ll5/x;->e([Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    :cond_2
    and-int/lit16 p1, p1, 0x440

    .line 66
    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    const p1, 0x7f13007c

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    new-array v3, v3, [Ljava/lang/String;

    .line 77
    .line 78
    aput-object v2, v3, v1

    .line 79
    .line 80
    aput-object p1, v3, v0

    .line 81
    .line 82
    invoke-virtual {p0, v3}, Ll5/x;->e([Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    :cond_3
    return-object v2
.end method

.method public c(Lh5/z;Lf5/i;)Lh5/z;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    new-instance p2, Lo5/d;

    .line 6
    .line 7
    iget-object v0, p0, Ll5/x;->b:Landroid/content/res/Resources;

    .line 8
    .line 9
    invoke-direct {p2, v0, p1}, Lo5/d;-><init>(Landroid/content/res/Resources;Lh5/z;)V

    .line 10
    .line 11
    .line 12
    move-object p1, p2

    .line 13
    :goto_0
    return-object p1
.end method

.method public d(Lr1/p;)Ljava/lang/String;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x1

    .line 9
    iget-object v6, v1, Lr1/p;->o:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v6}, Lr1/e0;->g(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v6

    .line 15
    const/4 v7, -0x1

    .line 16
    iget v8, v1, Lr1/p;->G:I

    .line 17
    .line 18
    iget v9, v1, Lr1/p;->w:I

    .line 19
    .line 20
    iget v10, v1, Lr1/p;->v:I

    .line 21
    .line 22
    if-eq v6, v7, :cond_0

    .line 23
    .line 24
    goto/16 :goto_8

    .line 25
    .line 26
    :cond_0
    const-string v6, "(\\s*,\\s*)"

    .line 27
    .line 28
    const/4 v11, 0x0

    .line 29
    iget-object v12, v1, Lr1/p;->k:Ljava/lang/String;

    .line 30
    .line 31
    if-nez v12, :cond_2

    .line 32
    .line 33
    :cond_1
    move-object/from16 v16, v11

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v13

    .line 40
    if-eqz v13, :cond_3

    .line 41
    .line 42
    new-array v13, v4, [Ljava/lang/String;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v13

    .line 49
    invoke-virtual {v13, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v13

    .line 53
    :goto_0
    array-length v14, v13

    .line 54
    const/4 v15, 0x0

    .line 55
    :goto_1
    if-ge v15, v14, :cond_1

    .line 56
    .line 57
    aget-object v16, v13, v15

    .line 58
    .line 59
    invoke-static/range {v16 .. v16}, Lr1/e0;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v16

    .line 63
    if-eqz v16, :cond_4

    .line 64
    .line 65
    invoke-static/range {v16 .. v16}, Lr1/e0;->k(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v17

    .line 69
    if-eqz v17, :cond_4

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_4
    add-int/2addr v15, v5

    .line 73
    goto :goto_1

    .line 74
    :goto_2
    if-eqz v16, :cond_6

    .line 75
    .line 76
    :cond_5
    :goto_3
    const/4 v6, 0x2

    .line 77
    goto :goto_8

    .line 78
    :cond_6
    if-nez v12, :cond_7

    .line 79
    .line 80
    goto :goto_6

    .line 81
    :cond_7
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 82
    .line 83
    .line 84
    move-result v13

    .line 85
    if-eqz v13, :cond_8

    .line 86
    .line 87
    new-array v6, v4, [Ljava/lang/String;

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_8
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v12

    .line 94
    invoke-virtual {v12, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    :goto_4
    array-length v12, v6

    .line 99
    const/4 v13, 0x0

    .line 100
    :goto_5
    if-ge v13, v12, :cond_a

    .line 101
    .line 102
    aget-object v14, v6, v13

    .line 103
    .line 104
    invoke-static {v14}, Lr1/e0;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v14

    .line 108
    if-eqz v14, :cond_9

    .line 109
    .line 110
    invoke-static {v14}, Lr1/e0;->h(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v15

    .line 114
    if-eqz v15, :cond_9

    .line 115
    .line 116
    move-object v11, v14

    .line 117
    goto :goto_6

    .line 118
    :cond_9
    add-int/2addr v13, v5

    .line 119
    goto :goto_5

    .line 120
    :cond_a
    :goto_6
    if-eqz v11, :cond_c

    .line 121
    .line 122
    :cond_b
    :goto_7
    const/4 v6, 0x1

    .line 123
    goto :goto_8

    .line 124
    :cond_c
    if-ne v10, v7, :cond_5

    .line 125
    .line 126
    if-eq v9, v7, :cond_d

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_d
    if-ne v8, v7, :cond_b

    .line 130
    .line 131
    iget v6, v1, Lr1/p;->H:I

    .line 132
    .line 133
    if-eq v6, v7, :cond_e

    .line 134
    .line 135
    goto :goto_7

    .line 136
    :cond_e
    const/4 v6, -0x1

    .line 137
    :goto_8
    const v11, 0x7f130078

    .line 138
    .line 139
    .line 140
    const v12, 0x49742400    # 1000000.0f

    .line 141
    .line 142
    .line 143
    iget-object v13, v0, Ll5/x;->b:Landroid/content/res/Resources;

    .line 144
    .line 145
    const-string v14, ""

    .line 146
    .line 147
    iget v15, v1, Lr1/p;->j:I

    .line 148
    .line 149
    if-ne v6, v3, :cond_12

    .line 150
    .line 151
    invoke-virtual/range {p0 .. p1}, Ll5/x;->b(Lr1/p;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    if-eq v10, v7, :cond_10

    .line 156
    .line 157
    if-ne v9, v7, :cond_f

    .line 158
    .line 159
    goto :goto_9

    .line 160
    :cond_f
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v9

    .line 168
    new-array v10, v3, [Ljava/lang/Object;

    .line 169
    .line 170
    aput-object v8, v10, v4

    .line 171
    .line 172
    aput-object v9, v10, v5

    .line 173
    .line 174
    const v8, 0x7f13007a

    .line 175
    .line 176
    .line 177
    invoke-virtual {v13, v8, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    goto :goto_a

    .line 182
    :cond_10
    :goto_9
    move-object v8, v14

    .line 183
    :goto_a
    if-ne v15, v7, :cond_11

    .line 184
    .line 185
    goto :goto_b

    .line 186
    :cond_11
    int-to-float v7, v15

    .line 187
    div-float/2addr v7, v12

    .line 188
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    new-array v9, v5, [Ljava/lang/Object;

    .line 193
    .line 194
    aput-object v7, v9, v4

    .line 195
    .line 196
    invoke-virtual {v13, v11, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v14

    .line 200
    :goto_b
    new-array v2, v2, [Ljava/lang/String;

    .line 201
    .line 202
    aput-object v6, v2, v4

    .line 203
    .line 204
    aput-object v8, v2, v5

    .line 205
    .line 206
    aput-object v14, v2, v3

    .line 207
    .line 208
    invoke-virtual {v0, v2}, Ll5/x;->e([Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    goto/16 :goto_f

    .line 213
    .line 214
    :cond_12
    if-ne v6, v5, :cond_1a

    .line 215
    .line 216
    invoke-virtual/range {p0 .. p1}, Ll5/x;->a(Lr1/p;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    if-eq v8, v7, :cond_18

    .line 221
    .line 222
    if-ge v8, v5, :cond_13

    .line 223
    .line 224
    goto :goto_c

    .line 225
    :cond_13
    if-eq v8, v5, :cond_17

    .line 226
    .line 227
    if-eq v8, v3, :cond_16

    .line 228
    .line 229
    const/4 v9, 0x6

    .line 230
    if-eq v8, v9, :cond_15

    .line 231
    .line 232
    const/4 v9, 0x7

    .line 233
    if-eq v8, v9, :cond_15

    .line 234
    .line 235
    const/16 v9, 0x8

    .line 236
    .line 237
    if-eq v8, v9, :cond_14

    .line 238
    .line 239
    const v8, 0x7f130083

    .line 240
    .line 241
    .line 242
    invoke-virtual {v13, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v8

    .line 246
    goto :goto_d

    .line 247
    :cond_14
    const v8, 0x7f130085

    .line 248
    .line 249
    .line 250
    invoke-virtual {v13, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v8

    .line 254
    goto :goto_d

    .line 255
    :cond_15
    const v8, 0x7f130084

    .line 256
    .line 257
    .line 258
    invoke-virtual {v13, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v8

    .line 262
    goto :goto_d

    .line 263
    :cond_16
    const v8, 0x7f130082

    .line 264
    .line 265
    .line 266
    invoke-virtual {v13, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v8

    .line 270
    goto :goto_d

    .line 271
    :cond_17
    const v8, 0x7f130079

    .line 272
    .line 273
    .line 274
    invoke-virtual {v13, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v8

    .line 278
    goto :goto_d

    .line 279
    :cond_18
    :goto_c
    move-object v8, v14

    .line 280
    :goto_d
    if-ne v15, v7, :cond_19

    .line 281
    .line 282
    goto :goto_e

    .line 283
    :cond_19
    int-to-float v7, v15

    .line 284
    div-float/2addr v7, v12

    .line 285
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 286
    .line 287
    .line 288
    move-result-object v7

    .line 289
    new-array v9, v5, [Ljava/lang/Object;

    .line 290
    .line 291
    aput-object v7, v9, v4

    .line 292
    .line 293
    invoke-virtual {v13, v11, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v14

    .line 297
    :goto_e
    new-array v2, v2, [Ljava/lang/String;

    .line 298
    .line 299
    aput-object v6, v2, v4

    .line 300
    .line 301
    aput-object v8, v2, v5

    .line 302
    .line 303
    aput-object v14, v2, v3

    .line 304
    .line 305
    invoke-virtual {v0, v2}, Ll5/x;->e([Ljava/lang/String;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    goto :goto_f

    .line 310
    :cond_1a
    invoke-virtual/range {p0 .. p1}, Ll5/x;->a(Lr1/p;)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    :goto_f
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 315
    .line 316
    .line 317
    move-result v3

    .line 318
    if-nez v3, :cond_1b

    .line 319
    .line 320
    return-object v2

    .line 321
    :cond_1b
    iget-object v1, v1, Lr1/p;->d:Ljava/lang/String;

    .line 322
    .line 323
    if-eqz v1, :cond_1d

    .line 324
    .line 325
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 330
    .line 331
    .line 332
    move-result v2

    .line 333
    if-eqz v2, :cond_1c

    .line 334
    .line 335
    goto :goto_10

    .line 336
    :cond_1c
    const v2, 0x7f130087

    .line 337
    .line 338
    .line 339
    new-array v3, v5, [Ljava/lang/Object;

    .line 340
    .line 341
    aput-object v1, v3, v4

    .line 342
    .line 343
    invoke-virtual {v13, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    goto :goto_11

    .line 348
    :cond_1d
    :goto_10
    const v1, 0x7f130086

    .line 349
    .line 350
    .line 351
    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    :goto_11
    return-object v1
.end method

.method public varargs e([Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    array-length v1, p1

    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    :goto_0
    if-ge v4, v1, :cond_2

    .line 8
    .line 9
    aget-object v5, p1, v4

    .line 10
    .line 11
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v6

    .line 15
    if-nez v6, :cond_1

    .line 16
    .line 17
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    if-eqz v6, :cond_0

    .line 22
    .line 23
    move-object v2, v5

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const/4 v6, 0x2

    .line 26
    new-array v6, v6, [Ljava/lang/Object;

    .line 27
    .line 28
    aput-object v2, v6, v3

    .line 29
    .line 30
    aput-object v5, v6, v0

    .line 31
    .line 32
    iget-object v2, p0, Ll5/x;->b:Landroid/content/res/Resources;

    .line 33
    .line 34
    const v5, 0x7f130077

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    :cond_1
    :goto_1
    add-int/2addr v4, v0

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    return-object v2
.end method

.method public l(Ll5/w;)Ll5/q;
    .locals 3

    .line 1
    iget v0, p0, Ll5/x;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Ll5/b;

    .line 7
    .line 8
    sget-object v0, Ll5/b0;->b:Ll5/b0;

    .line 9
    .line 10
    iget-object v1, p0, Ll5/x;->b:Landroid/content/res/Resources;

    .line 11
    .line 12
    invoke-direct {p1, v1, v0}, Ll5/b;-><init>(Landroid/content/res/Resources;Ll5/q;)V

    .line 13
    .line 14
    .line 15
    return-object p1

    .line 16
    :pswitch_0
    new-instance v0, Ll5/b;

    .line 17
    .line 18
    const-class v1, Landroid/net/Uri;

    .line 19
    .line 20
    const-class v2, Ljava/io/InputStream;

    .line 21
    .line 22
    invoke-virtual {p1, v1, v2}, Ll5/w;->c(Ljava/lang/Class;Ljava/lang/Class;)Ll5/q;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object v1, p0, Ll5/x;->b:Landroid/content/res/Resources;

    .line 27
    .line 28
    invoke-direct {v0, v1, p1}, Ll5/b;-><init>(Landroid/content/res/Resources;Ll5/q;)V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    :pswitch_1
    new-instance v0, Ll5/b;

    .line 33
    .line 34
    const-class v1, Landroid/net/Uri;

    .line 35
    .line 36
    const-class v2, Landroid/content/res/AssetFileDescriptor;

    .line 37
    .line 38
    invoke-virtual {p1, v1, v2}, Ll5/w;->c(Ljava/lang/Class;Ljava/lang/Class;)Ll5/q;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object v1, p0, Ll5/x;->b:Landroid/content/res/Resources;

    .line 43
    .line 44
    invoke-direct {v0, v1, p1}, Ll5/b;-><init>(Landroid/content/res/Resources;Ll5/q;)V

    .line 45
    .line 46
    .line 47
    return-object v0

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
