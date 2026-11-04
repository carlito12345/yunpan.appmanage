.class public final La2/n1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c0:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public A:J

.field public B:J

.field public C:J

.field public D:I

.field public E:Z

.field public F:Z

.field public G:J

.field public H:F

.field public I:Ljava/nio/ByteBuffer;

.field public J:I

.field public K:Ljava/nio/ByteBuffer;

.field public L:Z

.field public M:Z

.field public N:Z

.field public O:Z

.field public P:Z

.field public Q:I

.field public R:Z

.field public S:Lr1/e;

.field public T:Landroid/media/AudioDeviceInfo;

.field public U:I

.field public V:Z

.field public W:J

.field public X:Z

.field public Y:Z

.field public Z:J

.field public final a:Landroid/content/Context;

.field public a0:J

.field public final b:Lv3/f;

.field public b0:Landroid/os/Handler;

.field public final c:La2/f1;

.field public final d:La2/v1;

.field public final e:Ls1/s;

.field public final f:La2/u1;

.field public final g:Lu7/y0;

.field public final h:Ljava/util/ArrayDeque;

.field public i:I

.field public j:La2/i1;

.field public final k:La2/m1;

.field public final l:La2/m1;

.field public m:Lz1/i;

.field public n:La1/i;

.field public o:La2/k1;

.field public p:La2/k1;

.field public q:Ls1/h;

.field public r:La2/y;

.field public s:La2/h1;

.field public t:La2/a1;

.field public u:Lr1/d;

.field public v:La2/l1;

.field public w:La2/l1;

.field public x:Lr1/h0;

.field public y:Z

