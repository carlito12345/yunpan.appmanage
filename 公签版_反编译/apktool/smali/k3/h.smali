.class public final Lk3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li3/j;


# static fields
.field public static final h:[B

.field public static final i:[B

.field public static final j:[B


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Canvas;

.field public final d:Lk3/b;

.field public final e:Lk3/a;

.field public final f:Lk3/g;

.field public g:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v1, Lk3/h;->h:[B

    .line 8
    .line 9
    new-array v0, v0, [B

    .line 10
    .line 11
    fill-array-data v0, :array_1

    .line 12
    .line 13
    .line 14
    sput-object v0, Lk3/h;->i:[B

    .line 15
    .line 16
    const/16 v0, 0x10

    .line 17
    .line 18
    new-array v0, v0, [B

    .line 19
    .line 20
    fill-array-data v0, :array_2

    .line 21
    .line 22
    .line 23
    sput-object v0, Lk3/h;->j:[B

    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :array_0
    .array-data 1
        0x0t
        0x7t
        0x8t
        0xft
    .end array-data

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    :array_1
    .array-data 1
        0x0t
        0x77t
        -0x78t
        -0x1t
    .end array-data

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    :array_2
    .array-data 1
        0x0t
        0x11t
        0x22t
        0x33t
        0x44t
        0x55t
        0x66t
        0x77t
        -0x78t
        -0x67t
        -0x56t
        -0x45t
        -0x34t
        -0x23t
        -0x12t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lu1/q;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, [B

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lu1/q;-><init>([B)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lu1/q;->I()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {v0}, Lu1/q;->I()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    new-instance v2, Landroid/graphics/Paint;

    .line 25
    .line 26
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v2, p0, Lk3/h;->a:Landroid/graphics/Paint;

    .line 30
    .line 31
    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    .line 35
    .line 36
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    .line 37
    .line 38
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    .line 39
    .line 40
    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 44
    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 48
    .line 49
    .line 50
    new-instance v2, Landroid/graphics/Paint;

    .line 51
    .line 52
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v2, p0, Lk3/h;->b:Landroid/graphics/Paint;

    .line 56
    .line 57
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 58
    .line 59
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    .line 61
    .line 62
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    .line 63
    .line 64
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 65
    .line 66
    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 73
    .line 74
    .line 75
    new-instance v2, Landroid/graphics/Canvas;

    .line 76
    .line 77
    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object v2, p0, Lk3/h;->c:Landroid/graphics/Canvas;

    .line 81
    .line 82
    new-instance v2, Lk3/b;

    .line 83
    .line 84
    const/4 v6, 0x0

    .line 85
    const/16 v7, 0x2cf

    .line 86
    .line 87
    const/16 v4, 0x2cf

    .line 88
    .line 89
    const/16 v5, 0x23f

    .line 90
    .line 91
    const/4 v8, 0x0

    .line 92
    const/16 v9, 0x23f

    .line 93
    .line 94
    move-object v3, v2

    .line 95
    invoke-direct/range {v3 .. v9}, Lk3/b;-><init>(IIIIII)V

    .line 96
    .line 97
    .line 98
    iput-object v2, p0, Lk3/h;->d:Lk3/b;

    .line 99
    .line 100
    new-instance v2, Lk3/a;

    .line 101
    .line 102
    const v3, -0x808081

    .line 103
    .line 104
    .line 105
    const/4 v4, -0x1

    .line 106
    const/high16 v5, -0x1000000

    .line 107
    .line 108
    filled-new-array {v1, v4, v5, v3}, [I

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-static {}, Lk3/h;->c()[I

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-static {}, Lk3/h;->d()[I

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-direct {v2, v1, v3, v4, v5}, Lk3/a;-><init>(I[I[I[I)V

    .line 121
    .line 122
    .line 123
    iput-object v2, p0, Lk3/h;->e:Lk3/a;

    .line 124
    .line 125
    new-instance v1, Lk3/g;

    .line 126
    .line 127
    invoke-direct {v1, p1, v0}, Lk3/g;-><init>(II)V

    .line 128
    .line 129
    .line 130
    iput-object v1, p0, Lk3/h;->f:Lk3/g;

    .line 131
    .line 132
    return-void
.end method

.method public static a(IILj3/f;)[B
    .locals 3

    .line 1
    new-array v0, p0, [B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    if-ge v1, p0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p2, p1}, Lj3/f;->g(I)I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    int-to-byte v2, v2

    .line 11
    aput-byte v2, v0, v1

    .line 12
    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-object v0
.end method

.method public static c()[I
    .locals 9

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aput v2, v1, v2

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    :goto_0
    if-ge v3, v0, :cond_7

    .line 10
    .line 11
    const/16 v4, 0x8

    .line 12
    .line 13
    const/16 v5, 0xff

    .line 14
    .line 15
    if-ge v3, v4, :cond_3

    .line 16
    .line 17
    and-int/lit8 v4, v3, 0x1

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    const/16 v4, 0xff

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/4 v4, 0x0

    .line 25
    :goto_1
    and-int/lit8 v6, v3, 0x2

    .line 26
    .line 27
    if-eqz v6, :cond_1

    .line 28
    .line 29
    const/16 v6, 0xff

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_1
    const/4 v6, 0x0

    .line 33
    :goto_2
    and-int/lit8 v7, v3, 0x4

    .line 34
    .line 35
    if-eqz v7, :cond_2

    .line 36
    .line 37
    const/16 v7, 0xff

    .line 38
    .line 39
    goto :goto_3

    .line 40
    :cond_2
    const/4 v7, 0x0

    .line 41
    :goto_3
    invoke-static {v5, v4, v6, v7}, Lk3/h;->f(IIII)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    aput v4, v1, v3

    .line 46
    .line 47
    goto :goto_7

    .line 48
    :cond_3
    and-int/lit8 v4, v3, 0x1

    .line 49
    .line 50
    const/16 v6, 0x7f

    .line 51
    .line 52
    if-eqz v4, :cond_4

    .line 53
    .line 54
    const/16 v4, 0x7f

    .line 55
    .line 56
    goto :goto_4

    .line 57
    :cond_4
    const/4 v4, 0x0

    .line 58
    :goto_4
    and-int/lit8 v7, v3, 0x2

    .line 59
    .line 60
    if-eqz v7, :cond_5

    .line 61
    .line 62
    const/16 v7, 0x7f

    .line 63
    .line 64
    goto :goto_5

    .line 65
    :cond_5
    const/4 v7, 0x0

    .line 66
    :goto_5
    and-int/lit8 v8, v3, 0x4

    .line 67
    .line 68
    if-eqz v8, :cond_6

    .line 69
    .line 70
    goto :goto_6

    .line 71
    :cond_6
    const/4 v6, 0x0

    .line 72
    :goto_6
    invoke-static {v5, v4, v7, v6}, Lk3/h;->f(IIII)I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    aput v4, v1, v3

    .line 77
    .line 78
    :goto_7
    add-int/lit8 v3, v3, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_7
    return-object v1
.end method

.method public static d()[I
    .locals 11

    .line 1
    const/16 v0, 0x100

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aput v2, v1, v2

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v3, v0, :cond_20

    .line 10
    .line 11
    const/16 v4, 0x8

    .line 12
    .line 13
    const/16 v5, 0xff

    .line 14
    .line 15
    if-ge v3, v4, :cond_3

    .line 16
    .line 17
    and-int/lit8 v4, v3, 0x1

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    const/16 v4, 0xff

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/4 v4, 0x0

    .line 25
    :goto_1
    and-int/lit8 v6, v3, 0x2

    .line 26
    .line 27
    if-eqz v6, :cond_1

    .line 28
    .line 29
    const/16 v6, 0xff

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_1
    const/4 v6, 0x0

    .line 33
    :goto_2
    and-int/lit8 v7, v3, 0x4

    .line 34
    .line 35
    if-eqz v7, :cond_2

    .line 36
    .line 37
    goto :goto_3

    .line 38
    :cond_2
    const/4 v5, 0x0

    .line 39
    :goto_3
    const/16 v7, 0x3f

    .line 40
    .line 41
    invoke-static {v7, v4, v6, v5}, Lk3/h;->f(IIII)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    aput v4, v1, v3

    .line 46
    .line 47
    goto/16 :goto_1c

    .line 48
    .line 49
    :cond_3
    and-int/lit16 v6, v3, 0x88

    .line 50
    .line 51
    const/16 v7, 0xaa

    .line 52
    .line 53
    const/16 v8, 0x55

    .line 54
    .line 55
    if-eqz v6, :cond_19

    .line 56
    .line 57
    const/16 v9, 0x7f

    .line 58
    .line 59
    if-eq v6, v4, :cond_12

    .line 60
    .line 61
    const/16 v4, 0x80

    .line 62
    .line 63
    const/16 v7, 0x2b

    .line 64
    .line 65
    if-eq v6, v4, :cond_b

    .line 66
    .line 67
    const/16 v4, 0x88

    .line 68
    .line 69
    if-eq v6, v4, :cond_4

    .line 70
    .line 71
    goto/16 :goto_1c

    .line 72
    .line 73
    :cond_4
    and-int/lit8 v4, v3, 0x1

    .line 74
    .line 75
    if-eqz v4, :cond_5

    .line 76
    .line 77
    const/16 v4, 0x2b

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_5
    const/4 v4, 0x0

    .line 81
    :goto_4
    and-int/lit8 v6, v3, 0x10

    .line 82
    .line 83
    if-eqz v6, :cond_6

    .line 84
    .line 85
    const/16 v6, 0x55

    .line 86
    .line 87
    goto :goto_5

    .line 88
    :cond_6
    const/4 v6, 0x0

    .line 89
    :goto_5
    add-int/2addr v4, v6

    .line 90
    and-int/lit8 v6, v3, 0x2

    .line 91
    .line 92
    if-eqz v6, :cond_7

    .line 93
    .line 94
    const/16 v6, 0x2b

    .line 95
    .line 96
    goto :goto_6

    .line 97
    :cond_7
    const/4 v6, 0x0

    .line 98
    :goto_6
    and-int/lit8 v9, v3, 0x20

    .line 99
    .line 100
    if-eqz v9, :cond_8

    .line 101
    .line 102
    const/16 v9, 0x55

    .line 103
    .line 104
    goto :goto_7

    .line 105
    :cond_8
    const/4 v9, 0x0

    .line 106
    :goto_7
    add-int/2addr v6, v9

    .line 107
    and-int/lit8 v9, v3, 0x4

    .line 108
    .line 109
    if-eqz v9, :cond_9

    .line 110
    .line 111
    goto :goto_8

    .line 112
    :cond_9
    const/4 v7, 0x0

    .line 113
    :goto_8
    and-int/lit8 v9, v3, 0x40

    .line 114
    .line 115
    if-eqz v9, :cond_a

    .line 116
    .line 117
    goto :goto_9

    .line 118
    :cond_a
    const/4 v8, 0x0

    .line 119
    :goto_9
    add-int/2addr v7, v8

    .line 120
    invoke-static {v5, v4, v6, v7}, Lk3/h;->f(IIII)I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    aput v4, v1, v3

    .line 125
    .line 126
    goto/16 :goto_1c

    .line 127
    .line 128
    :cond_b
    and-int/lit8 v4, v3, 0x1

    .line 129
    .line 130
    if-eqz v4, :cond_c

    .line 131
    .line 132
    const/16 v4, 0x2b

    .line 133
    .line 134
    goto :goto_a

    .line 135
    :cond_c
    const/4 v4, 0x0

    .line 136
    :goto_a
    add-int/2addr v4, v9

    .line 137
    and-int/lit8 v6, v3, 0x10

    .line 138
    .line 139
    if-eqz v6, :cond_d

    .line 140
    .line 141
    const/16 v6, 0x55

    .line 142
    .line 143
    goto :goto_b

    .line 144
    :cond_d
    const/4 v6, 0x0

    .line 145
    :goto_b
    add-int/2addr v4, v6

    .line 146
    and-int/lit8 v6, v3, 0x2

    .line 147
    .line 148
    if-eqz v6, :cond_e

    .line 149
    .line 150
    const/16 v6, 0x2b

    .line 151
    .line 152
    goto :goto_c

    .line 153
    :cond_e
    const/4 v6, 0x0

    .line 154
    :goto_c
    add-int/2addr v6, v9

    .line 155
    and-int/lit8 v10, v3, 0x20

    .line 156
    .line 157
    if-eqz v10, :cond_f

    .line 158
    .line 159
    const/16 v10, 0x55

    .line 160
    .line 161
    goto :goto_d

    .line 162
    :cond_f
    const/4 v10, 0x0

    .line 163
    :goto_d
    add-int/2addr v6, v10

    .line 164
    and-int/lit8 v10, v3, 0x4

    .line 165
    .line 166
    if-eqz v10, :cond_10

    .line 167
    .line 168
    goto :goto_e

    .line 169
    :cond_10
    const/4 v7, 0x0

    .line 170
    :goto_e
    add-int/2addr v7, v9

    .line 171
    and-int/lit8 v9, v3, 0x40

    .line 172
    .line 173
    if-eqz v9, :cond_11

    .line 174
    .line 175
    goto :goto_f

    .line 176
    :cond_11
    const/4 v8, 0x0

    .line 177
    :goto_f
    add-int/2addr v7, v8

    .line 178
    invoke-static {v5, v4, v6, v7}, Lk3/h;->f(IIII)I

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    aput v4, v1, v3

    .line 183
    .line 184
    goto/16 :goto_1c

    .line 185
    .line 186
    :cond_12
    and-int/lit8 v4, v3, 0x1

    .line 187
    .line 188
    if-eqz v4, :cond_13

    .line 189
    .line 190
    const/16 v4, 0x55

    .line 191
    .line 192
    goto :goto_10

    .line 193
    :cond_13
    const/4 v4, 0x0

    .line 194
    :goto_10
    and-int/lit8 v5, v3, 0x10

    .line 195
    .line 196
    if-eqz v5, :cond_14

    .line 197
    .line 198
    const/16 v5, 0xaa

    .line 199
    .line 200
    goto :goto_11

    .line 201
    :cond_14
    const/4 v5, 0x0

    .line 202
    :goto_11
    add-int/2addr v4, v5

    .line 203
    and-int/lit8 v5, v3, 0x2

    .line 204
    .line 205
    if-eqz v5, :cond_15

    .line 206
    .line 207
    const/16 v5, 0x55

    .line 208
    .line 209
    goto :goto_12

    .line 210
    :cond_15
    const/4 v5, 0x0

    .line 211
    :goto_12
    and-int/lit8 v6, v3, 0x20

    .line 212
    .line 213
    if-eqz v6, :cond_16

    .line 214
    .line 215
    const/16 v6, 0xaa

    .line 216
    .line 217
    goto :goto_13

    .line 218
    :cond_16
    const/4 v6, 0x0

    .line 219
    :goto_13
    add-int/2addr v5, v6

    .line 220
    and-int/lit8 v6, v3, 0x4

    .line 221
    .line 222
    if-eqz v6, :cond_17

    .line 223
    .line 224
    goto :goto_14

    .line 225
    :cond_17
    const/4 v8, 0x0

    .line 226
    :goto_14
    and-int/lit8 v6, v3, 0x40

    .line 227
    .line 228
    if-eqz v6, :cond_18

    .line 229
    .line 230
    goto :goto_15

    .line 231
    :cond_18
    const/4 v7, 0x0

    .line 232
    :goto_15
    add-int/2addr v8, v7

    .line 233
    invoke-static {v9, v4, v5, v8}, Lk3/h;->f(IIII)I

    .line 234
    .line 235
    .line 236
    move-result v4

    .line 237
    aput v4, v1, v3

    .line 238
    .line 239
    goto :goto_1c

    .line 240
    :cond_19
    and-int/lit8 v4, v3, 0x1

    .line 241
    .line 242
    if-eqz v4, :cond_1a

    .line 243
    .line 244
    const/16 v4, 0x55

    .line 245
    .line 246
    goto :goto_16

    .line 247
    :cond_1a
    const/4 v4, 0x0

    .line 248
    :goto_16
    and-int/lit8 v6, v3, 0x10

    .line 249
    .line 250
    if-eqz v6, :cond_1b

    .line 251
    .line 252
    const/16 v6, 0xaa

    .line 253
    .line 254
    goto :goto_17

    .line 255
    :cond_1b
    const/4 v6, 0x0

    .line 256
    :goto_17
    add-int/2addr v4, v6

    .line 257
    and-int/lit8 v6, v3, 0x2

    .line 258
    .line 259
    if-eqz v6, :cond_1c

    .line 260
    .line 261
    const/16 v6, 0x55

    .line 262
    .line 263
    goto :goto_18

    .line 264
    :cond_1c
    const/4 v6, 0x0

    .line 265
    :goto_18
    and-int/lit8 v9, v3, 0x20

    .line 266
    .line 267
    if-eqz v9, :cond_1d

    .line 268
    .line 269
    const/16 v9, 0xaa

    .line 270
    .line 271
    goto :goto_19

    .line 272
    :cond_1d
    const/4 v9, 0x0

    .line 273
    :goto_19
    add-int/2addr v6, v9

    .line 274
    and-int/lit8 v9, v3, 0x4

    .line 275
    .line 276
    if-eqz v9, :cond_1e

    .line 277
    .line 278
    goto :goto_1a

    .line 279
    :cond_1e
    const/4 v8, 0x0

    .line 280
    :goto_1a
    and-int/lit8 v9, v3, 0x40

    .line 281
    .line 282
    if-eqz v9, :cond_1f

    .line 283
    .line 284
    goto :goto_1b

    .line 285
    :cond_1f
    const/4 v7, 0x0

    .line 286
    :goto_1b
    add-int/2addr v8, v7

    .line 287
    invoke-static {v5, v4, v6, v8}, Lk3/h;->f(IIII)I

    .line 288
    .line 289
    .line 290
    move-result v4

    .line 291
    aput v4, v1, v3

    .line 292
    .line 293
    :goto_1c
    add-int/lit8 v3, v3, 0x1

    .line 294
    .line 295
    goto/16 :goto_0

    .line 296
    .line 297
    :cond_20
    return-object v1
.end method

.method public static f(IIII)I
    .locals 0

    .line 1
    shl-int/lit8 p0, p0, 0x18

    .line 2
    .line 3
    shl-int/lit8 p1, p1, 0x10

    .line 4
    .line 5
    or-int/2addr p0, p1

    .line 6
    shl-int/lit8 p1, p2, 0x8

    .line 7
    .line 8
    or-int/2addr p0, p1

    .line 9
    or-int/2addr p0, p3

    .line 10
    return p0
.end method

.method public static g([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v8, p5

    .line 6
    .line 7
    new-instance v9, Lj3/f;

    .line 8
    .line 9
    array-length v2, v0

    .line 10
    invoke-direct {v9, v0, v2}, Lj3/f;-><init>([BI)V

    .line 11
    .line 12
    .line 13
    move/from16 v2, p3

    .line 14
    .line 15
    move/from16 v10, p4

    .line 16
    .line 17
    const/4 v11, 0x0

    .line 18
    const/4 v12, 0x0

    .line 19
    const/4 v13, 0x0

    .line 20
    :goto_0
    invoke-virtual {v9}, Lj3/f;->b()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_21

    .line 25
    .line 26
    const/16 v14, 0x8

    .line 27
    .line 28
    invoke-virtual {v9, v14}, Lj3/f;->g(I)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const/16 v4, 0xf0

    .line 33
    .line 34
    if-eq v3, v4, :cond_20

    .line 35
    .line 36
    const/4 v15, 0x2

    .line 37
    const/4 v7, 0x1

    .line 38
    const/16 v16, 0x0

    .line 39
    .line 40
    const/4 v6, 0x3

    .line 41
    const/4 v5, 0x4

    .line 42
    packed-switch v3, :pswitch_data_0

    .line 43
    .line 44
    .line 45
    packed-switch v3, :pswitch_data_1

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :pswitch_0
    const/16 v3, 0x10

    .line 50
    .line 51
    invoke-static {v3, v14, v9}, Lk3/h;->a(IILj3/f;)[B

    .line 52
    .line 53
    .line 54
    move-result-object v12

    .line 55
    goto :goto_0

    .line 56
    :pswitch_1
    invoke-static {v5, v14, v9}, Lk3/h;->a(IILj3/f;)[B

    .line 57
    .line 58
    .line 59
    move-result-object v11

    .line 60
    goto :goto_0

    .line 61
    :pswitch_2
    invoke-static {v5, v5, v9}, Lk3/h;->a(IILj3/f;)[B

    .line 62
    .line 63
    .line 64
    move-result-object v13

    .line 65
    goto :goto_0

    .line 66
    :pswitch_3
    move v15, v2

    .line 67
    const/4 v2, 0x0

    .line 68
    :goto_1
    invoke-virtual {v9, v14}, Lj3/f;->g(I)I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_0

    .line 73
    .line 74
    move/from16 v17, v2

    .line 75
    .line 76
    const/16 v18, 0x1

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_0
    invoke-virtual {v9}, Lj3/f;->f()Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    const/4 v4, 0x7

    .line 84
    if-nez v3, :cond_2

    .line 85
    .line 86
    invoke-virtual {v9, v4}, Lj3/f;->g(I)I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_1

    .line 91
    .line 92
    move/from16 v17, v2

    .line 93
    .line 94
    move/from16 v18, v3

    .line 95
    .line 96
    const/4 v3, 0x0

    .line 97
    goto :goto_2

    .line 98
    :cond_1
    const/4 v3, 0x0

    .line 99
    const/16 v17, 0x1

    .line 100
    .line 101
    const/16 v18, 0x0

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_2
    invoke-virtual {v9, v4}, Lj3/f;->g(I)I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    invoke-virtual {v9, v14}, Lj3/f;->g(I)I

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    move/from16 v17, v2

    .line 113
    .line 114
    move/from16 v18, v3

    .line 115
    .line 116
    move v3, v4

    .line 117
    :goto_2
    if-eqz v18, :cond_3

    .line 118
    .line 119
    if-eqz v8, :cond_3

    .line 120
    .line 121
    aget v2, p1, v3

    .line 122
    .line 123
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    .line 125
    .line 126
    int-to-float v3, v15

    .line 127
    int-to-float v4, v10

    .line 128
    add-int v2, v15, v18

    .line 129
    .line 130
    int-to-float v5, v2

    .line 131
    add-int/lit8 v2, v10, 0x1

    .line 132
    .line 133
    int-to-float v6, v2

    .line 134
    move-object/from16 v2, p6

    .line 135
    .line 136
    const/4 v0, 0x1

    .line 137
    move-object/from16 v7, p5

    .line 138
    .line 139
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_3
    const/4 v0, 0x1

    .line 144
    :goto_3
    add-int v15, v15, v18

    .line 145
    .line 146
    if-eqz v17, :cond_4

    .line 147
    .line 148
    move v2, v15

    .line 149
    goto/16 :goto_0

    .line 150
    .line 151
    :cond_4
    move/from16 v2, v17

    .line 152
    .line 153
    const/4 v7, 0x1

    .line 154
    goto :goto_1

    .line 155
    :pswitch_4
    const/4 v0, 0x1

    .line 156
    if-ne v1, v6, :cond_6

    .line 157
    .line 158
    if-nez v12, :cond_5

    .line 159
    .line 160
    sget-object v3, Lk3/h;->j:[B

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_5
    move-object v3, v12

    .line 164
    :goto_4
    move-object/from16 v17, v3

    .line 165
    .line 166
    goto :goto_5

    .line 167
    :cond_6
    const/16 v17, 0x0

    .line 168
    .line 169
    :goto_5
    move v7, v2

    .line 170
    const/4 v2, 0x0

    .line 171
    :goto_6
    invoke-virtual {v9, v5}, Lj3/f;->g(I)I

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    if-eqz v3, :cond_7

    .line 176
    .line 177
    move/from16 v18, v2

    .line 178
    .line 179
    :goto_7
    const/16 v19, 0x1

    .line 180
    .line 181
    goto/16 :goto_a

    .line 182
    .line 183
    :cond_7
    invoke-virtual {v9}, Lj3/f;->f()Z

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    if-nez v3, :cond_9

    .line 188
    .line 189
    invoke-virtual {v9, v6}, Lj3/f;->g(I)I

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    if-eqz v3, :cond_8

    .line 194
    .line 195
    add-int/lit8 v3, v3, 0x2

    .line 196
    .line 197
    move/from16 v18, v2

    .line 198
    .line 199
    move/from16 v19, v3

    .line 200
    .line 201
    const/4 v3, 0x0

    .line 202
    goto :goto_a

    .line 203
    :cond_8
    const/4 v3, 0x0

    .line 204
    const/16 v18, 0x1

    .line 205
    .line 206
    :goto_8
    const/16 v19, 0x0

    .line 207
    .line 208
    goto :goto_a

    .line 209
    :cond_9
    invoke-virtual {v9}, Lj3/f;->f()Z

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    if-nez v3, :cond_a

    .line 214
    .line 215
    invoke-virtual {v9, v15}, Lj3/f;->g(I)I

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    add-int/2addr v3, v5

    .line 220
    invoke-virtual {v9, v5}, Lj3/f;->g(I)I

    .line 221
    .line 222
    .line 223
    move-result v4

    .line 224
    :goto_9
    move/from16 v18, v2

    .line 225
    .line 226
    move/from16 v19, v3

    .line 227
    .line 228
    move v3, v4

    .line 229
    goto :goto_a

    .line 230
    :cond_a
    invoke-virtual {v9, v15}, Lj3/f;->g(I)I

    .line 231
    .line 232
    .line 233
    move-result v3

    .line 234
    if-eqz v3, :cond_e

    .line 235
    .line 236
    if-eq v3, v0, :cond_d

    .line 237
    .line 238
    if-eq v3, v15, :cond_c

    .line 239
    .line 240
    if-eq v3, v6, :cond_b

    .line 241
    .line 242
    move/from16 v18, v2

    .line 243
    .line 244
    const/4 v3, 0x0

    .line 245
    goto :goto_8

    .line 246
    :cond_b
    invoke-virtual {v9, v14}, Lj3/f;->g(I)I

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    add-int/lit8 v3, v3, 0x19

    .line 251
    .line 252
    invoke-virtual {v9, v5}, Lj3/f;->g(I)I

    .line 253
    .line 254
    .line 255
    move-result v4

    .line 256
    goto :goto_9

    .line 257
    :cond_c
    invoke-virtual {v9, v5}, Lj3/f;->g(I)I

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    add-int/lit8 v3, v3, 0x9

    .line 262
    .line 263
    invoke-virtual {v9, v5}, Lj3/f;->g(I)I

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    goto :goto_9

    .line 268
    :cond_d
    move/from16 v18, v2

    .line 269
    .line 270
    const/4 v3, 0x0

    .line 271
    const/16 v19, 0x2

    .line 272
    .line 273
    goto :goto_a

    .line 274
    :cond_e
    move/from16 v18, v2

    .line 275
    .line 276
    const/4 v3, 0x0

    .line 277
    goto :goto_7

    .line 278
    :goto_a
    if-eqz v19, :cond_10

    .line 279
    .line 280
    if-eqz v8, :cond_10

    .line 281
    .line 282
    if-eqz v17, :cond_f

    .line 283
    .line 284
    aget-byte v3, v17, v3

    .line 285
    .line 286
    :cond_f
    aget v2, p1, v3

    .line 287
    .line 288
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 289
    .line 290
    .line 291
    int-to-float v3, v7

    .line 292
    int-to-float v4, v10

    .line 293
    add-int v2, v7, v19

    .line 294
    .line 295
    int-to-float v2, v2

    .line 296
    add-int/lit8 v5, v10, 0x1

    .line 297
    .line 298
    int-to-float v5, v5

    .line 299
    move/from16 v20, v2

    .line 300
    .line 301
    move-object/from16 v2, p6

    .line 302
    .line 303
    move/from16 v22, v5

    .line 304
    .line 305
    move/from16 v5, v20

    .line 306
    .line 307
    const/4 v14, 0x3

    .line 308
    move/from16 v6, v22

    .line 309
    .line 310
    move/from16 v20, v7

    .line 311
    .line 312
    move-object/from16 v7, p5

    .line 313
    .line 314
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 315
    .line 316
    .line 317
    goto :goto_b

    .line 318
    :cond_10
    move/from16 v20, v7

    .line 319
    .line 320
    const/4 v14, 0x3

    .line 321
    :goto_b
    add-int v7, v20, v19

    .line 322
    .line 323
    if-eqz v18, :cond_11

    .line 324
    .line 325
    invoke-virtual {v9}, Lj3/f;->c()V

    .line 326
    .line 327
    .line 328
    :goto_c
    move v2, v7

    .line 329
    goto/16 :goto_0

    .line 330
    .line 331
    :cond_11
    move/from16 v2, v18

    .line 332
    .line 333
    const/4 v5, 0x4

    .line 334
    const/4 v6, 0x3

    .line 335
    const/16 v14, 0x8

    .line 336
    .line 337
    goto/16 :goto_6

    .line 338
    .line 339
    :pswitch_5
    const/4 v0, 0x1

    .line 340
    const/4 v14, 0x3

    .line 341
    if-ne v1, v14, :cond_13

    .line 342
    .line 343
    if-nez v11, :cond_12

    .line 344
    .line 345
    sget-object v3, Lk3/h;->i:[B

    .line 346
    .line 347
    goto :goto_d

    .line 348
    :cond_12
    move-object v3, v11

    .line 349
    :goto_d
    move-object/from16 v17, v3

    .line 350
    .line 351
    goto :goto_e

    .line 352
    :cond_13
    if-ne v1, v15, :cond_15

    .line 353
    .line 354
    if-nez v13, :cond_14

    .line 355
    .line 356
    sget-object v3, Lk3/h;->h:[B

    .line 357
    .line 358
    goto :goto_d

    .line 359
    :cond_14
    move-object v3, v13

    .line 360
    goto :goto_d

    .line 361
    :cond_15
    const/16 v17, 0x0

    .line 362
    .line 363
    :goto_e
    move v7, v2

    .line 364
    const/4 v2, 0x0

    .line 365
    :goto_f
    invoke-virtual {v9, v15}, Lj3/f;->g(I)I

    .line 366
    .line 367
    .line 368
    move-result v3

    .line 369
    if-eqz v3, :cond_16

    .line 370
    .line 371
    move/from16 v18, v2

    .line 372
    .line 373
    :goto_10
    const/4 v5, 0x4

    .line 374
    const/16 v6, 0x8

    .line 375
    .line 376
    const/16 v19, 0x1

    .line 377
    .line 378
    goto/16 :goto_12

    .line 379
    .line 380
    :cond_16
    invoke-virtual {v9}, Lj3/f;->f()Z

    .line 381
    .line 382
    .line 383
    move-result v3

    .line 384
    if-eqz v3, :cond_17

    .line 385
    .line 386
    invoke-virtual {v9, v14}, Lj3/f;->g(I)I

    .line 387
    .line 388
    .line 389
    move-result v3

    .line 390
    add-int/2addr v3, v14

    .line 391
    invoke-virtual {v9, v15}, Lj3/f;->g(I)I

    .line 392
    .line 393
    .line 394
    move-result v4

    .line 395
    move/from16 v18, v2

    .line 396
    .line 397
    move/from16 v19, v3

    .line 398
    .line 399
    move v3, v4

    .line 400
    const/4 v5, 0x4

    .line 401
    const/16 v6, 0x8

    .line 402
    .line 403
    goto :goto_12

    .line 404
    :cond_17
    invoke-virtual {v9}, Lj3/f;->f()Z

    .line 405
    .line 406
    .line 407
    move-result v3

    .line 408
    if-eqz v3, :cond_18

    .line 409
    .line 410
    move/from16 v18, v2

    .line 411
    .line 412
    const/4 v3, 0x0

    .line 413
    goto :goto_10

    .line 414
    :cond_18
    invoke-virtual {v9, v15}, Lj3/f;->g(I)I

    .line 415
    .line 416
    .line 417
    move-result v3

    .line 418
    if-eqz v3, :cond_1c

    .line 419
    .line 420
    if-eq v3, v0, :cond_1b

    .line 421
    .line 422
    if-eq v3, v15, :cond_1a

    .line 423
    .line 424
    if-eq v3, v14, :cond_19

    .line 425
    .line 426
    move/from16 v18, v2

    .line 427
    .line 428
    const/4 v3, 0x0

    .line 429
    const/4 v5, 0x4

    .line 430
    const/16 v6, 0x8

    .line 431
    .line 432
    :goto_11
    const/16 v19, 0x0

    .line 433
    .line 434
    goto :goto_12

    .line 435
    :cond_19
    const/16 v6, 0x8

    .line 436
    .line 437
    invoke-virtual {v9, v6}, Lj3/f;->g(I)I

    .line 438
    .line 439
    .line 440
    move-result v3

    .line 441
    add-int/lit8 v3, v3, 0x1d

    .line 442
    .line 443
    invoke-virtual {v9, v15}, Lj3/f;->g(I)I

    .line 444
    .line 445
    .line 446
    move-result v4

    .line 447
    move/from16 v18, v2

    .line 448
    .line 449
    move/from16 v19, v3

    .line 450
    .line 451
    move v3, v4

    .line 452
    const/4 v5, 0x4

    .line 453
    goto :goto_12

    .line 454
    :cond_1a
    const/4 v5, 0x4

    .line 455
    const/16 v6, 0x8

    .line 456
    .line 457
    invoke-virtual {v9, v5}, Lj3/f;->g(I)I

    .line 458
    .line 459
    .line 460
    move-result v3

    .line 461
    add-int/lit8 v3, v3, 0xc

    .line 462
    .line 463
    invoke-virtual {v9, v15}, Lj3/f;->g(I)I

    .line 464
    .line 465
    .line 466
    move-result v4

    .line 467
    move/from16 v18, v2

    .line 468
    .line 469
    move/from16 v19, v3

    .line 470
    .line 471
    move v3, v4

    .line 472
    goto :goto_12

    .line 473
    :cond_1b
    const/4 v5, 0x4

    .line 474
    const/16 v6, 0x8

    .line 475
    .line 476
    move/from16 v18, v2

    .line 477
    .line 478
    const/4 v3, 0x0

    .line 479
    const/16 v19, 0x2

    .line 480
    .line 481
    goto :goto_12

    .line 482
    :cond_1c
    const/4 v5, 0x4

    .line 483
    const/16 v6, 0x8

    .line 484
    .line 485
    const/4 v3, 0x0

    .line 486
    const/16 v18, 0x1

    .line 487
    .line 488
    goto :goto_11

    .line 489
    :goto_12
    if-eqz v19, :cond_1e

    .line 490
    .line 491
    if-eqz v8, :cond_1e

    .line 492
    .line 493
    if-eqz v17, :cond_1d

    .line 494
    .line 495
    aget-byte v3, v17, v3

    .line 496
    .line 497
    :cond_1d
    aget v2, p1, v3

    .line 498
    .line 499
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 500
    .line 501
    .line 502
    int-to-float v3, v7

    .line 503
    int-to-float v4, v10

    .line 504
    add-int v2, v7, v19

    .line 505
    .line 506
    int-to-float v2, v2

    .line 507
    add-int/lit8 v0, v10, 0x1

    .line 508
    .line 509
    int-to-float v0, v0

    .line 510
    move/from16 v21, v2

    .line 511
    .line 512
    move-object/from16 v2, p6

    .line 513
    .line 514
    const/16 v22, 0x4

    .line 515
    .line 516
    move/from16 v5, v21

    .line 517
    .line 518
    const/16 v21, 0x8

    .line 519
    .line 520
    move v6, v0

    .line 521
    move v0, v7

    .line 522
    move-object/from16 v7, p5

    .line 523
    .line 524
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 525
    .line 526
    .line 527
    goto :goto_13

    .line 528
    :cond_1e
    move v0, v7

    .line 529
    const/16 v21, 0x8

    .line 530
    .line 531
    const/16 v22, 0x4

    .line 532
    .line 533
    :goto_13
    add-int v7, v0, v19

    .line 534
    .line 535
    if-eqz v18, :cond_1f

    .line 536
    .line 537
    invoke-virtual {v9}, Lj3/f;->c()V

    .line 538
    .line 539
    .line 540
    goto/16 :goto_c

    .line 541
    .line 542
    :cond_1f
    move/from16 v2, v18

    .line 543
    .line 544
    const/4 v0, 0x1

    .line 545
    goto/16 :goto_f

    .line 546
    .line 547
    :cond_20
    add-int/lit8 v10, v10, 0x2

    .line 548
    .line 549
    move/from16 v2, p3

    .line 550
    .line 551
    goto/16 :goto_0

    .line 552
    .line 553
    :cond_21
    return-void

    .line 554
    nop

    .line 555
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static h(Lj3/f;I)Lk3/a;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lj3/f;->g(I)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {v0, v1}, Lj3/f;->o(I)V

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    add-int/lit8 v4, p1, -0x2

    .line 14
    .line 15
    const v5, -0x808081

    .line 16
    .line 17
    .line 18
    const/4 v6, -0x1

    .line 19
    const/4 v7, 0x0

    .line 20
    const/high16 v8, -0x1000000

    .line 21
    .line 22
    filled-new-array {v7, v6, v8, v5}, [I

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-static {}, Lk3/h;->c()[I

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-static {}, Lk3/h;->d()[I

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    :goto_0
    if-lez v4, :cond_4

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lj3/f;->g(I)I

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    invoke-virtual {v0, v1}, Lj3/f;->g(I)I

    .line 41
    .line 42
    .line 43
    move-result v10

    .line 44
    and-int/lit16 v11, v10, 0x80

    .line 45
    .line 46
    if-eqz v11, :cond_0

    .line 47
    .line 48
    move-object v11, v5

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    and-int/lit8 v11, v10, 0x40

    .line 51
    .line 52
    if-eqz v11, :cond_1

    .line 53
    .line 54
    move-object v11, v6

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move-object v11, v8

    .line 57
    :goto_1
    and-int/lit8 v10, v10, 0x1

    .line 58
    .line 59
    if-eqz v10, :cond_2

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lj3/f;->g(I)I

    .line 62
    .line 63
    .line 64
    move-result v10

    .line 65
    invoke-virtual {v0, v1}, Lj3/f;->g(I)I

    .line 66
    .line 67
    .line 68
    move-result v12

    .line 69
    invoke-virtual {v0, v1}, Lj3/f;->g(I)I

    .line 70
    .line 71
    .line 72
    move-result v13

    .line 73
    invoke-virtual {v0, v1}, Lj3/f;->g(I)I

    .line 74
    .line 75
    .line 76
    move-result v14

    .line 77
    add-int/lit8 v4, v4, -0x6

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    const/4 v10, 0x6

    .line 81
    invoke-virtual {v0, v10}, Lj3/f;->g(I)I

    .line 82
    .line 83
    .line 84
    move-result v12

    .line 85
    shl-int/2addr v12, v3

    .line 86
    const/4 v13, 0x4

    .line 87
    invoke-virtual {v0, v13}, Lj3/f;->g(I)I

    .line 88
    .line 89
    .line 90
    move-result v14

    .line 91
    shl-int/2addr v14, v13

    .line 92
    invoke-virtual {v0, v13}, Lj3/f;->g(I)I

    .line 93
    .line 94
    .line 95
    move-result v15

    .line 96
    shl-int/lit8 v13, v15, 0x4

    .line 97
    .line 98
    invoke-virtual {v0, v3}, Lj3/f;->g(I)I

    .line 99
    .line 100
    .line 101
    move-result v15

    .line 102
    shl-int/lit8 v10, v15, 0x6

    .line 103
    .line 104
    add-int/lit8 v4, v4, -0x4

    .line 105
    .line 106
    move/from16 v23, v14

    .line 107
    .line 108
    move v14, v10

    .line 109
    move v10, v12

    .line 110
    move/from16 v12, v23

    .line 111
    .line 112
    :goto_2
    const/16 v15, 0xff

    .line 113
    .line 114
    if-nez v10, :cond_3

    .line 115
    .line 116
    const/4 v12, 0x0

    .line 117
    const/4 v13, 0x0

    .line 118
    const/16 v14, 0xff

    .line 119
    .line 120
    :cond_3
    and-int/2addr v14, v15

    .line 121
    rsub-int v14, v14, 0xff

    .line 122
    .line 123
    int-to-byte v14, v14

    .line 124
    move/from16 p1, v4

    .line 125
    .line 126
    int-to-double v3, v10

    .line 127
    add-int/lit8 v12, v12, -0x80

    .line 128
    .line 129
    move/from16 v16, v2

    .line 130
    .line 131
    int-to-double v1, v12

    .line 132
    const-wide v17, 0x3ff66e978d4fdf3bL    # 1.402

    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    .line 138
    .line 139
    .line 140
    mul-double v17, v17, v1

    .line 141
    .line 142
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    .line 143
    .line 144
    .line 145
    move-object v12, v11

    .line 146
    add-double v10, v17, v3

    .line 147
    .line 148
    double-to-int v10, v10

    .line 149
    add-int/lit8 v13, v13, -0x80

    .line 150
    .line 151
    move-object/from16 v17, v8

    .line 152
    .line 153
    int-to-double v7, v13

    .line 154
    const-wide v19, 0x3fd60663c74fb54aL    # 0.34414

    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    .line 160
    .line 161
    .line 162
    mul-double v19, v19, v7

    .line 163
    .line 164
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    .line 165
    .line 166
    .line 167
    sub-double v19, v3, v19

    .line 168
    .line 169
    const-wide v21, 0x3fe6da3c21187e7cL    # 0.71414

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    .line 175
    .line 176
    .line 177
    mul-double v1, v1, v21

    .line 178
    .line 179
    sub-double v1, v19, v1

    .line 180
    .line 181
    double-to-int v1, v1

    .line 182
    const-wide v19, 0x3ffc5a1cac083127L    # 1.772

    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    .line 188
    .line 189
    .line 190
    mul-double v7, v7, v19

    .line 191
    .line 192
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    .line 193
    .line 194
    .line 195
    add-double/2addr v7, v3

    .line 196
    double-to-int v2, v7

    .line 197
    const/4 v3, 0x0

    .line 198
    invoke-static {v10, v3, v15}, Lu1/f0;->g(III)I

    .line 199
    .line 200
    .line 201
    move-result v4

    .line 202
    invoke-static {v1, v3, v15}, Lu1/f0;->g(III)I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    invoke-static {v2, v3, v15}, Lu1/f0;->g(III)I

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    invoke-static {v14, v4, v1, v2}, Lk3/h;->f(IIII)I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    aput v1, v12, v9

    .line 215
    .line 216
    move/from16 v4, p1

    .line 217
    .line 218
    move/from16 v2, v16

    .line 219
    .line 220
    move-object/from16 v8, v17

    .line 221
    .line 222
    const/16 v1, 0x8

    .line 223
    .line 224
    const/4 v3, 0x2

    .line 225
    const/4 v7, 0x0

    .line 226
    goto/16 :goto_0

    .line 227
    .line 228
    :cond_4
    move/from16 v16, v2

    .line 229
    .line 230
    move-object/from16 v17, v8

    .line 231
    .line 232
    new-instance v0, Lk3/a;

    .line 233
    .line 234
    move/from16 v1, v16

    .line 235
    .line 236
    move-object/from16 v2, v17

    .line 237
    .line 238
    invoke-direct {v0, v1, v5, v6, v2}, Lk3/a;-><init>(I[I[I[I)V

    .line 239
    .line 240
    .line 241
    return-object v0
.end method

.method public static i(Lj3/f;)Lk3/c;
    .locals 6

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lj3/f;->g(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x4

    .line 8
    invoke-virtual {p0, v2}, Lj3/f;->o(I)V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    invoke-virtual {p0, v2}, Lj3/f;->g(I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {p0}, Lj3/f;->f()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x1

    .line 21
    invoke-virtual {p0, v4}, Lj3/f;->o(I)V

    .line 22
    .line 23
    .line 24
    sget-object v5, Lu1/f0;->b:[B

    .line 25
    .line 26
    if-ne v2, v4, :cond_0

    .line 27
    .line 28
    const/16 v2, 0x8

    .line 29
    .line 30
    invoke-virtual {p0, v2}, Lj3/f;->g(I)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    mul-int/lit8 v2, v2, 0x10

    .line 35
    .line 36
    invoke-virtual {p0, v2}, Lj3/f;->o(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    if-nez v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lj3/f;->g(I)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {p0, v0}, Lj3/f;->g(I)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-lez v2, :cond_1

    .line 51
    .line 52
    new-array v5, v2, [B

    .line 53
    .line 54
    invoke-virtual {p0, v5, v2}, Lj3/f;->j([BI)V

    .line 55
    .line 56
    .line 57
    :cond_1
    if-lez v0, :cond_2

    .line 58
    .line 59
    new-array v2, v0, [B

    .line 60
    .line 61
    invoke-virtual {p0, v2, v0}, Lj3/f;->j([BI)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    :goto_0
    move-object v2, v5

    .line 66
    :goto_1
    new-instance p0, Lk3/c;

    .line 67
    .line 68
    invoke-direct {p0, v5, v2, v1, v3}, Lk3/c;-><init>([B[BIZ)V

    .line 69
    .line 70
    .line 71
    return-object p0
.end method


# virtual methods
.method public final b([BIILi3/i;Lu1/f;)V
    .locals 44

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x1

    .line 9
    new-instance v5, Lj3/f;

    .line 10
    .line 11
    add-int v6, v1, p3

    .line 12
    .line 13
    move-object/from16 v7, p1

    .line 14
    .line 15
    invoke-direct {v5, v7, v6}, Lj3/f;-><init>([BI)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v5, v1}, Lj3/f;->m(I)V

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {v5}, Lj3/f;->b()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/16 v6, 0x30

    .line 26
    .line 27
    const/4 v7, 0x3

    .line 28
    iget-object v9, v0, Lk3/h;->f:Lk3/g;

    .line 29
    .line 30
    if-lt v1, v6, :cond_b

    .line 31
    .line 32
    invoke-virtual {v5, v2}, Lj3/f;->g(I)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/16 v6, 0xf

    .line 37
    .line 38
    if-ne v1, v6, :cond_b

    .line 39
    .line 40
    invoke-virtual {v5, v2}, Lj3/f;->g(I)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/16 v6, 0x10

    .line 45
    .line 46
    invoke-virtual {v5, v6}, Lj3/f;->g(I)I

    .line 47
    .line 48
    .line 49
    move-result v10

    .line 50
    invoke-virtual {v5, v6}, Lj3/f;->g(I)I

    .line 51
    .line 52
    .line 53
    move-result v11

    .line 54
    invoke-virtual {v5}, Lj3/f;->d()I

    .line 55
    .line 56
    .line 57
    move-result v12

    .line 58
    add-int/2addr v12, v11

    .line 59
    mul-int/lit8 v13, v11, 0x8

    .line 60
    .line 61
    invoke-virtual {v5}, Lj3/f;->b()I

    .line 62
    .line 63
    .line 64
    move-result v14

    .line 65
    if-le v13, v14, :cond_0

    .line 66
    .line 67
    const-string v1, "Data field length exceeds limit"

    .line 68
    .line 69
    invoke-static {v1}, Lu1/a;->p(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5}, Lj3/f;->b()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    invoke-virtual {v5, v1}, Lj3/f;->o(I)V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_8

    .line 80
    .line 81
    :cond_0
    const/4 v13, 0x4

    .line 82
    packed-switch v1, :pswitch_data_0

    .line 83
    .line 84
    .line 85
    goto/16 :goto_7

    .line 86
    .line 87
    :pswitch_0
    iget v1, v9, Lk3/g;->a:I

    .line 88
    .line 89
    if-ne v10, v1, :cond_a

    .line 90
    .line 91
    invoke-virtual {v5, v13}, Lj3/f;->o(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5}, Lj3/f;->f()Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    invoke-virtual {v5, v7}, Lj3/f;->o(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5, v6}, Lj3/f;->g(I)I

    .line 102
    .line 103
    .line 104
    move-result v14

    .line 105
    invoke-virtual {v5, v6}, Lj3/f;->g(I)I

    .line 106
    .line 107
    .line 108
    move-result v15

    .line 109
    if-eqz v1, :cond_1

    .line 110
    .line 111
    invoke-virtual {v5, v6}, Lj3/f;->g(I)I

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    invoke-virtual {v5, v6}, Lj3/f;->g(I)I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    invoke-virtual {v5, v6}, Lj3/f;->g(I)I

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    invoke-virtual {v5, v6}, Lj3/f;->g(I)I

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    move/from16 v17, v1

    .line 128
    .line 129
    move/from16 v19, v6

    .line 130
    .line 131
    move/from16 v18, v7

    .line 132
    .line 133
    move/from16 v16, v8

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_1
    move/from16 v17, v14

    .line 137
    .line 138
    move/from16 v19, v15

    .line 139
    .line 140
    const/16 v16, 0x0

    .line 141
    .line 142
    const/16 v18, 0x0

    .line 143
    .line 144
    :goto_1
    new-instance v1, Lk3/b;

    .line 145
    .line 146
    move-object v13, v1

    .line 147
    invoke-direct/range {v13 .. v19}, Lk3/b;-><init>(IIIIII)V

    .line 148
    .line 149
    .line 150
    iput-object v1, v9, Lk3/g;->h:Lk3/b;

    .line 151
    .line 152
    goto/16 :goto_7

    .line 153
    .line 154
    :pswitch_1
    iget v1, v9, Lk3/g;->a:I

    .line 155
    .line 156
    if-ne v10, v1, :cond_2

    .line 157
    .line 158
    invoke-static {v5}, Lk3/h;->i(Lj3/f;)Lk3/c;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    iget-object v6, v9, Lk3/g;->e:Landroid/util/SparseArray;

    .line 163
    .line 164
    iget v7, v1, Lk3/c;->a:I

    .line 165
    .line 166
    invoke-virtual {v6, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    goto/16 :goto_7

    .line 170
    .line 171
    :cond_2
    iget v1, v9, Lk3/g;->b:I

    .line 172
    .line 173
    if-ne v10, v1, :cond_a

    .line 174
    .line 175
    invoke-static {v5}, Lk3/h;->i(Lj3/f;)Lk3/c;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    iget-object v6, v9, Lk3/g;->g:Landroid/util/SparseArray;

    .line 180
    .line 181
    iget v7, v1, Lk3/c;->a:I

    .line 182
    .line 183
    invoke-virtual {v6, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_7

    .line 187
    .line 188
    :pswitch_2
    iget v1, v9, Lk3/g;->a:I

    .line 189
    .line 190
    if-ne v10, v1, :cond_3

    .line 191
    .line 192
    invoke-static {v5, v11}, Lk3/h;->h(Lj3/f;I)Lk3/a;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    iget-object v6, v9, Lk3/g;->d:Landroid/util/SparseArray;

    .line 197
    .line 198
    iget v7, v1, Lk3/a;->a:I

    .line 199
    .line 200
    invoke-virtual {v6, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    goto/16 :goto_7

    .line 204
    .line 205
    :cond_3
    iget v1, v9, Lk3/g;->b:I

    .line 206
    .line 207
    if-ne v10, v1, :cond_a

    .line 208
    .line 209
    invoke-static {v5, v11}, Lk3/h;->h(Lj3/f;I)Lk3/a;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    iget-object v6, v9, Lk3/g;->f:Landroid/util/SparseArray;

    .line 214
    .line 215
    iget v7, v1, Lk3/a;->a:I

    .line 216
    .line 217
    invoke-virtual {v6, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_7

    .line 221
    .line 222
    :pswitch_3
    iget-object v1, v9, Lk3/g;->i:La0/h;

    .line 223
    .line 224
    iget v14, v9, Lk3/g;->a:I

    .line 225
    .line 226
    if-ne v10, v14, :cond_a

    .line 227
    .line 228
    if-eqz v1, :cond_a

    .line 229
    .line 230
    invoke-virtual {v5, v2}, Lj3/f;->g(I)I

    .line 231
    .line 232
    .line 233
    move-result v10

    .line 234
    invoke-virtual {v5, v13}, Lj3/f;->o(I)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v5}, Lj3/f;->f()Z

    .line 238
    .line 239
    .line 240
    move-result v17

    .line 241
    invoke-virtual {v5, v7}, Lj3/f;->o(I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v5, v6}, Lj3/f;->g(I)I

    .line 245
    .line 246
    .line 247
    move-result v18

    .line 248
    invoke-virtual {v5, v6}, Lj3/f;->g(I)I

    .line 249
    .line 250
    .line 251
    move-result v19

    .line 252
    invoke-virtual {v5, v7}, Lj3/f;->g(I)I

    .line 253
    .line 254
    .line 255
    invoke-virtual {v5, v7}, Lj3/f;->g(I)I

    .line 256
    .line 257
    .line 258
    move-result v20

    .line 259
    invoke-virtual {v5, v3}, Lj3/f;->o(I)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v5, v2}, Lj3/f;->g(I)I

    .line 263
    .line 264
    .line 265
    move-result v21

    .line 266
    invoke-virtual {v5, v2}, Lj3/f;->g(I)I

    .line 267
    .line 268
    .line 269
    move-result v22

    .line 270
    invoke-virtual {v5, v13}, Lj3/f;->g(I)I

    .line 271
    .line 272
    .line 273
    move-result v23

    .line 274
    invoke-virtual {v5, v3}, Lj3/f;->g(I)I

    .line 275
    .line 276
    .line 277
    move-result v24

    .line 278
    invoke-virtual {v5, v3}, Lj3/f;->o(I)V

    .line 279
    .line 280
    .line 281
    add-int/lit8 v11, v11, -0xa

    .line 282
    .line 283
    new-instance v7, Landroid/util/SparseArray;

    .line 284
    .line 285
    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 286
    .line 287
    .line 288
    :goto_2
    if-lez v11, :cond_6

    .line 289
    .line 290
    invoke-virtual {v5, v6}, Lj3/f;->g(I)I

    .line 291
    .line 292
    .line 293
    move-result v14

    .line 294
    invoke-virtual {v5, v3}, Lj3/f;->g(I)I

    .line 295
    .line 296
    .line 297
    move-result v15

    .line 298
    invoke-virtual {v5, v3}, Lj3/f;->g(I)I

    .line 299
    .line 300
    .line 301
    const/16 v8, 0xc

    .line 302
    .line 303
    invoke-virtual {v5, v8}, Lj3/f;->g(I)I

    .line 304
    .line 305
    .line 306
    move-result v6

    .line 307
    invoke-virtual {v5, v13}, Lj3/f;->o(I)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v5, v8}, Lj3/f;->g(I)I

    .line 311
    .line 312
    .line 313
    move-result v8

    .line 314
    add-int/lit8 v16, v11, -0x6

    .line 315
    .line 316
    if-eq v15, v4, :cond_5

    .line 317
    .line 318
    if-ne v15, v3, :cond_4

    .line 319
    .line 320
    goto :goto_3

    .line 321
    :cond_4
    move/from16 v11, v16

    .line 322
    .line 323
    goto :goto_4

    .line 324
    :cond_5
    :goto_3
    invoke-virtual {v5, v2}, Lj3/f;->g(I)I

    .line 325
    .line 326
    .line 327
    invoke-virtual {v5, v2}, Lj3/f;->g(I)I

    .line 328
    .line 329
    .line 330
    add-int/lit8 v11, v11, -0x8

    .line 331
    .line 332
    :goto_4
    new-instance v15, Lk3/f;

    .line 333
    .line 334
    invoke-direct {v15, v6, v8}, Lk3/f;-><init>(II)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v7, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    const/16 v6, 0x10

    .line 341
    .line 342
    goto :goto_2

    .line 343
    :cond_6
    new-instance v6, Lk3/e;

    .line 344
    .line 345
    move-object v15, v6

    .line 346
    move/from16 v16, v10

    .line 347
    .line 348
    move-object/from16 v25, v7

    .line 349
    .line 350
    invoke-direct/range {v15 .. v25}, Lk3/e;-><init>(IZIIIIIIILandroid/util/SparseArray;)V

    .line 351
    .line 352
    .line 353
    iget-object v7, v9, Lk3/g;->c:Landroid/util/SparseArray;

    .line 354
    .line 355
    iget v1, v1, La0/h;->c:I

    .line 356
    .line 357
    if-nez v1, :cond_7

    .line 358
    .line 359
    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    check-cast v1, Lk3/e;

    .line 364
    .line 365
    if-eqz v1, :cond_7

    .line 366
    .line 367
    const/4 v8, 0x0

    .line 368
    :goto_5
    iget-object v9, v1, Lk3/e;->j:Landroid/util/SparseArray;

    .line 369
    .line 370
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    .line 371
    .line 372
    .line 373
    move-result v10

    .line 374
    if-ge v8, v10, :cond_7

    .line 375
    .line 376
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->keyAt(I)I

    .line 377
    .line 378
    .line 379
    move-result v10

    .line 380
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v9

    .line 384
    check-cast v9, Lk3/f;

    .line 385
    .line 386
    iget-object v11, v6, Lk3/e;->j:Landroid/util/SparseArray;

    .line 387
    .line 388
    invoke-virtual {v11, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 389
    .line 390
    .line 391
    add-int/2addr v8, v4

    .line 392
    goto :goto_5

    .line 393
    :cond_7
    iget v1, v6, Lk3/e;->a:I

    .line 394
    .line 395
    invoke-virtual {v7, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 396
    .line 397
    .line 398
    goto :goto_7

    .line 399
    :pswitch_4
    iget v1, v9, Lk3/g;->a:I

    .line 400
    .line 401
    if-ne v10, v1, :cond_a

    .line 402
    .line 403
    iget-object v1, v9, Lk3/g;->i:La0/h;

    .line 404
    .line 405
    invoke-virtual {v5, v2}, Lj3/f;->g(I)I

    .line 406
    .line 407
    .line 408
    invoke-virtual {v5, v13}, Lj3/f;->g(I)I

    .line 409
    .line 410
    .line 411
    move-result v6

    .line 412
    invoke-virtual {v5, v3}, Lj3/f;->g(I)I

    .line 413
    .line 414
    .line 415
    move-result v7

    .line 416
    invoke-virtual {v5, v3}, Lj3/f;->o(I)V

    .line 417
    .line 418
    .line 419
    sub-int/2addr v11, v3

    .line 420
    new-instance v8, Landroid/util/SparseArray;

    .line 421
    .line 422
    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 423
    .line 424
    .line 425
    :goto_6
    if-lez v11, :cond_8

    .line 426
    .line 427
    invoke-virtual {v5, v2}, Lj3/f;->g(I)I

    .line 428
    .line 429
    .line 430
    move-result v10

    .line 431
    invoke-virtual {v5, v2}, Lj3/f;->o(I)V

    .line 432
    .line 433
    .line 434
    const/16 v13, 0x10

    .line 435
    .line 436
    invoke-virtual {v5, v13}, Lj3/f;->g(I)I

    .line 437
    .line 438
    .line 439
    move-result v14

    .line 440
    invoke-virtual {v5, v13}, Lj3/f;->g(I)I

    .line 441
    .line 442
    .line 443
    move-result v15

    .line 444
    add-int/lit8 v11, v11, -0x6

    .line 445
    .line 446
    new-instance v2, Lk3/d;

    .line 447
    .line 448
    invoke-direct {v2, v14, v15}, Lk3/d;-><init>(II)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v8, v10, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 452
    .line 453
    .line 454
    const/16 v2, 0x8

    .line 455
    .line 456
    goto :goto_6

    .line 457
    :cond_8
    new-instance v2, La0/h;

    .line 458
    .line 459
    invoke-direct {v2, v6, v7, v8}, La0/h;-><init>(IILandroid/util/SparseArray;)V

    .line 460
    .line 461
    .line 462
    if-eqz v7, :cond_9

    .line 463
    .line 464
    iput-object v2, v9, Lk3/g;->i:La0/h;

    .line 465
    .line 466
    iget-object v1, v9, Lk3/g;->c:Landroid/util/SparseArray;

    .line 467
    .line 468
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 469
    .line 470
    .line 471
    iget-object v1, v9, Lk3/g;->d:Landroid/util/SparseArray;

    .line 472
    .line 473
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 474
    .line 475
    .line 476
    iget-object v1, v9, Lk3/g;->e:Landroid/util/SparseArray;

    .line 477
    .line 478
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 479
    .line 480
    .line 481
    goto :goto_7

    .line 482
    :cond_9
    if-eqz v1, :cond_a

    .line 483
    .line 484
    iget v1, v1, La0/h;->b:I

    .line 485
    .line 486
    if-eq v1, v6, :cond_a

    .line 487
    .line 488
    iput-object v2, v9, Lk3/g;->i:La0/h;

    .line 489
    .line 490
    :cond_a
    :goto_7
    invoke-virtual {v5}, Lj3/f;->d()I

    .line 491
    .line 492
    .line 493
    move-result v1

    .line 494
    sub-int/2addr v12, v1

    .line 495
    invoke-virtual {v5, v12}, Lj3/f;->p(I)V

    .line 496
    .line 497
    .line 498
    :goto_8
    const/16 v2, 0x8

    .line 499
    .line 500
    goto/16 :goto_0

    .line 501
    .line 502
    :cond_b
    iget-object v1, v9, Lk3/g;->i:La0/h;

    .line 503
    .line 504
    if-nez v1, :cond_c

    .line 505
    .line 506
    new-instance v1, Li3/a;

    .line 507
    .line 508
    sget-object v2, Lu7/g0;->b:Lu7/e0;

    .line 509
    .line 510
    sget-object v15, Lu7/y0;->e:Lu7/y0;

    .line 511
    .line 512
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    move-object v10, v1

    .line 523
    invoke-direct/range {v10 .. v15}, Li3/a;-><init>(JJLjava/util/List;)V

    .line 524
    .line 525
    .line 526
    :goto_9
    move-object/from16 v2, p5

    .line 527
    .line 528
    goto/16 :goto_15

    .line 529
    .line 530
    :cond_c
    iget-object v2, v9, Lk3/g;->h:Lk3/b;

    .line 531
    .line 532
    if-eqz v2, :cond_d

    .line 533
    .line 534
    goto :goto_a

    .line 535
    :cond_d
    iget-object v2, v0, Lk3/h;->d:Lk3/b;

    .line 536
    .line 537
    :goto_a
    iget-object v5, v0, Lk3/h;->g:Landroid/graphics/Bitmap;

    .line 538
    .line 539
    iget-object v6, v0, Lk3/h;->c:Landroid/graphics/Canvas;

    .line 540
    .line 541
    if-eqz v5, :cond_e

    .line 542
    .line 543
    iget v8, v2, Lk3/b;->a:I

    .line 544
    .line 545
    add-int/2addr v8, v4

    .line 546
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    .line 547
    .line 548
    .line 549
    move-result v5

    .line 550
    if-ne v8, v5, :cond_e

    .line 551
    .line 552
    iget v5, v2, Lk3/b;->b:I

    .line 553
    .line 554
    add-int/2addr v5, v4

    .line 555
    iget-object v8, v0, Lk3/h;->g:Landroid/graphics/Bitmap;

    .line 556
    .line 557
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    .line 558
    .line 559
    .line 560
    move-result v8

    .line 561
    if-eq v5, v8, :cond_f

    .line 562
    .line 563
    :cond_e
    iget v5, v2, Lk3/b;->a:I

    .line 564
    .line 565
    add-int/2addr v5, v4

    .line 566
    iget v8, v2, Lk3/b;->b:I

    .line 567
    .line 568
    add-int/2addr v8, v4

    .line 569
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 570
    .line 571
    invoke-static {v5, v8, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 572
    .line 573
    .line 574
    move-result-object v5

    .line 575
    iput-object v5, v0, Lk3/h;->g:Landroid/graphics/Bitmap;

    .line 576
    .line 577
    invoke-virtual {v6, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 578
    .line 579
    .line 580
    :cond_f
    new-instance v5, Ljava/util/ArrayList;

    .line 581
    .line 582
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 583
    .line 584
    .line 585
    const/4 v8, 0x0

    .line 586
    :goto_b
    iget-object v10, v1, La0/h;->d:Ljava/lang/Object;

    .line 587
    .line 588
    check-cast v10, Landroid/util/SparseArray;

    .line 589
    .line 590
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    .line 591
    .line 592
    .line 593
    move-result v11

    .line 594
    if-ge v8, v11, :cond_1a

    .line 595
    .line 596
    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    .line 597
    .line 598
    .line 599
    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 600
    .line 601
    .line 602
    move-result-object v11

    .line 603
    check-cast v11, Lk3/d;

    .line 604
    .line 605
    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->keyAt(I)I

    .line 606
    .line 607
    .line 608
    move-result v10

    .line 609
    iget-object v12, v9, Lk3/g;->c:Landroid/util/SparseArray;

    .line 610
    .line 611
    invoke-virtual {v12, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    move-result-object v10

    .line 615
    move-object v15, v10

    .line 616
    check-cast v15, Lk3/e;

    .line 617
    .line 618
    iget v10, v11, Lk3/d;->a:I

    .line 619
    .line 620
    iget v12, v2, Lk3/b;->c:I

    .line 621
    .line 622
    add-int v14, v10, v12

    .line 623
    .line 624
    iget v10, v11, Lk3/d;->b:I

    .line 625
    .line 626
    iget v11, v2, Lk3/b;->e:I

    .line 627
    .line 628
    add-int v13, v10, v11

    .line 629
    .line 630
    iget v10, v15, Lk3/e;->c:I

    .line 631
    .line 632
    add-int/2addr v10, v14

    .line 633
    iget v11, v2, Lk3/b;->d:I

    .line 634
    .line 635
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    .line 636
    .line 637
    .line 638
    move-result v10

    .line 639
    iget v12, v15, Lk3/e;->d:I

    .line 640
    .line 641
    add-int v11, v13, v12

    .line 642
    .line 643
    iget v4, v2, Lk3/b;->f:I

    .line 644
    .line 645
    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    .line 646
    .line 647
    .line 648
    move-result v4

    .line 649
    invoke-virtual {v6, v14, v13, v10, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 650
    .line 651
    .line 652
    iget-object v4, v9, Lk3/g;->d:Landroid/util/SparseArray;

    .line 653
    .line 654
    iget v10, v15, Lk3/e;->f:I

    .line 655
    .line 656
    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 657
    .line 658
    .line 659
    move-result-object v4

    .line 660
    check-cast v4, Lk3/a;

    .line 661
    .line 662
    if-nez v4, :cond_10

    .line 663
    .line 664
    iget-object v4, v9, Lk3/g;->f:Landroid/util/SparseArray;

    .line 665
    .line 666
    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object v4

    .line 670
    check-cast v4, Lk3/a;

    .line 671
    .line 672
    if-nez v4, :cond_10

    .line 673
    .line 674
    iget-object v4, v0, Lk3/h;->e:Lk3/a;

    .line 675
    .line 676
    :cond_10
    const/4 v10, 0x0

    .line 677
    :goto_c
    iget-object v3, v15, Lk3/e;->j:Landroid/util/SparseArray;

    .line 678
    .line 679
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 680
    .line 681
    .line 682
    move-result v7

    .line 683
    if-ge v10, v7, :cond_16

    .line 684
    .line 685
    invoke-virtual {v3, v10}, Landroid/util/SparseArray;->keyAt(I)I

    .line 686
    .line 687
    .line 688
    move-result v7

    .line 689
    invoke-virtual {v3, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 690
    .line 691
    .line 692
    move-result-object v3

    .line 693
    check-cast v3, Lk3/f;

    .line 694
    .line 695
    move-object/from16 v18, v1

    .line 696
    .line 697
    iget-object v1, v9, Lk3/g;->e:Landroid/util/SparseArray;

    .line 698
    .line 699
    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 700
    .line 701
    .line 702
    move-result-object v1

    .line 703
    check-cast v1, Lk3/c;

    .line 704
    .line 705
    if-nez v1, :cond_11

    .line 706
    .line 707
    iget-object v1, v9, Lk3/g;->g:Landroid/util/SparseArray;

    .line 708
    .line 709
    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 710
    .line 711
    .line 712
    move-result-object v1

    .line 713
    check-cast v1, Lk3/c;

    .line 714
    .line 715
    :cond_11
    if-eqz v1, :cond_15

    .line 716
    .line 717
    iget-boolean v7, v1, Lk3/c;->b:Z

    .line 718
    .line 719
    if-eqz v7, :cond_12

    .line 720
    .line 721
    const/4 v7, 0x0

    .line 722
    :goto_d
    move-object/from16 v19, v9

    .line 723
    .line 724
    goto :goto_e

    .line 725
    :cond_12
    iget-object v7, v0, Lk3/h;->a:Landroid/graphics/Paint;

    .line 726
    .line 727
    goto :goto_d

    .line 728
    :goto_e
    iget v9, v3, Lk3/f;->a:I

    .line 729
    .line 730
    add-int/2addr v9, v14

    .line 731
    iget v3, v3, Lk3/f;->b:I

    .line 732
    .line 733
    add-int/2addr v3, v13

    .line 734
    move/from16 v20, v8

    .line 735
    .line 736
    iget v8, v15, Lk3/e;->e:I

    .line 737
    .line 738
    move/from16 v16, v10

    .line 739
    .line 740
    const/4 v10, 0x3

    .line 741
    if-ne v8, v10, :cond_13

    .line 742
    .line 743
    iget-object v10, v4, Lk3/a;->d:[I

    .line 744
    .line 745
    :goto_f
    move-object/from16 v21, v10

    .line 746
    .line 747
    goto :goto_10

    .line 748
    :cond_13
    const/4 v10, 0x2

    .line 749
    if-ne v8, v10, :cond_14

    .line 750
    .line 751
    iget-object v10, v4, Lk3/a;->c:[I

    .line 752
    .line 753
    goto :goto_f

    .line 754
    :cond_14
    iget-object v10, v4, Lk3/a;->b:[I

    .line 755
    .line 756
    goto :goto_f

    .line 757
    :goto_10
    iget-object v10, v1, Lk3/c;->c:[B

    .line 758
    .line 759
    move/from16 v22, v16

    .line 760
    .line 761
    move-object/from16 p3, v5

    .line 762
    .line 763
    move v5, v11

    .line 764
    move-object/from16 v11, v21

    .line 765
    .line 766
    move-object/from16 v23, v2

    .line 767
    .line 768
    move v2, v12

    .line 769
    move v12, v8

    .line 770
    move/from16 v24, v2

    .line 771
    .line 772
    move v2, v13

    .line 773
    move v13, v9

    .line 774
    move/from16 v25, v5

    .line 775
    .line 776
    move v5, v14

    .line 777
    move v14, v3

    .line 778
    move/from16 v26, v2

    .line 779
    .line 780
    move-object v2, v15

    .line 781
    move-object v15, v7

    .line 782
    move-object/from16 v16, v6

    .line 783
    .line 784
    invoke-static/range {v10 .. v16}, Lk3/h;->g([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 785
    .line 786
    .line 787
    const/4 v10, 0x1

    .line 788
    add-int/lit8 v14, v3, 0x1

    .line 789
    .line 790
    iget-object v10, v1, Lk3/c;->d:[B

    .line 791
    .line 792
    invoke-static/range {v10 .. v16}, Lk3/h;->g([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 793
    .line 794
    .line 795
    :goto_11
    const/4 v1, 0x1

    .line 796
    goto :goto_12

    .line 797
    :cond_15
    move-object/from16 v23, v2

    .line 798
    .line 799
    move-object/from16 p3, v5

    .line 800
    .line 801
    move/from16 v20, v8

    .line 802
    .line 803
    move-object/from16 v19, v9

    .line 804
    .line 805
    move/from16 v22, v10

    .line 806
    .line 807
    move/from16 v25, v11

    .line 808
    .line 809
    move/from16 v24, v12

    .line 810
    .line 811
    move/from16 v26, v13

    .line 812
    .line 813
    move v5, v14

    .line 814
    move-object v2, v15

    .line 815
    goto :goto_11

    .line 816
    :goto_12
    add-int/lit8 v10, v22, 0x1

    .line 817
    .line 818
    move-object v15, v2

    .line 819
    move v14, v5

    .line 820
    move-object/from16 v1, v18

    .line 821
    .line 822
    move-object/from16 v9, v19

    .line 823
    .line 824
    move/from16 v8, v20

    .line 825
    .line 826
    move-object/from16 v2, v23

    .line 827
    .line 828
    move/from16 v12, v24

    .line 829
    .line 830
    move/from16 v11, v25

    .line 831
    .line 832
    move/from16 v13, v26

    .line 833
    .line 834
    const/4 v7, 0x3

    .line 835
    move-object/from16 v5, p3

    .line 836
    .line 837
    goto/16 :goto_c

    .line 838
    .line 839
    :cond_16
    move-object/from16 v18, v1

    .line 840
    .line 841
    move-object/from16 v23, v2

    .line 842
    .line 843
    move-object/from16 p3, v5

    .line 844
    .line 845
    move/from16 v20, v8

    .line 846
    .line 847
    move-object/from16 v19, v9

    .line 848
    .line 849
    move/from16 v25, v11

    .line 850
    .line 851
    move/from16 v24, v12

    .line 852
    .line 853
    move/from16 v26, v13

    .line 854
    .line 855
    move v5, v14

    .line 856
    move-object v2, v15

    .line 857
    iget-boolean v1, v2, Lk3/e;->b:Z

    .line 858
    .line 859
    iget v3, v2, Lk3/e;->c:I

    .line 860
    .line 861
    if-eqz v1, :cond_19

    .line 862
    .line 863
    iget v1, v2, Lk3/e;->e:I

    .line 864
    .line 865
    const/4 v7, 0x3

    .line 866
    if-ne v1, v7, :cond_17

    .line 867
    .line 868
    iget-object v1, v4, Lk3/a;->d:[I

    .line 869
    .line 870
    iget v2, v2, Lk3/e;->g:I

    .line 871
    .line 872
    aget v1, v1, v2

    .line 873
    .line 874
    const/4 v8, 0x2

    .line 875
    goto :goto_13

    .line 876
    :cond_17
    const/4 v8, 0x2

    .line 877
    if-ne v1, v8, :cond_18

    .line 878
    .line 879
    iget-object v1, v4, Lk3/a;->c:[I

    .line 880
    .line 881
    iget v2, v2, Lk3/e;->h:I

    .line 882
    .line 883
    aget v1, v1, v2

    .line 884
    .line 885
    goto :goto_13

    .line 886
    :cond_18
    iget-object v1, v4, Lk3/a;->b:[I

    .line 887
    .line 888
    iget v2, v2, Lk3/e;->i:I

    .line 889
    .line 890
    aget v1, v1, v2

    .line 891
    .line 892
    :goto_13
    iget-object v15, v0, Lk3/h;->b:Landroid/graphics/Paint;

    .line 893
    .line 894
    invoke-virtual {v15, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 895
    .line 896
    .line 897
    int-to-float v11, v5

    .line 898
    move/from16 v1, v26

    .line 899
    .line 900
    int-to-float v12, v1

    .line 901
    add-int v14, v5, v3

    .line 902
    .line 903
    int-to-float v13, v14

    .line 904
    move/from16 v2, v25

    .line 905
    .line 906
    int-to-float v14, v2

    .line 907
    move-object v10, v6

    .line 908
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 909
    .line 910
    .line 911
    goto :goto_14

    .line 912
    :cond_19
    move/from16 v1, v26

    .line 913
    .line 914
    const/4 v7, 0x3

    .line 915
    const/4 v8, 0x2

    .line 916
    :goto_14
    iget-object v2, v0, Lk3/h;->g:Landroid/graphics/Bitmap;

    .line 917
    .line 918
    move/from16 v4, v24

    .line 919
    .line 920
    invoke-static {v2, v5, v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 921
    .line 922
    .line 923
    move-result-object v28

    .line 924
    int-to-float v2, v5

    .line 925
    move-object/from16 v5, v23

    .line 926
    .line 927
    iget v9, v5, Lk3/b;->a:I

    .line 928
    .line 929
    int-to-float v9, v9

    .line 930
    div-float v32, v2, v9

    .line 931
    .line 932
    int-to-float v1, v1

    .line 933
    iget v2, v5, Lk3/b;->b:I

    .line 934
    .line 935
    int-to-float v2, v2

    .line 936
    div-float v29, v1, v2

    .line 937
    .line 938
    int-to-float v1, v3

    .line 939
    div-float v36, v1, v9

    .line 940
    .line 941
    int-to-float v1, v4

    .line 942
    div-float v37, v1, v2

    .line 943
    .line 944
    new-instance v1, Lt1/b;

    .line 945
    .line 946
    move-object/from16 v24, v1

    .line 947
    .line 948
    const/16 v38, 0x0

    .line 949
    .line 950
    const/high16 v39, -0x1000000

    .line 951
    .line 952
    const/16 v25, 0x0

    .line 953
    .line 954
    const/16 v26, 0x0

    .line 955
    .line 956
    move-object/from16 v27, v26

    .line 957
    .line 958
    const/16 v30, 0x0

    .line 959
    .line 960
    const/16 v31, 0x0

    .line 961
    .line 962
    const/16 v33, 0x0

    .line 963
    .line 964
    const/high16 v34, -0x80000000

    .line 965
    .line 966
    move/from16 v40, v34

    .line 967
    .line 968
    const v35, -0x800001

    .line 969
    .line 970
    .line 971
    const/16 v41, 0x0

    .line 972
    .line 973
    const/16 v42, 0x0

    .line 974
    .line 975
    invoke-direct/range {v24 .. v42}, Lt1/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFI)V

    .line 976
    .line 977
    .line 978
    move-object/from16 v2, p3

    .line 979
    .line 980
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 981
    .line 982
    .line 983
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 984
    .line 985
    const/4 v3, 0x0

    .line 986
    invoke-virtual {v6, v3, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 987
    .line 988
    .line 989
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    .line 990
    .line 991
    .line 992
    const/4 v1, 0x1

    .line 993
    add-int/lit8 v4, v20, 0x1

    .line 994
    .line 995
    move v8, v4

    .line 996
    move-object/from16 v1, v18

    .line 997
    .line 998
    move-object/from16 v9, v19

    .line 999
    .line 1000
    const/4 v3, 0x2

    .line 1001
    const/4 v4, 0x1

    .line 1002
    move-object/from16 v43, v5

    .line 1003
    .line 1004
    move-object v5, v2

    .line 1005
    move-object/from16 v2, v43

    .line 1006
    .line 1007
    goto/16 :goto_b

    .line 1008
    .line 1009
    :cond_1a
    move-object v2, v5

    .line 1010
    new-instance v1, Li3/a;

    .line 1011
    .line 1012
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    move-object v10, v1

    .line 1023
    move-object v15, v2

    .line 1024
    invoke-direct/range {v10 .. v15}, Li3/a;-><init>(JJLjava/util/List;)V

    .line 1025
    .line 1026
    .line 1027
    goto/16 :goto_9

    .line 1028
    .line 1029
    :goto_15
    invoke-interface {v2, v1}, Lu1/f;->accept(Ljava/lang/Object;)V

    .line 1030
    .line 1031
    .line 1032
    return-void

    .line 1033
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic e(II[B)Li3/d;
    .locals 0

    .line 1
    invoke-static {p0, p3, p2}, Lg/b;->a(Li3/j;[BI)Li3/b;

    move-result-object p1

    return-object p1
.end method

.method public final reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk3/h;->f:Lk3/g;

    .line 2
    .line 3
    iget-object v1, v0, Lk3/g;->c:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lk3/g;->d:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lk3/g;->e:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Lk3/g;->f:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 21
    .line 22
    .line 23
    iget-object v1, v0, Lk3/g;->g:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    iput-object v1, v0, Lk3/g;->h:Lk3/b;

    .line 30
    .line 31
    iput-object v1, v0, Lk3/g;->i:La0/h;

    .line 32
    .line 33
    return-void
.end method
