.class public abstract Lqf/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lqf/b;->a:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit16 v0, v0, 0xff

    .line 6
    .line 7
    int-to-short v0, v0

    .line 8
    and-int/lit16 v1, v0, 0x80

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    and-int/lit8 v0, v0, 0x7f

    .line 13
    .line 14
    shl-int/lit8 v0, v0, 0x8

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    and-int/lit16 p0, p0, 0xff

    .line 21
    .line 22
    int-to-short p0, p0

    .line 23
    add-int/2addr v0, p0

    .line 24
    :cond_0
    return v0
.end method

.method public static b(Ljava/nio/ByteBuffer;Ll2/l0;)Lab/a;
    .locals 2

    .line 1
    invoke-static {p0}, Ls1/g;->R(Ljava/nio/ByteBuffer;)I

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    and-int/lit16 v0, v0, 0xff

    .line 12
    .line 13
    int-to-short v0, v0

    .line 14
    if-eqz v0, :cond_5

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    if-eq v0, v1, :cond_4

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    if-eq v0, v1, :cond_2

    .line 21
    .line 22
    const/4 p1, 0x5

    .line 23
    if-eq v0, p1, :cond_1

    .line 24
    .line 25
    const/4 p1, 0x6

    .line 26
    if-eq v0, p1, :cond_0

    .line 27
    .line 28
    packed-switch v0, :pswitch_data_0

    .line 29
    .line 30
    .line 31
    packed-switch v0, :pswitch_data_1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    new-instance p1, Llf/d;

    .line 39
    .line 40
    invoke-direct {p1, p0, v0}, Llf/d;-><init>(IS)V

    .line 41
    .line 42
    .line 43
    return-object p1

    .line 44
    :pswitch_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    new-instance v0, Llf/c;

    .line 49
    .line 50
    invoke-direct {v0, p0, p1}, Llf/c;-><init>(II)V

    .line 51
    .line 52
    .line 53
    return-object v0

    .line 54
    :pswitch_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    new-instance p1, Llf/c;

    .line 59
    .line 60
    const/16 v0, 0x8

    .line 61
    .line 62
    invoke-direct {p1, p0, v0}, Llf/c;-><init>(II)V

    .line 63
    .line 64
    .line 65
    return-object p1

    .line 66
    :pswitch_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    new-instance p1, Llf/b;

    .line 71
    .line 72
    const/4 v0, 0x1

    .line 73
    invoke-direct {p1, p0, v0}, Llf/b;-><init>(II)V

    .line 74
    .line 75
    .line 76
    return-object p1

    .line 77
    :pswitch_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    new-instance p1, Llf/b;

    .line 82
    .line 83
    const/4 v0, 0x5

    .line 84
    invoke-direct {p1, p0, v0}, Llf/b;-><init>(II)V

    .line 85
    .line 86
    .line 87
    return-object p1

    .line 88
    :pswitch_4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    new-instance p1, Llf/b;

    .line 93
    .line 94
    const/4 v0, 0x2

    .line 95
    invoke-direct {p1, p0, v0}, Llf/b;-><init>(II)V

    .line 96
    .line 97
    .line 98
    return-object p1

    .line 99
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    new-instance p1, Llf/b;

    .line 104
    .line 105
    const/4 v0, 0x4

    .line 106
    invoke-direct {p1, p0, v0}, Llf/b;-><init>(II)V

    .line 107
    .line 108
    .line 109
    return-object p1

    .line 110
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    new-instance p1, Llf/b;

    .line 115
    .line 116
    const/4 v0, 0x3

    .line 117
    invoke-direct {p1, p0, v0}, Llf/b;-><init>(II)V

    .line 118
    .line 119
    .line 120
    return-object p1

    .line 121
    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 122
    .line 123
    .line 124
    move-result p0

    .line 125
    if-ltz p0, :cond_3

    .line 126
    .line 127
    new-instance v0, Llf/f;

    .line 128
    .line 129
    invoke-direct {v0, p0, p1}, Llf/f;-><init>(ILl2/l0;)V

    .line 130
    .line 131
    .line 132
    return-object v0

    .line 133
    :cond_3
    const/4 p0, 0x0

    .line 134
    return-object p0

    .line 135
    :cond_4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 136
    .line 137
    .line 138
    move-result p0

    .line 139
    new-instance p1, Llf/e;

    .line 140
    .line 141
    invoke-direct {p1, p0}, Llf/e;-><init>(I)V

    .line 142
    .line 143
    .line 144
    return-object p1

    .line 145
    :cond_5
    sget-object p0, Llf/b;->d:Llf/b;

    .line 146
    .line 147
    return-object p0

    .line 148
    nop

    .line 149
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

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
    :pswitch_data_1
    .packed-switch 0x1c
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c(Ljava/nio/ByteBuffer;Llf/g;)Ll2/l0;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Ljava/nio/Buffer;->position()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    int-to-long v2, v2

    .line 10
    iget v4, v1, Llf/g;->d:I

    .line 11
    .line 12
    new-array v5, v4, [I

    .line 13
    .line 14
    const-wide v7, 0xffffffffL

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    if-lez v4, :cond_0

    .line 20
    .line 21
    const/4 v9, 0x0

    .line 22
    :goto_0
    iget v10, v1, Llf/g;->d:I

    .line 23
    .line 24
    if-ge v9, v10, :cond_0

    .line 25
    .line 26
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 27
    .line 28
    .line 29
    move-result v10

    .line 30
    int-to-long v10, v10

    .line 31
    and-long/2addr v10, v7

    .line 32
    long-to-int v11, v10

    .line 33
    aput v11, v5, v9

    .line 34
    .line 35
    add-int/lit8 v9, v9, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-wide v9, v1, Llf/g;->e:J

    .line 39
    .line 40
    const-wide/16 v11, 0x100

    .line 41
    .line 42
    and-long/2addr v9, v11

    .line 43
    const-wide/16 v11, 0x0

    .line 44
    .line 45
    cmp-long v13, v9, v11

    .line 46
    .line 47
    if-eqz v13, :cond_1

    .line 48
    .line 49
    const/4 v9, 0x1

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const/4 v9, 0x0

    .line 52
    :goto_1
    iget-wide v10, v1, Llf/g;->f:J

    .line 53
    .line 54
    add-long/2addr v10, v2

    .line 55
    iget-short v12, v1, Llf/a;->b:S

    .line 56
    .line 57
    int-to-long v12, v12

    .line 58
    sub-long/2addr v10, v12

    .line 59
    invoke-static {v0, v10, v11}, Ls1/g;->P(Ljava/nio/ByteBuffer;J)V

    .line 60
    .line 61
    .line 62
    new-array v12, v4, [Lai/a;

    .line 63
    .line 64
    const/4 v13, 0x0

    .line 65
    :goto_2
    if-ge v13, v4, :cond_2

    .line 66
    .line 67
    new-instance v14, Lai/a;

    .line 68
    .line 69
    aget v15, v5, v13

    .line 70
    .line 71
    move-object/from16 v16, v5

    .line 72
    .line 73
    int-to-long v5, v15

    .line 74
    and-long/2addr v5, v7

    .line 75
    add-long/2addr v5, v10

    .line 76
    invoke-direct {v14, v13, v5, v6}, Lai/a;-><init>(IJ)V

    .line 77
    .line 78
    .line 79
    aput-object v14, v12, v13

    .line 80
    .line 81
    add-int/lit8 v13, v13, 0x1

    .line 82
    .line 83
    move-object/from16 v5, v16

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_2
    new-instance v5, Ll2/l0;

    .line 87
    .line 88
    iget v6, v1, Llf/g;->d:I

    .line 89
    .line 90
    invoke-direct {v5, v6}, Ll2/l0;-><init>(I)V

    .line 91
    .line 92
    .line 93
    const/4 v6, 0x0

    .line 94
    const-wide/16 v7, -0x1

    .line 95
    .line 96
    const/4 v10, 0x0

    .line 97
    :goto_3
    if-ge v10, v4, :cond_7

    .line 98
    .line 99
    aget-object v11, v12, v10

    .line 100
    .line 101
    iget-wide v13, v11, Lai/a;->b:J

    .line 102
    .line 103
    iget v15, v11, Lai/a;->a:I

    .line 104
    .line 105
    cmp-long v16, v13, v7

    .line 106
    .line 107
    if-nez v16, :cond_3

    .line 108
    .line 109
    iget-object v11, v5, Ll2/l0;->a:[Ljava/lang/String;

    .line 110
    .line 111
    aput-object v6, v11, v15

    .line 112
    .line 113
    goto :goto_6

    .line 114
    :cond_3
    invoke-static {v0, v13, v14}, Ls1/g;->P(Ljava/nio/ByteBuffer;J)V

    .line 115
    .line 116
    .line 117
    if-eqz v9, :cond_4

    .line 118
    .line 119
    invoke-static/range {p0 .. p0}, Lqf/b;->a(Ljava/nio/ByteBuffer;)I

    .line 120
    .line 121
    .line 122
    invoke-static/range {p0 .. p0}, Lqf/b;->a(Ljava/nio/ByteBuffer;)I

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    new-array v6, v6, [B

    .line 127
    .line 128
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 129
    .line 130
    .line 131
    new-instance v7, Ljava/lang/String;

    .line 132
    .line 133
    sget-object v8, Lqf/b;->a:Ljava/nio/charset/Charset;

    .line 134
    .line 135
    invoke-direct {v7, v6, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 139
    .line 140
    .line 141
    goto :goto_5

    .line 142
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    const v7, 0xffff

    .line 147
    .line 148
    .line 149
    and-int v8, v6, v7

    .line 150
    .line 151
    const v13, 0x8000

    .line 152
    .line 153
    .line 154
    and-int/2addr v13, v6

    .line 155
    if-eqz v13, :cond_5

    .line 156
    .line 157
    and-int/lit16 v6, v6, 0x7fff

    .line 158
    .line 159
    shl-int/lit8 v6, v6, 0x10

    .line 160
    .line 161
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 162
    .line 163
    .line 164
    move-result v8

    .line 165
    and-int/2addr v7, v8

    .line 166
    add-int v8, v6, v7

    .line 167
    .line 168
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 171
    .line 172
    .line 173
    const/4 v7, 0x0

    .line 174
    :goto_4
    if-ge v7, v8, :cond_6

    .line 175
    .line 176
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getChar()C

    .line 177
    .line 178
    .line 179
    move-result v13

    .line 180
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    add-int/lit8 v7, v7, 0x1

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 191
    .line 192
    .line 193
    :goto_5
    iget-object v6, v5, Ll2/l0;->a:[Ljava/lang/String;

    .line 194
    .line 195
    aput-object v7, v6, v15

    .line 196
    .line 197
    iget-wide v13, v11, Lai/a;->b:J

    .line 198
    .line 199
    move-object v6, v7

    .line 200
    move-wide v7, v13

    .line 201
    :goto_6
    add-int/lit8 v10, v10, 0x1

    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_7
    invoke-virtual/range {p1 .. p1}, Llf/a;->a()I

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    int-to-long v6, v1

    .line 209
    add-long/2addr v2, v6

    .line 210
    invoke-static {v0, v2, v3}, Ls1/g;->P(Ljava/nio/ByteBuffer;J)V

    .line 211
    .line 212
    .line 213
    return-object v5
.end method
