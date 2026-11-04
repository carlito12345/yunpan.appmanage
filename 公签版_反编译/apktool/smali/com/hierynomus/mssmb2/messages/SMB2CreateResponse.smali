.class public Lcom/hierynomus/mssmb2/messages/SMB2CreateResponse;
.super Lcom/hierynomus/mssmb2/SMB2Packet;
.source "SourceFile"


# instance fields
.field private changeTime:Lcom/hierynomus/msdtyp/FileTime;

.field private createAction:Lcom/hierynomus/mssmb2/SMB2CreateAction;

.field private createContexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hierynomus/mssmb2/messages/create/SMB2CreateContext;",
            ">;"
        }
    .end annotation
.end field

.field private creationTime:Lcom/hierynomus/msdtyp/FileTime;

.field private fileAttributes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/hierynomus/msfscc/FileAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private fileId:Lcom/hierynomus/mssmb2/SMB2FileId;

.field private flags:I

.field private lastAccessTime:Lcom/hierynomus/msdtyp/FileTime;

.field private lastWriteTime:Lcom/hierynomus/msdtyp/FileTime;

.field private oplockLevel:Lcom/hierynomus/mssmb2/SMB2OplockLevel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hierynomus/mssmb2/SMB2Packet;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/hierynomus/mssmb2/SMB2OplockLevel;->SMB2_OPLOCK_LEVEL_NONE:Lcom/hierynomus/mssmb2/SMB2OplockLevel;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2CreateResponse;->oplockLevel:Lcom/hierynomus/mssmb2/SMB2OplockLevel;

    .line 7
    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2CreateResponse;->createContexts:Ljava/util/List;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getChangeTime()Lcom/hierynomus/msdtyp/FileTime;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2CreateResponse;->changeTime:Lcom/hierynomus/msdtyp/FileTime;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCreateAction()Lcom/hierynomus/mssmb2/SMB2CreateAction;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2CreateResponse;->createAction:Lcom/hierynomus/mssmb2/SMB2CreateAction;

    .line 2
    .line 3
    return-object v0
.end method

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
    iget-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2CreateResponse;->createContexts:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCreationTime()Lcom/hierynomus/msdtyp/FileTime;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2CreateResponse;->creationTime:Lcom/hierynomus/msdtyp/FileTime;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFileAttributes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/hierynomus/msfscc/FileAttributes;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2CreateResponse;->fileAttributes:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFileId()Lcom/hierynomus/mssmb2/SMB2FileId;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2CreateResponse;->fileId:Lcom/hierynomus/mssmb2/SMB2FileId;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2CreateResponse;->flags:I

    .line 2
    .line 3
    return v0
.end method

