.class public final Lmb/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:[B

.field public b:B

.field public c:I

.field public d:I

.field public e:Lmb/m;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lmb/h;->c:I

    .line 13
    iput-byte v0, p0, Lmb/h;->b:B

    .line 14
    new-array p1, p1, [B

    iput-object p1, p0, Lmb/h;->a:[B

    return-void
.end method

.method public constructor <init>(Lmb/h;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget v0, p1, Lmb/h;->c:I

    iput v0, p0, Lmb/h;->c:I

    .line 3
    iget-byte v1, p1, Lmb/h;->b:B

    iput-byte v1, p0, Lmb/h;->b:B

    .line 4
    iget v2, p1, Lmb/h;->c:I

    add-int/lit8 v2, v2, 0x10

    if-nez v1, :cond_0

    :goto_0
    new-array v2, v2, [B

    goto :goto_1

    :cond_0
    shl-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_1
    iput-object v2, p0, Lmb/h;->a:[B

    .line 5
    iget v3, p1, Lmb/h;->d:I

    iput v3, p0, Lmb/h;->d:I

    .line 6
    iget-object v3, p1, Lmb/h;->e:Lmb/m;

    iput-object v3, p0, Lmb/h;->e:Lmb/m;

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 7
    iget-object p1, p1, Lmb/h;->a:[B

    .line 8
    invoke-static {p1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 9
    :cond_1
    iget-object p1, p1, Lmb/h;->a:[B

    shl-int/lit8 v0, v0, 0x1

    .line 10
    invoke-static {p1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lmb/h;->c:I

    .line 17
    iput-byte p1, p0, Lmb/h;->b:B

    const/16 p1, 0x20

    .line 18
    new-array p1, p1, [B

    iput-object p1, p0, Lmb/h;->a:[B

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuilder;)V
    .locals 4

    .line 1
    iget-byte v0, p0, Lmb/h;->b:B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lmb/h;->a:[B

    .line 7
    .line 8
    iget v2, p0, Lmb/h;->c:I

    .line 9
    .line 10
    :goto_0
    if-ge v1, v2, :cond_1

    .line 11
    .line 12
    aget-byte v3, v0, v1

    .line 13
    .line 14
    and-int/lit16 v3, v3, 0xff

    .line 15
    .line 16
    int-to-char v3, v3

    .line 17
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lmb/h;->a:[B

    .line 24
    .line 25
    iget v2, p0, Lmb/h;->c:I

    .line 26
    .line 27
    :goto_1
    if-ge v1, v2, :cond_1

    .line 28
    .line 29
    invoke-static {v1, v0}, Lq4/a;->k(I[B)C

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    return-void
.end method

.method public final b(I)V
    .locals 3

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Lmb/h;->c:I

    .line 4
    .line 5
    if-gt p1, v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    .line 9
    .line 10
    const-string v1, "index = "

    .line 11
    .line 12
    const-string v2, ", length = "

    .line 13
    .line 14
    invoke-static {v1, p1, v2}, Lg/b;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget v1, p0, Lmb/h;->c:I

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0
.end method

.method public final c(II)V
    .locals 4

    .line 1
    if-ltz p1, :cond_7

    .line 2
    .line 3
    iget v0, p0, Lmb/h;->c:I

    .line 4
    .line 5
    if-le p2, v0, :cond_0

    .line 6
    .line 7
    move p2, v0

    .line 8
    :cond_0
    if-gt p1, p2, :cond_6

    .line 9
    .line 10
    sub-int v0, p2, p1

    .line 11
    .line 12
    if-lez v0, :cond_5

    .line 13
    .line 14
    move v1, p1

    .line 15
    :goto_0
    if-ge v1, p2, :cond_3

    .line 16
    .line 17
    iget-byte v2, p0, Lmb/h;->b:B

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    iget-object v2, p0, Lmb/h;->a:[B

    .line 22
    .line 23
    aget-byte v2, v2, v1

    .line 24
    .line 25
    and-int/lit16 v2, v2, 0xff

    .line 26
    .line 27
    int-to-char v2, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    iget-object v2, p0, Lmb/h;->a:[B

    .line 30
    .line 31
    invoke-static {v1, v2}, Lq4/a;->k(I[B)C

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    :goto_1
    invoke-static {v2}, Ls1/g;->m(C)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    iget v2, p0, Lmb/h;->d:I

    .line 42
    .line 43
    add-int/lit8 v2, v2, -0x1

    .line 44
    .line 45
    iput v2, p0, Lmb/h;->d:I

    .line 46
    .line 47
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    iget-object v1, p0, Lmb/h;->a:[B

    .line 51
    .line 52
    add-int v2, p1, v0

    .line 53
    .line 54
    iget v3, p0, Lmb/h;->c:I

    .line 55
    .line 56
    sub-int/2addr v3, p2

    .line 57
    iget-byte p2, p0, Lmb/h;->b:B

    .line 58
    .line 59
    if-nez p2, :cond_4

    .line 60
    .line 61
    invoke-static {v1, v2, v1, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_4
    shl-int/lit8 p2, v2, 0x1

    .line 66
    .line 67
    shl-int/lit8 p1, p1, 0x1

    .line 68
    .line 69
    shl-int/lit8 v2, v3, 0x1

    .line 70
    .line 71
    invoke-static {v1, p2, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    .line 73
    .line 74
    :goto_2
    iget p1, p0, Lmb/h;->c:I

    .line 75
    .line 76
    sub-int/2addr p1, v0

    .line 77
    iput p1, p0, Lmb/h;->c:I

    .line 78
    .line 79
    :cond_5
    return-void

    .line 80
    :cond_6
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    .line 81
    .line 82
    invoke-direct {p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    .line 83
    .line 84
    .line 85
    throw p1

    .line 86
    :cond_7
    new-instance p2, Ljava/lang/StringIndexOutOfBoundsException;

    .line 87
    .line 88
    invoke-direct {p2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    .line 89
    .line 90
    .line 91
    goto :goto_4

    .line 92
    :goto_3
    throw p2

    .line 93
    :goto_4
    goto :goto_3
.end method

.method public final charAt(I)C
    .locals 2

    .line 1
    iget v0, p0, Lmb/h;->c:I

    .line 2
    .line 3
    if-lt p1, v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lmb/h;->d()Lmb/m;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Lmb/m;->b:I

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lmb/h;->d()Lmb/m;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lmb/m;->a:Ljava/lang/String;

    .line 18
    .line 19
    iget v1, p0, Lmb/h;->c:I

    .line 20
    .line 21
    sub-int/2addr p1, v1

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/16 p1, 0xa

    .line 28
    .line 29
    :goto_0
    return p1

    .line 30
    :cond_1
    iget-byte v0, p0, Lmb/h;->b:B

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lmb/h;->a:[B

    .line 35
    .line 36
    aget-byte p1, v0, p1

    .line 37
    .line 38
    and-int/lit16 p1, p1, 0xff

    .line 39
    .line 40
    int-to-char p1, p1

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    iget-object v0, p0, Lmb/h;->a:[B

    .line 43
    .line 44
    invoke-static {p1, v0}, Lq4/a;->k(I[B)C

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    :goto_1
    return p1
.end method

.method public final d()Lmb/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lmb/h;->e:Lmb/m;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lmb/m;->c:Lmb/m;

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public final e(IIILjava/lang/CharSequence;)V
    .locals 11

    .line 1
    if-nez p4, :cond_0

    .line 2
    .line 3
    const-string p4, "null"

    .line 4
    .line 5
    :cond_0
    if-ltz p1, :cond_11

    .line 6
    .line 7
    iget v0, p0, Lmb/h;->c:I

    .line 8
    .line 9
    if-gt p1, v0, :cond_11

    .line 10
    .line 11
    if-ltz p2, :cond_10

    .line 12
    .line 13
    if-ltz p3, :cond_10

    .line 14
    .line 15
    if-gt p2, p3, :cond_10

    .line 16
    .line 17
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-gt p3, v0, :cond_10

    .line 22
    .line 23
    sub-int v0, p3, p2

    .line 24
    .line 25
    iget-byte v1, p0, Lmb/h;->b:B

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x1

    .line 29
    if-nez v1, :cond_5

    .line 30
    .line 31
    move v1, p2

    .line 32
    :goto_0
    if-ge v1, p3, :cond_5

    .line 33
    .line 34
    invoke-interface {p4, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const/16 v5, 0xff

    .line 39
    .line 40
    if-gt v4, v5, :cond_1

    .line 41
    .line 42
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget v1, p0, Lmb/h;->c:I

    .line 46
    .line 47
    add-int v4, v1, v0

    .line 48
    .line 49
    iget-byte v6, p0, Lmb/h;->b:B

    .line 50
    .line 51
    if-nez v6, :cond_5

    .line 52
    .line 53
    if-nez v6, :cond_2

    .line 54
    .line 55
    iget-object v6, p0, Lmb/h;->a:[B

    .line 56
    .line 57
    array-length v6, v6

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    iget-object v6, p0, Lmb/h;->a:[B

    .line 60
    .line 61
    array-length v6, v6

    .line 62
    shr-int/2addr v6, v3

    .line 63
    :goto_1
    mul-int/lit8 v6, v6, 0x2

    .line 64
    .line 65
    if-ge v6, v4, :cond_3

    .line 66
    .line 67
    add-int/lit8 v6, v4, 0x2

    .line 68
    .line 69
    :cond_3
    iget-object v4, p0, Lmb/h;->a:[B

    .line 70
    .line 71
    shl-int/2addr v6, v3

    .line 72
    new-array v6, v6, [B

    .line 73
    .line 74
    const/4 v7, 0x0

    .line 75
    :goto_2
    if-ge v7, v1, :cond_4

    .line 76
    .line 77
    aget-byte v8, v4, v7

    .line 78
    .line 79
    and-int/2addr v8, v5

    .line 80
    int-to-char v8, v8

    .line 81
    shl-int/lit8 v9, v7, 0x1

    .line 82
    .line 83
    ushr-int/lit8 v10, v8, 0x8

    .line 84
    .line 85
    int-to-byte v10, v10

    .line 86
    aput-byte v10, v6, v9

    .line 87
    .line 88
    add-int/2addr v9, v3

    .line 89
    int-to-byte v8, v8

    .line 90
    aput-byte v8, v6, v9

    .line 91
    .line 92
    add-int/lit8 v7, v7, 0x1

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_4
    iput-object v6, p0, Lmb/h;->a:[B

    .line 96
    .line 97
    iput-byte v3, p0, Lmb/h;->b:B

    .line 98
    .line 99
    :cond_5
    iget v1, p0, Lmb/h;->c:I

    .line 100
    .line 101
    add-int v4, v1, v0

    .line 102
    .line 103
    iget-byte v5, p0, Lmb/h;->b:B

    .line 104
    .line 105
    iget-object v6, p0, Lmb/h;->a:[B

    .line 106
    .line 107
    if-nez v5, :cond_6

    .line 108
    .line 109
    array-length v6, v6

    .line 110
    goto :goto_3

    .line 111
    :cond_6
    array-length v6, v6

    .line 112
    shr-int/2addr v6, v3

    .line 113
    :goto_3
    if-ge v6, v4, :cond_b

    .line 114
    .line 115
    iget-object v6, p0, Lmb/h;->a:[B

    .line 116
    .line 117
    if-nez v5, :cond_7

    .line 118
    .line 119
    array-length v6, v6

    .line 120
    goto :goto_4

    .line 121
    :cond_7
    array-length v6, v6

    .line 122
    shr-int/2addr v6, v3

    .line 123
    :goto_4
    mul-int/lit8 v6, v6, 0x2

    .line 124
    .line 125
    if-ge v6, v4, :cond_8

    .line 126
    .line 127
    add-int/lit8 v6, v4, 0x2

    .line 128
    .line 129
    :cond_8
    if-nez v5, :cond_9

    .line 130
    .line 131
    new-array v4, v6, [B

    .line 132
    .line 133
    goto :goto_5

    .line 134
    :cond_9
    shl-int/lit8 v4, v6, 0x1

    .line 135
    .line 136
    new-array v4, v4, [B

    .line 137
    .line 138
    :goto_5
    if-nez v5, :cond_a

    .line 139
    .line 140
    iget-object v5, p0, Lmb/h;->a:[B

    .line 141
    .line 142
    invoke-static {v5, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    .line 144
    .line 145
    goto :goto_6

    .line 146
    :cond_a
    iget-object v5, p0, Lmb/h;->a:[B

    .line 147
    .line 148
    shl-int/2addr v1, v3

    .line 149
    invoke-static {v5, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    .line 151
    .line 152
    :goto_6
    iput-object v4, p0, Lmb/h;->a:[B

    .line 153
    .line 154
    :cond_b
    iget-object v1, p0, Lmb/h;->a:[B

    .line 155
    .line 156
    add-int v2, p1, v0

    .line 157
    .line 158
    iget v4, p0, Lmb/h;->c:I

    .line 159
    .line 160
    sub-int/2addr v4, p1

    .line 161
    iget-byte v5, p0, Lmb/h;->b:B

    .line 162
    .line 163
    if-nez v5, :cond_c

    .line 164
    .line 165
    invoke-static {v1, p1, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    .line 167
    .line 168
    goto :goto_7

    .line 169
    :cond_c
    shl-int/lit8 v5, p1, 0x1

    .line 170
    .line 171
    shl-int/2addr v2, v3

    .line 172
    shl-int/2addr v4, v3

    .line 173
    invoke-static {v1, v5, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    .line 175
    .line 176
    :goto_7
    if-ge p2, p3, :cond_f

    .line 177
    .line 178
    invoke-interface {p4, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    add-int/lit8 v2, p1, 0x1

    .line 183
    .line 184
    iget-byte v4, p0, Lmb/h;->b:B

    .line 185
    .line 186
    if-nez v4, :cond_d

    .line 187
    .line 188
    iget-object v4, p0, Lmb/h;->a:[B

    .line 189
    .line 190
    int-to-byte v5, v1

    .line 191
    aput-byte v5, v4, p1

    .line 192
    .line 193
    goto :goto_8

    .line 194
    :cond_d
    iget-object v4, p0, Lmb/h;->a:[B

    .line 195
    .line 196
    shl-int/lit8 p1, p1, 0x1

    .line 197
    .line 198
    ushr-int/lit8 v5, v1, 0x8

    .line 199
    .line 200
    int-to-byte v5, v5

    .line 201
    aput-byte v5, v4, p1

    .line 202
    .line 203
    add-int/2addr p1, v3

    .line 204
    int-to-byte v5, v1

    .line 205
    aput-byte v5, v4, p1

    .line 206
    .line 207
    :goto_8
    invoke-static {v1}, Ls1/g;->m(C)Z

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    if-eqz p1, :cond_e

    .line 212
    .line 213
    iget p1, p0, Lmb/h;->d:I

    .line 214
    .line 215
    add-int/2addr p1, v3

    .line 216
    iput p1, p0, Lmb/h;->d:I

    .line 217
    .line 218
    :cond_e
    add-int/lit8 p2, p2, 0x1

    .line 219
    .line 220
    move p1, v2

    .line 221
    goto :goto_7

    .line 222
    :cond_f
    iget p1, p0, Lmb/h;->c:I

    .line 223
    .line 224
    add-int/2addr p1, v0

    .line 225
    iput p1, p0, Lmb/h;->c:I

    .line 226
    .line 227
    return-void

    .line 228
    :cond_10
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 229
    .line 230
    const-string v0, "start "

    .line 231
    .line 232
    const-string v1, ", end "

    .line 233
    .line 234
    const-string v2, ", s.length() "

    .line 235
    .line 236
    invoke-static {p2, p3, v0, v1, v2}, Lta/q;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    move-result-object p2

    .line 240
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    .line 241
    .line 242
    .line 243
    move-result p3

    .line 244
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p2

    .line 251
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    throw p1

    .line 255
    :cond_11
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 256
    .line 257
    const-string p3, "dstOffset "

    .line 258
    .line 259
    invoke-static {p1, p3}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    goto :goto_a

    .line 267
    :goto_9
    throw p2

    .line 268
    :goto_a
    goto :goto_9
.end method

.method public final f(II)Lmb/h;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lmb/h;->b(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2}, Lmb/h;->b(I)V

    .line 5
    .line 6
    .line 7
    if-lt p2, p1, :cond_3

    .line 8
    .line 9
    new-instance v0, Lmb/h;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1}, Lmb/h;-><init>(Z)V

    .line 13
    .line 14
    .line 15
    iget-byte v2, p0, Lmb/h;->b:B

    .line 16
    .line 17
    iput-byte v2, v0, Lmb/h;->b:B

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    sub-int v2, p2, p1

    .line 22
    .line 23
    add-int/lit8 v3, v2, 0x10

    .line 24
    .line 25
    new-array v3, v3, [B

    .line 26
    .line 27
    iput-object v3, v0, Lmb/h;->a:[B

    .line 28
    .line 29
    iget-object v4, p0, Lmb/h;->a:[B

    .line 30
    .line 31
    invoke-static {v4, p1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    sub-int v2, p2, p1

    .line 36
    .line 37
    add-int/lit8 v3, v2, 0x10

    .line 38
    .line 39
    shl-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    new-array v3, v3, [B

    .line 42
    .line 43
    iput-object v3, v0, Lmb/h;->a:[B

    .line 44
    .line 45
    iget-object v4, p0, Lmb/h;->a:[B

    .line 46
    .line 47
    shl-int/lit8 v5, p1, 0x1

    .line 48
    .line 49
    shl-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    invoke-static {v4, v5, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    .line 53
    .line 54
    :goto_0
    sub-int/2addr p2, p1

    .line 55
    iput p2, v0, Lmb/h;->c:I

    .line 56
    .line 57
    iget p1, p0, Lmb/h;->d:I

    .line 58
    .line 59
    if-lez p1, :cond_2

    .line 60
    .line 61
    :goto_1
    iget p1, v0, Lmb/h;->c:I

    .line 62
    .line 63
    if-ge v1, p1, :cond_2

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lmb/h;->charAt(I)C

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-static {p1}, Ls1/g;->m(C)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_1

    .line 74
    .line 75
    iget p1, v0, Lmb/h;->d:I

    .line 76
    .line 77
    add-int/lit8 p1, p1, 0x1

    .line 78
    .line 79
    iput p1, v0, Lmb/h;->d:I

    .line 80
    .line 81
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    return-object v0

    .line 85
    :cond_3
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    .line 86
    .line 87
    const-string p2, "start is greater than end"

    .line 88
    .line 89
    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    goto :goto_3

    .line 93
    :goto_2
    throw p1

    .line 94
    :goto_3
    goto :goto_2
.end method

.method public final getChars(II[CI)V
    .locals 3

    .line 1
    if-ltz p1, :cond_4

    .line 2
    .line 3
    if-ltz p2, :cond_3

    .line 4
    .line 5
    iget v0, p0, Lmb/h;->c:I

    .line 6
    .line 7
    if-gt p2, v0, :cond_3

    .line 8
    .line 9
    if-gt p1, p2, :cond_2

    .line 10
    .line 11
    iget-byte v0, p0, Lmb/h;->b:B

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lmb/h;->a:[B

    .line 16
    .line 17
    :goto_0
    if-ge p1, p2, :cond_1

    .line 18
    .line 19
    add-int/lit8 v1, p4, 0x1

    .line 20
    .line 21
    aget-byte v2, v0, p1

    .line 22
    .line 23
    and-int/lit16 v2, v2, 0xff

    .line 24
    .line 25
    int-to-char v2, v2

    .line 26
    aput-char v2, p3, p4

    .line 27
    .line 28
    add-int/lit8 p1, p1, 0x1

    .line 29
    .line 30
    move p4, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lmb/h;->a:[B

    .line 33
    .line 34
    :goto_1
    if-ge p1, p2, :cond_1

    .line 35
    .line 36
    add-int/lit8 v1, p4, 0x1

    .line 37
    .line 38
    invoke-static {p1, v0}, Lq4/a;->k(I[B)C

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    aput-char v2, p3, p4

    .line 43
    .line 44
    add-int/lit8 p1, p1, 0x1

    .line 45
    .line 46
    move p4, v1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    return-void

    .line 49
    :cond_2
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    .line 50
    .line 51
    const-string p2, "srcBegin > srcEnd"

    .line 52
    .line 53
    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :cond_3
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    .line 58
    .line 59
    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_4
    new-instance p2, Ljava/lang/StringIndexOutOfBoundsException;

    .line 64
    .line 65
    invoke-direct {p2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_3

    .line 69
    :goto_2
    throw p2

    .line 70
    :goto_3
    goto :goto_2
.end method

.method public final length()I
    .locals 1

    .line 1
    iget v0, p0, Lmb/h;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final bridge synthetic subSequence(II)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lmb/h;->f(II)Lmb/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget-byte v0, p0, Lmb/h;->b:B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lmb/h;->a:[B

    .line 7
    .line 8
    iget v2, p0, Lmb/h;->c:I

    .line 9
    .line 10
    new-instance v3, Ljava/lang/String;

    .line 11
    .line 12
    sget-object v4, Lj$/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 13
    .line 14
    invoke-direct {v3, v0, v1, v2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 15
    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object v0, p0, Lmb/h;->a:[B

    .line 19
    .line 20
    iget v2, p0, Lmb/h;->c:I

    .line 21
    .line 22
    new-array v3, v2, [C

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    :goto_0
    if-ge v1, v2, :cond_1

    .line 26
    .line 27
    add-int/lit8 v5, v4, 0x1

    .line 28
    .line 29
    invoke-static {v1, v0}, Lq4/a;->k(I[B)C

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    aput-char v6, v3, v4

    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    move v4, v5

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Ljava/lang/String;

    .line 40
    .line 41
    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    .line 42
    .line 43
    .line 44
    move-object v3, v0

    .line 45
    :goto_1
    return-object v3
.end method
