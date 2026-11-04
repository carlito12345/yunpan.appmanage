.class public Lcom/rapid7/helper/smbj/share/NamedPipe;
.super Lcom/rapid7/helper/smbj/io/SMB2SessionMessage;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final FSCTL_PIPE_TRANSCEIVE:I = 0x11c017

.field private static final IOCTL_SUCCESS:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/hierynomus/mserref/NtStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static final READ_SUCCESS:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/hierynomus/mserref/NtStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static final WRITE_SUCCESS:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/hierynomus/mserref/NtStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final fileID:Lcom/hierynomus/mssmb2/SMB2FileId;

.field private final readBufferSize:I

.field private final share:Lcom/hierynomus/smbj/share/PipeShare;

.field private final transactBufferSize:I

.field private final writeBufferSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/hierynomus/mserref/NtStatus;->STATUS_SUCCESS:Lcom/hierynomus/mserref/NtStatus;

    .line 2
    .line 3
    sget-object v1, Lcom/hierynomus/mserref/NtStatus;->STATUS_BUFFER_OVERFLOW:Lcom/hierynomus/mserref/NtStatus;

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    sput-object v2, Lcom/rapid7/helper/smbj/share/NamedPipe;->IOCTL_SUCCESS:Ljava/util/EnumSet;

    .line 10
    .line 11
    sget-object v2, Lcom/hierynomus/mserref/NtStatus;->STATUS_END_OF_FILE:Lcom/hierynomus/mserref/NtStatus;

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sput-object v1, Lcom/rapid7/helper/smbj/share/NamedPipe;->READ_SUCCESS:Ljava/util/EnumSet;

    .line 18
    .line 19
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/rapid7/helper/smbj/share/NamedPipe;->WRITE_SUCCESS:Ljava/util/EnumSet;

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/hierynomus/smbj/session/Session;Lcom/hierynomus/smbj/share/PipeShare;Ljava/lang/String;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p2 .. p2}, Lcom/hierynomus/smbj/share/Share;->getTreeConnect()Lcom/hierynomus/smbj/share/TreeConnect;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/hierynomus/smbj/share/TreeConnect;->getConfig()Lcom/hierynomus/smbj/SmbConfig;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    move-object/from16 v2, p1

    .line 12
    .line 13
    invoke-direct {v0, v2, v1}, Lcom/rapid7/helper/smbj/io/SMB2SessionMessage;-><init>(Lcom/hierynomus/smbj/session/Session;Lcom/hierynomus/smbj/SmbConfig;)V

    .line 14
    .line 15
    .line 16
    move-object/from16 v1, p2

    .line 17
    .line 18
    iput-object v1, v0, Lcom/rapid7/helper/smbj/share/NamedPipe;->share:Lcom/hierynomus/smbj/share/PipeShare;

    .line 19
    .line 20
    new-instance v15, Lcom/hierynomus/mssmb2/messages/SMB2CreateRequest;

    .line 21
    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/hierynomus/smbj/session/Session;->getConnection()Lcom/hierynomus/smbj/connection/Connection;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3}, Lcom/hierynomus/smbj/connection/Connection;->getNegotiatedProtocol()Lcom/hierynomus/smbj/connection/NegotiatedProtocol;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3}, Lcom/hierynomus/smbj/connection/NegotiatedProtocol;->getDialect()Lcom/hierynomus/mssmb2/SMB2Dialect;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/hierynomus/smbj/session/Session;->getSessionId()J

    .line 35
    .line 36
    .line 37
    move-result-wide v5

    .line 38
    invoke-virtual/range {p2 .. p2}, Lcom/hierynomus/smbj/share/Share;->getTreeConnect()Lcom/hierynomus/smbj/share/TreeConnect;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3}, Lcom/hierynomus/smbj/share/TreeConnect;->getTreeId()J

    .line 43
    .line 44
    .line 45
    move-result-wide v7

    .line 46
    sget-object v9, Lcom/hierynomus/mssmb2/SMB2ImpersonationLevel;->Impersonation:Lcom/hierynomus/mssmb2/SMB2ImpersonationLevel;

    .line 47
    .line 48
    sget-object v3, Lcom/hierynomus/msdtyp/AccessMask;->MAXIMUM_ALLOWED:Lcom/hierynomus/msdtyp/AccessMask;

    .line 49
    .line 50
    invoke-static {v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 51
    .line 52
    .line 53
    move-result-object v10

    .line 54
    sget-object v3, Lcom/hierynomus/mssmb2/SMB2ShareAccess;->FILE_SHARE_READ:Lcom/hierynomus/mssmb2/SMB2ShareAccess;

    .line 55
    .line 56
    sget-object v11, Lcom/hierynomus/mssmb2/SMB2ShareAccess;->FILE_SHARE_WRITE:Lcom/hierynomus/mssmb2/SMB2ShareAccess;

    .line 57
    .line 58
    invoke-static {v3, v11}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 59
    .line 60
    .line 61
    move-result-object v12

    .line 62
    sget-object v13, Lcom/hierynomus/mssmb2/SMB2CreateDisposition;->FILE_OPEN_IF:Lcom/hierynomus/mssmb2/SMB2CreateDisposition;

    .line 63
    .line 64
    new-instance v14, Lcom/hierynomus/smbj/common/SmbPath;

    .line 65
    .line 66
    invoke-virtual/range {p2 .. p2}, Lcom/hierynomus/smbj/share/Share;->getSmbPath()Lcom/hierynomus/smbj/common/SmbPath;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    move-object/from16 v11, p3

    .line 71
    .line 72
    invoke-direct {v14, v3, v11}, Lcom/hierynomus/smbj/common/SmbPath;-><init>(Lcom/hierynomus/smbj/common/SmbPath;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const/4 v11, 0x0

    .line 76
    const/16 v16, 0x0

    .line 77
    .line 78
    move-object v3, v15

    .line 79
    move-object/from16 v17, v14

    .line 80
    .line 81
    move-object/from16 v14, v16

    .line 82
    .line 83
    move-object v1, v15

    .line 84
    move-object/from16 v15, v17

    .line 85
    .line 86
    invoke-direct/range {v3 .. v15}, Lcom/hierynomus/mssmb2/messages/SMB2CreateRequest;-><init>(Lcom/hierynomus/mssmb2/SMB2Dialect;JJLcom/hierynomus/mssmb2/SMB2ImpersonationLevel;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;Lcom/hierynomus/smbj/common/SmbPath;)V

    .line 87
    .line 88
    .line 89
    sget-object v3, Lcom/hierynomus/mserref/NtStatus;->STATUS_SUCCESS:Lcom/hierynomus/mserref/NtStatus;

    .line 90
    .line 91
    invoke-static {v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v0, v1, v3}, Lcom/rapid7/helper/smbj/io/SMB2SessionMessage;->sendAndRead(Lcom/hierynomus/mssmb2/SMB2Packet;Ljava/util/EnumSet;)Lcom/hierynomus/mssmb2/SMB2Packet;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    check-cast v1, Lcom/hierynomus/mssmb2/messages/SMB2CreateResponse;

    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/hierynomus/mssmb2/messages/SMB2CreateResponse;->getFileId()Lcom/hierynomus/mssmb2/SMB2FileId;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    iput-object v1, v0, Lcom/rapid7/helper/smbj/share/NamedPipe;->fileID:Lcom/hierynomus/mssmb2/SMB2FileId;

    .line 106
    .line 107
    invoke-virtual/range {p2 .. p2}, Lcom/hierynomus/smbj/share/Share;->getTreeConnect()Lcom/hierynomus/smbj/share/TreeConnect;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v1}, Lcom/hierynomus/smbj/share/TreeConnect;->getConfig()Lcom/hierynomus/smbj/SmbConfig;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v1}, Lcom/hierynomus/smbj/SmbConfig;->getTransactBufferSize()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    invoke-virtual/range {p1 .. p1}, Lcom/hierynomus/smbj/session/Session;->getConnection()Lcom/hierynomus/smbj/connection/Connection;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-virtual {v3}, Lcom/hierynomus/smbj/connection/Connection;->getNegotiatedProtocol()Lcom/hierynomus/smbj/connection/NegotiatedProtocol;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v3}, Lcom/hierynomus/smbj/connection/NegotiatedProtocol;->getMaxTransactSize()I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    iput v1, v0, Lcom/rapid7/helper/smbj/share/NamedPipe;->transactBufferSize:I

    .line 136
    .line 137
    invoke-virtual/range {p2 .. p2}, Lcom/hierynomus/smbj/share/Share;->getTreeConnect()Lcom/hierynomus/smbj/share/TreeConnect;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v1}, Lcom/hierynomus/smbj/share/TreeConnect;->getConfig()Lcom/hierynomus/smbj/SmbConfig;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v1}, Lcom/hierynomus/smbj/SmbConfig;->getReadBufferSize()I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    invoke-virtual/range {p1 .. p1}, Lcom/hierynomus/smbj/session/Session;->getConnection()Lcom/hierynomus/smbj/connection/Connection;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-virtual {v3}, Lcom/hierynomus/smbj/connection/Connection;->getNegotiatedProtocol()Lcom/hierynomus/smbj/connection/NegotiatedProtocol;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {v3}, Lcom/hierynomus/smbj/connection/NegotiatedProtocol;->getMaxReadSize()I

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    iput v1, v0, Lcom/rapid7/helper/smbj/share/NamedPipe;->readBufferSize:I

    .line 166
    .line 167
    invoke-virtual/range {p2 .. p2}, Lcom/hierynomus/smbj/share/Share;->getTreeConnect()Lcom/hierynomus/smbj/share/TreeConnect;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v1}, Lcom/hierynomus/smbj/share/TreeConnect;->getConfig()Lcom/hierynomus/smbj/SmbConfig;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v1}, Lcom/hierynomus/smbj/SmbConfig;->getWriteBufferSize()I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    invoke-virtual/range {p1 .. p1}, Lcom/hierynomus/smbj/session/Session;->getConnection()Lcom/hierynomus/smbj/connection/Connection;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-virtual {v2}, Lcom/hierynomus/smbj/connection/Connection;->getNegotiatedProtocol()Lcom/hierynomus/smbj/connection/NegotiatedProtocol;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-virtual {v2}, Lcom/hierynomus/smbj/connection/NegotiatedProtocol;->getMaxWriteSize()I

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    iput v1, v0, Lcom/rapid7/helper/smbj/share/NamedPipe;->writeBufferSize:I

    .line 196
    .line 197
    return-void
