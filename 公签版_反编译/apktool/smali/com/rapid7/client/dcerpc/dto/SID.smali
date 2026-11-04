.class public Lcom/rapid7/client/dcerpc/dto/SID;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rapid7/client/dcerpc/dto/SID$MalformedSIDStringException;
    }
.end annotation


# instance fields
.field private final identifierAuthority:[B

.field private final revision:B

.field private final subAuthorities:[J


# direct methods
.method public constructor <init>(B[B[J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_2

    .line 5
    .line 6
    array-length v0, p2

    .line 7
    const/4 v1, 0x6

    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    if-eqz p3, :cond_0

    .line 11
    .line 12
    iput-byte p1, p0, Lcom/rapid7/client/dcerpc/dto/SID;->revision:B

    .line 13
    .line 14
    iput-object p2, p0, Lcom/rapid7/client/dcerpc/dto/SID;->identifierAuthority:[B

    .line 15
    .line 16
    iput-object p3, p0, Lcom/rapid7/client/dcerpc/dto/SID;->subAuthorities:[J

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string p2, "Expecting non-null subAuthorities"

    .line 22
    .line 23
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    array-length p2, p2

    .line 30
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    const/4 p3, 0x1

    .line 35
    new-array p3, p3, [Ljava/lang/Object;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    aput-object p2, p3, v0

    .line 39
    .line 40
    const-string p2, "Expected 6 entries in identifierAuthority, got: %d"

    .line 41
    .line 42
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    const-string p2, "Expecting non-null identifierAuthority"

    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1
.end method

.method public static fromString(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/dto/SID;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v4

    .line 10
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    const-string v5, "-"

    .line 15
    .line 16
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    array-length v5, v4

    .line 21
    const/4 v6, 0x3

    .line 22
    if-lt v5, v6, :cond_3

    .line 23
    .line 24
    aget-object v5, v4, v2

    .line 25
    .line 26
    const-string v7, "S"

    .line 27
    .line 28
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_2

    .line 33
    .line 34
    :try_start_0
    aget-object v5, v4, v3

    .line 35
    .line 36
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    int-to-byte v5, v5

    .line 41
    aget-object v7, v4, v0

    .line 42
    .line 43
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    const-string v9, "0X"

    .line 48
    .line 49
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    if-eqz v8, :cond_0

    .line 54
    .line 55
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    invoke-virtual {v7, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sget-object v7, Lv7/e;->d:Lv7/b;

    .line 64
    .line 65
    invoke-virtual {v7, v0}, Lv7/e;->a(Ljava/lang/String;)[B

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    goto :goto_2

    .line 72
    :cond_0
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 73
    .line 74
    .line 75
    move-result-wide v7

    .line 76
    const/16 v9, 0x28

    .line 77
    .line 78
    shr-long v9, v7, v9

    .line 79
    .line 80
    const-wide/16 v11, 0xff

    .line 81
    .line 82
    and-long/2addr v9, v11

    .line 83
    long-to-int v10, v9

    .line 84
    int-to-byte v9, v10

    .line 85
    const/16 v10, 0x20

    .line 86
    .line 87
    shr-long v13, v7, v10

    .line 88
    .line 89
    and-long/2addr v13, v11

    .line 90
    long-to-int v10, v13

    .line 91
    int-to-byte v10, v10

    .line 92
    const/16 v13, 0x18

    .line 93
    .line 94
    shr-long v13, v7, v13

    .line 95
    .line 96
    and-long/2addr v13, v11

    .line 97
    long-to-int v14, v13

    .line 98
    int-to-byte v13, v14

    .line 99
    const/16 v14, 0x10

    .line 100
    .line 101
    shr-long v14, v7, v14

    .line 102
    .line 103
    and-long/2addr v14, v11

    .line 104
    long-to-int v15, v14

    .line 105
    int-to-byte v14, v15

    .line 106
    const/16 v15, 0x8

    .line 107
    .line 108
    shr-long v15, v7, v15

    .line 109
    .line 110
    and-long v0, v15, v11

    .line 111
    .line 112
    long-to-int v1, v0

    .line 113
    int-to-byte v0, v1

    .line 114
    and-long/2addr v7, v11

    .line 115
    long-to-int v1, v7

    .line 116
    int-to-byte v1, v1

    .line 117
    const/4 v7, 0x6

    .line 118
    new-array v7, v7, [B

    .line 119
    .line 120
    aput-byte v9, v7, v2

    .line 121
    .line 122
    aput-byte v10, v7, v3

    .line 123
    .line 124
    const/4 v8, 0x2

    .line 125
    aput-byte v13, v7, v8

    .line 126
    .line 127
    aput-byte v14, v7, v6

    .line 128
    .line 129
    const/4 v8, 0x4

    .line 130
    aput-byte v0, v7, v8

    .line 131
    .line 132
    const/4 v0, 0x5

    .line 133
    aput-byte v1, v7, v0

    .line 134
    .line 135
    move-object v0, v7

    .line 136
    :goto_0
    array-length v1, v4

    .line 137
    sub-int/2addr v1, v6

    .line 138
    new-array v7, v1, [J

    .line 139
    .line 140
    :goto_1
    if-ge v2, v1, :cond_1

    .line 141
    .line 142
    add-int/lit8 v8, v2, 0x3

    .line 143
    .line 144
    aget-object v8, v4, v8

    .line 145
    .line 146
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 147
    .line 148
    .line 149
    move-result-wide v8

    .line 150
    aput-wide v8, v7, v2

    .line 151
    .line 152
    add-int/2addr v2, v3

    .line 153
    goto :goto_1

    .line 154
    :cond_1
    new-instance v1, Lcom/rapid7/client/dcerpc/dto/SID;

    .line 155
    .line 156
    invoke-direct {v1, v5, v0, v7}, Lcom/rapid7/client/dcerpc/dto/SID;-><init>(B[B[J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .line 158
    .line 159
    return-object v1

    .line 160
    :goto_2
    new-instance v1, Lcom/rapid7/client/dcerpc/dto/SID$MalformedSIDStringException;

    .line 161
    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string v3, "Unable to parse SID token: "

    .line 165
    .line 166
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    move-object/from16 v2, p0

    .line 181
    .line 182
    invoke-direct {v1, v0, v2}, Lcom/rapid7/client/dcerpc/dto/SID$MalformedSIDStringException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw v1

    .line 186
    :cond_2
    move-object v2, v1

    .line 187
    new-instance v0, Lcom/rapid7/client/dcerpc/dto/SID$MalformedSIDStringException;

    .line 188
    .line 189
    const-string v1, "SID must start with S"

    .line 190
    .line 191
    invoke-direct {v0, v1, v2}, Lcom/rapid7/client/dcerpc/dto/SID$MalformedSIDStringException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    throw v0

    .line 195
    :cond_3
    move-object v2, v1

    .line 196
    new-instance v0, Lcom/rapid7/client/dcerpc/dto/SID$MalformedSIDStringException;

    .line 197
    .line 198
    const-string v1, "Illegal SID format"

    .line 199
    .line 200
    invoke-direct {v0, v1, v2}, Lcom/rapid7/client/dcerpc/dto/SID$MalformedSIDStringException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    goto :goto_4

    .line 204
    :goto_3
    throw v0

    .line 205
    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/rapid7/client/dcerpc/dto/SID;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/rapid7/client/dcerpc/dto/SID;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/dto/SID;->getRevision()B

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/dto/SID;->getRevision()B

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/dto/SID;->getIdentifierAuthority()[B

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/dto/SID;->getIdentifierAuthority()[B

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/dto/SID;->getSubAuthorities()[J

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/dto/SID;->getSubAuthorities()[J

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([J[J)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    const/4 v0, 0x0

    .line 65
    :goto_0
    return v0
.end method

.method public getIdentifierAuthority()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/dto/SID;->identifierAuthority:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public getRelativeID()Ljava/lang/Long;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/dto/SID;->subAuthorities:[J

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    return-object v0

    .line 8
    :cond_0
    array-length v1, v0

    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 10
    .line 11
    aget-wide v1, v0, v1

    .line 12
    .line 13
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public getRevision()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/rapid7/client/dcerpc/dto/SID;->revision:B

    .line 2
    .line 3
    return v0
.end method

.method public getSubAuthorities()[J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/dto/SID;->subAuthorities:[J

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/dto/SID;->getRevision()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    mul-int/lit8 v0, v0, 0x1f

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/dto/SID;->getIdentifierAuthority()[B

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    add-int/2addr v1, v0

    .line 24
    mul-int/lit8 v1, v1, 0x1f

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/dto/SID;->getSubAuthorities()[J

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    add-int/2addr v0, v1

    .line 35
    return v0
.end method

.method public resolveRelativeID(J)Lcom/rapid7/client/dcerpc/dto/SID;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/dto/SID;->identifierAuthority:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/dto/SID;->subAuthorities:[J

    .line 9
    .line 10
    array-length v2, v1

    .line 11
    add-int/lit8 v2, v2, 0x1

    .line 12
    .line 13
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    array-length v2, v1

    .line 18
    add-int/lit8 v2, v2, -0x1

    .line 19
    .line 20
    aput-wide p1, v1, v2

    .line 21
    .line 22
    new-instance p1, Lcom/rapid7/client/dcerpc/dto/SID;

    .line 23
    .line 24
    iget-byte p2, p0, Lcom/rapid7/client/dcerpc/dto/SID;->revision:B

    .line 25
    .line 26
    invoke-direct {p1, p2, v0, v1}, Lcom/rapid7/client/dcerpc/dto/SID;-><init>(B[B[J)V

    .line 27
    .line 28
    .line 29
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "S-"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-byte v1, p0, Lcom/rapid7/client/dcerpc/dto/SID;->revision:B

    .line 9
    .line 10
    and-int/lit16 v1, v1, 0xff

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "-"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/rapid7/client/dcerpc/dto/SID;->identifierAuthority:[B

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    aget-byte v4, v2, v3

    .line 24
    .line 25
    if-nez v4, :cond_2

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    aget-byte v5, v2, v4

    .line 29
    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    array-length v2, v2

    .line 34
    sub-int/2addr v2, v4

    .line 35
    const-wide/16 v5, 0x0

    .line 36
    .line 37
    move-wide v7, v5

    .line 38
    :goto_0
    if-le v2, v4, :cond_1

    .line 39
    .line 40
    iget-object v9, p0, Lcom/rapid7/client/dcerpc/dto/SID;->identifierAuthority:[B

    .line 41
    .line 42
    aget-byte v9, v9, v2

    .line 43
    .line 44
    int-to-long v9, v9

    .line 45
    const-wide/16 v11, 0xff

    .line 46
    .line 47
    and-long/2addr v9, v11

    .line 48
    long-to-int v11, v7

    .line 49
    shl-long/2addr v9, v11

    .line 50
    add-long/2addr v5, v9

    .line 51
    const-wide/16 v9, 0x8

    .line 52
    .line 53
    add-long/2addr v7, v9

    .line 54
    add-int/lit8 v2, v2, -0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    :goto_1
    const-string v2, "0x"

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    sget-object v2, Lv7/e;->d:Lv7/b;

    .line 67
    .line 68
    iget-object v4, p0, Lcom/rapid7/client/dcerpc/dto/SID;->identifierAuthority:[B

    .line 69
    .line 70
    invoke-virtual {v2, v4}, Lv7/e;->c([B)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    :goto_2
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/dto/SID;->getSubAuthorities()[J

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    array-length v4, v2

    .line 82
    :goto_3
    if-ge v3, v4, :cond_3

    .line 83
    .line 84
    aget-wide v5, v2, v3

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-wide v7, 0xffffffffL

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    and-long/2addr v5, v7

    .line 95
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    add-int/lit8 v3, v3, 0x1

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    return-object v0
.end method
