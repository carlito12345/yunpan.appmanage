.class public final Lfg/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfg/k;
.implements Lfg/j;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# instance fields
.field public a:Lfg/u;

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final A()Lfg/i;
    .locals 6

    .line 1
    new-instance v0, Lfg/i;

    .line 2
    .line 3
    invoke-direct {v0}, Lfg/i;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Lfg/i;->b:J

    .line 7
    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    cmp-long v5, v1, v3

    .line 11
    .line 12
    if-nez v5, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget-object v1, p0, Lfg/i;->a:Lfg/u;

    .line 16
    .line 17
    invoke-static {v1}, Lue/d;->b(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lfg/u;->c()Lfg/u;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iput-object v2, v0, Lfg/i;->a:Lfg/u;

    .line 25
    .line 26
    iput-object v2, v2, Lfg/u;->g:Lfg/u;

    .line 27
    .line 28
    iput-object v2, v2, Lfg/u;->f:Lfg/u;

    .line 29
    .line 30
    iget-object v3, v1, Lfg/u;->f:Lfg/u;

    .line 31
    .line 32
    :goto_0
    if-eq v3, v1, :cond_1

    .line 33
    .line 34
    iget-object v4, v2, Lfg/u;->g:Lfg/u;

    .line 35
    .line 36
    invoke-static {v4}, Lue/d;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v3}, Lue/d;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Lfg/u;->c()Lfg/u;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v4, v5}, Lfg/u;->b(Lfg/u;)V

    .line 47
    .line 48
    .line 49
    iget-object v3, v3, Lfg/u;->f:Lfg/u;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-wide v1, p0, Lfg/i;->b:J

    .line 53
    .line 54
    iput-wide v1, v0, Lfg/i;->b:J

    .line 55
    .line 56
    :goto_1
    return-object v0
.end method

