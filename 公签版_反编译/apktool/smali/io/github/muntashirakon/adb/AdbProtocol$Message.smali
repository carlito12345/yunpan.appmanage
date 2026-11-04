.class final Lio/github/muntashirakon/adb/AdbProtocol$Message;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/muntashirakon/adb/AdbProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Message"
.end annotation


# instance fields
.field public final arg0:I

.field public final arg1:I

.field public final command:I

.field public final dataCheck:I

.field public final dataLength:I

.field public final magic:I

.field public payload:[B


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->command:I

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->arg0:I

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->arg1:I

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput v0, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->dataLength:I

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput v0, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->dataCheck:I

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iput p1, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->magic:I

    .line 39
    .line 40
    return-void
.end method

.method public static parse(Ljava/io/InputStream;II)Lio/github/muntashirakon/adb/AdbProtocol$Message;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x18

    .line 3
    .line 4
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 9
    .line 10
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    :cond_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    rsub-int/lit8 v6, v4, 0x18

    .line 21
    .line 22
    invoke-virtual {p0, v5, v4, v6}, Ljava/io/InputStream;->read([BII)I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    const-string v6, "Stream closed"

    .line 27
    .line 28
    if-ltz v5, :cond_b

    .line 29
    .line 30
    add-int/2addr v4, v5

    .line 31
    if-lt v4, v1, :cond_0

    .line 32
    .line 33
    new-instance v1, Lio/github/muntashirakon/adb/AdbProtocol$Message;

    .line 34
    .line 35
    invoke-direct {v1, v2}, Lio/github/muntashirakon/adb/AdbProtocol$Message;-><init>(Ljava/nio/ByteBuffer;)V

    .line 36
    .line 37
    .line 38
    iget v2, v1, Lio/github/muntashirakon/adb/AdbProtocol$Message;->command:I

    .line 39
    .line 40
    iget v4, v1, Lio/github/muntashirakon/adb/AdbProtocol$Message;->magic:I

    .line 41
    .line 42
    xor-int/lit8 v4, v4, -0x1

    .line 43
    .line 44
    if-ne v2, v4, :cond_a

    .line 45
    .line 46
    const v4, 0x434e5953

    .line 47
    .line 48
    .line 49
    const v5, 0x4e584e43    # 9.072519E8f

    .line 50
    .line 51
    .line 52
    if-eq v2, v4, :cond_2

    .line 53
    .line 54
    if-eq v2, v5, :cond_2

    .line 55
    .line 56
    const v4, 0x4e45504f    # 8.2759366E8f

    .line 57
    .line 58
    .line 59
    if-eq v2, v4, :cond_2

    .line 60
    .line 61
    const v4, 0x59414b4f

    .line 62
    .line 63
    .line 64
    if-eq v2, v4, :cond_2

    .line 65
    .line 66
    const v4, 0x45534c43

    .line 67
    .line 68
    .line 69
    if-eq v2, v4, :cond_2

    .line 70
    .line 71
    const v4, 0x45545257

    .line 72
    .line 73
    .line 74
    if-eq v2, v4, :cond_2

    .line 75
    .line 76
    const v4, 0x48545541

    .line 77
    .line 78
    .line 79
    if-eq v2, v4, :cond_2

    .line 80
    .line 81
    const v4, 0x534c5453

    .line 82
    .line 83
    .line 84
    if-ne v2, v4, :cond_1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    new-instance p0, Ljava/io/StreamCorruptedException;

    .line 88
    .line 89
    iget p1, v1, Lio/github/muntashirakon/adb/AdbProtocol$Message;->command:I

    .line 90
    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    new-array p2, v0, [Ljava/lang/Object;

    .line 96
    .line 97
    aput-object p1, p2, v3

    .line 98
    .line 99
    const-string p1, "Invalid header: Invalid command 0x%x."

    .line 100
    .line 101
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-direct {p0, p1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p0

    .line 109
    :cond_2
    :goto_0
    iget v2, v1, Lio/github/muntashirakon/adb/AdbProtocol$Message;->dataLength:I

    .line 110
    .line 111
    if-ltz v2, :cond_9

    .line 112
    .line 113
    if-gt v2, p2, :cond_9

    .line 114
    .line 115
    if-nez v2, :cond_3

    .line 116
    .line 117
    return-object v1

    .line 118
    :cond_3
    new-array p2, v2, [B

    .line 119
    .line 120
    iput-object p2, v1, Lio/github/muntashirakon/adb/AdbProtocol$Message;->payload:[B

    .line 121
    .line 122
    :cond_4
    iget-object p2, v1, Lio/github/muntashirakon/adb/AdbProtocol$Message;->payload:[B

    .line 123
    .line 124
    iget v0, v1, Lio/github/muntashirakon/adb/AdbProtocol$Message;->dataLength:I

    .line 125
    .line 126
    sub-int/2addr v0, v3

    .line 127
    invoke-virtual {p0, p2, v3, v0}, Ljava/io/InputStream;->read([BII)I

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    if-ltz p2, :cond_8

    .line 132
    .line 133
    add-int/2addr v3, p2

    .line 134
    iget p2, v1, Lio/github/muntashirakon/adb/AdbProtocol$Message;->dataLength:I

    .line 135
    .line 136
    if-lt v3, p2, :cond_4

    .line 137
    .line 138
    const/high16 p0, 0x1000000

    .line 139
    .line 140
    if-le p1, p0, :cond_5

    .line 141
    .line 142
    iget p1, v1, Lio/github/muntashirakon/adb/AdbProtocol$Message;->command:I

    .line 143
    .line 144
    if-ne p1, v5, :cond_6

    .line 145
    .line 146
    iget p1, v1, Lio/github/muntashirakon/adb/AdbProtocol$Message;->arg0:I

    .line 147
    .line 148
    if-gt p1, p0, :cond_6

    .line 149
    .line 150
    :cond_5
    iget-object p0, v1, Lio/github/muntashirakon/adb/AdbProtocol$Message;->payload:[B

    .line 151
    .line 152
    invoke-static {p0}, Lio/github/muntashirakon/adb/AdbProtocol;->a([B)I

    .line 153
    .line 154
    .line 155
    move-result p0

    .line 156
    iget p1, v1, Lio/github/muntashirakon/adb/AdbProtocol$Message;->dataCheck:I

    .line 157
    .line 158
    if-ne p0, p1, :cond_7

    .line 159
    .line 160
    :cond_6
    return-object v1

    .line 161
    :cond_7
    new-instance p0, Ljava/io/StreamCorruptedException;

    .line 162
    .line 163
    const-string p1, "Invalid header: Checksum mismatched."

    .line 164
    .line 165
    invoke-direct {p0, p1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw p0

    .line 169
    :cond_8
    new-instance p0, Ljava/io/IOException;

    .line 170
    .line 171
    invoke-direct {p0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw p0

    .line 175
    :cond_9
    new-instance p0, Ljava/io/StreamCorruptedException;

    .line 176
    .line 177
    iget p1, v1, Lio/github/muntashirakon/adb/AdbProtocol$Message;->dataLength:I

    .line 178
    .line 179
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    new-array p2, v0, [Ljava/lang/Object;

    .line 184
    .line 185
    aput-object p1, p2, v3

    .line 186
    .line 187
    const-string p1, "Invalid header: Invalid data length %d"

    .line 188
    .line 189
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-direct {p0, p1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    throw p0

    .line 197
    :cond_a
    new-instance p0, Ljava/io/StreamCorruptedException;

    .line 198
    .line 199
    iget p1, v1, Lio/github/muntashirakon/adb/AdbProtocol$Message;->magic:I

    .line 200
    .line 201
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    new-array p2, v0, [Ljava/lang/Object;

    .line 206
    .line 207
    aput-object p1, p2, v3

    .line 208
    .line 209
    const-string p1, "Invalid header: Invalid magic 0x%x."

    .line 210
    .line 211
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-direct {p0, p1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    throw p0

    .line 219
    :cond_b
    new-instance p0, Ljava/io/IOException;

    .line 220
    .line 221
    invoke-direct {p0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    goto :goto_2

    .line 225
    :goto_1
    throw p0

    .line 226
    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->command:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, "????"

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :sswitch_0
    const-string v0, "OKAY"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :sswitch_1
    const-string v0, "STLS"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :sswitch_2
    const-string v0, "CNXN"

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :sswitch_3
    const-string v0, "OPEN"

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :sswitch_4
    const-string v0, "AUTH"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :sswitch_5
    const-string v0, "WRTE"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :sswitch_6
    const-string v0, "CLSE"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :sswitch_7
    const-string v0, "SYNC"

    .line 31
    .line 32
    :goto_0
    const-string v1, "Message{command="

    .line 33
    .line 34
    const-string v2, ", arg0=0x"

    .line 35
    .line 36
    invoke-static {v1, v0, v2}, Lda/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget v1, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->arg0:I

    .line 41
    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v1, ", arg1=0x"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget v1, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->arg1:I

    .line 55
    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", payloadLength="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget v1, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->dataLength:I

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", checksum="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget v1, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->dataCheck:I

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", magic=0x"

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget v1, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->magic:I

    .line 89
    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v1, ", payload="

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget-object v1, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->payload:[B

    .line 103
    .line 104
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const/16 v1, 0x7d

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    return-object v0

    .line 121
    :sswitch_data_0
    .sparse-switch
        0x434e5953 -> :sswitch_7
        0x45534c43 -> :sswitch_6
        0x45545257 -> :sswitch_5
        0x48545541 -> :sswitch_4
        0x4e45504f -> :sswitch_3
        0x4e584e43 -> :sswitch_2
        0x534c5453 -> :sswitch_1
        0x59414b4f -> :sswitch_0
    .end sparse-switch
.end method
