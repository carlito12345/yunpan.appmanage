.class public final Lv3/q0;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lv3/k0;


# instance fields
.field public final a:Lv3/c;

.field public final b:Lv3/o0;

.field public c:Ljava/util/List;

.field public d:Lv3/d;

.field public e:F

.field public f:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    .line 4
    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lv3/q0;->c:Ljava/util/List;

    .line 10
    .line 11
    sget-object v0, Lv3/d;->g:Lv3/d;

    .line 12
    .line 13
    iput-object v0, p0, Lv3/q0;->d:Lv3/d;

    .line 14
    .line 15
    const v0, 0x3d5a511a    # 0.0533f

    .line 16
    .line 17
    .line 18
    iput v0, p0, Lv3/q0;->e:F

    .line 19
    .line 20
    const v0, 0x3da3d70a    # 0.08f

    .line 21
    .line 22
    .line 23
    iput v0, p0, Lv3/q0;->f:F

    .line 24
    .line 25
    new-instance v0, Lv3/c;

    .line 26
    .line 27
    invoke-direct {v0, p1}, Lv3/c;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lv3/q0;->a:Lv3/c;

    .line 31
    .line 32
    new-instance v1, Lv3/o0;

    .line 33
    .line 34
    invoke-direct {v1, p1}, Lv3/o0;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lv3/q0;->b:Lv3/o0;

    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2, p1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lv3/d;FF)V
    .locals 5

    .line 1
    iput-object p2, p0, Lv3/q0;->d:Lv3/d;

    .line 2
    .line 3
    iput p3, p0, Lv3/q0;->e:F

    .line 4
    .line 5
    iput p4, p0, Lv3/q0;->f:F

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-ge v2, v3, :cond_1

    .line 23
    .line 24
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Lt1/b;

    .line 29
    .line 30
    iget-object v4, v3, Lt1/b;->d:Landroid/graphics/Bitmap;

    .line 31
    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object p1, p0, Lv3/q0;->c:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_3

    .line 57
    .line 58
    :cond_2
    iput-object v1, p0, Lv3/q0;->c:Ljava/util/List;

    .line 59
    .line 60
    invoke-virtual {p0}, Lv3/q0;->c()V

    .line 61
    .line 62
    .line 63
    :cond_3
    iget-object p1, p0, Lv3/q0;->a:Lv3/c;

    .line 64
    .line 65
    invoke-virtual {p1, v0, p2, p3, p4}, Lv3/c;->a(Ljava/util/List;Lv3/d;FF)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final b(FI)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    sub-int/2addr v1, v2

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    sub-int/2addr v1, v2

    .line 19
    invoke-static {p2, p1, v0, v1}, Lcom/bumptech/glide/d;->a0(IFII)F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const p2, -0x800001

    .line 24
    .line 25
    .line 26
    cmpl-float p2, p1, p2

    .line 27
    .line 28
    if-nez p2, :cond_0

    .line 29
    .line 30
    const-string p1, "unset"

    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 46
    .line 47
    div-float/2addr p1, p2

    .line 48
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const/4 p2, 0x1

    .line 53
    new-array p2, p2, [Ljava/lang/Object;

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    aput-object p1, p2, v0

    .line 57
    .line 58
    sget-object p1, Lu1/f0;->a:Ljava/lang/String;

    .line 59
    .line 60
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 61
    .line 62
    const-string v0, "%.2fpx"

    .line 63
    .line 64
    invoke-static {p1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1
.end method

.method public final c()V
    .locals 46

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v4, 0x2

    .line 6
    const/4 v5, 0x1

    .line 7
    new-instance v6, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v7, v0, Lv3/q0;->d:Lv3/d;

    .line 13
    .line 14
    iget v7, v7, Lv3/d;->a:I

    .line 15
    .line 16
    invoke-static {v7}, Lcom/bumptech/glide/c;->k0(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v7

    .line 20
    iget v8, v0, Lv3/q0;->e:F

    .line 21
    .line 22
    const/4 v9, 0x0

    .line 23
    invoke-virtual {v0, v8, v9}, Lv3/q0;->b(FI)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    const v10, 0x3f99999a    # 1.2f

    .line 28
    .line 29
    .line 30
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 31
    .line 32
    .line 33
    move-result-object v11

    .line 34
    iget-object v12, v0, Lv3/q0;->d:Lv3/d;

    .line 35
    .line 36
    iget v13, v12, Lv3/d;->d:I

    .line 37
    .line 38
    const-string v14, "unset"

    .line 39
    .line 40
    iget v12, v12, Lv3/d;->e:I

    .line 41
    .line 42
    if-eq v13, v5, :cond_3

    .line 43
    .line 44
    if-eq v13, v4, :cond_2

    .line 45
    .line 46
    if-eq v13, v2, :cond_1

    .line 47
    .line 48
    if-eq v13, v1, :cond_0

    .line 49
    .line 50
    move-object v12, v14

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-static {v12}, Lcom/bumptech/glide/c;->k0(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v12

    .line 56
    sget-object v13, Lu1/f0;->a:Ljava/lang/String;

    .line 57
    .line 58
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 59
    .line 60
    const-string v13, "-0.05em -0.05em 0.15em "

    .line 61
    .line 62
    invoke-virtual {v13, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v12

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-static {v12}, Lcom/bumptech/glide/c;->k0(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v12

    .line 71
    sget-object v13, Lu1/f0;->a:Ljava/lang/String;

    .line 72
    .line 73
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 74
    .line 75
    const-string v13, "0.06em 0.08em 0.15em "

    .line 76
    .line 77
    invoke-virtual {v13, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v12

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    invoke-static {v12}, Lcom/bumptech/glide/c;->k0(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v12

    .line 86
    sget-object v13, Lu1/f0;->a:Ljava/lang/String;

    .line 87
    .line 88
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 89
    .line 90
    const-string v13, "0.1em 0.12em 0.15em "

    .line 91
    .line 92
    invoke-virtual {v13, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v12

    .line 96
    goto :goto_0

    .line 97
    :cond_3
    invoke-static {v12}, Lcom/bumptech/glide/c;->k0(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v12

    .line 101
    new-array v13, v5, [Ljava/lang/Object;

    .line 102
    .line 103
    aput-object v12, v13, v9

    .line 104
    .line 105
    sget-object v12, Lu1/f0;->a:Ljava/lang/String;

    .line 106
    .line 107
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 108
    .line 109
    const-string v15, "1px 1px 0 %1$s, 1px -1px 0 %1$s, -1px 1px 0 %1$s, -1px -1px 0 %1$s"

    .line 110
    .line 111
    invoke-static {v12, v15, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v12

    .line 115
    :goto_0
    new-array v13, v1, [Ljava/lang/Object;

    .line 116
    .line 117
    aput-object v7, v13, v9

    .line 118
    .line 119
    aput-object v8, v13, v5

    .line 120
    .line 121
    aput-object v11, v13, v4

    .line 122
    .line 123
    aput-object v12, v13, v2

    .line 124
    .line 125
    sget-object v7, Lu1/f0;->a:Ljava/lang/String;

    .line 126
    .line 127
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 128
    .line 129
    const-string v8, "<body><div style=\'-webkit-user-select:none;position:fixed;top:0;bottom:0;left:0;right:0;color:%s;font-size:%s;line-height:%.2f;text-shadow:%s;\'>"

    .line 130
    .line 131
    invoke-static {v7, v8, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    new-instance v7, Ljava/util/HashMap;

    .line 139
    .line 140
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 141
    .line 142
    .line 143
    iget-object v8, v0, Lv3/q0;->d:Lv3/d;

    .line 144
    .line 145
    iget v8, v8, Lv3/d;->b:I

    .line 146
    .line 147
    invoke-static {v8}, Lcom/bumptech/glide/c;->k0(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    new-instance v11, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string v12, "background-color:"

    .line 154
    .line 155
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v8, ";"

    .line 162
    .line 163
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v11

    .line 170
    const-string v13, ".default_bg,.default_bg *"

    .line 171
    .line 172
    invoke-virtual {v7, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    const/4 v11, 0x0

    .line 176
    :goto_1
    iget-object v13, v0, Lv3/q0;->c:Ljava/util/List;

    .line 177
    .line 178
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 179
    .line 180
    .line 181
    move-result v13

    .line 182
    if-ge v11, v13, :cond_54

    .line 183
    .line 184
    iget-object v13, v0, Lv3/q0;->c:Ljava/util/List;

    .line 185
    .line 186
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v13

    .line 190
    check-cast v13, Lt1/b;

    .line 191
    .line 192
    iget v15, v13, Lt1/b;->h:F

    .line 193
    .line 194
    const v16, -0x800001

    .line 195
    .line 196
    .line 197
    const/high16 v17, 0x42c80000    # 100.0f

    .line 198
    .line 199
    cmpl-float v18, v15, v16

    .line 200
    .line 201
    if-eqz v18, :cond_4

    .line 202
    .line 203
    mul-float v15, v15, v17

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_4
    const/high16 v15, 0x42480000    # 50.0f

    .line 207
    .line 208
    :goto_2
    const/16 v18, -0x32

    .line 209
    .line 210
    const/16 v19, -0x64

    .line 211
    .line 212
    iget v1, v13, Lt1/b;->i:I

    .line 213
    .line 214
    if-eq v1, v5, :cond_6

    .line 215
    .line 216
    if-eq v1, v4, :cond_5

    .line 217
    .line 218
    const/4 v1, 0x0

    .line 219
    goto :goto_3

    .line 220
    :cond_5
    const/16 v1, -0x64

    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_6
    const/16 v1, -0x32

    .line 224
    .line 225
    :goto_3
    const/high16 v20, 0x3f800000    # 1.0f

    .line 226
    .line 227
    const/16 v21, 0x0

    .line 228
    .line 229
    const-string v2, "%.2f%%"

    .line 230
    .line 231
    iget v3, v13, Lt1/b;->p:I

    .line 232
    .line 233
    iget v10, v13, Lt1/b;->e:F

    .line 234
    .line 235
    cmpl-float v22, v10, v16

    .line 236
    .line 237
    if-eqz v22, :cond_e

    .line 238
    .line 239
    iget v4, v13, Lt1/b;->f:I

    .line 240
    .line 241
    if-eq v4, v5, :cond_c

    .line 242
    .line 243
    mul-float v10, v10, v17

    .line 244
    .line 245
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    new-array v10, v5, [Ljava/lang/Object;

    .line 250
    .line 251
    aput-object v4, v10, v9

    .line 252
    .line 253
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 254
    .line 255
    invoke-static {v4, v2, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    iget v10, v13, Lt1/b;->g:I

    .line 260
    .line 261
    if-ne v3, v5, :cond_9

    .line 262
    .line 263
    if-eq v10, v5, :cond_8

    .line 264
    .line 265
    const/4 v9, 0x2

    .line 266
    if-eq v10, v9, :cond_7

    .line 267
    .line 268
    const/4 v10, 0x0

    .line 269
    goto :goto_4

    .line 270
    :cond_7
    const/16 v10, -0x64

    .line 271
    .line 272
    goto :goto_4

    .line 273
    :cond_8
    const/4 v9, 0x2

    .line 274
    const/16 v10, -0x32

    .line 275
    .line 276
    :goto_4
    neg-int v10, v10

    .line 277
    move/from16 v19, v10

    .line 278
    .line 279
    goto :goto_6

    .line 280
    :cond_9
    const/4 v9, 0x2

    .line 281
    if-eq v10, v5, :cond_b

    .line 282
    .line 283
    if-eq v10, v9, :cond_a

    .line 284
    .line 285
    const/16 v18, 0x0

    .line 286
    .line 287
    goto :goto_5

    .line 288
    :cond_a
    const/16 v18, -0x64

    .line 289
    .line 290
    :cond_b
    :goto_5
    move/from16 v19, v18

    .line 291
    .line 292
    :goto_6
    const/4 v9, 0x0

    .line 293
    goto :goto_8

    .line 294
    :cond_c
    const-string v4, "%.2fem"

    .line 295
    .line 296
    cmpl-float v9, v10, v21

    .line 297
    .line 298
    if-ltz v9, :cond_d

    .line 299
    .line 300
    const v9, 0x3f99999a    # 1.2f

    .line 301
    .line 302
    .line 303
    mul-float v10, v10, v9

    .line 304
    .line 305
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 306
    .line 307
    .line 308
    move-result-object v10

    .line 309
    new-array v9, v5, [Ljava/lang/Object;

    .line 310
    .line 311
    const/16 v23, 0x0

    .line 312
    .line 313
    aput-object v10, v9, v23

    .line 314
    .line 315
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 316
    .line 317
    invoke-static {v10, v4, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    const/4 v9, 0x0

    .line 322
    :goto_7
    const/16 v19, 0x0

    .line 323
    .line 324
    goto :goto_8

    .line 325
    :cond_d
    const/16 v23, 0x0

    .line 326
    .line 327
    neg-float v9, v10

    .line 328
    sub-float v9, v9, v20

    .line 329
    .line 330
    const v10, 0x3f99999a    # 1.2f

    .line 331
    .line 332
    .line 333
    mul-float v9, v9, v10

    .line 334
    .line 335
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 336
    .line 337
    .line 338
    move-result-object v9

    .line 339
    new-array v10, v5, [Ljava/lang/Object;

    .line 340
    .line 341
    aput-object v9, v10, v23

    .line 342
    .line 343
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 344
    .line 345
    invoke-static {v9, v4, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v4

    .line 349
    const/4 v9, 0x1

    .line 350
    goto :goto_7

    .line 351
    :cond_e
    const/16 v23, 0x0

    .line 352
    .line 353
    iget v4, v0, Lv3/q0;->f:F

    .line 354
    .line 355
    sub-float v20, v20, v4

    .line 356
    .line 357
    mul-float v20, v20, v17

    .line 358
    .line 359
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    new-array v9, v5, [Ljava/lang/Object;

    .line 364
    .line 365
    aput-object v4, v9, v23

    .line 366
    .line 367
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 368
    .line 369
    invoke-static {v4, v2, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v4

    .line 373
    goto :goto_6

    .line 374
    :goto_8
    iget v10, v13, Lt1/b;->j:F

    .line 375
    .line 376
    cmpl-float v16, v10, v16

    .line 377
    .line 378
    if-eqz v16, :cond_f

    .line 379
    .line 380
    mul-float v10, v10, v17

    .line 381
    .line 382
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 383
    .line 384
    .line 385
    move-result-object v10

    .line 386
    move/from16 v16, v1

    .line 387
    .line 388
    new-array v1, v5, [Ljava/lang/Object;

    .line 389
    .line 390
    const/16 v18, 0x0

    .line 391
    .line 392
    aput-object v10, v1, v18

    .line 393
    .line 394
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 395
    .line 396
    invoke-static {v10, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    goto :goto_9

    .line 401
    :cond_f
    move/from16 v16, v1

    .line 402
    .line 403
    const-string v1, "fit-content"

    .line 404
    .line 405
    :goto_9
    const-string v2, "start"

    .line 406
    .line 407
    const-string v10, "end"

    .line 408
    .line 409
    const-string v18, "center"

    .line 410
    .line 411
    iget-object v5, v13, Lt1/b;->b:Landroid/text/Layout$Alignment;

    .line 412
    .line 413
    if-nez v5, :cond_10

    .line 414
    .line 415
    move-object/from16 v24, v2

    .line 416
    .line 417
    move-object/from16 v25, v10

    .line 418
    .line 419
    move-object/from16 v5, v18

    .line 420
    .line 421
    const/4 v2, 0x2

    .line 422
    :goto_a
    const/4 v10, 0x1

    .line 423
    goto :goto_b

    .line 424
    :cond_10
    sget-object v24, Lv3/p0;->a:[I

    .line 425
    .line 426
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 427
    .line 428
    .line 429
    move-result v5

    .line 430
    aget v5, v24, v5

    .line 431
    .line 432
    move-object/from16 v24, v2

    .line 433
    .line 434
    const/4 v2, 0x1

    .line 435
    if-eq v5, v2, :cond_12

    .line 436
    .line 437
    const/4 v2, 0x2

    .line 438
    if-eq v5, v2, :cond_11

    .line 439
    .line 440
    move-object/from16 v25, v10

    .line 441
    .line 442
    move-object/from16 v5, v18

    .line 443
    .line 444
    goto :goto_a

    .line 445
    :cond_11
    move-object v5, v10

    .line 446
    move-object/from16 v25, v5

    .line 447
    .line 448
    goto :goto_a

    .line 449
    :cond_12
    const/4 v2, 0x2

    .line 450
    move-object/from16 v25, v10

    .line 451
    .line 452
    move-object/from16 v5, v24

    .line 453
    .line 454
    goto :goto_a

    .line 455
    :goto_b
    if-eq v3, v10, :cond_14

    .line 456
    .line 457
    if-eq v3, v2, :cond_13

    .line 458
    .line 459
    const-string v2, "horizontal-tb"

    .line 460
    .line 461
    goto :goto_c

    .line 462
    :cond_13
    const-string v2, "vertical-lr"

    .line 463
    .line 464
    goto :goto_c

    .line 465
    :cond_14
    const-string v2, "vertical-rl"

    .line 466
    .line 467
    :goto_c
    iget v10, v13, Lt1/b;->n:I

    .line 468
    .line 469
    move-object/from16 v26, v6

    .line 470
    .line 471
    iget v6, v13, Lt1/b;->o:F

    .line 472
    .line 473
    invoke-virtual {v0, v6, v10}, Lv3/q0;->b(FI)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v6

    .line 477
    iget-boolean v10, v13, Lt1/b;->l:Z

    .line 478
    .line 479
    if-eqz v10, :cond_15

    .line 480
    .line 481
    iget v10, v13, Lt1/b;->m:I

    .line 482
    .line 483
    goto :goto_d

    .line 484
    :cond_15
    iget-object v10, v0, Lv3/q0;->d:Lv3/d;

    .line 485
    .line 486
    iget v10, v10, Lv3/d;->c:I

    .line 487
    .line 488
    :goto_d
    invoke-static {v10}, Lcom/bumptech/glide/c;->k0(I)Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v10

    .line 492
    const-string v27, "right"

    .line 493
    .line 494
    const-string v28, "top"

    .line 495
    .line 496
    const-string v29, "left"

    .line 497
    .line 498
    const/4 v0, 0x1

    .line 499
    if-eq v3, v0, :cond_1a

    .line 500
    .line 501
    const/4 v0, 0x2

    .line 502
    if-eq v3, v0, :cond_18

    .line 503
    .line 504
    if-eqz v9, :cond_16

    .line 505
    .line 506
    const-string v28, "bottom"

    .line 507
    .line 508
    :cond_16
    move-object/from16 v27, v28

    .line 509
    .line 510
    move-object/from16 v28, v29

    .line 511
    .line 512
    :cond_17
    :goto_e
    const/4 v0, 0x2

    .line 513
    goto :goto_10

    .line 514
    :cond_18
    if-eqz v9, :cond_19

    .line 515
    .line 516
    goto :goto_e

    .line 517
    :cond_19
    :goto_f
    move-object/from16 v27, v29

    .line 518
    .line 519
    goto :goto_e

    .line 520
    :cond_1a
    if-eqz v9, :cond_17

    .line 521
    .line 522
    goto :goto_f

    .line 523
    :goto_10
    if-eq v3, v0, :cond_1c

    .line 524
    .line 525
    const/4 v0, 0x1

    .line 526
    if-ne v3, v0, :cond_1b

    .line 527
    .line 528
    goto :goto_11

    .line 529
    :cond_1b
    const-string v0, "width"

    .line 530
    .line 531
    goto :goto_12

    .line 532
    :cond_1c
    :goto_11
    const-string v0, "height"

    .line 533
    .line 534
    move/from16 v45, v19

    .line 535
    .line 536
    move/from16 v19, v16

    .line 537
    .line 538
    move/from16 v16, v45

    .line 539
    .line 540
    :goto_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 541
    .line 542
    .line 543
    move-result-object v9

    .line 544
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 545
    .line 546
    .line 547
    move-result-object v9

    .line 548
    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 549
    .line 550
    .line 551
    move-result-object v9

    .line 552
    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    .line 553
    .line 554
    sget-object v29, Lv3/i0;->a:Ljava/util/regex/Pattern;

    .line 555
    .line 556
    move-object/from16 v29, v10

    .line 557
    .line 558
    const-string v10, "</span>"

    .line 559
    .line 560
    move-object/from16 v30, v10

    .line 561
    .line 562
    const-string v10, ";\'>"

    .line 563
    .line 564
    move-object/from16 v31, v6

    .line 565
    .line 566
    const-string v6, ""

    .line 567
    .line 568
    move-object/from16 v32, v2

    .line 569
    .line 570
    iget-object v2, v13, Lt1/b;->a:Ljava/lang/CharSequence;

    .line 571
    .line 572
    if-nez v2, :cond_1d

    .line 573
    .line 574
    new-instance v2, Lbd/c;

    .line 575
    .line 576
    const/4 v9, 0x6

    .line 577
    invoke-direct {v2, v6, v9}, Lbd/c;-><init>(Ljava/lang/String;I)V

    .line 578
    .line 579
    .line 580
    move-object/from16 v36, v0

    .line 581
    .line 582
    move-object/from16 v35, v1

    .line 583
    .line 584
    move/from16 v39, v3

    .line 585
    .line 586
    move-object/from16 v38, v4

    .line 587
    .line 588
    move-object/from16 v34, v5

    .line 589
    .line 590
    move-object/from16 v33, v6

    .line 591
    .line 592
    :goto_13
    move-object/from16 v42, v8

    .line 593
    .line 594
    move-object/from16 v44, v12

    .line 595
    .line 596
    goto/16 :goto_24

    .line 597
    .line 598
    :cond_1d
    move-object/from16 v33, v6

    .line 599
    .line 600
    instance-of v6, v2, Landroid/text/Spanned;

    .line 601
    .line 602
    if-nez v6, :cond_1e

    .line 603
    .line 604
    new-instance v6, Lbd/c;

    .line 605
    .line 606
    invoke-static {v2}, Lv3/i0;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v2

    .line 610
    const/4 v9, 0x6

    .line 611
    invoke-direct {v6, v2, v9}, Lbd/c;-><init>(Ljava/lang/String;I)V

    .line 612
    .line 613
    .line 614
    move-object/from16 v36, v0

    .line 615
    .line 616
    move-object/from16 v35, v1

    .line 617
    .line 618
    move/from16 v39, v3

    .line 619
    .line 620
    move-object/from16 v38, v4

    .line 621
    .line 622
    move-object/from16 v34, v5

    .line 623
    .line 624
    move-object v2, v6

    .line 625
    goto :goto_13

    .line 626
    :cond_1e
    check-cast v2, Landroid/text/Spanned;

    .line 627
    .line 628
    new-instance v6, Ljava/util/HashSet;

    .line 629
    .line 630
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 631
    .line 632
    .line 633
    move-object/from16 v34, v5

    .line 634
    .line 635
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 636
    .line 637
    .line 638
    move-result v5

    .line 639
    move-object/from16 v35, v1

    .line 640
    .line 641
    const-class v1, Landroid/text/style/BackgroundColorSpan;

    .line 642
    .line 643
    move-object/from16 v36, v0

    .line 644
    .line 645
    const/4 v0, 0x0

    .line 646
    invoke-interface {v2, v0, v5, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move-result-object v1

    .line 650
    check-cast v1, [Landroid/text/style/BackgroundColorSpan;

    .line 651
    .line 652
    array-length v0, v1

    .line 653
    const/4 v5, 0x0

    .line 654
    :goto_14
    if-ge v5, v0, :cond_1f

    .line 655
    .line 656
    aget-object v37, v1, v5

    .line 657
    .line 658
    invoke-virtual/range {v37 .. v37}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    .line 659
    .line 660
    .line 661
    move-result v37

    .line 662
    move/from16 v38, v0

    .line 663
    .line 664
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 665
    .line 666
    .line 667
    move-result-object v0

    .line 668
    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 669
    .line 670
    .line 671
    const/4 v0, 0x1

    .line 672
    add-int/2addr v5, v0

    .line 673
    move/from16 v0, v38

    .line 674
    .line 675
    goto :goto_14

    .line 676
    :cond_1f
    new-instance v0, Ljava/util/HashMap;

    .line 677
    .line 678
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 679
    .line 680
    .line 681
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 682
    .line 683
    .line 684
    move-result-object v1

    .line 685
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 686
    .line 687
    .line 688
    move-result v5

    .line 689
    if-eqz v5, :cond_20

    .line 690
    .line 691
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 692
    .line 693
    .line 694
    move-result-object v5

    .line 695
    check-cast v5, Ljava/lang/Integer;

    .line 696
    .line 697
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 698
    .line 699
    .line 700
    move-result v5

    .line 701
    const-string v6, "bg_"

    .line 702
    .line 703
    invoke-static {v5, v6}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object v6

    .line 707
    move-object/from16 v37, v1

    .line 708
    .line 709
    const-string v1, "."

    .line 710
    .line 711
    move-object/from16 v38, v4

    .line 712
    .line 713
    const-string v4, ",."

    .line 714
    .line 715
    move/from16 v39, v3

    .line 716
    .line 717
    const-string v3, " *"

    .line 718
    .line 719
    invoke-static {v1, v6, v4, v6, v3}, Lta/q;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v1

    .line 723
    invoke-static {v5}, Lcom/bumptech/glide/c;->k0(I)Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object v3

    .line 727
    sget-object v4, Lu1/f0;->a:Ljava/lang/String;

    .line 728
    .line 729
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 730
    .line 731
    new-instance v4, Ljava/lang/StringBuilder;

    .line 732
    .line 733
    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 734
    .line 735
    .line 736
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    .line 738
    .line 739
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    .line 741
    .line 742
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 743
    .line 744
    .line 745
    move-result-object v3

    .line 746
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    .line 748
    .line 749
    move-object/from16 v1, v37

    .line 750
    .line 751
    move-object/from16 v4, v38

    .line 752
    .line 753
    move/from16 v3, v39

    .line 754
    .line 755
    goto :goto_15

    .line 756
    :cond_20
    move/from16 v39, v3

    .line 757
    .line 758
    move-object/from16 v38, v4

    .line 759
    .line 760
    new-instance v0, Landroid/util/SparseArray;

    .line 761
    .line 762
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 763
    .line 764
    .line 765
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 766
    .line 767
    .line 768
    move-result v1

    .line 769
    const-class v3, Ljava/lang/Object;

    .line 770
    .line 771
    const/4 v4, 0x0

    .line 772
    invoke-interface {v2, v4, v1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 773
    .line 774
    .line 775
    move-result-object v1

    .line 776
    array-length v3, v1

    .line 777
    const/4 v4, 0x0

    .line 778
    :goto_16
    if-ge v4, v3, :cond_47

    .line 779
    .line 780
    aget-object v5, v1, v4

    .line 781
    .line 782
    instance-of v6, v5, Landroid/text/style/StrikethroughSpan;

    .line 783
    .line 784
    const/16 v37, 0x0

    .line 785
    .line 786
    if-eqz v6, :cond_21

    .line 787
    .line 788
    const-string v40, "<span style=\'text-decoration:line-through;\'>"

    .line 789
    .line 790
    move/from16 v41, v3

    .line 791
    .line 792
    move-object/from16 v42, v8

    .line 793
    .line 794
    move/from16 v43, v9

    .line 795
    .line 796
    move-object/from16 v44, v12

    .line 797
    .line 798
    move-object/from16 v45, v40

    .line 799
    .line 800
    move-object/from16 v40, v1

    .line 801
    .line 802
    move-object/from16 v1, v45

    .line 803
    .line 804
    goto/16 :goto_1d

    .line 805
    .line 806
    :cond_21
    move-object/from16 v40, v1

    .line 807
    .line 808
    instance-of v1, v5, Landroid/text/style/ForegroundColorSpan;

    .line 809
    .line 810
    if-eqz v1, :cond_22

    .line 811
    .line 812
    move-object v1, v5

    .line 813
    check-cast v1, Landroid/text/style/ForegroundColorSpan;

    .line 814
    .line 815
    invoke-virtual {v1}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    .line 816
    .line 817
    .line 818
    move-result v1

    .line 819
    invoke-static {v1}, Lcom/bumptech/glide/c;->k0(I)Ljava/lang/String;

    .line 820
    .line 821
    .line 822
    move-result-object v1

    .line 823
    sget-object v41, Lu1/f0;->a:Ljava/lang/String;

    .line 824
    .line 825
    sget-object v41, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 826
    .line 827
    move/from16 v41, v3

    .line 828
    .line 829
    const-string v3, "<span style=\'color:"

    .line 830
    .line 831
    invoke-static {v3, v1, v10}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 832
    .line 833
    .line 834
    move-result-object v1

    .line 835
    move-object/from16 v42, v8

    .line 836
    .line 837
    :goto_17
    move/from16 v43, v9

    .line 838
    .line 839
    move-object/from16 v44, v12

    .line 840
    .line 841
    goto/16 :goto_1d

    .line 842
    .line 843
    :cond_22
    move/from16 v41, v3

    .line 844
    .line 845
    instance-of v1, v5, Landroid/text/style/BackgroundColorSpan;

    .line 846
    .line 847
    if-eqz v1, :cond_23

    .line 848
    .line 849
    move-object v1, v5

    .line 850
    check-cast v1, Landroid/text/style/BackgroundColorSpan;

    .line 851
    .line 852
    invoke-virtual {v1}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    .line 853
    .line 854
    .line 855
    move-result v1

    .line 856
    sget-object v3, Lu1/f0;->a:Ljava/lang/String;

    .line 857
    .line 858
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 859
    .line 860
    const-string v3, "<span class=\'bg_"

    .line 861
    .line 862
    move-object/from16 v42, v8

    .line 863
    .line 864
    const-string v8, "\'>"

    .line 865
    .line 866
    invoke-static {v3, v1, v8}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 867
    .line 868
    .line 869
    move-result-object v1

    .line 870
    goto :goto_17

    .line 871
    :cond_23
    move-object/from16 v42, v8

    .line 872
    .line 873
    instance-of v1, v5, Lt1/e;

    .line 874
    .line 875
    if-eqz v1, :cond_24

    .line 876
    .line 877
    const-string v1, "<span style=\'text-combine-upright:all;\'>"

    .line 878
    .line 879
    goto :goto_17

    .line 880
    :cond_24
    instance-of v1, v5, Landroid/text/style/AbsoluteSizeSpan;

    .line 881
    .line 882
    if-eqz v1, :cond_26

    .line 883
    .line 884
    move-object v1, v5

    .line 885
    check-cast v1, Landroid/text/style/AbsoluteSizeSpan;

    .line 886
    .line 887
    invoke-virtual {v1}, Landroid/text/style/AbsoluteSizeSpan;->getDip()Z

    .line 888
    .line 889
    .line 890
    move-result v3

    .line 891
    if-eqz v3, :cond_25

    .line 892
    .line 893
    invoke-virtual {v1}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    .line 894
    .line 895
    .line 896
    move-result v1

    .line 897
    int-to-float v1, v1

    .line 898
    goto :goto_18

    .line 899
    :cond_25
    invoke-virtual {v1}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    .line 900
    .line 901
    .line 902
    move-result v1

    .line 903
    int-to-float v1, v1

    .line 904
    div-float/2addr v1, v9

    .line 905
    :goto_18
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 906
    .line 907
    .line 908
    move-result-object v1

    .line 909
    const/4 v3, 0x1

    .line 910
    new-array v8, v3, [Ljava/lang/Object;

    .line 911
    .line 912
    const/4 v3, 0x0

    .line 913
    aput-object v1, v8, v3

    .line 914
    .line 915
    sget-object v1, Lu1/f0;->a:Ljava/lang/String;

    .line 916
    .line 917
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 918
    .line 919
    const-string v3, "<span style=\'font-size:%.2fpx;\'>"

    .line 920
    .line 921
    invoke-static {v1, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 922
    .line 923
    .line 924
    move-result-object v1

    .line 925
    goto :goto_17

    .line 926
    :cond_26
    instance-of v1, v5, Landroid/text/style/RelativeSizeSpan;

    .line 927
    .line 928
    if-eqz v1, :cond_27

    .line 929
    .line 930
    move-object v1, v5

    .line 931
    check-cast v1, Landroid/text/style/RelativeSizeSpan;

    .line 932
    .line 933
    invoke-virtual {v1}, Landroid/text/style/RelativeSizeSpan;->getSizeChange()F

    .line 934
    .line 935
    .line 936
    move-result v1

    .line 937
    mul-float v1, v1, v17

    .line 938
    .line 939
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 940
    .line 941
    .line 942
    move-result-object v1

    .line 943
    const/4 v3, 0x1

    .line 944
    new-array v8, v3, [Ljava/lang/Object;

    .line 945
    .line 946
    const/4 v3, 0x0

    .line 947
    aput-object v1, v8, v3

    .line 948
    .line 949
    sget-object v1, Lu1/f0;->a:Ljava/lang/String;

    .line 950
    .line 951
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 952
    .line 953
    const-string v3, "<span style=\'font-size:%.2f%%;\'>"

    .line 954
    .line 955
    invoke-static {v1, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 956
    .line 957
    .line 958
    move-result-object v1

    .line 959
    goto :goto_17

    .line 960
    :cond_27
    instance-of v1, v5, Landroid/text/style/TypefaceSpan;

    .line 961
    .line 962
    if-eqz v1, :cond_29

    .line 963
    .line 964
    move-object v1, v5

    .line 965
    check-cast v1, Landroid/text/style/TypefaceSpan;

    .line 966
    .line 967
    invoke-virtual {v1}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    .line 968
    .line 969
    .line 970
    move-result-object v1

    .line 971
    if-eqz v1, :cond_28

    .line 972
    .line 973
    sget-object v3, Lu1/f0;->a:Ljava/lang/String;

    .line 974
    .line 975
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 976
    .line 977
    const-string v3, "<span style=\'font-family:\""

    .line 978
    .line 979
    const-string v8, "\";\'>"

    .line 980
    .line 981
    invoke-static {v3, v1, v8}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 982
    .line 983
    .line 984
    move-result-object v1

    .line 985
    goto/16 :goto_17

    .line 986
    .line 987
    :cond_28
    move-object/from16 v1, v37

    .line 988
    .line 989
    goto/16 :goto_17

    .line 990
    .line 991
    :cond_29
    instance-of v1, v5, Landroid/text/style/StyleSpan;

    .line 992
    .line 993
    if-eqz v1, :cond_2e

    .line 994
    .line 995
    move-object v1, v5

    .line 996
    check-cast v1, Landroid/text/style/StyleSpan;

    .line 997
    .line 998
    invoke-virtual {v1}, Landroid/text/style/StyleSpan;->getStyle()I

    .line 999
    .line 1000
    .line 1001
    move-result v1

    .line 1002
    const/4 v3, 0x1

    .line 1003
    if-eq v1, v3, :cond_2d

    .line 1004
    .line 1005
    const/4 v3, 0x2

    .line 1006
    if-eq v1, v3, :cond_2c

    .line 1007
    .line 1008
    const/4 v3, 0x3

    .line 1009
    if-eq v1, v3, :cond_2b

    .line 1010
    .line 1011
    :cond_2a
    :goto_19
    move/from16 v43, v9

    .line 1012
    .line 1013
    move-object/from16 v44, v12

    .line 1014
    .line 1015
    move-object/from16 v1, v37

    .line 1016
    .line 1017
    goto/16 :goto_1d

    .line 1018
    .line 1019
    :cond_2b
    const-string v1, "<b><i>"

    .line 1020
    .line 1021
    goto/16 :goto_17

    .line 1022
    .line 1023
    :cond_2c
    const-string v1, "<i>"

    .line 1024
    .line 1025
    goto/16 :goto_17

    .line 1026
    .line 1027
    :cond_2d
    const-string v1, "<b>"

    .line 1028
    .line 1029
    goto/16 :goto_17

    .line 1030
    .line 1031
    :cond_2e
    instance-of v1, v5, Lt1/g;

    .line 1032
    .line 1033
    if-eqz v1, :cond_32

    .line 1034
    .line 1035
    move-object v1, v5

    .line 1036
    check-cast v1, Lt1/g;

    .line 1037
    .line 1038
    iget v1, v1, Lt1/g;->b:I

    .line 1039
    .line 1040
    const/4 v3, -0x1

    .line 1041
    if-eq v1, v3, :cond_31

    .line 1042
    .line 1043
    const/4 v3, 0x1

    .line 1044
    if-eq v1, v3, :cond_30

    .line 1045
    .line 1046
    const/4 v3, 0x2

    .line 1047
    if-eq v1, v3, :cond_2f

    .line 1048
    .line 1049
    goto :goto_19

    .line 1050
    :cond_2f
    const-string v1, "<ruby style=\'ruby-position:under;\'>"

    .line 1051
    .line 1052
    goto/16 :goto_17

    .line 1053
    .line 1054
    :cond_30
    const-string v1, "<ruby style=\'ruby-position:over;\'>"

    .line 1055
    .line 1056
    goto/16 :goto_17

    .line 1057
    .line 1058
    :cond_31
    const-string v1, "<ruby style=\'ruby-position:unset;\'>"

    .line 1059
    .line 1060
    goto/16 :goto_17

    .line 1061
    .line 1062
    :cond_32
    instance-of v1, v5, Landroid/text/style/UnderlineSpan;

    .line 1063
    .line 1064
    if-eqz v1, :cond_33

    .line 1065
    .line 1066
    const-string v1, "<u>"

    .line 1067
    .line 1068
    goto/16 :goto_17

    .line 1069
    .line 1070
    :cond_33
    instance-of v1, v5, Lt1/h;

    .line 1071
    .line 1072
    if-eqz v1, :cond_2a

    .line 1073
    .line 1074
    move-object v1, v5

    .line 1075
    check-cast v1, Lt1/h;

    .line 1076
    .line 1077
    iget v3, v1, Lt1/h;->a:I

    .line 1078
    .line 1079
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1080
    .line 1081
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1082
    .line 1083
    .line 1084
    move/from16 v43, v9

    .line 1085
    .line 1086
    iget v9, v1, Lt1/h;->b:I

    .line 1087
    .line 1088
    move-object/from16 v44, v12

    .line 1089
    .line 1090
    const/4 v12, 0x1

    .line 1091
    if-eq v9, v12, :cond_35

    .line 1092
    .line 1093
    const/4 v12, 0x2

    .line 1094
    if-eq v9, v12, :cond_34

    .line 1095
    .line 1096
    goto :goto_1a

    .line 1097
    :cond_34
    const-string v9, "open "

    .line 1098
    .line 1099
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1100
    .line 1101
    .line 1102
    goto :goto_1a

    .line 1103
    :cond_35
    const/4 v12, 0x2

    .line 1104
    const-string v9, "filled "

    .line 1105
    .line 1106
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    .line 1108
    .line 1109
    :goto_1a
    if-eqz v3, :cond_39

    .line 1110
    .line 1111
    const/4 v9, 0x1

    .line 1112
    if-eq v3, v9, :cond_38

    .line 1113
    .line 1114
    if-eq v3, v12, :cond_37

    .line 1115
    .line 1116
    const/4 v9, 0x3

    .line 1117
    if-eq v3, v9, :cond_36

    .line 1118
    .line 1119
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1120
    .line 1121
    .line 1122
    goto :goto_1b

    .line 1123
    :cond_36
    const-string v3, "sesame"

    .line 1124
    .line 1125
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    .line 1127
    .line 1128
    goto :goto_1b

    .line 1129
    :cond_37
    const-string v3, "dot"

    .line 1130
    .line 1131
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    .line 1133
    .line 1134
    goto :goto_1b

    .line 1135
    :cond_38
    const-string v3, "circle"

    .line 1136
    .line 1137
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1138
    .line 1139
    .line 1140
    goto :goto_1b

    .line 1141
    :cond_39
    const-string v3, "none"

    .line 1142
    .line 1143
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    .line 1145
    .line 1146
    :goto_1b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v3

    .line 1150
    iget v1, v1, Lt1/h;->c:I

    .line 1151
    .line 1152
    const/4 v8, 0x2

    .line 1153
    if-eq v1, v8, :cond_3a

    .line 1154
    .line 1155
    const-string v1, "over right"

    .line 1156
    .line 1157
    goto :goto_1c

    .line 1158
    :cond_3a
    const-string v1, "under left"

    .line 1159
    .line 1160
    :goto_1c
    new-array v9, v8, [Ljava/lang/Object;

    .line 1161
    .line 1162
    const/4 v8, 0x0

    .line 1163
    aput-object v3, v9, v8

    .line 1164
    .line 1165
    const/4 v3, 0x1

    .line 1166
    aput-object v1, v9, v3

    .line 1167
    .line 1168
    sget-object v1, Lu1/f0;->a:Ljava/lang/String;

    .line 1169
    .line 1170
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1171
    .line 1172
    const-string v3, "<span style=\'-webkit-text-emphasis-style:%1$s;text-emphasis-style:%1$s;-webkit-text-emphasis-position:%2$s;text-emphasis-position:%2$s;display:inline-block;\'>"

    .line 1173
    .line 1174
    invoke-static {v1, v3, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v1

    .line 1178
    :goto_1d
    if-nez v6, :cond_43

    .line 1179
    .line 1180
    instance-of v3, v5, Landroid/text/style/ForegroundColorSpan;

    .line 1181
    .line 1182
    if-nez v3, :cond_43

    .line 1183
    .line 1184
    instance-of v3, v5, Landroid/text/style/BackgroundColorSpan;

    .line 1185
    .line 1186
    if-nez v3, :cond_43

    .line 1187
    .line 1188
    instance-of v3, v5, Lt1/e;

    .line 1189
    .line 1190
    if-nez v3, :cond_43

    .line 1191
    .line 1192
    instance-of v3, v5, Landroid/text/style/AbsoluteSizeSpan;

    .line 1193
    .line 1194
    if-nez v3, :cond_43

    .line 1195
    .line 1196
    instance-of v3, v5, Landroid/text/style/RelativeSizeSpan;

    .line 1197
    .line 1198
    if-nez v3, :cond_43

    .line 1199
    .line 1200
    instance-of v3, v5, Lt1/h;

    .line 1201
    .line 1202
    if-eqz v3, :cond_3b

    .line 1203
    .line 1204
    goto :goto_1f

    .line 1205
    :cond_3b
    instance-of v3, v5, Landroid/text/style/TypefaceSpan;

    .line 1206
    .line 1207
    if-eqz v3, :cond_3d

    .line 1208
    .line 1209
    move-object v3, v5

    .line 1210
    check-cast v3, Landroid/text/style/TypefaceSpan;

    .line 1211
    .line 1212
    invoke-virtual {v3}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v3

    .line 1216
    if-eqz v3, :cond_3c

    .line 1217
    .line 1218
    move-object/from16 v37, v30

    .line 1219
    .line 1220
    :cond_3c
    :goto_1e
    move-object/from16 v3, v37

    .line 1221
    .line 1222
    goto :goto_20

    .line 1223
    :cond_3d
    instance-of v3, v5, Landroid/text/style/StyleSpan;

    .line 1224
    .line 1225
    if-eqz v3, :cond_41

    .line 1226
    .line 1227
    move-object v3, v5

    .line 1228
    check-cast v3, Landroid/text/style/StyleSpan;

    .line 1229
    .line 1230
    invoke-virtual {v3}, Landroid/text/style/StyleSpan;->getStyle()I

    .line 1231
    .line 1232
    .line 1233
    move-result v3

    .line 1234
    const/4 v6, 0x1

    .line 1235
    if-eq v3, v6, :cond_40

    .line 1236
    .line 1237
    const/4 v6, 0x2

    .line 1238
    if-eq v3, v6, :cond_3f

    .line 1239
    .line 1240
    const/4 v6, 0x3

    .line 1241
    if-eq v3, v6, :cond_3e

    .line 1242
    .line 1243
    goto :goto_1e

    .line 1244
    :cond_3e
    const-string v37, "</i></b>"

    .line 1245
    .line 1246
    goto :goto_1e

    .line 1247
    :cond_3f
    const-string v37, "</i>"

    .line 1248
    .line 1249
    goto :goto_1e

    .line 1250
    :cond_40
    const-string v37, "</b>"

    .line 1251
    .line 1252
    goto :goto_1e

    .line 1253
    :cond_41
    instance-of v3, v5, Lt1/g;

    .line 1254
    .line 1255
    if-eqz v3, :cond_42

    .line 1256
    .line 1257
    move-object v3, v5

    .line 1258
    check-cast v3, Lt1/g;

    .line 1259
    .line 1260
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1261
    .line 1262
    const-string v8, "<rt>"

    .line 1263
    .line 1264
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1265
    .line 1266
    .line 1267
    iget-object v3, v3, Lt1/g;->a:Ljava/lang/String;

    .line 1268
    .line 1269
    invoke-static {v3}, Lv3/i0;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v3

    .line 1273
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1274
    .line 1275
    .line 1276
    const-string v3, "</rt></ruby>"

    .line 1277
    .line 1278
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1279
    .line 1280
    .line 1281
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v37

    .line 1285
    goto :goto_1e

    .line 1286
    :cond_42
    instance-of v3, v5, Landroid/text/style/UnderlineSpan;

    .line 1287
    .line 1288
    if-eqz v3, :cond_3c

    .line 1289
    .line 1290
    const-string v37, "</u>"

    .line 1291
    .line 1292
    goto :goto_1e

    .line 1293
    :cond_43
    :goto_1f
    move-object/from16 v3, v30

    .line 1294
    .line 1295
    :goto_20
    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 1296
    .line 1297
    .line 1298
    move-result v6

    .line 1299
    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 1300
    .line 1301
    .line 1302
    move-result v5

    .line 1303
    if-eqz v1, :cond_46

    .line 1304
    .line 1305
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1306
    .line 1307
    .line 1308
    new-instance v8, Lv3/g0;

    .line 1309
    .line 1310
    invoke-direct {v8, v1, v6, v5, v3}, Lv3/g0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 1311
    .line 1312
    .line 1313
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v1

    .line 1317
    check-cast v1, Lv3/h0;

    .line 1318
    .line 1319
    if-nez v1, :cond_44

    .line 1320
    .line 1321
    new-instance v1, Lv3/h0;

    .line 1322
    .line 1323
    invoke-direct {v1}, Lv3/h0;-><init>()V

    .line 1324
    .line 1325
    .line 1326
    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1327
    .line 1328
    .line 1329
    :cond_44
    iget-object v1, v1, Lv3/h0;->a:Ljava/util/ArrayList;

    .line 1330
    .line 1331
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1332
    .line 1333
    .line 1334
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v1

    .line 1338
    check-cast v1, Lv3/h0;

    .line 1339
    .line 1340
    if-nez v1, :cond_45

    .line 1341
    .line 1342
    new-instance v1, Lv3/h0;

    .line 1343
    .line 1344
    invoke-direct {v1}, Lv3/h0;-><init>()V

    .line 1345
    .line 1346
    .line 1347
    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1348
    .line 1349
    .line 1350
    :cond_45
    iget-object v1, v1, Lv3/h0;->b:Ljava/util/ArrayList;

    .line 1351
    .line 1352
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1353
    .line 1354
    .line 1355
    :cond_46
    const/4 v1, 0x1

    .line 1356
    add-int/2addr v4, v1

    .line 1357
    move-object/from16 v1, v40

    .line 1358
    .line 1359
    move/from16 v3, v41

    .line 1360
    .line 1361
    move-object/from16 v8, v42

    .line 1362
    .line 1363
    move/from16 v9, v43

    .line 1364
    .line 1365
    move-object/from16 v12, v44

    .line 1366
    .line 1367
    goto/16 :goto_16

    .line 1368
    .line 1369
    :cond_47
    move-object/from16 v42, v8

    .line 1370
    .line 1371
    move-object/from16 v44, v12

    .line 1372
    .line 1373
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1374
    .line 1375
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 1376
    .line 1377
    .line 1378
    move-result v3

    .line 1379
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1380
    .line 1381
    .line 1382
    const/4 v3, 0x0

    .line 1383
    const/4 v4, 0x0

    .line 1384
    :goto_21
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 1385
    .line 1386
    .line 1387
    move-result v5

    .line 1388
    if-ge v3, v5, :cond_4a

    .line 1389
    .line 1390
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 1391
    .line 1392
    .line 1393
    move-result v5

    .line 1394
    invoke-interface {v2, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 1395
    .line 1396
    .line 1397
    move-result-object v4

    .line 1398
    invoke-static {v4}, Lv3/i0;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1399
    .line 1400
    .line 1401
    move-result-object v4

    .line 1402
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1403
    .line 1404
    .line 1405
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1406
    .line 1407
    .line 1408
    move-result-object v4

    .line 1409
    check-cast v4, Lv3/h0;

    .line 1410
    .line 1411
    iget-object v6, v4, Lv3/h0;->b:Ljava/util/ArrayList;

    .line 1412
    .line 1413
    sget-object v8, Lv3/g0;->f:Lqa/e;

    .line 1414
    .line 1415
    invoke-static {v6, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1416
    .line 1417
    .line 1418
    iget-object v6, v4, Lv3/h0;->b:Ljava/util/ArrayList;

    .line 1419
    .line 1420
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1421
    .line 1422
    .line 1423
    move-result-object v6

    .line 1424
    :goto_22
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1425
    .line 1426
    .line 1427
    move-result v8

    .line 1428
    if-eqz v8, :cond_48

    .line 1429
    .line 1430
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1431
    .line 1432
    .line 1433
    move-result-object v8

    .line 1434
    check-cast v8, Lv3/g0;

    .line 1435
    .line 1436
    iget-object v8, v8, Lv3/g0;->d:Ljava/lang/String;

    .line 1437
    .line 1438
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1439
    .line 1440
    .line 1441
    goto :goto_22

    .line 1442
    :cond_48
    iget-object v4, v4, Lv3/h0;->a:Ljava/util/ArrayList;

    .line 1443
    .line 1444
    sget-object v6, Lv3/g0;->e:Lqa/e;

    .line 1445
    .line 1446
    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1447
    .line 1448
    .line 1449
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1450
    .line 1451
    .line 1452
    move-result-object v4

    .line 1453
    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1454
    .line 1455
    .line 1456
    move-result v6

    .line 1457
    if-eqz v6, :cond_49

    .line 1458
    .line 1459
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1460
    .line 1461
    .line 1462
    move-result-object v6

    .line 1463
    check-cast v6, Lv3/g0;

    .line 1464
    .line 1465
    iget-object v6, v6, Lv3/g0;->c:Ljava/lang/String;

    .line 1466
    .line 1467
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1468
    .line 1469
    .line 1470
    goto :goto_23

    .line 1471
    :cond_49
    const/4 v6, 0x1

    .line 1472
    add-int/2addr v3, v6

    .line 1473
    move v4, v5

    .line 1474
    goto :goto_21

    .line 1475
    :cond_4a
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 1476
    .line 1477
    .line 1478
    move-result v0

    .line 1479
    invoke-interface {v2, v4, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v0

    .line 1483
    invoke-static {v0}, Lv3/i0;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1484
    .line 1485
    .line 1486
    move-result-object v0

    .line 1487
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1488
    .line 1489
    .line 1490
    new-instance v2, Lbd/c;

    .line 1491
    .line 1492
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1493
    .line 1494
    .line 1495
    move-result-object v0

    .line 1496
    const/4 v1, 0x6

    .line 1497
    invoke-direct {v2, v0, v1}, Lbd/c;-><init>(Ljava/lang/String;I)V

    .line 1498
    .line 1499
    .line 1500
    :goto_24
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 1501
    .line 1502
    .line 1503
    move-result-object v0

    .line 1504
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1505
    .line 1506
    .line 1507
    move-result-object v0

    .line 1508
    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1509
    .line 1510
    .line 1511
    move-result v1

    .line 1512
    if-eqz v1, :cond_4d

    .line 1513
    .line 1514
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1515
    .line 1516
    .line 1517
    move-result-object v1

    .line 1518
    check-cast v1, Ljava/lang/String;

    .line 1519
    .line 1520
    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1521
    .line 1522
    .line 1523
    move-result-object v3

    .line 1524
    check-cast v3, Ljava/lang/String;

    .line 1525
    .line 1526
    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1527
    .line 1528
    .line 1529
    move-result-object v3

    .line 1530
    check-cast v3, Ljava/lang/String;

    .line 1531
    .line 1532
    if-eqz v3, :cond_4c

    .line 1533
    .line 1534
    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1535
    .line 1536
    .line 1537
    move-result-object v1

    .line 1538
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1539
    .line 1540
    .line 1541
    move-result v1

    .line 1542
    if-eqz v1, :cond_4b

    .line 1543
    .line 1544
    goto :goto_26

    .line 1545
    :cond_4b
    const/4 v1, 0x0

    .line 1546
    goto :goto_27

    .line 1547
    :cond_4c
    :goto_26
    const/4 v1, 0x1

    .line 1548
    :goto_27
    invoke-static {v1}, La9/o;->t(Z)V

    .line 1549
    .line 1550
    .line 1551
    goto :goto_25

    .line 1552
    :cond_4d
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1553
    .line 1554
    .line 1555
    move-result-object v0

    .line 1556
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1557
    .line 1558
    .line 1559
    move-result-object v1

    .line 1560
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1561
    .line 1562
    .line 1563
    move-result-object v3

    .line 1564
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1565
    .line 1566
    .line 1567
    move-result-object v4

    .line 1568
    iget v5, v13, Lt1/b;->q:F

    .line 1569
    .line 1570
    cmpl-float v6, v5, v21

    .line 1571
    .line 1572
    if-eqz v6, :cond_50

    .line 1573
    .line 1574
    move/from16 v6, v39

    .line 1575
    .line 1576
    const/4 v8, 0x2

    .line 1577
    const/4 v9, 0x1

    .line 1578
    if-eq v6, v8, :cond_4f

    .line 1579
    .line 1580
    if-ne v6, v9, :cond_4e

    .line 1581
    .line 1582
    goto :goto_28

    .line 1583
    :cond_4e
    const-string v6, "skewX"

    .line 1584
    .line 1585
    goto :goto_29

    .line 1586
    :cond_4f
    :goto_28
    const-string v6, "skewY"

    .line 1587
    .line 1588
    :goto_29
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1589
    .line 1590
    .line 1591
    move-result-object v5

    .line 1592
    new-array v12, v8, [Ljava/lang/Object;

    .line 1593
    .line 1594
    const/4 v8, 0x0

    .line 1595
    aput-object v6, v12, v8

    .line 1596
    .line 1597
    aput-object v5, v12, v9

    .line 1598
    .line 1599
    sget-object v5, Lu1/f0;->a:Ljava/lang/String;

    .line 1600
    .line 1601
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1602
    .line 1603
    const-string v6, "%s(%.2fdeg)"

    .line 1604
    .line 1605
    invoke-static {v5, v6, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1606
    .line 1607
    .line 1608
    move-result-object v6

    .line 1609
    goto :goto_2a

    .line 1610
    :cond_50
    move-object/from16 v6, v33

    .line 1611
    .line 1612
    :goto_2a
    const/16 v5, 0xe

    .line 1613
    .line 1614
    new-array v5, v5, [Ljava/lang/Object;

    .line 1615
    .line 1616
    const/4 v8, 0x0

    .line 1617
    aput-object v0, v5, v8

    .line 1618
    .line 1619
    const/4 v0, 0x1

    .line 1620
    aput-object v28, v5, v0

    .line 1621
    .line 1622
    const/4 v0, 0x2

    .line 1623
    aput-object v1, v5, v0

    .line 1624
    .line 1625
    const/4 v0, 0x3

    .line 1626
    aput-object v27, v5, v0

    .line 1627
    .line 1628
    const/4 v1, 0x4

    .line 1629
    aput-object v38, v5, v1

    .line 1630
    .line 1631
    const/4 v8, 0x5

    .line 1632
    aput-object v36, v5, v8

    .line 1633
    .line 1634
    const/4 v8, 0x6

    .line 1635
    aput-object v35, v5, v8

    .line 1636
    .line 1637
    const/4 v9, 0x7

    .line 1638
    aput-object v34, v5, v9

    .line 1639
    .line 1640
    const/16 v9, 0x8

    .line 1641
    .line 1642
    aput-object v32, v5, v9

    .line 1643
    .line 1644
    const/16 v9, 0x9

    .line 1645
    .line 1646
    aput-object v31, v5, v9

    .line 1647
    .line 1648
    const/16 v9, 0xa

    .line 1649
    .line 1650
    aput-object v29, v5, v9

    .line 1651
    .line 1652
    const/16 v9, 0xb

    .line 1653
    .line 1654
    aput-object v3, v5, v9

    .line 1655
    .line 1656
    const/16 v3, 0xc

    .line 1657
    .line 1658
    aput-object v4, v5, v3

    .line 1659
    .line 1660
    const/16 v3, 0xd

    .line 1661
    .line 1662
    aput-object v6, v5, v3

    .line 1663
    .line 1664
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1665
    .line 1666
    const-string v4, "<div style=\'position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;\'>"

    .line 1667
    .line 1668
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1669
    .line 1670
    .line 1671
    move-result-object v3

    .line 1672
    move-object/from16 v4, v26

    .line 1673
    .line 1674
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1675
    .line 1676
    .line 1677
    const-string v3, "<span class=\'default_bg\'>"

    .line 1678
    .line 1679
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1680
    .line 1681
    .line 1682
    iget-object v2, v2, Lbd/c;->b:Ljava/lang/String;

    .line 1683
    .line 1684
    iget-object v3, v13, Lt1/b;->c:Landroid/text/Layout$Alignment;

    .line 1685
    .line 1686
    if-eqz v3, :cond_53

    .line 1687
    .line 1688
    sget-object v5, Lv3/p0;->a:[I

    .line 1689
    .line 1690
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 1691
    .line 1692
    .line 1693
    move-result v3

    .line 1694
    aget v3, v5, v3

    .line 1695
    .line 1696
    const/4 v5, 0x1

    .line 1697
    if-eq v3, v5, :cond_52

    .line 1698
    .line 1699
    const/4 v5, 0x2

    .line 1700
    if-eq v3, v5, :cond_51

    .line 1701
    .line 1702
    move-object/from16 v3, v18

    .line 1703
    .line 1704
    goto :goto_2b

    .line 1705
    :cond_51
    move-object/from16 v3, v25

    .line 1706
    .line 1707
    goto :goto_2b

    .line 1708
    :cond_52
    const/4 v5, 0x2

    .line 1709
    move-object/from16 v3, v24

    .line 1710
    .line 1711
    :goto_2b
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1712
    .line 1713
    const-string v9, "<span style=\'display:inline-block; text-align:"

    .line 1714
    .line 1715
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1716
    .line 1717
    .line 1718
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1719
    .line 1720
    .line 1721
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1722
    .line 1723
    .line 1724
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1725
    .line 1726
    .line 1727
    move-result-object v3

    .line 1728
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1729
    .line 1730
    .line 1731
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1732
    .line 1733
    .line 1734
    move-object/from16 v2, v30

    .line 1735
    .line 1736
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1737
    .line 1738
    .line 1739
    goto :goto_2c

    .line 1740
    :cond_53
    const/4 v5, 0x2

    .line 1741
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1742
    .line 1743
    .line 1744
    :goto_2c
    const-string v2, "</span></div>"

    .line 1745
    .line 1746
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1747
    .line 1748
    .line 1749
    const/4 v2, 0x1

    .line 1750
    add-int/2addr v11, v2

    .line 1751
    const/4 v2, 0x3

    .line 1752
    const/4 v5, 0x1

    .line 1753
    const/4 v9, 0x0

    .line 1754
    const v10, 0x3f99999a    # 1.2f

    .line 1755
    .line 1756
    .line 1757
    move-object/from16 v0, p0

    .line 1758
    .line 1759
    move-object v6, v4

    .line 1760
    move-object/from16 v8, v42

    .line 1761
    .line 1762
    move-object/from16 v12, v44

    .line 1763
    .line 1764
    const/4 v4, 0x2

    .line 1765
    goto/16 :goto_1

    .line 1766
    .line 1767
    :cond_54
    move-object v4, v6

    .line 1768
    const-string v0, "</div></body></html>"

    .line 1769
    .line 1770
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1771
    .line 1772
    .line 1773
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1774
    .line 1775
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1776
    .line 1777
    .line 1778
    const-string v1, "<html><head><style>"

    .line 1779
    .line 1780
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1781
    .line 1782
    .line 1783
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 1784
    .line 1785
    .line 1786
    move-result-object v1

    .line 1787
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1788
    .line 1789
    .line 1790
    move-result-object v1

    .line 1791
    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1792
    .line 1793
    .line 1794
    move-result v2

    .line 1795
    if-eqz v2, :cond_55

    .line 1796
    .line 1797
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1798
    .line 1799
    .line 1800
    move-result-object v2

    .line 1801
    check-cast v2, Ljava/lang/String;

    .line 1802
    .line 1803
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1804
    .line 1805
    .line 1806
    const-string v3, "{"

    .line 1807
    .line 1808
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1809
    .line 1810
    .line 1811
    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1812
    .line 1813
    .line 1814
    move-result-object v2

    .line 1815
    check-cast v2, Ljava/lang/String;

    .line 1816
    .line 1817
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1818
    .line 1819
    .line 1820
    const-string v2, "}"

    .line 1821
    .line 1822
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1823
    .line 1824
    .line 1825
    goto :goto_2d

    .line 1826
    :cond_55
    const-string v1, "</style></head>"

    .line 1827
    .line 1828
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1829
    .line 1830
    .line 1831
    const/4 v1, 0x0

    .line 1832
    invoke-virtual {v4, v1, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1833
    .line 1834
    .line 1835
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1836
    .line 1837
    .line 1838
    move-result-object v0

    .line 1839
    sget-object v1, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1840
    .line 1841
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 1842
    .line 1843
    .line 1844
    move-result-object v0

    .line 1845
    const/4 v1, 0x1

    .line 1846
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 1847
    .line 1848
    .line 1849
    move-result-object v0

    .line 1850
    const-string v1, "text/html"

    .line 1851
    .line 1852
    const-string v2, "base64"

    .line 1853
    .line 1854
    move-object/from16 v3, p0

    .line 1855
    .line 1856
    iget-object v4, v3, Lv3/q0;->b:Lv3/o0;

    .line 1857
    .line 1858
    invoke-virtual {v4, v0, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1859
    .line 1860
    .line 1861
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lv3/q0;->c:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lv3/q0;->c()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