.end method

.method private _ioctl([B)Lcom/hierynomus/mssmb2/messages/SMB2IoctlResponse;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v13, Lcom/hierynomus/mssmb2/messages/SMB2IoctlRequest;

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/rapid7/helper/smbj/io/SMB2SessionMessage;->getDialect()Lcom/hierynomus/mssmb2/SMB2Dialect;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/rapid7/helper/smbj/io/SMB2SessionMessage;->getSessionID()J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    iget-object v1, v0, Lcom/rapid7/helper/smbj/share/NamedPipe;->share:Lcom/hierynomus/smbj/share/PipeShare;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/hierynomus/smbj/share/Share;->getTreeConnect()Lcom/hierynomus/smbj/share/TreeConnect;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/hierynomus/smbj/share/TreeConnect;->getTreeId()J

    .line 20
    .line 21
    .line 22
    move-result-wide v5

    .line 23
    iget-object v9, v0, Lcom/rapid7/helper/smbj/share/NamedPipe;->fileID:Lcom/hierynomus/mssmb2/SMB2FileId;

    .line 24
    .line 25
    new-instance v10, Lcom/hierynomus/smbj/io/ArrayByteChunkProvider;

    .line 26
    .line 27
    move-object/from16 v1, p1

    .line 28
    .line 29
    array-length v7, v1

    .line 30
    const-wide/16 v18, 0x0

    .line 31
    .line 32
    const/16 v16, 0x0

    .line 33
    .line 34
    move-object v14, v10

    .line 35
    move-object/from16 v15, p1

    .line 36
    .line 37
    move/from16 v17, v7

    .line 38
    .line 39
    invoke-direct/range {v14 .. v19}, Lcom/hierynomus/smbj/io/ArrayByteChunkProvider;-><init>([BIIJ)V

    .line 40
    .line 41
    .line 42
    const/4 v11, 0x1

    .line 43
    iget v12, v0, Lcom/rapid7/helper/smbj/share/NamedPipe;->transactBufferSize:I

    .line 44
    .line 45
    const-wide/32 v7, 0x11c017

    .line 46
    .line 47
    .line 48
    move-object v1, v13

    .line 49
    invoke-direct/range {v1 .. v12}, Lcom/hierynomus/mssmb2/messages/SMB2IoctlRequest;-><init>(Lcom/hierynomus/mssmb2/SMB2Dialect;JJJLcom/hierynomus/mssmb2/SMB2FileId;Lcom/hierynomus/smbj/io/ByteChunkProvider;ZI)V

    .line 50
    .line 51
    .line 52
    sget-object v1, Lcom/rapid7/helper/smbj/share/NamedPipe;->IOCTL_SUCCESS:Ljava/util/EnumSet;

    .line 53
    .line 54
    invoke-virtual {v0, v13, v1}, Lcom/rapid7/helper/smbj/io/SMB2SessionMessage;->sendAndRead(Lcom/hierynomus/mssmb2/SMB2Packet;Ljava/util/EnumSet;)Lcom/hierynomus/mssmb2/SMB2Packet;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lcom/hierynomus/mssmb2/messages/SMB2IoctlResponse;

    .line 59
    .line 60
    return-object v1
.end method

.method private _read()Lcom/hierynomus/mssmb2/messages/SMB2ReadResponse;
    .locals 11

    .line 1
    new-instance v10, Lcom/hierynomus/mssmb2/messages/SMB2ReadRequest;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/rapid7/helper/smbj/io/SMB2SessionMessage;->getDialect()Lcom/hierynomus/mssmb2/SMB2Dialect;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/rapid7/helper/smbj/share/NamedPipe;->fileID:Lcom/hierynomus/mssmb2/SMB2FileId;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/rapid7/helper/smbj/io/SMB2SessionMessage;->getSessionID()J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    iget-object v0, p0, Lcom/rapid7/helper/smbj/share/NamedPipe;->share:Lcom/hierynomus/smbj/share/PipeShare;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/hierynomus/smbj/share/Share;->getTreeConnect()Lcom/hierynomus/smbj/share/TreeConnect;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/hierynomus/smbj/share/TreeConnect;->getTreeId()J

    .line 20
    .line 21
    .line 22
    move-result-wide v5

    .line 23
    const-wide/16 v7, 0x0

    .line 24
    .line 25
    iget v9, p0, Lcom/rapid7/helper/smbj/share/NamedPipe;->readBufferSize:I

    .line 26
    .line 27
    move-object v0, v10

    .line 28
    invoke-direct/range {v0 .. v9}, Lcom/hierynomus/mssmb2/messages/SMB2ReadRequest;-><init>(Lcom/hierynomus/mssmb2/SMB2Dialect;Lcom/hierynomus/mssmb2/SMB2FileId;JJJI)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lcom/rapid7/helper/smbj/share/NamedPipe;->READ_SUCCESS:Ljava/util/EnumSet;

    .line 32
    .line 33
    invoke-virtual {p0, v10, v0}, Lcom/rapid7/helper/smbj/io/SMB2SessionMessage;->sendAndRead(Lcom/hierynomus/mssmb2/SMB2Packet;Ljava/util/EnumSet;)Lcom/hierynomus/mssmb2/SMB2Packet;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/hierynomus/mssmb2/messages/SMB2ReadResponse;

    .line 38
    .line 39
    return-object v0
.end method

.method private _write([B)Lcom/hierynomus/mssmb2/messages/SMB2WriteResponse;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v10, Lcom/hierynomus/mssmb2/messages/SMB2WriteRequest;

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/rapid7/helper/smbj/io/SMB2SessionMessage;->getDialect()Lcom/hierynomus/mssmb2/SMB2Dialect;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v3, v0, Lcom/rapid7/helper/smbj/share/NamedPipe;->fileID:Lcom/hierynomus/mssmb2/SMB2FileId;

    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/rapid7/helper/smbj/io/SMB2SessionMessage;->getSessionID()J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    iget-object v1, v0, Lcom/rapid7/helper/smbj/share/NamedPipe;->share:Lcom/hierynomus/smbj/share/PipeShare;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/hierynomus/smbj/share/Share;->getTreeConnect()Lcom/hierynomus/smbj/share/TreeConnect;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/hierynomus/smbj/share/TreeConnect;->getTreeId()J

    .line 22
    .line 23
    .line 24
    move-result-wide v6

    .line 25
    new-instance v8, Lcom/hierynomus/smbj/io/ArrayByteChunkProvider;

    .line 26
    .line 27
    move-object/from16 v1, p1

    .line 28
    .line 29
    array-length v14, v1

    .line 30
    const-wide/16 v15, 0x0

    .line 31
    .line 32
    const/4 v13, 0x0

    .line 33
    move-object v11, v8

    .line 34
    move-object/from16 v12, p1

    .line 35
    .line 36
    invoke-direct/range {v11 .. v16}, Lcom/hierynomus/smbj/io/ArrayByteChunkProvider;-><init>([BIIJ)V

    .line 37
    .line 38
    .line 39
    iget v9, v0, Lcom/rapid7/helper/smbj/share/NamedPipe;->writeBufferSize:I

    .line 40
    .line 41
    move-object v1, v10

    .line 42
    invoke-direct/range {v1 .. v9}, Lcom/hierynomus/mssmb2/messages/SMB2WriteRequest;-><init>(Lcom/hierynomus/mssmb2/SMB2Dialect;Lcom/hierynomus/mssmb2/SMB2FileId;JJLcom/hierynomus/smbj/io/ByteChunkProvider;I)V

    .line 43
    .line 44
    .line 45
    sget-object v1, Lcom/rapid7/helper/smbj/share/NamedPipe;->WRITE_SUCCESS:Ljava/util/EnumSet;

    .line 46
    .line 47
    invoke-virtual {v0, v10, v1}, Lcom/rapid7/helper/smbj/io/SMB2SessionMessage;->sendAndRead(Lcom/hierynomus/mssmb2/SMB2Packet;Ljava/util/EnumSet;)Lcom/hierynomus/mssmb2/SMB2Packet;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/hierynomus/mssmb2/messages/SMB2WriteResponse;

    .line 52
    .line 53
    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/rapid7/helper/smbj/share/NamedPipe;->share:Lcom/hierynomus/smbj/share/PipeShare;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/rapid7/helper/smbj/share/NamedPipe;->fileID:Lcom/hierynomus/mssmb2/SMB2FileId;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/hierynomus/smbj/share/PipeShare;->closeFileId(Lcom/hierynomus/mssmb2/SMB2FileId;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public read()[B
    .locals 3

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    const/16 v1, 0x1000

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/rapid7/helper/smbj/share/NamedPipe;->_read()Lcom/hierynomus/mssmb2/messages/SMB2ReadResponse;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/hierynomus/mssmb2/messages/SMB2ReadResponse;->getData()[B

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/hierynomus/smb/SMBPacket;->getHeader()Lcom/hierynomus/smb/SMBHeader;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/hierynomus/mssmb2/SMB2PacketHeader;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/hierynomus/mssmb2/SMB2PacketHeader;->getStatusCode()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    invoke-static {v1, v2}, Lcom/hierynomus/mserref/NtStatus;->valueOf(J)Lcom/hierynomus/mserref/NtStatus;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    sget-object v2, Lcom/hierynomus/mserref/NtStatus;->STATUS_BUFFER_OVERFLOW:Lcom/hierynomus/mserref/NtStatus;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    new-instance v1, Lcom/hierynomus/smbj/common/SMBRuntimeException;

    .line 48
    .line 49
    invoke-direct {v1, v0}, Lcom/hierynomus/smbj/common/SMBRuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :goto_0
    throw v1

    .line 54
    :goto_1
    goto :goto_0
.end method

.method public transact([B)[B
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/rapid7/helper/smbj/share/NamedPipe;->_ioctl([B)Lcom/hierynomus/mssmb2/messages/SMB2IoctlResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 6
    .line 7
    const/16 v1, 0x1000

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/hierynomus/mssmb2/messages/SMB2IoctlResponse;->getOutputBuffer()[B

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/hierynomus/smb/SMBPacket;->getHeader()Lcom/hierynomus/smb/SMBHeader;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/hierynomus/mssmb2/SMB2PacketHeader;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/hierynomus/mssmb2/SMB2PacketHeader;->getStatusCode()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    invoke-static {v1, v2}, Lcom/hierynomus/mserref/NtStatus;->valueOf(J)Lcom/hierynomus/mserref/NtStatus;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    sget-object v1, Lcom/hierynomus/mserref/NtStatus;->STATUS_BUFFER_OVERFLOW:Lcom/hierynomus/mserref/NtStatus;

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/rapid7/helper/smbj/share/NamedPipe;->read()[B

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1

    .line 53
    :catch_0
    move-exception p1

    .line 54
    new-instance v0, Lcom/hierynomus/smbj/common/SMBRuntimeException;

    .line 55
    .line 56
    invoke-direct {v0, p1}, Lcom/hierynomus/smbj/common/SMBRuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    throw v0
.end method

.method public write([B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/rapid7/helper/smbj/share/NamedPipe;->_write([B)Lcom/hierynomus/mssmb2/messages/SMB2WriteResponse;

    .line 2
    .line 3
    .line 4
    return-void
.end method
