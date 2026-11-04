.class public Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final data:[B

.field private final name:Ljava/lang/String;

.field private final type:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;[B)V
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_7

    .line 9
    .line 10
    if-eqz p2, :cond_6

    .line 11
    .line 12
    if-eqz p3, :cond_5

    .line 13
    .line 14
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;->name:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;->type:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 17
    .line 18
    sget-object p1, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue$1;->$SwitchMap$com$rapid7$client$dcerpc$msrrp$dto$RegistryValueType:[I

    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    aget v4, p1, v4

    .line 25
    .line 26
    const-string v5, "Data type %s is invalid with length %d: 0x%s,"

    .line 27
    .line 28
    packed-switch v4, :pswitch_data_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :pswitch_0
    array-length v4, p3

    .line 33
    and-int/2addr v4, v3

    .line 34
    if-nez v4, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 38
    .line 39
    array-length v4, p3

    .line 40
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    sget-object v6, Lv7/e;->d:Lv7/b;

    .line 45
    .line 46
    invoke-virtual {v6, p3}, Lv7/e;->c([B)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    new-array v2, v2, [Ljava/lang/Object;

    .line 51
    .line 52
    aput-object p2, v2, v1

    .line 53
    .line 54
    aput-object v4, v2, v3

    .line 55
    .line 56
    aput-object p3, v2, v0

    .line 57
    .line 58
    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1

    .line 66
    :pswitch_1
    array-length v4, p3

    .line 67
    const/16 v6, 0x8

    .line 68
    .line 69
    if-ne v4, v6, :cond_1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 73
    .line 74
    array-length v4, p3

    .line 75
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    sget-object v6, Lv7/e;->d:Lv7/b;

    .line 80
    .line 81
    invoke-virtual {v6, p3}, Lv7/e;->c([B)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    new-array v2, v2, [Ljava/lang/Object;

    .line 86
    .line 87
    aput-object p2, v2, v1

    .line 88
    .line 89
    aput-object v4, v2, v3

    .line 90
    .line 91
    aput-object p3, v2, v0

    .line 92
    .line 93
    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p1

    .line 101
    :pswitch_2
    array-length v4, p3

    .line 102
    const/4 v6, 0x4

    .line 103
    if-ne v4, v6, :cond_4

    .line 104
    .line 105
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    aget p1, p1, p2

    .line 110
    .line 111
    if-eq p1, v3, :cond_2

    .line 112
    .line 113
    if-eq p1, v2, :cond_2

    .line 114
    .line 115
    array-length p1, p3

    .line 116
    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;->data:[B

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_2
    array-length p1, p3

    .line 124
    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;->data:[B

    .line 129
    .line 130
    if-eqz p1, :cond_3

    .line 131
    .line 132
    array-length p2, p1

    .line 133
    invoke-static {v1, v1}, Ljava/lang/Math;->max(II)I

    .line 134
    .line 135
    .line 136
    move-result p3

    .line 137
    array-length v0, p1

    .line 138
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 139
    .line 140
    .line 141
    move-result p2

    .line 142
    sub-int/2addr p2, v3

    .line 143
    :goto_1
    if-le p2, p3, :cond_3

    .line 144
    .line 145
    aget-byte v0, p1, p2

    .line 146
    .line 147
    aget-byte v1, p1, p3

    .line 148
    .line 149
    aput-byte v1, p1, p2

    .line 150
    .line 151
    aput-byte v0, p1, p3

    .line 152
    .line 153
    add-int/lit8 p2, p2, -0x1

    .line 154
    .line 155
    add-int/2addr p3, v3

    .line 156
    goto :goto_1

    .line 157
    :cond_3
    :goto_2
    return-void

    .line 158
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 159
    .line 160
    array-length v4, p3

    .line 161
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    sget-object v6, Lv7/e;->d:Lv7/b;

    .line 166
    .line 167
    invoke-virtual {v6, p3}, Lv7/e;->c([B)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p3

    .line 171
    new-array v2, v2, [Ljava/lang/Object;

    .line 172
    .line 173
    aput-object p2, v2, v1

    .line 174
    .line 175
    aput-object v4, v2, v3

    .line 176
    .line 177
    aput-object p3, v2, v0

    .line 178
    .line 179
    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw p1

    .line 187
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 188
    .line 189
    new-instance p2, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    const-string v0, "Data is invalid: "

    .line 192
    .line 193
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw p1

    .line 207
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 208
    .line 209
    new-instance p3, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    const-string v0, "Type is invalid: "

    .line 212
    .line 213
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw p1

    .line 227
    :cond_7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 228
    .line 229
    const-string p3, "Name is invalid: "

    .line 230
    .line 231
    invoke-static {p3, p1}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    goto :goto_4

    .line 239
    :goto_3
    throw p2

    .line 240
    :goto_4
    goto :goto_3

    .line 241
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;->name:Ljava/lang/String;

    .line 6
    .line 7
    check-cast p1, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;

    .line 8
    .line 9
    iget-object v1, p1, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;->name:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;->type:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 18
    .line 19
    iget-object v1, p1, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;->type:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 20
    .line 21
    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;->data:[B

    .line 28
    .line 29
    iget-object p1, p1, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;->data:[B

    .line 30
    .line 31
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p1, 0x0

    .line 40
    :goto_0
    return p1
.end method

.method public getData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;->data:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public getDataAsBinaryStr()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;->data:[B

    .line 7
    .line 8
    array-length v2, v1

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ge v3, v2, :cond_1

    .line 11
    .line 12
    aget-byte v4, v1, v3

    .line 13
    .line 14
    const/4 v5, 0x7

    .line 15
    :goto_1
    if-ltz v5, :cond_0

    .line 16
    .line 17
    shr-int v6, v4, v5

    .line 18
    .line 19
    and-int/lit8 v6, v6, 0x1

    .line 20
    .line 21
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    add-int/lit8 v5, v5, -0x1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0
.end method

.method public getDataAsHexStr()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lv7/e;->d:Lv7/b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;->data:[B

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lv7/e;->c([B)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getDataAsInt()I
    .locals 3

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue$1;->$SwitchMap$com$rapid7$client$dcerpc$msrrp$dto$RegistryValueType:[I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;->type:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-ne v0, v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 21
    .line 22
    .line 23
    throw v0

    .line 24
    :cond_1
    :goto_0
    new-instance v0, Ljava/math/BigInteger;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;->data:[B

    .line 27
    .line 28
    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    return v0
.end method

.method public getDataAsLong()J
    .locals 3

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue$1;->$SwitchMap$com$rapid7$client$dcerpc$msrrp$dto$RegistryValueType:[I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;->type:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-eq v0, v2, :cond_1

    .line 16
    .line 17
    const/4 v2, 0x3

    .line 18
    if-ne v0, v2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 24
    .line 25
    .line 26
    throw v0

    .line 27
    :cond_1
    :goto_0
    new-instance v0, Ljava/math/BigInteger;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;->data:[B

    .line 30
    .line 31
    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    return-wide v0
.end method

.method public getDataAsMultiStr()[Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue$1;->$SwitchMap$com$rapid7$client$dcerpc$msrrp$dto$RegistryValueType:[I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;->type:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x7

    .line 12
    if-ne v0, v1, :cond_4

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v1, Ljava/util/LinkedList;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;->data:[B

    .line 25
    .line 26
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-virtual {v2}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/4 v4, 0x0

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_0

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    int-to-char v3, v3

    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-lez v2, :cond_2

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 78
    .line 79
    .line 80
    :cond_2
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-lez v0, :cond_3

    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    add-int/lit8 v0, v0, -0x1

    .line 91
    .line 92
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-eqz v2, :cond_3

    .line 103
    .line 104
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    :cond_3
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    new-array v0, v0, [Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, [Ljava/lang/String;

    .line 118
    .line 119
    return-object v0

    .line 120
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 121
    .line 122
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :goto_1
    throw v0

    .line 127
    :goto_2
    goto :goto_1
.end method

.method public getDataAsStr()Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue$1;->$SwitchMap$com$rapid7$client$dcerpc$msrrp$dto$RegistryValueType:[I

    .line 7
    .line 8
    iget-object v2, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;->type:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    aget v1, v1, v2

    .line 15
    .line 16
    packed-switch v1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    new-instance v0, Ljavax/activation/UnsupportedDataTypeException;

    .line 20
    .line 21
    invoke-direct {v0}, Ljavax/activation/UnsupportedDataTypeException;-><init>()V

    .line 22
    .line 23
    .line 24
    throw v0

    .line 25
    :pswitch_0
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;->getDataAsBinaryStr()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    goto/16 :goto_2

    .line 33
    .line 34
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;->getDataAsMultiStr()[Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    array-length v3, v2

    .line 44
    const/4 v4, 0x0

    .line 45
    :goto_0
    if-ge v4, v3, :cond_1

    .line 46
    .line 47
    aget-object v5, v2, v4

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-lez v6, :cond_0

    .line 54
    .line 55
    const-string v6, ", "

    .line 56
    .line 57
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    :cond_0
    const-string v6, "\""

    .line 61
    .line 62
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v7, "\\\""

    .line 66
    .line 67
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    add-int/lit8 v4, v4, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-lez v2, :cond_3

    .line 85
    .line 86
    const-string v2, "{"

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v1, "}"

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :pswitch_2
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;->data:[B

    .line 105
    .line 106
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 113
    .line 114
    .line 115
    :goto_1
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_3

    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-nez v2, :cond_2

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_2
    int-to-char v2, v2

    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :pswitch_3
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;->getDataAsLong()J

    .line 134
    .line 135
    .line 136
    move-result-wide v1

    .line 137
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :pswitch_4
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;->getDataAsInt()I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    return-object v0

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;->type:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;->name:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;->type:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;->data:[B

    .line 6
    .line 7
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x3

    .line 16
    new-array v3, v3, [Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    aput-object v0, v3, v4

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    aput-object v1, v3, v0

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    aput-object v2, v3, v0

    .line 26
    .line 27
    invoke-static {v3}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;->name:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " ("

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;->type:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, ")"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    :try_start_0
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;->getDataAsStr()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    const-string v2, " = "

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;->getDataAsStr()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v2, " (0x"

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;->getDataAsHexStr()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/activation/UnsupportedDataTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catch_0
    move-exception v1

    .line 65
    goto :goto_0

    .line 66
    :catch_1
    move-exception v1

    .line 67
    :goto_0
    const-string v2, " ! "

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v2, "::"

    .line 84
    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    return-object v0
.end method
