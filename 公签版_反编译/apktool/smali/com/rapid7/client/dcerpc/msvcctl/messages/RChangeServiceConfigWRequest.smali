.class public Lcom/rapid7/client/dcerpc/msvcctl/messages/RChangeServiceConfigWRequest;
.super Lcom/rapid7/client/dcerpc/messages/RequestCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rapid7/client/dcerpc/messages/RequestCall<",
        "Lcom/rapid7/client/dcerpc/msvcctl/messages/RChangeServiceConfigWResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final OP_NUM:S = 0xbs


# instance fields
.field private final dwErrorControl:I

.field private final dwServiceType:I

.field private final dwStartType:I

.field private final hService:[B

.field private final lpBinaryPathName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

.field private final lpDependencies:[Ljava/lang/String;

.field private final lpDisplayName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

.field private final lpDwTagId:Ljava/lang/Integer;

.field private final lpLoadOrderGroup:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

.field private final lpPassword:Ljava/lang/String;

.field private final lpServiceStartName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;


# direct methods
.method public constructor <init>([BIIILcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;Ljava/lang/Integer;[Ljava/lang/String;Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;Ljava/lang/String;Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;)V
    .locals 1

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/rapid7/client/dcerpc/messages/RequestCall;-><init>(S)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RChangeServiceConfigWRequest;->hService:[B

    .line 7
    .line 8
    iput p2, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RChangeServiceConfigWRequest;->dwServiceType:I

    .line 9
    .line 10
    iput p3, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RChangeServiceConfigWRequest;->dwStartType:I

    .line 11
    .line 12
    iput p4, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RChangeServiceConfigWRequest;->dwErrorControl:I

    .line 13
    .line 14
    iput-object p5, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RChangeServiceConfigWRequest;->lpBinaryPathName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 15
    .line 16
    iput-object p6, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RChangeServiceConfigWRequest;->lpLoadOrderGroup:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 17
    .line 18
    iput-object p7, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RChangeServiceConfigWRequest;->lpDwTagId:Ljava/lang/Integer;

    .line 19
    .line 20
    iput-object p8, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RChangeServiceConfigWRequest;->lpDependencies:[Ljava/lang/String;

    .line 21
    .line 22
    iput-object p9, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RChangeServiceConfigWRequest;->lpServiceStartName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 23
    .line 24
    iput-object p10, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RChangeServiceConfigWRequest;->lpPassword:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p11, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RChangeServiceConfigWRequest;->lpDisplayName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public bridge synthetic getResponseObject()Lcom/rapid7/client/dcerpc/messages/RequestResponse;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/messages/RChangeServiceConfigWRequest;->getResponseObject()Lcom/rapid7/client/dcerpc/msvcctl/messages/RChangeServiceConfigWResponse;

    move-result-object v0

    return-object v0
.end method

.method public getResponseObject()Lcom/rapid7/client/dcerpc/msvcctl/messages/RChangeServiceConfigWResponse;
    .locals 1

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RChangeServiceConfigWResponse;

    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/msvcctl/messages/RChangeServiceConfigWResponse;-><init>()V

    return-object v0
.end method

.method public marshal(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RChangeServiceConfigWRequest;->hService:[B

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->write([B)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RChangeServiceConfigWRequest;->dwServiceType:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RChangeServiceConfigWRequest;->dwStartType:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RChangeServiceConfigWRequest;->dwErrorControl:I

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RChangeServiceConfigWRequest;->lpBinaryPathName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeReferentID(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RChangeServiceConfigWRequest;->lpBinaryPathName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeMarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;

    .line 32
    .line 33
    .line 34
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RChangeServiceConfigWRequest;->lpLoadOrderGroup:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeReferentID(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RChangeServiceConfigWRequest;->lpLoadOrderGroup:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeMarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;

    .line 50
    .line 51
    .line 52
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RChangeServiceConfigWRequest;->lpDwTagId:Ljava/lang/Integer;

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeReferentID()V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RChangeServiceConfigWRequest;->lpDwTagId:Ljava/lang/Integer;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeNull()V

    .line 81
    .line 82
    .line 83
    :goto_0
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RChangeServiceConfigWRequest;->lpDependencies:[Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeReferentID(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    const/4 v1, 0x2

    .line 90
    const/4 v2, 0x0

    .line 91
    if-eqz v0, :cond_7

    .line 92
    .line 93
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RChangeServiceConfigWRequest;->lpDependencies:[Ljava/lang/String;

    .line 94
    .line 95
    array-length v3, v0

    .line 96
    const/4 v4, 0x0

    .line 97
    const/4 v5, 0x2

    .line 98
    :goto_1
    if-ge v4, v3, :cond_4

    .line 99
    .line 100
    aget-object v6, v0, v4

    .line 101
    .line 102
    if-nez v6, :cond_3

    .line 103
    .line 104
    const/4 v6, 0x0

    .line 105
    goto :goto_2

    .line 106
    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    mul-int/lit8 v6, v6, 0x2

    .line 111
    .line 112
    :goto_2
    add-int/2addr v6, v1

    .line 113
    add-int/2addr v5, v6

    .line 114
    add-int/lit8 v4, v4, 0x1

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    invoke-virtual {p1, v5}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RChangeServiceConfigWRequest;->lpDependencies:[Ljava/lang/String;

    .line 121
    .line 122
    array-length v3, v0

    .line 123
    const/4 v4, 0x0

    .line 124
    :goto_3
    if-ge v4, v3, :cond_6

    .line 125
    .line 126
    aget-object v6, v0, v4

    .line 127
    .line 128
    if-eqz v6, :cond_5

    .line 129
    .line 130
    const/4 v7, 0x0

    .line 131
    :goto_4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 132
    .line 133
    .line 134
    move-result v8

    .line 135
    if-ge v7, v8, :cond_5

    .line 136
    .line 137
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    invoke-virtual {p1, v8}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeChar(I)V

    .line 142
    .line 143
    .line 144
    add-int/lit8 v7, v7, 0x1

    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_5
    invoke-virtual {p1, v2}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeChar(I)V

    .line 148
    .line 149
    .line 150
    add-int/lit8 v4, v4, 0x1

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_6
    invoke-virtual {p1, v2}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeChar(I)V

    .line 154
    .line 155
    .line 156
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 157
    .line 158
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v5}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 162
    .line 163
    .line 164
    goto :goto_5

    .line 165
    :cond_7
    invoke-virtual {p1, v2}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 166
    .line 167
    .line 168
    :goto_5
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RChangeServiceConfigWRequest;->lpServiceStartName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 169
    .line 170
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeReferentID(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_8

    .line 175
    .line 176
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RChangeServiceConfigWRequest;->lpServiceStartName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 177
    .line 178
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeMarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;

    .line 179
    .line 180
    .line 181
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 182
    .line 183
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 184
    .line 185
    .line 186
    :cond_8
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RChangeServiceConfigWRequest;->lpPassword:Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeReferentID(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-eqz v0, :cond_a

    .line 193
    .line 194
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RChangeServiceConfigWRequest;->lpPassword:Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    mul-int/lit8 v0, v0, 0x2

    .line 201
    .line 202
    add-int/2addr v0, v1

    .line 203
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 204
    .line 205
    .line 206
    const/4 v1, 0x0

    .line 207
    :goto_6
    iget-object v3, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RChangeServiceConfigWRequest;->lpPassword:Ljava/lang/String;

    .line 208
    .line 209
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    if-ge v1, v3, :cond_9

    .line 214
    .line 215
    iget-object v3, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RChangeServiceConfigWRequest;->lpPassword:Ljava/lang/String;

    .line 216
    .line 217
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    invoke-virtual {p1, v3}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeChar(I)V

    .line 222
    .line 223
    .line 224
    add-int/lit8 v1, v1, 0x1

    .line 225
    .line 226
    goto :goto_6

    .line 227
    :cond_9
    invoke-virtual {p1, v2}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeChar(I)V

    .line 228
    .line 229
    .line 230
    sget-object v1, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 231
    .line 232
    invoke-virtual {p1, v1}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 236
    .line 237
    .line 238
    goto :goto_7

    .line 239
    :cond_a
    invoke-virtual {p1, v2}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 240
    .line 241
    .line 242
    :goto_7
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RChangeServiceConfigWRequest;->lpDisplayName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 243
    .line 244
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeReferentID(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-eqz v0, :cond_b

    .line 249
    .line 250
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RChangeServiceConfigWRequest;->lpDisplayName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 251
    .line 252
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeMarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;

    .line 253
    .line 254
    .line 255
    :cond_b
    return-void
.end method
