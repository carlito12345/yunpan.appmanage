.class public Landroidx/leanback/widget/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgi/b;
.implements Lw4/e;
.implements Lyh/n;
.implements Lyh/m;


# instance fields
.field public final synthetic a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Landroidx/leanback/widget/i;->a:I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Landroidx/leanback/widget/i;->b:I

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/leanback/widget/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 2
    iput p2, p0, Landroidx/leanback/widget/i;->a:I

    iput p1, p0, Landroidx/leanback/widget/i;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 3
    iput p1, p0, Landroidx/leanback/widget/i;->a:I

    const/4 p1, 0x2

    iput p1, p0, Landroidx/leanback/widget/i;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2

    iput p2, p0, Landroidx/leanback/widget/i;->a:I

    packed-switch p2, :pswitch_data_0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    array-length p2, p1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    .line 6
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/leanback/widget/i;->b:I

    return-void

    .line 7
    :cond_0
    new-instance p1, Lyh/c0;

    const-string p2, "Unsupported Delta filter properties"

    invoke-direct {p1, p2}, Lyh/c0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    array-length p2, p1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    const/4 p2, 0x0

    aget-byte p1, p1, p2

    and-int/lit16 p2, p1, 0xff

    const/16 v1, 0x25

    if-gt p2, v1, :cond_1

    and-int/lit8 p2, p1, 0x1

    or-int/lit8 p2, p2, 0x2

    .line 10
    iput p2, p0, Landroidx/leanback/widget/i;->b:I

    ushr-int/2addr p1, v0

    add-int/lit8 p1, p1, 0xb

    shl-int p1, p2, p1

    .line 11
    iput p1, p0, Landroidx/leanback/widget/i;->b:I

    return-void

    .line 12
    :cond_1
    new-instance p1, Lyh/c0;

    const-string p2, "Unsupported LZMA2 properties"

    invoke-direct {p1, p2}, Lyh/c0;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Lw4/q;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/i;->n(Lw4/f;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/i;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public c(Ljava/io/InputStream;Lyh/b;)Ljava/io/InputStream;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/i;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lyh/s;

    .line 7
    .line 8
    iget v1, p0, Landroidx/leanback/widget/i;->b:I

    .line 9
    .line 10
    invoke-direct {v0, p1, v1, p2}, Lyh/s;-><init>(Ljava/io/InputStream;ILyh/b;)V

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :pswitch_0
    new-instance p2, Lyh/j;

    .line 15
    .line 16
    iget v0, p0, Landroidx/leanback/widget/i;->b:I

    .line 17
    .line 18
    invoke-direct {p2, p1, v0}, Lyh/j;-><init>(Ljava/io/InputStream;I)V

    .line 19
    .line 20
    .line 21
    return-object p2

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public d(Lw4/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/i;->n(Lw4/f;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/i;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    return v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/i;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroidx/leanback/widget/i;->b:I

    .line 7
    .line 8
    invoke-static {v0}, Lyh/s;->A(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    div-int/lit16 v0, v0, 0x400

    .line 13
    .line 14
    add-int/lit8 v0, v0, 0x68

    .line 15
    .line 16
    return v0

    .line 17
    :pswitch_0
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public g(II[B)I
    .locals 8

    .line 1
    iget v0, p0, Landroidx/leanback/widget/i;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    add-int/2addr p2, p1

    .line 7
    add-int/lit8 p2, p2, -0x8

    .line 8
    .line 9
    move v0, p1

    .line 10
    :goto_0
    if-gt v0, p2, :cond_6

    .line 11
    .line 12
    aget-byte v1, p3, v0

    .line 13
    .line 14
    and-int/lit16 v2, v1, 0xff

    .line 15
    .line 16
    const/16 v3, 0xef

    .line 17
    .line 18
    if-ne v2, v3, :cond_1

    .line 19
    .line 20
    add-int/lit8 v1, v0, 0x1

    .line 21
    .line 22
    aget-byte v2, p3, v1

    .line 23
    .line 24
    and-int/lit8 v3, v2, 0xd

    .line 25
    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    goto/16 :goto_3

    .line 29
    .line 30
    :cond_0
    add-int/lit8 v3, v0, 0x2

    .line 31
    .line 32
    aget-byte v4, p3, v3

    .line 33
    .line 34
    and-int/lit16 v4, v4, 0xff

    .line 35
    .line 36
    add-int/lit8 v5, v0, 0x3

    .line 37
    .line 38
    aget-byte v6, p3, v5

    .line 39
    .line 40
    and-int/lit16 v6, v6, 0xff

    .line 41
    .line 42
    iget v7, p0, Landroidx/leanback/widget/i;->b:I

    .line 43
    .line 44
    add-int/2addr v7, v0

    .line 45
    sub-int/2addr v7, p1

    .line 46
    and-int/lit16 v0, v2, 0xf0

    .line 47
    .line 48
    shl-int/lit8 v0, v0, 0xd

    .line 49
    .line 50
    shl-int/lit8 v4, v4, 0x9

    .line 51
    .line 52
    or-int/2addr v0, v4

    .line 53
    shl-int/lit8 v4, v6, 0x1

    .line 54
    .line 55
    or-int/2addr v0, v4

    .line 56
    sub-int/2addr v0, v7

    .line 57
    and-int/lit8 v2, v2, 0xf

    .line 58
    .line 59
    ushr-int/lit8 v4, v0, 0x8

    .line 60
    .line 61
    and-int/lit16 v4, v4, 0xf0

    .line 62
    .line 63
    or-int/2addr v2, v4

    .line 64
    int-to-byte v2, v2

    .line 65
    aput-byte v2, p3, v1

    .line 66
    .line 67
    ushr-int/lit8 v1, v0, 0x10

    .line 68
    .line 69
    and-int/lit8 v1, v1, 0xf

    .line 70
    .line 71
    ushr-int/lit8 v2, v0, 0x7

    .line 72
    .line 73
    and-int/lit8 v2, v2, 0x10

    .line 74
    .line 75
    or-int/2addr v1, v2

    .line 76
    shl-int/lit8 v2, v0, 0x4

    .line 77
    .line 78
    and-int/lit16 v2, v2, 0xe0

    .line 79
    .line 80
    or-int/2addr v1, v2

    .line 81
    int-to-byte v1, v1

    .line 82
    aput-byte v1, p3, v3

    .line 83
    .line 84
    ushr-int/lit8 v1, v0, 0x4

    .line 85
    .line 86
    and-int/lit8 v1, v1, 0x7f

    .line 87
    .line 88
    ushr-int/lit8 v0, v0, 0xd

    .line 89
    .line 90
    and-int/lit16 v0, v0, 0x80

    .line 91
    .line 92
    or-int/2addr v0, v1

    .line 93
    int-to-byte v0, v0

    .line 94
    aput-byte v0, p3, v5

    .line 95
    .line 96
    move v0, v3

    .line 97
    goto :goto_3

    .line 98
    :cond_1
    and-int/lit8 v1, v1, 0x7f

    .line 99
    .line 100
    const/16 v3, 0x17

    .line 101
    .line 102
    if-ne v1, v3, :cond_5

    .line 103
    .line 104
    add-int/lit8 v1, v0, 0x1

    .line 105
    .line 106
    aget-byte v1, p3, v1

    .line 107
    .line 108
    and-int/lit16 v1, v1, 0xff

    .line 109
    .line 110
    shl-int/lit8 v1, v1, 0x8

    .line 111
    .line 112
    or-int/2addr v1, v2

    .line 113
    add-int/lit8 v2, v0, 0x2

    .line 114
    .line 115
    aget-byte v4, p3, v2

    .line 116
    .line 117
    and-int/lit16 v4, v4, 0xff

    .line 118
    .line 119
    shl-int/lit8 v4, v4, 0x10

    .line 120
    .line 121
    or-int/2addr v1, v4

    .line 122
    add-int/lit8 v4, v0, 0x3

    .line 123
    .line 124
    aget-byte v4, p3, v4

    .line 125
    .line 126
    and-int/lit16 v4, v4, 0xff

    .line 127
    .line 128
    shl-int/lit8 v4, v4, 0x18

    .line 129
    .line 130
    or-int/2addr v1, v4

    .line 131
    and-int/lit16 v4, v1, 0xe80

    .line 132
    .line 133
    if-eqz v4, :cond_3

    .line 134
    .line 135
    add-int/lit8 v2, v0, 0x4

    .line 136
    .line 137
    invoke-static {v2, p3}, Lq4/a;->p(I[B)I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    shl-int/lit8 v4, v1, 0x8

    .line 142
    .line 143
    xor-int/2addr v4, v3

    .line 144
    const v5, 0xf8003

    .line 145
    .line 146
    .line 147
    and-int/2addr v4, v5

    .line 148
    const/4 v5, 0x3

    .line 149
    if-eq v4, v5, :cond_2

    .line 150
    .line 151
    :goto_1
    move v0, v2

    .line 152
    goto :goto_3

    .line 153
    :cond_2
    and-int/lit16 v1, v1, -0x1000

    .line 154
    .line 155
    ushr-int/lit8 v2, v3, 0x14

    .line 156
    .line 157
    add-int/2addr v1, v2

    .line 158
    shl-int/lit8 v2, v3, 0xc

    .line 159
    .line 160
    or-int/lit16 v2, v2, 0x117

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_3
    ushr-int/lit8 v4, v1, 0x1b

    .line 164
    .line 165
    add-int/lit16 v5, v1, -0x3100

    .line 166
    .line 167
    and-int/lit16 v5, v5, 0x3f80

    .line 168
    .line 169
    and-int/lit8 v6, v4, 0x1d

    .line 170
    .line 171
    if-lt v5, v6, :cond_4

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_4
    add-int/lit8 v2, v0, 0x4

    .line 175
    .line 176
    invoke-static {v2, p3}, Lq4/a;->o(I[B)I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    iget v5, p0, Landroidx/leanback/widget/i;->b:I

    .line 181
    .line 182
    add-int/2addr v5, v0

    .line 183
    sub-int/2addr v5, p1

    .line 184
    sub-int/2addr v2, v5

    .line 185
    ushr-int/lit8 v1, v1, 0xc

    .line 186
    .line 187
    shl-int/lit8 v5, v2, 0x14

    .line 188
    .line 189
    or-int/2addr v1, v5

    .line 190
    shl-int/lit8 v4, v4, 0x7

    .line 191
    .line 192
    or-int/2addr v3, v4

    .line 193
    add-int/lit16 v2, v2, 0x800

    .line 194
    .line 195
    and-int/lit16 v2, v2, -0x1000

    .line 196
    .line 197
    or-int/2addr v2, v3

    .line 198
    :goto_2
    invoke-static {v0, v2, p3}, Lq4/a;->Z(II[B)V

    .line 199
    .line 200
    .line 201
    add-int/lit8 v2, v0, 0x4

    .line 202
    .line 203
    invoke-static {v2, v1, p3}, Lq4/a;->Z(II[B)V

    .line 204
    .line 205
    .line 206
    add-int/lit8 v0, v0, 0x6

    .line 207
    .line 208
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x2

    .line 209
    .line 210
    goto/16 :goto_0

    .line 211
    .line 212
    :cond_6
    sub-int/2addr v0, p1

    .line 213
    iget p1, p0, Landroidx/leanback/widget/i;->b:I

    .line 214
    .line 215
    add-int/2addr p1, v0

    .line 216
    iput p1, p0, Landroidx/leanback/widget/i;->b:I

    .line 217
    .line 218
    return v0

    .line 219
    :pswitch_0
    add-int/2addr p2, p1

    .line 220
    add-int/lit8 p2, p2, -0x4

    .line 221
    .line 222
    move v0, p1

    .line 223
    :goto_4
    if-gt v0, p2, :cond_a

    .line 224
    .line 225
    add-int/lit8 v1, v0, 0x3

    .line 226
    .line 227
    aget-byte v1, p3, v1

    .line 228
    .line 229
    and-int/lit16 v2, v1, 0xfc

    .line 230
    .line 231
    const/16 v3, 0x94

    .line 232
    .line 233
    if-ne v2, v3, :cond_7

    .line 234
    .line 235
    invoke-static {v0, p3}, Lq4/a;->p(I[B)I

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    iget v2, p0, Landroidx/leanback/widget/i;->b:I

    .line 240
    .line 241
    add-int/2addr v2, v0

    .line 242
    sub-int/2addr v2, p1

    .line 243
    ushr-int/lit8 v2, v2, 0x2

    .line 244
    .line 245
    neg-int v2, v2

    .line 246
    add-int/2addr v1, v2

    .line 247
    const v2, 0x3ffffff

    .line 248
    .line 249
    .line 250
    and-int/2addr v1, v2

    .line 251
    const/high16 v2, -0x6c000000

    .line 252
    .line 253
    or-int/2addr v1, v2

    .line 254
    invoke-static {v0, v1, p3}, Lq4/a;->Z(II[B)V

    .line 255
    .line 256
    .line 257
    goto :goto_5

    .line 258
    :cond_7
    and-int/lit16 v1, v1, 0x9f

    .line 259
    .line 260
    const/16 v2, 0x90

    .line 261
    .line 262
    if-ne v1, v2, :cond_9

    .line 263
    .line 264
    invoke-static {v0, p3}, Lq4/a;->p(I[B)I

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    ushr-int/lit8 v2, v1, 0x1d

    .line 269
    .line 270
    and-int/lit8 v2, v2, 0x3

    .line 271
    .line 272
    ushr-int/lit8 v3, v1, 0x3

    .line 273
    .line 274
    const v4, 0x1ffffc

    .line 275
    .line 276
    .line 277
    and-int/2addr v3, v4

    .line 278
    or-int/2addr v2, v3

    .line 279
    const/high16 v3, 0x20000

    .line 280
    .line 281
    add-int v4, v2, v3

    .line 282
    .line 283
    const/high16 v5, 0x1c0000

    .line 284
    .line 285
    and-int/2addr v4, v5

    .line 286
    if-eqz v4, :cond_8

    .line 287
    .line 288
    goto :goto_5

    .line 289
    :cond_8
    iget v4, p0, Landroidx/leanback/widget/i;->b:I

    .line 290
    .line 291
    add-int/2addr v4, v0

    .line 292
    sub-int/2addr v4, p1

    .line 293
    ushr-int/lit8 v4, v4, 0xc

    .line 294
    .line 295
    neg-int v4, v4

    .line 296
    add-int/2addr v2, v4

    .line 297
    const v4, -0x6fffffe1

    .line 298
    .line 299
    .line 300
    and-int/2addr v1, v4

    .line 301
    and-int/lit8 v4, v2, 0x3

    .line 302
    .line 303
    shl-int/lit8 v4, v4, 0x1d

    .line 304
    .line 305
    or-int/2addr v1, v4

    .line 306
    const v4, 0x3fffc

    .line 307
    .line 308
    .line 309
    and-int/2addr v4, v2

    .line 310
    shl-int/lit8 v4, v4, 0x3

    .line 311
    .line 312
    or-int/2addr v1, v4

    .line 313
    and-int/2addr v2, v3

    .line 314
    neg-int v2, v2

    .line 315
    const/high16 v3, 0xe00000

    .line 316
    .line 317
    and-int/2addr v2, v3

    .line 318
    or-int/2addr v1, v2

    .line 319
    invoke-static {v0, v1, p3}, Lq4/a;->Z(II[B)V

    .line 320
    .line 321
    .line 322
    :cond_9
    :goto_5
    add-int/lit8 v0, v0, 0x4

    .line 323
    .line 324
    goto :goto_4

    .line 325
    :cond_a
    sub-int/2addr v0, p1

    .line 326
    iget p1, p0, Landroidx/leanback/widget/i;->b:I

    .line 327
    .line 328
    add-int/2addr p1, v0

    .line 329
    iput p1, p0, Landroidx/leanback/widget/i;->b:I

    .line 330
    .line 331
    return v0

    .line 332
    nop

    .line 333
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public h()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/i;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    return v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public i(Lw4/r;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/i;->n(Lw4/f;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public j(Lw4/i;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/i;->n(Lw4/f;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public k()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/leanback/widget/i;->b:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-gt v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Landroidx/leanback/widget/i;->b:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/16 v2, 0x9

    .line 11
    .line 12
    if-gt v0, v2, :cond_1

    .line 13
    .line 14
    sub-int/2addr v0, v1

    .line 15
    iput v0, p0, Landroidx/leanback/widget/i;->b:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    add-int/lit8 v0, v0, -0x6

    .line 19
    .line 20
    iput v0, p0, Landroidx/leanback/widget/i;->b:I

    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public l()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/i;->b:I

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    const/16 v0, 0x8

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/16 v0, 0xb

    .line 10
    .line 11
    :goto_0
    iput v0, p0, Landroidx/leanback/widget/i;->b:I

    .line 12
    .line 13
    return-void
.end method

.method public m()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/i;->b:I

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/16 v1, 0xa

    .line 8
    .line 9
    :goto_0
    iput v1, p0, Landroidx/leanback/widget/i;->b:I

    .line 10
    .line 11
    return-void
.end method

.method public n(Lw4/f;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lw4/f;->c:Lw4/k;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, v0, Lw4/k;->a:I

    .line 6
    .line 7
    invoke-virtual {v0}, Lw4/k;->c()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    add-int/2addr v0, v1

    .line 12
    iget v1, p0, Landroidx/leanback/widget/i;->b:I

    .line 13
    .line 14
    if-le v0, v1, :cond_0

    .line 15
    .line 16
    iput v0, p0, Landroidx/leanback/widget/i;->b:I

    .line 17
    .line 18
    :cond_0
    iget-object p1, p1, Lw4/f;->d:Lw4/l;

    .line 19
    .line 20
    iget-object v0, p1, Lb5/c;->b:[Ljava/lang/Object;

    .line 21
    .line 22
    array-length v0, v0

    .line 23
    const/4 v1, 0x0

    .line 24
    :goto_0
    if-ge v1, v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lw4/k;

    .line 31
    .line 32
    iget v3, v2, Lw4/k;->a:I

    .line 33
    .line 34
    invoke-virtual {v2}, Lw4/k;->c()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    add-int/2addr v2, v3

    .line 39
    iget v3, p0, Landroidx/leanback/widget/i;->b:I

    .line 40
    .line 41
    if-le v2, v3, :cond_1

    .line 42
    .line 43
    iput v2, p0, Landroidx/leanback/widget/i;->b:I

    .line 44
    .line 45
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    return-void
.end method
