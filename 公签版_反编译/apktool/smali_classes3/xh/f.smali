.class public final Lxh/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Lsh/h;

.field public final b:B

.field public final c:Lsh/b;

.field public final d:Lsh/g;

.field public final e:I

.field public final f:I

.field public final g:Lsh/p;

.field public final h:Lsh/p;

.field public final i:Lsh/p;


# direct methods
.method public constructor <init>(Lsh/h;ILsh/b;Lsh/g;IILsh/p;Lsh/p;Lsh/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lxh/f;->a:Lsh/h;

    int-to-byte p1, p2

    .line 3
    iput-byte p1, p0, Lxh/f;->b:B

    .line 4
    iput-object p3, p0, Lxh/f;->c:Lsh/b;

    .line 5
    iput-object p4, p0, Lxh/f;->d:Lsh/g;

    .line 6
    iput p5, p0, Lxh/f;->e:I

    .line 7
    iput p6, p0, Lxh/f;->f:I

    .line 8
    iput-object p7, p0, Lxh/f;->g:Lsh/p;

    .line 9
    iput-object p8, p0, Lxh/f;->h:Lsh/p;

    .line 10
    iput-object p9, p0, Lxh/f;->i:Lsh/p;

    return-void
.end method

.method public static a(Ljava/io/DataInput;)Lxh/f;
    .locals 14

    .line 1
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    ushr-int/lit8 v1, v0, 0x1c

    .line 6
    .line 7
    invoke-static {v1}, Lsh/h;->q(I)Lsh/h;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/high16 v1, 0xfc00000

    .line 12
    .line 13
    and-int/2addr v1, v0

    .line 14
    ushr-int/lit8 v1, v1, 0x16

    .line 15
    .line 16
    add-int/lit8 v4, v1, -0x20

    .line 17
    .line 18
    const/high16 v1, 0x380000

    .line 19
    .line 20
    and-int/2addr v1, v0

    .line 21
    ushr-int/lit8 v1, v1, 0x13

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    :goto_0
    move-object v5, v1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-static {v1}, Lsh/b;->n(I)Lsh/b;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    goto :goto_0

    .line 33
    :goto_1
    const v1, 0x7c000

    .line 34
    .line 35
    .line 36
    and-int/2addr v1, v0

    .line 37
    ushr-int/lit8 v1, v1, 0xe

    .line 38
    .line 39
    const/4 v2, 0x3

    .line 40
    invoke-static {v2}, Ld0/f;->d(I)[I

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    and-int/lit16 v7, v0, 0x3000

    .line 45
    .line 46
    ushr-int/lit8 v7, v7, 0xc

    .line 47
    .line 48
    aget v8, v6, v7

    .line 49
    .line 50
    and-int/lit16 v6, v0, 0xff0

    .line 51
    .line 52
    ushr-int/lit8 v6, v6, 0x4

    .line 53
    .line 54
    and-int/lit8 v7, v0, 0xc

    .line 55
    .line 56
    ushr-int/lit8 v7, v7, 0x2

    .line 57
    .line 58
    and-int/2addr v0, v2

    .line 59
    const/16 v9, 0x1f

    .line 60
    .line 61
    if-ne v1, v9, :cond_1

    .line 62
    .line 63
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    goto :goto_2

    .line 68
    :cond_1
    mul-int/lit16 v1, v1, 0xe10

    .line 69
    .line 70
    :goto_2
    const/16 v10, 0xff

    .line 71
    .line 72
    if-ne v6, v10, :cond_2

    .line 73
    .line 74
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    :goto_3
    invoke-static {v6}, Lsh/p;->r(I)Lsh/p;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    move-object v10, v6

    .line 83
    goto :goto_4

    .line 84
    :cond_2
    add-int/lit8 v6, v6, -0x80

    .line 85
    .line 86
    mul-int/lit16 v6, v6, 0x384

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :goto_4
    iget v6, v10, Lsh/p;->a:I

    .line 90
    .line 91
    if-ne v7, v2, :cond_3

    .line 92
    .line 93
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    :goto_5
    invoke-static {v7}, Lsh/p;->r(I)Lsh/p;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    move-object v11, v7

    .line 102
    goto :goto_6

    .line 103
    :cond_3
    mul-int/lit16 v7, v7, 0x708

    .line 104
    .line 105
    add-int/2addr v7, v6

    .line 106
    goto :goto_5

    .line 107
    :goto_6
    if-ne v0, v2, :cond_4

    .line 108
    .line 109
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    invoke-static {p0}, Lsh/p;->r(I)Lsh/p;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    goto :goto_7

    .line 118
    :cond_4
    mul-int/lit16 v0, v0, 0x708

    .line 119
    .line 120
    add-int/2addr v0, v6

    .line 121
    invoke-static {v0}, Lsh/p;->r(I)Lsh/p;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    :goto_7
    const/16 v0, -0x1c

    .line 126
    .line 127
    if-lt v4, v0, :cond_6

    .line 128
    .line 129
    if-gt v4, v9, :cond_6

    .line 130
    .line 131
    if-eqz v4, :cond_6

    .line 132
    .line 133
    const v0, 0x15180

    .line 134
    .line 135
    .line 136
    rem-int v2, v1, v0

    .line 137
    .line 138
    add-int/2addr v2, v0

    .line 139
    rem-int/2addr v2, v0

    .line 140
    int-to-long v6, v2

    .line 141
    sget-object v2, Lsh/g;->e:Lsh/g;

    .line 142
    .line 143
    sget-object v2, Lwh/a;->j:Lwh/a;

    .line 144
    .line 145
    invoke-virtual {v2, v6, v7}, Lwh/a;->h(J)V

    .line 146
    .line 147
    .line 148
    const-wide/16 v12, 0xe10

    .line 149
    .line 150
    div-long v12, v6, v12

    .line 151
    .line 152
    long-to-int v2, v12

    .line 153
    mul-int/lit16 v9, v2, 0xe10

    .line 154
    .line 155
    int-to-long v12, v9

    .line 156
    sub-long/2addr v6, v12

    .line 157
    const-wide/16 v12, 0x3c

    .line 158
    .line 159
    div-long v12, v6, v12

    .line 160
    .line 161
    long-to-int v9, v12

    .line 162
    mul-int/lit8 v12, v9, 0x3c

    .line 163
    .line 164
    int-to-long v12, v12

    .line 165
    sub-long/2addr v6, v12

    .line 166
    long-to-int v7, v6

    .line 167
    const/4 v6, 0x0

    .line 168
    invoke-static {v2, v9, v7, v6}, Lsh/g;->n(IIII)Lsh/g;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    if-ltz v1, :cond_5

    .line 173
    .line 174
    div-int/2addr v1, v0

    .line 175
    :goto_8
    move v7, v1

    .line 176
    goto :goto_9

    .line 177
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 178
    .line 179
    div-int/2addr v1, v0

    .line 180
    add-int/lit8 v1, v1, -0x1

    .line 181
    .line 182
    goto :goto_8

    .line 183
    :goto_9
    new-instance v0, Lxh/f;

    .line 184
    .line 185
    move-object v2, v0

    .line 186
    move-object v9, v10

    .line 187
    move-object v10, v11

    .line 188
    move-object v11, p0

    .line 189
    invoke-direct/range {v2 .. v11}, Lxh/f;-><init>(Lsh/h;ILsh/b;Lsh/g;IILsh/p;Lsh/p;Lsh/p;)V

    .line 190
    .line 191
    .line 192
    return-object v0

    .line 193
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 194
    .line 195
    const-string v0, "Day of month indicator must be between -28 and 31 inclusive excluding zero"

    .line 196
    .line 197
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    goto :goto_b

    .line 201
    :goto_a
    throw p0

    .line 202
    :goto_b
    goto :goto_a
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lxh/a;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1, p0}, Lxh/a;-><init>(BLjava/io/Serializable;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lxh/f;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    check-cast p1, Lxh/f;

    .line 11
    .line 12
    iget-object v1, p1, Lxh/f;->a:Lsh/h;

    .line 13
    .line 14
    iget-object v3, p0, Lxh/f;->a:Lsh/h;

    .line 15
    .line 16
    if-ne v3, v1, :cond_1

    .line 17
    .line 18
    iget-byte v1, p0, Lxh/f;->b:B

    .line 19
    .line 20
    iget-byte v3, p1, Lxh/f;->b:B

    .line 21
    .line 22
    if-ne v1, v3, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lxh/f;->c:Lsh/b;

    .line 25
    .line 26
    iget-object v3, p1, Lxh/f;->c:Lsh/b;

    .line 27
    .line 28
    if-ne v1, v3, :cond_1

    .line 29
    .line 30
    iget v1, p0, Lxh/f;->f:I

    .line 31
    .line 32
    iget v3, p1, Lxh/f;->f:I

    .line 33
    .line 34
    if-ne v1, v3, :cond_1

    .line 35
    .line 36
    iget v1, p0, Lxh/f;->e:I

    .line 37
    .line 38
    iget v3, p1, Lxh/f;->e:I

    .line 39
    .line 40
    if-ne v1, v3, :cond_1

    .line 41
    .line 42
    iget-object v1, p0, Lxh/f;->d:Lsh/g;

    .line 43
    .line 44
    iget-object v3, p1, Lxh/f;->d:Lsh/g;

    .line 45
    .line 46
    invoke-virtual {v1, v3}, Lsh/g;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    iget-object v1, p0, Lxh/f;->g:Lsh/p;

    .line 53
    .line 54
    iget-object v3, p1, Lxh/f;->g:Lsh/p;

    .line 55
    .line 56
    invoke-virtual {v1, v3}, Lsh/p;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    iget-object v1, p0, Lxh/f;->h:Lsh/p;

    .line 63
    .line 64
    iget-object v3, p1, Lxh/f;->h:Lsh/p;

    .line 65
    .line 66
    invoke-virtual {v1, v3}, Lsh/p;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    iget-object v1, p0, Lxh/f;->i:Lsh/p;

    .line 73
    .line 74
    iget-object p1, p1, Lxh/f;->i:Lsh/p;

    .line 75
    .line 76
    invoke-virtual {v1, p1}, Lsh/p;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    const/4 v0, 0x0

    .line 84
    :goto_0
    return v0

    .line 85
    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lxh/f;->d:Lsh/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lsh/g;->x()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lxh/f;->e:I

    .line 8
    .line 9
    add-int/2addr v0, v1

    .line 10
    shl-int/lit8 v0, v0, 0xf

    .line 11
    .line 12
    iget-object v1, p0, Lxh/f;->a:Lsh/h;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    shl-int/lit8 v1, v1, 0xb

    .line 19
    .line 20
    add-int/2addr v0, v1

    .line 21
    iget-byte v1, p0, Lxh/f;->b:B

    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x20

    .line 24
    .line 25
    shl-int/lit8 v1, v1, 0x5

    .line 26
    .line 27
    add-int/2addr v0, v1

    .line 28
    iget-object v1, p0, Lxh/f;->c:Lsh/b;

    .line 29
    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    const/4 v1, 0x7

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    :goto_0
    shl-int/lit8 v1, v1, 0x2

    .line 39
    .line 40
    add-int/2addr v0, v1

    .line 41
    iget v1, p0, Lxh/f;->f:I

    .line 42
    .line 43
    invoke-static {v1}, Ld0/f;->c(I)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    add-int/2addr v1, v0

    .line 48
    iget-object v0, p0, Lxh/f;->g:Lsh/p;

    .line 49
    .line 50
    iget v0, v0, Lsh/p;->a:I

    .line 51
    .line 52
    xor-int/2addr v0, v1

    .line 53
    iget-object v1, p0, Lxh/f;->h:Lsh/p;

    .line 54
    .line 55
    iget v1, v1, Lsh/p;->a:I

    .line 56
    .line 57
    xor-int/2addr v0, v1

    .line 58
    iget-object v1, p0, Lxh/f;->i:Lsh/p;

    .line 59
    .line 60
    iget v1, v1, Lsh/p;->a:I

    .line 61
    .line 62
    xor-int/2addr v0, v1

    .line 63
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TransitionRule["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lxh/f;->h:Lsh/p;

    .line 9
    .line 10
    iget-object v2, p0, Lxh/f;->i:Lsh/p;

    .line 11
    .line 12
    iget v3, v2, Lsh/p;->a:I

    .line 13
    .line 14
    iget v4, v1, Lsh/p;->a:I

    .line 15
    .line 16
    sub-int/2addr v3, v4

    .line 17
    if-lez v3, :cond_0

    .line 18
    .line 19
    const-string v3, "Gap "

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string v3, "Overlap "

    .line 23
    .line 24
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, " to "

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, ", "

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const/16 v1, 0x20

    .line 44
    .line 45
    iget-object v2, p0, Lxh/f;->a:Lsh/h;

    .line 46
    .line 47
    iget-byte v3, p0, Lxh/f;->b:B

    .line 48
    .line 49
    iget-object v4, p0, Lxh/f;->c:Lsh/b;

    .line 50
    .line 51
    if-eqz v4, :cond_3

    .line 52
    .line 53
    const/4 v5, -0x1

    .line 54
    if-ne v3, v5, :cond_1

    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, " on or before last day of "

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    if-gez v3, :cond_2

    .line 77
    .line 78
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v1, " on or before last day minus "

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    neg-int v1, v3

    .line 91
    add-int/lit8 v1, v1, -0x1

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, " of "

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v4, " on or after "

    .line 117
    .line 118
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    :goto_1
    const-string v1, " at "

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    iget-object v1, p0, Lxh/f;->d:Lsh/g;

    .line 154
    .line 155
    iget v2, p0, Lxh/f;->e:I

    .line 156
    .line 157
    if-nez v2, :cond_4

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_4
    invoke-virtual {v1}, Lsh/g;->x()I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    const/16 v3, 0x3c

    .line 168
    .line 169
    div-int/2addr v1, v3

    .line 170
    mul-int/lit16 v2, v2, 0x5a0

    .line 171
    .line 172
    add-int/2addr v2, v1

    .line 173
    int-to-long v1, v2

    .line 174
    const-wide/16 v4, 0x3c

    .line 175
    .line 176
    invoke-static {v1, v2, v4, v5}, Lif/a;->C(JJ)J

    .line 177
    .line 178
    .line 179
    move-result-wide v4

    .line 180
    const/4 v6, 0x0

    .line 181
    const-wide/16 v7, 0xa

    .line 182
    .line 183
    cmp-long v9, v4, v7

    .line 184
    .line 185
    if-gez v9, :cond_5

    .line 186
    .line 187
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    :cond_5
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const/16 v4, 0x3a

    .line 194
    .line 195
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-static {v3, v1, v2}, Lif/a;->D(IJ)I

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    int-to-long v1, v1

    .line 203
    cmp-long v3, v1, v7

    .line 204
    .line 205
    if-gez v3, :cond_6

    .line 206
    .line 207
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    :cond_6
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    :goto_2
    const-string v1, " "

    .line 214
    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    iget v1, p0, Lxh/f;->f:I

    .line 219
    .line 220
    const/4 v2, 0x1

    .line 221
    if-eq v1, v2, :cond_9

    .line 222
    .line 223
    const/4 v2, 0x2

    .line 224
    if-eq v1, v2, :cond_8

    .line 225
    .line 226
    const/4 v2, 0x3

    .line 227
    if-eq v1, v2, :cond_7

    .line 228
    .line 229
    const-string v1, "null"

    .line 230
    .line 231
    goto :goto_3

    .line 232
    :cond_7
    const-string v1, "STANDARD"

    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_8
    const-string v1, "WALL"

    .line 236
    .line 237
    goto :goto_3

    .line 238
    :cond_9
    const-string v1, "UTC"

    .line 239
    .line 240
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string v1, ", standard offset "

    .line 244
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    iget-object v1, p0, Lxh/f;->g:Lsh/p;

    .line 249
    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const/16 v1, 0x5d

    .line 254
    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    return-object v0
.end method

.method public final writeExternal(Ljava/io/ObjectOutput;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lxh/f;->d:Lsh/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lsh/g;->x()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget v2, p0, Lxh/f;->e:I

    .line 8
    .line 9
    const v3, 0x15180

    .line 10
    .line 11
    .line 12
    mul-int v2, v2, v3

    .line 13
    .line 14
    add-int/2addr v2, v1

    .line 15
    iget-object v1, p0, Lxh/f;->g:Lsh/p;

    .line 16
    .line 17
    iget-object v4, p0, Lxh/f;->h:Lsh/p;

    .line 18
    .line 19
    iget v4, v4, Lsh/p;->a:I

    .line 20
    .line 21
    iget v1, v1, Lsh/p;->a:I

    .line 22
    .line 23
    sub-int v5, v4, v1

    .line 24
    .line 25
    iget-object v6, p0, Lxh/f;->i:Lsh/p;

    .line 26
    .line 27
    iget v6, v6, Lsh/p;->a:I

    .line 28
    .line 29
    sub-int v7, v6, v1

    .line 30
    .line 31
    rem-int/lit16 v8, v2, 0xe10

    .line 32
    .line 33
    const/16 v9, 0x1f

    .line 34
    .line 35
    if-nez v8, :cond_1

    .line 36
    .line 37
    if-gt v2, v3, :cond_1

    .line 38
    .line 39
    if-ne v2, v3, :cond_0

    .line 40
    .line 41
    const/16 v0, 0x18

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-byte v0, v0, Lsh/g;->a:B

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/16 v0, 0x1f

    .line 48
    .line 49
    :goto_0
    rem-int/lit16 v3, v1, 0x384

    .line 50
    .line 51
    const/16 v8, 0xff

    .line 52
    .line 53
    if-nez v3, :cond_2

    .line 54
    .line 55
    div-int/lit16 v3, v1, 0x384

    .line 56
    .line 57
    add-int/lit16 v3, v3, 0x80

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const/16 v3, 0xff

    .line 61
    .line 62
    :goto_1
    const/16 v10, 0xe10

    .line 63
    .line 64
    const/4 v11, 0x3

    .line 65
    const/16 v12, 0x708

    .line 66
    .line 67
    if-eqz v5, :cond_4

    .line 68
    .line 69
    if-eq v5, v12, :cond_4

    .line 70
    .line 71
    if-ne v5, v10, :cond_3

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_3
    const/4 v5, 0x3

    .line 75
    goto :goto_3

    .line 76
    :cond_4
    :goto_2
    div-int/2addr v5, v12

    .line 77
    :goto_3
    if-eqz v7, :cond_6

    .line 78
    .line 79
    if-eq v7, v12, :cond_6

    .line 80
    .line 81
    if-ne v7, v10, :cond_5

    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_5
    const/4 v7, 0x3

    .line 85
    goto :goto_5

    .line 86
    :cond_6
    :goto_4
    div-int/2addr v7, v12

    .line 87
    :goto_5
    iget-object v10, p0, Lxh/f;->c:Lsh/b;

    .line 88
    .line 89
    if-nez v10, :cond_7

    .line 90
    .line 91
    const/4 v10, 0x0

    .line 92
    goto :goto_6

    .line 93
    :cond_7
    invoke-virtual {v10}, Lsh/b;->m()I

    .line 94
    .line 95
    .line 96
    move-result v10

    .line 97
    :goto_6
    iget-object v12, p0, Lxh/f;->a:Lsh/h;

    .line 98
    .line 99
    invoke-virtual {v12}, Lsh/h;->n()I

    .line 100
    .line 101
    .line 102
    move-result v12

    .line 103
    shl-int/lit8 v12, v12, 0x1c

    .line 104
    .line 105
    iget-byte v13, p0, Lxh/f;->b:B

    .line 106
    .line 107
    add-int/lit8 v13, v13, 0x20

    .line 108
    .line 109
    shl-int/lit8 v13, v13, 0x16

    .line 110
    .line 111
    add-int/2addr v12, v13

    .line 112
    shl-int/lit8 v10, v10, 0x13

    .line 113
    .line 114
    add-int/2addr v12, v10

    .line 115
    shl-int/lit8 v10, v0, 0xe

    .line 116
    .line 117
    add-int/2addr v12, v10

    .line 118
    iget v10, p0, Lxh/f;->f:I

    .line 119
    .line 120
    invoke-static {v10}, Ld0/f;->c(I)I

    .line 121
    .line 122
    .line 123
    move-result v10

    .line 124
    shl-int/lit8 v10, v10, 0xc

    .line 125
    .line 126
    add-int/2addr v12, v10

    .line 127
    shl-int/lit8 v10, v3, 0x4

    .line 128
    .line 129
    add-int/2addr v12, v10

    .line 130
    shl-int/lit8 v10, v5, 0x2

    .line 131
    .line 132
    add-int/2addr v12, v10

    .line 133
    add-int/2addr v12, v7

    .line 134
    invoke-interface {p1, v12}, Ljava/io/DataOutput;->writeInt(I)V

    .line 135
    .line 136
    .line 137
    if-ne v0, v9, :cond_8

    .line 138
    .line 139
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 140
    .line 141
    .line 142
    :cond_8
    if-ne v3, v8, :cond_9

    .line 143
    .line 144
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 145
    .line 146
    .line 147
    :cond_9
    if-ne v5, v11, :cond_a

    .line 148
    .line 149
    invoke-interface {p1, v4}, Ljava/io/DataOutput;->writeInt(I)V

    .line 150
    .line 151
    .line 152
    :cond_a
    if-ne v7, v11, :cond_b

    .line 153
    .line 154
    invoke-interface {p1, v6}, Ljava/io/DataOutput;->writeInt(I)V

    .line 155
    .line 156
    .line 157
    :cond_b
    return-void
.end method
