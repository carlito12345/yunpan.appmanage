.class public Lcom/hierynomus/mssmb2/messages/SMB2CreateRequest;
.super Lcom/hierynomus/mssmb2/SMB2Packet;
.source "SourceFile"


# instance fields
.field private final accessMask:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/hierynomus/msdtyp/AccessMask;",
            ">;"
        }
    .end annotation
.end field

.field private final createContexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hierynomus/mssmb2/messages/create/SMB2CreateContext;",
            ">;"
        }
    .end annotation
.end field

.field private final createDisposition:Lcom/hierynomus/mssmb2/SMB2CreateDisposition;

.field private final createOptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/hierynomus/mssmb2/SMB2CreateOptions;",
            ">;"
        }
    .end annotation
.end field

.field private final fileAttributes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/hierynomus/msfscc/FileAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private final impersonationLevel:Lcom/hierynomus/mssmb2/SMB2ImpersonationLevel;

.field private final path:Lcom/hierynomus/smbj/common/SmbPath;

.field private final requestedOplockLevel:Lcom/hierynomus/mssmb2/SMB2OplockLevel;

.field private final shareAccess:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/hierynomus/mssmb2/SMB2ShareAccess;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hierynomus/mssmb2/SMB2Dialect;JJLcom/hierynomus/mssmb2/SMB2ImpersonationLevel;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;Lcom/hierynomus/smbj/common/SmbPath;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hierynomus/mssmb2/SMB2Dialect;",
            "JJ",
            "Lcom/hierynomus/mssmb2/SMB2ImpersonationLevel;",
            "Ljava/util/Set<",
            "Lcom/hierynomus/msdtyp/AccessMask;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/hierynomus/msfscc/FileAttributes;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/hierynomus/mssmb2/SMB2ShareAccess;",
            ">;",
            "Lcom/hierynomus/mssmb2/SMB2CreateDisposition;",
            "Ljava/util/Set<",
            "Lcom/hierynomus/mssmb2/SMB2CreateOptions;",
            ">;",
            "Lcom/hierynomus/smbj/common/SmbPath;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v13, Lcom/hierynomus/mssmb2/SMB2OplockLevel;->SMB2_OPLOCK_LEVEL_NONE:Lcom/hierynomus/mssmb2/SMB2OplockLevel;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    .line 3
    invoke-direct/range {v0 .. v14}, Lcom/hierynomus/mssmb2/messages/SMB2CreateRequest;-><init>(Lcom/hierynomus/mssmb2/SMB2Dialect;JJLcom/hierynomus/mssmb2/SMB2ImpersonationLevel;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;Lcom/hierynomus/smbj/common/SmbPath;Lcom/hierynomus/mssmb2/SMB2OplockLevel;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/hierynomus/mssmb2/SMB2Dialect;JJLcom/hierynomus/mssmb2/SMB2ImpersonationLevel;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;Lcom/hierynomus/smbj/common/SmbPath;Lcom/hierynomus/mssmb2/SMB2OplockLevel;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hierynomus/mssmb2/SMB2Dialect;",
            "JJ",
            "Lcom/hierynomus/mssmb2/SMB2ImpersonationLevel;",
            "Ljava/util/Set<",
            "Lcom/hierynomus/msdtyp/AccessMask;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/hierynomus/msfscc/FileAttributes;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/hierynomus/mssmb2/SMB2ShareAccess;",
            ">;",
            "Lcom/hierynomus/mssmb2/SMB2CreateDisposition;",
            "Ljava/util/Set<",
            "Lcom/hierynomus/mssmb2/SMB2CreateOptions;",
            ">;",
            "Lcom/hierynomus/smbj/common/SmbPath;",
            "Lcom/hierynomus/mssmb2/SMB2OplockLevel;",
            "Ljava/util/List<",
            "Lcom/hierynomus/mssmb2/messages/create/SMB2CreateContext;",
            ">;)V"
        }
    .end annotation

    move-object v8, p0

    const/16 v1, 0x39

    .line 4
    sget-object v3, Lcom/hierynomus/mssmb2/SMB2MessageCommandCode;->SMB2_CREATE:Lcom/hierynomus/mssmb2/SMB2MessageCommandCode;

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/hierynomus/mssmb2/SMB2Packet;-><init>(ILcom/hierynomus/mssmb2/SMB2Dialect;Lcom/hierynomus/mssmb2/SMB2MessageCommandCode;JJ)V

    .line 5
    sget-object v0, Lcom/hierynomus/mssmb2/SMB2ImpersonationLevel;->Identification:Lcom/hierynomus/mssmb2/SMB2ImpersonationLevel;

    move-object v1, p6

    invoke-static {p6, v0}, Lcom/hierynomus/protocol/commons/EnumWithValue$EnumUtils;->ensureNotNull(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hierynomus/mssmb2/SMB2ImpersonationLevel;

    iput-object v0, v8, Lcom/hierynomus/mssmb2/messages/SMB2CreateRequest;->impersonationLevel:Lcom/hierynomus/mssmb2/SMB2ImpersonationLevel;

    move-object/from16 v0, p7

    .line 6
    iput-object v0, v8, Lcom/hierynomus/mssmb2/messages/SMB2CreateRequest;->accessMask:Ljava/util/Set;

    .line 7
    const-class v0, Lcom/hierynomus/msfscc/FileAttributes;

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lcom/hierynomus/protocol/commons/EnumWithValue$EnumUtils;->ensureNotNull(Ljava/util/Set;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, v8, Lcom/hierynomus/mssmb2/messages/SMB2CreateRequest;->fileAttributes:Ljava/util/Set;

    .line 8
    const-class v0, Lcom/hierynomus/mssmb2/SMB2ShareAccess;

    move-object/from16 v1, p9

    invoke-static {v1, v0}, Lcom/hierynomus/protocol/commons/EnumWithValue$EnumUtils;->ensureNotNull(Ljava/util/Set;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, v8, Lcom/hierynomus/mssmb2/messages/SMB2CreateRequest;->shareAccess:Ljava/util/Set;

    .line 9
    sget-object v0, Lcom/hierynomus/mssmb2/SMB2CreateDisposition;->FILE_OPEN_IF:Lcom/hierynomus/mssmb2/SMB2CreateDisposition;

    move-object/from16 v1, p10

    invoke-static {v1, v0}, Lcom/hierynomus/protocol/commons/EnumWithValue$EnumUtils;->ensureNotNull(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hierynomus/mssmb2/SMB2CreateDisposition;

    iput-object v0, v8, Lcom/hierynomus/mssmb2/messages/SMB2CreateRequest;->createDisposition:Lcom/hierynomus/mssmb2/SMB2CreateDisposition;

    .line 10
    const-class v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    move-object/from16 v1, p11

    invoke-static {v1, v0}, Lcom/hierynomus/protocol/commons/EnumWithValue$EnumUtils;->ensureNotNull(Ljava/util/Set;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, v8, Lcom/hierynomus/mssmb2/messages/SMB2CreateRequest;->createOptions:Ljava/util/Set;

    move-object/from16 v0, p12

    .line 11
    iput-object v0, v8, Lcom/hierynomus/mssmb2/messages/SMB2CreateRequest;->path:Lcom/hierynomus/smbj/common/SmbPath;

    if-nez p13, :cond_0

    .line 12
    sget-object v0, Lcom/hierynomus/mssmb2/SMB2OplockLevel;->SMB2_OPLOCK_LEVEL_NONE:Lcom/hierynomus/mssmb2/SMB2OplockLevel;

    goto :goto_0

    :cond_0
    move-object/from16 v0, p13

    :goto_0
    iput-object v0, v8, Lcom/hierynomus/mssmb2/messages/SMB2CreateRequest;->requestedOplockLevel:Lcom/hierynomus/mssmb2/SMB2OplockLevel;

    if-nez p14, :cond_1

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object/from16 v0, p14

    :goto_1
    iput-object v0, v8, Lcom/hierynomus/mssmb2/messages/SMB2CreateRequest;->createContexts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCreateContexts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hierynomus/mssmb2/messages/create/SMB2CreateContext;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2CreateRequest;->createContexts:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCreateDisposition()Lcom/hierynomus/mssmb2/SMB2CreateDisposition;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2CreateRequest;->createDisposition:Lcom/hierynomus/mssmb2/SMB2CreateDisposition;

    .line 2
    .line 3
    return-object v0
.end method

.method public writeTo(Lcom/hierynomus/smb/SMBBuffer;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/hierynomus/mssmb2/SMB2Packet;->structureSize:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt16(I)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putByte(B)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/hierynomus/mssmb2/messages/SMB2CreateRequest;->requestedOplockLevel:Lcom/hierynomus/mssmb2/SMB2OplockLevel;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/hierynomus/mssmb2/SMB2OplockLevel;->getValue()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    long-to-int v2, v1

    .line 17
    int-to-byte v1, v2

    .line 18
    invoke-virtual {p1, v1}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putByte(B)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/hierynomus/mssmb2/messages/SMB2CreateRequest;->impersonationLevel:Lcom/hierynomus/mssmb2/SMB2ImpersonationLevel;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/hierynomus/mssmb2/SMB2ImpersonationLevel;->getValue()J

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    invoke-virtual {p1, v1, v2}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt32(J)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 28
    .line 29
    .line 30
    const/16 v1, 0x8

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Lcom/hierynomus/smb/SMBBuffer;->putReserved(I)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v1}, Lcom/hierynomus/smb/SMBBuffer;->putReserved(I)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/hierynomus/mssmb2/messages/SMB2CreateRequest;->accessMask:Ljava/util/Set;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/hierynomus/protocol/commons/EnumWithValue$EnumUtils;->toLong(Ljava/util/Collection;)J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    invoke-virtual {p1, v1, v2}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt32(J)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/hierynomus/mssmb2/messages/SMB2CreateRequest;->fileAttributes:Ljava/util/Set;

    .line 48
    .line 49
    invoke-static {v1}, Lcom/hierynomus/protocol/commons/EnumWithValue$EnumUtils;->toLong(Ljava/util/Collection;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v1

    .line 53
    invoke-virtual {p1, v1, v2}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt32(J)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/hierynomus/mssmb2/messages/SMB2CreateRequest;->shareAccess:Ljava/util/Set;

    .line 57
    .line 58
    invoke-static {v1}, Lcom/hierynomus/protocol/commons/EnumWithValue$EnumUtils;->toLong(Ljava/util/Collection;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v1

    .line 62
    invoke-virtual {p1, v1, v2}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt32(J)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/hierynomus/mssmb2/messages/SMB2CreateRequest;->createDisposition:Lcom/hierynomus/mssmb2/SMB2CreateDisposition;

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/hierynomus/mssmb2/SMB2CreateDisposition;->getValue()J

    .line 68
    .line 69
    .line 70
    move-result-wide v1

    .line 71
    invoke-virtual {p1, v1, v2}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt32(J)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lcom/hierynomus/mssmb2/messages/SMB2CreateRequest;->createOptions:Ljava/util/Set;

    .line 75
    .line 76
    invoke-static {v1}, Lcom/hierynomus/protocol/commons/EnumWithValue$EnumUtils;->toLong(Ljava/util/Collection;)J

    .line 77
    .line 78
    .line 79
    move-result-wide v1

    .line 80
    invoke-virtual {p1, v1, v2}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt32(J)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 81
    .line 82
    .line 83
    iget v1, p0, Lcom/hierynomus/mssmb2/SMB2Packet;->structureSize:I

    .line 84
    .line 85
    add-int/lit8 v1, v1, 0x3f

    .line 86
    .line 87
    iget-object v2, p0, Lcom/hierynomus/mssmb2/messages/SMB2CreateRequest;->path:Lcom/hierynomus/smbj/common/SmbPath;

    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/hierynomus/smbj/common/SmbPath;->getPath()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    if-eqz v2, :cond_1

    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-nez v3, :cond_0

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_0
    invoke-static {v2}, Lcom/hierynomus/mssmb2/SMB2Functions;->unicode(Ljava/lang/String;)[B

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {p1, v1}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt16(I)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 111
    .line 112
    .line 113
    array-length v3, v2

    .line 114
    invoke-virtual {p1, v3}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt16(I)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt16(I)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v0}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt16(I)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 122
    .line 123
    .line 124
    const/4 v2, 0x1

    .line 125
    new-array v2, v2, [B

    .line 126
    .line 127
    :goto_1
    iget-object v3, p0, Lcom/hierynomus/mssmb2/messages/SMB2CreateRequest;->createContexts:Ljava/util/List;

    .line 128
    .line 129
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-nez v3, :cond_2

    .line 134
    .line 135
    new-instance v0, Lcom/hierynomus/smb/SMBBuffer;

    .line 136
    .line 137
    invoke-direct {v0}, Lcom/hierynomus/smb/SMBBuffer;-><init>()V

    .line 138
    .line 139
    .line 140
    iget-object v3, p0, Lcom/hierynomus/mssmb2/messages/SMB2CreateRequest;->createContexts:Ljava/util/List;

    .line 141
    .line 142
    invoke-static {v0, v3}, Lcom/hierynomus/mssmb2/messages/create/SMB2CreateContext;->writeAll(Lcom/hierynomus/smb/SMBBuffer;Ljava/util/List;)I

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->getCompactData()[B

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    array-length v3, v0

    .line 150
    array-length v4, v2

    .line 151
    add-int/2addr v1, v4

    .line 152
    add-int/lit8 v4, v1, 0x7

    .line 153
    .line 154
    and-int/lit8 v4, v4, -0x8

    .line 155
    .line 156
    sub-int v1, v4, v1

    .line 157
    .line 158
    move v7, v1

    .line 159
    move-object v1, v0

    .line 160
    move v0, v4

    .line 161
    move v4, v7

    .line 162
    goto :goto_2

    .line 163
    :cond_2
    const/4 v1, 0x0

    .line 164
    const/4 v3, 0x0

    .line 165
    const/4 v4, 0x0

    .line 166
    :goto_2
    int-to-long v5, v0

    .line 167
    invoke-virtual {p1, v5, v6}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt32(J)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 168
    .line 169
    .line 170
    int-to-long v5, v3

    .line 171
    invoke-virtual {p1, v5, v6}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt32(J)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v2}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putRawBytes([B)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 175
    .line 176
    .line 177
    if-eqz v1, :cond_3

    .line 178
    .line 179
    invoke-virtual {p1, v4}, Lcom/hierynomus/smb/SMBBuffer;->putReserved(I)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, v1}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putRawBytes([B)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 183
    .line 184
    .line 185
    :cond_3
    return-void
.end method