.method public getLastAccessTime()Lcom/hierynomus/msdtyp/FileTime;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2CreateResponse;->lastAccessTime:Lcom/hierynomus/msdtyp/FileTime;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLastWriteTime()Lcom/hierynomus/msdtyp/FileTime;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2CreateResponse;->lastWriteTime:Lcom/hierynomus/msdtyp/FileTime;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLeaseResponseContext()Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseResponseContext;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2CreateResponse;->createContexts:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/hierynomus/mssmb2/messages/create/SMB2CreateContext;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/hierynomus/mssmb2/messages/create/SMB2CreateContext;->getName()[B

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    sget-object v3, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseCreateContext;->NAME:[B

    .line 24
    .line 25
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-static {v1}, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseResponseContext;->from(Lcom/hierynomus/mssmb2/messages/create/SMB2CreateContext;)Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseResponseContext;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    return-object v0
.end method

.method public getOplockLevel()Lcom/hierynomus/mssmb2/SMB2OplockLevel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2CreateResponse;->oplockLevel:Lcom/hierynomus/mssmb2/SMB2OplockLevel;

    .line 2
    .line 3
    return-object v0
.end method

.method public readMessage(Lcom/hierynomus/smb/SMBBuffer;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->readUInt16()I

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->readByte()B

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    and-int/lit16 v0, v0, 0xff

    .line 9
    .line 10
    int-to-long v0, v0

    .line 11
    const-class v2, Lcom/hierynomus/mssmb2/SMB2OplockLevel;

    .line 12
    .line 13
    sget-object v3, Lcom/hierynomus/mssmb2/SMB2OplockLevel;->SMB2_OPLOCK_LEVEL_NONE:Lcom/hierynomus/mssmb2/SMB2OplockLevel;

    .line 14
    .line 15
    invoke-static {v0, v1, v2, v3}, Lcom/hierynomus/protocol/commons/EnumWithValue$EnumUtils;->valueOf(JLjava/lang/Class;Lcom/hierynomus/protocol/commons/EnumWithValue;)Lcom/hierynomus/protocol/commons/EnumWithValue;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/hierynomus/mssmb2/SMB2OplockLevel;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2CreateResponse;->oplockLevel:Lcom/hierynomus/mssmb2/SMB2OplockLevel;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->readByte()B

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    and-int/lit16 v0, v0, 0xff

    .line 28
    .line 29
    iput v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2CreateResponse;->flags:I

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->readUInt32()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    const-class v2, Lcom/hierynomus/mssmb2/SMB2CreateAction;

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-static {v0, v1, v2, v3}, Lcom/hierynomus/protocol/commons/EnumWithValue$EnumUtils;->valueOf(JLjava/lang/Class;Lcom/hierynomus/protocol/commons/EnumWithValue;)Lcom/hierynomus/protocol/commons/EnumWithValue;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/hierynomus/mssmb2/SMB2CreateAction;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2CreateResponse;->createAction:Lcom/hierynomus/mssmb2/SMB2CreateAction;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/hierynomus/msdtyp/MsDataTypes;->readFileTime(Lcom/hierynomus/protocol/commons/buffer/Buffer;)Lcom/hierynomus/msdtyp/FileTime;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2CreateResponse;->creationTime:Lcom/hierynomus/msdtyp/FileTime;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/hierynomus/msdtyp/MsDataTypes;->readFileTime(Lcom/hierynomus/protocol/commons/buffer/Buffer;)Lcom/hierynomus/msdtyp/FileTime;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2CreateResponse;->lastAccessTime:Lcom/hierynomus/msdtyp/FileTime;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/hierynomus/msdtyp/MsDataTypes;->readFileTime(Lcom/hierynomus/protocol/commons/buffer/Buffer;)Lcom/hierynomus/msdtyp/FileTime;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2CreateResponse;->lastWriteTime:Lcom/hierynomus/msdtyp/FileTime;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/hierynomus/msdtyp/MsDataTypes;->readFileTime(Lcom/hierynomus/protocol/commons/buffer/Buffer;)Lcom/hierynomus/msdtyp/FileTime;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2CreateResponse;->changeTime:Lcom/hierynomus/msdtyp/FileTime;

    .line 69
    .line 70
    const/16 v0, 0x8

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->readRawBytes(I)[B

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->readRawBytes(I)[B

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->readUInt32()J

    .line 79
    .line 80
    .line 81
    move-result-wide v0

    .line 82
    const-class v2, Lcom/hierynomus/msfscc/FileAttributes;

    .line 83
    .line 84
    invoke-static {v0, v1, v2}, Lcom/hierynomus/protocol/commons/EnumWithValue$EnumUtils;->toEnumSet(JLjava/lang/Class;)Ljava/util/EnumSet;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iput-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2CreateResponse;->fileAttributes:Ljava/util/Set;

    .line 89
    .line 90
    const/4 v0, 0x4

    .line 91
    invoke-virtual {p1, v0}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->skip(I)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 92
    .line 93
    .line 94
    invoke-static {p1}, Lcom/hierynomus/mssmb2/SMB2FileId;->read(Lcom/hierynomus/smb/SMBBuffer;)Lcom/hierynomus/mssmb2/SMB2FileId;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iput-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2CreateResponse;->fileId:Lcom/hierynomus/mssmb2/SMB2FileId;

    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->readUInt32()J

    .line 101
    .line 102
    .line 103
    move-result-wide v0

    .line 104
    invoke-virtual {p1}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->readUInt32()J

    .line 105
    .line 106
    .line 107
    move-result-wide v2

    .line 108
    const-wide/16 v4, 0x0

    .line 109
    .line 110
    cmp-long v6, v2, v4

    .line 111
    .line 112
    if-lez v6, :cond_0

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/hierynomus/smb/SMBPacket;->getHeader()Lcom/hierynomus/smb/SMBHeader;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    check-cast v4, Lcom/hierynomus/mssmb2/SMB2PacketHeader;

    .line 119
    .line 120
    invoke-virtual {v4}, Lcom/hierynomus/mssmb2/SMB2PacketHeader;->getHeaderStartPosition()I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    long-to-int v1, v0

    .line 125
    add-int/2addr v4, v1

    .line 126
    long-to-int v0, v2

    .line 127
    invoke-static {p1, v4, v0}, Lcom/hierynomus/mssmb2/messages/create/SMB2CreateContext;->readAll(Lcom/hierynomus/smb/SMBBuffer;II)Ljava/util/List;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    iput-object p1, p0, Lcom/hierynomus/mssmb2/messages/SMB2CreateResponse;->createContexts:Ljava/util/List;

    .line 132
    .line 133
    :cond_0
    return-void
.end method

.method public setFileAttributes(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/hierynomus/msfscc/FileAttributes;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hierynomus/mssmb2/messages/SMB2CreateResponse;->fileAttributes:Ljava/util/Set;

    .line 2
    .line 3
    return-void
.end method

.method public setFileId(Lcom/hierynomus/mssmb2/SMB2FileId;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hierynomus/mssmb2/messages/SMB2CreateResponse;->fileId:Lcom/hierynomus/mssmb2/SMB2FileId;

    .line 2
    .line 3
    return-void
.end method