.field public z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, La2/n1;->c0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(La2/j1;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, La2/j1;->a:Landroid/content/ContextWrapper;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    iput-object v1, p0, La2/n1;->a:Landroid/content/Context;

    .line 15
    .line 16
    sget-object v1, Lr1/d;->d:Lr1/d;

    .line 17
    .line 18
    iput-object v1, p0, La2/n1;->u:Lr1/d;

    .line 19
    .line 20
    iget-object v1, p1, La2/j1;->c:Lv3/f;

    .line 21
    .line 22
    iput-object v1, p0, La2/n1;->b:Lv3/f;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    iput v1, p0, La2/n1;->i:I

    .line 26
    .line 27
    iget-object p1, p1, La2/j1;->f:La2/d1;

    .line 28
    .line 29
    iput-object p1, p0, La2/n1;->r:La2/y;

    .line 30
    .line 31
    new-instance p1, La2/f1;

    .line 32
    .line 33
    invoke-direct {p1}, La2/f1;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, La2/n1;->c:La2/f1;

    .line 37
    .line 38
    new-instance v2, La2/v1;

    .line 39
    .line 40
    invoke-direct {v2}, La2/v1;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v2, p0, La2/n1;->d:La2/v1;

    .line 44
    .line 45
    new-instance v3, Ls1/s;

    .line 46
    .line 47
    invoke-direct {v3}, Ls1/s;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v3, p0, La2/n1;->e:Ls1/s;

    .line 51
    .line 52
    new-instance v3, La2/u1;

    .line 53
    .line 54
    invoke-direct {v3}, La2/u1;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v3, p0, La2/n1;->f:La2/u1;

    .line 58
    .line 59
    invoke-static {v2, p1}, Lu7/g0;->s(Ljava/lang/Object;Ljava/lang/Object;)Lu7/y0;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, p0, La2/n1;->g:Lu7/y0;

    .line 64
    .line 65
    const/high16 p1, 0x3f800000    # 1.0f

    .line 66
    .line 67
    iput p1, p0, La2/n1;->H:F

    .line 68
    .line 69
    iput v1, p0, La2/n1;->Q:I

    .line 70
    .line 71
    new-instance p1, Lr1/e;

    .line 72
    .line 73
    invoke-direct {p1}, Lr1/e;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object p1, p0, La2/n1;->S:Lr1/e;

    .line 77
    .line 78
    new-instance p1, La2/l1;

    .line 79
    .line 80
    sget-object v8, Lr1/h0;->d:Lr1/h0;

    .line 81
    .line 82
    const-wide/16 v4, 0x0

    .line 83
    .line 84
    const-wide/16 v6, 0x0

    .line 85
    .line 86
    move-object v2, p1

    .line 87
    move-object v3, v8

    .line 88
    invoke-direct/range {v2 .. v7}, La2/l1;-><init>(Lr1/h0;JJ)V

    .line 89
    .line 90
    .line 91
    iput-object p1, p0, La2/n1;->w:La2/l1;

    .line 92
    .line 93
    iput-object v8, p0, La2/n1;->x:Lr1/h0;

    .line 94
    .line 95
    iput-boolean v1, p0, La2/n1;->y:Z

    .line 96
    .line 97
    new-instance p1, Ljava/util/ArrayDeque;

    .line 98
    .line 99
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object p1, p0, La2/n1;->h:Ljava/util/ArrayDeque;

    .line 103
    .line 104
    new-instance p1, La2/m1;

    .line 105
    .line 106
    invoke-direct {p1}, La2/m1;-><init>()V

    .line 107
    .line 108
    .line 109
    iput-object p1, p0, La2/n1;->k:La2/m1;

    .line 110
    .line 111
    new-instance p1, La2/m1;

    .line 112
    .line 113
    invoke-direct {p1}, La2/m1;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-object p1, p0, La2/n1;->l:La2/m1;

    .line 117
    .line 118
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 119
    .line 120
    const/16 v1, 0x22

    .line 121
    .line 122
    const/4 v2, -0x1

    .line 123
    if-lt p1, v1, :cond_2

    .line 124
    .line 125
    if-nez v0, :cond_1

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_1
    invoke-static {v0}, La2/b1;->b(Landroid/content/ContextWrapper;)I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-eqz p1, :cond_2

    .line 133
    .line 134
    if-eq p1, v2, :cond_2

    .line 135
    .line 136
    move v2, p1

    .line 137
    :cond_2
    :goto_1
    iput v2, p0, La2/n1;->U:I

    .line 138
    .line 139
    return-void
.end method

.method public static i(Ljava/nio/ByteBuffer;I)I
    .locals 10

    .line 1
    const/16 v0, 0x1a

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x2

    .line 6
    const/16 v4, 0x14

    .line 7
    .line 8
    const/4 v5, 0x0

    .line 9
    if-eq p1, v4, :cond_19

    .line 10
    .line 11
    const/16 v0, 0x1e

    .line 12
    .line 13
    const/4 v4, -0x2

    .line 14
    const/16 v6, 0x400

    .line 15
    .line 16
    const/4 v7, -0x1

    .line 17
    if-eq p1, v0, :cond_12

    .line 18
    .line 19
    const/4 v0, 0x3

    .line 20
    const/16 v8, 0xa

    .line 21
    .line 22
    packed-switch p1, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    const/16 v3, 0x10

    .line 26
    .line 27
    packed-switch p1, :pswitch_data_1

    .line 28
    .line 29
    .line 30
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v0, "Unexpected audio encoding: "

    .line 33
    .line 34
    invoke-static {p1, v0}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0

    .line 42
    :pswitch_0
    new-array p1, v3, [B

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 52
    .line 53
    .line 54
    new-instance p0, Lj3/f;

    .line 55
    .line 56
    invoke-direct {p0, p1, v3}, Lj3/f;-><init>([BI)V

    .line 57
    .line 58
    .line 59
    invoke-static {p0}, Ll2/b;->n(Lj3/f;)Landroidx/media3/exoplayer/video/k;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    iget p0, p0, Landroidx/media3/exoplayer/video/k;->c:I

    .line 64
    .line 65
    return p0

    .line 66
    :pswitch_1
    return v6

    .line 67
    :pswitch_2
    const/16 p0, 0x200

    .line 68
    .line 69
    return p0

    .line 70
    :pswitch_3
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    sub-int/2addr v0, v8

    .line 79
    move v1, p1

    .line 80
    :goto_0
    if-gt v1, v0, :cond_2

    .line 81
    .line 82
    add-int/lit8 v6, v1, 0x4

    .line 83
    .line 84
    sget-object v8, Lu1/f0;->a:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    sget-object v9, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 95
    .line 96
    if-ne v8, v9, :cond_0

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->reverseBytes(I)I

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    :goto_1
    and-int/2addr v6, v4

    .line 104
    const v8, -0x78d9046

    .line 105
    .line 106
    .line 107
    if-ne v6, v8, :cond_1

    .line 108
    .line 109
    sub-int/2addr v1, p1

    .line 110
    goto :goto_2

    .line 111
    :cond_1
    add-int/2addr v1, v2

    .line 112
    goto :goto_0

    .line 113
    :cond_2
    const/4 v1, -0x1

    .line 114
    :goto_2
    if-ne v1, v7, :cond_3

    .line 115
    .line 116
    goto :goto_5

    .line 117
    :cond_3
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    add-int/2addr p1, v1

    .line 122
    add-int/lit8 p1, p1, 0x7

    .line 123
    .line 124
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    and-int/lit16 p1, p1, 0xff

    .line 129
    .line 130
    const/16 v0, 0xbb

    .line 131
    .line 132
    if-ne p1, v0, :cond_4

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_4
    const/4 v2, 0x0

    .line 136
    :goto_3
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    add-int/2addr p1, v1

    .line 141
    if-eqz v2, :cond_5

    .line 142
    .line 143
    const/16 v0, 0x9

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_5
    const/16 v0, 0x8

    .line 147
    .line 148
    :goto_4
    add-int/2addr p1, v0

    .line 149
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    shr-int/lit8 p0, p0, 0x4

    .line 154
    .line 155
    and-int/lit8 p0, p0, 0x7

    .line 156
    .line 157
    const/16 p1, 0x28

    .line 158
    .line 159
    shl-int p0, p1, p0

    .line 160
    .line 161
    mul-int/lit8 v5, p0, 0x10

    .line 162
    .line 163
    :goto_5
    return v5

    .line 164
    :pswitch_4
    const/16 p0, 0x800

    .line 165
    .line 166
    return p0

    .line 167
    :pswitch_5
    return v6

    .line 168
    :pswitch_6
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    sget-object v1, Lu1/f0;->a:Ljava/lang/String;

    .line 173
    .line 174
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 183
    .line 184
    if-ne p0, v1, :cond_6

    .line 185
    .line 186
    goto :goto_6

    .line 187
    :cond_6
    invoke-static {p1}, Ljava/lang/Integer;->reverseBytes(I)I

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    :goto_6
    const/high16 p0, -0x200000

    .line 192
    .line 193
    and-int v1, p1, p0

    .line 194
    .line 195
    if-ne v1, p0, :cond_7

    .line 196
    .line 197
    ushr-int/lit8 p0, p1, 0x13

    .line 198
    .line 199
    and-int/2addr p0, v0

    .line 200
    if-ne p0, v2, :cond_8

    .line 201
    .line 202
    :cond_7
    :goto_7
    const/4 p1, -0x1

    .line 203
    goto :goto_8

    .line 204
    :cond_8
    ushr-int/lit8 v1, p1, 0x11

    .line 205
    .line 206
    and-int/2addr v1, v0

    .line 207
    if-nez v1, :cond_9

    .line 208
    .line 209
    goto :goto_7

    .line 210
    :cond_9
    ushr-int/lit8 v4, p1, 0xc

    .line 211
    .line 212
    const/16 v5, 0xf

    .line 213
    .line 214
    and-int/2addr v4, v5

    .line 215
    ushr-int/2addr p1, v8

    .line 216
    and-int/2addr p1, v0

    .line 217
    if-eqz v4, :cond_7

    .line 218
    .line 219
    if-eq v4, v5, :cond_7

    .line 220
    .line 221
    if-ne p1, v0, :cond_a

    .line 222
    .line 223
    goto :goto_7

    .line 224
    :cond_a
    const/16 p1, 0x480

    .line 225
    .line 226
    if-eq v1, v2, :cond_c

    .line 227
    .line 228
    if-eq v1, v3, :cond_e

    .line 229
    .line 230
    if-ne v1, v0, :cond_b

    .line 231
    .line 232
    const/16 p1, 0x180

    .line 233
    .line 234
    goto :goto_8

    .line 235
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 236
    .line 237
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 238
    .line 239
    .line 240
    throw p0

    .line 241
    :cond_c
    if-ne p0, v0, :cond_d

    .line 242
    .line 243
    goto :goto_8

    .line 244
    :cond_d
    const/16 p1, 0x240

    .line 245
    .line 246
    :cond_e
    :goto_8
    if-eq p1, v7, :cond_f

    .line 247
    .line 248
    return p1

    .line 249
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 250
    .line 251
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 252
    .line 253
    .line 254
    throw p0

    .line 255
    :pswitch_7
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    add-int/2addr p1, v1

    .line 260
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    and-int/lit16 p1, p1, 0xf8

    .line 265
    .line 266
    shr-int/2addr p1, v0

    .line 267
    if-le p1, v8, :cond_11

    .line 268
    .line 269
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 270
    .line 271
    .line 272
    move-result p1

    .line 273
    add-int/lit8 p1, p1, 0x4

    .line 274
    .line 275
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 276
    .line 277
    .line 278
    move-result p1

    .line 279
    and-int/lit16 p1, p1, 0xc0

    .line 280
    .line 281
    shr-int/lit8 p1, p1, 0x6

    .line 282
    .line 283
    if-ne p1, v0, :cond_10

    .line 284
    .line 285
    goto :goto_9

    .line 286
    :cond_10
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 287
    .line 288
    .line 289
    move-result p1

    .line 290
    add-int/lit8 p1, p1, 0x4

    .line 291
    .line 292
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 293
    .line 294
    .line 295
    move-result p0

    .line 296
    and-int/lit8 p0, p0, 0x30

    .line 297
    .line 298
    shr-int/lit8 v0, p0, 0x4

    .line 299
    .line 300
    :goto_9
    sget-object p0, Ll2/b;->c:[I

    .line 301
    .line 302
    aget p0, p0, v0

    .line 303
    .line 304
    mul-int/lit16 p0, p0, 0x100

    .line 305
    .line 306
    goto :goto_a

    .line 307
    :cond_11
    const/16 p0, 0x600

    .line 308
    .line 309
    :goto_a
    return p0

    .line 310
    :cond_12
    :pswitch_8
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 311
    .line 312
    .line 313
    move-result p1

    .line 314
    const v0, -0xde4bec0

    .line 315
    .line 316
    .line 317
    if-eq p1, v0, :cond_18

    .line 318
    .line 319
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 320
    .line 321
    .line 322
    move-result p1

    .line 323
    const v0, -0x17bd3b8f

    .line 324
    .line 325
    .line 326
    if-ne p1, v0, :cond_13

    .line 327
    .line 328
    goto :goto_f

    .line 329
    :cond_13
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 330
    .line 331
    .line 332
    move-result p1

    .line 333
    const v0, 0x25205864

    .line 334
    .line 335
    .line 336
    if-ne p1, v0, :cond_14

    .line 337
    .line 338
    const/16 v6, 0x1000

    .line 339
    .line 340
    goto :goto_f

    .line 341
    :cond_14
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 342
    .line 343
    .line 344
    move-result p1

    .line 345
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 346
    .line 347
    .line 348
    move-result v0

    .line 349
    if-eq v0, v4, :cond_17

    .line 350
    .line 351
    if-eq v0, v7, :cond_16

    .line 352
    .line 353
    const/16 v4, 0x1f

    .line 354
    .line 355
    if-eq v0, v4, :cond_15

    .line 356
    .line 357
    add-int/lit8 v0, p1, 0x4

    .line 358
    .line 359
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    and-int/2addr v0, v2

    .line 364
    shl-int/lit8 v0, v0, 0x6

    .line 365
    .line 366
    add-int/2addr p1, v1

    .line 367
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 368
    .line 369
    .line 370
    move-result p0

    .line 371
    :goto_b
    and-int/lit16 p0, p0, 0xfc

    .line 372
    .line 373
    :goto_c
    shr-int/2addr p0, v3

    .line 374
    or-int/2addr p0, v0

    .line 375
    goto :goto_e

    .line 376
    :cond_15
    add-int/2addr v1, p1

    .line 377
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    and-int/lit8 v0, v0, 0x7

    .line 382
    .line 383
    shl-int/lit8 v0, v0, 0x4

    .line 384
    .line 385
    add-int/lit8 p1, p1, 0x6

    .line 386
    .line 387
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 388
    .line 389
    .line 390
    move-result p0

    .line 391
    :goto_d
    and-int/lit8 p0, p0, 0x3c

    .line 392
    .line 393
    goto :goto_c

    .line 394
    :cond_16
    add-int/lit8 v0, p1, 0x4

    .line 395
    .line 396
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 397
    .line 398
    .line 399
    move-result v0

    .line 400
    and-int/lit8 v0, v0, 0x7

    .line 401
    .line 402
    shl-int/lit8 v0, v0, 0x4

    .line 403
    .line 404
    add-int/lit8 p1, p1, 0x7

    .line 405
    .line 406
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 407
    .line 408
    .line 409
    move-result p0

    .line 410
    goto :goto_d

    .line 411
    :cond_17
    add-int/2addr v1, p1

    .line 412
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 413
    .line 414
    .line 415
    move-result v0

    .line 416
    and-int/2addr v0, v2

    .line 417
    shl-int/lit8 v0, v0, 0x6

    .line 418
    .line 419
    add-int/lit8 p1, p1, 0x4

    .line 420
    .line 421
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 422
    .line 423
    .line 424
    move-result p0

    .line 425
    goto :goto_b

    .line 426
    :goto_e
    add-int/2addr p0, v2

    .line 427
    mul-int/lit8 v6, p0, 0x20

    .line 428
    .line 429
    :cond_18
    :goto_f
    return v6

    .line 430
    :cond_19
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 431
    .line 432
    .line 433
    move-result p1

    .line 434
    and-int/2addr p1, v3

    .line 435
    if-nez p1, :cond_1a

    .line 436
    .line 437
    const/4 v4, 0x0

    .line 438
    goto :goto_12

    .line 439
    :cond_1a
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 440
    .line 441
    .line 442
    move-result p1

    .line 443
    const/16 v1, 0x1c

    .line 444
    .line 445
    const/4 v3, 0x0

    .line 446
    const/16 v4, 0x1c

    .line 447
    .line 448
    :goto_10
    if-ge v3, p1, :cond_1b

    .line 449
    .line 450
    add-int/lit8 v6, v3, 0x1b

    .line 451
    .line 452
    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->get(I)B

    .line 453
    .line 454
    .line 455
    move-result v6

    .line 456
    add-int/2addr v4, v6

    .line 457
    add-int/2addr v3, v2

    .line 458
    goto :goto_10

    .line 459
    :cond_1b
    add-int/lit8 p1, v4, 0x1a

    .line 460
    .line 461
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 462
    .line 463
    .line 464
    move-result p1

    .line 465
    const/4 v3, 0x0

    .line 466
    :goto_11
    if-ge v3, p1, :cond_1c

    .line 467
    .line 468
    add-int/lit8 v6, v4, 0x1b

    .line 469
    .line 470
    add-int/2addr v6, v3

    .line 471
    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->get(I)B

    .line 472
    .line 473
    .line 474
    move-result v6

    .line 475
    add-int/2addr v1, v6

    .line 476
    add-int/2addr v3, v2

    .line 477
    goto :goto_11

    .line 478
    :cond_1c
    add-int/2addr v4, v1

    .line 479
    :goto_12
    add-int/2addr v0, v4

    .line 480
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 481
    .line 482
    .line 483
    move-result p1

    .line 484
    add-int/lit8 p1, p1, 0x1b

    .line 485
    .line 486
    add-int/2addr p1, v4

    .line 487
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 488
    .line 489
    .line 490
    move-result v0

    .line 491
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    .line 492
    .line 493
    .line 494
    move-result v1

    .line 495
    sub-int/2addr v1, p1

    .line 496
    if-le v1, v2, :cond_1d

    .line 497
    .line 498
    add-int/2addr p1, v2

    .line 499
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 500
    .line 501
    .line 502
    move-result v5

    .line 503
    :cond_1d
    invoke-static {v0, v5}, Lv1/o;->e(BB)J

    .line 504
    .line 505
    .line 506
    move-result-wide p0

    .line 507
    const-wide/32 v0, 0xbb80

    .line 508
    .line 509
    .line 510
    mul-long p0, p0, v0

    .line 511
    .line 512
    const-wide/32 v0, 0xf4240

    .line 513
    .line 514
    .line 515
    div-long/2addr p0, v0

    .line 516
    long-to-int p1, p0

    .line 517
    return p1

    .line 518
    nop

    .line 519
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public final a(J)V
    .locals 9

    .line 1
    invoke-virtual {p0}, La2/n1;->w()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object v2, p0, La2/n1;->b:Lv3/f;

    .line 7
    .line 8
    if-nez v0, :cond_5

    .line 9
    .line 10
    invoke-virtual {p0}, La2/n1;->v()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    iget-object v0, p0, La2/n1;->x:Lr1/h0;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget v3, v0, Lr1/h0;->a:F

    .line 22
    .line 23
    iget-object v4, v2, Lv3/f;->d:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v4, Ls1/r;

    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    const/4 v5, 0x1

    .line 31
    const/4 v6, 0x0

    .line 32
    cmpl-float v7, v3, v6

    .line 33
    .line 34
    if-lez v7, :cond_0

    .line 35
    .line 36
    const/4 v7, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v7, 0x0

    .line 39
    :goto_0
    invoke-static {v7}, La9/o;->k(Z)V

    .line 40
    .line 41
    .line 42
    iget v7, v4, Ls1/r;->c:F

    .line 43
    .line 44
    cmpl-float v7, v7, v3

    .line 45
    .line 46
    if-eqz v7, :cond_1

    .line 47
    .line 48
    iput v3, v4, Ls1/r;->c:F

    .line 49
    .line 50
    iput-boolean v5, v4, Ls1/r;->i:Z

    .line 51
    .line 52
    :cond_1
    iget v3, v0, Lr1/h0;->b:F

    .line 53
    .line 54
    cmpl-float v6, v3, v6

    .line 55
    .line 56
    if-lez v6, :cond_2

    .line 57
    .line 58
    const/4 v6, 0x1

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const/4 v6, 0x0

    .line 61
    :goto_1
    invoke-static {v6}, La9/o;->k(Z)V

    .line 62
    .line 63
    .line 64
    iget v6, v4, Ls1/r;->d:F

    .line 65
    .line 66
    cmpl-float v6, v6, v3

    .line 67
    .line 68
    if-eqz v6, :cond_4

    .line 69
    .line 70
    iput v3, v4, Ls1/r;->d:F

    .line 71
    .line 72
    iput-boolean v5, v4, Ls1/r;->i:Z

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    sget-object v0, Lr1/h0;->d:Lr1/h0;

    .line 76
    .line 77
    :cond_4
    :goto_2
    iput-object v0, p0, La2/n1;->x:Lr1/h0;

    .line 78
    .line 79
    :goto_3
    move-object v4, v0

    .line 80
    goto :goto_4

    .line 81
    :cond_5
    sget-object v0, Lr1/h0;->d:Lr1/h0;

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :goto_4
    invoke-virtual {p0}, La2/n1;->v()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_6

    .line 89
    .line 90
    iget-boolean v1, p0, La2/n1;->y:Z

    .line 91
    .line 92
    iget-object v0, v2, Lv3/f;->c:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v0, La2/s1;

    .line 95
    .line 96
    iput-boolean v1, v0, La2/s1;->o:Z

    .line 97
    .line 98
    :cond_6
    iput-boolean v1, p0, La2/n1;->y:Z

    .line 99
    .line 100
    iget-object v0, p0, La2/n1;->h:Ljava/util/ArrayDeque;

    .line 101
    .line 102
    new-instance v1, La2/l1;

    .line 103
    .line 104
    const-wide/16 v2, 0x0

    .line 105
    .line 106
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 107
    .line 108
    .line 109
    move-result-wide v5

    .line 110
    iget-object p1, p0, La2/n1;->p:La2/k1;

    .line 111
    .line 112
    invoke-virtual {p0}, La2/n1;->j()J

    .line 113
    .line 114
    .line 115
    move-result-wide v2

    .line 116
    iget-object p1, p1, La2/k1;->e:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast p1, La2/x;

    .line 119
    .line 120
    iget p1, p1, La2/x;->b:I

    .line 121
    .line 122
    invoke-static {p1, v2, v3}, Lu1/f0;->K(IJ)J

    .line 123
    .line 124
    .line 125
    move-result-wide v7

    .line 126
    move-object v3, v1

    .line 127
    invoke-direct/range {v3 .. v8}, La2/l1;-><init>(Lr1/h0;JJ)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, La2/n1;->p:La2/k1;

    .line 134
    .line 135
    iget-object p1, p1, La2/k1;->f:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast p1, Ls1/h;

    .line 138
    .line 139
    iput-object p1, p0, La2/n1;->q:Ls1/h;

    .line 140
    .line 141
    invoke-virtual {p1}, Ls1/h;->b()V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, La2/n1;->n:La1/i;

    .line 145
    .line 146
    if-eqz p1, :cond_7

    .line 147
    .line 148
    iget-boolean p2, p0, La2/n1;->y:Z

    .line 149
    .line 150
    iget-object p1, p1, La1/i;->b:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast p1, La2/q1;

    .line 153
    .line 154
    iget-object p1, p1, La2/q1;->A1:La2/j0;

    .line 155
    .line 156
    iget-object v0, p1, La2/j0;->b:Landroid/os/Handler;

    .line 157
    .line 158
    if-eqz v0, :cond_7

    .line 159
    .line 160
    new-instance v1, La2/f0;

    .line 161
    .line 162
    const/4 v2, 0x0

    .line 163
    invoke-direct {v1, p1, p2, v2}, La2/f0;-><init>(Ljava/lang/Object;ZI)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 167
    .line 168
    .line 169
    :cond_7
    return-void
.end method

.method public final b(La2/x;)La2/a1;
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, La2/n1;->r:La2/y;

    .line 2
    .line 3
    check-cast v0, La2/d1;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, La2/d1;->a(La2/x;)La2/a1;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catch La2/v; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p1

    .line 10
    :goto_0
    move-object v8, v0

    .line 11
    goto :goto_1

    .line 12
    :catch_0
    move-exception v0

    .line 13
    goto :goto_0

    .line 14
    :goto_1
    new-instance v0, La2/m0;

    .line 15
    .line 16
    iget v2, p1, La2/x;->b:I

    .line 17
    .line 18
    iget-object v1, p0, La2/n1;->p:La2/k1;

    .line 19
    .line 20
    iget-object v1, v1, La2/k1;->c:Ljava/lang/Object;

    .line 21
    .line 22
    move-object v6, v1

    .line 23
    check-cast v6, Lr1/p;

    .line 24
    .line 25
    iget v4, p1, La2/x;->a:I

    .line 26
    .line 27
    iget v5, p1, La2/x;->f:I

    .line 28
    .line 29
    iget v3, p1, La2/x;->c:I

    .line 30
    .line 31
    iget-boolean v7, p1, La2/x;->e:Z

    .line 32
    .line 33
    move-object v1, v0

    .line 34
    invoke-direct/range {v1 .. v8}, La2/m0;-><init>(IIIILr1/p;ZLa2/v;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, La2/n1;->n:La1/i;

    .line 38
    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    invoke-virtual {p1, v0}, La1/i;->y(Ljava/lang/Exception;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    goto :goto_3

    .line 45
    :goto_2
    throw v0

    .line 46
    :goto_3
    goto :goto_2
.end method

.method public final c(Lr1/p;[I)V
    .locals 11

    .line 1
    iget-object v0, p0, La2/n1;->s:La2/h1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, La2/n1;->a:Landroid/content/Context;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    new-instance v0, La2/h1;

    .line 10
    .line 11
    invoke-direct {v0, p0}, La2/h1;-><init>(La2/n1;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, La2/n1;->s:La2/h1;

    .line 15
    .line 16
    iget-object v1, p0, La2/n1;->r:La2/y;

    .line 17
    .line 18
    check-cast v1, La2/d1;

    .line 19
    .line 20
    invoke-virtual {v1}, La2/d1;->f()V

    .line 21
    .line 22
    .line 23
    iget-object v3, v1, La2/d1;->f:Lu1/m;

    .line 24
    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    new-instance v3, Lu1/m;

    .line 28
    .line 29
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-direct {v3, v4}, Lu1/m;-><init>(Ljava/lang/Thread;)V

    .line 34
    .line 35
    .line 36
    iput-object v3, v1, La2/d1;->f:Lu1/m;

    .line 37
    .line 38
    :cond_0
    iget-object v1, v1, La2/d1;->f:Lu1/m;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Lu1/m;->a(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v0, p1, Lr1/p;->o:Ljava/lang/String;

    .line 44
    .line 45
    const-string v1, "audio/raw"

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const/4 v1, -0x1

    .line 52
    const/4 v3, 0x0

    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    iget v0, p1, Lr1/p;->I:I

    .line 56
    .line 57
    invoke-static {v0}, Lu1/f0;->D(I)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    invoke-static {v4}, La9/o;->k(Z)V

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Lu1/f0;->o(I)I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    iget v5, p1, Lr1/p;->G:I

    .line 69
    .line 70
    mul-int v4, v4, v5

    .line 71
    .line 72
    new-instance v6, Lu7/d0;

    .line 73
    .line 74
    invoke-direct {v6}, Lu7/d0;-><init>()V

    .line 75
    .line 76
    .line 77
    iget-object v7, p0, La2/n1;->g:Lu7/y0;

    .line 78
    .line 79
    invoke-virtual {v6, v7}, Lu7/a0;->d(Ljava/lang/Iterable;)V

    .line 80
    .line 81
    .line 82
    iget-object v7, p0, La2/n1;->e:Ls1/s;

    .line 83
    .line 84
    invoke-virtual {v6, v7}, Lu7/a0;->b(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    iget-object v7, p0, La2/n1;->b:Lv3/f;

    .line 88
    .line 89
    iget-object v7, v7, Lv3/f;->b:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v7, [Ls1/l;

    .line 92
    .line 93
    array-length v8, v7

    .line 94
    invoke-static {v8, v7}, Lu7/q;->b(I[Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v6, v8}, Lu7/a0;->e(I)V

    .line 98
    .line 99
    .line 100
    iget-object v9, v6, Lu7/a0;->a:[Ljava/lang/Object;

    .line 101
    .line 102
    iget v10, v6, Lu7/a0;->b:I

    .line 103
    .line 104
    invoke-static {v7, v3, v9, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    .line 106
    .line 107
    iget v7, v6, Lu7/a0;->b:I

    .line 108
    .line 109
    add-int/2addr v7, v8

    .line 110
    iput v7, v6, Lu7/a0;->b:I

    .line 111
    .line 112
    new-instance v7, Ls1/h;

    .line 113
    .line 114
    invoke-virtual {v6}, Lu7/d0;->g()Lu7/y0;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    invoke-direct {v7, v6}, Ls1/h;-><init>(Lu7/y0;)V

    .line 119
    .line 120
    .line 121
    iget-object v6, p0, La2/n1;->q:Ls1/h;

    .line 122
    .line 123
    invoke-virtual {v7, v6}, Ls1/h;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    if-eqz v6, :cond_2

    .line 128
    .line 129
    iget-object v7, p0, La2/n1;->q:Ls1/h;

    .line 130
    .line 131
    :cond_2
    iget v6, p1, Lr1/p;->J:I

    .line 132
    .line 133
    iget-object v8, p0, La2/n1;->d:La2/v1;

    .line 134
    .line 135
    iput v6, v8, La2/v1;->i:I

    .line 136
    .line 137
    iget v6, p1, Lr1/p;->K:I

    .line 138
    .line 139
    iput v6, v8, La2/v1;->j:I

    .line 140
    .line 141
    iget-object v6, p0, La2/n1;->c:La2/f1;

    .line 142
    .line 143
    iput-object p2, v6, La2/f1;->i:[I

    .line 144
    .line 145
    new-instance v6, Ls1/i;

    .line 146
    .line 147
    iget v8, p1, Lr1/p;->H:I

    .line 148
    .line 149
    invoke-direct {v6, v8, v5, v0}, Ls1/i;-><init>(III)V

    .line 150
    .line 151
    .line 152
    :try_start_0
    invoke-virtual {v7, v6}, Ls1/h;->a(Ls1/i;)Ls1/i;

    .line 153
    .line 154
    .line 155
    move-result-object v0
    :try_end_0
    .catch Ls1/k; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    new-instance v5, Lr1/o;

    .line 157
    .line 158
    invoke-direct {v5, p1}, Lr1/o;-><init>(Lr1/p;)V

    .line 159
    .line 160
    .line 161
    iget v6, v0, Ls1/i;->c:I

    .line 162
    .line 163
    iput v6, v5, Lr1/o;->H:I

    .line 164
    .line 165
    iget v8, v0, Ls1/i;->a:I

    .line 166
    .line 167
    iput v8, v5, Lr1/o;->G:I

    .line 168
    .line 169
    iget v0, v0, Ls1/i;->b:I

    .line 170
    .line 171
    iput v0, v5, Lr1/o;->F:I

    .line 172
    .line 173
    new-instance v8, Lr1/p;

    .line 174
    .line 175
    invoke-direct {v8, v5}, Lr1/p;-><init>(Lr1/o;)V

    .line 176
    .line 177
    .line 178
    invoke-static {v6}, Lu1/f0;->o(I)I

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    mul-int v5, v5, v0

    .line 183
    .line 184
    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    move-object v1, v0

    .line 187
    new-instance v0, La2/l0;

    .line 188
    .line 189
    invoke-direct {v0, v1, p1}, La2/l0;-><init>(Ljava/lang/Exception;Lr1/p;)V

    .line 190
    .line 191
    .line 192
    throw v0

    .line 193
    :cond_3
    new-instance v0, Ls1/h;

    .line 194
    .line 195
    sget-object v4, Lu7/y0;->e:Lu7/y0;

    .line 196
    .line 197
    invoke-direct {v0, v4}, Ls1/h;-><init>(Lu7/y0;)V

    .line 198
    .line 199
    .line 200
    move-object v8, p1

    .line 201
    move-object v7, v0

    .line 202
    const/4 v4, -0x1

    .line 203
    const/4 v5, -0x1

    .line 204
    :goto_0
    invoke-virtual {p0, v8, v1}, La2/n1;->g(Lr1/p;I)La2/s;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    :try_start_1
    iget-object v1, p0, La2/n1;->r:La2/y;

    .line 209
    .line 210
    check-cast v1, La2/d1;

    .line 211
    .line 212
    invoke-virtual {v1, v0}, La2/d1;->c(La2/s;)La2/x;

    .line 213
    .line 214
    .line 215
    move-result-object v6
    :try_end_1
    .catch La2/r; {:try_start_1 .. :try_end_1} :catch_1

    .line 216
    iget v1, v6, La2/x;->a:I

    .line 217
    .line 218
    const-string v9, ")"

    .line 219
    .line 220
    iget-object v0, v0, La2/s;->a:Lr1/p;

    .line 221
    .line 222
    iget-boolean v10, v6, La2/x;->e:Z

    .line 223
    .line 224
    if-eqz v1, :cond_6

    .line 225
    .line 226
    iget v1, v6, La2/x;->c:I

    .line 227
    .line 228
    if-eqz v1, :cond_5

    .line 229
    .line 230
    iput-boolean v3, p0, La2/n1;->X:Z

    .line 231
    .line 232
    new-instance v0, La2/k1;

    .line 233
    .line 234
    move-object v1, v0

    .line 235
    move-object v2, p1

    .line 236
    move-object v3, v8

    .line 237
    invoke-direct/range {v1 .. v7}, La2/k1;-><init>(Lr1/p;Lr1/p;IILa2/x;Ls1/h;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p0}, La2/n1;->n()Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-eqz v1, :cond_4

    .line 245
    .line 246
    iput-object v0, p0, La2/n1;->o:La2/k1;

    .line 247
    .line 248
    goto :goto_1

    .line 249
    :cond_4
    iput-object v0, p0, La2/n1;->p:La2/k1;

    .line 250
    .line 251
    :goto_1
    return-void

    .line 252
    :cond_5
    new-instance v1, La2/l0;

    .line 253
    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    const-string v3, "Invalid output channel config (isOffload="

    .line 257
    .line 258
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    invoke-direct {v1, v2, v0}, La2/l0;-><init>(Ljava/lang/String;Lr1/p;)V

    .line 272
    .line 273
    .line 274
    throw v1

    .line 275
    :cond_6
    new-instance v1, La2/l0;

    .line 276
    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    const-string v3, "Invalid output encoding (isOffload="

    .line 280
    .line 281
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    invoke-direct {v1, v2, v0}, La2/l0;-><init>(Ljava/lang/String;Lr1/p;)V

    .line 295
    .line 296
    .line 297
    throw v1

    .line 298
    :catch_1
    move-exception v0

    .line 299
    new-instance v1, La2/l0;

    .line 300
    .line 301
    invoke-direct {v1, v0, p1}, La2/l0;-><init>(Ljava/lang/Exception;Lr1/p;)V

    .line 302
    .line 303
    .line 304
    throw v1
.end method

.method public final d(J)V
    .locals 9

    .line 1
    iget-object v0, p0, La2/n1;->K:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, La2/n1;->l:La2/m1;

    .line 7
    .line 8
    iget-object v1, v0, La2/m1;->a:Ljava/lang/Exception;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    sget-object v1, La2/n1;->c0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-lez v1, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    iget-wide v3, v0, La2/m1;->c:J

    .line 27
    .line 28
    cmp-long v5, v1, v3

    .line 29
    .line 30
    if-gez v5, :cond_3

    .line 31
    .line 32
    :goto_0
    return-void

    .line 33
    :cond_3
    :goto_1
    iget-object v1, p0, La2/n1;->K:Ljava/nio/ByteBuffer;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x1

    .line 40
    const-wide/16 v3, 0x0

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    :try_start_0
    iget-object v6, p0, La2/n1;->t:La2/a1;

    .line 44
    .line 45
    iget-object v7, p0, La2/n1;->K:Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    iget v8, p0, La2/n1;->J:I

    .line 48
    .line 49
    invoke-virtual {v6, p1, p2, v8, v7}, La2/a1;->e(JILjava/nio/ByteBuffer;)Z

    .line 50
    .line 51
    .line 52
    move-result p1
    :try_end_0
    .catch La2/q; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 54
    .line 55
    .line 56
    move-result-wide v6

    .line 57
    iput-wide v6, p0, La2/n1;->W:J

    .line 58
    .line 59
    const/4 p2, 0x0

    .line 60
    iput-object p2, v0, La2/m1;->a:Ljava/lang/Exception;

    .line 61
    .line 62
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    iput-wide v6, v0, La2/m1;->b:J

    .line 68
    .line 69
    iput-wide v6, v0, La2/m1;->c:J

    .line 70
    .line 71
    iget-object v0, p0, La2/n1;->t:La2/a1;

    .line 72
    .line 73
    invoke-virtual {v0}, La2/a1;->c()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_5

    .line 78
    .line 79
    iget-wide v6, p0, La2/n1;->C:J

    .line 80
    .line 81
    cmp-long v0, v6, v3

    .line 82
    .line 83
    if-lez v0, :cond_4

    .line 84
    .line 85
    iput-boolean v5, p0, La2/n1;->Y:Z

    .line 86
    .line 87
    :cond_4
    iget-boolean v0, p0, La2/n1;->O:Z

    .line 88
    .line 89
    if-eqz v0, :cond_5

    .line 90
    .line 91
    iget-object v0, p0, La2/n1;->n:La1/i;

    .line 92
    .line 93
    if-eqz v0, :cond_5

    .line 94
    .line 95
    if-nez p1, :cond_5

    .line 96
    .line 97
    iget-boolean v3, p0, La2/n1;->Y:Z

    .line 98
    .line 99
    if-nez v3, :cond_5

    .line 100
    .line 101
    iget-object v0, v0, La1/i;->b:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v0, La2/q1;

    .line 104
    .line 105
    iget-object v0, v0, Ld2/u;->L:Ly1/b0;

    .line 106
    .line 107
    if-eqz v0, :cond_5

    .line 108
    .line 109
    iget-object v0, v0, Ly1/b0;->a:Ly1/f0;

    .line 110
    .line 111
    iput-boolean v2, v0, Ly1/f0;->Y:Z

    .line 112
    .line 113
    :cond_5
    iget-object v0, p0, La2/n1;->p:La2/k1;

    .line 114
    .line 115
    invoke-static {v0}, La2/k1;->a(La2/k1;)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_6

    .line 120
    .line 121
    iget-wide v3, p0, La2/n1;->B:J

    .line 122
    .line 123
    iget-object v0, p0, La2/n1;->K:Ljava/nio/ByteBuffer;

    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    sub-int/2addr v1, v0

    .line 130
    int-to-long v0, v1

    .line 131
    add-long/2addr v3, v0

    .line 132
    iput-wide v3, p0, La2/n1;->B:J

    .line 133
    .line 134
    :cond_6
    if-eqz p1, :cond_9

    .line 135
    .line 136
    iget-object p1, p0, La2/n1;->p:La2/k1;

    .line 137
    .line 138
    invoke-static {p1}, La2/k1;->a(La2/k1;)Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-nez p1, :cond_8

    .line 143
    .line 144
    iget-object p1, p0, La2/n1;->K:Ljava/nio/ByteBuffer;

    .line 145
    .line 146
    iget-object v0, p0, La2/n1;->I:Ljava/nio/ByteBuffer;

    .line 147
    .line 148
    if-ne p1, v0, :cond_7

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_7
    const/4 v2, 0x0

    .line 152
    :goto_2
    invoke-static {v2}, La9/o;->t(Z)V

    .line 153
    .line 154
    .line 155
    iget-wide v0, p0, La2/n1;->C:J

    .line 156
    .line 157
    iget p1, p0, La2/n1;->D:I

    .line 158
    .line 159
    int-to-long v2, p1

    .line 160
    iget p1, p0, La2/n1;->J:I

    .line 161
    .line 162
    int-to-long v4, p1

    .line 163
    mul-long v2, v2, v4

    .line 164
    .line 165
    add-long/2addr v2, v0

    .line 166
    iput-wide v2, p0, La2/n1;->C:J

    .line 167
    .line 168
    :cond_8
    iput-object p2, p0, La2/n1;->K:Ljava/nio/ByteBuffer;

    .line 169
    .line 170
    :cond_9
    return-void

    .line 171
    :catch_0
    move-exception p1

    .line 172
    iget-boolean p2, p1, La2/q;->b:Z

    .line 173
    .line 174
    if-eqz p2, :cond_c

    .line 175
    .line 176
    invoke-virtual {p0}, La2/n1;->j()J

    .line 177
    .line 178
    .line 179
    move-result-wide v6

    .line 180
    cmp-long v1, v6, v3

    .line 181
    .line 182
    if-lez v1, :cond_a

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_a
    iget-object v1, p0, La2/n1;->t:La2/a1;

    .line 186
    .line 187
    invoke-virtual {v1}, La2/a1;->c()Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-eqz v1, :cond_c

    .line 192
    .line 193
    iget-object v1, p0, La2/n1;->p:La2/k1;

    .line 194
    .line 195
    iget-object v1, v1, La2/k1;->e:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast v1, La2/x;

    .line 198
    .line 199
    iget-boolean v1, v1, La2/x;->e:Z

    .line 200
    .line 201
    if-nez v1, :cond_b

    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_b
    iput-boolean v2, p0, La2/n1;->X:Z

    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_c
    const/4 v2, 0x0

    .line 208
    :goto_3
    new-instance v1, La2/o0;

    .line 209
    .line 210
    iget-object v3, p0, La2/n1;->p:La2/k1;

    .line 211
    .line 212
    iget-object v3, v3, La2/k1;->c:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast v3, Lr1/p;

    .line 215
    .line 216
    iget p1, p1, La2/q;->a:I

    .line 217
    .line 218
    invoke-direct {v1, p1, v3, v2}, La2/o0;-><init>(ILr1/p;Z)V

    .line 219
    .line 220
    .line 221
    iget-object p1, p0, La2/n1;->n:La1/i;

    .line 222
    .line 223
    if-eqz p1, :cond_d

    .line 224
    .line 225
    invoke-virtual {p1, v1}, La1/i;->y(Ljava/lang/Exception;)V

    .line 226
    .line 227
    .line 228
    :cond_d
    if-nez p2, :cond_e

    .line 229
    .line 230
    invoke-virtual {v0, v1}, La2/m1;->a(Ljava/lang/Exception;)V

    .line 231
    .line 232
    .line 233
    return-void

    .line 234
    :cond_e
    throw v1
.end method

.method public final e()Z
    .locals 6

    .line 1
    iget-object v0, p0, La2/n1;->q:Ls1/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Ls1/h;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-wide/high16 v1, -0x8000000000000000L

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, v1, v2}, La2/n1;->d(J)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, La2/n1;->K:Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    :cond_0
    return v3

    .line 22
    :cond_1
    iget-object v0, p0, La2/n1;->q:Ls1/h;

    .line 23
    .line 24
    invoke-virtual {v0}, Ls1/h;->e()Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_3

    .line 29
    .line 30
    iget-boolean v5, v0, Ls1/h;->d:Z

    .line 31
    .line 32
    if-eqz v5, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    iput-boolean v4, v0, Ls1/h;->d:Z

    .line 36
    .line 37
    iget-object v0, v0, Ls1/h;->b:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Ls1/l;

    .line 44
    .line 45
    invoke-interface {v0}, Ls1/l;->f()V

    .line 46
    .line 47
    .line 48
    :cond_3
    :goto_0
    invoke-virtual {p0, v1, v2}, La2/n1;->q(J)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, La2/n1;->q:Ls1/h;

    .line 52
    .line 53
    invoke-virtual {v0}, Ls1/h;->d()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_5

    .line 58
    .line 59
    iget-object v0, p0, La2/n1;->K:Ljava/nio/ByteBuffer;

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_5

    .line 68
    .line 69
    :cond_4
    const/4 v3, 0x1

    .line 70
    :cond_5
    return v3
.end method

.method public final f()V
    .locals 11

    .line 1
    invoke-virtual {p0}, La2/n1;->n()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    iput-wide v1, p0, La2/n1;->z:J

    .line 11
    .line 12
    iput-wide v1, p0, La2/n1;->A:J

    .line 13
    .line 14
    iput-wide v1, p0, La2/n1;->B:J

    .line 15
    .line 16
    iput-wide v1, p0, La2/n1;->C:J

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, La2/n1;->Y:Z

    .line 20
    .line 21
    iput v0, p0, La2/n1;->D:I

    .line 22
    .line 23
    new-instance v10, La2/l1;

    .line 24
    .line 25
    iget-object v5, p0, La2/n1;->x:Lr1/h0;

    .line 26
    .line 27
    const-wide/16 v6, 0x0

    .line 28
    .line 29
    const-wide/16 v8, 0x0

    .line 30
    .line 31
    move-object v4, v10

    .line 32
    invoke-direct/range {v4 .. v9}, La2/l1;-><init>(Lr1/h0;JJ)V

    .line 33
    .line 34
    .line 35
    iput-object v10, p0, La2/n1;->w:La2/l1;

    .line 36
    .line 37
    iput-wide v1, p0, La2/n1;->G:J

    .line 38
    .line 39
    iput-object v3, p0, La2/n1;->v:La2/l1;

    .line 40
    .line 41
    iget-object v4, p0, La2/n1;->h:Ljava/util/ArrayDeque;

    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->clear()V

    .line 44
    .line 45
    .line 46
    iput-object v3, p0, La2/n1;->I:Ljava/nio/ByteBuffer;

    .line 47
    .line 48
    iput v0, p0, La2/n1;->J:I

    .line 49
    .line 50
    iput-object v3, p0, La2/n1;->K:Ljava/nio/ByteBuffer;

    .line 51
    .line 52
    iput-boolean v0, p0, La2/n1;->M:Z

    .line 53
    .line 54
    iput-boolean v0, p0, La2/n1;->L:Z

    .line 55
    .line 56
    iput-boolean v0, p0, La2/n1;->N:Z

    .line 57
    .line 58
    iget-object v0, p0, La2/n1;->d:La2/v1;

    .line 59
    .line 60
    iput-wide v1, v0, La2/v1;->o:J

    .line 61
    .line 62
    iget-object v0, p0, La2/n1;->p:La2/k1;

    .line 63
    .line 64
    iget-object v0, v0, La2/k1;->f:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v0, Ls1/h;

    .line 67
    .line 68
    iput-object v0, p0, La2/n1;->q:Ls1/h;

    .line 69
    .line 70
    invoke-virtual {v0}, Ls1/h;->b()V

    .line 71
    .line 72
    .line 73
    iput-object v3, p0, La2/n1;->j:La2/i1;

    .line 74
    .line 75
    iget-object v0, p0, La2/n1;->o:La2/k1;

    .line 76
    .line 77
    if-eqz v0, :cond_0

    .line 78
    .line 79
    iput-object v0, p0, La2/n1;->p:La2/k1;

    .line 80
    .line 81
    iput-object v3, p0, La2/n1;->o:La2/k1;

    .line 82
    .line 83
    :cond_0
    sget-object v0, La2/n1;->c0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, La2/n1;->t:La2/a1;

    .line 89
    .line 90
    iget-object v4, v0, La2/a1;->f:La2/e1;

    .line 91
    .line 92
    iget-object v4, v4, La2/e1;->d:Landroid/media/AudioTrack;

    .line 93
    .line 94
    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    const/4 v5, 0x3

    .line 99
    if-ne v4, v5, :cond_1

    .line 100
    .line 101
    iget-object v4, v0, La2/a1;->a:Landroid/media/AudioTrack;

    .line 102
    .line 103
    invoke-virtual {v4}, Landroid/media/AudioTrack;->pause()V

    .line 104
    .line 105
    .line 106
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 107
    .line 108
    const/16 v5, 0x1d

    .line 109
    .line 110
    if-lt v4, v5, :cond_2

    .line 111
    .line 112
    invoke-virtual {v0}, La2/a1;->c()Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-eqz v5, :cond_2

    .line 117
    .line 118
    iget-object v5, v0, La2/a1;->i:Lv3/f;

    .line 119
    .line 120
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    iget-object v6, v5, Lv3/f;->d:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v6, La2/a1;

    .line 126
    .line 127
    iget-object v6, v6, La2/a1;->a:Landroid/media/AudioTrack;

    .line 128
    .line 129
    iget-object v7, v5, Lv3/f;->c:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v7, La2/z0;

    .line 132
    .line 133
    invoke-static {v6, v7}, La2/c;->m(Landroid/media/AudioTrack;La2/z0;)V

    .line 134
    .line 135
    .line 136
    iget-object v5, v5, Lv3/f;->b:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v5, Landroid/os/Handler;

    .line 139
    .line 140
    invoke-virtual {v5, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    :cond_2
    const/16 v5, 0x18

    .line 144
    .line 145
    if-lt v4, v5, :cond_3

    .line 146
    .line 147
    iget-object v4, v0, La2/a1;->e:La2/w0;

    .line 148
    .line 149
    if-eqz v4, :cond_3

    .line 150
    .line 151
    iget-object v5, v4, La2/w0;->e:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v5, La2/v0;

    .line 154
    .line 155
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    invoke-static {v5}, La2/s0;->h(Ljava/lang/Object;)Landroid/media/AudioRouting$OnRoutingChangedListener;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    iget-object v6, v4, La2/w0;->b:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v6, Landroid/media/AudioTrack;

    .line 165
    .line 166
    invoke-static {v6, v5}, La2/s0;->r(Landroid/media/AudioTrack;Landroid/media/AudioRouting$OnRoutingChangedListener;)V

    .line 167
    .line 168
    .line 169
    iput-object v3, v4, La2/w0;->e:Ljava/lang/Object;

    .line 170
    .line 171
    iput-object v3, v0, La2/a1;->e:La2/w0;

    .line 172
    .line 173
    :cond_3
    iget-object v4, v0, La2/a1;->a:Landroid/media/AudioTrack;

    .line 174
    .line 175
    iget-object v0, v0, La2/a1;->j:Lu1/m;

    .line 176
    .line 177
    invoke-static {v3}, Lu1/f0;->k(Landroidx/media3/exoplayer/video/l;)Landroid/os/Handler;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    sget-object v6, La2/a1;->t:Ljava/lang/Object;

    .line 182
    .line 183
    monitor-enter v6

    .line 184
    :try_start_0
    sget-object v7, La2/a1;->u:Ljava/util/concurrent/ScheduledExecutorService;

    .line 185
    .line 186
    if-nez v7, :cond_4

    .line 187
    .line 188
    new-instance v7, Lu1/e0;

    .line 189
    .line 190
    invoke-direct {v7}, Lu1/e0;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-static {v7}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    sput-object v7, La2/a1;->u:Ljava/util/concurrent/ScheduledExecutorService;

    .line 198
    .line 199
    goto :goto_0

    .line 200
    :catchall_0
    move-exception v0

    .line 201
    goto :goto_1

    .line 202
    :cond_4
    :goto_0
    sget v7, La2/a1;->v:I

    .line 203
    .line 204
    add-int/lit8 v7, v7, 0x1

    .line 205
    .line 206
    sput v7, La2/a1;->v:I

    .line 207
    .line 208
    sget-object v7, La2/a1;->u:Ljava/util/concurrent/ScheduledExecutorService;

    .line 209
    .line 210
    new-instance v8, La2/e0;

    .line 211
    .line 212
    const/4 v9, 0x1

    .line 213
    invoke-direct {v8, v4, v5, v0, v9}, La2/e0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 214
    .line 215
    .line 216
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 217
    .line 218
    const-wide/16 v4, 0x14

    .line 219
    .line 220
    invoke-interface {v7, v8, v4, v5, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 221
    .line 222
    .line 223
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    iput-object v3, p0, La2/n1;->t:La2/a1;

    .line 225
    .line 226
    goto :goto_2

    .line 227
    :goto_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    throw v0

    .line 229
    :cond_5
    :goto_2
    iget-object v0, p0, La2/n1;->l:La2/m1;

    .line 230
    .line 231
    iput-object v3, v0, La2/m1;->a:Ljava/lang/Exception;

    .line 232
    .line 233
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    iput-wide v4, v0, La2/m1;->b:J

    .line 239
    .line 240
    iput-wide v4, v0, La2/m1;->c:J

    .line 241
    .line 242
    iget-object v0, p0, La2/n1;->k:La2/m1;

    .line 243
    .line 244
    iput-object v3, v0, La2/m1;->a:Ljava/lang/Exception;

    .line 245
    .line 246
    iput-wide v4, v0, La2/m1;->b:J

    .line 247
    .line 248
    iput-wide v4, v0, La2/m1;->c:J

    .line 249
    .line 250
    iput-wide v1, p0, La2/n1;->Z:J

    .line 251
    .line 252
    iput-wide v1, p0, La2/n1;->a0:J

    .line 253
    .line 254
    iget-object v0, p0, La2/n1;->b0:Landroid/os/Handler;

    .line 255
    .line 256
    if-eqz v0, :cond_6

    .line 257
    .line 258
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    :cond_6
    return-void
.end method

.method public final g(Lr1/p;I)La2/s;
    .locals 1

    .line 1
    new-instance v0, La2/s;

    .line 2
    .line 3
    invoke-direct {v0, p1}, La2/s;-><init>(Lr1/p;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, La2/n1;->u:Lr1/d;

    .line 7
    .line 8
    iput-object p1, v0, La2/s;->b:Lr1/d;

    .line 9
    .line 10
    iget p1, p0, La2/n1;->i:I

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    iput-boolean p1, v0, La2/s;->d:Z

    .line 18
    .line 19
    iget-object p1, p0, La2/n1;->T:Landroid/media/AudioDeviceInfo;

    .line 20
    .line 21
    iput-object p1, v0, La2/s;->c:Landroid/media/AudioDeviceInfo;

    .line 22
    .line 23
    iget p1, p0, La2/n1;->Q:I

    .line 24
    .line 25
    iput p1, v0, La2/s;->e:I

    .line 26
    .line 27
    iget-boolean p1, p0, La2/n1;->V:Z

    .line 28
    .line 29
    iput-boolean p1, v0, La2/s;->g:Z

    .line 30
    .line 31
    iput p2, v0, La2/s;->h:I

    .line 32
    .line 33
    iget p1, p0, La2/n1;->U:I

    .line 34
    .line 35
    iput p1, v0, La2/s;->f:I

    .line 36
    .line 37
    new-instance p1, La2/s;

    .line 38
    .line 39
    invoke-direct {p1, v0}, La2/s;-><init>(La2/s;)V

    .line 40
    .line 41
    .line 42
    return-object p1
.end method

.method public final h(Lr1/p;)I
    .locals 6

    .line 1
    iget v0, p1, Lr1/p;->I:I

    .line 2
    .line 3
    invoke-static {v0}, Lu1/f0;->D(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget v0, p1, Lr1/p;->I:I

    .line 13
    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    new-instance v0, Lr1/o;

    .line 17
    .line 18
    invoke-direct {v0, p1}, Lr1/o;-><init>(Lr1/p;)V

    .line 19
    .line 20
    .line 21
    iput v1, v0, Lr1/o;->H:I

    .line 22
    .line 23
    new-instance p1, Lr1/p;

    .line 24
    .line 25
    invoke-direct {p1, v0}, Lr1/p;-><init>(Lr1/o;)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    iget-object v4, p0, La2/n1;->r:La2/y;

    .line 32
    .line 33
    const/4 v5, -0x1

    .line 34
    invoke-virtual {p0, p1, v5}, La2/n1;->g(Lr1/p;I)La2/s;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast v4, La2/d1;

    .line 39
    .line 40
    invoke-virtual {v4, p1}, La2/d1;->b(La2/s;)La2/u;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget p1, p1, La2/u;->d:I

    .line 45
    .line 46
    if-eq p1, v2, :cond_3

    .line 47
    .line 48
    if-eq p1, v1, :cond_1

    .line 49
    .line 50
    return v3

    .line 51
    :cond_1
    if-eqz v0, :cond_2

    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    :cond_2
    return v1

    .line 55
    :cond_3
    return v2
.end method

.method public final j()J
    .locals 6

    .line 1
    iget-object v0, p0, La2/n1;->p:La2/k1;

    .line 2
    .line 3
    invoke-static {v0}, La2/k1;->a(La2/k1;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, La2/n1;->B:J

    .line 10
    .line 11
    iget-object v2, p0, La2/n1;->p:La2/k1;

    .line 12
    .line 13
    iget v2, v2, La2/k1;->b:I

    .line 14
    .line 15
    int-to-long v2, v2

    .line 16
    add-long/2addr v0, v2

    .line 17
    const-wide/16 v4, 0x1

    .line 18
    .line 19
    sub-long/2addr v0, v4

    .line 20
    div-long/2addr v0, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-wide v0, p0, La2/n1;->C:J

    .line 23
    .line 24
    :goto_0
    return-wide v0
.end method

.method public final k(JILjava/nio/ByteBuffer;)Z
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-wide/from16 v2, p1

    .line 4
    .line 5
    move/from16 v0, p3

    .line 6
    .line 7
    move-object/from16 v4, p4

    .line 8
    .line 9
    iget-object v5, v1, La2/n1;->I:Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    const/4 v6, 0x1

    .line 12
    const/4 v7, 0x0

    .line 13
    if-eqz v5, :cond_1

    .line 14
    .line 15
    if-ne v4, v5, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v5, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v5, 0x1

    .line 21
    :goto_1
    invoke-static {v5}, La9/o;->k(Z)V

    .line 22
    .line 23
    .line 24
    iget-object v5, v1, La2/n1;->o:La2/k1;

    .line 25
    .line 26
    const/4 v8, 0x0

    .line 27
    if-eqz v5, :cond_9

    .line 28
    .line 29
    invoke-virtual/range {p0 .. p0}, La2/n1;->e()Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-nez v5, :cond_2

    .line 34
    .line 35
    return v7

    .line 36
    :cond_2
    iget-object v5, v1, La2/n1;->t:La2/a1;

    .line 37
    .line 38
    if-eqz v5, :cond_4

    .line 39
    .line 40
    iget-object v5, v1, La2/n1;->p:La2/k1;

    .line 41
    .line 42
    iget-object v5, v5, La2/k1;->e:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v5, La2/x;

    .line 45
    .line 46
    iget-object v9, v1, La2/n1;->o:La2/k1;

    .line 47
    .line 48
    iget-object v9, v9, La2/k1;->d:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v9, Lr1/p;

    .line 51
    .line 52
    const/4 v10, -0x1

    .line 53
    invoke-virtual {v1, v9, v10}, La2/n1;->g(Lr1/p;I)La2/s;

    .line 54
    .line 55
    .line 56
    iget-object v9, v1, La2/n1;->o:La2/k1;

    .line 57
    .line 58
    iget-object v9, v9, La2/k1;->e:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v9, La2/x;

    .line 61
    .line 62
    invoke-virtual {v9, v5}, La2/x;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-nez v5, :cond_4

    .line 67
    .line 68
    invoke-virtual/range {p0 .. p0}, La2/n1;->p()V

    .line 69
    .line 70
    .line 71
    invoke-virtual/range {p0 .. p0}, La2/n1;->l()Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_3

    .line 76
    .line 77
    return v7

    .line 78
    :cond_3
    invoke-virtual/range {p0 .. p0}, La2/n1;->f()V

    .line 79
    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_4
    iget-object v5, v1, La2/n1;->o:La2/k1;

    .line 83
    .line 84
    iput-object v5, v1, La2/n1;->p:La2/k1;

    .line 85
    .line 86
    iput-object v8, v1, La2/n1;->o:La2/k1;

    .line 87
    .line 88
    iget-object v5, v1, La2/n1;->t:La2/a1;

    .line 89
    .line 90
    if-eqz v5, :cond_8

    .line 91
    .line 92
    invoke-virtual {v5}, La2/a1;->c()Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-eqz v5, :cond_8

    .line 97
    .line 98
    iget-object v5, v1, La2/n1;->p:La2/k1;

    .line 99
    .line 100
    iget-object v5, v5, La2/k1;->e:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v5, La2/x;

    .line 103
    .line 104
    iget-boolean v5, v5, La2/x;->k:Z

    .line 105
    .line 106
    if-eqz v5, :cond_8

    .line 107
    .line 108
    iget-object v5, v1, La2/n1;->t:La2/a1;

    .line 109
    .line 110
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 111
    .line 112
    const/16 v10, 0x1d

    .line 113
    .line 114
    if-ge v9, v10, :cond_5

    .line 115
    .line 116
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_5
    iget-object v11, v5, La2/a1;->a:Landroid/media/AudioTrack;

    .line 121
    .line 122
    invoke-virtual {v11}, Landroid/media/AudioTrack;->getPlayState()I

    .line 123
    .line 124
    .line 125
    move-result v12

    .line 126
    const/4 v13, 0x3

    .line 127
    if-eq v12, v13, :cond_6

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_6
    invoke-static {v11}, La2/c;->j(Landroid/media/AudioTrack;)V

    .line 131
    .line 132
    .line 133
    iget-object v5, v5, La2/a1;->f:La2/e1;

    .line 134
    .line 135
    iput-boolean v6, v5, La2/e1;->A:Z

    .line 136
    .line 137
    iget-object v5, v5, La2/e1;->h:La2/r0;

    .line 138
    .line 139
    iget-object v5, v5, La2/r0;->a:La2/q0;

    .line 140
    .line 141
    iput-boolean v6, v5, La2/q0;->f:Z

    .line 142
    .line 143
    :goto_2
    iget-object v5, v1, La2/n1;->t:La2/a1;

    .line 144
    .line 145
    iget-object v11, v1, La2/n1;->p:La2/k1;

    .line 146
    .line 147
    iget-object v11, v11, La2/k1;->c:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v11, Lr1/p;

    .line 150
    .line 151
    iget v12, v11, Lr1/p;->J:I

    .line 152
    .line 153
    if-ge v9, v10, :cond_7

    .line 154
    .line 155
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_7
    iget-object v5, v5, La2/a1;->a:Landroid/media/AudioTrack;

    .line 160
    .line 161
    iget v9, v11, Lr1/p;->K:I

    .line 162
    .line 163
    invoke-static {v5, v12, v9}, La2/c;->k(Landroid/media/AudioTrack;II)V

    .line 164
    .line 165
    .line 166
    :goto_3
    iput-boolean v6, v1, La2/n1;->Y:Z

    .line 167
    .line 168
    :cond_8
    :goto_4
    invoke-virtual/range {p0 .. p2}, La2/n1;->a(J)V

    .line 169
    .line 170
    .line 171
    :cond_9
    invoke-virtual/range {p0 .. p0}, La2/n1;->n()Z

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    iget-object v9, v1, La2/n1;->k:La2/m1;

    .line 176
    .line 177
    if-nez v5, :cond_b

    .line 178
    .line 179
    :try_start_0
    invoke-virtual/range {p0 .. p0}, La2/n1;->m()Z

    .line 180
    .line 181
    .line 182
    move-result v5
    :try_end_0
    .catch La2/m0; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    if-nez v5, :cond_b

    .line 184
    .line 185
    return v7

    .line 186
    :catch_0
    move-exception v0

    .line 187
    move-object v2, v0

    .line 188
    iget-boolean v0, v2, La2/m0;->a:Z

    .line 189
    .line 190
    if-nez v0, :cond_a

    .line 191
    .line 192
    invoke-virtual {v9, v2}, La2/m1;->a(Ljava/lang/Exception;)V

    .line 193
    .line 194
    .line 195
    return v7

    .line 196
    :cond_a
    throw v2

    .line 197
    :cond_b
    iput-object v8, v9, La2/m1;->a:Ljava/lang/Exception;

    .line 198
    .line 199
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    iput-wide v10, v9, La2/m1;->b:J

    .line 205
    .line 206
    iput-wide v10, v9, La2/m1;->c:J

    .line 207
    .line 208
    iget-boolean v5, v1, La2/n1;->F:Z

    .line 209
    .line 210
    const-wide/16 v12, 0x0

    .line 211
    .line 212
    if-eqz v5, :cond_d

    .line 213
    .line 214
    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 215
    .line 216
    .line 217
    move-result-wide v14

    .line 218
    iput-wide v14, v1, La2/n1;->G:J

    .line 219
    .line 220
    iput-boolean v7, v1, La2/n1;->E:Z

    .line 221
    .line 222
    iput-boolean v7, v1, La2/n1;->F:Z

    .line 223
    .line 224
    invoke-virtual/range {p0 .. p0}, La2/n1;->w()Z

    .line 225
    .line 226
    .line 227
    move-result v5

    .line 228
    if-eqz v5, :cond_c

    .line 229
    .line 230
    invoke-virtual/range {p0 .. p0}, La2/n1;->t()V

    .line 231
    .line 232
    .line 233
    :cond_c
    invoke-virtual/range {p0 .. p2}, La2/n1;->a(J)V

    .line 234
    .line 235
    .line 236
    iget-boolean v5, v1, La2/n1;->O:Z

    .line 237
    .line 238
    if-eqz v5, :cond_d

    .line 239
    .line 240
    invoke-virtual/range {p0 .. p0}, La2/n1;->o()V

    .line 241
    .line 242
    .line 243
    :cond_d
    iget-object v5, v1, La2/n1;->I:Ljava/nio/ByteBuffer;

    .line 244
    .line 245
    if-nez v5, :cond_19

    .line 246
    .line 247
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 252
    .line 253
    if-ne v5, v9, :cond_e

    .line 254
    .line 255
    const/4 v5, 0x1

    .line 256
    goto :goto_5

    .line 257
    :cond_e
    const/4 v5, 0x0

    .line 258
    :goto_5
    invoke-static {v5}, La9/o;->k(Z)V

    .line 259
    .line 260
    .line 261
    invoke-virtual/range {p4 .. p4}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 262
    .line 263
    .line 264
    move-result v5

    .line 265
    if-nez v5, :cond_f

    .line 266
    .line 267
    return v6

    .line 268
    :cond_f
    iget-object v5, v1, La2/n1;->p:La2/k1;

    .line 269
    .line 270
    invoke-static {v5}, La2/k1;->a(La2/k1;)Z

    .line 271
    .line 272
    .line 273
    move-result v5

    .line 274
    if-nez v5, :cond_10

    .line 275
    .line 276
    iget v5, v1, La2/n1;->D:I

    .line 277
    .line 278
    if-nez v5, :cond_10

    .line 279
    .line 280
    iget-object v5, v1, La2/n1;->p:La2/k1;

    .line 281
    .line 282
    iget-object v5, v5, La2/k1;->e:Ljava/lang/Object;

    .line 283
    .line 284
    check-cast v5, La2/x;

    .line 285
    .line 286
    iget v5, v5, La2/x;->a:I

    .line 287
    .line 288
    invoke-static {v4, v5}, La2/n1;->i(Ljava/nio/ByteBuffer;I)I

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    iput v5, v1, La2/n1;->D:I

    .line 293
    .line 294
    if-nez v5, :cond_10

    .line 295
    .line 296
    return v6

    .line 297
    :cond_10
    iget-object v5, v1, La2/n1;->v:La2/l1;

    .line 298
    .line 299
    if-eqz v5, :cond_12

    .line 300
    .line 301
    invoke-virtual/range {p0 .. p0}, La2/n1;->e()Z

    .line 302
    .line 303
    .line 304
    move-result v5

    .line 305
    if-nez v5, :cond_11

    .line 306
    .line 307
    return v7

    .line 308
    :cond_11
    invoke-virtual/range {p0 .. p2}, La2/n1;->a(J)V

    .line 309
    .line 310
    .line 311
    iput-object v8, v1, La2/n1;->v:La2/l1;

    .line 312
    .line 313
    :cond_12
    iget-wide v14, v1, La2/n1;->G:J

    .line 314
    .line 315
    iget-object v5, v1, La2/n1;->p:La2/k1;

    .line 316
    .line 317
    invoke-static {v5}, La2/k1;->a(La2/k1;)Z

    .line 318
    .line 319
    .line 320
    move-result v9

    .line 321
    if-eqz v9, :cond_13

    .line 322
    .line 323
    iget-wide v10, v1, La2/n1;->z:J

    .line 324
    .line 325
    iget-object v9, v1, La2/n1;->p:La2/k1;

    .line 326
    .line 327
    iget v9, v9, La2/k1;->a:I

    .line 328
    .line 329
    int-to-long v8, v9

    .line 330
    div-long/2addr v10, v8

    .line 331
    goto :goto_6

    .line 332
    :cond_13
    iget-wide v10, v1, La2/n1;->A:J

    .line 333
    .line 334
    :goto_6
    iget-object v8, v1, La2/n1;->d:La2/v1;

    .line 335
    .line 336
    iget-wide v8, v8, La2/v1;->o:J

    .line 337
    .line 338
    sub-long/2addr v10, v8

    .line 339
    iget-object v5, v5, La2/k1;->c:Ljava/lang/Object;

    .line 340
    .line 341
    check-cast v5, Lr1/p;

    .line 342
    .line 343
    iget v5, v5, Lr1/p;->H:I

    .line 344
    .line 345
    invoke-static {v5, v10, v11}, Lu1/f0;->K(IJ)J

    .line 346
    .line 347
    .line 348
    move-result-wide v8

    .line 349
    add-long/2addr v8, v14

    .line 350
    iget-boolean v5, v1, La2/n1;->E:Z

    .line 351
    .line 352
    if-nez v5, :cond_15

    .line 353
    .line 354
    sub-long v10, v8, v2

    .line 355
    .line 356
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    .line 357
    .line 358
    .line 359
    move-result-wide v10

    .line 360
    const-wide/32 v14, 0x30d40

    .line 361
    .line 362
    .line 363
    cmp-long v5, v10, v14

    .line 364
    .line 365
    if-lez v5, :cond_15

    .line 366
    .line 367
    iget-object v5, v1, La2/n1;->n:La1/i;

    .line 368
    .line 369
    if-eqz v5, :cond_14

    .line 370
    .line 371
    new-instance v10, La2/n0;

    .line 372
    .line 373
    invoke-direct {v10, v2, v3, v8, v9}, La2/n0;-><init>(JJ)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v5, v10}, La1/i;->y(Ljava/lang/Exception;)V

    .line 377
    .line 378
    .line 379
    :cond_14
    iput-boolean v6, v1, La2/n1;->E:Z

    .line 380
    .line 381
    :cond_15
    iget-boolean v5, v1, La2/n1;->E:Z

    .line 382
    .line 383
    if-eqz v5, :cond_17

    .line 384
    .line 385
    invoke-virtual/range {p0 .. p0}, La2/n1;->e()Z

    .line 386
    .line 387
    .line 388
    move-result v5

    .line 389
    if-nez v5, :cond_16

    .line 390
    .line 391
    return v7

    .line 392
    :cond_16
    sub-long v8, v2, v8

    .line 393
    .line 394
    iget-wide v10, v1, La2/n1;->G:J

    .line 395
    .line 396
    add-long/2addr v10, v8

    .line 397
    iput-wide v10, v1, La2/n1;->G:J

    .line 398
    .line 399
    iput-boolean v7, v1, La2/n1;->E:Z

    .line 400
    .line 401
    invoke-virtual/range {p0 .. p2}, La2/n1;->a(J)V

    .line 402
    .line 403
    .line 404
    iget-object v5, v1, La2/n1;->n:La1/i;

    .line 405
    .line 406
    if-eqz v5, :cond_17

    .line 407
    .line 408
    cmp-long v10, v8, v12

    .line 409
    .line 410
    if-eqz v10, :cond_17

    .line 411
    .line 412
    iget-object v5, v5, La1/i;->b:Ljava/lang/Object;

    .line 413
    .line 414
    check-cast v5, La2/q1;

    .line 415
    .line 416
    iput-boolean v6, v5, La2/q1;->J1:Z

    .line 417
    .line 418
    :cond_17
    iget-object v5, v1, La2/n1;->p:La2/k1;

    .line 419
    .line 420
    invoke-static {v5}, La2/k1;->a(La2/k1;)Z

    .line 421
    .line 422
    .line 423
    move-result v5

    .line 424
    if-eqz v5, :cond_18

    .line 425
    .line 426
    iget-wide v8, v1, La2/n1;->z:J

    .line 427
    .line 428
    invoke-virtual/range {p4 .. p4}, Ljava/nio/Buffer;->remaining()I

    .line 429
    .line 430
    .line 431
    move-result v5

    .line 432
    int-to-long v10, v5

    .line 433
    add-long/2addr v8, v10

    .line 434
    iput-wide v8, v1, La2/n1;->z:J

    .line 435
    .line 436
    goto :goto_7

    .line 437
    :cond_18
    iget-wide v8, v1, La2/n1;->A:J

    .line 438
    .line 439
    iget v5, v1, La2/n1;->D:I

    .line 440
    .line 441
    int-to-long v10, v5

    .line 442
    int-to-long v14, v0

    .line 443
    mul-long v10, v10, v14

    .line 444
    .line 445
    add-long/2addr v10, v8

    .line 446
    iput-wide v10, v1, La2/n1;->A:J

    .line 447
    .line 448
    :goto_7
    iput-object v4, v1, La2/n1;->I:Ljava/nio/ByteBuffer;

    .line 449
    .line 450
    iput v0, v1, La2/n1;->J:I

    .line 451
    .line 452
    :cond_19
    invoke-virtual/range {p0 .. p2}, La2/n1;->q(J)V

    .line 453
    .line 454
    .line 455
    iget-object v0, v1, La2/n1;->I:Ljava/nio/ByteBuffer;

    .line 456
    .line 457
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 458
    .line 459
    .line 460
    move-result v0

    .line 461
    if-nez v0, :cond_1a

    .line 462
    .line 463
    const/4 v0, 0x0

    .line 464
    iput-object v0, v1, La2/n1;->I:Ljava/nio/ByteBuffer;

    .line 465
    .line 466
    iput v7, v1, La2/n1;->J:I

    .line 467
    .line 468
    return v6

    .line 469
    :cond_1a
    iget-object v0, v1, La2/n1;->t:La2/a1;

    .line 470
    .line 471
    invoke-virtual {v0}, La2/a1;->b()J

    .line 472
    .line 473
    .line 474
    move-result-wide v2

    .line 475
    iget-object v0, v0, La2/a1;->f:La2/e1;

    .line 476
    .line 477
    iget-wide v4, v0, La2/e1;->v:J

    .line 478
    .line 479
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    cmp-long v10, v4, v8

    .line 485
    .line 486
    if-eqz v10, :cond_1b

    .line 487
    .line 488
    cmp-long v4, v2, v12

    .line 489
    .line 490
    if-lez v4, :cond_1b

    .line 491
    .line 492
    iget-object v2, v0, La2/e1;->b:Lu1/z;

    .line 493
    .line 494
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 495
    .line 496
    .line 497
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 498
    .line 499
    .line 500
    move-result-wide v2

    .line 501
    iget-wide v4, v0, La2/e1;->v:J

    .line 502
    .line 503
    sub-long/2addr v2, v4

    .line 504
    const-wide/16 v4, 0xc8

    .line 505
    .line 506
    cmp-long v0, v2, v4

    .line 507
    .line 508
    if-ltz v0, :cond_1b

    .line 509
    .line 510
    const-string v0, "Resetting stalled audio output"

    .line 511
    .line 512
    invoke-static {v0}, Lu1/a;->p(Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    invoke-virtual/range {p0 .. p0}, La2/n1;->f()V

    .line 516
    .line 517
    .line 518
    return v6

    .line 519
    :cond_1b
    return v7
.end method

.method public final l()Z
    .locals 10

    .line 1
    invoke-virtual {p0}, La2/n1;->n()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v1, 0x1d

    .line 10
    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, La2/n1;->t:La2/a1;

    .line 14
    .line 15
    invoke-virtual {v0}, La2/a1;->c()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-boolean v0, p0, La2/n1;->N:Z

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, La2/n1;->j()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    iget-object v2, p0, La2/n1;->t:La2/a1;

    .line 30
    .line 31
    invoke-virtual {v2}, La2/a1;->a()J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    iget-object v2, p0, La2/n1;->t:La2/a1;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    iget-object v2, v2, La2/a1;->a:Landroid/media/AudioTrack;

    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getSampleRate()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    int-to-long v5, v2

    .line 47
    const-wide/32 v7, 0xf4240

    .line 48
    .line 49
    .line 50
    sget-object v9, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    .line 51
    .line 52
    invoke-static/range {v3 .. v9}, Lu1/f0;->M(JJJLjava/math/RoundingMode;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v2

    .line 56
    cmp-long v4, v0, v2

    .line 57
    .line 58
    if-lez v4, :cond_1

    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const/4 v0, 0x0

    .line 63
    :goto_0
    return v0
.end method

.method public final m()Z
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, La2/n1;->k:La2/m1;

    .line 4
    .line 5
    iget-object v3, v2, La2/m1;->a:Ljava/lang/Exception;

    .line 6
    .line 7
    if-nez v3, :cond_1

    .line 8
    .line 9
    :cond_0
    const/4 v2, 0x0

    .line 10
    goto :goto_1

    .line 11
    :cond_1
    sget-object v3, La2/n1;->c0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-lez v3, :cond_2

    .line 18
    .line 19
    :goto_0
    const/4 v2, 0x1

    .line 20
    goto :goto_1

    .line 21
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    iget-wide v5, v2, La2/m1;->c:J

    .line 26
    .line 27
    cmp-long v2, v3, v5

    .line 28
    .line 29
    if-gez v2, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :goto_1
    if-eqz v2, :cond_3

    .line 33
    .line 34
    return v1

    .line 35
    :cond_3
    :try_start_0
    iget-object v2, p0, La2/n1;->p:La2/k1;

    .line 36
    .line 37
    iget-object v2, v2, La2/k1;->e:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v2, La2/x;

    .line 40
    .line 41
    invoke-virtual {p0, v2}, La2/n1;->b(La2/x;)La2/a1;

    .line 42
    .line 43
    .line 44
    move-result-object v2
    :try_end_0
    .catch La2/m0; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_4

    .line 46
    :catch_0
    move-exception v2

    .line 47
    iget-object v3, p0, La2/n1;->p:La2/k1;

    .line 48
    .line 49
    iget-object v3, v3, La2/k1;->e:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v3, La2/x;

    .line 52
    .line 53
    iget v3, v3, La2/x;->f:I

    .line 54
    .line 55
    :goto_2
    const v4, 0xf4240

    .line 56
    .line 57
    .line 58
    if-le v3, v4, :cond_11

    .line 59
    .line 60
    div-int/lit8 v3, v3, 0x2

    .line 61
    .line 62
    iget-object v4, p0, La2/n1;->p:La2/k1;

    .line 63
    .line 64
    iget v5, v4, La2/k1;->b:I

    .line 65
    .line 66
    const/4 v6, -0x1

    .line 67
    if-eq v5, v6, :cond_4

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_4
    const/4 v5, 0x1

    .line 71
    :goto_3
    rem-int v6, v3, v5

    .line 72
    .line 73
    if-eqz v6, :cond_5

    .line 74
    .line 75
    sub-int/2addr v5, v6

    .line 76
    add-int/2addr v5, v3

    .line 77
    move v3, v5

    .line 78
    :cond_5
    iget-object v4, v4, La2/k1;->e:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v4, La2/x;

    .line 81
    .line 82
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    new-instance v5, La2/w;

    .line 86
    .line 87
    invoke-direct {v5, v4}, La2/w;-><init>(La2/x;)V

    .line 88
    .line 89
    .line 90
    iput v3, v5, La2/w;->f:I

    .line 91
    .line 92
    new-instance v11, La2/x;

    .line 93
    .line 94
    invoke-direct {v11, v5}, La2/x;-><init>(La2/w;)V

    .line 95
    .line 96
    .line 97
    :try_start_1
    invoke-virtual {p0, v11}, La2/n1;->b(La2/x;)La2/a1;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    iget-object v5, p0, La2/n1;->p:La2/k1;

    .line 102
    .line 103
    new-instance v13, La2/k1;

    .line 104
    .line 105
    iget v10, v5, La2/k1;->b:I

    .line 106
    .line 107
    iget-object v6, v5, La2/k1;->c:Ljava/lang/Object;

    .line 108
    .line 109
    move-object v7, v6

    .line 110
    check-cast v7, Lr1/p;

    .line 111
    .line 112
    iget-object v6, v5, La2/k1;->f:Ljava/lang/Object;

    .line 113
    .line 114
    move-object v12, v6

    .line 115
    check-cast v12, Ls1/h;

    .line 116
    .line 117
    iget-object v6, v5, La2/k1;->d:Ljava/lang/Object;

    .line 118
    .line 119
    move-object v8, v6

    .line 120
    check-cast v8, Lr1/p;

    .line 121
    .line 122
    iget v9, v5, La2/k1;->a:I

    .line 123
    .line 124
    move-object v6, v13

    .line 125
    invoke-direct/range {v6 .. v12}, La2/k1;-><init>(Lr1/p;Lr1/p;IILa2/x;Ls1/h;)V

    .line 126
    .line 127
    .line 128
    iput-object v13, p0, La2/n1;->p:La2/k1;
    :try_end_1
    .catch La2/m0; {:try_start_1 .. :try_end_1} :catch_1

    .line 129
    .line 130
    move-object v2, v4

    .line 131
    :goto_4
    iput-object v2, p0, La2/n1;->t:La2/a1;

    .line 132
    .line 133
    new-instance v3, La2/i1;

    .line 134
    .line 135
    iget-object v4, p0, La2/n1;->p:La2/k1;

    .line 136
    .line 137
    iget-object v4, v4, La2/k1;->e:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v4, La2/x;

    .line 140
    .line 141
    invoke-direct {v3, p0, v4}, La2/i1;-><init>(La2/n1;La2/x;)V

    .line 142
    .line 143
    .line 144
    iput-object v3, p0, La2/n1;->j:La2/i1;

    .line 145
    .line 146
    iget-object v2, v2, La2/a1;->j:Lu1/m;

    .line 147
    .line 148
    invoke-virtual {v2, v3}, Lu1/m;->a(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    iget-object v2, p0, La2/n1;->t:La2/a1;

    .line 152
    .line 153
    invoke-virtual {v2}, La2/a1;->c()Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-eqz v2, :cond_7

    .line 158
    .line 159
    iget-object v2, p0, La2/n1;->p:La2/k1;

    .line 160
    .line 161
    iget-object v3, v2, La2/k1;->e:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v3, La2/x;

    .line 164
    .line 165
    iget-boolean v3, v3, La2/x;->k:Z

    .line 166
    .line 167
    if-eqz v3, :cond_7

    .line 168
    .line 169
    iget-object v3, p0, La2/n1;->t:La2/a1;

    .line 170
    .line 171
    iget-object v2, v2, La2/k1;->c:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v2, Lr1/p;

    .line 174
    .line 175
    iget v4, v2, Lr1/p;->J:I

    .line 176
    .line 177
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 178
    .line 179
    const/16 v6, 0x1d

    .line 180
    .line 181
    if-ge v5, v6, :cond_6

    .line 182
    .line 183
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_6
    iget-object v3, v3, La2/a1;->a:Landroid/media/AudioTrack;

    .line 188
    .line 189
    iget v2, v2, Lr1/p;->K:I

    .line 190
    .line 191
    invoke-static {v3, v4, v2}, La2/c;->k(Landroid/media/AudioTrack;II)V

    .line 192
    .line 193
    .line 194
    :cond_7
    :goto_5
    iget-object v2, p0, La2/n1;->m:Lz1/i;

    .line 195
    .line 196
    if-eqz v2, :cond_9

    .line 197
    .line 198
    iget-object v3, p0, La2/n1;->t:La2/a1;

    .line 199
    .line 200
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 204
    .line 205
    const/16 v5, 0x1f

    .line 206
    .line 207
    if-ge v4, v5, :cond_8

    .line 208
    .line 209
    goto :goto_6

    .line 210
    :cond_8
    invoke-virtual {v2}, Lz1/i;->a()Landroid/media/metrics/LogSessionId;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-static {}, Lx0/d;->c()Landroid/media/metrics/LogSessionId;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    invoke-static {v2, v4}, Lx0/d;->s(Landroid/media/metrics/LogSessionId;Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    if-nez v4, :cond_9

    .line 223
    .line 224
    iget-object v3, v3, La2/a1;->a:Landroid/media/AudioTrack;

    .line 225
    .line 226
    invoke-static {v3, v2}, La2/b;->q(Landroid/media/AudioTrack;Landroid/media/metrics/LogSessionId;)V

    .line 227
    .line 228
    .line 229
    :cond_9
    :goto_6
    invoke-virtual {p0}, La2/n1;->n()Z

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    if-eqz v2, :cond_a

    .line 234
    .line 235
    iget-object v2, p0, La2/n1;->t:La2/a1;

    .line 236
    .line 237
    iget v3, p0, La2/n1;->H:F

    .line 238
    .line 239
    iget-object v2, v2, La2/a1;->a:Landroid/media/AudioTrack;

    .line 240
    .line 241
    invoke-static {v2, v3}, La2/t0;->o(Landroid/media/AudioTrack;F)V

    .line 242
    .line 243
    .line 244
    :cond_a
    iget-object v2, p0, La2/n1;->S:Lr1/e;

    .line 245
    .line 246
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    .line 248
    .line 249
    iget-object v2, p0, La2/n1;->T:Landroid/media/AudioDeviceInfo;

    .line 250
    .line 251
    if-eqz v2, :cond_b

    .line 252
    .line 253
    iget-object v3, p0, La2/n1;->t:La2/a1;

    .line 254
    .line 255
    iget-object v3, v3, La2/a1;->a:Landroid/media/AudioTrack;

    .line 256
    .line 257
    invoke-static {v3, v2}, La2/a;->p(Landroid/media/AudioTrack;Landroid/media/AudioDeviceInfo;)V

    .line 258
    .line 259
    .line 260
    :cond_b
    iput-boolean v0, p0, La2/n1;->F:Z

    .line 261
    .line 262
    iget-object v2, p0, La2/n1;->t:La2/a1;

    .line 263
    .line 264
    iget-object v2, v2, La2/a1;->a:Landroid/media/AudioTrack;

    .line 265
    .line 266
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getAudioSessionId()I

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    iget v3, p0, La2/n1;->Q:I

    .line 271
    .line 272
    if-eq v2, v3, :cond_c

    .line 273
    .line 274
    const/4 v3, 0x1

    .line 275
    goto :goto_7

    .line 276
    :cond_c
    const/4 v3, 0x0

    .line 277
    :goto_7
    iput v2, p0, La2/n1;->Q:I

    .line 278
    .line 279
    iget-object v2, p0, La2/n1;->n:La1/i;

    .line 280
    .line 281
    if-eqz v2, :cond_10

    .line 282
    .line 283
    iget-object v4, p0, La2/n1;->p:La2/k1;

    .line 284
    .line 285
    new-instance v5, La2/k0;

    .line 286
    .line 287
    iget-object v4, v4, La2/k1;->e:Ljava/lang/Object;

    .line 288
    .line 289
    check-cast v4, La2/x;

    .line 290
    .line 291
    iget v4, v4, La2/x;->a:I

    .line 292
    .line 293
    invoke-direct {v5}, La2/k0;-><init>()V

    .line 294
    .line 295
    .line 296
    iget-object v2, v2, La1/i;->b:Ljava/lang/Object;

    .line 297
    .line 298
    check-cast v2, La2/q1;

    .line 299
    .line 300
    iget-object v2, v2, La2/q1;->A1:La2/j0;

    .line 301
    .line 302
    iget-object v4, v2, La2/j0;->b:Landroid/os/Handler;

    .line 303
    .line 304
    if-eqz v4, :cond_d

    .line 305
    .line 306
    new-instance v6, La2/z;

    .line 307
    .line 308
    invoke-direct {v6, v2, v5, v1}, La2/z;-><init>(La2/j0;La2/k0;I)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 312
    .line 313
    .line 314
    :cond_d
    if-eqz v3, :cond_10

    .line 315
    .line 316
    iput-boolean v0, p0, La2/n1;->R:Z

    .line 317
    .line 318
    iget-object v2, p0, La2/n1;->p:La2/k1;

    .line 319
    .line 320
    iget-object v3, v2, La2/k1;->e:Ljava/lang/Object;

    .line 321
    .line 322
    check-cast v3, La2/x;

    .line 323
    .line 324
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    .line 326
    .line 327
    new-instance v4, La2/w;

    .line 328
    .line 329
    invoke-direct {v4, v3}, La2/w;-><init>(La2/x;)V

    .line 330
    .line 331
    .line 332
    iget v3, p0, La2/n1;->Q:I

    .line 333
    .line 334
    iput v3, v4, La2/w;->h:I

    .line 335
    .line 336
    new-instance v10, La2/x;

    .line 337
    .line 338
    invoke-direct {v10, v4}, La2/x;-><init>(La2/w;)V

    .line 339
    .line 340
    .line 341
    new-instance v3, La2/k1;

    .line 342
    .line 343
    iget-object v4, v2, La2/k1;->d:Ljava/lang/Object;

    .line 344
    .line 345
    move-object v7, v4

    .line 346
    check-cast v7, Lr1/p;

    .line 347
    .line 348
    iget v8, v2, La2/k1;->a:I

    .line 349
    .line 350
    iget-object v4, v2, La2/k1;->c:Ljava/lang/Object;

    .line 351
    .line 352
    move-object v6, v4

    .line 353
    check-cast v6, Lr1/p;

    .line 354
    .line 355
    iget v9, v2, La2/k1;->b:I

    .line 356
    .line 357
    iget-object v2, v2, La2/k1;->f:Ljava/lang/Object;

    .line 358
    .line 359
    move-object v11, v2

    .line 360
    check-cast v11, Ls1/h;

    .line 361
    .line 362
    move-object v5, v3

    .line 363
    invoke-direct/range {v5 .. v11}, La2/k1;-><init>(Lr1/p;Lr1/p;IILa2/x;Ls1/h;)V

    .line 364
    .line 365
    .line 366
    iput-object v3, p0, La2/n1;->p:La2/k1;

    .line 367
    .line 368
    iget-object v2, p0, La2/n1;->o:La2/k1;

    .line 369
    .line 370
    if-eqz v2, :cond_e

    .line 371
    .line 372
    iget-object v3, v2, La2/k1;->e:Ljava/lang/Object;

    .line 373
    .line 374
    check-cast v3, La2/x;

    .line 375
    .line 376
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 377
    .line 378
    .line 379
    new-instance v4, La2/w;

    .line 380
    .line 381
    invoke-direct {v4, v3}, La2/w;-><init>(La2/x;)V

    .line 382
    .line 383
    .line 384
    iget v3, p0, La2/n1;->Q:I

    .line 385
    .line 386
    iput v3, v4, La2/w;->h:I

    .line 387
    .line 388
    new-instance v10, La2/x;

    .line 389
    .line 390
    invoke-direct {v10, v4}, La2/x;-><init>(La2/w;)V

    .line 391
    .line 392
    .line 393
    new-instance v3, La2/k1;

    .line 394
    .line 395
    iget-object v4, v2, La2/k1;->d:Ljava/lang/Object;

    .line 396
    .line 397
    move-object v7, v4

    .line 398
    check-cast v7, Lr1/p;

    .line 399
    .line 400
    iget v8, v2, La2/k1;->a:I

    .line 401
    .line 402
    iget-object v4, v2, La2/k1;->c:Ljava/lang/Object;

    .line 403
    .line 404
    move-object v6, v4

    .line 405
    check-cast v6, Lr1/p;

    .line 406
    .line 407
    iget v9, v2, La2/k1;->b:I

    .line 408
    .line 409
    iget-object v2, v2, La2/k1;->f:Ljava/lang/Object;

    .line 410
    .line 411
    move-object v11, v2

    .line 412
    check-cast v11, Ls1/h;

    .line 413
    .line 414
    move-object v5, v3

    .line 415
    invoke-direct/range {v5 .. v11}, La2/k1;-><init>(Lr1/p;Lr1/p;IILa2/x;Ls1/h;)V

    .line 416
    .line 417
    .line 418
    iput-object v3, p0, La2/n1;->o:La2/k1;

    .line 419
    .line 420
    :cond_e
    iget-object v2, p0, La2/n1;->n:La1/i;

    .line 421
    .line 422
    iget v3, p0, La2/n1;->Q:I

    .line 423
    .line 424
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 425
    .line 426
    iget-object v2, v2, La1/i;->b:Ljava/lang/Object;

    .line 427
    .line 428
    check-cast v2, La2/q1;

    .line 429
    .line 430
    const/16 v5, 0x23

    .line 431
    .line 432
    if-lt v4, v5, :cond_f

    .line 433
    .line 434
    iget-object v4, v2, La2/q1;->C1:Lv3/f;

    .line 435
    .line 436
    if-eqz v4, :cond_f

    .line 437
    .line 438
    invoke-virtual {v4, v3}, Lv3/f;->N(I)V

    .line 439
    .line 440
    .line 441
    :cond_f
    iget-object v2, v2, La2/q1;->A1:La2/j0;

    .line 442
    .line 443
    iget-object v4, v2, La2/j0;->b:Landroid/os/Handler;

    .line 444
    .line 445
    if-eqz v4, :cond_10

    .line 446
    .line 447
    new-instance v5, La2/g0;

    .line 448
    .line 449
    invoke-direct {v5, v3, v1, v2}, La2/g0;-><init>(IILjava/lang/Object;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 453
    .line 454
    .line 455
    :cond_10
    return v0

    .line 456
    :catch_1
    move-exception v4

    .line 457
    const-class v5, Ljava/lang/Throwable;

    .line 458
    .line 459
    :try_start_2
    const-string v6, "addSuppressed"

    .line 460
    .line 461
    new-array v7, v0, [Ljava/lang/Class;

    .line 462
    .line 463
    aput-object v5, v7, v1

    .line 464
    .line 465
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 466
    .line 467
    .line 468
    move-result-object v5

    .line 469
    new-array v6, v0, [Ljava/lang/Object;

    .line 470
    .line 471
    aput-object v4, v6, v1

    .line 472
    .line 473
    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 474
    .line 475
    .line 476
    goto/16 :goto_2

    .line 477
    .line 478
    :catch_2
    nop

    .line 479
    goto/16 :goto_2

    .line 480
    .line 481
    :cond_11
    iget-object v1, p0, La2/n1;->p:La2/k1;

    .line 482
    .line 483
    iget-object v1, v1, La2/k1;->e:Ljava/lang/Object;

    .line 484
    .line 485
    check-cast v1, La2/x;

    .line 486
    .line 487
    iget-boolean v1, v1, La2/x;->e:Z

    .line 488
    .line 489
    if-nez v1, :cond_12

    .line 490
    .line 491
    goto :goto_8

    .line 492
    :cond_12
    iput-boolean v0, p0, La2/n1;->X:Z

    .line 493
    .line 494
    :goto_8
    goto :goto_a

    .line 495
    :goto_9
    throw v2

    .line 496
    :goto_a
    goto :goto_9
.end method

.method public final n()Z
    .locals 1

    .line 1
    iget-object v0, p0, La2/n1;->t:La2/a1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final o()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, La2/n1;->O:Z

    .line 3
    .line 4
    invoke-virtual {p0}, La2/n1;->n()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, La2/n1;->t:La2/a1;

    .line 11
    .line 12
    iget-object v1, v0, La2/a1;->f:La2/e1;

    .line 13
    .line 14
    iget-wide v2, v1, La2/e1;->u:J

    .line 15
    .line 16
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    cmp-long v6, v2, v4

    .line 22
    .line 23
    if-eqz v6, :cond_0

    .line 24
    .line 25
    iget-object v2, v1, La2/e1;->b:Lu1/z;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    invoke-static {v2, v3}, Lu1/f0;->G(J)J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    iput-wide v2, v1, La2/e1;->u:J

    .line 39
    .line 40
    :cond_0
    invoke-virtual {v1}, La2/e1;->a()J

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    iget v4, v1, La2/e1;->e:I

    .line 45
    .line 46
    invoke-static {v4, v2, v3}, Lu1/f0;->K(IJ)J

    .line 47
    .line 48
    .line 49
    move-result-wide v2

    .line 50
    iput-wide v2, v1, La2/e1;->j:J

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    iget-object v1, v1, La2/e1;->h:La2/r0;

    .line 54
    .line 55
    invoke-virtual {v1, v2}, La2/r0;->a(I)V

    .line 56
    .line 57
    .line 58
    iget-boolean v1, v0, La2/a1;->k:Z

    .line 59
    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    invoke-virtual {v0}, La2/a1;->c()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    :cond_1
    iget-object v0, v0, La2/a1;->a:Landroid/media/AudioTrack;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 71
    .line 72
    .line 73
    :cond_2
    return-void
.end method

.method public final p()V
    .locals 7

    .line 1
    iget-boolean v0, p0, La2/n1;->M:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, La2/n1;->M:Z

    .line 7
    .line 8
    iget-object v1, p0, La2/n1;->t:La2/a1;

    .line 9
    .line 10
    invoke-virtual {v1}, La2/a1;->c()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iput-boolean v2, p0, La2/n1;->N:Z

    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, La2/n1;->t:La2/a1;

    .line 20
    .line 21
    iget-boolean v3, v1, La2/a1;->k:Z

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iput-boolean v0, v1, La2/a1;->k:Z

    .line 27
    .line 28
    invoke-virtual {v1}, La2/a1;->b()J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    iget-object v0, v1, La2/a1;->f:La2/e1;

    .line 33
    .line 34
    invoke-virtual {v0}, La2/e1;->a()J

    .line 35
    .line 36
    .line 37
    move-result-wide v5

    .line 38
    iput-wide v5, v0, La2/e1;->w:J

    .line 39
    .line 40
    iget-object v5, v0, La2/e1;->b:Lu1/z;

    .line 41
    .line 42
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 46
    .line 47
    .line 48
    move-result-wide v5

    .line 49
    invoke-static {v5, v6}, Lu1/f0;->G(J)J

    .line 50
    .line 51
    .line 52
    move-result-wide v5

    .line 53
    iput-wide v5, v0, La2/e1;->u:J

    .line 54
    .line 55
    iput-wide v3, v0, La2/e1;->x:J

    .line 56
    .line 57
    iget-object v0, v1, La2/a1;->a:Landroid/media/AudioTrack;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 60
    .line 61
    .line 62
    iput v2, v1, La2/a1;->p:I

    .line 63
    .line 64
    :cond_2
    :goto_0
    return-void
.end method

.method public final q(J)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2}, La2/n1;->d(J)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, La2/n1;->K:Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, La2/n1;->q:Ls1/h;

    .line 10
    .line 11
    invoke-virtual {v0}, Ls1/h;->e()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, La2/n1;->I:Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, v0}, La2/n1;->u(Ljava/nio/ByteBuffer;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1, p2}, La2/n1;->d(J)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void

    .line 28
    :cond_2
    :goto_0
    iget-object v0, p0, La2/n1;->q:Ls1/h;

    .line 29
    .line 30
    invoke-virtual {v0}, Ls1/h;->d()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_9

    .line 35
    .line 36
    :cond_3
    iget-object v0, p0, La2/n1;->q:Ls1/h;

    .line 37
    .line 38
    invoke-virtual {v0}, Ls1/h;->e()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_4

    .line 43
    .line 44
    sget-object v0, Ls1/l;->a:Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_4
    iget-object v1, v0, Ls1/h;->c:[Ljava/nio/ByteBuffer;

    .line 48
    .line 49
    invoke-virtual {v0}, Ls1/h;->c()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    aget-object v1, v1, v2

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_5

    .line 60
    .line 61
    move-object v0, v1

    .line 62
    goto :goto_1

    .line 63
    :cond_5
    sget-object v1, Ls1/l;->a:Ljava/nio/ByteBuffer;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ls1/h;->f(Ljava/nio/ByteBuffer;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v0, Ls1/h;->c:[Ljava/nio/ByteBuffer;

    .line 69
    .line 70
    invoke-virtual {v0}, Ls1/h;->c()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    aget-object v0, v1, v0

    .line 75
    .line 76
    :goto_1
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_6

    .line 81
    .line 82
    invoke-virtual {p0, v0}, La2/n1;->u(Ljava/nio/ByteBuffer;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p1, p2}, La2/n1;->d(J)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, La2/n1;->K:Ljava/nio/ByteBuffer;

    .line 89
    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    return-void

    .line 93
    :cond_6
    iget-object v0, p0, La2/n1;->I:Ljava/nio/ByteBuffer;

    .line 94
    .line 95
    if-eqz v0, :cond_9

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-nez v0, :cond_7

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_7
    iget-object v0, p0, La2/n1;->q:Ls1/h;

    .line 105
    .line 106
    iget-object v1, p0, La2/n1;->I:Ljava/nio/ByteBuffer;

    .line 107
    .line 108
    invoke-virtual {v0}, Ls1/h;->e()Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_2

    .line 113
    .line 114
    iget-boolean v2, v0, Ls1/h;->d:Z

    .line 115
    .line 116
    if-eqz v2, :cond_8

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_8
    invoke-virtual {v0, v1}, Ls1/h;->f(Ljava/nio/ByteBuffer;)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_9
    :goto_2
    return-void
.end method

.method public final r()V
    .locals 9

    .line 1
    iget-object v0, p0, La2/n1;->p:La2/k1;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, La2/n1;->o:La2/k1;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-object v0, p0, La2/n1;->p:La2/k1;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, La2/n1;->o:La2/k1;

    .line 13
    .line 14
    :cond_0
    :try_start_0
    iget-object v0, p0, La2/n1;->r:La2/y;

    .line 15
    .line 16
    iget-object v1, p0, La2/n1;->p:La2/k1;

    .line 17
    .line 18
    iget-object v1, v1, La2/k1;->d:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Lr1/p;

    .line 21
    .line 22
    const/4 v2, -0x1

    .line 23
    invoke-virtual {p0, v1, v2}, La2/n1;->g(Lr1/p;I)La2/s;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v0, La2/d1;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, La2/d1;->c(La2/s;)La2/x;

    .line 30
    .line 31
    .line 32
    move-result-object v7
    :try_end_0
    .catch La2/r; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    new-instance v0, La2/k1;

    .line 34
    .line 35
    iget-object v1, p0, La2/n1;->p:La2/k1;

    .line 36
    .line 37
    iget-object v2, v1, La2/k1;->c:Ljava/lang/Object;

    .line 38
    .line 39
    move-object v3, v2

    .line 40
    check-cast v3, Lr1/p;

    .line 41
    .line 42
    iget-object v2, v1, La2/k1;->d:Ljava/lang/Object;

    .line 43
    .line 44
    move-object v4, v2

    .line 45
    check-cast v4, Lr1/p;

    .line 46
    .line 47
    iget v5, v1, La2/k1;->a:I

    .line 48
    .line 49
    iget v6, v1, La2/k1;->b:I

    .line 50
    .line 51
    iget-object v1, v1, La2/k1;->f:Ljava/lang/Object;

    .line 52
    .line 53
    move-object v8, v1

    .line 54
    check-cast v8, Ls1/h;

    .line 55
    .line 56
    move-object v2, v0

    .line 57
    invoke-direct/range {v2 .. v8}, La2/k1;-><init>(Lr1/p;Lr1/p;IILa2/x;Ls1/h;)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, La2/n1;->p:La2/k1;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 65
    .line 66
    new-instance v2, La2/l0;

    .line 67
    .line 68
    iget-object v3, p0, La2/n1;->p:La2/k1;

    .line 69
    .line 70
    iget-object v3, v3, La2/k1;->c:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v3, Lr1/p;

    .line 73
    .line 74
    invoke-direct {v2, v0, v3}, La2/l0;-><init>(Ljava/lang/Exception;Lr1/p;)V

    .line 75
    .line 76
    .line 77
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    throw v1

    .line 81
    :cond_1
    :goto_0
    invoke-virtual {p0}, La2/n1;->f()V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final s()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, La2/n1;->f()V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, La2/n1;->g:Lu7/y0;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lu7/g0;->o(I)Lu7/e0;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :goto_0
    invoke-virtual {v1}, Lu7/e0;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Lu7/e0;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ls1/l;

    .line 22
    .line 23
    invoke-interface {v2}, Ls1/l;->reset()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v1, p0, La2/n1;->e:Ls1/s;

    .line 28
    .line 29
    invoke-virtual {v1}, Ls1/m;->reset()V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, La2/n1;->f:La2/u1;

    .line 33
    .line 34
    invoke-virtual {v1}, Ls1/m;->reset()V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, La2/n1;->q:Ls1/h;

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    :goto_1
    iget-object v3, v1, Ls1/h;->a:Lu7/y0;

    .line 43
    .line 44
    invoke-virtual {v3}, Lu7/y0;->size()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-ge v2, v4, :cond_1

    .line 49
    .line 50
    invoke-virtual {v3, v2}, Lu7/y0;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Ls1/l;

    .line 55
    .line 56
    sget-object v4, Ls1/j;->b:Ls1/j;

    .line 57
    .line 58
    invoke-interface {v3, v4}, Ls1/l;->d(Ls1/j;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v3}, Ls1/l;->reset()V

    .line 62
    .line 63
    .line 64
    add-int/lit8 v2, v2, 0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    iget-object v2, v1, Ls1/h;->b:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 70
    .line 71
    .line 72
    new-array v2, v0, [Ljava/nio/ByteBuffer;

    .line 73
    .line 74
    iput-object v2, v1, Ls1/h;->c:[Ljava/nio/ByteBuffer;

    .line 75
    .line 76
    sget-object v2, Ls1/i;->e:Ls1/i;

    .line 77
    .line 78
    iput-boolean v0, v1, Ls1/h;->d:Z

    .line 79
    .line 80
    :cond_2
    iput-boolean v0, p0, La2/n1;->O:Z

    .line 81
    .line 82
    iput-boolean v0, p0, La2/n1;->X:Z

    .line 83
    .line 84
    return-void
.end method

.method public final t()V
    .locals 3

    .line 1
    invoke-virtual {p0}, La2/n1;->n()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, La2/n1;->t:La2/a1;

    .line 8
    .line 9
    iget-object v1, p0, La2/n1;->x:Lr1/h0;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, La2/a1;->d(Lr1/h0;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, La2/n1;->t:La2/a1;

    .line 15
    .line 16
    iget-object v0, v0, La2/a1;->a:Landroid/media/AudioTrack;

    .line 17
    .line 18
    invoke-static {v0}, La2/a;->g(Landroid/media/AudioTrack;)Landroid/media/PlaybackParams;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Lr1/h0;

    .line 23
    .line 24
    invoke-static {v0}, La2/a;->a(Landroid/media/PlaybackParams;)F

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-static {v0}, La2/a;->z(Landroid/media/PlaybackParams;)F

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-direct {v1, v2, v0}, Lr1/h0;-><init>(FF)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, La2/n1;->x:Lr1/h0;

    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public final u(Ljava/nio/ByteBuffer;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, La2/n1;->K:Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    invoke-static {v1}, La9/o;->t(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-object v1, v0, La2/n1;->p:La2/k1;

    .line 21
    .line 22
    invoke-static {v1}, La2/k1;->a(La2/k1;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    :goto_1
    move-object/from16 v3, p1

    .line 29
    .line 30
    goto/16 :goto_9

    .line 31
    .line 32
    :cond_2
    const-wide/16 v1, 0x14

    .line 33
    .line 34
    invoke-static {v1, v2}, Lu1/f0;->G(J)J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    iget-object v1, v0, La2/n1;->p:La2/k1;

    .line 39
    .line 40
    iget-object v1, v1, La2/k1;->e:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v1, La2/x;

    .line 43
    .line 44
    iget v1, v1, La2/x;->b:I

    .line 45
    .line 46
    int-to-long v5, v1

    .line 47
    const-wide/32 v7, 0xf4240

    .line 48
    .line 49
    .line 50
    sget-object v9, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    .line 51
    .line 52
    invoke-static/range {v3 .. v9}, Lu1/f0;->M(JJJLjava/math/RoundingMode;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v1

    .line 56
    long-to-int v2, v1

    .line 57
    invoke-virtual/range {p0 .. p0}, La2/n1;->j()J

    .line 58
    .line 59
    .line 60
    move-result-wide v3

    .line 61
    int-to-long v5, v2

    .line 62
    cmp-long v1, v3, v5

    .line 63
    .line 64
    if-ltz v1, :cond_3

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    iget-object v1, v0, La2/n1;->p:La2/k1;

    .line 68
    .line 69
    iget-object v7, v1, La2/k1;->e:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v7, La2/x;

    .line 72
    .line 73
    iget v7, v7, La2/x;->a:I

    .line 74
    .line 75
    long-to-int v4, v3

    .line 76
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->remaining()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    :cond_4
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    if-eqz v9, :cond_1b

    .line 101
    .line 102
    if-ge v4, v2, :cond_1b

    .line 103
    .line 104
    const/high16 v10, 0x50000000

    .line 105
    .line 106
    const/high16 v11, 0x10000000

    .line 107
    .line 108
    const/16 v12, 0x16

    .line 109
    .line 110
    const/16 v13, 0x15

    .line 111
    .line 112
    const/4 v14, 0x4

    .line 113
    const/4 v15, 0x3

    .line 114
    const/4 v9, 0x2

    .line 115
    if-eq v7, v9, :cond_f

    .line 116
    .line 117
    if-eq v7, v15, :cond_e

    .line 118
    .line 119
    if-eq v7, v14, :cond_c

    .line 120
    .line 121
    if-eq v7, v13, :cond_b

    .line 122
    .line 123
    if-eq v7, v12, :cond_a

    .line 124
    .line 125
    if-eq v7, v11, :cond_9

    .line 126
    .line 127
    if-eq v7, v10, :cond_8

    .line 128
    .line 129
    const/high16 v10, 0x60000000

    .line 130
    .line 131
    if-eq v7, v10, :cond_7

    .line 132
    .line 133
    const/high16 v10, 0x70000000

    .line 134
    .line 135
    if-ne v7, v10, :cond_6

    .line 136
    .line 137
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getDouble()D

    .line 138
    .line 139
    .line 140
    move-result-wide v11

    .line 141
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 142
    .line 143
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(DD)D

    .line 144
    .line 145
    .line 146
    move-result-wide v11

    .line 147
    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    .line 148
    .line 149
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(DD)D

    .line 150
    .line 151
    .line 152
    move-result-wide v11

    .line 153
    const-wide/16 v13, 0x0

    .line 154
    .line 155
    cmpg-double v16, v11, v13

    .line 156
    .line 157
    if-gez v16, :cond_5

    .line 158
    .line 159
    neg-double v11, v11

    .line 160
    const-wide/high16 v13, -0x3e20000000000000L    # -2.147483648E9

    .line 161
    .line 162
    :goto_3
    mul-double v11, v11, v13

    .line 163
    .line 164
    double-to-int v11, v11

    .line 165
    goto/16 :goto_7

    .line 166
    .line 167
    :cond_5
    const-wide v13, 0x41dfffffffc00000L    # 2.147483647E9

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 174
    .line 175
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 176
    .line 177
    .line 178
    throw v1

    .line 179
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 180
    .line 181
    .line 182
    move-result v11

    .line 183
    and-int/lit16 v11, v11, 0xff

    .line 184
    .line 185
    shl-int/lit8 v11, v11, 0x18

    .line 186
    .line 187
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 188
    .line 189
    .line 190
    move-result v12

    .line 191
    and-int/lit16 v12, v12, 0xff

    .line 192
    .line 193
    shl-int/lit8 v12, v12, 0x10

    .line 194
    .line 195
    or-int/2addr v11, v12

    .line 196
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 197
    .line 198
    .line 199
    move-result v12

    .line 200
    and-int/lit16 v12, v12, 0xff

    .line 201
    .line 202
    shl-int/lit8 v12, v12, 0x8

    .line 203
    .line 204
    or-int/2addr v11, v12

    .line 205
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 206
    .line 207
    .line 208
    move-result v12

    .line 209
    and-int/lit16 v12, v12, 0xff

    .line 210
    .line 211
    :goto_4
    or-int/2addr v11, v12

    .line 212
    goto/16 :goto_7

    .line 213
    .line 214
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 215
    .line 216
    .line 217
    move-result v11

    .line 218
    and-int/lit16 v11, v11, 0xff

    .line 219
    .line 220
    shl-int/lit8 v11, v11, 0x18

    .line 221
    .line 222
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 223
    .line 224
    .line 225
    move-result v12

    .line 226
    and-int/lit16 v12, v12, 0xff

    .line 227
    .line 228
    shl-int/lit8 v12, v12, 0x10

    .line 229
    .line 230
    or-int/2addr v11, v12

    .line 231
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 232
    .line 233
    .line 234
    move-result v12

    .line 235
    and-int/lit16 v12, v12, 0xff

    .line 236
    .line 237
    shl-int/lit8 v12, v12, 0x8

    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 241
    .line 242
    .line 243
    move-result v11

    .line 244
    and-int/lit16 v11, v11, 0xff

    .line 245
    .line 246
    shl-int/lit8 v11, v11, 0x18

    .line 247
    .line 248
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 249
    .line 250
    .line 251
    move-result v12

    .line 252
    and-int/lit16 v12, v12, 0xff

    .line 253
    .line 254
    shl-int/lit8 v12, v12, 0x10

    .line 255
    .line 256
    goto :goto_4

    .line 257
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 258
    .line 259
    .line 260
    move-result v11

    .line 261
    and-int/lit16 v11, v11, 0xff

    .line 262
    .line 263
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 264
    .line 265
    .line 266
    move-result v12

    .line 267
    and-int/lit16 v12, v12, 0xff

    .line 268
    .line 269
    shl-int/lit8 v12, v12, 0x8

    .line 270
    .line 271
    or-int/2addr v11, v12

    .line 272
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 273
    .line 274
    .line 275
    move-result v12

    .line 276
    and-int/lit16 v12, v12, 0xff

    .line 277
    .line 278
    shl-int/lit8 v12, v12, 0x10

    .line 279
    .line 280
    or-int/2addr v11, v12

    .line 281
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 282
    .line 283
    .line 284
    move-result v12

    .line 285
    :goto_5
    and-int/lit16 v12, v12, 0xff

    .line 286
    .line 287
    shl-int/lit8 v12, v12, 0x18

    .line 288
    .line 289
    goto :goto_4

    .line 290
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 291
    .line 292
    .line 293
    move-result v11

    .line 294
    and-int/lit16 v11, v11, 0xff

    .line 295
    .line 296
    shl-int/lit8 v11, v11, 0x8

    .line 297
    .line 298
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 299
    .line 300
    .line 301
    move-result v12

    .line 302
    and-int/lit16 v12, v12, 0xff

    .line 303
    .line 304
    shl-int/lit8 v12, v12, 0x10

    .line 305
    .line 306
    or-int/2addr v11, v12

    .line 307
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 308
    .line 309
    .line 310
    move-result v12

    .line 311
    goto :goto_5

    .line 312
    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getFloat()F

    .line 313
    .line 314
    .line 315
    move-result v11

    .line 316
    const/high16 v12, -0x40800000    # -1.0f

    .line 317
    .line 318
    const/high16 v13, 0x3f800000    # 1.0f

    .line 319
    .line 320
    invoke-static {v11, v12, v13}, Lu1/f0;->f(FFF)F

    .line 321
    .line 322
    .line 323
    move-result v11

    .line 324
    const/4 v12, 0x0

    .line 325
    cmpg-float v12, v11, v12

    .line 326
    .line 327
    if-gez v12, :cond_d

    .line 328
    .line 329
    neg-float v11, v11

    .line 330
    const/high16 v12, -0x31000000

    .line 331
    .line 332
    :goto_6
    mul-float v11, v11, v12

    .line 333
    .line 334
    float-to-int v11, v11

    .line 335
    goto :goto_7

    .line 336
    :cond_d
    const/high16 v12, 0x4f000000

    .line 337
    .line 338
    goto :goto_6

    .line 339
    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 340
    .line 341
    .line 342
    move-result v11

    .line 343
    and-int/lit16 v11, v11, 0xff

    .line 344
    .line 345
    shl-int/lit8 v11, v11, 0x18

    .line 346
    .line 347
    goto :goto_7

    .line 348
    :cond_f
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 349
    .line 350
    .line 351
    move-result v11

    .line 352
    and-int/lit16 v11, v11, 0xff

    .line 353
    .line 354
    shl-int/lit8 v11, v11, 0x10

    .line 355
    .line 356
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 357
    .line 358
    .line 359
    move-result v12

    .line 360
    goto :goto_5

    .line 361
    :goto_7
    int-to-long v11, v11

    .line 362
    int-to-long v13, v4

    .line 363
    mul-long v11, v11, v13

    .line 364
    .line 365
    div-long/2addr v11, v5

    .line 366
    long-to-int v12, v11

    .line 367
    if-eq v7, v9, :cond_1a

    .line 368
    .line 369
    if-eq v7, v15, :cond_19

    .line 370
    .line 371
    const/4 v9, 0x4

    .line 372
    if-eq v7, v9, :cond_17

    .line 373
    .line 374
    const/16 v9, 0x15

    .line 375
    .line 376
    if-eq v7, v9, :cond_16

    .line 377
    .line 378
    const/16 v9, 0x16

    .line 379
    .line 380
    if-eq v7, v9, :cond_15

    .line 381
    .line 382
    const/high16 v9, 0x10000000

    .line 383
    .line 384
    if-eq v7, v9, :cond_14

    .line 385
    .line 386
    const/high16 v9, 0x50000000

    .line 387
    .line 388
    if-eq v7, v9, :cond_13

    .line 389
    .line 390
    const/high16 v9, 0x60000000

    .line 391
    .line 392
    if-eq v7, v9, :cond_12

    .line 393
    .line 394
    const/high16 v9, 0x70000000

    .line 395
    .line 396
    if-ne v7, v9, :cond_11

    .line 397
    .line 398
    if-gez v12, :cond_10

    .line 399
    .line 400
    int-to-double v9, v12

    .line 401
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    .line 402
    .line 403
    .line 404
    neg-double v9, v9

    .line 405
    const-wide/high16 v11, -0x3e20000000000000L    # -2.147483648E9

    .line 406
    .line 407
    div-double/2addr v9, v11

    .line 408
    invoke-virtual {v3, v9, v10}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 409
    .line 410
    .line 411
    goto/16 :goto_8

    .line 412
    .line 413
    :cond_10
    int-to-double v9, v12

    .line 414
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    .line 415
    .line 416
    .line 417
    const-wide v11, 0x41dfffffffc00000L    # 2.147483647E9

    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    div-double/2addr v9, v11

    .line 423
    invoke-virtual {v3, v9, v10}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 424
    .line 425
    .line 426
    goto/16 :goto_8

    .line 427
    .line 428
    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 429
    .line 430
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 431
    .line 432
    .line 433
    throw v1

    .line 434
    :cond_12
    shr-int/lit8 v9, v12, 0x18

    .line 435
    .line 436
    int-to-byte v9, v9

    .line 437
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 438
    .line 439
    .line 440
    shr-int/lit8 v9, v12, 0x10

    .line 441
    .line 442
    int-to-byte v9, v9

    .line 443
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 444
    .line 445
    .line 446
    shr-int/lit8 v9, v12, 0x8

    .line 447
    .line 448
    int-to-byte v9, v9

    .line 449
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 450
    .line 451
    .line 452
    int-to-byte v9, v12

    .line 453
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 454
    .line 455
    .line 456
    goto/16 :goto_8

    .line 457
    .line 458
    :cond_13
    shr-int/lit8 v9, v12, 0x18

    .line 459
    .line 460
    int-to-byte v9, v9

    .line 461
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 462
    .line 463
    .line 464
    shr-int/lit8 v9, v12, 0x10

    .line 465
    .line 466
    int-to-byte v9, v9

    .line 467
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 468
    .line 469
    .line 470
    shr-int/lit8 v9, v12, 0x8

    .line 471
    .line 472
    int-to-byte v9, v9

    .line 473
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 474
    .line 475
    .line 476
    goto :goto_8

    .line 477
    :cond_14
    shr-int/lit8 v9, v12, 0x18

    .line 478
    .line 479
    int-to-byte v9, v9

    .line 480
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 481
    .line 482
    .line 483
    shr-int/lit8 v9, v12, 0x10

    .line 484
    .line 485
    int-to-byte v9, v9

    .line 486
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 487
    .line 488
    .line 489
    goto :goto_8

    .line 490
    :cond_15
    int-to-byte v9, v12

    .line 491
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 492
    .line 493
    .line 494
    shr-int/lit8 v9, v12, 0x8

    .line 495
    .line 496
    int-to-byte v9, v9

    .line 497
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 498
    .line 499
    .line 500
    shr-int/lit8 v9, v12, 0x10

    .line 501
    .line 502
    int-to-byte v9, v9

    .line 503
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 504
    .line 505
    .line 506
    shr-int/lit8 v9, v12, 0x18

    .line 507
    .line 508
    int-to-byte v9, v9

    .line 509
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 510
    .line 511
    .line 512
    goto :goto_8

    .line 513
    :cond_16
    shr-int/lit8 v9, v12, 0x8

    .line 514
    .line 515
    int-to-byte v9, v9

    .line 516
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 517
    .line 518
    .line 519
    shr-int/lit8 v9, v12, 0x10

    .line 520
    .line 521
    int-to-byte v9, v9

    .line 522
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 523
    .line 524
    .line 525
    shr-int/lit8 v9, v12, 0x18

    .line 526
    .line 527
    int-to-byte v9, v9

    .line 528
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 529
    .line 530
    .line 531
    goto :goto_8

    .line 532
    :cond_17
    if-gez v12, :cond_18

    .line 533
    .line 534
    int-to-float v9, v12

    .line 535
    neg-float v9, v9

    .line 536
    const/high16 v10, -0x31000000

    .line 537
    .line 538
    div-float/2addr v9, v10

    .line 539
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 540
    .line 541
    .line 542
    goto :goto_8

    .line 543
    :cond_18
    int-to-float v9, v12

    .line 544
    const/high16 v10, 0x4f000000

    .line 545
    .line 546
    div-float/2addr v9, v10

    .line 547
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 548
    .line 549
    .line 550
    goto :goto_8

    .line 551
    :cond_19
    shr-int/lit8 v9, v12, 0x18

    .line 552
    .line 553
    int-to-byte v9, v9

    .line 554
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 555
    .line 556
    .line 557
    goto :goto_8

    .line 558
    :cond_1a
    shr-int/lit8 v9, v12, 0x10

    .line 559
    .line 560
    int-to-byte v9, v9

    .line 561
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 562
    .line 563
    .line 564
    shr-int/lit8 v9, v12, 0x18

    .line 565
    .line 566
    int-to-byte v9, v9

    .line 567
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 568
    .line 569
    .line 570
    :goto_8
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    .line 571
    .line 572
    .line 573
    move-result v9

    .line 574
    iget v10, v1, La2/k1;->b:I

    .line 575
    .line 576
    add-int/2addr v10, v8

    .line 577
    if-ne v9, v10, :cond_4

    .line 578
    .line 579
    add-int/lit8 v4, v4, 0x1

    .line 580
    .line 581
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    .line 582
    .line 583
    .line 584
    move-result v8

    .line 585
    goto/16 :goto_2

    .line 586
    .line 587
    :cond_1b
    move-object/from16 v1, p1

    .line 588
    .line 589
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 590
    .line 591
    .line 592
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 593
    .line 594
    .line 595
    :goto_9
    iput-object v3, v0, La2/n1;->K:Ljava/nio/ByteBuffer;

    .line 596
    .line 597
    return-void
.end method

.method public final v()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, La2/n1;->V:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, La2/n1;->p:La2/k1;

    .line 6
    .line 7
    invoke-static {v0}, La2/k1;->a(La2/k1;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, La2/n1;->p:La2/k1;

    .line 14
    .line 15
    iget-object v0, v0, La2/k1;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lr1/p;

    .line 18
    .line 19
    iget v0, v0, Lr1/p;->I:I

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method

.method public final w()Z
    .locals 1

    .line 1
    iget-object v0, p0, La2/n1;->p:La2/k1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, La2/k1;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, La2/x;

    .line 8
    .line 9
    iget-boolean v0, v0, La2/x;->j:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method
