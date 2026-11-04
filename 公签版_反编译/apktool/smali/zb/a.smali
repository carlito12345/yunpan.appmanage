.class public final Lzb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lzb/a;


# instance fields
.field public final a:Landroid/util/SparseIntArray;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lzb/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lzb/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lzb/a;->c:Lzb/a;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseIntArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lzb/a;->b:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    :goto_0
    const/16 v1, 0x53

    .line 20
    .line 21
    if-gt v0, v1, :cond_3

    .line 22
    .line 23
    iget-object v1, p0, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const v3, -0x111112

    .line 30
    .line 31
    .line 32
    const/4 v4, -0x1

    .line 33
    const/high16 v5, 0x1d000000

    .line 34
    .line 35
    const/high16 v6, -0x1000000

    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    const v8, -0x666667

    .line 39
    .line 40
    .line 41
    packed-switch v0, :pswitch_data_0

    .line 42
    .line 43
    .line 44
    :pswitch_0
    goto/16 :goto_1

    .line 45
    .line 46
    :pswitch_1
    const v2, -0x4fcccccd

    .line 47
    .line 48
    .line 49
    goto/16 :goto_1

    .line 50
    .line 51
    :pswitch_2
    const v2, 0x30333333

    .line 52
    .line 53
    .line 54
    goto/16 :goto_1

    .line 55
    .line 56
    :pswitch_3
    const v2, -0x5f000001

    .line 57
    .line 58
    .line 59
    goto/16 :goto_1

    .line 60
    .line 61
    :pswitch_4
    const v2, -0xc0ae4b

    .line 62
    .line 63
    .line 64
    goto/16 :goto_1

    .line 65
    .line 66
    :pswitch_5
    const v2, 0x40575757

    .line 67
    .line 68
    .line 69
    goto/16 :goto_1

    .line 70
    .line 71
    :pswitch_6
    const v2, 0x400e639c

    .line 72
    .line 73
    .line 74
    goto/16 :goto_1

    .line 75
    .line 76
    :pswitch_7
    const v2, -0x666667

    .line 77
    .line 78
    .line 79
    goto/16 :goto_1

    .line 80
    .line 81
    :pswitch_8
    const v2, -0xb25504

    .line 82
    .line 83
    .line 84
    goto/16 :goto_1

    .line 85
    .line 86
    :pswitch_9
    const v2, -0x777778

    .line 87
    .line 88
    .line 89
    goto/16 :goto_1

    .line 90
    .line 91
    :pswitch_a
    const v2, -0x66111112

    .line 92
    .line 93
    .line 94
    goto/16 :goto_1

    .line 95
    .line 96
    :pswitch_b
    const/high16 v2, -0x1000000

    .line 97
    .line 98
    goto/16 :goto_1

    .line 99
    .line 100
    :pswitch_c
    const v2, -0xbd5a0b

    .line 101
    .line 102
    .line 103
    goto/16 :goto_1

    .line 104
    .line 105
    :pswitch_d
    const v2, -0x9e9e9f

    .line 106
    .line 107
    .line 108
    goto/16 :goto_1

    .line 109
    .line 110
    :pswitch_e
    const v2, -0xbdbdbe

    .line 111
    .line 112
    .line 113
    goto/16 :goto_1

    .line 114
    .line 115
    :pswitch_f
    const v2, -0x10102

    .line 116
    .line 117
    .line 118
    goto/16 :goto_1

    .line 119
    .line 120
    :pswitch_10
    const v2, -0x111112

    .line 121
    .line 122
    .line 123
    goto/16 :goto_1

    .line 124
    .line 125
    :pswitch_11
    const/high16 v2, 0x1d000000

    .line 126
    .line 127
    goto/16 :goto_1

    .line 128
    .line 129
    :pswitch_12
    const v2, -0x333334

    .line 130
    .line 131
    .line 132
    goto/16 :goto_1

    .line 133
    .line 134
    :pswitch_13
    const v2, -0x55222223

    .line 135
    .line 136
    .line 137
    goto/16 :goto_1

    .line 138
    .line 139
    :pswitch_14
    const v2, 0x66dddddd

    .line 140
    .line 141
    .line 142
    goto/16 :goto_1

    .line 143
    .line 144
    :pswitch_15
    const v2, -0xababac

    .line 145
    .line 146
    .line 147
    goto/16 :goto_1

    .line 148
    .line 149
    :pswitch_16
    const/4 v2, 0x0

    .line 150
    goto/16 :goto_1

    .line 151
    .line 152
    :pswitch_17
    const v2, 0x6600ff11

    .line 153
    .line 154
    .line 155
    goto/16 :goto_1

    .line 156
    .line 157
    :pswitch_18
    const v2, -0x55000f00

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :pswitch_19
    const/high16 v2, -0x55010000

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :pswitch_1a
    const v2, -0x11333334

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :pswitch_1b
    const/16 v2, -0x100

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :pswitch_1c
    const v2, -0x1fbf05

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :pswitch_1d
    const v2, -0xfc560c

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :pswitch_1e
    const v2, -0xab9186

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :pswitch_1f
    const v2, -0xff7f80

    .line 184
    .line 185
    .line 186
    goto :goto_1

    .line 187
    :pswitch_20
    const v2, -0xff992a

    .line 188
    .line 189
    .line 190
    goto :goto_1

    .line 191
    :pswitch_21
    const v2, -0x575758

    .line 192
    .line 193
    .line 194
    goto :goto_1

    .line 195
    :pswitch_22
    const v2, -0xde690d

    .line 196
    .line 197
    .line 198
    goto :goto_1

    .line 199
    :pswitch_23
    const/4 v2, -0x1

    .line 200
    goto :goto_1

    .line 201
    :pswitch_24
    const/high16 v2, -0x23000000

    .line 202
    .line 203
    goto :goto_1

    .line 204
    :pswitch_25
    const v2, -0x222223

    .line 205
    .line 206
    .line 207
    goto :goto_1

    .line 208
    :pswitch_26
    const v2, -0xd8d6d6

    .line 209
    .line 210
    .line 211
    goto :goto_1

    .line 212
    :pswitch_27
    const v2, -0x272728

    .line 213
    .line 214
    .line 215
    goto :goto_1

    .line 216
    :pswitch_28
    const/high16 v2, 0x10000000

    .line 217
    .line 218
    goto :goto_1

    .line 219
    :pswitch_29
    const v2, -0xac9202

    .line 220
    .line 221
    .line 222
    goto :goto_1

    .line 223
    :pswitch_2a
    const v2, -0x22ac9202

    .line 224
    .line 225
    .line 226
    goto :goto_1

    .line 227
    :pswitch_2b
    const v2, 0x2d3f51b5

    .line 228
    .line 229
    .line 230
    goto :goto_1

    .line 231
    :pswitch_2c
    const v2, -0xcccccd

    .line 232
    .line 233
    .line 234
    goto :goto_1

    .line 235
    :pswitch_2d
    const v2, -0xafafb0

    .line 236
    .line 237
    .line 238
    goto :goto_1

    .line 239
    :pswitch_2e
    const v2, -0x11111112

    .line 240
    .line 241
    .line 242
    :goto_1
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    if-ne v3, v2, :cond_0

    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_0
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 250
    .line 251
    .line 252
    iget-object v1, p0, Lzb/a;->b:Ljava/util/ArrayList;

    .line 253
    .line 254
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    if-eqz v2, :cond_2

    .line 263
    .line 264
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 269
    .line 270
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    check-cast v2, Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 275
    .line 276
    if-nez v2, :cond_1

    .line 277
    .line 278
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 279
    .line 280
    .line 281
    goto :goto_2

    .line 282
    :cond_1
    new-instance v3, Ldb/c;

    .line 283
    .line 284
    invoke-direct {v3, v2}, Ldb/c;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;)V

    .line 285
    .line 286
    .line 287
    iget-object v4, v2, Lio/github/rosemoe/sora/widget/CodeEditor;->i:Ldb/p;

    .line 288
    .line 289
    invoke-virtual {v4, v3}, Ldb/p;->a(Lbi/a;)I

    .line 290
    .line 291
    .line 292
    iget-object v3, v2, Lio/github/rosemoe/sora/widget/CodeEditor;->E1:Lyb/b;

    .line 293
    .line 294
    invoke-virtual {v3}, Lyb/b;->a()V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 298
    .line 299
    .line 300
    goto :goto_2

    .line 301
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 302
    .line 303
    goto/16 :goto_0

    .line 304
    .line 305
    :cond_3
    return-void

    .line 306
    nop

    .line 307
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2d
        :pswitch_2e
        :pswitch_23
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_b
        :pswitch_27
        :pswitch_26
        :pswitch_16
        :pswitch_25
        :pswitch_7
        :pswitch_24
        :pswitch_23
        :pswitch_16
        :pswitch_23
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1d
        :pswitch_1b
        :pswitch_16
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_7
        :pswitch_16
        :pswitch_16
        :pswitch_11
        :pswitch_b
        :pswitch_15
        :pswitch_10
        :pswitch_2d
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_b
        :pswitch_10
        :pswitch_2b
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_16
        :pswitch_b
        :pswitch_1d
        :pswitch_f
        :pswitch_0
        :pswitch_a
        :pswitch_23
        :pswitch_2c
        :pswitch_f
        :pswitch_9
        :pswitch_8
        :pswitch_b
        :pswitch_f
        :pswitch_7
        :pswitch_7
        :pswitch_1d
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a(Lio/github/rosemoe/sora/widget/CodeEditor;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lzb/a;->b:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-ne v2, p1, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 30
    .line 31
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    new-instance v0, Ldb/c;

    .line 38
    .line 39
    invoke-direct {v0, p1}, Ldb/c;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p1, Lio/github/rosemoe/sora/widget/CodeEditor;->i:Ldb/p;

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Ldb/p;->a(Lbi/a;)I

    .line 45
    .line 46
    .line 47
    iget-object v0, p1, Lio/github/rosemoe/sora/widget/CodeEditor;->E1:Lyb/b;

    .line 48
    .line 49
    invoke-virtual {v0}, Lyb/b;->a()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 53
    .line 54
    .line 55
    return-void
.end method
