.class public abstract Lkg/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/math/BigInteger;

.field public static final b:Llg/a;

.field public static final c:Lha/l2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lkg/g;->a:Ljava/math/BigInteger;

    .line 8
    .line 9
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Llg/a;

    .line 14
    .line 15
    sget v2, Lsg/a;->a:I

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_0
    invoke-direct {v1, v0}, Llg/a;-><init>(Ljava/nio/charset/Charset;)V

    .line 24
    .line 25
    .line 26
    sput-object v1, Lkg/g;->b:Llg/a;

    .line 27
    .line 28
    new-instance v0, Lha/l2;

    .line 29
    .line 30
    const/16 v1, 0xf

    .line 31
    .line 32
    invoke-direct {v0, v1}, Lha/l2;-><init>(I)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lkg/g;->c:Lha/l2;

    .line 36
    .line 37
    return-void
.end method

.method public static a(II[B)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lkg/g;->b:Llg/a;

    .line 2
    .line 3
    invoke-static {p2, p0, p1, v0}, Lkg/g;->b([BIILlg/b;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    :try_start_1
    sget-object v0, Lkg/g;->c:Lha/l2;

    .line 9
    .line 10
    invoke-static {p2, p0, p1, v0}, Lkg/g;->b([BIILlg/b;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 14
    return-object p0

    .line 15
    :catch_1
    move-exception p0

    .line 16
    new-instance p1, Ljava/io/UncheckedIOException;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public static b([BIILlg/b;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v2, p1

    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    if-ge v1, p2, :cond_0

    .line 5
    .line 6
    aget-byte v3, p0, v2

    .line 7
    .line 8
    if-eqz v3, :cond_0

    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    if-lez v1, :cond_1

    .line 16
    .line 17
    new-array p2, v1, [B

    .line 18
    .line 19
    invoke-static {p0, p1, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p3, p2}, Llg/b;->decode([B)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1
    const-string p0, ""

    .line 28
    .line 29
    return-object p0
.end method

.method public static c(II[B)J
    .locals 7

    .line 1
    add-int v0, p0, p1

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-lt p1, v1, :cond_7

    .line 5
    .line 6
    aget-byte v1, p2, p0

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-wide v2

    .line 13
    :cond_0
    move v1, p0

    .line 14
    :goto_0
    const/16 v4, 0x20

    .line 15
    .line 16
    if-ge v1, v0, :cond_2

    .line 17
    .line 18
    aget-byte v5, p2, v1

    .line 19
    .line 20
    if-eq v5, v4, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    :goto_1
    add-int/lit8 v5, v0, -0x1

    .line 27
    .line 28
    aget-byte v5, p2, v5

    .line 29
    .line 30
    :goto_2
    if-ge v1, v0, :cond_4

    .line 31
    .line 32
    if-eqz v5, :cond_3

    .line 33
    .line 34
    if-ne v5, v4, :cond_4

    .line 35
    .line 36
    :cond_3
    add-int/lit8 v5, v0, -0x1

    .line 37
    .line 38
    add-int/lit8 v0, v0, -0x2

    .line 39
    .line 40
    aget-byte v0, p2, v0

    .line 41
    .line 42
    move v6, v5

    .line 43
    move v5, v0

    .line 44
    move v0, v6

    .line 45
    goto :goto_2

    .line 46
    :cond_4
    :goto_3
    if-ge v1, v0, :cond_6

    .line 47
    .line 48
    aget-byte v4, p2, v1

    .line 49
    .line 50
    const/16 v5, 0x30

    .line 51
    .line 52
    if-lt v4, v5, :cond_5

    .line 53
    .line 54
    const/16 v5, 0x37

    .line 55
    .line 56
    if-gt v4, v5, :cond_5

    .line 57
    .line 58
    const/4 v5, 0x3

    .line 59
    shl-long/2addr v2, v5

    .line 60
    add-int/lit8 v4, v4, -0x30

    .line 61
    .line 62
    int-to-long v4, v4

    .line 63
    add-long/2addr v2, v4

    .line 64
    add-int/lit8 v1, v1, 0x1

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 68
    .line 69
    new-instance v2, Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-direct {v2, p2, p0, p1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 76
    .line 77
    .line 78
    const-string p2, "\u0000"

    .line 79
    .line 80
    const-string v3, "{NUL}"

    .line 81
    .line 82
    invoke-virtual {v2, p2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    const-string v2, "Invalid byte "

    .line 87
    .line 88
    const-string v3, " at offset "

    .line 89
    .line 90
    invoke-static {v2, v4, v3}, Lg/b;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    sub-int/2addr v1, p0

    .line 95
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string p0, " in \'"

    .line 99
    .line 100
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string p0, "\' len="

    .line 107
    .line 108
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw v0

    .line 122
    :cond_6
    return-wide v2

    .line 123
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 124
    .line 125
    const-string p2, "Length "

    .line 126
    .line 127
    const-string v0, " must be at least 2"

    .line 128
    .line 129
    invoke-static {p2, p1, v0}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    goto :goto_5

    .line 137
    :goto_4
    throw p0

    .line 138
    :goto_5
    goto :goto_4
.end method

.method public static d(II[B)J
    .locals 8

    .line 1
    aget-byte v0, p2, p0

    .line 2
    .line 3
    and-int/lit16 v1, v0, 0x80

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1, p2}, Lkg/g;->c(II[B)J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    const/4 v2, -0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-ne v0, v2, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    :goto_0
    const-string v2, " byte binary number exceeds maximum signed long value"

    .line 21
    .line 22
    const-string v4, ", "

    .line 23
    .line 24
    const-string v5, "At offset "

    .line 25
    .line 26
    const/16 v6, 0x9

    .line 27
    .line 28
    if-ge p1, v6, :cond_6

    .line 29
    .line 30
    if-ge p1, v6, :cond_5

    .line 31
    .line 32
    const-wide/16 v2, 0x0

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    :goto_1
    if-ge v4, p1, :cond_2

    .line 36
    .line 37
    const/16 v5, 0x8

    .line 38
    .line 39
    shl-long/2addr v2, v5

    .line 40
    add-int v5, p0, v4

    .line 41
    .line 42
    aget-byte v5, p2, v5

    .line 43
    .line 44
    and-int/lit16 v5, v5, 0xff

    .line 45
    .line 46
    int-to-long v5, v5

    .line 47
    add-long/2addr v2, v5

    .line 48
    add-int/lit8 v4, v4, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    if-eqz v0, :cond_3

    .line 52
    .line 53
    const-wide/16 v4, 0x1

    .line 54
    .line 55
    sub-long/2addr v2, v4

    .line 56
    sub-int/2addr p1, v1

    .line 57
    int-to-double p0, p1

    .line 58
    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    .line 59
    .line 60
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    .line 61
    .line 62
    .line 63
    mul-double p0, p0, v6

    .line 64
    .line 65
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 66
    .line 67
    invoke-static {v6, v7, p0, p1}, Ljava/lang/Math;->pow(DD)D

    .line 68
    .line 69
    .line 70
    move-result-wide p0

    .line 71
    double-to-long p0, p0

    .line 72
    sub-long/2addr p0, v4

    .line 73
    xor-long/2addr v2, p0

    .line 74
    :cond_3
    if-eqz v0, :cond_4

    .line 75
    .line 76
    neg-long v2, v2

    .line 77
    :cond_4
    return-wide v2

    .line 78
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 79
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p2

    .line 105
    :cond_6
    add-int/lit8 v1, p1, -0x1

    .line 106
    .line 107
    new-array v6, v1, [B

    .line 108
    .line 109
    add-int/lit8 v7, p0, 0x1

    .line 110
    .line 111
    invoke-static {p2, v7, v6, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    .line 113
    .line 114
    new-instance p2, Ljava/math/BigInteger;

    .line 115
    .line 116
    invoke-direct {p2, v6}, Ljava/math/BigInteger;-><init>([B)V

    .line 117
    .line 118
    .line 119
    if-eqz v0, :cond_7

    .line 120
    .line 121
    sget-object v1, Lkg/g;->a:Ljava/math/BigInteger;

    .line 122
    .line 123
    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    invoke-virtual {p2}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    :cond_7
    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    const/16 v3, 0x3f

    .line 136
    .line 137
    if-gt v1, v3, :cond_9

    .line 138
    .line 139
    invoke-virtual {p2}, Ljava/math/BigInteger;->longValue()J

    .line 140
    .line 141
    .line 142
    move-result-wide p0

    .line 143
    if-eqz v0, :cond_8

    .line 144
    .line 145
    neg-long p0, p0

    .line 146
    :cond_8
    return-wide p0

    .line 147
    :cond_9
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 148
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    goto :goto_3

    .line 174
    :goto_2
    throw p2

    .line 175
    :goto_3
    goto :goto_2
.end method

.method public static e(Lkg/d;Ljava/util/ArrayList;Ljava/util/HashMap;J)Ljava/util/HashMap;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 8
    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    :cond_0
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x0

    .line 14
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lkg/d;->read()I

    .line 15
    .line 16
    .line 17
    move-result v8

    .line 18
    const/4 v9, -0x1

    .line 19
    const-wide/16 v10, 0x0

    .line 20
    .line 21
    if-eq v8, v9, :cond_12

    .line 22
    .line 23
    const/4 v12, 0x1

    .line 24
    add-int/2addr v6, v12

    .line 25
    add-int/lit8 v4, v4, 0x1

    .line 26
    .line 27
    const/16 v13, 0xa

    .line 28
    .line 29
    if-ne v8, v13, :cond_1

    .line 30
    .line 31
    const/4 v2, -0x1

    .line 32
    move-object/from16 v9, p0

    .line 33
    .line 34
    const/4 v10, 0x0

    .line 35
    goto/16 :goto_9

    .line 36
    .line 37
    :cond_1
    const/16 v14, 0x20

    .line 38
    .line 39
    if-ne v8, v14, :cond_10

    .line 40
    .line 41
    new-instance v8, Lyg/a;

    .line 42
    .line 43
    invoke-direct {v8}, Lyg/a;-><init>()V

    .line 44
    .line 45
    .line 46
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lkg/d;->read()I

    .line 47
    .line 48
    .line 49
    move-result v14

    .line 50
    if-eq v14, v9, :cond_f

    .line 51
    .line 52
    add-int/2addr v6, v12

    .line 53
    add-int/lit8 v4, v4, 0x1

    .line 54
    .line 55
    if-ltz v4, :cond_f

    .line 56
    .line 57
    cmp-long v15, p3, v10

    .line 58
    .line 59
    if-ltz v15, :cond_2

    .line 60
    .line 61
    int-to-long v2, v4

    .line 62
    cmp-long v16, v2, p3

    .line 63
    .line 64
    if-ltz v16, :cond_2

    .line 65
    .line 66
    :goto_2
    goto/16 :goto_8

    .line 67
    .line 68
    :cond_2
    const/16 v2, 0x3d

    .line 69
    .line 70
    if-ne v14, v2, :cond_e

    .line 71
    .line 72
    sget-object v2, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 73
    .line 74
    new-instance v3, Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v8}, Lyg/a;->A()[B

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    invoke-direct {v3, v8, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 81
    .line 82
    .line 83
    sub-int/2addr v7, v6

    .line 84
    if-gt v7, v12, :cond_3

    .line 85
    .line 86
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_3
    cmp-long v6, p3, v10

    .line 91
    .line 92
    if-ltz v6, :cond_4

    .line 93
    .line 94
    int-to-long v9, v7

    .line 95
    int-to-long v11, v4

    .line 96
    sub-long v11, p3, v11

    .line 97
    .line 98
    cmp-long v6, v9, v11

    .line 99
    .line 100
    if-gtz v6, :cond_5

    .line 101
    .line 102
    :cond_4
    move-object/from16 v9, p0

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_5
    new-instance v0, Ljava/io/IOException;

    .line 106
    .line 107
    const-string v1, "Paxheader value size "

    .line 108
    .line 109
    const-string v2, " exceeds size of header record"

    .line 110
    .line 111
    invoke-static {v1, v7, v2}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw v0

    .line 119
    :goto_3
    invoke-static {v7, v9}, Lrg/d;->a(ILjava/io/InputStream;)[B

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    array-length v8, v6

    .line 124
    if-ne v8, v7, :cond_d

    .line 125
    .line 126
    add-int/2addr v4, v7

    .line 127
    add-int/lit8 v7, v7, -0x1

    .line 128
    .line 129
    aget-byte v8, v6, v7

    .line 130
    .line 131
    if-ne v8, v13, :cond_c

    .line 132
    .line 133
    new-instance v8, Ljava/lang/String;

    .line 134
    .line 135
    const/4 v10, 0x0

    .line 136
    invoke-direct {v8, v6, v10, v7, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    const-string v2, "GNU.sparse.offset"

    .line 143
    .line 144
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-eqz v2, :cond_8

    .line 149
    .line 150
    if-eqz v5, :cond_6

    .line 151
    .line 152
    new-instance v2, Lkg/f;

    .line 153
    .line 154
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 155
    .line 156
    .line 157
    move-result-wide v5

    .line 158
    const-wide/16 v11, 0x0

    .line 159
    .line 160
    invoke-direct {v2, v5, v6, v11, v12}, Lkg/f;-><init>(JJ)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_6
    const-wide/16 v11, 0x0

    .line 168
    .line 169
    :goto_4
    :try_start_0
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 170
    .line 171
    .line 172
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 174
    .line 175
    .line 176
    move-result-wide v6

    .line 177
    cmp-long v2, v6, v11

    .line 178
    .line 179
    if-ltz v2, :cond_7

    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_7
    new-instance v0, Ljava/io/IOException;

    .line 183
    .line 184
    const-string v1, "Failed to read Paxheader.GNU.sparse.offset contains negative value"

    .line 185
    .line 186
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    throw v0

    .line 190
    :catch_0
    new-instance v0, Ljava/io/IOException;

    .line 191
    .line 192
    const-string v1, "Failed to read Paxheader.GNU.sparse.offset contains a non-numeric value"

    .line 193
    .line 194
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    throw v0

    .line 198
    :cond_8
    :goto_5
    const-string v2, "GNU.sparse.numbytes"

    .line 199
    .line 200
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    if-eqz v2, :cond_b

    .line 205
    .line 206
    if-eqz v5, :cond_a

    .line 207
    .line 208
    invoke-static {v8}, Lrg/b;->e(Ljava/lang/String;)J

    .line 209
    .line 210
    .line 211
    move-result-wide v2

    .line 212
    const-wide/16 v6, 0x0

    .line 213
    .line 214
    cmp-long v8, v2, v6

    .line 215
    .line 216
    if-ltz v8, :cond_9

    .line 217
    .line 218
    new-instance v6, Lkg/f;

    .line 219
    .line 220
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 221
    .line 222
    .line 223
    move-result-wide v7

    .line 224
    invoke-direct {v6, v7, v8, v2, v3}, Lkg/f;-><init>(JJ)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    const/4 v5, 0x0

    .line 231
    goto :goto_6

    .line 232
    :cond_9
    new-instance v0, Ljava/io/IOException;

    .line 233
    .line 234
    const-string v1, "Failed to read Paxheader.GNU.sparse.numbytes contains negative value"

    .line 235
    .line 236
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    throw v0

    .line 240
    :cond_a
    new-instance v0, Ljava/io/IOException;

    .line 241
    .line 242
    const-string v1, "Failed to read Paxheader.GNU.sparse.offset is expected before GNU.sparse.numbytes shows up."

    .line 243
    .line 244
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    throw v0

    .line 248
    :cond_b
    :goto_6
    move v8, v14

    .line 249
    :goto_7
    const/4 v2, -0x1

    .line 250
    goto :goto_9

    .line 251
    :cond_c
    new-instance v0, Ljava/io/IOException;

    .line 252
    .line 253
    const-string v1, "Failed to read Paxheader.Value should end with a newline"

    .line 254
    .line 255
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    throw v0

    .line 259
    :cond_d
    new-instance v0, Ljava/io/IOException;

    .line 260
    .line 261
    const-string v1, "Failed to read Paxheader. Expected "

    .line 262
    .line 263
    const-string v2, " bytes, read "

    .line 264
    .line 265
    invoke-static {v1, v7, v8, v2}, Landroid/support/v4/media/session/a;->o(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    throw v0

    .line 273
    :cond_e
    move-object/from16 v9, p0

    .line 274
    .line 275
    const/4 v10, 0x0

    .line 276
    int-to-byte v2, v14

    .line 277
    invoke-virtual {v8, v2}, Lyg/a;->write(I)V

    .line 278
    .line 279
    .line 280
    const/4 v9, -0x1

    .line 281
    const-wide/16 v10, 0x0

    .line 282
    .line 283
    goto/16 :goto_1

    .line 284
    .line 285
    :cond_f
    :goto_8
    move-object/from16 v9, p0

    .line 286
    .line 287
    const/4 v10, 0x0

    .line 288
    goto :goto_6

    .line 289
    :cond_10
    move-object/from16 v9, p0

    .line 290
    .line 291
    const/4 v10, 0x0

    .line 292
    const/16 v2, 0x30

    .line 293
    .line 294
    if-lt v8, v2, :cond_11

    .line 295
    .line 296
    const/16 v2, 0x39

    .line 297
    .line 298
    if-gt v8, v2, :cond_11

    .line 299
    .line 300
    mul-int/lit8 v7, v7, 0xa

    .line 301
    .line 302
    add-int/lit8 v8, v8, -0x30

    .line 303
    .line 304
    add-int/2addr v7, v8

    .line 305
    goto/16 :goto_0

    .line 306
    .line 307
    :cond_11
    new-instance v0, Ljava/io/IOException;

    .line 308
    .line 309
    const-string v1, "Failed to read Paxheader. Encountered a non-number while reading length"

    .line 310
    .line 311
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    throw v0

    .line 315
    :cond_12
    move-object/from16 v9, p0

    .line 316
    .line 317
    const/4 v10, 0x0

    .line 318
    goto :goto_7

    .line 319
    :goto_9
    if-ne v8, v2, :cond_0

    .line 320
    .line 321
    if-eqz v5, :cond_13

    .line 322
    .line 323
    new-instance v2, Lkg/f;

    .line 324
    .line 325
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 326
    .line 327
    .line 328
    move-result-wide v3

    .line 329
    const-wide/16 v5, 0x0

    .line 330
    .line 331
    invoke-direct {v2, v3, v4, v5, v6}, Lkg/f;-><init>(JJ)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    :cond_13
    return-object v1
.end method

.method public static f(Ljava/io/InputStream;)[J
    .locals 9

    .line 1
    const/16 v0, 0x30

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    move-wide v3, v1

    .line 6
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 7
    .line 8
    .line 9
    move-result v5

    .line 10
    const/16 v6, 0xa

    .line 11
    .line 12
    const-wide/16 v7, 0x1

    .line 13
    .line 14
    if-eq v5, v6, :cond_2

    .line 15
    .line 16
    add-long/2addr v1, v7

    .line 17
    const/4 v6, -0x1

    .line 18
    if-eq v5, v6, :cond_1

    .line 19
    .line 20
    if-lt v5, v0, :cond_0

    .line 21
    .line 22
    const/16 v6, 0x39

    .line 23
    .line 24
    if-gt v5, v6, :cond_0

    .line 25
    .line 26
    const-wide/16 v6, 0xa

    .line 27
    .line 28
    mul-long v3, v3, v6

    .line 29
    .line 30
    sub-int/2addr v5, v0

    .line 31
    int-to-long v5, v5

    .line 32
    add-long/2addr v3, v5

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 35
    .line 36
    const-string v0, "Corrupted TAR archive. Non-numeric value in sparse headers block"

    .line 37
    .line 38
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0

    .line 42
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 43
    .line 44
    const-string v0, "Unexpected EOF when reading parse information of 1.X PAX format"

    .line 45
    .line 46
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p0

    .line 50
    :cond_2
    add-long/2addr v1, v7

    .line 51
    const/4 p0, 0x2

    .line 52
    new-array p0, p0, [J

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    aput-wide v3, p0, v0

    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    aput-wide v1, p0, v0

    .line 59
    .line 60
    return-object p0
.end method

.method public static g(II[B)Ljava/util/List;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    if-ge v1, p1, :cond_2

    .line 8
    .line 9
    mul-int/lit8 v2, v1, 0x18

    .line 10
    .line 11
    add-int/2addr v2, p0

    .line 12
    const/16 v3, 0xc

    .line 13
    .line 14
    :try_start_0
    invoke-static {v2, v3, p2}, Lkg/g;->d(II[B)J

    .line 15
    .line 16
    .line 17
    move-result-wide v4

    .line 18
    add-int/lit8 v2, v2, 0xc

    .line 19
    .line 20
    invoke-static {v2, v3, p2}, Lkg/g;->d(II[B)J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    new-instance v6, Lkg/f;

    .line 25
    .line 26
    invoke-direct {v6, v4, v5, v2, v3}, Lkg/f;-><init>(JJ)V

    .line 27
    .line 28
    .line 29
    const-wide/16 v7, 0x0

    .line 30
    .line 31
    cmp-long v9, v4, v7

    .line 32
    .line 33
    if-ltz v9, :cond_1

    .line 34
    .line 35
    cmp-long v4, v2, v7

    .line 36
    .line 37
    if-ltz v4, :cond_0

    .line 38
    .line 39
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 48
    .line 49
    const-string p1, "Corrupted TAR archive, sparse entry with negative numbytes"

    .line 50
    .line 51
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 56
    .line 57
    const-string p1, "Corrupted TAR archive, sparse entry with negative offset"

    .line 58
    .line 59
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_1
    new-instance p1, Ljava/io/IOException;

    .line 64
    .line 65
    const-string p2, "Corrupted TAR archive, sparse entry is invalid"

    .line 66
    .line 67
    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    throw p1

    .line 71
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0
.end method
