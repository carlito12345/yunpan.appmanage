.class public final Log/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final f:[S

.field public static final g:[I

.field public static final h:[I

.field public static final i:[I

.field public static final j:[I


# instance fields
.field public a:Z

.field public b:Ld/b;

.field public c:Lrg/a;

.field public final d:Ljava/io/InputStream;

.field public final e:Leb/h;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const/16 v0, 0x100

    .line 2
    .line 3
    const/16 v1, 0x120

    .line 4
    .line 5
    const/16 v2, 0x1d

    .line 6
    .line 7
    new-array v2, v2, [S

    .line 8
    .line 9
    fill-array-data v2, :array_0

    .line 10
    .line 11
    .line 12
    sput-object v2, Log/e;->f:[S

    .line 13
    .line 14
    const/16 v2, 0x20

    .line 15
    .line 16
    new-array v3, v2, [I

    .line 17
    .line 18
    fill-array-data v3, :array_1

    .line 19
    .line 20
    .line 21
    sput-object v3, Log/e;->g:[I

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    const/16 v4, 0x8

    .line 25
    .line 26
    const/4 v5, 0x7

    .line 27
    const/16 v6, 0x9

    .line 28
    .line 29
    const/4 v7, 0x5

    .line 30
    const/16 v8, 0x13

    .line 31
    .line 32
    new-array v8, v8, [I

    .line 33
    .line 34
    fill-array-data v8, :array_2

    .line 35
    .line 36
    .line 37
    sput-object v8, Log/e;->h:[I

    .line 38
    .line 39
    new-array v8, v1, [I

    .line 40
    .line 41
    sput-object v8, Log/e;->i:[I

    .line 42
    .line 43
    const/16 v9, 0x90

    .line 44
    .line 45
    invoke-static {v8, v3, v9, v4}, Ljava/util/Arrays;->fill([IIII)V

    .line 46
    .line 47
    .line 48
    invoke-static {v8, v9, v0, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 49
    .line 50
    .line 51
    const/16 v3, 0x118

    .line 52
    .line 53
    invoke-static {v8, v0, v3, v5}, Ljava/util/Arrays;->fill([IIII)V

    .line 54
    .line 55
    .line 56
    invoke-static {v8, v3, v1, v4}, Ljava/util/Arrays;->fill([IIII)V

    .line 57
    .line 58
    .line 59
    new-array v0, v2, [I

    .line 60
    .line 61
    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([II)V

    .line 62
    .line 63
    .line 64
    sput-object v0, Log/e;->j:[I

    .line 65
    .line 66
    return-void

    .line 67
    :array_0
    .array-data 2
        0x60s
        0x80s
        0xa0s
        0xc0s
        0xe0s
        0x100s
        0x120s
        0x140s
        0x161s
        0x1a1s
        0x1e1s
        0x221s
        0x262s
        0x2e2s
        0x362s
        0x3e2s
        0x463s
        0x563s
        0x663s
        0x763s
        0x864s
        0xa64s
        0xc64s
        0xe64s
        0x1065s
        0x1465s
        0x1865s
        0x1c65s
        0x70s
    .end array-data

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    nop

    .line 101
    :array_1
    .array-data 4
        0x10
        0x20
        0x30
        0x40
        0x51
        0x71
        0x92
        0xd2
        0x113
        0x193
        0x214
        0x314
        0x415
        0x615
        0x816
        0xc16
        0x1017
        0x1817
        0x2018
        0x3018
        0x4019
        0x6019
        0x801a
        0xc01a
        0x1001b
        0x1801b
        0x2001c
        0x3001c
        0x4001d
        0x6001d
        0x8001e
        0xc001e
    .end array-data

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    :array_2
    .array-data 4
        0x10
        0x11
        0x12
        0x0
        0x8
        0x7
        0x9
        0x6
        0xa
        0x5
        0xb
        0x4
        0xc
        0x3
        0xd
        0x2
        0xe
        0x1
        0xf
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Leb/h;

    .line 5
    .line 6
    invoke-direct {v0}, Leb/h;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Log/e;->e:Leb/h;

    .line 10
    .line 11
    new-instance v0, Lrg/a;

    .line 12
    .line 13
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 14
    .line 15
    invoke-direct {v0, p1, v1}, Lrg/a;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Log/e;->c:Lrg/a;

    .line 19
    .line 20
    iput-object p1, p0, Log/e;->d:Ljava/io/InputStream;

    .line 21
    .line 22
    new-instance p1, Log/c;

    .line 23
    .line 24
    invoke-direct {p1}, Log/c;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Log/e;->b:Ld/b;

    .line 28
    .line 29
    return-void
.end method

.method public static J(Lrg/a;La9/a;)I
    .locals 5

    .line 1
    :goto_0
    const/4 v0, -0x1

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget v1, p1, La9/a;->c:I

    .line 5
    .line 6
    if-ne v1, v0, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-static {p0, v0}, Log/e;->K(Lrg/a;I)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    iget-object p1, p1, La9/a;->d:Ljava/lang/Object;

    .line 20
    .line 21
    :goto_1
    check-cast p1, La9/a;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p1, p1, La9/a;->e:Ljava/lang/Object;

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    if-eqz p1, :cond_2

    .line 28
    .line 29
    iget v0, p1, La9/a;->c:I

    .line 30
    .line 31
    :cond_2
    return v0
.end method

.method public static K(Lrg/a;I)J
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lrg/a;->r(I)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    const-wide/16 v0, -0x1

    .line 6
    .line 7
    cmp-long v2, p0, v0

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    return-wide p0

    .line 12
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    .line 13
    .line 14
    const-string p1, "Truncated Deflate64 Stream"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static r([I)La9/a;
    .locals 11

    .line 1
    const/16 v0, 0x41

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    array-length v1, p0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    :goto_0
    const/4 v5, 0x1

    .line 10
    if-ge v3, v1, :cond_1

    .line 11
    .line 12
    aget v6, p0, v3

    .line 13
    .line 14
    if-ltz v6, :cond_0

    .line 15
    .line 16
    const/16 v7, 0x40

    .line 17
    .line 18
    if-gt v6, v7, :cond_0

    .line 19
    .line 20
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    aget v7, v0, v6

    .line 25
    .line 26
    add-int/2addr v7, v5

    .line 27
    aput v7, v0, v6

    .line 28
    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    const-string v0, "Invalid code "

    .line 35
    .line 36
    const-string v1, " in literal table"

    .line 37
    .line 38
    invoke-static {v0, v6, v1}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0

    .line 46
    :cond_1
    add-int/lit8 v1, v4, 0x1

    .line 47
    .line 48
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    new-array v1, v1, [I

    .line 53
    .line 54
    const/4 v3, 0x0

    .line 55
    const/4 v6, 0x0

    .line 56
    :goto_1
    if-gt v3, v4, :cond_2

    .line 57
    .line 58
    aget v7, v0, v3

    .line 59
    .line 60
    add-int/2addr v6, v7

    .line 61
    shl-int/2addr v6, v5

    .line 62
    aput v6, v1, v3

    .line 63
    .line 64
    add-int/lit8 v3, v3, 0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    new-instance v0, La9/a;

    .line 68
    .line 69
    const/4 v3, 0x7

    .line 70
    invoke-direct {v0, v2, v3}, La9/a;-><init>(II)V

    .line 71
    .line 72
    .line 73
    :goto_2
    array-length v3, p0

    .line 74
    if-ge v2, v3, :cond_9

    .line 75
    .line 76
    aget v3, p0, v2

    .line 77
    .line 78
    if-eqz v3, :cond_8

    .line 79
    .line 80
    add-int/lit8 v3, v3, -0x1

    .line 81
    .line 82
    aget v4, v1, v3

    .line 83
    .line 84
    move-object v7, v0

    .line 85
    move v6, v3

    .line 86
    :goto_3
    if-ltz v6, :cond_7

    .line 87
    .line 88
    shl-int v8, v5, v6

    .line 89
    .line 90
    and-int/2addr v8, v4

    .line 91
    const/4 v9, -0x1

    .line 92
    iget v10, v7, La9/a;->b:I

    .line 93
    .line 94
    if-nez v8, :cond_4

    .line 95
    .line 96
    iget-object v8, v7, La9/a;->d:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v8, La9/a;

    .line 99
    .line 100
    if-nez v8, :cond_3

    .line 101
    .line 102
    iget v8, v7, La9/a;->c:I

    .line 103
    .line 104
    if-ne v8, v9, :cond_3

    .line 105
    .line 106
    new-instance v8, La9/a;

    .line 107
    .line 108
    add-int/lit8 v10, v10, 0x1

    .line 109
    .line 110
    const/4 v9, 0x7

    .line 111
    invoke-direct {v8, v10, v9}, La9/a;-><init>(II)V

    .line 112
    .line 113
    .line 114
    iput-object v8, v7, La9/a;->d:Ljava/lang/Object;

    .line 115
    .line 116
    :cond_3
    iget-object v7, v7, La9/a;->d:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v7, La9/a;

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_4
    iget-object v8, v7, La9/a;->e:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v8, La9/a;

    .line 124
    .line 125
    if-nez v8, :cond_5

    .line 126
    .line 127
    iget v8, v7, La9/a;->c:I

    .line 128
    .line 129
    if-ne v8, v9, :cond_5

    .line 130
    .line 131
    new-instance v8, La9/a;

    .line 132
    .line 133
    add-int/lit8 v10, v10, 0x1

    .line 134
    .line 135
    const/4 v9, 0x7

    .line 136
    invoke-direct {v8, v10, v9}, La9/a;-><init>(II)V

    .line 137
    .line 138
    .line 139
    iput-object v8, v7, La9/a;->e:Ljava/lang/Object;

    .line 140
    .line 141
    :cond_5
    iget-object v7, v7, La9/a;->e:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v7, La9/a;

    .line 144
    .line 145
    :goto_4
    if-eqz v7, :cond_6

    .line 146
    .line 147
    add-int/lit8 v6, v6, -0x1

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 151
    .line 152
    const-string v0, "node doesn\'t exist in Huffman tree"

    .line 153
    .line 154
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p0

    .line 158
    :cond_7
    iput v2, v7, La9/a;->c:I

    .line 159
    .line 160
    const/4 v4, 0x0

    .line 161
    iput-object v4, v7, La9/a;->d:Ljava/lang/Object;

    .line 162
    .line 163
    iput-object v4, v7, La9/a;->e:Ljava/lang/Object;

    .line 164
    .line 165
    aget v4, v1, v3

    .line 166
    .line 167
    add-int/2addr v4, v5

    .line 168
    aput v4, v1, v3

    .line 169
    .line 170
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_9
    return-object v0
.end method


# virtual methods
.method public final A(II[B)I
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, -0x1

    .line 6
    const/4 v4, 0x1

    .line 7
    :goto_0
    iget-boolean v5, v0, Log/e;->a:Z

    .line 8
    .line 9
    if-eqz v5, :cond_1

    .line 10
    .line 11
    iget-object v5, v0, Log/e;->b:Ld/b;

    .line 12
    .line 13
    invoke-virtual {v5}, Ld/b;->M()Z

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    if-eqz v5, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    return v3

    .line 21
    :cond_1
    :goto_1
    iget-object v5, v0, Log/e;->b:Ld/b;

    .line 22
    .line 23
    invoke-virtual {v5}, Ld/b;->q0()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-ne v5, v4, :cond_d

    .line 28
    .line 29
    iget-object v5, v0, Log/e;->c:Lrg/a;

    .line 30
    .line 31
    invoke-static {v5, v4}, Log/e;->K(Lrg/a;I)J

    .line 32
    .line 33
    .line 34
    move-result-wide v5

    .line 35
    const-wide/16 v7, 0x1

    .line 36
    .line 37
    cmp-long v9, v5, v7

    .line 38
    .line 39
    if-nez v9, :cond_2

    .line 40
    .line 41
    const/4 v5, 0x1

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    const/4 v5, 0x0

    .line 44
    :goto_2
    iput-boolean v5, v0, Log/e;->a:Z

    .line 45
    .line 46
    iget-object v5, v0, Log/e;->c:Lrg/a;

    .line 47
    .line 48
    invoke-static {v5, v1}, Log/e;->K(Lrg/a;I)J

    .line 49
    .line 50
    .line 51
    move-result-wide v5

    .line 52
    long-to-int v6, v5

    .line 53
    const/16 v5, 0x10

    .line 54
    .line 55
    if-eqz v6, :cond_9

    .line 56
    .line 57
    const/4 v9, 0x4

    .line 58
    if-eq v6, v4, :cond_8

    .line 59
    .line 60
    if-ne v6, v1, :cond_7

    .line 61
    .line 62
    iget-object v6, v0, Log/e;->c:Lrg/a;

    .line 63
    .line 64
    const/4 v10, 0x5

    .line 65
    invoke-static {v6, v10}, Log/e;->K(Lrg/a;I)J

    .line 66
    .line 67
    .line 68
    move-result-wide v11

    .line 69
    const-wide/16 v13, 0x101

    .line 70
    .line 71
    add-long/2addr v11, v13

    .line 72
    long-to-int v6, v11

    .line 73
    new-array v6, v6, [I

    .line 74
    .line 75
    iget-object v11, v0, Log/e;->c:Lrg/a;

    .line 76
    .line 77
    invoke-static {v11, v10}, Log/e;->K(Lrg/a;I)J

    .line 78
    .line 79
    .line 80
    move-result-wide v10

    .line 81
    add-long/2addr v10, v7

    .line 82
    long-to-int v7, v10

    .line 83
    new-array v7, v7, [I

    .line 84
    .line 85
    new-array v8, v1, [[I

    .line 86
    .line 87
    aput-object v6, v8, v2

    .line 88
    .line 89
    aput-object v7, v8, v4

    .line 90
    .line 91
    iget-object v6, v0, Log/e;->c:Lrg/a;

    .line 92
    .line 93
    aget-object v7, v8, v2

    .line 94
    .line 95
    aget-object v10, v8, v4

    .line 96
    .line 97
    invoke-static {v6, v9}, Log/e;->K(Lrg/a;I)J

    .line 98
    .line 99
    .line 100
    move-result-wide v11

    .line 101
    const-wide/16 v13, 0x4

    .line 102
    .line 103
    add-long/2addr v11, v13

    .line 104
    long-to-int v9, v11

    .line 105
    const/16 v11, 0x13

    .line 106
    .line 107
    new-array v11, v11, [I

    .line 108
    .line 109
    const/4 v12, 0x0

    .line 110
    :goto_3
    const/4 v13, 0x3

    .line 111
    if-ge v12, v9, :cond_3

    .line 112
    .line 113
    sget-object v14, Log/e;->h:[I

    .line 114
    .line 115
    aget v14, v14, v12

    .line 116
    .line 117
    invoke-static {v6, v13}, Log/e;->K(Lrg/a;I)J

    .line 118
    .line 119
    .line 120
    move-result-wide v1

    .line 121
    long-to-int v2, v1

    .line 122
    aput v2, v11, v14

    .line 123
    .line 124
    add-int/2addr v12, v4

    .line 125
    const/4 v1, 0x2

    .line 126
    const/4 v2, 0x0

    .line 127
    goto :goto_3

    .line 128
    :cond_3
    invoke-static {v11}, Log/e;->r([I)La9/a;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    array-length v2, v7

    .line 133
    array-length v9, v10

    .line 134
    add-int/2addr v2, v9

    .line 135
    new-array v9, v2, [I

    .line 136
    .line 137
    const/4 v11, 0x0

    .line 138
    const/4 v12, 0x0

    .line 139
    const/4 v14, -0x1

    .line 140
    :goto_4
    if-ge v11, v2, :cond_6

    .line 141
    .line 142
    if-lez v12, :cond_4

    .line 143
    .line 144
    add-int/lit8 v15, v11, 0x1

    .line 145
    .line 146
    aput v14, v9, v11

    .line 147
    .line 148
    add-int/2addr v12, v3

    .line 149
    move v11, v15

    .line 150
    goto :goto_4

    .line 151
    :cond_4
    invoke-static {v6, v1}, Log/e;->J(Lrg/a;La9/a;)I

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    if-ge v3, v5, :cond_5

    .line 156
    .line 157
    add-int/lit8 v14, v11, 0x1

    .line 158
    .line 159
    aput v3, v9, v11

    .line 160
    .line 161
    move v4, v12

    .line 162
    move v11, v14

    .line 163
    move v14, v3

    .line 164
    goto :goto_6

    .line 165
    :cond_5
    const-wide/16 v16, 0x3

    .line 166
    .line 167
    packed-switch v3, :pswitch_data_0

    .line 168
    .line 169
    .line 170
    move v4, v12

    .line 171
    goto :goto_6

    .line 172
    :pswitch_0
    const/4 v3, 0x7

    .line 173
    invoke-static {v6, v3}, Log/e;->K(Lrg/a;I)J

    .line 174
    .line 175
    .line 176
    move-result-wide v16

    .line 177
    const-wide/16 v18, 0xb

    .line 178
    .line 179
    add-long v4, v16, v18

    .line 180
    .line 181
    :goto_5
    long-to-int v5, v4

    .line 182
    move v4, v5

    .line 183
    const/4 v14, 0x0

    .line 184
    goto :goto_6

    .line 185
    :pswitch_1
    invoke-static {v6, v13}, Log/e;->K(Lrg/a;I)J

    .line 186
    .line 187
    .line 188
    move-result-wide v4

    .line 189
    add-long v4, v4, v16

    .line 190
    .line 191
    goto :goto_5

    .line 192
    :pswitch_2
    const/4 v4, 0x2

    .line 193
    invoke-static {v6, v4}, Log/e;->K(Lrg/a;I)J

    .line 194
    .line 195
    .line 196
    move-result-wide v18

    .line 197
    add-long v3, v18, v16

    .line 198
    .line 199
    long-to-int v4, v3

    .line 200
    :goto_6
    move v12, v4

    .line 201
    const/4 v3, -0x1

    .line 202
    const/4 v4, 0x1

    .line 203
    const/16 v5, 0x10

    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_6
    array-length v1, v7

    .line 207
    const/4 v2, 0x0

    .line 208
    invoke-static {v9, v2, v7, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    .line 210
    .line 211
    array-length v1, v7

    .line 212
    array-length v3, v10

    .line 213
    invoke-static {v9, v1, v10, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    .line 215
    .line 216
    new-instance v1, Log/b;

    .line 217
    .line 218
    aget-object v3, v8, v2

    .line 219
    .line 220
    const/4 v4, 0x1

    .line 221
    aget-object v5, v8, v4

    .line 222
    .line 223
    invoke-direct {v1, v0, v13, v3, v5}, Log/b;-><init>(Log/e;I[I[I)V

    .line 224
    .line 225
    .line 226
    iput-object v1, v0, Log/e;->b:Ld/b;

    .line 227
    .line 228
    goto :goto_7

    .line 229
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 230
    .line 231
    const-string v2, "Unsupported compression: "

    .line 232
    .line 233
    invoke-static {v6, v2}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    throw v1

    .line 241
    :cond_8
    new-instance v1, Log/b;

    .line 242
    .line 243
    sget-object v3, Log/e;->i:[I

    .line 244
    .line 245
    sget-object v5, Log/e;->j:[I

    .line 246
    .line 247
    invoke-direct {v1, v0, v9, v3, v5}, Log/b;-><init>(Log/e;I[I[I)V

    .line 248
    .line 249
    .line 250
    iput-object v1, v0, Log/e;->b:Ld/b;

    .line 251
    .line 252
    goto :goto_7

    .line 253
    :cond_9
    iget-object v1, v0, Log/e;->c:Lrg/a;

    .line 254
    .line 255
    iget v3, v1, Lrg/a;->d:I

    .line 256
    .line 257
    rem-int/lit8 v3, v3, 0x8

    .line 258
    .line 259
    if-lez v3, :cond_a

    .line 260
    .line 261
    invoke-virtual {v1, v3}, Lrg/a;->A(I)J

    .line 262
    .line 263
    .line 264
    :cond_a
    iget-object v1, v0, Log/e;->c:Lrg/a;

    .line 265
    .line 266
    const/16 v3, 0x10

    .line 267
    .line 268
    invoke-static {v1, v3}, Log/e;->K(Lrg/a;I)J

    .line 269
    .line 270
    .line 271
    move-result-wide v5

    .line 272
    iget-object v1, v0, Log/e;->c:Lrg/a;

    .line 273
    .line 274
    invoke-static {v1, v3}, Log/e;->K(Lrg/a;I)J

    .line 275
    .line 276
    .line 277
    move-result-wide v7

    .line 278
    const-wide/32 v9, 0xffff

    .line 279
    .line 280
    .line 281
    xor-long v11, v5, v9

    .line 282
    .line 283
    and-long/2addr v9, v11

    .line 284
    cmp-long v1, v9, v7

    .line 285
    .line 286
    if-nez v1, :cond_c

    .line 287
    .line 288
    new-instance v1, Log/d;

    .line 289
    .line 290
    invoke-direct {v1, v0, v5, v6}, Log/d;-><init>(Log/e;J)V

    .line 291
    .line 292
    .line 293
    iput-object v1, v0, Log/e;->b:Ld/b;

    .line 294
    .line 295
    :cond_b
    :goto_7
    const/4 v1, 0x2

    .line 296
    const/4 v3, -0x1

    .line 297
    goto/16 :goto_0

    .line 298
    .line 299
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 300
    .line 301
    const-string v2, "Illegal LEN / NLEN values"

    .line 302
    .line 303
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    throw v1

    .line 307
    :cond_d
    iget-object v1, v0, Log/e;->b:Ld/b;

    .line 308
    .line 309
    move/from16 v3, p1

    .line 310
    .line 311
    move/from16 v5, p2

    .line 312
    .line 313
    move-object/from16 v6, p3

    .line 314
    .line 315
    invoke-virtual {v1, v6, v3, v5}, Ld/b;->f0([BII)I

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    if-eqz v1, :cond_b

    .line 320
    .line 321
    return v1

    .line 322
    nop

    .line 323
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final close()V
    .locals 1

    .line 1
    new-instance v0, Log/c;

    .line 2
    .line 3
    invoke-direct {v0}, Log/c;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Log/e;->b:Ld/b;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Log/e;->c:Lrg/a;

    .line 10
    .line 11
    return-void
.end method
