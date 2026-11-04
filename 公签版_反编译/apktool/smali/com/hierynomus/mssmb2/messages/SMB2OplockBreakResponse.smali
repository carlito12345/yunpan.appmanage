.class public Lcom/hierynomus/mssmb2/messages/SMB2OplockBreakResponse;
.super Lcom/hierynomus/mssmb2/SMB2Packet;
.source "SourceFile"


# static fields
.field private static final STRUCTURE_SIZE_FILE_OPLOCK:I = 0x18

.field private static final STRUCTURE_SIZE_LEASE:I = 0x24


# instance fields
.field private fileId:Lcom/hierynomus/mssmb2/SMB2FileId;

.field private lease:Z

.field private leaseKey:Lcom/hierynomus/mssmb2/LeaseKey;

.field private leaseState:J

.field private oplockLevel:Lcom/hierynomus/mssmb2/SMB2OplockLevel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hierynomus/mssmb2/SMB2Packet;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getFileId()Lcom/hierynomus/mssmb2/SMB2FileId;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2OplockBreakResponse;->fileId:Lcom/hierynomus/mssmb2/SMB2FileId;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLeaseKey()Lcom/hierynomus/mssmb2/LeaseKey;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2OplockBreakResponse;->leaseKey:Lcom/hierynomus/mssmb2/LeaseKey;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLeaseState()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2OplockBreakResponse;->leaseState:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getOplockLevel()Lcom/hierynomus/mssmb2/SMB2OplockLevel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2OplockBreakResponse;->oplockLevel:Lcom/hierynomus/mssmb2/SMB2OplockLevel;

    .line 2
    .line 3
    return-object v0
.end method

.method public isLease()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2OplockBreakResponse;->lease:Z

    .line 2
    .line 3
    return v0
.end method

.method public readMessage(Lcom/hierynomus/smb/SMBBuffer;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->readUInt16()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x18

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    const/16 v1, 0x24

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    iput-boolean v3, p0, Lcom/hierynomus/mssmb2/messages/SMB2OplockBreakResponse;->lease:Z

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    invoke-virtual {p1, v0}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->skip(I)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v2}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->skip(I)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 22
    .line 23
    .line 24
    new-instance v0, Lcom/hierynomus/mssmb2/LeaseKey;

    .line 25
    .line 26
    const/16 v1, 0x10

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->readRawBytes(I)[B

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-direct {v0, v1}, Lcom/hierynomus/mssmb2/LeaseKey;-><init>([B)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2OplockBreakResponse;->leaseKey:Lcom/hierynomus/mssmb2/LeaseKey;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->readUInt32()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    iput-wide v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2OplockBreakResponse;->leaseState:J

    .line 42
    .line 43
    const/16 v0, 0x8

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->skip(I)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance p1, Lcom/hierynomus/smbj/common/SMBRuntimeException;

    .line 50
    .line 51
    const-string v1, "Unexpected SMB2_OPLOCK_BREAK response StructureSize: "

    .line 52
    .line 53
    const-string v2, " (expected 24 for file oplock or 36 for lease break)"

    .line 54
    .line 55
    invoke-static {v1, v0, v2}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-direct {p1, v0}, Lcom/hierynomus/smbj/common/SMBRuntimeException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_1
    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2OplockBreakResponse;->lease:Z

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->readByte()B

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    and-int/lit16 v0, v0, 0xff

    .line 71
    .line 72
    int-to-long v0, v0

    .line 73
    const-class v4, Lcom/hierynomus/mssmb2/SMB2OplockLevel;

    .line 74
    .line 75
    sget-object v5, Lcom/hierynomus/mssmb2/SMB2OplockLevel;->SMB2_OPLOCK_LEVEL_NONE:Lcom/hierynomus/mssmb2/SMB2OplockLevel;

    .line 76
    .line 77
    invoke-static {v0, v1, v4, v5}, Lcom/hierynomus/protocol/commons/EnumWithValue$EnumUtils;->valueOf(JLjava/lang/Class;Lcom/hierynomus/protocol/commons/EnumWithValue;)Lcom/hierynomus/protocol/commons/EnumWithValue;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lcom/hierynomus/mssmb2/SMB2OplockLevel;

    .line 82
    .line 83
    iput-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2OplockBreakResponse;->oplockLevel:Lcom/hierynomus/mssmb2/SMB2OplockLevel;

    .line 84
    .line 85
    invoke-virtual {p1, v3}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->skip(I)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v2}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->skip(I)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 89
    .line 90
    .line 91
    invoke-static {p1}, Lcom/hierynomus/mssmb2/SMB2FileId;->read(Lcom/hierynomus/smb/SMBBuffer;)Lcom/hierynomus/mssmb2/SMB2FileId;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    iput-object p1, p0, Lcom/hierynomus/mssmb2/messages/SMB2OplockBreakResponse;->fileId:Lcom/hierynomus/mssmb2/SMB2FileId;

    .line 96
    .line 97
    :goto_0
    return-void
.end method