.method public final B(J)[B
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-ltz v2, :cond_1

    .line 6
    .line 7
    const-wide/32 v0, 0x7fffffff

    .line 8
    .line 9
    .line 10
    cmp-long v2, p1, v0

    .line 11
    .line 12
    if-gtz v2, :cond_1

    .line 13
    .line 14
    iget-wide v0, p0, Lfg/i;->b:J

    .line 15
    .line 16
    cmp-long v2, v0, p1

    .line 17
    .line 18
    if-ltz v2, :cond_0

    .line 19
    .line 20
    long-to-int p2, p1

    .line 21
    new-array p1, p2, [B

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lfg/i;->readFully([B)V

    .line 24
    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_1
    const-string v0, "byteCount: "

    .line 34
    .line 35
    invoke-static {p1, p2, v0}, Lta/q;->j(JLjava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p2
.end method

.method public final D(Lfg/i;J)V
    .locals 3

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lfg/i;->b:J

    .line 7
    .line 8
    cmp-long v2, v0, p2

    .line 9
    .line 10
    if-ltz v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1, p0, p2, p3}, Lfg/i;->write(Lfg/i;J)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p1, p0, v0, v1}, Lfg/i;->write(Lfg/i;J)V

    .line 17
    .line 18
    .line 19
    new-instance p1, Ljava/io/EOFException;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public final F(J)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lfg/i;->b:J

    .line 2
    .line 3
    cmp-long v2, v0, p1

    .line 4
    .line 5
    if-ltz v2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public final H()J
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/16 v2, 0x30

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    iget-wide v5, v0, Lfg/i;->b:J

    .line 9
    .line 10
    const-wide/16 v7, 0x0

    .line 11
    .line 12
    cmp-long v9, v5, v7

    .line 13
    .line 14
    if-eqz v9, :cond_9

    .line 15
    .line 16
    move-wide v5, v7

    .line 17
    const/4 v9, 0x0

    .line 18
    const/4 v10, 0x0

    .line 19
    :cond_0
    iget-object v11, v0, Lfg/i;->a:Lfg/u;

    .line 20
    .line 21
    invoke-static {v11}, Lue/d;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget v12, v11, Lfg/u;->b:I

    .line 25
    .line 26
    iget v13, v11, Lfg/u;->c:I

    .line 27
    .line 28
    :goto_0
    if-ge v12, v13, :cond_6

    .line 29
    .line 30
    iget-object v14, v11, Lfg/u;->a:[B

    .line 31
    .line 32
    aget-byte v14, v14, v12

    .line 33
    .line 34
    if-lt v14, v2, :cond_1

    .line 35
    .line 36
    const/16 v15, 0x39

    .line 37
    .line 38
    if-gt v14, v15, :cond_1

    .line 39
    .line 40
    add-int/lit8 v15, v14, -0x30

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/16 v15, 0x61

    .line 44
    .line 45
    if-lt v14, v15, :cond_2

    .line 46
    .line 47
    const/16 v15, 0x66

    .line 48
    .line 49
    if-gt v14, v15, :cond_2

    .line 50
    .line 51
    add-int/lit8 v15, v14, -0x57

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const/16 v15, 0x41

    .line 55
    .line 56
    if-lt v14, v15, :cond_4

    .line 57
    .line 58
    const/16 v15, 0x46

    .line 59
    .line 60
    if-gt v14, v15, :cond_4

    .line 61
    .line 62
    add-int/lit8 v15, v14, -0x37

    .line 63
    .line 64
    :goto_1
    const-wide/high16 v16, -0x1000000000000000L    # -3.105036184601418E231

    .line 65
    .line 66
    and-long v16, v5, v16

    .line 67
    .line 68
    cmp-long v18, v16, v7

    .line 69
    .line 70
    if-nez v18, :cond_3

    .line 71
    .line 72
    shl-long/2addr v5, v1

    .line 73
    int-to-long v14, v15

    .line 74
    or-long/2addr v5, v14

    .line 75
    add-int/2addr v12, v4

    .line 76
    add-int/2addr v9, v4

    .line 77
    goto :goto_0

    .line 78
    :cond_3
    new-instance v1, Lfg/i;

    .line 79
    .line 80
    invoke-direct {v1}, Lfg/i;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v5, v6}, Lfg/i;->Y(J)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v14}, Lfg/i;->W(I)V

    .line 87
    .line 88
    .line 89
    new-instance v2, Ljava/lang/NumberFormatException;

    .line 90
    .line 91
    invoke-virtual {v1}, Lfg/i;->Q()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    const-string v3, "Number too large: "

    .line 96
    .line 97
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-direct {v2, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v2

    .line 105
    :cond_4
    if-eqz v9, :cond_5

    .line 106
    .line 107
    const/4 v10, 0x1

    .line 108
    goto :goto_2

    .line 109
    :cond_5
    new-instance v2, Ljava/lang/NumberFormatException;

    .line 110
    .line 111
    sget-object v5, Lgg/b;->a:[C

    .line 112
    .line 113
    shr-int/lit8 v1, v14, 0x4

    .line 114
    .line 115
    and-int/lit8 v1, v1, 0xf

    .line 116
    .line 117
    aget-char v1, v5, v1

    .line 118
    .line 119
    and-int/lit8 v6, v14, 0xf

    .line 120
    .line 121
    aget-char v5, v5, v6

    .line 122
    .line 123
    const/4 v6, 0x2

    .line 124
    new-array v6, v6, [C

    .line 125
    .line 126
    aput-char v1, v6, v3

    .line 127
    .line 128
    aput-char v5, v6, v4

    .line 129
    .line 130
    new-instance v1, Ljava/lang/String;

    .line 131
    .line 132
    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([C)V

    .line 133
    .line 134
    .line 135
    const-string v3, "Expected leading [0-9a-fA-F] character but was 0x"

    .line 136
    .line 137
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-direct {v2, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw v2

    .line 145
    :cond_6
    :goto_2
    if-ne v12, v13, :cond_7

    .line 146
    .line 147
    invoke-virtual {v11}, Lfg/u;->a()Lfg/u;

    .line 148
    .line 149
    .line 150
    move-result-object v12

    .line 151
    iput-object v12, v0, Lfg/i;->a:Lfg/u;

    .line 152
    .line 153
    invoke-static {v11}, Lfg/v;->a(Lfg/u;)V

    .line 154
    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_7
    iput v12, v11, Lfg/u;->b:I

    .line 158
    .line 159
    :goto_3
    if-nez v10, :cond_8

    .line 160
    .line 161
    iget-object v11, v0, Lfg/i;->a:Lfg/u;

    .line 162
    .line 163
    if-nez v11, :cond_0

    .line 164
    .line 165
    :cond_8
    iget-wide v1, v0, Lfg/i;->b:J

    .line 166
    .line 167
    int-to-long v3, v9

    .line 168
    sub-long/2addr v1, v3

    .line 169
    iput-wide v1, v0, Lfg/i;->b:J

    .line 170
    .line 171
    return-wide v5

    .line 172
    :cond_9
    new-instance v1, Ljava/io/EOFException;

    .line 173
    .line 174
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    .line 175
    .line 176
    .line 177
    goto :goto_5

    .line 178
    :goto_4
    throw v1

    .line 179
    :goto_5
    goto :goto_4
.end method

.method public final I()Ljava/io/InputStream;
    .locals 2

    .line 1
    new-instance v0, Lfg/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lfg/h;-><init>(Lfg/k;I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final J()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lfg/i;->b:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v2, p0, Lfg/i;->a:Lfg/u;

    .line 11
    .line 12
    invoke-static {v2}, Lue/d;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, v2, Lfg/u;->g:Lfg/u;

    .line 16
    .line 17
    invoke-static {v2}, Lue/d;->b(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget v3, v2, Lfg/u;->c:I

    .line 21
    .line 22
    const/16 v4, 0x2000

    .line 23
    .line 24
    if-ge v3, v4, :cond_1

    .line 25
    .line 26
    iget-boolean v4, v2, Lfg/u;->e:Z

    .line 27
    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    iget v2, v2, Lfg/u;->b:I

    .line 31
    .line 32
    sub-int/2addr v3, v2

    .line 33
    int-to-long v2, v3

    .line 34
    sub-long/2addr v0, v2

    .line 35
    :cond_1
    move-wide v2, v0

    .line 36
    :goto_0
    return-wide v2
.end method

.method public final K(JLfg/i;J)V
    .locals 7

    .line 1
    const-string v0, "out"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Lfg/i;->b:J

    .line 7
    .line 8
    move-wide v3, p1

    .line 9
    move-wide v5, p4

    .line 10
    invoke-static/range {v1 .. v6}, Lfg/e0;->d(JJJ)V

    .line 11
    .line 12
    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    cmp-long v2, p4, v0

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_3

    .line 20
    :cond_0
    iget-wide v2, p3, Lfg/i;->b:J

    .line 21
    .line 22
    add-long/2addr v2, p4

    .line 23
    iput-wide v2, p3, Lfg/i;->b:J

    .line 24
    .line 25
    iget-object v2, p0, Lfg/i;->a:Lfg/u;

    .line 26
    .line 27
    :goto_0
    invoke-static {v2}, Lue/d;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget v3, v2, Lfg/u;->c:I

    .line 31
    .line 32
    iget v4, v2, Lfg/u;->b:I

    .line 33
    .line 34
    sub-int/2addr v3, v4

    .line 35
    int-to-long v3, v3

    .line 36
    cmp-long v5, p1, v3

    .line 37
    .line 38
    if-ltz v5, :cond_1

    .line 39
    .line 40
    sub-long/2addr p1, v3

    .line 41
    iget-object v2, v2, Lfg/u;->f:Lfg/u;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    :goto_1
    cmp-long v3, p4, v0

    .line 45
    .line 46
    if-lez v3, :cond_3

    .line 47
    .line 48
    invoke-static {v2}, Lue/d;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Lfg/u;->c()Lfg/u;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    iget v4, v3, Lfg/u;->b:I

    .line 56
    .line 57
    long-to-int p2, p1

    .line 58
    add-int/2addr v4, p2

    .line 59
    iput v4, v3, Lfg/u;->b:I

    .line 60
    .line 61
    long-to-int p1, p4

    .line 62
    add-int/2addr v4, p1

    .line 63
    iget p1, v3, Lfg/u;->c:I

    .line 64
    .line 65
    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    iput p1, v3, Lfg/u;->c:I

    .line 70
    .line 71
    iget-object p1, p3, Lfg/i;->a:Lfg/u;

    .line 72
    .line 73
    if-nez p1, :cond_2

    .line 74
    .line 75
    iput-object v3, v3, Lfg/u;->g:Lfg/u;

    .line 76
    .line 77
    iput-object v3, v3, Lfg/u;->f:Lfg/u;

    .line 78
    .line 79
    iput-object v3, p3, Lfg/i;->a:Lfg/u;

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_2
    iget-object p1, p1, Lfg/u;->g:Lfg/u;

    .line 83
    .line 84
    invoke-static {p1}, Lue/d;->b(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v3}, Lfg/u;->b(Lfg/u;)V

    .line 88
    .line 89
    .line 90
    :goto_2
    iget p1, v3, Lfg/u;->c:I

    .line 91
    .line 92
    iget p2, v3, Lfg/u;->b:I

    .line 93
    .line 94
    sub-int/2addr p1, p2

    .line 95
    int-to-long p1, p1

    .line 96
    sub-long/2addr p4, p1

    .line 97
    iget-object v2, v2, Lfg/u;->f:Lfg/u;

    .line 98
    .line 99
    move-wide p1, v0

    .line 100
    goto :goto_1

    .line 101
    :cond_3
    :goto_3
    return-void
.end method

.method public final L(J)B
    .locals 7

    .line 1
    iget-wide v0, p0, Lfg/i;->b:J

    .line 2
    .line 3
    const-wide/16 v4, 0x1

    .line 4
    .line 5
    move-wide v2, p1

    .line 6
    invoke-static/range {v0 .. v5}, Lfg/e0;->d(JJJ)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lfg/i;->a:Lfg/u;

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    iget-wide v1, p0, Lfg/i;->b:J

    .line 14
    .line 15
    sub-long v3, v1, p1

    .line 16
    .line 17
    cmp-long v5, v3, p1

    .line 18
    .line 19
    if-gez v5, :cond_1

    .line 20
    .line 21
    :goto_0
    cmp-long v3, v1, p1

    .line 22
    .line 23
    if-lez v3, :cond_0

    .line 24
    .line 25
    iget-object v0, v0, Lfg/u;->g:Lfg/u;

    .line 26
    .line 27
    invoke-static {v0}, Lue/d;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget v3, v0, Lfg/u;->c:I

    .line 31
    .line 32
    iget v4, v0, Lfg/u;->b:I

    .line 33
    .line 34
    sub-int/2addr v3, v4

    .line 35
    int-to-long v3, v3

    .line 36
    sub-long/2addr v1, v3

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget v3, v0, Lfg/u;->b:I

    .line 39
    .line 40
    int-to-long v3, v3

    .line 41
    add-long/2addr v3, p1

    .line 42
    sub-long/2addr v3, v1

    .line 43
    long-to-int p1, v3

    .line 44
    iget-object p2, v0, Lfg/u;->a:[B

    .line 45
    .line 46
    aget-byte p1, p2, p1

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_1
    const-wide/16 v1, 0x0

    .line 50
    .line 51
    :goto_1
    iget v3, v0, Lfg/u;->c:I

    .line 52
    .line 53
    iget v4, v0, Lfg/u;->b:I

    .line 54
    .line 55
    sub-int/2addr v3, v4

    .line 56
    int-to-long v5, v3

    .line 57
    add-long/2addr v5, v1

    .line 58
    cmp-long v3, v5, p1

    .line 59
    .line 60
    if-gtz v3, :cond_2

    .line 61
    .line 62
    iget-object v0, v0, Lfg/u;->f:Lfg/u;

    .line 63
    .line 64
    invoke-static {v0}, Lue/d;->b(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    move-wide v1, v5

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    int-to-long v3, v4

    .line 70
    add-long/2addr v3, p1

    .line 71
    sub-long/2addr v3, v1

    .line 72
    long-to-int p1, v3

    .line 73
    iget-object p2, v0, Lfg/u;->a:[B

    .line 74
    .line 75
    aget-byte p1, p2, p1

    .line 76
    .line 77
    :goto_2
    return p1

    .line 78
    :cond_3
    const/4 p1, 0x0

    .line 79
    invoke-static {p1}, Lue/d;->b(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    goto :goto_4

    .line 83
    :goto_3
    throw p1

    .line 84
    :goto_4
    goto :goto_3
.end method

.method public final M(BJJ)J
    .locals 10

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, v0, p2

    .line 4
    .line 5
    if-gtz v2, :cond_b

    .line 6
    .line 7
    cmp-long v2, p2, p4

    .line 8
    .line 9
    if-gtz v2, :cond_b

    .line 10
    .line 11
    iget-wide v2, p0, Lfg/i;->b:J

    .line 12
    .line 13
    cmp-long v4, p4, v2

    .line 14
    .line 15
    if-lez v4, :cond_0

    .line 16
    .line 17
    move-wide p4, v2

    .line 18
    :cond_0
    const-wide/16 v4, -0x1

    .line 19
    .line 20
    cmp-long v6, p2, p4

    .line 21
    .line 22
    if-nez v6, :cond_1

    .line 23
    .line 24
    goto/16 :goto_6

    .line 25
    .line 26
    :cond_1
    iget-object v6, p0, Lfg/i;->a:Lfg/u;

    .line 27
    .line 28
    if-nez v6, :cond_2

    .line 29
    .line 30
    goto/16 :goto_6

    .line 31
    .line 32
    :cond_2
    sub-long v7, v2, p2

    .line 33
    .line 34
    cmp-long v9, v7, p2

    .line 35
    .line 36
    if-gez v9, :cond_6

    .line 37
    .line 38
    :goto_0
    cmp-long v0, v2, p2

    .line 39
    .line 40
    if-lez v0, :cond_3

    .line 41
    .line 42
    iget-object v6, v6, Lfg/u;->g:Lfg/u;

    .line 43
    .line 44
    invoke-static {v6}, Lue/d;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget v0, v6, Lfg/u;->c:I

    .line 48
    .line 49
    iget v1, v6, Lfg/u;->b:I

    .line 50
    .line 51
    sub-int/2addr v0, v1

    .line 52
    int-to-long v0, v0

    .line 53
    sub-long/2addr v2, v0

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    :goto_1
    cmp-long v0, v2, p4

    .line 56
    .line 57
    if-gez v0, :cond_a

    .line 58
    .line 59
    iget v0, v6, Lfg/u;->c:I

    .line 60
    .line 61
    int-to-long v0, v0

    .line 62
    iget v7, v6, Lfg/u;->b:I

    .line 63
    .line 64
    int-to-long v7, v7

    .line 65
    add-long/2addr v7, p4

    .line 66
    sub-long/2addr v7, v2

    .line 67
    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 68
    .line 69
    .line 70
    move-result-wide v0

    .line 71
    long-to-int v1, v0

    .line 72
    iget v0, v6, Lfg/u;->b:I

    .line 73
    .line 74
    int-to-long v7, v0

    .line 75
    add-long/2addr v7, p2

    .line 76
    sub-long/2addr v7, v2

    .line 77
    long-to-int p2, v7

    .line 78
    :goto_2
    if-ge p2, v1, :cond_5

    .line 79
    .line 80
    iget-object p3, v6, Lfg/u;->a:[B

    .line 81
    .line 82
    aget-byte p3, p3, p2

    .line 83
    .line 84
    if-ne p3, p1, :cond_4

    .line 85
    .line 86
    iget p1, v6, Lfg/u;->b:I

    .line 87
    .line 88
    sub-int/2addr p2, p1

    .line 89
    int-to-long p1, p2

    .line 90
    add-long v4, p1, v2

    .line 91
    .line 92
    goto :goto_6

    .line 93
    :cond_4
    add-int/lit8 p2, p2, 0x1

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_5
    iget p2, v6, Lfg/u;->c:I

    .line 97
    .line 98
    iget p3, v6, Lfg/u;->b:I

    .line 99
    .line 100
    sub-int/2addr p2, p3

    .line 101
    int-to-long p2, p2

    .line 102
    add-long/2addr v2, p2

    .line 103
    iget-object v6, v6, Lfg/u;->f:Lfg/u;

    .line 104
    .line 105
    invoke-static {v6}, Lue/d;->b(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    move-wide p2, v2

    .line 109
    goto :goto_1

    .line 110
    :cond_6
    :goto_3
    iget v2, v6, Lfg/u;->c:I

    .line 111
    .line 112
    iget v3, v6, Lfg/u;->b:I

    .line 113
    .line 114
    sub-int/2addr v2, v3

    .line 115
    int-to-long v2, v2

    .line 116
    add-long/2addr v2, v0

    .line 117
    cmp-long v7, v2, p2

    .line 118
    .line 119
    if-gtz v7, :cond_7

    .line 120
    .line 121
    iget-object v6, v6, Lfg/u;->f:Lfg/u;

    .line 122
    .line 123
    invoke-static {v6}, Lue/d;->b(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    move-wide v0, v2

    .line 127
    goto :goto_3

    .line 128
    :cond_7
    :goto_4
    cmp-long v2, v0, p4

    .line 129
    .line 130
    if-gez v2, :cond_a

    .line 131
    .line 132
    iget v2, v6, Lfg/u;->c:I

    .line 133
    .line 134
    int-to-long v2, v2

    .line 135
    iget v7, v6, Lfg/u;->b:I

    .line 136
    .line 137
    int-to-long v7, v7

    .line 138
    add-long/2addr v7, p4

    .line 139
    sub-long/2addr v7, v0

    .line 140
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 141
    .line 142
    .line 143
    move-result-wide v2

    .line 144
    long-to-int v3, v2

    .line 145
    iget v2, v6, Lfg/u;->b:I

    .line 146
    .line 147
    int-to-long v7, v2

    .line 148
    add-long/2addr v7, p2

    .line 149
    sub-long/2addr v7, v0

    .line 150
    long-to-int p2, v7

    .line 151
    :goto_5
    if-ge p2, v3, :cond_9

    .line 152
    .line 153
    iget-object p3, v6, Lfg/u;->a:[B

    .line 154
    .line 155
    aget-byte p3, p3, p2

    .line 156
    .line 157
    if-ne p3, p1, :cond_8

    .line 158
    .line 159
    iget p1, v6, Lfg/u;->b:I

    .line 160
    .line 161
    sub-int/2addr p2, p1

    .line 162
    int-to-long p1, p2

    .line 163
    add-long v4, p1, v0

    .line 164
    .line 165
    goto :goto_6

    .line 166
    :cond_8
    add-int/lit8 p2, p2, 0x1

    .line 167
    .line 168
    goto :goto_5

    .line 169
    :cond_9
    iget p2, v6, Lfg/u;->c:I

    .line 170
    .line 171
    iget p3, v6, Lfg/u;->b:I

    .line 172
    .line 173
    sub-int/2addr p2, p3

    .line 174
    int-to-long p2, p2

    .line 175
    add-long/2addr v0, p2

    .line 176
    iget-object v6, v6, Lfg/u;->f:Lfg/u;

    .line 177
    .line 178
    invoke-static {v6}, Lue/d;->b(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    move-wide p2, v0

    .line 182
    goto :goto_4

    .line 183
    :cond_a
    :goto_6
    return-wide v4

    .line 184
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    const-string v0, "size="

    .line 187
    .line 188
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iget-wide v0, p0, Lfg/i;->b:J

    .line 192
    .line 193
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v0, " fromIndex="

    .line 197
    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string p2, " toIndex="

    .line 205
    .line 206
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 217
    .line 218
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    goto :goto_8

    .line 226
    :goto_7
    throw p2

    .line 227
    :goto_8
    goto :goto_7
.end method

.method public final N(Lfg/l;)J
    .locals 13

    .line 1
    const-string v0, "targetBytes"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lfg/i;->a:Lfg/u;

    .line 7
    .line 8
    const-wide/16 v1, -0x1

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_f

    .line 13
    .line 14
    :cond_0
    iget-wide v3, p0, Lfg/i;->b:J

    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    const-wide/16 v6, 0x0

    .line 18
    .line 19
    const/4 v8, 0x2

    .line 20
    const/4 v9, 0x0

    .line 21
    cmp-long v10, v3, v6

    .line 22
    .line 23
    if-gez v10, :cond_9

    .line 24
    .line 25
    :goto_0
    cmp-long v10, v3, v6

    .line 26
    .line 27
    if-lez v10, :cond_1

    .line 28
    .line 29
    iget-object v0, v0, Lfg/u;->g:Lfg/u;

    .line 30
    .line 31
    invoke-static {v0}, Lue/d;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget v10, v0, Lfg/u;->c:I

    .line 35
    .line 36
    iget v11, v0, Lfg/u;->b:I

    .line 37
    .line 38
    sub-int/2addr v10, v11

    .line 39
    int-to-long v10, v10

    .line 40
    sub-long/2addr v3, v10

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p1}, Lfg/l;->g()I

    .line 43
    .line 44
    .line 45
    move-result v10

    .line 46
    if-ne v10, v8, :cond_5

    .line 47
    .line 48
    invoke-virtual {p1, v9}, Lfg/l;->j(I)B

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    invoke-virtual {p1, v5}, Lfg/l;->j(I)B

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    :goto_1
    iget-wide v9, p0, Lfg/i;->b:J

    .line 57
    .line 58
    cmp-long v5, v3, v9

    .line 59
    .line 60
    if-gez v5, :cond_11

    .line 61
    .line 62
    iget v5, v0, Lfg/u;->b:I

    .line 63
    .line 64
    int-to-long v9, v5

    .line 65
    add-long/2addr v9, v6

    .line 66
    sub-long/2addr v9, v3

    .line 67
    long-to-int v5, v9

    .line 68
    iget v6, v0, Lfg/u;->c:I

    .line 69
    .line 70
    :goto_2
    if-ge v5, v6, :cond_4

    .line 71
    .line 72
    iget-object v7, v0, Lfg/u;->a:[B

    .line 73
    .line 74
    aget-byte v7, v7, v5

    .line 75
    .line 76
    if-eq v7, v8, :cond_3

    .line 77
    .line 78
    if-ne v7, p1, :cond_2

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_3
    :goto_3
    iget p1, v0, Lfg/u;->b:I

    .line 85
    .line 86
    :goto_4
    sub-int/2addr v5, p1

    .line 87
    int-to-long v0, v5

    .line 88
    add-long/2addr v0, v3

    .line 89
    move-wide v1, v0

    .line 90
    goto/16 :goto_f

    .line 91
    .line 92
    :cond_4
    iget v5, v0, Lfg/u;->c:I

    .line 93
    .line 94
    iget v6, v0, Lfg/u;->b:I

    .line 95
    .line 96
    sub-int/2addr v5, v6

    .line 97
    int-to-long v5, v5

    .line 98
    add-long/2addr v3, v5

    .line 99
    iget-object v0, v0, Lfg/u;->f:Lfg/u;

    .line 100
    .line 101
    invoke-static {v0}, Lue/d;->b(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    move-wide v6, v3

    .line 105
    goto :goto_1

    .line 106
    :cond_5
    invoke-virtual {p1}, Lfg/l;->i()[B

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    :goto_5
    iget-wide v10, p0, Lfg/i;->b:J

    .line 111
    .line 112
    cmp-long v5, v3, v10

    .line 113
    .line 114
    if-gez v5, :cond_11

    .line 115
    .line 116
    iget v5, v0, Lfg/u;->b:I

    .line 117
    .line 118
    int-to-long v10, v5

    .line 119
    add-long/2addr v10, v6

    .line 120
    sub-long/2addr v10, v3

    .line 121
    long-to-int v5, v10

    .line 122
    iget v6, v0, Lfg/u;->c:I

    .line 123
    .line 124
    :goto_6
    if-ge v5, v6, :cond_8

    .line 125
    .line 126
    iget-object v7, v0, Lfg/u;->a:[B

    .line 127
    .line 128
    aget-byte v7, v7, v5

    .line 129
    .line 130
    array-length v8, p1

    .line 131
    const/4 v10, 0x0

    .line 132
    :goto_7
    if-ge v10, v8, :cond_7

    .line 133
    .line 134
    aget-byte v11, p1, v10

    .line 135
    .line 136
    if-ne v7, v11, :cond_6

    .line 137
    .line 138
    :goto_8
    iget p1, v0, Lfg/u;->b:I

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 142
    .line 143
    goto :goto_7

    .line 144
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 145
    .line 146
    goto :goto_6

    .line 147
    :cond_8
    iget v5, v0, Lfg/u;->c:I

    .line 148
    .line 149
    iget v6, v0, Lfg/u;->b:I

    .line 150
    .line 151
    sub-int/2addr v5, v6

    .line 152
    int-to-long v5, v5

    .line 153
    add-long/2addr v3, v5

    .line 154
    iget-object v0, v0, Lfg/u;->f:Lfg/u;

    .line 155
    .line 156
    invoke-static {v0}, Lue/d;->b(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    move-wide v6, v3

    .line 160
    goto :goto_5

    .line 161
    :cond_9
    move-wide v3, v6

    .line 162
    :goto_9
    iget v10, v0, Lfg/u;->c:I

    .line 163
    .line 164
    iget v11, v0, Lfg/u;->b:I

    .line 165
    .line 166
    sub-int/2addr v10, v11

    .line 167
    int-to-long v10, v10

    .line 168
    add-long/2addr v10, v3

    .line 169
    cmp-long v12, v10, v6

    .line 170
    .line 171
    if-gtz v12, :cond_a

    .line 172
    .line 173
    iget-object v0, v0, Lfg/u;->f:Lfg/u;

    .line 174
    .line 175
    invoke-static {v0}, Lue/d;->b(Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    move-wide v3, v10

    .line 179
    goto :goto_9

    .line 180
    :cond_a
    invoke-virtual {p1}, Lfg/l;->g()I

    .line 181
    .line 182
    .line 183
    move-result v10

    .line 184
    if-ne v10, v8, :cond_d

    .line 185
    .line 186
    invoke-virtual {p1, v9}, Lfg/l;->j(I)B

    .line 187
    .line 188
    .line 189
    move-result v8

    .line 190
    invoke-virtual {p1, v5}, Lfg/l;->j(I)B

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    :goto_a
    iget-wide v9, p0, Lfg/i;->b:J

    .line 195
    .line 196
    cmp-long v5, v3, v9

    .line 197
    .line 198
    if-gez v5, :cond_11

    .line 199
    .line 200
    iget v5, v0, Lfg/u;->b:I

    .line 201
    .line 202
    int-to-long v9, v5

    .line 203
    add-long/2addr v9, v6

    .line 204
    sub-long/2addr v9, v3

    .line 205
    long-to-int v5, v9

    .line 206
    iget v6, v0, Lfg/u;->c:I

    .line 207
    .line 208
    :goto_b
    if-ge v5, v6, :cond_c

    .line 209
    .line 210
    iget-object v7, v0, Lfg/u;->a:[B

    .line 211
    .line 212
    aget-byte v7, v7, v5

    .line 213
    .line 214
    if-eq v7, v8, :cond_3

    .line 215
    .line 216
    if-ne v7, p1, :cond_b

    .line 217
    .line 218
    goto/16 :goto_3

    .line 219
    .line 220
    :cond_b
    add-int/lit8 v5, v5, 0x1

    .line 221
    .line 222
    goto :goto_b

    .line 223
    :cond_c
    iget v5, v0, Lfg/u;->c:I

    .line 224
    .line 225
    iget v6, v0, Lfg/u;->b:I

    .line 226
    .line 227
    sub-int/2addr v5, v6

    .line 228
    int-to-long v5, v5

    .line 229
    add-long/2addr v3, v5

    .line 230
    iget-object v0, v0, Lfg/u;->f:Lfg/u;

    .line 231
    .line 232
    invoke-static {v0}, Lue/d;->b(Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    move-wide v6, v3

    .line 236
    goto :goto_a

    .line 237
    :cond_d
    invoke-virtual {p1}, Lfg/l;->i()[B

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    :goto_c
    iget-wide v10, p0, Lfg/i;->b:J

    .line 242
    .line 243
    cmp-long v5, v3, v10

    .line 244
    .line 245
    if-gez v5, :cond_11

    .line 246
    .line 247
    iget v5, v0, Lfg/u;->b:I

    .line 248
    .line 249
    int-to-long v10, v5

    .line 250
    add-long/2addr v10, v6

    .line 251
    sub-long/2addr v10, v3

    .line 252
    long-to-int v5, v10

    .line 253
    iget v6, v0, Lfg/u;->c:I

    .line 254
    .line 255
    :goto_d
    if-ge v5, v6, :cond_10

    .line 256
    .line 257
    iget-object v7, v0, Lfg/u;->a:[B

    .line 258
    .line 259
    aget-byte v7, v7, v5

    .line 260
    .line 261
    array-length v8, p1

    .line 262
    const/4 v10, 0x0

    .line 263
    :goto_e
    if-ge v10, v8, :cond_f

    .line 264
    .line 265
    aget-byte v11, p1, v10

    .line 266
    .line 267
    if-ne v7, v11, :cond_e

    .line 268
    .line 269
    goto/16 :goto_8

    .line 270
    .line 271
    :cond_e
    add-int/lit8 v10, v10, 0x1

    .line 272
    .line 273
    goto :goto_e

    .line 274
    :cond_f
    add-int/lit8 v5, v5, 0x1

    .line 275
    .line 276
    goto :goto_d

    .line 277
    :cond_10
    iget v5, v0, Lfg/u;->c:I

    .line 278
    .line 279
    iget v6, v0, Lfg/u;->b:I

    .line 280
    .line 281
    sub-int/2addr v5, v6

    .line 282
    int-to-long v5, v5

    .line 283
    add-long/2addr v3, v5

    .line 284
    iget-object v0, v0, Lfg/u;->f:Lfg/u;

    .line 285
    .line 286
    invoke-static {v0}, Lue/d;->b(Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    move-wide v6, v3

    .line 290
    goto :goto_c

    .line 291
    :cond_11
    :goto_f
    return-wide v1
.end method

.method public final O(Lfg/g;)V
    .locals 1

    .line 1
    const-string v0, "unsafeCursor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lgg/a;->a:[B

    .line 7
    .line 8
    sget-object v0, Lfg/e0;->a:Lfg/g;

    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    new-instance p1, Lfg/g;

    .line 13
    .line 14
    invoke-direct {p1}, Lfg/g;-><init>()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p1, Lfg/g;->a:Lfg/i;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iput-object p0, p1, Lfg/g;->a:Lfg/i;

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p1, Lfg/g;->b:Z

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v0, "already attached to a buffer"

    .line 30
    .line 31
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

.method public final P(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "charset"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v2, p1, v0

    .line 9
    .line 10
    if-ltz v2, :cond_4

    .line 11
    .line 12
    const-wide/32 v2, 0x7fffffff

    .line 13
    .line 14
    .line 15
    cmp-long v4, p1, v2

    .line 16
    .line 17
    if-gtz v4, :cond_4

    .line 18
    .line 19
    iget-wide v2, p0, Lfg/i;->b:J

    .line 20
    .line 21
    cmp-long v4, v2, p1

    .line 22
    .line 23
    if-ltz v4, :cond_3

    .line 24
    .line 25
    cmp-long v2, p1, v0

    .line 26
    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    const-string p1, ""

    .line 30
    .line 31
    return-object p1

    .line 32
    :cond_0
    iget-object v0, p0, Lfg/i;->a:Lfg/u;

    .line 33
    .line 34
    invoke-static {v0}, Lue/d;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget v1, v0, Lfg/u;->b:I

    .line 38
    .line 39
    int-to-long v2, v1

    .line 40
    add-long/2addr v2, p1

    .line 41
    iget v4, v0, Lfg/u;->c:I

    .line 42
    .line 43
    int-to-long v4, v4

    .line 44
    cmp-long v6, v2, v4

    .line 45
    .line 46
    if-lez v6, :cond_1

    .line 47
    .line 48
    new-instance v0, Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p0, p1, p2}, Lfg/i;->B(J)[B

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {v0, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 55
    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_1
    new-instance v2, Ljava/lang/String;

    .line 59
    .line 60
    long-to-int v3, p1

    .line 61
    iget-object v4, v0, Lfg/u;->a:[B

    .line 62
    .line 63
    invoke-direct {v2, v4, v1, v3, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 64
    .line 65
    .line 66
    iget p3, v0, Lfg/u;->b:I

    .line 67
    .line 68
    add-int/2addr p3, v3

    .line 69
    iput p3, v0, Lfg/u;->b:I

    .line 70
    .line 71
    iget-wide v3, p0, Lfg/i;->b:J

    .line 72
    .line 73
    sub-long/2addr v3, p1

    .line 74
    iput-wide v3, p0, Lfg/i;->b:J

    .line 75
    .line 76
    iget p1, v0, Lfg/u;->c:I

    .line 77
    .line 78
    if-ne p3, p1, :cond_2

    .line 79
    .line 80
    invoke-virtual {v0}, Lfg/u;->a()Lfg/u;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iput-object p1, p0, Lfg/i;->a:Lfg/u;

    .line 85
    .line 86
    invoke-static {v0}, Lfg/v;->a(Lfg/u;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    return-object v2

    .line 90
    :cond_3
    new-instance p1, Ljava/io/EOFException;

    .line 91
    .line 92
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 93
    .line 94
    .line 95
    throw p1

    .line 96
    :cond_4
    const-string p3, "byteCount: "

    .line 97
    .line 98
    invoke-static {p1, p2, p3}, Lta/q;->j(JLjava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p2
.end method

.method public final Q()Ljava/lang/String;
    .locals 3

    .line 1
    iget-wide v0, p0, Lfg/i;->b:J

    .line 2
    .line 3
    sget-object v2, Lbf/a;->a:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lfg/i;->P(JLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final R(I)Lfg/l;
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lfg/l;->d:Lfg/l;

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    iget-wide v0, p0, Lfg/i;->b:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    int-to-long v4, p1

    .line 11
    invoke-static/range {v0 .. v5}, Lfg/e0;->d(JJJ)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lfg/i;->a:Lfg/u;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    if-ge v2, p1, :cond_2

    .line 20
    .line 21
    invoke-static {v0}, Lue/d;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget v4, v0, Lfg/u;->c:I

    .line 25
    .line 26
    iget v5, v0, Lfg/u;->b:I

    .line 27
    .line 28
    if-eq v4, v5, :cond_1

    .line 29
    .line 30
    sub-int/2addr v4, v5

    .line 31
    add-int/2addr v2, v4

    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    iget-object v0, v0, Lfg/u;->f:Lfg/u;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    .line 38
    .line 39
    const-string v0, "s.limit == s.pos"

    .line 40
    .line 41
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_2
    new-array v0, v3, [[B

    .line 46
    .line 47
    mul-int/lit8 v2, v3, 0x2

    .line 48
    .line 49
    new-array v2, v2, [I

    .line 50
    .line 51
    iget-object v4, p0, Lfg/i;->a:Lfg/u;

    .line 52
    .line 53
    move-object v5, v4

    .line 54
    const/4 v4, 0x0

    .line 55
    :goto_1
    if-ge v1, p1, :cond_3

    .line 56
    .line 57
    invoke-static {v5}, Lue/d;->b(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object v6, v5, Lfg/u;->a:[B

    .line 61
    .line 62
    aput-object v6, v0, v4

    .line 63
    .line 64
    iget v6, v5, Lfg/u;->c:I

    .line 65
    .line 66
    iget v7, v5, Lfg/u;->b:I

    .line 67
    .line 68
    sub-int/2addr v6, v7

    .line 69
    add-int/2addr v1, v6

    .line 70
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    aput v6, v2, v4

    .line 75
    .line 76
    add-int v6, v4, v3

    .line 77
    .line 78
    iget v7, v5, Lfg/u;->b:I

    .line 79
    .line 80
    aput v7, v2, v6

    .line 81
    .line 82
    const/4 v6, 0x1

    .line 83
    iput-boolean v6, v5, Lfg/u;->d:Z

    .line 84
    .line 85
    add-int/2addr v4, v6

    .line 86
    iget-object v5, v5, Lfg/u;->f:Lfg/u;

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    new-instance p1, Lfg/w;

    .line 90
    .line 91
    invoke-direct {p1, v0, v2}, Lfg/w;-><init>([[B[I)V

    .line 92
    .line 93
    .line 94
    :goto_2
    return-object p1
.end method

.method public final S(I)Lfg/u;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p1, v0, :cond_3

    .line 3
    .line 4
    const/16 v0, 0x2000

    .line 5
    .line 6
    if-gt p1, v0, :cond_3

    .line 7
    .line 8
    iget-object v1, p0, Lfg/i;->a:Lfg/u;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lfg/v;->b()Lfg/u;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lfg/i;->a:Lfg/u;

    .line 17
    .line 18
    iput-object p1, p1, Lfg/u;->g:Lfg/u;

    .line 19
    .line 20
    iput-object p1, p1, Lfg/u;->f:Lfg/u;

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-object v1, v1, Lfg/u;->g:Lfg/u;

    .line 24
    .line 25
    invoke-static {v1}, Lue/d;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget v2, v1, Lfg/u;->c:I

    .line 29
    .line 30
    add-int/2addr v2, p1

    .line 31
    if-gt v2, v0, :cond_2

    .line 32
    .line 33
    iget-boolean p1, v1, Lfg/u;->e:Z

    .line 34
    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object p1, v1

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    :goto_0
    invoke-static {}, Lfg/v;->b()Lfg/u;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v1, p1}, Lfg/u;->b(Lfg/u;)V

    .line 45
    .line 46
    .line 47
    :goto_1
    return-object p1

    .line 48
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    const-string v0, "unexpected capacity"

    .line 51
    .line 52
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1
.end method

.method public final T(Lfg/l;)V
    .locals 1

    .line 1
    const-string v0, "byteString"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lfg/l;->g()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p1, p0, v0}, Lfg/l;->r(Lfg/i;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final U([B)V
    .locals 2

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    array-length v1, p1

    .line 8
    invoke-virtual {p0, p1, v0, v1}, Lfg/i;->V([BII)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final V([BII)V
    .locals 9

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    int-to-long v1, v0

    .line 8
    int-to-long v3, p2

    .line 9
    int-to-long v7, p3

    .line 10
    move-wide v5, v7

    .line 11
    invoke-static/range {v1 .. v6}, Lfg/e0;->d(JJJ)V

    .line 12
    .line 13
    .line 14
    add-int/2addr p3, p2

    .line 15
    :goto_0
    if-ge p2, p3, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, v0}, Lfg/i;->S(I)Lfg/u;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sub-int v1, p3, p2

    .line 23
    .line 24
    iget v2, v0, Lfg/u;->c:I

    .line 25
    .line 26
    rsub-int v2, v2, 0x2000

    .line 27
    .line 28
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iget v2, v0, Lfg/u;->c:I

    .line 33
    .line 34
    add-int v3, p2, v1

    .line 35
    .line 36
    iget-object v4, v0, Lfg/u;->a:[B

    .line 37
    .line 38
    invoke-static {v2, p1, p2, v4, v3}, Lje/i;->f0(I[BI[BI)V

    .line 39
    .line 40
    .line 41
    iget p2, v0, Lfg/u;->c:I

    .line 42
    .line 43
    add-int/2addr p2, v1

    .line 44
    iput p2, v0, Lfg/u;->c:I

    .line 45
    .line 46
    move p2, v3

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-wide p1, p0, Lfg/i;->b:J

    .line 49
    .line 50
    add-long/2addr p1, v7

    .line 51
    iput-wide p1, p0, Lfg/i;->b:J

    .line 52
    .line 53
    return-void
.end method

.method public final W(I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lfg/i;->S(I)Lfg/u;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget v1, v0, Lfg/u;->c:I

    .line 7
    .line 8
    add-int/lit8 v2, v1, 0x1

    .line 9
    .line 10
    iput v2, v0, Lfg/u;->c:I

    .line 11
    .line 12
    int-to-byte p1, p1

    .line 13
    iget-object v0, v0, Lfg/u;->a:[B

    .line 14
    .line 15
    aput-byte p1, v0, v1

    .line 16
    .line 17
    iget-wide v0, p0, Lfg/i;->b:J

    .line 18
    .line 19
    const-wide/16 v2, 0x1

    .line 20
    .line 21
    add-long/2addr v0, v2

    .line 22
    iput-wide v0, p0, Lfg/i;->b:J

    .line 23
    .line 24
    return-void
.end method

.method public final X(J)V
    .locals 12

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    const/16 p1, 0x30

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lfg/i;->W(I)V

    .line 10
    .line 11
    .line 12
    goto/16 :goto_3

    .line 13
    .line 14
    :cond_0
    const/4 v2, 0x1

    .line 15
    cmp-long v3, p1, v0

    .line 16
    .line 17
    if-gez v3, :cond_2

    .line 18
    .line 19
    neg-long p1, p1

    .line 20
    cmp-long v3, p1, v0

    .line 21
    .line 22
    if-gez v3, :cond_1

    .line 23
    .line 24
    const-string p1, "-9223372036854775808"

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lfg/i;->e0(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto/16 :goto_3

    .line 30
    .line 31
    :cond_1
    const/4 v3, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const/4 v3, 0x0

    .line 34
    :goto_0
    const-wide/32 v4, 0x5f5e100

    .line 35
    .line 36
    .line 37
    const/16 v6, 0xa

    .line 38
    .line 39
    cmp-long v7, p1, v4

    .line 40
    .line 41
    if-gez v7, :cond_a

    .line 42
    .line 43
    const-wide/16 v4, 0x2710

    .line 44
    .line 45
    cmp-long v7, p1, v4

    .line 46
    .line 47
    if-gez v7, :cond_6

    .line 48
    .line 49
    const-wide/16 v4, 0x64

    .line 50
    .line 51
    cmp-long v7, p1, v4

    .line 52
    .line 53
    if-gez v7, :cond_4

    .line 54
    .line 55
    const-wide/16 v4, 0xa

    .line 56
    .line 57
    cmp-long v7, p1, v4

    .line 58
    .line 59
    if-gez v7, :cond_3

    .line 60
    .line 61
    goto/16 :goto_1

    .line 62
    .line 63
    :cond_3
    const/4 v2, 0x2

    .line 64
    goto/16 :goto_1

    .line 65
    .line 66
    :cond_4
    const-wide/16 v4, 0x3e8

    .line 67
    .line 68
    cmp-long v2, p1, v4

    .line 69
    .line 70
    if-gez v2, :cond_5

    .line 71
    .line 72
    const/4 v2, 0x3

    .line 73
    goto/16 :goto_1

    .line 74
    .line 75
    :cond_5
    const/4 v2, 0x4

    .line 76
    goto/16 :goto_1

    .line 77
    .line 78
    :cond_6
    const-wide/32 v4, 0xf4240

    .line 79
    .line 80
    .line 81
    cmp-long v2, p1, v4

    .line 82
    .line 83
    if-gez v2, :cond_8

    .line 84
    .line 85
    const-wide/32 v4, 0x186a0

    .line 86
    .line 87
    .line 88
    cmp-long v2, p1, v4

    .line 89
    .line 90
    if-gez v2, :cond_7

    .line 91
    .line 92
    const/4 v2, 0x5

    .line 93
    goto/16 :goto_1

    .line 94
    .line 95
    :cond_7
    const/4 v2, 0x6

    .line 96
    goto/16 :goto_1

    .line 97
    .line 98
    :cond_8
    const-wide/32 v4, 0x989680

    .line 99
    .line 100
    .line 101
    cmp-long v2, p1, v4

    .line 102
    .line 103
    if-gez v2, :cond_9

    .line 104
    .line 105
    const/4 v2, 0x7

    .line 106
    goto/16 :goto_1

    .line 107
    .line 108
    :cond_9
    const/16 v2, 0x8

    .line 109
    .line 110
    goto/16 :goto_1

    .line 111
    .line 112
    :cond_a
    const-wide v4, 0xe8d4a51000L

    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    cmp-long v2, p1, v4

    .line 118
    .line 119
    if-gez v2, :cond_e

    .line 120
    .line 121
    const-wide v4, 0x2540be400L

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    cmp-long v2, p1, v4

    .line 127
    .line 128
    if-gez v2, :cond_c

    .line 129
    .line 130
    const-wide/32 v4, 0x3b9aca00

    .line 131
    .line 132
    .line 133
    cmp-long v2, p1, v4

    .line 134
    .line 135
    if-gez v2, :cond_b

    .line 136
    .line 137
    const/16 v2, 0x9

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_b
    const/16 v2, 0xa

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_c
    const-wide v4, 0x174876e800L

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    cmp-long v2, p1, v4

    .line 149
    .line 150
    if-gez v2, :cond_d

    .line 151
    .line 152
    const/16 v2, 0xb

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_d
    const/16 v2, 0xc

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_e
    const-wide v4, 0x38d7ea4c68000L

    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    cmp-long v2, p1, v4

    .line 164
    .line 165
    if-gez v2, :cond_11

    .line 166
    .line 167
    const-wide v4, 0x9184e72a000L

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    cmp-long v2, p1, v4

    .line 173
    .line 174
    if-gez v2, :cond_f

    .line 175
    .line 176
    const/16 v2, 0xd

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_f
    const-wide v4, 0x5af3107a4000L

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    cmp-long v2, p1, v4

    .line 185
    .line 186
    if-gez v2, :cond_10

    .line 187
    .line 188
    const/16 v2, 0xe

    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_10
    const/16 v2, 0xf

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_11
    const-wide v4, 0x16345785d8a0000L

    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    cmp-long v2, p1, v4

    .line 200
    .line 201
    if-gez v2, :cond_13

    .line 202
    .line 203
    const-wide v4, 0x2386f26fc10000L

    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    cmp-long v2, p1, v4

    .line 209
    .line 210
    if-gez v2, :cond_12

    .line 211
    .line 212
    const/16 v2, 0x10

    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_12
    const/16 v2, 0x11

    .line 216
    .line 217
    goto :goto_1

    .line 218
    :cond_13
    const-wide v4, 0xde0b6b3a7640000L

    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    cmp-long v2, p1, v4

    .line 224
    .line 225
    if-gez v2, :cond_14

    .line 226
    .line 227
    const/16 v2, 0x12

    .line 228
    .line 229
    goto :goto_1

    .line 230
    :cond_14
    const/16 v2, 0x13

    .line 231
    .line 232
    :goto_1
    if-eqz v3, :cond_15

    .line 233
    .line 234
    add-int/lit8 v2, v2, 0x1

    .line 235
    .line 236
    :cond_15
    invoke-virtual {p0, v2}, Lfg/i;->S(I)Lfg/u;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    iget v5, v4, Lfg/u;->c:I

    .line 241
    .line 242
    add-int/2addr v5, v2

    .line 243
    :goto_2
    iget-object v7, v4, Lfg/u;->a:[B

    .line 244
    .line 245
    cmp-long v8, p1, v0

    .line 246
    .line 247
    if-eqz v8, :cond_16

    .line 248
    .line 249
    int-to-long v8, v6

    .line 250
    rem-long v10, p1, v8

    .line 251
    .line 252
    long-to-int v11, v10

    .line 253
    add-int/lit8 v5, v5, -0x1

    .line 254
    .line 255
    sget-object v10, Lgg/a;->a:[B

    .line 256
    .line 257
    aget-byte v10, v10, v11

    .line 258
    .line 259
    aput-byte v10, v7, v5

    .line 260
    .line 261
    div-long/2addr p1, v8

    .line 262
    goto :goto_2

    .line 263
    :cond_16
    if-eqz v3, :cond_17

    .line 264
    .line 265
    add-int/lit8 v5, v5, -0x1

    .line 266
    .line 267
    const/16 p1, 0x2d

    .line 268
    .line 269
    aput-byte p1, v7, v5

    .line 270
    .line 271
    :cond_17
    iget p1, v4, Lfg/u;->c:I

    .line 272
    .line 273
    add-int/2addr p1, v2

    .line 274
    iput p1, v4, Lfg/u;->c:I

    .line 275
    .line 276
    iget-wide p1, p0, Lfg/i;->b:J

    .line 277
    .line 278
    int-to-long v0, v2

    .line 279
    add-long/2addr p1, v0

    .line 280
    iput-wide p1, p0, Lfg/i;->b:J

    .line 281
    .line 282
    :goto_3
    return-void
.end method

.method public final Y(J)V
    .locals 12

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    const/16 p1, 0x30

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lfg/i;->W(I)V

    .line 10
    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    ushr-long v1, p1, v0

    .line 15
    .line 16
    or-long/2addr v1, p1

    .line 17
    const/4 v3, 0x2

    .line 18
    ushr-long v4, v1, v3

    .line 19
    .line 20
    or-long/2addr v1, v4

    .line 21
    const/4 v4, 0x4

    .line 22
    ushr-long v5, v1, v4

    .line 23
    .line 24
    or-long/2addr v1, v5

    .line 25
    const/16 v5, 0x8

    .line 26
    .line 27
    ushr-long v6, v1, v5

    .line 28
    .line 29
    or-long/2addr v1, v6

    .line 30
    const/16 v6, 0x10

    .line 31
    .line 32
    ushr-long v7, v1, v6

    .line 33
    .line 34
    or-long/2addr v1, v7

    .line 35
    const/16 v7, 0x20

    .line 36
    .line 37
    ushr-long v8, v1, v7

    .line 38
    .line 39
    or-long/2addr v1, v8

    .line 40
    ushr-long v8, v1, v0

    .line 41
    .line 42
    const-wide v10, 0x5555555555555555L    # 1.1945305291614955E103

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    and-long/2addr v8, v10

    .line 48
    sub-long/2addr v1, v8

    .line 49
    ushr-long v8, v1, v3

    .line 50
    .line 51
    const-wide v10, 0x3333333333333333L    # 4.667261458395856E-62

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    and-long/2addr v8, v10

    .line 57
    and-long/2addr v1, v10

    .line 58
    add-long/2addr v8, v1

    .line 59
    ushr-long v1, v8, v4

    .line 60
    .line 61
    add-long/2addr v1, v8

    .line 62
    const-wide v8, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    and-long/2addr v1, v8

    .line 68
    ushr-long v8, v1, v5

    .line 69
    .line 70
    add-long/2addr v1, v8

    .line 71
    ushr-long v5, v1, v6

    .line 72
    .line 73
    add-long/2addr v1, v5

    .line 74
    const-wide/16 v5, 0x3f

    .line 75
    .line 76
    and-long v8, v1, v5

    .line 77
    .line 78
    ushr-long/2addr v1, v7

    .line 79
    and-long/2addr v1, v5

    .line 80
    add-long/2addr v8, v1

    .line 81
    const/4 v1, 0x3

    .line 82
    int-to-long v1, v1

    .line 83
    add-long/2addr v8, v1

    .line 84
    int-to-long v1, v4

    .line 85
    div-long/2addr v8, v1

    .line 86
    long-to-int v1, v8

    .line 87
    invoke-virtual {p0, v1}, Lfg/i;->S(I)Lfg/u;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    iget v3, v2, Lfg/u;->c:I

    .line 92
    .line 93
    add-int v5, v3, v1

    .line 94
    .line 95
    sub-int/2addr v5, v0

    .line 96
    :goto_0
    if-lt v5, v3, :cond_1

    .line 97
    .line 98
    sget-object v0, Lgg/a;->a:[B

    .line 99
    .line 100
    const-wide/16 v6, 0xf

    .line 101
    .line 102
    and-long/2addr v6, p1

    .line 103
    long-to-int v7, v6

    .line 104
    aget-byte v0, v0, v7

    .line 105
    .line 106
    iget-object v6, v2, Lfg/u;->a:[B

    .line 107
    .line 108
    aput-byte v0, v6, v5

    .line 109
    .line 110
    ushr-long/2addr p1, v4

    .line 111
    add-int/lit8 v5, v5, -0x1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_1
    iget p1, v2, Lfg/u;->c:I

    .line 115
    .line 116
    add-int/2addr p1, v1

    .line 117
    iput p1, v2, Lfg/u;->c:I

    .line 118
    .line 119
    iget-wide p1, p0, Lfg/i;->b:J

    .line 120
    .line 121
    int-to-long v0, v1

    .line 122
    add-long/2addr p1, v0

    .line 123
    iput-wide p1, p0, Lfg/i;->b:J

    .line 124
    .line 125
    :goto_1
    return-void
.end method

.method public final Z(I)V
    .locals 7

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lfg/i;->S(I)Lfg/u;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget v2, v1, Lfg/u;->c:I

    .line 7
    .line 8
    add-int/lit8 v3, v2, 0x1

    .line 9
    .line 10
    ushr-int/lit8 v4, p1, 0x18

    .line 11
    .line 12
    and-int/lit16 v4, v4, 0xff

    .line 13
    .line 14
    int-to-byte v4, v4

    .line 15
    iget-object v5, v1, Lfg/u;->a:[B

    .line 16
    .line 17
    aput-byte v4, v5, v2

    .line 18
    .line 19
    add-int/lit8 v4, v2, 0x2

    .line 20
    .line 21
    ushr-int/lit8 v6, p1, 0x10

    .line 22
    .line 23
    and-int/lit16 v6, v6, 0xff

    .line 24
    .line 25
    int-to-byte v6, v6

    .line 26
    aput-byte v6, v5, v3

    .line 27
    .line 28
    add-int/lit8 v3, v2, 0x3

    .line 29
    .line 30
    ushr-int/lit8 v6, p1, 0x8

    .line 31
    .line 32
    and-int/lit16 v6, v6, 0xff

    .line 33
    .line 34
    int-to-byte v6, v6

    .line 35
    aput-byte v6, v5, v4

    .line 36
    .line 37
    add-int/2addr v2, v0

    .line 38
    and-int/lit16 p1, p1, 0xff

    .line 39
    .line 40
    int-to-byte p1, p1

    .line 41
    aput-byte p1, v5, v3

    .line 42
    .line 43
    iput v2, v1, Lfg/u;->c:I

    .line 44
    .line 45
    iget-wide v0, p0, Lfg/i;->b:J

    .line 46
    .line 47
    const-wide/16 v2, 0x4

    .line 48
    .line 49
    add-long/2addr v0, v2

    .line 50
    iput-wide v0, p0, Lfg/i;->b:J

    .line 51
    .line 52
    return-void
.end method

.method public final a0(J)V
    .locals 10

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lfg/i;->S(I)Lfg/u;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, v1, Lfg/u;->c:I

    .line 8
    .line 9
    add-int/lit8 v3, v2, 0x1

    .line 10
    .line 11
    const/16 v4, 0x38

    .line 12
    .line 13
    ushr-long v4, p1, v4

    .line 14
    .line 15
    const-wide/16 v6, 0xff

    .line 16
    .line 17
    and-long/2addr v4, v6

    .line 18
    long-to-int v5, v4

    .line 19
    int-to-byte v4, v5

    .line 20
    iget-object v5, v1, Lfg/u;->a:[B

    .line 21
    .line 22
    aput-byte v4, v5, v2

    .line 23
    .line 24
    add-int/lit8 v4, v2, 0x2

    .line 25
    .line 26
    const/16 v8, 0x30

    .line 27
    .line 28
    ushr-long v8, p1, v8

    .line 29
    .line 30
    and-long/2addr v8, v6

    .line 31
    long-to-int v9, v8

    .line 32
    int-to-byte v8, v9

    .line 33
    aput-byte v8, v5, v3

    .line 34
    .line 35
    add-int/lit8 v3, v2, 0x3

    .line 36
    .line 37
    const/16 v8, 0x28

    .line 38
    .line 39
    ushr-long v8, p1, v8

    .line 40
    .line 41
    and-long/2addr v8, v6

    .line 42
    long-to-int v9, v8

    .line 43
    int-to-byte v8, v9

    .line 44
    aput-byte v8, v5, v4

    .line 45
    .line 46
    add-int/lit8 v4, v2, 0x4

    .line 47
    .line 48
    const/16 v8, 0x20

    .line 49
    .line 50
    ushr-long v8, p1, v8

    .line 51
    .line 52
    and-long/2addr v8, v6

    .line 53
    long-to-int v9, v8

    .line 54
    int-to-byte v8, v9

    .line 55
    aput-byte v8, v5, v3

    .line 56
    .line 57
    add-int/lit8 v3, v2, 0x5

    .line 58
    .line 59
    const/16 v8, 0x18

    .line 60
    .line 61
    ushr-long v8, p1, v8

    .line 62
    .line 63
    and-long/2addr v8, v6

    .line 64
    long-to-int v9, v8

    .line 65
    int-to-byte v8, v9

    .line 66
    aput-byte v8, v5, v4

    .line 67
    .line 68
    add-int/lit8 v4, v2, 0x6

    .line 69
    .line 70
    const/16 v8, 0x10

    .line 71
    .line 72
    ushr-long v8, p1, v8

    .line 73
    .line 74
    and-long/2addr v8, v6

    .line 75
    long-to-int v9, v8

    .line 76
    int-to-byte v8, v9

    .line 77
    aput-byte v8, v5, v3

    .line 78
    .line 79
    add-int/lit8 v3, v2, 0x7

    .line 80
    .line 81
    ushr-long v8, p1, v0

    .line 82
    .line 83
    and-long/2addr v8, v6

    .line 84
    long-to-int v9, v8

    .line 85
    int-to-byte v8, v9

    .line 86
    aput-byte v8, v5, v4

    .line 87
    .line 88
    add-int/2addr v2, v0

    .line 89
    and-long/2addr p1, v6

    .line 90
    long-to-int p2, p1

    .line 91
    int-to-byte p1, p2

    .line 92
    aput-byte p1, v5, v3

    .line 93
    .line 94
    iput v2, v1, Lfg/u;->c:I

    .line 95
    .line 96
    iget-wide p1, p0, Lfg/i;->b:J

    .line 97
    .line 98
    const-wide/16 v0, 0x8

    .line 99
    .line 100
    add-long/2addr p1, v0

    .line 101
    iput-wide p1, p0, Lfg/i;->b:J

    .line 102
    .line 103
    return-void
.end method

.method public final b0(I)V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lfg/i;->S(I)Lfg/u;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget v2, v1, Lfg/u;->c:I

    .line 7
    .line 8
    add-int/lit8 v3, v2, 0x1

    .line 9
    .line 10
    ushr-int/lit8 v4, p1, 0x8

    .line 11
    .line 12
    and-int/lit16 v4, v4, 0xff

    .line 13
    .line 14
    int-to-byte v4, v4

    .line 15
    iget-object v5, v1, Lfg/u;->a:[B

    .line 16
    .line 17
    aput-byte v4, v5, v2

    .line 18
    .line 19
    add-int/2addr v2, v0

    .line 20
    and-int/lit16 p1, p1, 0xff

    .line 21
    .line 22
    int-to-byte p1, p1

    .line 23
    aput-byte p1, v5, v3

    .line 24
    .line 25
    iput v2, v1, Lfg/u;->c:I

    .line 26
    .line 27
    iget-wide v0, p0, Lfg/i;->b:J

    .line 28
    .line 29
    const-wide/16 v2, 0x2

    .line 30
    .line 31
    add-long/2addr v0, v2

    .line 32
    iput-wide v0, p0, Lfg/i;->b:J

    .line 33
    .line 34
    return-void
.end method

.method public final buffer()Lfg/i;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final c(J)Lfg/l;
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-ltz v2, :cond_2

    .line 6
    .line 7
    const-wide/32 v0, 0x7fffffff

    .line 8
    .line 9
    .line 10
    cmp-long v2, p1, v0

    .line 11
    .line 12
    if-gtz v2, :cond_2

    .line 13
    .line 14
    iget-wide v0, p0, Lfg/i;->b:J

    .line 15
    .line 16
    cmp-long v2, v0, p1

    .line 17
    .line 18
    if-ltz v2, :cond_1

    .line 19
    .line 20
    const-wide/16 v0, 0x1000

    .line 21
    .line 22
    cmp-long v2, p1, v0

    .line 23
    .line 24
    if-ltz v2, :cond_0

    .line 25
    .line 26
    long-to-int v0, p1

    .line 27
    invoke-virtual {p0, v0}, Lfg/i;->R(I)Lfg/l;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, p1, p2}, Lfg/i;->skip(J)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v0, Lfg/l;

    .line 36
    .line 37
    invoke-virtual {p0, p1, p2}, Lfg/i;->B(J)[B

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {v0, p1}, Lfg/l;-><init>([B)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-object v0

    .line 45
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    .line 46
    .line 47
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_2
    const-string v0, "byteCount: "

    .line 52
    .line 53
    invoke-static {p1, p2, v0}, Lta/q;->j(JLjava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p2
.end method

.method public final c0(Ljava/lang/String;IILjava/nio/charset/Charset;)V
    .locals 1

    .line 1
    const-string v0, "string"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "charset"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-ltz p2, :cond_3

    .line 12
    .line 13
    if-lt p3, p2, :cond_2

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-gt p3, v0, :cond_1

    .line 20
    .line 21
    sget-object v0, Lbf/a;->a:Ljava/nio/charset/Charset;

    .line 22
    .line 23
    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0, p2, p3, p1}, Lfg/i;->d0(IILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string p2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 38
    .line 39
    invoke-static {p1, p2}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string p2, "this as java.lang.String).getBytes(charset)"

    .line 47
    .line 48
    invoke-static {p1, p2}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 p2, 0x0

    .line 52
    array-length p3, p1

    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lfg/i;->V([BII)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    const-string p2, "endIndex > string.length: "

    .line 58
    .line 59
    const-string p4, " > "

    .line 60
    .line 61
    invoke-static {p2, p3, p4}, Lg/b;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p2

    .line 86
    :cond_2
    const-string p1, "endIndex < beginIndex: "

    .line 87
    .line 88
    const-string p4, " < "

    .line 89
    .line 90
    invoke-static {p1, p3, p2, p4}, Landroid/support/v4/media/session/a;->o(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p2

    .line 104
    :cond_3
    const-string p1, "beginIndex < 0: "

    .line 105
    .line 106
    invoke-static {p2, p1}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p2
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfg/i;->A()Lfg/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final close()V
    .locals 0

    .line 1
    return-void
.end method

.method public final d0(IILjava/lang/String;)V
    .locals 9

    .line 1
    const-string v0, "string"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-ltz p1, :cond_a

    .line 7
    .line 8
    if-lt p2, p1, :cond_9

    .line 9
    .line 10
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-gt p2, v0, :cond_8

    .line 15
    .line 16
    :goto_0
    if-ge p1, p2, :cond_7

    .line 17
    .line 18
    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/16 v1, 0x80

    .line 23
    .line 24
    if-ge v0, v1, :cond_1

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-virtual {p0, v2}, Lfg/i;->S(I)Lfg/u;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget v3, v2, Lfg/u;->c:I

    .line 32
    .line 33
    sub-int/2addr v3, p1

    .line 34
    rsub-int v4, v3, 0x2000

    .line 35
    .line 36
    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    add-int/lit8 v5, p1, 0x1

    .line 41
    .line 42
    add-int/2addr p1, v3

    .line 43
    int-to-byte v0, v0

    .line 44
    iget-object v6, v2, Lfg/u;->a:[B

    .line 45
    .line 46
    aput-byte v0, v6, p1

    .line 47
    .line 48
    :goto_1
    move p1, v5

    .line 49
    if-ge p1, v4, :cond_0

    .line 50
    .line 51
    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-ge v0, v1, :cond_0

    .line 56
    .line 57
    add-int/lit8 v5, p1, 0x1

    .line 58
    .line 59
    add-int/2addr p1, v3

    .line 60
    int-to-byte v0, v0

    .line 61
    aput-byte v0, v6, p1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_0
    add-int/2addr v3, p1

    .line 65
    iget v0, v2, Lfg/u;->c:I

    .line 66
    .line 67
    sub-int/2addr v3, v0

    .line 68
    add-int/2addr v0, v3

    .line 69
    iput v0, v2, Lfg/u;->c:I

    .line 70
    .line 71
    iget-wide v0, p0, Lfg/i;->b:J

    .line 72
    .line 73
    int-to-long v2, v3

    .line 74
    add-long/2addr v0, v2

    .line 75
    iput-wide v0, p0, Lfg/i;->b:J

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    const/16 v2, 0x800

    .line 79
    .line 80
    if-ge v0, v2, :cond_2

    .line 81
    .line 82
    const/4 v2, 0x2

    .line 83
    invoke-virtual {p0, v2}, Lfg/i;->S(I)Lfg/u;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    iget v4, v3, Lfg/u;->c:I

    .line 88
    .line 89
    shr-int/lit8 v5, v0, 0x6

    .line 90
    .line 91
    or-int/lit16 v5, v5, 0xc0

    .line 92
    .line 93
    int-to-byte v5, v5

    .line 94
    iget-object v6, v3, Lfg/u;->a:[B

    .line 95
    .line 96
    aput-byte v5, v6, v4

    .line 97
    .line 98
    add-int/lit8 v5, v4, 0x1

    .line 99
    .line 100
    and-int/lit8 v0, v0, 0x3f

    .line 101
    .line 102
    or-int/2addr v0, v1

    .line 103
    int-to-byte v0, v0

    .line 104
    aput-byte v0, v6, v5

    .line 105
    .line 106
    add-int/2addr v4, v2

    .line 107
    iput v4, v3, Lfg/u;->c:I

    .line 108
    .line 109
    iget-wide v0, p0, Lfg/i;->b:J

    .line 110
    .line 111
    const-wide/16 v2, 0x2

    .line 112
    .line 113
    add-long/2addr v0, v2

    .line 114
    iput-wide v0, p0, Lfg/i;->b:J

    .line 115
    .line 116
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_2
    const v2, 0xd800

    .line 120
    .line 121
    .line 122
    const/16 v3, 0x3f

    .line 123
    .line 124
    if-lt v0, v2, :cond_6

    .line 125
    .line 126
    const v2, 0xdfff

    .line 127
    .line 128
    .line 129
    if-le v0, v2, :cond_3

    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_3
    add-int/lit8 v2, p1, 0x1

    .line 133
    .line 134
    if-ge v2, p2, :cond_4

    .line 135
    .line 136
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    goto :goto_3

    .line 141
    :cond_4
    const/4 v4, 0x0

    .line 142
    :goto_3
    const v5, 0xdbff

    .line 143
    .line 144
    .line 145
    if-gt v0, v5, :cond_5

    .line 146
    .line 147
    const v5, 0xdc00

    .line 148
    .line 149
    .line 150
    if-gt v5, v4, :cond_5

    .line 151
    .line 152
    const v5, 0xe000

    .line 153
    .line 154
    .line 155
    if-ge v4, v5, :cond_5

    .line 156
    .line 157
    and-int/lit16 v0, v0, 0x3ff

    .line 158
    .line 159
    shl-int/lit8 v0, v0, 0xa

    .line 160
    .line 161
    and-int/lit16 v2, v4, 0x3ff

    .line 162
    .line 163
    or-int/2addr v0, v2

    .line 164
    const/high16 v2, 0x10000

    .line 165
    .line 166
    add-int/2addr v0, v2

    .line 167
    const/4 v2, 0x4

    .line 168
    invoke-virtual {p0, v2}, Lfg/i;->S(I)Lfg/u;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    iget v5, v4, Lfg/u;->c:I

    .line 173
    .line 174
    shr-int/lit8 v6, v0, 0x12

    .line 175
    .line 176
    or-int/lit16 v6, v6, 0xf0

    .line 177
    .line 178
    int-to-byte v6, v6

    .line 179
    iget-object v7, v4, Lfg/u;->a:[B

    .line 180
    .line 181
    aput-byte v6, v7, v5

    .line 182
    .line 183
    add-int/lit8 v6, v5, 0x1

    .line 184
    .line 185
    shr-int/lit8 v8, v0, 0xc

    .line 186
    .line 187
    and-int/2addr v8, v3

    .line 188
    or-int/2addr v8, v1

    .line 189
    int-to-byte v8, v8

    .line 190
    aput-byte v8, v7, v6

    .line 191
    .line 192
    add-int/lit8 v6, v5, 0x2

    .line 193
    .line 194
    shr-int/lit8 v8, v0, 0x6

    .line 195
    .line 196
    and-int/2addr v8, v3

    .line 197
    or-int/2addr v8, v1

    .line 198
    int-to-byte v8, v8

    .line 199
    aput-byte v8, v7, v6

    .line 200
    .line 201
    add-int/lit8 v6, v5, 0x3

    .line 202
    .line 203
    and-int/2addr v0, v3

    .line 204
    or-int/2addr v0, v1

    .line 205
    int-to-byte v0, v0

    .line 206
    aput-byte v0, v7, v6

    .line 207
    .line 208
    add-int/2addr v5, v2

    .line 209
    iput v5, v4, Lfg/u;->c:I

    .line 210
    .line 211
    iget-wide v0, p0, Lfg/i;->b:J

    .line 212
    .line 213
    const-wide/16 v2, 0x4

    .line 214
    .line 215
    add-long/2addr v0, v2

    .line 216
    iput-wide v0, p0, Lfg/i;->b:J

    .line 217
    .line 218
    add-int/lit8 p1, p1, 0x2

    .line 219
    .line 220
    goto/16 :goto_0

    .line 221
    .line 222
    :cond_5
    invoke-virtual {p0, v3}, Lfg/i;->W(I)V

    .line 223
    .line 224
    .line 225
    move p1, v2

    .line 226
    goto/16 :goto_0

    .line 227
    .line 228
    :cond_6
    :goto_4
    const/4 v2, 0x3

    .line 229
    invoke-virtual {p0, v2}, Lfg/i;->S(I)Lfg/u;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    iget v5, v4, Lfg/u;->c:I

    .line 234
    .line 235
    shr-int/lit8 v6, v0, 0xc

    .line 236
    .line 237
    or-int/lit16 v6, v6, 0xe0

    .line 238
    .line 239
    int-to-byte v6, v6

    .line 240
    iget-object v7, v4, Lfg/u;->a:[B

    .line 241
    .line 242
    aput-byte v6, v7, v5

    .line 243
    .line 244
    add-int/lit8 v6, v5, 0x1

    .line 245
    .line 246
    shr-int/lit8 v8, v0, 0x6

    .line 247
    .line 248
    and-int/2addr v3, v8

    .line 249
    or-int/2addr v3, v1

    .line 250
    int-to-byte v3, v3

    .line 251
    aput-byte v3, v7, v6

    .line 252
    .line 253
    add-int/lit8 v3, v5, 0x2

    .line 254
    .line 255
    and-int/lit8 v0, v0, 0x3f

    .line 256
    .line 257
    or-int/2addr v0, v1

    .line 258
    int-to-byte v0, v0

    .line 259
    aput-byte v0, v7, v3

    .line 260
    .line 261
    add-int/2addr v5, v2

    .line 262
    iput v5, v4, Lfg/u;->c:I

    .line 263
    .line 264
    iget-wide v0, p0, Lfg/i;->b:J

    .line 265
    .line 266
    const-wide/16 v2, 0x3

    .line 267
    .line 268
    add-long/2addr v0, v2

    .line 269
    iput-wide v0, p0, Lfg/i;->b:J

    .line 270
    .line 271
    goto/16 :goto_2

    .line 272
    .line 273
    :cond_7
    return-void

    .line 274
    :cond_8
    const-string p1, "endIndex > string.length: "

    .line 275
    .line 276
    const-string v0, " > "

    .line 277
    .line 278
    invoke-static {p1, p2, v0}, Lg/b;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 283
    .line 284
    .line 285
    move-result p2

    .line 286
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 294
    .line 295
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    throw p2

    .line 303
    :cond_9
    const-string p3, "endIndex < beginIndex: "

    .line 304
    .line 305
    const-string v0, " < "

    .line 306
    .line 307
    invoke-static {p3, p2, p1, v0}, Landroid/support/v4/media/session/a;->o(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 312
    .line 313
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    throw p2

    .line 321
    :cond_a
    const-string p2, "beginIndex < 0: "

    .line 322
    .line 323
    invoke-static {p1, p2}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 328
    .line 329
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    goto :goto_6

    .line 337
    :goto_5
    throw p2

    .line 338
    :goto_6
    goto :goto_5
.end method

.method public final e0(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "string"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p0, v0, v1, p1}, Lfg/i;->d0(IILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final emit()Lfg/j;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final emitCompleteSegments()Lfg/j;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    :cond_0
    :goto_0
    const/4 v2, 0x1

    .line 8
    goto/16 :goto_4

    .line 9
    .line 10
    :cond_1
    instance-of v3, v1, Lfg/i;

    .line 11
    .line 12
    if-nez v3, :cond_2

    .line 13
    .line 14
    :goto_1
    const/4 v2, 0x0

    .line 15
    goto/16 :goto_4

    .line 16
    .line 17
    :cond_2
    iget-wide v5, v0, Lfg/i;->b:J

    .line 18
    .line 19
    check-cast v1, Lfg/i;

    .line 20
    .line 21
    iget-wide v7, v1, Lfg/i;->b:J

    .line 22
    .line 23
    cmp-long v3, v5, v7

    .line 24
    .line 25
    if-eqz v3, :cond_3

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_3
    const-wide/16 v7, 0x0

    .line 29
    .line 30
    cmp-long v3, v5, v7

    .line 31
    .line 32
    if-nez v3, :cond_4

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_4
    iget-object v3, v0, Lfg/i;->a:Lfg/u;

    .line 36
    .line 37
    invoke-static {v3}, Lue/d;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v1, Lfg/i;->a:Lfg/u;

    .line 41
    .line 42
    invoke-static {v1}, Lue/d;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget v5, v3, Lfg/u;->b:I

    .line 46
    .line 47
    iget v6, v1, Lfg/u;->b:I

    .line 48
    .line 49
    move-wide v9, v7

    .line 50
    :goto_2
    iget-wide v11, v0, Lfg/i;->b:J

    .line 51
    .line 52
    cmp-long v13, v9, v11

    .line 53
    .line 54
    if-gez v13, :cond_0

    .line 55
    .line 56
    iget v11, v3, Lfg/u;->c:I

    .line 57
    .line 58
    sub-int/2addr v11, v5

    .line 59
    iget v12, v1, Lfg/u;->c:I

    .line 60
    .line 61
    sub-int/2addr v12, v6

    .line 62
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    .line 63
    .line 64
    .line 65
    move-result v11

    .line 66
    int-to-long v11, v11

    .line 67
    move-wide v13, v7

    .line 68
    :goto_3
    cmp-long v15, v13, v11

    .line 69
    .line 70
    if-gez v15, :cond_6

    .line 71
    .line 72
    add-int/lit8 v15, v5, 0x1

    .line 73
    .line 74
    iget-object v2, v3, Lfg/u;->a:[B

    .line 75
    .line 76
    aget-byte v2, v2, v5

    .line 77
    .line 78
    add-int/lit8 v5, v6, 0x1

    .line 79
    .line 80
    iget-object v4, v1, Lfg/u;->a:[B

    .line 81
    .line 82
    aget-byte v4, v4, v6

    .line 83
    .line 84
    if-eq v2, v4, :cond_5

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_5
    const-wide/16 v16, 0x1

    .line 88
    .line 89
    add-long v13, v13, v16

    .line 90
    .line 91
    move v6, v5

    .line 92
    move v5, v15

    .line 93
    goto :goto_3

    .line 94
    :cond_6
    iget v2, v3, Lfg/u;->c:I

    .line 95
    .line 96
    if-ne v5, v2, :cond_7

    .line 97
    .line 98
    iget-object v2, v3, Lfg/u;->f:Lfg/u;

    .line 99
    .line 100
    invoke-static {v2}, Lue/d;->b(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    iget v3, v2, Lfg/u;->b:I

    .line 104
    .line 105
    move v5, v3

    .line 106
    move-object v3, v2

    .line 107
    :cond_7
    iget v2, v1, Lfg/u;->c:I

    .line 108
    .line 109
    if-ne v6, v2, :cond_8

    .line 110
    .line 111
    iget-object v1, v1, Lfg/u;->f:Lfg/u;

    .line 112
    .line 113
    invoke-static {v1}, Lue/d;->b(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    iget v2, v1, Lfg/u;->b:I

    .line 117
    .line 118
    move v6, v2

    .line 119
    :cond_8
    add-long/2addr v9, v11

    .line 120
    goto :goto_2

    .line 121
    :goto_4
    return v2
.end method

.method public final f0(I)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x4

    .line 7
    const/4 v4, 0x3

    .line 8
    const/16 v5, 0x8

    .line 9
    .line 10
    const/4 v6, 0x6

    .line 11
    const/4 v7, 0x2

    .line 12
    const/4 v8, 0x1

    .line 13
    const/16 v9, 0x80

    .line 14
    .line 15
    if-ge v1, v9, :cond_0

    .line 16
    .line 17
    invoke-virtual/range {p0 .. p1}, Lfg/i;->W(I)V

    .line 18
    .line 19
    .line 20
    goto/16 :goto_0

    .line 21
    .line 22
    :cond_0
    const/16 v10, 0x800

    .line 23
    .line 24
    const/16 v11, 0x3f

    .line 25
    .line 26
    if-ge v1, v10, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0, v7}, Lfg/i;->S(I)Lfg/u;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget v3, v2, Lfg/u;->c:I

    .line 33
    .line 34
    shr-int/lit8 v4, v1, 0x6

    .line 35
    .line 36
    or-int/lit16 v4, v4, 0xc0

    .line 37
    .line 38
    int-to-byte v4, v4

    .line 39
    iget-object v5, v2, Lfg/u;->a:[B

    .line 40
    .line 41
    aput-byte v4, v5, v3

    .line 42
    .line 43
    add-int/2addr v8, v3

    .line 44
    and-int/2addr v1, v11

    .line 45
    or-int/2addr v1, v9

    .line 46
    int-to-byte v1, v1

    .line 47
    aput-byte v1, v5, v8

    .line 48
    .line 49
    add-int/2addr v3, v7

    .line 50
    iput v3, v2, Lfg/u;->c:I

    .line 51
    .line 52
    iget-wide v1, v0, Lfg/i;->b:J

    .line 53
    .line 54
    const-wide/16 v3, 0x2

    .line 55
    .line 56
    add-long/2addr v1, v3

    .line 57
    iput-wide v1, v0, Lfg/i;->b:J

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const v10, 0xd800

    .line 61
    .line 62
    .line 63
    if-gt v10, v1, :cond_2

    .line 64
    .line 65
    const v10, 0xe000

    .line 66
    .line 67
    .line 68
    if-ge v1, v10, :cond_2

    .line 69
    .line 70
    invoke-virtual {v0, v11}, Lfg/i;->W(I)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    const/high16 v10, 0x10000

    .line 75
    .line 76
    if-ge v1, v10, :cond_3

    .line 77
    .line 78
    invoke-virtual {v0, v4}, Lfg/i;->S(I)Lfg/u;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    iget v3, v2, Lfg/u;->c:I

    .line 83
    .line 84
    shr-int/lit8 v5, v1, 0xc

    .line 85
    .line 86
    or-int/lit16 v5, v5, 0xe0

    .line 87
    .line 88
    int-to-byte v5, v5

    .line 89
    iget-object v10, v2, Lfg/u;->a:[B

    .line 90
    .line 91
    aput-byte v5, v10, v3

    .line 92
    .line 93
    add-int/2addr v8, v3

    .line 94
    shr-int/lit8 v5, v1, 0x6

    .line 95
    .line 96
    and-int/2addr v5, v11

    .line 97
    or-int/2addr v5, v9

    .line 98
    int-to-byte v5, v5

    .line 99
    aput-byte v5, v10, v8

    .line 100
    .line 101
    add-int/2addr v7, v3

    .line 102
    and-int/2addr v1, v11

    .line 103
    or-int/2addr v1, v9

    .line 104
    int-to-byte v1, v1

    .line 105
    aput-byte v1, v10, v7

    .line 106
    .line 107
    add-int/2addr v3, v4

    .line 108
    iput v3, v2, Lfg/u;->c:I

    .line 109
    .line 110
    iget-wide v1, v0, Lfg/i;->b:J

    .line 111
    .line 112
    const-wide/16 v3, 0x3

    .line 113
    .line 114
    add-long/2addr v1, v3

    .line 115
    iput-wide v1, v0, Lfg/i;->b:J

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_3
    const v10, 0x10ffff

    .line 119
    .line 120
    .line 121
    if-gt v1, v10, :cond_4

    .line 122
    .line 123
    invoke-virtual {v0, v3}, Lfg/i;->S(I)Lfg/u;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    iget v5, v2, Lfg/u;->c:I

    .line 128
    .line 129
    shr-int/lit8 v10, v1, 0x12

    .line 130
    .line 131
    or-int/lit16 v10, v10, 0xf0

    .line 132
    .line 133
    int-to-byte v10, v10

    .line 134
    iget-object v12, v2, Lfg/u;->a:[B

    .line 135
    .line 136
    aput-byte v10, v12, v5

    .line 137
    .line 138
    add-int/2addr v8, v5

    .line 139
    shr-int/lit8 v10, v1, 0xc

    .line 140
    .line 141
    and-int/2addr v10, v11

    .line 142
    or-int/2addr v10, v9

    .line 143
    int-to-byte v10, v10

    .line 144
    aput-byte v10, v12, v8

    .line 145
    .line 146
    add-int/2addr v7, v5

    .line 147
    shr-int/lit8 v6, v1, 0x6

    .line 148
    .line 149
    and-int/2addr v6, v11

    .line 150
    or-int/2addr v6, v9

    .line 151
    int-to-byte v6, v6

    .line 152
    aput-byte v6, v12, v7

    .line 153
    .line 154
    add-int/2addr v4, v5

    .line 155
    and-int/2addr v1, v11

    .line 156
    or-int/2addr v1, v9

    .line 157
    int-to-byte v1, v1

    .line 158
    aput-byte v1, v12, v4

    .line 159
    .line 160
    add-int/2addr v5, v3

    .line 161
    iput v5, v2, Lfg/u;->c:I

    .line 162
    .line 163
    iget-wide v1, v0, Lfg/i;->b:J

    .line 164
    .line 165
    const-wide/16 v3, 0x4

    .line 166
    .line 167
    add-long/2addr v1, v3

    .line 168
    iput-wide v1, v0, Lfg/i;->b:J

    .line 169
    .line 170
    :goto_0
    return-void

    .line 171
    :cond_4
    new-instance v9, Ljava/lang/IllegalArgumentException;

    .line 172
    .line 173
    new-instance v10, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    const-string v11, "Unexpected code point: 0x"

    .line 176
    .line 177
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    if-eqz v1, :cond_8

    .line 181
    .line 182
    sget-object v11, Lgg/b;->a:[C

    .line 183
    .line 184
    shr-int/lit8 v12, v1, 0x1c

    .line 185
    .line 186
    and-int/lit8 v12, v12, 0xf

    .line 187
    .line 188
    aget-char v12, v11, v12

    .line 189
    .line 190
    shr-int/lit8 v13, v1, 0x18

    .line 191
    .line 192
    and-int/lit8 v13, v13, 0xf

    .line 193
    .line 194
    aget-char v13, v11, v13

    .line 195
    .line 196
    shr-int/lit8 v14, v1, 0x14

    .line 197
    .line 198
    and-int/lit8 v14, v14, 0xf

    .line 199
    .line 200
    aget-char v14, v11, v14

    .line 201
    .line 202
    shr-int/lit8 v15, v1, 0x10

    .line 203
    .line 204
    and-int/lit8 v15, v15, 0xf

    .line 205
    .line 206
    aget-char v15, v11, v15

    .line 207
    .line 208
    shr-int/lit8 v16, v1, 0xc

    .line 209
    .line 210
    and-int/lit8 v16, v16, 0xf

    .line 211
    .line 212
    aget-char v16, v11, v16

    .line 213
    .line 214
    shr-int/lit8 v17, v1, 0x8

    .line 215
    .line 216
    and-int/lit8 v17, v17, 0xf

    .line 217
    .line 218
    aget-char v17, v11, v17

    .line 219
    .line 220
    shr-int/lit8 v18, v1, 0x4

    .line 221
    .line 222
    and-int/lit8 v18, v18, 0xf

    .line 223
    .line 224
    aget-char v18, v11, v18

    .line 225
    .line 226
    and-int/lit8 v1, v1, 0xf

    .line 227
    .line 228
    aget-char v1, v11, v1

    .line 229
    .line 230
    new-array v11, v5, [C

    .line 231
    .line 232
    aput-char v12, v11, v2

    .line 233
    .line 234
    aput-char v13, v11, v8

    .line 235
    .line 236
    aput-char v14, v11, v7

    .line 237
    .line 238
    aput-char v15, v11, v4

    .line 239
    .line 240
    aput-char v16, v11, v3

    .line 241
    .line 242
    const/4 v3, 0x5

    .line 243
    aput-char v17, v11, v3

    .line 244
    .line 245
    aput-char v18, v11, v6

    .line 246
    .line 247
    const/4 v3, 0x7

    .line 248
    aput-char v1, v11, v3

    .line 249
    .line 250
    :goto_1
    if-ge v2, v5, :cond_5

    .line 251
    .line 252
    aget-char v1, v11, v2

    .line 253
    .line 254
    const/16 v3, 0x30

    .line 255
    .line 256
    if-ne v1, v3, :cond_5

    .line 257
    .line 258
    add-int/2addr v2, v8

    .line 259
    goto :goto_1

    .line 260
    :cond_5
    const-string v1, "startIndex: "

    .line 261
    .line 262
    if-ltz v2, :cond_7

    .line 263
    .line 264
    if-gt v2, v5, :cond_6

    .line 265
    .line 266
    new-instance v1, Ljava/lang/String;

    .line 267
    .line 268
    sub-int/2addr v5, v2

    .line 269
    invoke-direct {v1, v11, v2, v5}, Ljava/lang/String;-><init>([CII)V

    .line 270
    .line 271
    .line 272
    goto :goto_2

    .line 273
    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 274
    .line 275
    const-string v4, " > endIndex: 8"

    .line 276
    .line 277
    invoke-static {v1, v2, v4}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    throw v3

    .line 285
    :cond_7
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    .line 286
    .line 287
    const-string v4, ", endIndex: 8, size: 8"

    .line 288
    .line 289
    invoke-static {v1, v2, v4}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-direct {v3, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    throw v3

    .line 297
    :cond_8
    const-string v1, "0"

    .line 298
    .line 299
    :goto_2
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    invoke-direct {v9, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    goto :goto_4

    .line 310
    :goto_3
    throw v9

    .line 311
    :goto_4
    goto :goto_3
.end method

.method public final flush()V
    .locals 0

    .line 1
    return-void
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lfg/i;->a:Lfg/u;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_1

    .line 7
    :cond_0
    const/4 v1, 0x1

    .line 8
    :cond_1
    iget v2, v0, Lfg/u;->b:I

    .line 9
    .line 10
    iget v3, v0, Lfg/u;->c:I

    .line 11
    .line 12
    :goto_0
    if-ge v2, v3, :cond_2

    .line 13
    .line 14
    mul-int/lit8 v1, v1, 0x1f

    .line 15
    .line 16
    iget-object v4, v0, Lfg/u;->a:[B

    .line 17
    .line 18
    aget-byte v4, v4, v2

    .line 19
    .line 20
    add-int/2addr v1, v4

    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    iget-object v0, v0, Lfg/u;->f:Lfg/u;

    .line 25
    .line 26
    invoke-static {v0}, Lue/d;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lfg/i;->a:Lfg/u;

    .line 30
    .line 31
    if-ne v0, v2, :cond_1

    .line 32
    .line 33
    move v0, v1

    .line 34
    :goto_1
    return v0
.end method

.method public final i()[B
    .locals 2

    .line 1
    iget-wide v0, p0, Lfg/i;->b:J

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lfg/i;->B(J)[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final isOpen()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final j()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lfg/i;->b:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public final k()J
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v2, 0x30

    .line 4
    .line 5
    const/4 v4, 0x1

    .line 6
    iget-wide v5, v0, Lfg/i;->b:J

    .line 7
    .line 8
    const-wide/16 v7, 0x0

    .line 9
    .line 10
    cmp-long v9, v5, v7

    .line 11
    .line 12
    if-eqz v9, :cond_e

    .line 13
    .line 14
    const-wide/16 v5, -0x7

    .line 15
    .line 16
    move-wide v9, v7

    .line 17
    const/4 v11, 0x0

    .line 18
    const/4 v12, 0x0

    .line 19
    const/4 v13, 0x0

    .line 20
    :goto_0
    iget-object v14, v0, Lfg/i;->a:Lfg/u;

    .line 21
    .line 22
    invoke-static {v14}, Lue/d;->b(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget v15, v14, Lfg/u;->b:I

    .line 26
    .line 27
    iget v3, v14, Lfg/u;->c:I

    .line 28
    .line 29
    :goto_1
    if-ge v15, v3, :cond_5

    .line 30
    .line 31
    iget-object v1, v14, Lfg/u;->a:[B

    .line 32
    .line 33
    aget-byte v1, v1, v15

    .line 34
    .line 35
    if-lt v1, v2, :cond_3

    .line 36
    .line 37
    const/16 v7, 0x39

    .line 38
    .line 39
    if-gt v1, v7, :cond_3

    .line 40
    .line 41
    rsub-int/lit8 v7, v1, 0x30

    .line 42
    .line 43
    const-wide v16, -0xcccccccccccccccL

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    cmp-long v8, v9, v16

    .line 49
    .line 50
    if-ltz v8, :cond_1

    .line 51
    .line 52
    cmp-long v8, v9, v16

    .line 53
    .line 54
    move/from16 v16, v3

    .line 55
    .line 56
    if-nez v8, :cond_0

    .line 57
    .line 58
    int-to-long v2, v7

    .line 59
    cmp-long v17, v2, v5

    .line 60
    .line 61
    if-gez v17, :cond_0

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_0
    const-wide/16 v1, 0xa

    .line 65
    .line 66
    mul-long v9, v9, v1

    .line 67
    .line 68
    int-to-long v1, v7

    .line 69
    add-long/2addr v9, v1

    .line 70
    goto :goto_3

    .line 71
    :cond_1
    :goto_2
    new-instance v2, Lfg/i;

    .line 72
    .line 73
    invoke-direct {v2}, Lfg/i;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v9, v10}, Lfg/i;->X(J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v1}, Lfg/i;->W(I)V

    .line 80
    .line 81
    .line 82
    if-nez v12, :cond_2

    .line 83
    .line 84
    invoke-virtual {v2}, Lfg/i;->readByte()B

    .line 85
    .line 86
    .line 87
    :cond_2
    new-instance v1, Ljava/lang/NumberFormatException;

    .line 88
    .line 89
    invoke-virtual {v2}, Lfg/i;->Q()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    const-string v3, "Number too large: "

    .line 94
    .line 95
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw v1

    .line 103
    :cond_3
    move/from16 v16, v3

    .line 104
    .line 105
    const/16 v2, 0x2d

    .line 106
    .line 107
    if-ne v1, v2, :cond_4

    .line 108
    .line 109
    if-nez v11, :cond_4

    .line 110
    .line 111
    const-wide/16 v1, 0x1

    .line 112
    .line 113
    sub-long/2addr v5, v1

    .line 114
    const/4 v12, 0x1

    .line 115
    :goto_3
    add-int/2addr v15, v4

    .line 116
    add-int/2addr v11, v4

    .line 117
    move/from16 v3, v16

    .line 118
    .line 119
    const/16 v2, 0x30

    .line 120
    .line 121
    const-wide/16 v7, 0x0

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_4
    move/from16 v1, v16

    .line 125
    .line 126
    const/4 v13, 0x1

    .line 127
    goto :goto_4

    .line 128
    :cond_5
    move v1, v3

    .line 129
    :goto_4
    if-ne v15, v1, :cond_6

    .line 130
    .line 131
    invoke-virtual {v14}, Lfg/u;->a()Lfg/u;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    iput-object v1, v0, Lfg/i;->a:Lfg/u;

    .line 136
    .line 137
    invoke-static {v14}, Lfg/v;->a(Lfg/u;)V

    .line 138
    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_6
    iput v15, v14, Lfg/u;->b:I

    .line 142
    .line 143
    :goto_5
    if-nez v13, :cond_8

    .line 144
    .line 145
    iget-object v1, v0, Lfg/i;->a:Lfg/u;

    .line 146
    .line 147
    if-nez v1, :cond_7

    .line 148
    .line 149
    goto :goto_6

    .line 150
    :cond_7
    const/16 v2, 0x30

    .line 151
    .line 152
    const-wide/16 v7, 0x0

    .line 153
    .line 154
    goto/16 :goto_0

    .line 155
    .line 156
    :cond_8
    :goto_6
    iget-wide v1, v0, Lfg/i;->b:J

    .line 157
    .line 158
    int-to-long v5, v11

    .line 159
    sub-long/2addr v1, v5

    .line 160
    iput-wide v1, v0, Lfg/i;->b:J

    .line 161
    .line 162
    if-eqz v12, :cond_9

    .line 163
    .line 164
    const/4 v3, 0x2

    .line 165
    goto :goto_7

    .line 166
    :cond_9
    const/4 v3, 0x1

    .line 167
    :goto_7
    if-ge v11, v3, :cond_c

    .line 168
    .line 169
    const-wide/16 v5, 0x0

    .line 170
    .line 171
    cmp-long v3, v1, v5

    .line 172
    .line 173
    if-eqz v3, :cond_b

    .line 174
    .line 175
    if-eqz v12, :cond_a

    .line 176
    .line 177
    const-string v1, "Expected a digit"

    .line 178
    .line 179
    goto :goto_8

    .line 180
    :cond_a
    const-string v1, "Expected a digit or \'-\'"

    .line 181
    .line 182
    :goto_8
    new-instance v2, Ljava/lang/NumberFormatException;

    .line 183
    .line 184
    const-string v3, " but was 0x"

    .line 185
    .line 186
    invoke-static {v1, v3}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {v0, v5, v6}, Lfg/i;->L(J)B

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    sget-object v5, Lgg/b;->a:[C

    .line 195
    .line 196
    shr-int/lit8 v6, v3, 0x4

    .line 197
    .line 198
    and-int/lit8 v6, v6, 0xf

    .line 199
    .line 200
    aget-char v6, v5, v6

    .line 201
    .line 202
    and-int/lit8 v3, v3, 0xf

    .line 203
    .line 204
    aget-char v3, v5, v3

    .line 205
    .line 206
    const/4 v5, 0x2

    .line 207
    new-array v5, v5, [C

    .line 208
    .line 209
    const/4 v7, 0x0

    .line 210
    aput-char v6, v5, v7

    .line 211
    .line 212
    aput-char v3, v5, v4

    .line 213
    .line 214
    new-instance v3, Ljava/lang/String;

    .line 215
    .line 216
    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([C)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-direct {v2, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    throw v2

    .line 230
    :cond_b
    new-instance v1, Ljava/io/EOFException;

    .line 231
    .line 232
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    .line 233
    .line 234
    .line 235
    throw v1

    .line 236
    :cond_c
    if-eqz v12, :cond_d

    .line 237
    .line 238
    goto :goto_9

    .line 239
    :cond_d
    neg-long v9, v9

    .line 240
    :goto_9
    return-wide v9

    .line 241
    :cond_e
    new-instance v1, Ljava/io/EOFException;

    .line 242
    .line 243
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    .line 244
    .line 245
    .line 246
    goto :goto_b

    .line 247
    :goto_a
    throw v1

    .line 248
    :goto_b
    goto :goto_a
.end method

.method public final l(J)Ljava/lang/String;
    .locals 10

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-ltz v2, :cond_3

    .line 6
    .line 7
    const-wide/16 v0, 0x1

    .line 8
    .line 9
    const-wide v2, 0x7fffffffffffffffL

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    cmp-long v4, p1, v2

    .line 15
    .line 16
    if-nez v4, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    add-long v2, p1, v0

    .line 20
    .line 21
    :goto_0
    const/16 v5, 0xa

    .line 22
    .line 23
    const-wide/16 v6, 0x0

    .line 24
    .line 25
    move-object v4, p0

    .line 26
    move-wide v8, v2

    .line 27
    invoke-virtual/range {v4 .. v9}, Lfg/i;->M(BJJ)J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    const-wide/16 v6, -0x1

    .line 32
    .line 33
    cmp-long v8, v4, v6

    .line 34
    .line 35
    if-eqz v8, :cond_1

    .line 36
    .line 37
    invoke-static {p0, v4, v5}, Lgg/a;->a(Lfg/i;J)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    iget-wide v4, p0, Lfg/i;->b:J

    .line 43
    .line 44
    cmp-long v6, v2, v4

    .line 45
    .line 46
    if-gez v6, :cond_2

    .line 47
    .line 48
    sub-long v0, v2, v0

    .line 49
    .line 50
    invoke-virtual {p0, v0, v1}, Lfg/i;->L(J)B

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    const/16 v1, 0xd

    .line 55
    .line 56
    if-ne v0, v1, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0, v2, v3}, Lfg/i;->L(J)B

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    const/16 v1, 0xa

    .line 63
    .line 64
    if-ne v0, v1, :cond_2

    .line 65
    .line 66
    invoke-static {p0, v2, v3}, Lgg/a;->a(Lfg/i;J)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    :goto_1
    return-object p1

    .line 71
    :cond_2
    new-instance v6, Lfg/i;

    .line 72
    .line 73
    invoke-direct {v6}, Lfg/i;-><init>()V

    .line 74
    .line 75
    .line 76
    iget-wide v0, p0, Lfg/i;->b:J

    .line 77
    .line 78
    const/16 v2, 0x20

    .line 79
    .line 80
    int-to-long v2, v2

    .line 81
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 82
    .line 83
    .line 84
    move-result-wide v4

    .line 85
    const-wide/16 v1, 0x0

    .line 86
    .line 87
    move-object v0, p0

    .line 88
    move-object v3, v6

    .line 89
    invoke-virtual/range {v0 .. v5}, Lfg/i;->K(JLfg/i;J)V

    .line 90
    .line 91
    .line 92
    new-instance v0, Ljava/io/EOFException;

    .line 93
    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v2, "\\n not found: limit="

    .line 97
    .line 98
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-wide v2, p0, Lfg/i;->b:J

    .line 102
    .line 103
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 104
    .line 105
    .line 106
    move-result-wide p1

    .line 107
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string p1, " content="

    .line 111
    .line 112
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget-wide p1, v6, Lfg/i;->b:J

    .line 116
    .line 117
    invoke-virtual {v6, p1, p2}, Lfg/i;->c(J)Lfg/l;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p1}, Lfg/l;->h()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const/16 p1, 0x2026

    .line 129
    .line 130
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw v0

    .line 141
    :cond_3
    const-string v0, "limit < 0: "

    .line 142
    .line 143
    invoke-static {p1, p2, v0}, Lta/q;->j(JLjava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 148
    .line 149
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw p2
.end method

.method public final p(Lfg/l;)Z
    .locals 7

    .line 1
    const-string v0, "bytes"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lfg/l;->g()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-ltz v0, :cond_3

    .line 12
    .line 13
    iget-wide v2, p0, Lfg/i;->b:J

    .line 14
    .line 15
    int-to-long v4, v0

    .line 16
    cmp-long v6, v2, v4

    .line 17
    .line 18
    if-ltz v6, :cond_3

    .line 19
    .line 20
    invoke-virtual {p1}, Lfg/l;->g()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-ge v2, v0, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    const/4 v2, 0x0

    .line 28
    :goto_0
    if-ge v2, v0, :cond_2

    .line 29
    .line 30
    int-to-long v3, v2

    .line 31
    invoke-virtual {p0, v3, v4}, Lfg/i;->L(J)B

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {p1, v2}, Lfg/l;->j(I)B

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eq v3, v4, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 v1, 0x1

    .line 46
    :cond_3
    :goto_1
    return v1
.end method

.method public final r()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lfg/i;->b:J

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lfg/i;->skip(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 6

    const-string v0, "sink"

    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lfg/i;->a:Lfg/u;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 11
    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    iget v2, v0, Lfg/u;->c:I

    iget v3, v0, Lfg/u;->b:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 12
    iget-object v2, v0, Lfg/u;->a:[B

    iget v3, v0, Lfg/u;->b:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 13
    iget p1, v0, Lfg/u;->b:I

    add-int/2addr p1, v1

    iput p1, v0, Lfg/u;->b:I

    .line 14
    iget-wide v2, p0, Lfg/i;->b:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lfg/i;->b:J

    .line 15
    iget v2, v0, Lfg/u;->c:I

    if-ne p1, v2, :cond_1

    .line 16
    invoke-virtual {v0}, Lfg/u;->a()Lfg/u;

    move-result-object p1

    iput-object p1, p0, Lfg/i;->a:Lfg/u;

    .line 17
    invoke-static {v0}, Lfg/v;->a(Lfg/u;)V

    :cond_1
    return v1
.end method

.method public final read([BII)I
    .locals 7

    const-string v0, "sink"

    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lfg/e0;->d(JJJ)V

    .line 19
    iget-object v0, p0, Lfg/i;->a:Lfg/u;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 20
    :cond_0
    iget v1, v0, Lfg/u;->c:I

    iget v2, v0, Lfg/u;->b:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 21
    iget v1, v0, Lfg/u;->b:I

    add-int v2, v1, p3

    .line 22
    iget-object v3, v0, Lfg/u;->a:[B

    invoke-static {p2, v3, v1, p1, v2}, Lje/i;->f0(I[BI[BI)V

    .line 23
    iget p1, v0, Lfg/u;->b:I

    add-int/2addr p1, p3

    iput p1, v0, Lfg/u;->b:I

    .line 24
    iget-wide v1, p0, Lfg/i;->b:J

    int-to-long v3, p3

    sub-long/2addr v1, v3

    .line 25
    iput-wide v1, p0, Lfg/i;->b:J

    .line 26
    iget p2, v0, Lfg/u;->c:I

    if-ne p1, p2, :cond_1

    .line 27
    invoke-virtual {v0}, Lfg/u;->a()Lfg/u;

    move-result-object p1

    iput-object p1, p0, Lfg/i;->a:Lfg/u;

    .line 28
    invoke-static {v0}, Lfg/v;->a(Lfg/u;)V

    :cond_1
    move p1, p3

    :goto_0
    return p1
.end method

.method public final read(Lfg/i;J)J
    .locals 5

    const-string v0, "sink"

    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    .line 1
    iget-wide v2, p0, Lfg/i;->b:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const-wide/16 p1, -0x1

    goto :goto_0

    :cond_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_1

    move-wide p2, v2

    .line 2
    :cond_1
    invoke-virtual {p1, p0, p2, p3}, Lfg/i;->write(Lfg/i;J)V

    move-wide p1, p2

    :goto_0
    return-wide p1

    .line 3
    :cond_2
    const-string p1, "byteCount < 0: "

    .line 4
    invoke-static {p2, p3, p1}, Lta/q;->j(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final readByte()B
    .locals 8

    .line 1
    iget-wide v0, p0, Lfg/i;->b:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lfg/i;->a:Lfg/u;

    .line 10
    .line 11
    invoke-static {v0}, Lue/d;->b(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget v1, v0, Lfg/u;->b:I

    .line 15
    .line 16
    iget v2, v0, Lfg/u;->c:I

    .line 17
    .line 18
    add-int/lit8 v3, v1, 0x1

    .line 19
    .line 20
    iget-object v4, v0, Lfg/u;->a:[B

    .line 21
    .line 22
    aget-byte v1, v4, v1

    .line 23
    .line 24
    iget-wide v4, p0, Lfg/i;->b:J

    .line 25
    .line 26
    const-wide/16 v6, 0x1

    .line 27
    .line 28
    sub-long/2addr v4, v6

    .line 29
    iput-wide v4, p0, Lfg/i;->b:J

    .line 30
    .line 31
    if-ne v3, v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0}, Lfg/u;->a()Lfg/u;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iput-object v2, p0, Lfg/i;->a:Lfg/u;

    .line 38
    .line 39
    invoke-static {v0}, Lfg/v;->a(Lfg/u;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iput v3, v0, Lfg/u;->b:I

    .line 44
    .line 45
    :goto_0
    return v1

    .line 46
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 49
    .line 50
    .line 51
    throw v0
.end method

.method public final readFully([B)V
    .locals 3

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :goto_0
    array-length v1, p1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    array-length v1, p1

    .line 11
    sub-int/2addr v1, v0

    .line 12
    invoke-virtual {p0, p1, v0, v1}, Lfg/i;->read([BII)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, -0x1

    .line 17
    if-eq v1, v2, :cond_0

    .line 18
    .line 19
    add-int/2addr v0, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    return-void
.end method

.method public final readInt()I
    .locals 9

    .line 1
    iget-wide v0, p0, Lfg/i;->b:J

    .line 2
    .line 3
    const-wide/16 v2, 0x4

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-ltz v4, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lfg/i;->a:Lfg/u;

    .line 10
    .line 11
    invoke-static {v0}, Lue/d;->b(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget v1, v0, Lfg/u;->b:I

    .line 15
    .line 16
    iget v4, v0, Lfg/u;->c:I

    .line 17
    .line 18
    sub-int v5, v4, v1

    .line 19
    .line 20
    int-to-long v5, v5

    .line 21
    cmp-long v7, v5, v2

    .line 22
    .line 23
    if-gez v7, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lfg/i;->readByte()B

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    and-int/lit16 v0, v0, 0xff

    .line 30
    .line 31
    shl-int/lit8 v0, v0, 0x18

    .line 32
    .line 33
    invoke-virtual {p0}, Lfg/i;->readByte()B

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    and-int/lit16 v1, v1, 0xff

    .line 38
    .line 39
    shl-int/lit8 v1, v1, 0x10

    .line 40
    .line 41
    or-int/2addr v0, v1

    .line 42
    invoke-virtual {p0}, Lfg/i;->readByte()B

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    and-int/lit16 v1, v1, 0xff

    .line 47
    .line 48
    shl-int/lit8 v1, v1, 0x8

    .line 49
    .line 50
    or-int/2addr v0, v1

    .line 51
    invoke-virtual {p0}, Lfg/i;->readByte()B

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    and-int/lit16 v1, v1, 0xff

    .line 56
    .line 57
    or-int/2addr v0, v1

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    add-int/lit8 v5, v1, 0x1

    .line 60
    .line 61
    iget-object v6, v0, Lfg/u;->a:[B

    .line 62
    .line 63
    aget-byte v7, v6, v1

    .line 64
    .line 65
    and-int/lit16 v7, v7, 0xff

    .line 66
    .line 67
    shl-int/lit8 v7, v7, 0x18

    .line 68
    .line 69
    add-int/lit8 v8, v1, 0x2

    .line 70
    .line 71
    aget-byte v5, v6, v5

    .line 72
    .line 73
    and-int/lit16 v5, v5, 0xff

    .line 74
    .line 75
    shl-int/lit8 v5, v5, 0x10

    .line 76
    .line 77
    or-int/2addr v5, v7

    .line 78
    add-int/lit8 v7, v1, 0x3

    .line 79
    .line 80
    aget-byte v8, v6, v8

    .line 81
    .line 82
    and-int/lit16 v8, v8, 0xff

    .line 83
    .line 84
    shl-int/lit8 v8, v8, 0x8

    .line 85
    .line 86
    or-int/2addr v5, v8

    .line 87
    add-int/lit8 v1, v1, 0x4

    .line 88
    .line 89
    aget-byte v6, v6, v7

    .line 90
    .line 91
    and-int/lit16 v6, v6, 0xff

    .line 92
    .line 93
    or-int/2addr v5, v6

    .line 94
    iget-wide v6, p0, Lfg/i;->b:J

    .line 95
    .line 96
    sub-long/2addr v6, v2

    .line 97
    iput-wide v6, p0, Lfg/i;->b:J

    .line 98
    .line 99
    if-ne v1, v4, :cond_1

    .line 100
    .line 101
    invoke-virtual {v0}, Lfg/u;->a()Lfg/u;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    iput-object v1, p0, Lfg/i;->a:Lfg/u;

    .line 106
    .line 107
    invoke-static {v0}, Lfg/v;->a(Lfg/u;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_1
    iput v1, v0, Lfg/u;->b:I

    .line 112
    .line 113
    :goto_0
    move v0, v5

    .line 114
    :goto_1
    return v0

    .line 115
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    .line 116
    .line 117
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 118
    .line 119
    .line 120
    throw v0
.end method

.method public final readLong()J
    .locals 15

    .line 1
    iget-wide v0, p0, Lfg/i;->b:J

    .line 2
    .line 3
    const-wide/16 v2, 0x8

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-ltz v4, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lfg/i;->a:Lfg/u;

    .line 10
    .line 11
    invoke-static {v0}, Lue/d;->b(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget v1, v0, Lfg/u;->b:I

    .line 15
    .line 16
    iget v4, v0, Lfg/u;->c:I

    .line 17
    .line 18
    sub-int v5, v4, v1

    .line 19
    .line 20
    int-to-long v5, v5

    .line 21
    const/16 v7, 0x20

    .line 22
    .line 23
    cmp-long v8, v5, v2

    .line 24
    .line 25
    if-gez v8, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Lfg/i;->readInt()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    int-to-long v0, v0

    .line 32
    const-wide v2, 0xffffffffL

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    and-long/2addr v0, v2

    .line 38
    shl-long/2addr v0, v7

    .line 39
    invoke-virtual {p0}, Lfg/i;->readInt()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    int-to-long v4, v4

    .line 44
    and-long/2addr v2, v4

    .line 45
    or-long/2addr v0, v2

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    add-int/lit8 v5, v1, 0x1

    .line 48
    .line 49
    iget-object v6, v0, Lfg/u;->a:[B

    .line 50
    .line 51
    aget-byte v8, v6, v1

    .line 52
    .line 53
    int-to-long v8, v8

    .line 54
    const-wide/16 v10, 0xff

    .line 55
    .line 56
    and-long/2addr v8, v10

    .line 57
    const/16 v12, 0x38

    .line 58
    .line 59
    shl-long/2addr v8, v12

    .line 60
    add-int/lit8 v12, v1, 0x2

    .line 61
    .line 62
    aget-byte v5, v6, v5

    .line 63
    .line 64
    int-to-long v13, v5

    .line 65
    and-long/2addr v13, v10

    .line 66
    const/16 v5, 0x30

    .line 67
    .line 68
    shl-long/2addr v13, v5

    .line 69
    or-long/2addr v8, v13

    .line 70
    add-int/lit8 v5, v1, 0x3

    .line 71
    .line 72
    aget-byte v12, v6, v12

    .line 73
    .line 74
    int-to-long v12, v12

    .line 75
    and-long/2addr v12, v10

    .line 76
    const/16 v14, 0x28

    .line 77
    .line 78
    shl-long/2addr v12, v14

    .line 79
    or-long/2addr v8, v12

    .line 80
    add-int/lit8 v12, v1, 0x4

    .line 81
    .line 82
    aget-byte v5, v6, v5

    .line 83
    .line 84
    int-to-long v13, v5

    .line 85
    and-long/2addr v13, v10

    .line 86
    shl-long/2addr v13, v7

    .line 87
    or-long/2addr v8, v13

    .line 88
    add-int/lit8 v5, v1, 0x5

    .line 89
    .line 90
    aget-byte v7, v6, v12

    .line 91
    .line 92
    int-to-long v12, v7

    .line 93
    and-long/2addr v12, v10

    .line 94
    const/16 v7, 0x18

    .line 95
    .line 96
    shl-long/2addr v12, v7

    .line 97
    or-long/2addr v8, v12

    .line 98
    add-int/lit8 v7, v1, 0x6

    .line 99
    .line 100
    aget-byte v5, v6, v5

    .line 101
    .line 102
    int-to-long v12, v5

    .line 103
    and-long/2addr v12, v10

    .line 104
    const/16 v5, 0x10

    .line 105
    .line 106
    shl-long/2addr v12, v5

    .line 107
    or-long/2addr v8, v12

    .line 108
    add-int/lit8 v5, v1, 0x7

    .line 109
    .line 110
    aget-byte v7, v6, v7

    .line 111
    .line 112
    int-to-long v12, v7

    .line 113
    and-long/2addr v12, v10

    .line 114
    const/16 v7, 0x8

    .line 115
    .line 116
    shl-long/2addr v12, v7

    .line 117
    or-long/2addr v8, v12

    .line 118
    add-int/2addr v1, v7

    .line 119
    aget-byte v5, v6, v5

    .line 120
    .line 121
    int-to-long v5, v5

    .line 122
    and-long/2addr v5, v10

    .line 123
    or-long/2addr v5, v8

    .line 124
    iget-wide v7, p0, Lfg/i;->b:J

    .line 125
    .line 126
    sub-long/2addr v7, v2

    .line 127
    iput-wide v7, p0, Lfg/i;->b:J

    .line 128
    .line 129
    if-ne v1, v4, :cond_1

    .line 130
    .line 131
    invoke-virtual {v0}, Lfg/u;->a()Lfg/u;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    iput-object v1, p0, Lfg/i;->a:Lfg/u;

    .line 136
    .line 137
    invoke-static {v0}, Lfg/v;->a(Lfg/u;)V

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_1
    iput v1, v0, Lfg/u;->b:I

    .line 142
    .line 143
    :goto_0
    move-wide v0, v5

    .line 144
    :goto_1
    return-wide v0

    .line 145
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    .line 146
    .line 147
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 148
    .line 149
    .line 150
    throw v0
.end method

.method public final readShort()S
    .locals 9

    .line 1
    iget-wide v0, p0, Lfg/i;->b:J

    .line 2
    .line 3
    const-wide/16 v2, 0x2

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-ltz v4, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lfg/i;->a:Lfg/u;

    .line 10
    .line 11
    invoke-static {v0}, Lue/d;->b(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget v1, v0, Lfg/u;->b:I

    .line 15
    .line 16
    iget v4, v0, Lfg/u;->c:I

    .line 17
    .line 18
    sub-int v5, v4, v1

    .line 19
    .line 20
    const/4 v6, 0x2

    .line 21
    if-ge v5, v6, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lfg/i;->readByte()B

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    and-int/lit16 v0, v0, 0xff

    .line 28
    .line 29
    shl-int/lit8 v0, v0, 0x8

    .line 30
    .line 31
    invoke-virtual {p0}, Lfg/i;->readByte()B

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    and-int/lit16 v1, v1, 0xff

    .line 36
    .line 37
    or-int/2addr v0, v1

    .line 38
    int-to-short v0, v0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    add-int/lit8 v5, v1, 0x1

    .line 41
    .line 42
    iget-object v7, v0, Lfg/u;->a:[B

    .line 43
    .line 44
    aget-byte v8, v7, v1

    .line 45
    .line 46
    and-int/lit16 v8, v8, 0xff

    .line 47
    .line 48
    shl-int/lit8 v8, v8, 0x8

    .line 49
    .line 50
    add-int/2addr v1, v6

    .line 51
    aget-byte v5, v7, v5

    .line 52
    .line 53
    and-int/lit16 v5, v5, 0xff

    .line 54
    .line 55
    or-int/2addr v5, v8

    .line 56
    iget-wide v6, p0, Lfg/i;->b:J

    .line 57
    .line 58
    sub-long/2addr v6, v2

    .line 59
    iput-wide v6, p0, Lfg/i;->b:J

    .line 60
    .line 61
    if-ne v1, v4, :cond_1

    .line 62
    .line 63
    invoke-virtual {v0}, Lfg/u;->a()Lfg/u;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iput-object v1, p0, Lfg/i;->a:Lfg/u;

    .line 68
    .line 69
    invoke-static {v0}, Lfg/v;->a(Lfg/u;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    iput v1, v0, Lfg/u;->b:I

    .line 74
    .line 75
    :goto_0
    int-to-short v0, v5

    .line 76
    :goto_1
    return v0

    .line 77
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    .line 78
    .line 79
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 80
    .line 81
    .line 82
    throw v0
.end method

.method public final skip(J)V
    .locals 7

    .line 1
    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-lez v2, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lfg/i;->a:Lfg/u;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget v1, v0, Lfg/u;->c:I

    .line 12
    .line 13
    iget v2, v0, Lfg/u;->b:I

    .line 14
    .line 15
    sub-int/2addr v1, v2

    .line 16
    int-to-long v1, v1

    .line 17
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    long-to-int v2, v1

    .line 22
    iget-wide v3, p0, Lfg/i;->b:J

    .line 23
    .line 24
    int-to-long v5, v2

    .line 25
    sub-long/2addr v3, v5

    .line 26
    iput-wide v3, p0, Lfg/i;->b:J

    .line 27
    .line 28
    sub-long/2addr p1, v5

    .line 29
    iget v1, v0, Lfg/u;->b:I

    .line 30
    .line 31
    add-int/2addr v1, v2

    .line 32
    iput v1, v0, Lfg/u;->b:I

    .line 33
    .line 34
    iget v2, v0, Lfg/u;->c:I

    .line 35
    .line 36
    if-ne v1, v2, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0}, Lfg/u;->a()Lfg/u;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iput-object v1, p0, Lfg/i;->a:Lfg/u;

    .line 43
    .line 44
    invoke-static {v0}, Lfg/v;->a(Lfg/u;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    .line 49
    .line 50
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    return-void
.end method

.method public final t(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "charset"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lfg/i;->b:J

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1, p1}, Lfg/i;->P(JLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final timeout()Lfg/c0;
    .locals 1

    .line 1
    sget-object v0, Lfg/c0;->NONE:Lfg/c0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-wide v0, p0, Lfg/i;->b:J

    .line 2
    .line 3
    const-wide/32 v2, 0x7fffffff

    .line 4
    .line 5
    .line 6
    cmp-long v4, v0, v2

    .line 7
    .line 8
    if-gtz v4, :cond_0

    .line 9
    .line 10
    long-to-int v1, v0

    .line 11
    invoke-virtual {p0, v1}, Lfg/i;->R(I)Lfg/l;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lfg/l;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, "size > Int.MAX_VALUE: "

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-wide v1, p0, Lfg/i;->b:J

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v1
.end method

.method public final v()Lfg/l;
    .locals 2

    .line 1
    iget-wide v0, p0, Lfg/i;->b:J

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lfg/i;->c(J)Lfg/l;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final w(J)Z
    .locals 3

    .line 1
    iget-wide v0, p0, Lfg/i;->b:J

    .line 2
    .line 3
    cmp-long v2, v0, p1

    .line 4
    .line 5
    if-ltz v2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 6

    const-string v0, "source"

    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_0

    const/4 v2, 0x1

    .line 49
    invoke-virtual {p0, v2}, Lfg/i;->S(I)Lfg/u;

    move-result-object v2

    .line 50
    iget v3, v2, Lfg/u;->c:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 51
    iget-object v4, v2, Lfg/u;->a:[B

    iget v5, v2, Lfg/u;->c:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v1, v3

    .line 52
    iget v4, v2, Lfg/u;->c:I

    add-int/2addr v4, v3

    iput v4, v2, Lfg/u;->c:I

    goto :goto_0

    .line 53
    :cond_0
    iget-wide v1, p0, Lfg/i;->b:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lfg/i;->b:J

    return v0
.end method

.method public final bridge synthetic write(Lfg/l;)Lfg/j;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lfg/i;->T(Lfg/l;)V

    return-object p0
.end method

.method public final bridge synthetic write([B)Lfg/j;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lfg/i;->U([B)V

    return-object p0
.end method

.method public final bridge synthetic write([BII)Lfg/j;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lfg/i;->V([BII)V

    return-object p0
.end method

.method public final write(Lfg/i;J)V
    .locals 8

    const-string v0, "source"

    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq p1, p0, :cond_c

    .line 4
    iget-wide v1, p1, Lfg/i;->b:J

    const-wide/16 v3, 0x0

    move-wide v5, p2

    .line 5
    invoke-static/range {v1 .. v6}, Lfg/e0;->d(JJJ)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_b

    .line 6
    iget-object v0, p1, Lfg/i;->a:Lfg/u;

    invoke-static {v0}, Lue/d;->b(Ljava/lang/Object;)V

    iget v0, v0, Lfg/u;->c:I

    iget-object v1, p1, Lfg/i;->a:Lfg/u;

    invoke-static {v1}, Lue/d;->b(Ljava/lang/Object;)V

    iget v1, v1, Lfg/u;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    const/4 v2, 0x0

    cmp-long v3, p2, v0

    if-gez v3, :cond_5

    .line 7
    iget-object v0, p0, Lfg/i;->a:Lfg/u;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lfg/u;->g:Lfg/u;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 8
    iget-boolean v1, v0, Lfg/u;->e:Z

    if-eqz v1, :cond_2

    .line 9
    iget v1, v0, Lfg/u;->c:I

    int-to-long v3, v1

    add-long/2addr v3, p2

    iget-boolean v1, v0, Lfg/u;->d:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    iget v1, v0, Lfg/u;->b:I

    :goto_2
    int-to-long v5, v1

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2000

    cmp-long v1, v3, v5

    if-gtz v1, :cond_2

    .line 10
    iget-object v1, p1, Lfg/i;->a:Lfg/u;

    invoke-static {v1}, Lue/d;->b(Ljava/lang/Object;)V

    long-to-int v2, p2

    invoke-virtual {v1, v0, v2}, Lfg/u;->d(Lfg/u;I)V

    .line 11
    iget-wide v0, p1, Lfg/i;->b:J

    sub-long/2addr v0, p2

    .line 12
    iput-wide v0, p1, Lfg/i;->b:J

    .line 13
    iget-wide v0, p0, Lfg/i;->b:J

    add-long/2addr v0, p2

    .line 14
    iput-wide v0, p0, Lfg/i;->b:J

    goto/16 :goto_7

    .line 15
    :cond_2
    iget-object v0, p1, Lfg/i;->a:Lfg/u;

    invoke-static {v0}, Lue/d;->b(Ljava/lang/Object;)V

    long-to-int v1, p2

    if-lez v1, :cond_4

    .line 16
    iget v3, v0, Lfg/u;->c:I

    iget v4, v0, Lfg/u;->b:I

    sub-int/2addr v3, v4

    if-gt v1, v3, :cond_4

    const/16 v3, 0x400

    if-lt v1, v3, :cond_3

    .line 17
    invoke-virtual {v0}, Lfg/u;->c()Lfg/u;

    move-result-object v3

    goto :goto_3

    .line 18
    :cond_3
    invoke-static {}, Lfg/v;->b()Lfg/u;

    move-result-object v3

    .line 19
    iget v4, v0, Lfg/u;->b:I

    add-int v5, v4, v1

    .line 20
    iget-object v6, v0, Lfg/u;->a:[B

    iget-object v7, v3, Lfg/u;->a:[B

    invoke-static {v2, v6, v4, v7, v5}, Lje/i;->f0(I[BI[BI)V

    .line 21
    :goto_3
    iget v4, v3, Lfg/u;->b:I

    add-int/2addr v4, v1

    iput v4, v3, Lfg/u;->c:I

    .line 22
    iget v4, v0, Lfg/u;->b:I

    add-int/2addr v4, v1

    iput v4, v0, Lfg/u;->b:I

    .line 23
    iget-object v0, v0, Lfg/u;->g:Lfg/u;

    invoke-static {v0}, Lue/d;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lfg/u;->b(Lfg/u;)V

    .line 24
    iput-object v3, p1, Lfg/i;->a:Lfg/u;

    goto :goto_4

    .line 25
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "byteCount out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_5
    :goto_4
    iget-object v0, p1, Lfg/i;->a:Lfg/u;

    .line 27
    invoke-static {v0}, Lue/d;->b(Ljava/lang/Object;)V

    iget v1, v0, Lfg/u;->c:I

    iget v3, v0, Lfg/u;->b:I

    sub-int/2addr v1, v3

    int-to-long v3, v1

    .line 28
    invoke-virtual {v0}, Lfg/u;->a()Lfg/u;

    move-result-object v1

    iput-object v1, p1, Lfg/i;->a:Lfg/u;

    .line 29
    iget-object v1, p0, Lfg/i;->a:Lfg/u;

    if-nez v1, :cond_6

    .line 30
    iput-object v0, p0, Lfg/i;->a:Lfg/u;

    .line 31
    iput-object v0, v0, Lfg/u;->g:Lfg/u;

    .line 32
    iput-object v0, v0, Lfg/u;->f:Lfg/u;

    goto :goto_6

    .line 33
    :cond_6
    iget-object v1, v1, Lfg/u;->g:Lfg/u;

    .line 34
    invoke-static {v1}, Lue/d;->b(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lfg/u;->b(Lfg/u;)V

    .line 35
    iget-object v1, v0, Lfg/u;->g:Lfg/u;

    if-eq v1, v0, :cond_a

    .line 36
    invoke-static {v1}, Lue/d;->b(Ljava/lang/Object;)V

    iget-boolean v1, v1, Lfg/u;->e:Z

    if-nez v1, :cond_7

    goto :goto_6

    .line 37
    :cond_7
    iget v1, v0, Lfg/u;->c:I

    iget v5, v0, Lfg/u;->b:I

    sub-int/2addr v1, v5

    .line 38
    iget-object v5, v0, Lfg/u;->g:Lfg/u;

    invoke-static {v5}, Lue/d;->b(Ljava/lang/Object;)V

    iget v5, v5, Lfg/u;->c:I

    rsub-int v5, v5, 0x2000

    iget-object v6, v0, Lfg/u;->g:Lfg/u;

    invoke-static {v6}, Lue/d;->b(Ljava/lang/Object;)V

    iget-boolean v6, v6, Lfg/u;->d:Z

    if-eqz v6, :cond_8

    goto :goto_5

    :cond_8
    iget-object v2, v0, Lfg/u;->g:Lfg/u;

    invoke-static {v2}, Lue/d;->b(Ljava/lang/Object;)V

    iget v2, v2, Lfg/u;->b:I

    :goto_5
    add-int/2addr v5, v2

    if-le v1, v5, :cond_9

    goto :goto_6

    .line 39
    :cond_9
    iget-object v2, v0, Lfg/u;->g:Lfg/u;

    invoke-static {v2}, Lue/d;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Lfg/u;->d(Lfg/u;I)V

    .line 40
    invoke-virtual {v0}, Lfg/u;->a()Lfg/u;

    .line 41
    invoke-static {v0}, Lfg/v;->a(Lfg/u;)V

    .line 42
    :goto_6
    iget-wide v0, p1, Lfg/i;->b:J

    sub-long/2addr v0, v3

    .line 43
    iput-wide v0, p1, Lfg/i;->b:J

    .line 44
    iget-wide v0, p0, Lfg/i;->b:J

    add-long/2addr v0, v3

    .line 45
    iput-wide v0, p0, Lfg/i;->b:J

    sub-long/2addr p2, v3

    goto/16 :goto_0

    .line 46
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "cannot compact"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_7
    return-void

    .line 47
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == this"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8
.end method

.method public final writeAll(Lfg/z;)J
    .locals 7

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    :goto_0
    const-wide/16 v2, 0x2000

    .line 9
    .line 10
    invoke-interface {p1, p0, v2, v3}, Lfg/z;->read(Lfg/i;J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    const-wide/16 v4, -0x1

    .line 15
    .line 16
    cmp-long v6, v2, v4

    .line 17
    .line 18
    if-eqz v6, :cond_0

    .line 19
    .line 20
    add-long/2addr v0, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-wide v0
.end method

.method public final bridge synthetic writeByte(I)Lfg/j;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lfg/i;->W(I)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final bridge synthetic writeDecimalLong(J)Lfg/j;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lfg/i;->X(J)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final bridge synthetic writeHexadecimalUnsignedLong(J)Lfg/j;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lfg/i;->Y(J)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final bridge synthetic writeInt(I)Lfg/j;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lfg/i;->Z(I)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final bridge synthetic writeShort(I)Lfg/j;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lfg/i;->b0(I)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final bridge synthetic writeUtf8(Ljava/lang/String;)Lfg/j;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lfg/i;->e0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final z()Ljava/lang/String;
    .locals 2

    .line 1
    const-wide v0, 0x7fffffffffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Lfg/i;->l(J)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method
