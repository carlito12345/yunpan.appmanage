.class public final Lv0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/text/TextPaint;

.field public final b:Landroid/text/TextDirectionHeuristic;

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(Landroid/text/PrecomputedText$Params;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {p1}, Lo5/g;->i(Landroid/text/PrecomputedText$Params;)Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lv0/f;->a:Landroid/text/TextPaint;

    .line 14
    invoke-static {p1}, Lo5/g;->h(Landroid/text/PrecomputedText$Params;)Landroid/text/TextDirectionHeuristic;

    move-result-object v0

    iput-object v0, p0, Lv0/f;->b:Landroid/text/TextDirectionHeuristic;

    .line 15
    invoke-static {p1}, Lo5/g;->b(Landroid/text/PrecomputedText$Params;)I

    move-result v0

    iput v0, p0, Lv0/f;->c:I

    .line 16
    invoke-static {p1}, Lo5/g;->v(Landroid/text/PrecomputedText$Params;)I

    move-result p1

    iput p1, p0, Lv0/f;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, Landroid/text/PrecomputedText$Params$Builder;

    invoke-direct {v0, p1}, Landroid/text/PrecomputedText$Params$Builder;-><init>(Landroid/text/TextPaint;)V

    .line 4
    invoke-virtual {v0, p3}, Landroid/text/PrecomputedText$Params$Builder;->setBreakStrategy(I)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p4}, Landroid/text/PrecomputedText$Params$Builder;->setHyphenationFrequency(I)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p2}, Landroid/text/PrecomputedText$Params$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/text/PrecomputedText$Params$Builder;->build()Landroid/text/PrecomputedText$Params;

    .line 8
    :cond_0
    iput-object p1, p0, Lv0/f;->a:Landroid/text/TextPaint;

    .line 9
    iput-object p2, p0, Lv0/f;->b:Landroid/text/TextDirectionHeuristic;

    .line 10
    iput p3, p0, Lv0/f;->c:I

    .line 11
    iput p4, p0, Lv0/f;->d:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lv0/f;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lv0/f;

    .line 12
    .line 13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v3, 0x17

    .line 16
    .line 17
    if-lt v1, v3, :cond_3

    .line 18
    .line 19
    iget v3, p1, Lv0/f;->c:I

    .line 20
    .line 21
    iget v4, p0, Lv0/f;->c:I

    .line 22
    .line 23
    if-eq v4, v3, :cond_2

    .line 24
    .line 25
    :goto_0
    const/4 v3, 0x0

    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :cond_2
    iget v3, p0, Lv0/f;->d:I

    .line 29
    .line 30
    iget v4, p1, Lv0/f;->d:I

    .line 31
    .line 32
    if-eq v3, v4, :cond_3

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    iget-object v3, p0, Lv0/f;->a:Landroid/text/TextPaint;

    .line 36
    .line 37
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    iget-object v5, p1, Lv0/f;->a:Landroid/text/TextPaint;

    .line 42
    .line 43
    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    cmpl-float v4, v4, v5

    .line 48
    .line 49
    if-eqz v4, :cond_4

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_4
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextScaleX()F

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    iget-object v5, p1, Lv0/f;->a:Landroid/text/TextPaint;

    .line 57
    .line 58
    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextScaleX()F

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    cmpl-float v4, v4, v6

    .line 63
    .line 64
    if-eqz v4, :cond_5

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_5
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSkewX()F

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSkewX()F

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    cmpl-float v4, v4, v6

    .line 76
    .line 77
    if-eqz v4, :cond_6

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_6
    const/16 v4, 0x15

    .line 81
    .line 82
    if-lt v1, v4, :cond_8

    .line 83
    .line 84
    invoke-static {v3}, Lua/t7;->a(Landroid/text/TextPaint;)F

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    invoke-static {v5}, Lua/t7;->a(Landroid/text/TextPaint;)F

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    cmpl-float v4, v4, v6

    .line 93
    .line 94
    if-eqz v4, :cond_7

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_7
    invoke-static {v3}, Lua/t7;->k(Landroid/text/TextPaint;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-static {v5}, Lua/t7;->k(Landroid/text/TextPaint;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-nez v4, :cond_8

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_8
    invoke-virtual {v3}, Landroid/graphics/Paint;->getFlags()I

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    invoke-virtual {v5}, Landroid/graphics/Paint;->getFlags()I

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    if-eq v4, v6, :cond_9

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_9
    const/16 v4, 0x18

    .line 124
    .line 125
    if-lt v1, v4, :cond_a

    .line 126
    .line 127
    invoke-static {v3}, Lq/t;->d(Landroid/text/TextPaint;)Landroid/os/LocaleList;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-static {v5}, Lq/t;->d(Landroid/text/TextPaint;)Landroid/os/LocaleList;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-static {v6, v4}, Ljg/w;->u(Ljava/lang/Object;Landroid/os/LocaleList;)Z

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-nez v4, :cond_b

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_a
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextLocale()Ljava/util/Locale;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextLocale()Ljava/util/Locale;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    invoke-virtual {v4, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    if-nez v4, :cond_b

    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :cond_b
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    if-nez v4, :cond_c

    .line 163
    .line 164
    invoke-virtual {v5}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    if-eqz v3, :cond_d

    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :cond_c
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-virtual {v5}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    invoke-virtual {v3, v4}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    if-nez v3, :cond_d

    .line 185
    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :cond_d
    const/4 v3, 0x1

    .line 189
    :goto_1
    if-nez v3, :cond_e

    .line 190
    .line 191
    return v2

    .line 192
    :cond_e
    const/16 v3, 0x12

    .line 193
    .line 194
    if-lt v1, v3, :cond_f

    .line 195
    .line 196
    iget-object v1, p0, Lv0/f;->b:Landroid/text/TextDirectionHeuristic;

    .line 197
    .line 198
    iget-object p1, p1, Lv0/f;->b:Landroid/text/TextDirectionHeuristic;

    .line 199
    .line 200
    if-eq v1, p1, :cond_f

    .line 201
    .line 202
    return v2

    .line 203
    :cond_f
    return v0
.end method

.method public final hashCode()I
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v2, 0xb

    .line 4
    .line 5
    const/4 v5, 0x7

    .line 6
    const/4 v6, 0x6

    .line 7
    const/4 v7, 0x5

    .line 8
    const/4 v8, 0x4

    .line 9
    const/4 v9, 0x3

    .line 10
    const/4 v10, 0x2

    .line 11
    const/4 v11, 0x1

    .line 12
    const/4 v12, 0x0

    .line 13
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v14, 0x18

    .line 16
    .line 17
    iget v15, v0, Lv0/f;->d:I

    .line 18
    .line 19
    iget v1, v0, Lv0/f;->c:I

    .line 20
    .line 21
    iget-object v3, v0, Lv0/f;->a:Landroid/text/TextPaint;

    .line 22
    .line 23
    if-lt v13, v14, :cond_0

    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    .line 26
    .line 27
    .line 28
    move-result v13

    .line 29
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 30
    .line 31
    .line 32
    move-result-object v13

    .line 33
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextScaleX()F

    .line 34
    .line 35
    .line 36
    move-result v14

    .line 37
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 38
    .line 39
    .line 40
    move-result-object v14

    .line 41
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSkewX()F

    .line 42
    .line 43
    .line 44
    move-result v16

    .line 45
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 46
    .line 47
    .line 48
    move-result-object v16

    .line 49
    invoke-static {v3}, Lua/t7;->a(Landroid/text/TextPaint;)F

    .line 50
    .line 51
    .line 52
    move-result v17

    .line 53
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 54
    .line 55
    .line 56
    move-result-object v17

    .line 57
    invoke-virtual {v3}, Landroid/graphics/Paint;->getFlags()I

    .line 58
    .line 59
    .line 60
    move-result v18

    .line 61
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v18

    .line 65
    invoke-static {v3}, Lq/t;->d(Landroid/text/TextPaint;)Landroid/os/LocaleList;

    .line 66
    .line 67
    .line 68
    move-result-object v19

    .line 69
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 70
    .line 71
    .line 72
    move-result-object v20

    .line 73
    invoke-static {v3}, Lua/t7;->w(Landroid/text/TextPaint;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    iget-object v4, v0, Lv0/f;->b:Landroid/text/TextDirectionHeuristic;

    .line 82
    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v15

    .line 91
    new-array v2, v2, [Ljava/lang/Object;

    .line 92
    .line 93
    aput-object v13, v2, v12

    .line 94
    .line 95
    aput-object v14, v2, v11

    .line 96
    .line 97
    aput-object v16, v2, v10

    .line 98
    .line 99
    aput-object v17, v2, v9

    .line 100
    .line 101
    aput-object v18, v2, v8

    .line 102
    .line 103
    aput-object v19, v2, v7

    .line 104
    .line 105
    aput-object v20, v2, v6

    .line 106
    .line 107
    aput-object v3, v2, v5

    .line 108
    .line 109
    const/16 v3, 0x8

    .line 110
    .line 111
    aput-object v4, v2, v3

    .line 112
    .line 113
    const/16 v3, 0x9

    .line 114
    .line 115
    aput-object v1, v2, v3

    .line 116
    .line 117
    const/16 v1, 0xa

    .line 118
    .line 119
    aput-object v15, v2, v1

    .line 120
    .line 121
    invoke-static {v2}, Lqf/c;->E([Ljava/lang/Object;)I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    return v1

    .line 126
    :cond_0
    const/16 v4, 0x15

    .line 127
    .line 128
    if-lt v13, v4, :cond_1

    .line 129
    .line 130
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextScaleX()F

    .line 139
    .line 140
    .line 141
    move-result v13

    .line 142
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 143
    .line 144
    .line 145
    move-result-object v13

    .line 146
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSkewX()F

    .line 147
    .line 148
    .line 149
    move-result v14

    .line 150
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 151
    .line 152
    .line 153
    move-result-object v14

    .line 154
    invoke-static {v3}, Lua/t7;->a(Landroid/text/TextPaint;)F

    .line 155
    .line 156
    .line 157
    move-result v16

    .line 158
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 159
    .line 160
    .line 161
    move-result-object v16

    .line 162
    invoke-virtual {v3}, Landroid/graphics/Paint;->getFlags()I

    .line 163
    .line 164
    .line 165
    move-result v17

    .line 166
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v17

    .line 170
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextLocale()Ljava/util/Locale;

    .line 171
    .line 172
    .line 173
    move-result-object v18

    .line 174
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 175
    .line 176
    .line 177
    move-result-object v19

    .line 178
    invoke-static {v3}, Lua/t7;->w(Landroid/text/TextPaint;)Z

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    iget-object v5, v0, Lv0/f;->b:Landroid/text/TextDirectionHeuristic;

    .line 187
    .line 188
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object v15

    .line 196
    new-array v2, v2, [Ljava/lang/Object;

    .line 197
    .line 198
    aput-object v4, v2, v12

    .line 199
    .line 200
    aput-object v13, v2, v11

    .line 201
    .line 202
    aput-object v14, v2, v10

    .line 203
    .line 204
    aput-object v16, v2, v9

    .line 205
    .line 206
    aput-object v17, v2, v8

    .line 207
    .line 208
    aput-object v18, v2, v7

    .line 209
    .line 210
    aput-object v19, v2, v6

    .line 211
    .line 212
    const/4 v4, 0x7

    .line 213
    aput-object v3, v2, v4

    .line 214
    .line 215
    const/16 v3, 0x8

    .line 216
    .line 217
    aput-object v5, v2, v3

    .line 218
    .line 219
    const/16 v3, 0x9

    .line 220
    .line 221
    aput-object v1, v2, v3

    .line 222
    .line 223
    const/16 v1, 0xa

    .line 224
    .line 225
    aput-object v15, v2, v1

    .line 226
    .line 227
    invoke-static {v2}, Lqf/c;->E([Ljava/lang/Object;)I

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    return v1

    .line 232
    :cond_1
    const/16 v2, 0x12

    .line 233
    .line 234
    if-lt v13, v2, :cond_2

    .line 235
    .line 236
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextScaleX()F

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSkewX()F

    .line 253
    .line 254
    .line 255
    move-result v5

    .line 256
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    invoke-virtual {v3}, Landroid/graphics/Paint;->getFlags()I

    .line 261
    .line 262
    .line 263
    move-result v13

    .line 264
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 265
    .line 266
    .line 267
    move-result-object v13

    .line 268
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextLocale()Ljava/util/Locale;

    .line 269
    .line 270
    .line 271
    move-result-object v14

    .line 272
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    iget-object v6, v0, Lv0/f;->b:Landroid/text/TextDirectionHeuristic;

    .line 277
    .line 278
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 283
    .line 284
    .line 285
    move-result-object v15

    .line 286
    const/16 v7, 0x9

    .line 287
    .line 288
    new-array v7, v7, [Ljava/lang/Object;

    .line 289
    .line 290
    aput-object v2, v7, v12

    .line 291
    .line 292
    aput-object v4, v7, v11

    .line 293
    .line 294
    aput-object v5, v7, v10

    .line 295
    .line 296
    aput-object v13, v7, v9

    .line 297
    .line 298
    aput-object v14, v7, v8

    .line 299
    .line 300
    const/4 v2, 0x5

    .line 301
    aput-object v3, v7, v2

    .line 302
    .line 303
    const/4 v2, 0x6

    .line 304
    aput-object v6, v7, v2

    .line 305
    .line 306
    const/4 v2, 0x7

    .line 307
    aput-object v1, v7, v2

    .line 308
    .line 309
    const/16 v1, 0x8

    .line 310
    .line 311
    aput-object v15, v7, v1

    .line 312
    .line 313
    invoke-static {v7}, Lqf/c;->E([Ljava/lang/Object;)I

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    return v1

    .line 318
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextScaleX()F

    .line 327
    .line 328
    .line 329
    move-result v4

    .line 330
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 331
    .line 332
    .line 333
    move-result-object v4

    .line 334
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSkewX()F

    .line 335
    .line 336
    .line 337
    move-result v5

    .line 338
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 339
    .line 340
    .line 341
    move-result-object v5

    .line 342
    invoke-virtual {v3}, Landroid/graphics/Paint;->getFlags()I

    .line 343
    .line 344
    .line 345
    move-result v6

    .line 346
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 347
    .line 348
    .line 349
    move-result-object v6

    .line 350
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextLocale()Ljava/util/Locale;

    .line 351
    .line 352
    .line 353
    move-result-object v7

    .line 354
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 355
    .line 356
    .line 357
    move-result-object v3

    .line 358
    iget-object v13, v0, Lv0/f;->b:Landroid/text/TextDirectionHeuristic;

    .line 359
    .line 360
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 365
    .line 366
    .line 367
    move-result-object v14

    .line 368
    const/16 v15, 0x9

    .line 369
    .line 370
    new-array v15, v15, [Ljava/lang/Object;

    .line 371
    .line 372
    aput-object v2, v15, v12

    .line 373
    .line 374
    aput-object v4, v15, v11

    .line 375
    .line 376
    aput-object v5, v15, v10

    .line 377
    .line 378
    aput-object v6, v15, v9

    .line 379
    .line 380
    aput-object v7, v15, v8

    .line 381
    .line 382
    const/4 v2, 0x5

    .line 383
    aput-object v3, v15, v2

    .line 384
    .line 385
    const/4 v2, 0x6

    .line 386
    aput-object v13, v15, v2

    .line 387
    .line 388
    const/4 v2, 0x7

    .line 389
    aput-object v1, v15, v2

    .line 390
    .line 391
    const/16 v1, 0x8

    .line 392
    .line 393
    aput-object v14, v15, v1

    .line 394
    .line 395
    invoke-static {v15}, Lqf/c;->E([Ljava/lang/Object;)I

    .line 396
    .line 397
    .line 398
    move-result v1

    .line 399
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "textSize="

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lv0/f;->a:Landroid/text/TextPaint;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v3, ", textScaleX="

    .line 34
    .line 35
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextScaleX()F

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v3, ", textSkewX="

    .line 55
    .line 56
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSkewX()F

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 74
    .line 75
    const/16 v3, 0x15

    .line 76
    .line 77
    if-lt v1, v3, :cond_0

    .line 78
    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v4, ", letterSpacing="

    .line 82
    .line 83
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v2}, Lua/t7;->a(Landroid/text/TextPaint;)F

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v4, ", elegantTextHeight="

    .line 103
    .line 104
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-static {v2}, Lua/t7;->w(Landroid/text/TextPaint;)Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    :cond_0
    const/16 v3, 0x18

    .line 122
    .line 123
    const-string v4, ", textLocale="

    .line 124
    .line 125
    if-lt v1, v3, :cond_1

    .line 126
    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-static {v2}, Lq/t;->d(Landroid/text/TextPaint;)Landroid/os/LocaleList;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextLocale()Ljava/util/Locale;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string v4, ", typeface="

    .line 169
    .line 170
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const/16 v3, 0x1a

    .line 188
    .line 189
    if-lt v1, v3, :cond_2

    .line 190
    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    const-string v3, ", variationSettings="

    .line 194
    .line 195
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-static {v2}, Ln5/a;->k(Landroid/text/TextPaint;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    const-string v2, ", textDir="

    .line 215
    .line 216
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    iget-object v2, p0, Lv0/f;->b:Landroid/text/TextDirectionHeuristic;

    .line 220
    .line 221
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    const-string v2, ", breakStrategy="

    .line 234
    .line 235
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    iget v2, p0, Lv0/f;->c:I

    .line 239
    .line 240
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    const-string v2, ", hyphenationFrequency="

    .line 253
    .line 254
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    iget v2, p0, Lv0/f;->d:I

    .line 258
    .line 259
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    const-string v1, "}"

    .line 270
    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    return-object v0
.end method
