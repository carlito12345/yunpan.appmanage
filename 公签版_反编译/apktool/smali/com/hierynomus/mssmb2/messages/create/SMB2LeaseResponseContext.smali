.class public Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseResponseContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final epoch:I

.field private final flags:J

.field private final leaseKey:Lcom/hierynomus/mssmb2/LeaseKey;

.field private final leaseState:J

.field private final parentLeaseKey:Lcom/hierynomus/mssmb2/LeaseKey;

.field private final v2:Z


# direct methods
.method private constructor <init>(ZLcom/hierynomus/mssmb2/LeaseKey;JJLcom/hierynomus/mssmb2/LeaseKey;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseResponseContext;->v2:Z

    .line 5
    .line 6
    iput-object p2, p0, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseResponseContext;->leaseKey:Lcom/hierynomus/mssmb2/LeaseKey;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseResponseContext;->leaseState:J

    .line 9
    .line 10
    iput-wide p5, p0, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseResponseContext;->flags:J

    .line 11
    .line 12
    iput-object p7, p0, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseResponseContext;->parentLeaseKey:Lcom/hierynomus/mssmb2/LeaseKey;

    .line 13
    .line 14
    iput p8, p0, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseResponseContext;->epoch:I

    .line 15
    .line 16
    return-void
.end method

.method public static from(Lcom/hierynomus/mssmb2/messages/create/SMB2CreateContext;)Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseResponseContext;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/hierynomus/mssmb2/messages/create/SMB2CreateContext;->getName()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseCreateContext;->NAME:[B

    .line 6
    .line 7
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/hierynomus/mssmb2/messages/create/SMB2CreateContext;->getData()[B

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseResponseContext;->read([B)Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseResponseContext;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string v0, "Not an RqLs create context"

    .line 25
    .line 26
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0
.end method

.method public static read([B)Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseResponseContext;
    .locals 11

    .line 1
    array-length v0, p0

    .line 2
    const/16 v1, 0x20

    .line 3
    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/16 v1, 0x34

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "Malformed RqLs response: DataLength="

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    array-length p0, p0

    .line 22
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    :goto_0
    new-instance v1, Lcom/hierynomus/smb/SMBBuffer;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/hierynomus/smb/SMBBuffer;-><init>([B)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Lcom/hierynomus/mssmb2/LeaseKey;

    .line 40
    .line 41
    const/16 p0, 0x10

    .line 42
    .line 43
    invoke-virtual {v1, p0}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->readRawBytes(I)[B

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-direct {v4, v2}, Lcom/hierynomus/mssmb2/LeaseKey;-><init>([B)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->readUInt32()J

    .line 51
    .line 52
    .line 53
    move-result-wide v5

    .line 54
    invoke-virtual {v1}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->readUInt32()J

    .line 55
    .line 56
    .line 57
    move-result-wide v7

    .line 58
    const/16 v2, 0x8

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->skip(I)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 61
    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    new-instance v9, Lcom/hierynomus/mssmb2/LeaseKey;

    .line 66
    .line 67
    invoke-virtual {v1, p0}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->readRawBytes(I)[B

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-direct {v9, p0}, Lcom/hierynomus/mssmb2/LeaseKey;-><init>([B)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->readUInt16()I

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    const/4 p0, 0x2

    .line 79
    invoke-virtual {v1, p0}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->skip(I)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 80
    .line 81
    .line 82
    new-instance p0, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseResponseContext;

    .line 83
    .line 84
    const/4 v3, 0x1

    .line 85
    move-object v2, p0

    .line 86
    invoke-direct/range {v2 .. v10}, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseResponseContext;-><init>(ZLcom/hierynomus/mssmb2/LeaseKey;JJLcom/hierynomus/mssmb2/LeaseKey;I)V

    .line 87
    .line 88
    .line 89
    return-object p0

    .line 90
    :cond_2
    new-instance p0, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseResponseContext;

    .line 91
    .line 92
    const/4 v9, 0x0

    .line 93
    const/4 v10, 0x0

    .line 94
    const/4 v3, 0x0

    .line 95
    move-object v2, p0

    .line 96
    invoke-direct/range {v2 .. v10}, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseResponseContext;-><init>(ZLcom/hierynomus/mssmb2/LeaseKey;JJLcom/hierynomus/mssmb2/LeaseKey;I)V

    .line 97
    .line 98
    .line 99
    return-object p0
.end method


# virtual methods
.method public getEpoch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseResponseContext;->epoch:I

    .line 2
    .line 3
    return v0
.end method

.method public getFlags()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseResponseContext;->flags:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLeaseKey()Lcom/hierynomus/mssmb2/LeaseKey;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseResponseContext;->leaseKey:Lcom/hierynomus/mssmb2/LeaseKey;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLeaseState()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseResponseContext;->leaseState:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getParentLeaseKey()Lcom/hierynomus/mssmb2/LeaseKey;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseResponseContext;->parentLeaseKey:Lcom/hierynomus/mssmb2/LeaseKey;

    .line 2
    .line 3
    return-object v0
.end method

.method public isReadHandleGranted()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseResponseContext;->leaseState:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Lcom/hierynomus/mssmb2/SMB2LeaseState;->isReadHandle(J)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isV2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseResponseContext;->v2:Z

    .line 2
    .line 3
    return v0
.end method
