.class public Lcom/rapid7/client/dcerpc/Header;
.super Lcom/rapid7/client/dcerpc/io/HexifyImpl;
.source "SourceFile"

# interfaces
.implements Lcom/rapid7/client/dcerpc/io/Packet;
.implements Lcom/rapid7/client/dcerpc/io/Hexify;


# instance fields
.field private authLength:S

.field private callID:I

.field private fragLength:S

.field private majorVersion:B

.field private minorVersion:B

.field private ndr:[B

.field private pduType:Lcom/rapid7/client/dcerpc/PDUType;

.field private pfcFlags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/rapid7/client/dcerpc/PFCFlag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/rapid7/client/dcerpc/io/HexifyImpl;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x5

    .line 5
    iput-byte v0, p0, Lcom/rapid7/client/dcerpc/Header;->majorVersion:B

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-byte v0, p0, Lcom/rapid7/client/dcerpc/Header;->minorVersion:B

    .line 9
    .line 10
    const/16 v1, 0x10

    .line 11
    .line 12
    const/4 v2, 0x4

    .line 13
    new-array v2, v2, [B

    .line 14
    .line 15
    fill-array-data v2, :array_0

    .line 16
    .line 17
    .line 18
    iput-object v2, p0, Lcom/rapid7/client/dcerpc/Header;->ndr:[B

    .line 19
    .line 20
    iput-short v1, p0, Lcom/rapid7/client/dcerpc/Header;->fragLength:S

    .line 21
    .line 22
    iput-short v0, p0, Lcom/rapid7/client/dcerpc/Header;->authLength:S

    .line 23
    .line 24
    iput v0, p0, Lcom/rapid7/client/dcerpc/Header;->callID:I

    .line 25
    .line 26
    return-void

    .line 27
    :array_0
    .array-data 1
        0x10t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public getAuthLength()I
    .locals 1

    .line 1
    iget-short v0, p0, Lcom/rapid7/client/dcerpc/Header;->authLength:S

    .line 2
    .line 3
    return v0
.end method

.method public getCallID()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/Header;->callID:I

    .line 2
    .line 3
    return v0
.end method

.method public getFragLength()I
    .locals 1

    .line 1
    iget-short v0, p0, Lcom/rapid7/client/dcerpc/Header;->fragLength:S

    .line 2
    .line 3
    return v0
.end method

.method public getMajorVersion()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/rapid7/client/dcerpc/Header;->majorVersion:B

    .line 2
    .line 3
    return v0
.end method

.method public getMinorVersion()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/rapid7/client/dcerpc/Header;->minorVersion:B

    .line 2
    .line 3
    return v0
.end method

.method public getNDR()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/Header;->ndr:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public getPDUType()Lcom/rapid7/client/dcerpc/PDUType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/Header;->pduType:Lcom/rapid7/client/dcerpc/PDUType;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPFCFlags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/rapid7/client/dcerpc/PFCFlag;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/Header;->pfcFlags:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method public marshal(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/Header;->getPDUType()Lcom/rapid7/client/dcerpc/PDUType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/Header;->getPFCFlags()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/Header;->getMajorVersion()B

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeByte(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/Header;->getMinorVersion()B

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeByte(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/Header;->getPDUType()Lcom/rapid7/client/dcerpc/PDUType;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/PDUType;->getValue()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    long-to-int v1, v0

    .line 36
    int-to-byte v0, v1

    .line 37
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeByte(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/Header;->getPFCFlags()Ljava/util/Set;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/hierynomus/protocol/commons/EnumWithValue$EnumUtils;->toLong(Ljava/util/Collection;)J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    long-to-int v1, v0

    .line 49
    int-to-byte v0, v1

    .line 50
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeByte(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/Header;->getNDR()[B

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->write([B)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/Header;->getFragLength()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeShort(I)V

    .line 65
    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeShort(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/Header;->getCallID()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 80
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v1, "Invalid PFC flag(s): "

    .line 84
    .line 85
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/Header;->getPFCFlags()Ljava/util/Set;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p1

    .line 103
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 104
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v1, "Invalid PDU type: "

    .line 108
    .line 109
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/Header;->getPDUType()Lcom/rapid7/client/dcerpc/PDUType;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p1
.end method

.method public setAuthLength(S)V
    .locals 0

    .line 1
    iput-short p1, p0, Lcom/rapid7/client/dcerpc/Header;->authLength:S

    .line 2
    .line 3
    return-void
.end method

.method public setCallID(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/rapid7/client/dcerpc/Header;->callID:I

    .line 2
    .line 3
    return-void
.end method

.method public setFragLength(S)V
    .locals 0

    .line 1
    iput-short p1, p0, Lcom/rapid7/client/dcerpc/Header;->fragLength:S

    .line 2
    .line 3
    return-void
.end method

.method public setMajorVersion(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/rapid7/client/dcerpc/Header;->majorVersion:B

    .line 2
    .line 3
    return-void
.end method

.method public setMinorVersion(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/rapid7/client/dcerpc/Header;->minorVersion:B

    .line 2
    .line 3
    return-void
.end method

.method public setNDR([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/Header;->ndr:[B

    .line 2
    .line 3
    return-void
.end method

.method public setPDUType(Lcom/rapid7/client/dcerpc/PDUType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/Header;->pduType:Lcom/rapid7/client/dcerpc/PDUType;

    .line 2
    .line 3
    return-void
.end method

.method public setPFCFlags(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/rapid7/client/dcerpc/PFCFlag;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/Header;->pfcFlags:Ljava/util/Set;

    .line 2
    .line 3
    return-void
.end method

.method public unmarshal(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readByte()B

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    invoke-virtual {p0, v2}, Lcom/rapid7/client/dcerpc/Header;->setMajorVersion(B)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readByte()B

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {p0, v2}, Lcom/rapid7/client/dcerpc/Header;->setMinorVersion(B)V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x5

    .line 18
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/Header;->getMajorVersion()B

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-ne v2, v3, :cond_3

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/Header;->getMinorVersion()B

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_3

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readByte()B

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    int-to-long v2, v2

    .line 35
    const-class v4, Lcom/rapid7/client/dcerpc/PDUType;

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-static {v2, v3, v4, v5}, Lcom/hierynomus/protocol/commons/EnumWithValue$EnumUtils;->valueOf(JLjava/lang/Class;Lcom/hierynomus/protocol/commons/EnumWithValue;)Lcom/hierynomus/protocol/commons/EnumWithValue;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lcom/rapid7/client/dcerpc/PDUType;

    .line 43
    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0, v2}, Lcom/rapid7/client/dcerpc/Header;->setPDUType(Lcom/rapid7/client/dcerpc/PDUType;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readByte()B

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    int-to-long v2, v2

    .line 54
    const-class v4, Lcom/rapid7/client/dcerpc/PFCFlag;

    .line 55
    .line 56
    invoke-static {v2, v3, v4}, Lcom/hierynomus/protocol/commons/EnumWithValue$EnumUtils;->toEnumSet(JLjava/lang/Class;)Ljava/util/EnumSet;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {p0, v2}, Lcom/rapid7/client/dcerpc/Header;->setPFCFlags(Ljava/util/Set;)V

    .line 61
    .line 62
    .line 63
    const/4 v2, 0x4

    .line 64
    new-array v2, v2, [B

    .line 65
    .line 66
    invoke-virtual {p1, v2}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readFully([B)V

    .line 67
    .line 68
    .line 69
    aget-byte v3, v2, v1

    .line 70
    .line 71
    const/16 v4, 0x10

    .line 72
    .line 73
    if-ne v3, v4, :cond_1

    .line 74
    .line 75
    aget-byte v3, v2, v0

    .line 76
    .line 77
    if-nez v3, :cond_0

    .line 78
    .line 79
    invoke-virtual {p0, v2}, Lcom/rapid7/client/dcerpc/Header;->setNDR([B)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readShort()S

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    invoke-virtual {p0, v0}, Lcom/rapid7/client/dcerpc/Header;->setFragLength(S)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readShort()S

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    invoke-virtual {p0, v0}, Lcom/rapid7/client/dcerpc/Header;->setAuthLength(S)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/Header;->setCallID(I)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 105
    .line 106
    aget-byte v2, v2, v0

    .line 107
    .line 108
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    new-array v0, v0, [Ljava/lang/Object;

    .line 113
    .line 114
    aput-object v2, v0, v1

    .line 115
    .line 116
    const-string v1, "Floating-Point representation mismatch: %d"

    .line 117
    .line 118
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw p1

    .line 126
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 127
    .line 128
    aget-byte v2, v2, v1

    .line 129
    .line 130
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    new-array v0, v0, [Ljava/lang/Object;

    .line 135
    .line 136
    aput-object v2, v0, v1

    .line 137
    .line 138
    const-string v1, "Integer and Character representation mismatch: %d"

    .line 139
    .line 140
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw p1

    .line 148
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 149
    .line 150
    const-string v3, "PDU type invalid: %d"

    .line 151
    .line 152
    new-array v0, v0, [Ljava/lang/Object;

    .line 153
    .line 154
    aput-object v2, v0, v1

    .line 155
    .line 156
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw p1

    .line 164
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/Header;->getMajorVersion()B

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/Header;->getMinorVersion()B

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    const/4 v4, 0x2

    .line 183
    new-array v4, v4, [Ljava/lang/Object;

    .line 184
    .line 185
    aput-object v2, v4, v1

    .line 186
    .line 187
    aput-object v3, v4, v0

    .line 188
    .line 189
    const-string v0, "Version mismatch: %d.%d != 5.0"

    .line 190
    .line 191
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw p1
.end method
