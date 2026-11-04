.class public final Landroidx/emoji2/text/h;
.super La1/i;
.source "SourceFile"


# instance fields
.field public volatile c:La2/g1;

.field public volatile d:La2/w0;


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/l;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0, p1}, La1/i;-><init>(ILjava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final J(Landroid/view/inputmethod/EditorInfo;)V
    .locals 5

    .line 1
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/emoji2/text/h;->d:La2/w0;

    .line 4
    .line 5
    iget-object v1, v1, La2/w0;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lh1/b;

    .line 8
    .line 9
    const/4 v2, 0x4

    .line 10
    invoke-virtual {v1, v2}, Lh1/c;->a(I)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget-object v4, v1, Lh1/c;->d:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    iget v1, v1, Lh1/c;->a:I

    .line 22
    .line 23
    add-int/2addr v2, v1

    .line 24
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v1, 0x0

    .line 30
    :goto_0
    const-string v2, "android.support.text.emoji.emojiCompat_metadataVersion"

    .line 31
    .line 32
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 36
    .line 37
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, Landroidx/emoji2/text/l;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    const-string v0, "android.support.text.emoji.emojiCompat_replaceAll"

    .line 45
    .line 46
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final x()V
    .locals 3

    .line 1
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/emoji2/text/l;

    .line 4
    .line 5
    :try_start_0
    new-instance v1, Landroidx/emoji2/text/g;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Landroidx/emoji2/text/g;-><init>(Landroidx/emoji2/text/h;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, v0, Landroidx/emoji2/text/l;->f:Landroidx/emoji2/text/k;

    .line 11
    .line 12
    invoke-interface {v2, v1}, Landroidx/emoji2/text/k;->a(La9/o;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    invoke-virtual {v0, v1}, Landroidx/emoji2/text/l;->d(Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public final z(Ljava/lang/CharSequence;IIZ)Ljava/lang/CharSequence;
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/h;->c:La2/g1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    instance-of v1, p1, Landroidx/emoji2/text/v;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    move-object v2, p1

    .line 11
    check-cast v2, Landroidx/emoji2/text/v;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroidx/emoji2/text/v;->a()V

    .line 14
    .line 15
    .line 16
    :cond_0
    const-class v2, Landroidx/emoji2/text/w;

    .line 17
    .line 18
    if-nez v1, :cond_3

    .line 19
    .line 20
    :try_start_0
    instance-of v3, p1, Landroid/text/Spannable;

    .line 21
    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    instance-of v3, p1, Landroid/text/Spanned;

    .line 26
    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    move-object v3, p1

    .line 30
    check-cast v3, Landroid/text/Spanned;

    .line 31
    .line 32
    add-int/lit8 v4, p2, -0x1

    .line 33
    .line 34
    add-int/lit8 v5, p3, 0x1

    .line 35
    .line 36
    invoke-interface {v3, v4, v5, v2}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-gt v3, p3, :cond_2

    .line 41
    .line 42
    new-instance v3, Landroidx/emoji2/text/a0;

    .line 43
    .line 44
    invoke-direct {v3, p1}, Landroidx/emoji2/text/a0;-><init>(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catchall_0
    move-exception p2

    .line 49
    goto/16 :goto_8

    .line 50
    .line 51
    :cond_2
    const/4 v3, 0x0

    .line 52
    goto :goto_1

    .line 53
    :cond_3
    :goto_0
    new-instance v3, Landroidx/emoji2/text/a0;

    .line 54
    .line 55
    move-object v4, p1

    .line 56
    check-cast v4, Landroid/text/Spannable;

    .line 57
    .line 58
    invoke-direct {v3, v4}, Landroidx/emoji2/text/a0;-><init>(Landroid/text/Spannable;)V

    .line 59
    .line 60
    .line 61
    :goto_1
    const/4 v4, 0x0

    .line 62
    if-eqz v3, :cond_5

    .line 63
    .line 64
    iget-object v5, v3, Landroidx/emoji2/text/a0;->b:Landroid/text/Spannable;

    .line 65
    .line 66
    invoke-interface {v5, p2, p3, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, [Landroidx/emoji2/text/w;

    .line 71
    .line 72
    if-eqz v2, :cond_5

    .line 73
    .line 74
    array-length v5, v2

    .line 75
    if-lez v5, :cond_5

    .line 76
    .line 77
    array-length v5, v2

    .line 78
    const/4 v6, 0x0

    .line 79
    :goto_2
    if-ge v6, v5, :cond_5

    .line 80
    .line 81
    aget-object v7, v2, v6

    .line 82
    .line 83
    iget-object v8, v3, Landroidx/emoji2/text/a0;->b:Landroid/text/Spannable;

    .line 84
    .line 85
    invoke-interface {v8, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    iget-object v9, v3, Landroidx/emoji2/text/a0;->b:Landroid/text/Spannable;

    .line 90
    .line 91
    invoke-interface {v9, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    if-eq v8, p3, :cond_4

    .line 96
    .line 97
    invoke-virtual {v3, v7}, Landroidx/emoji2/text/a0;->removeSpan(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :cond_4
    invoke-static {v8, p2}, Ljava/lang/Math;->min(II)I

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    invoke-static {v9, p3}, Ljava/lang/Math;->max(II)I

    .line 105
    .line 106
    .line 107
    move-result p3

    .line 108
    add-int/lit8 v6, v6, 0x1

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_5
    if-eq p2, p3, :cond_16

    .line 112
    .line 113
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-lt p2, v2, :cond_6

    .line 118
    .line 119
    goto/16 :goto_6

    .line 120
    .line 121
    :cond_6
    new-instance v2, Landroidx/emoji2/text/q;

    .line 122
    .line 123
    iget-object v5, v0, La2/g1;->b:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v5, La2/w0;

    .line 126
    .line 127
    iget-object v5, v5, La2/w0;->d:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v5, Landroidx/emoji2/text/t;

    .line 130
    .line 131
    invoke-direct {v2, v5}, Landroidx/emoji2/text/q;-><init>(Landroidx/emoji2/text/t;)V

    .line 132
    .line 133
    .line 134
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    move-object v4, v3

    .line 139
    move v6, v5

    .line 140
    const/4 v5, 0x0

    .line 141
    :cond_7
    :goto_3
    move v3, p2

    .line 142
    :cond_8
    :goto_4
    const/16 v7, 0x21

    .line 143
    .line 144
    const/4 v8, 0x1

    .line 145
    const v9, 0x7fffffff

    .line 146
    .line 147
    .line 148
    const/4 v10, 0x2

    .line 149
    if-ge p2, p3, :cond_f

    .line 150
    .line 151
    if-ge v5, v9, :cond_f

    .line 152
    .line 153
    invoke-virtual {v2, v6}, Landroidx/emoji2/text/q;->a(I)I

    .line 154
    .line 155
    .line 156
    move-result v9

    .line 157
    if-eq v9, v8, :cond_d

    .line 158
    .line 159
    if-eq v9, v10, :cond_c

    .line 160
    .line 161
    const/4 v8, 0x3

    .line 162
    if-eq v9, v8, :cond_9

    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_9
    if-nez p4, :cond_a

    .line 166
    .line 167
    iget-object v8, v2, Landroidx/emoji2/text/q;->f:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast v8, Landroidx/emoji2/text/t;

    .line 170
    .line 171
    iget-object v8, v8, Landroidx/emoji2/text/t;->b:Landroidx/emoji2/text/p;

    .line 172
    .line 173
    invoke-virtual {v0, p1, v3, p2, v8}, La2/g1;->U(Ljava/lang/CharSequence;IILandroidx/emoji2/text/p;)Z

    .line 174
    .line 175
    .line 176
    move-result v8

    .line 177
    if-nez v8, :cond_7

    .line 178
    .line 179
    :cond_a
    if-nez v4, :cond_b

    .line 180
    .line 181
    new-instance v4, Landroidx/emoji2/text/a0;

    .line 182
    .line 183
    new-instance v8, Landroid/text/SpannableString;

    .line 184
    .line 185
    invoke-direct {v8, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 186
    .line 187
    .line 188
    invoke-direct {v4, v8}, Landroidx/emoji2/text/a0;-><init>(Landroid/text/Spannable;)V

    .line 189
    .line 190
    .line 191
    :cond_b
    iget-object v8, v2, Landroidx/emoji2/text/q;->f:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v8, Landroidx/emoji2/text/t;

    .line 194
    .line 195
    iget-object v8, v8, Landroidx/emoji2/text/t;->b:Landroidx/emoji2/text/p;

    .line 196
    .line 197
    new-instance v9, Landroidx/emoji2/text/w;

    .line 198
    .line 199
    invoke-direct {v9, v8}, Landroidx/emoji2/text/w;-><init>(Landroidx/emoji2/text/p;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v4, v9, v3, p2, v7}, Landroidx/emoji2/text/a0;->setSpan(Ljava/lang/Object;III)V

    .line 203
    .line 204
    .line 205
    add-int/lit8 v5, v5, 0x1

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_c
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    .line 209
    .line 210
    .line 211
    move-result v7

    .line 212
    add-int/2addr p2, v7

    .line 213
    if-ge p2, p3, :cond_8

    .line 214
    .line 215
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 216
    .line 217
    .line 218
    move-result v6

    .line 219
    goto :goto_4

    .line 220
    :cond_d
    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 221
    .line 222
    .line 223
    move-result p2

    .line 224
    invoke-static {p2}, Ljava/lang/Character;->charCount(I)I

    .line 225
    .line 226
    .line 227
    move-result p2

    .line 228
    add-int/2addr v3, p2

    .line 229
    if-ge v3, p3, :cond_e

    .line 230
    .line 231
    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 232
    .line 233
    .line 234
    move-result p2

    .line 235
    move v6, p2

    .line 236
    :cond_e
    move p2, v3

    .line 237
    goto :goto_4

    .line 238
    :cond_f
    iget p3, v2, Landroidx/emoji2/text/q;->a:I

    .line 239
    .line 240
    if-ne p3, v10, :cond_13

    .line 241
    .line 242
    iget-object p3, v2, Landroidx/emoji2/text/q;->e:Ljava/lang/Object;

    .line 243
    .line 244
    check-cast p3, Landroidx/emoji2/text/t;

    .line 245
    .line 246
    iget-object p3, p3, Landroidx/emoji2/text/t;->b:Landroidx/emoji2/text/p;

    .line 247
    .line 248
    if-eqz p3, :cond_13

    .line 249
    .line 250
    iget p3, v2, Landroidx/emoji2/text/q;->c:I

    .line 251
    .line 252
    if-gt p3, v8, :cond_10

    .line 253
    .line 254
    invoke-virtual {v2}, Landroidx/emoji2/text/q;->c()Z

    .line 255
    .line 256
    .line 257
    move-result p3

    .line 258
    if-eqz p3, :cond_13

    .line 259
    .line 260
    :cond_10
    if-ge v5, v9, :cond_13

    .line 261
    .line 262
    if-nez p4, :cond_11

    .line 263
    .line 264
    iget-object p3, v2, Landroidx/emoji2/text/q;->e:Ljava/lang/Object;

    .line 265
    .line 266
    check-cast p3, Landroidx/emoji2/text/t;

    .line 267
    .line 268
    iget-object p3, p3, Landroidx/emoji2/text/t;->b:Landroidx/emoji2/text/p;

    .line 269
    .line 270
    invoke-virtual {v0, p1, v3, p2, p3}, La2/g1;->U(Ljava/lang/CharSequence;IILandroidx/emoji2/text/p;)Z

    .line 271
    .line 272
    .line 273
    move-result p3

    .line 274
    if-nez p3, :cond_13

    .line 275
    .line 276
    :cond_11
    if-nez v4, :cond_12

    .line 277
    .line 278
    new-instance v4, Landroidx/emoji2/text/a0;

    .line 279
    .line 280
    invoke-direct {v4, p1}, Landroidx/emoji2/text/a0;-><init>(Ljava/lang/CharSequence;)V

    .line 281
    .line 282
    .line 283
    :cond_12
    iget-object p3, v2, Landroidx/emoji2/text/q;->e:Ljava/lang/Object;

    .line 284
    .line 285
    check-cast p3, Landroidx/emoji2/text/t;

    .line 286
    .line 287
    iget-object p3, p3, Landroidx/emoji2/text/t;->b:Landroidx/emoji2/text/p;

    .line 288
    .line 289
    new-instance p4, Landroidx/emoji2/text/w;

    .line 290
    .line 291
    invoke-direct {p4, p3}, Landroidx/emoji2/text/w;-><init>(Landroidx/emoji2/text/p;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v4, p4, v3, p2, v7}, Landroidx/emoji2/text/a0;->setSpan(Ljava/lang/Object;III)V

    .line 295
    .line 296
    .line 297
    :cond_13
    if-eqz v4, :cond_15

    .line 298
    .line 299
    iget-object p2, v4, Landroidx/emoji2/text/a0;->b:Landroid/text/Spannable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    .line 301
    if-eqz v1, :cond_14

    .line 302
    .line 303
    check-cast p1, Landroidx/emoji2/text/v;

    .line 304
    .line 305
    invoke-virtual {p1}, Landroidx/emoji2/text/v;->b()V

    .line 306
    .line 307
    .line 308
    :cond_14
    move-object p1, p2

    .line 309
    goto :goto_7

    .line 310
    :cond_15
    if-eqz v1, :cond_17

    .line 311
    .line 312
    :goto_5
    move-object p2, p1

    .line 313
    check-cast p2, Landroidx/emoji2/text/v;

    .line 314
    .line 315
    invoke-virtual {p2}, Landroidx/emoji2/text/v;->b()V

    .line 316
    .line 317
    .line 318
    goto :goto_7

    .line 319
    :cond_16
    :goto_6
    if-eqz v1, :cond_17

    .line 320
    .line 321
    goto :goto_5

    .line 322
    :cond_17
    :goto_7
    return-object p1

    .line 323
    :goto_8
    if-eqz v1, :cond_18

    .line 324
    .line 325
    check-cast p1, Landroidx/emoji2/text/v;

    .line 326
    .line 327
    invoke-virtual {p1}, Landroidx/emoji2/text/v;->b()V

    .line 328
    .line 329
    .line 330
    :cond_18
    goto :goto_a

    .line 331
    :goto_9
    throw p2

    .line 332
    :goto_a
    goto :goto_9
.end method
