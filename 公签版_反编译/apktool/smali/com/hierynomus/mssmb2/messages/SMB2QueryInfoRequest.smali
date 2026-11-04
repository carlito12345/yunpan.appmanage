.class public Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoRequest;
.super Lcom/hierynomus/mssmb2/SMB2Packet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoRequest$SMB2QueryInfoType;
    }
.end annotation


# static fields
.field private static final MAX_OUTPUT_BUFFER_LENGTH:J = 0x10000L


# instance fields
.field private final fileId:Lcom/hierynomus/mssmb2/SMB2FileId;

.field private final fileInformationClass:Lcom/hierynomus/msfscc/FileInformationClass;

.field private final fileSystemInformationClass:Lcom/hierynomus/msfscc/FileSystemInformationClass;

.field private final infoType:Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoRequest$SMB2QueryInfoType;

.field private final inputBuffer:[B

.field private final securityInformation:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/hierynomus/msdtyp/SecurityInformation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hierynomus/mssmb2/SMB2Dialect;JJLcom/hierynomus/mssmb2/SMB2FileId;Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoRequest$SMB2QueryInfoType;Lcom/hierynomus/msfscc/FileInformationClass;Lcom/hierynomus/msfscc/FileSystemInformationClass;[BLjava/util/Set;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hierynomus/mssmb2/SMB2Dialect;",
            "JJ",
            "Lcom/hierynomus/mssmb2/SMB2FileId;",
            "Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoRequest$SMB2QueryInfoType;",
            "Lcom/hierynomus/msfscc/FileInformationClass;",
            "Lcom/hierynomus/msfscc/FileSystemInformationClass;",
            "[B",
            "Ljava/util/Set<",
            "Lcom/hierynomus/msdtyp/SecurityInformation;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v8, p0

    .line 2
    const/16 v1, 0x29

    .line 3
    .line 4
    sget-object v3, Lcom/hierynomus/mssmb2/SMB2MessageCommandCode;->SMB2_QUERY_INFO:Lcom/hierynomus/mssmb2/SMB2MessageCommandCode;

    .line 5
    .line 6
    move-object v0, p0

    .line 7
    move-object v2, p1

    .line 8
    move-wide v4, p2

    .line 9
    move-wide v6, p4

    .line 10
    invoke-direct/range {v0 .. v7}, Lcom/hierynomus/mssmb2/SMB2Packet;-><init>(ILcom/hierynomus/mssmb2/SMB2Dialect;Lcom/hierynomus/mssmb2/SMB2MessageCommandCode;JJ)V

    .line 11
    .line 12
    .line 13
    move-object/from16 v0, p7

    .line 14
    .line 15
    iput-object v0, v8, Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoRequest;->infoType:Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoRequest$SMB2QueryInfoType;

    .line 16
    .line 17
    move-object/from16 v0, p8

    .line 18
    .line 19
    iput-object v0, v8, Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoRequest;->fileInformationClass:Lcom/hierynomus/msfscc/FileInformationClass;

    .line 20
    .line 21
    move-object/from16 v0, p9

    .line 22
    .line 23
    iput-object v0, v8, Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoRequest;->fileSystemInformationClass:Lcom/hierynomus/msfscc/FileSystemInformationClass;

    .line 24
    .line 25
    move-object/from16 v0, p10

    .line 26
    .line 27
    iput-object v0, v8, Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoRequest;->inputBuffer:[B

    .line 28
    .line 29
    move-object/from16 v0, p11

    .line 30
    .line 31
    iput-object v0, v8, Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoRequest;->securityInformation:Ljava/util/Set;

    .line 32
    .line 33
    move-object v0, p6

    .line 34
    iput-object v0, v8, Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoRequest;->fileId:Lcom/hierynomus/mssmb2/SMB2FileId;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public writeTo(Lcom/hierynomus/smb/SMBBuffer;)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/hierynomus/mssmb2/SMB2Packet;->structureSize:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt16(I)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoRequest;->infoType:Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoRequest$SMB2QueryInfoType;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoRequest$SMB2QueryInfoType;->getValue()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    long-to-int v1, v0

    .line 13
    int-to-byte v0, v1

    .line 14
    invoke-virtual {p1, v0}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putByte(B)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoRequest;->infoType:Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoRequest$SMB2QueryInfoType;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const-wide/32 v1, 0x10000

    .line 24
    .line 25
    .line 26
    const-wide/16 v3, 0x0

    .line 27
    .line 28
    const/16 v5, 0x68

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    const/4 v7, 0x1

    .line 34
    if-eq v0, v7, :cond_2

    .line 35
    .line 36
    const/4 v7, 0x2

    .line 37
    if-eq v0, v7, :cond_1

    .line 38
    .line 39
    const/4 v7, 0x3

    .line 40
    if-ne v0, v7, :cond_0

    .line 41
    .line 42
    invoke-virtual {p1, v6}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putByte(B)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v1, v2}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt32(J)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v6}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt16(I)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/hierynomus/smb/SMBBuffer;->putReserved2()Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoRequest;->inputBuffer:[B

    .line 55
    .line 56
    array-length v0, v0

    .line 57
    int-to-long v0, v0

    .line 58
    invoke-virtual {p1, v0, v1}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt32(J)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v3, v4}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt32(J)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v3, v4}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt32(J)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoRequest;->fileId:Lcom/hierynomus/mssmb2/SMB2FileId;

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Lcom/hierynomus/mssmb2/SMB2FileId;->write(Lcom/hierynomus/smb/SMBBuffer;)V

    .line 70
    .line 71
    .line 72
    goto/16 :goto_2

    .line 73
    .line 74
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 75
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v1, "Unknown SMB2QueryInfoType: "

    .line 79
    .line 80
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoRequest;->infoType:Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoRequest$SMB2QueryInfoType;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p1

    .line 96
    :cond_1
    invoke-virtual {p1, v6}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putByte(B)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v1, v2}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt32(J)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v6}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt16(I)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/hierynomus/smb/SMBBuffer;->putReserved2()Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v3, v4}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt32(J)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoRequest;->securityInformation:Ljava/util/Set;

    .line 112
    .line 113
    invoke-static {v0}, Lcom/hierynomus/protocol/commons/EnumWithValue$EnumUtils;->toLong(Ljava/util/Collection;)J

    .line 114
    .line 115
    .line 116
    move-result-wide v0

    .line 117
    invoke-virtual {p1, v0, v1}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt32(J)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v3, v4}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt32(J)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoRequest;->fileId:Lcom/hierynomus/mssmb2/SMB2FileId;

    .line 124
    .line 125
    invoke-virtual {v0, p1}, Lcom/hierynomus/mssmb2/SMB2FileId;->write(Lcom/hierynomus/smb/SMBBuffer;)V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoRequest;->fileSystemInformationClass:Lcom/hierynomus/msfscc/FileSystemInformationClass;

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/hierynomus/msfscc/FileSystemInformationClass;->getValue()J

    .line 132
    .line 133
    .line 134
    move-result-wide v7

    .line 135
    long-to-int v0, v7

    .line 136
    int-to-byte v0, v0

    .line 137
    invoke-virtual {p1, v0}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putByte(B)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v1, v2}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt32(J)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, v6}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt16(I)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/hierynomus/smb/SMBBuffer;->putReserved2()Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v3, v4}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt32(J)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v3, v4}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt32(J)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, v3, v4}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt32(J)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoRequest;->fileId:Lcom/hierynomus/mssmb2/SMB2FileId;

    .line 159
    .line 160
    invoke-virtual {v0, p1}, Lcom/hierynomus/mssmb2/SMB2FileId;->write(Lcom/hierynomus/smb/SMBBuffer;)V

    .line 161
    .line 162
    .line 163
    :goto_0
    const/4 v5, 0x0

    .line 164
    goto :goto_2

    .line 165
    :cond_3
    iget-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoRequest;->fileInformationClass:Lcom/hierynomus/msfscc/FileInformationClass;

    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/hierynomus/msfscc/FileInformationClass;->getValue()J

    .line 168
    .line 169
    .line 170
    move-result-wide v7

    .line 171
    long-to-int v0, v7

    .line 172
    int-to-byte v0, v0

    .line 173
    invoke-virtual {p1, v0}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putByte(B)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v1, v2}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt32(J)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoRequest;->fileInformationClass:Lcom/hierynomus/msfscc/FileInformationClass;

    .line 180
    .line 181
    sget-object v1, Lcom/hierynomus/msfscc/FileInformationClass;->FileFullEaInformation:Lcom/hierynomus/msfscc/FileInformationClass;

    .line 182
    .line 183
    if-ne v0, v1, :cond_4

    .line 184
    .line 185
    invoke-virtual {p1, v6}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt16(I)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1}, Lcom/hierynomus/smb/SMBBuffer;->putReserved2()Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 189
    .line 190
    .line 191
    iget-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoRequest;->inputBuffer:[B

    .line 192
    .line 193
    array-length v0, v0

    .line 194
    int-to-long v0, v0

    .line 195
    invoke-virtual {p1, v0, v1}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt32(J)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 196
    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_4
    invoke-virtual {p1, v6}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt16(I)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1}, Lcom/hierynomus/smb/SMBBuffer;->putReserved2()Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1, v3, v4}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt32(J)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 206
    .line 207
    .line 208
    const/4 v5, 0x0

    .line 209
    :goto_1
    invoke-virtual {p1, v3, v4}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt32(J)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1, v3, v4}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt32(J)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 213
    .line 214
    .line 215
    iget-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoRequest;->fileId:Lcom/hierynomus/mssmb2/SMB2FileId;

    .line 216
    .line 217
    invoke-virtual {v0, p1}, Lcom/hierynomus/mssmb2/SMB2FileId;->write(Lcom/hierynomus/smb/SMBBuffer;)V

    .line 218
    .line 219
    .line 220
    :goto_2
    if-lez v5, :cond_5

    .line 221
    .line 222
    iget-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoRequest;->inputBuffer:[B

    .line 223
    .line 224
    invoke-virtual {p1, v0}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putRawBytes([B)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 225
    .line 226
    .line 227
    :cond_5
    return-void
.end method
