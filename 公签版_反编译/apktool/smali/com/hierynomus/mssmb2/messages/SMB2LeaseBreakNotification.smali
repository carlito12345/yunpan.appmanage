.class public Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;
.super Lcom/hierynomus/mssmb2/SMB2Packet;
.source "SourceFile"


# static fields
.field public static final SMB2_NOTIFY_BREAK_LEASE_FLAG_ACK_REQUIRED:J = 0x1L


# instance fields
.field private currentLeaseState:J

.field private flags:J

.field private leaseKey:Lcom/hierynomus/mssmb2/LeaseKey;

.field private newEpoch:I

.field private newLeaseState:J


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
.method public getCurrentLeaseState()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;->currentLeaseState:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLeaseKey()Lcom/hierynomus/mssmb2/LeaseKey;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;->leaseKey:Lcom/hierynomus/mssmb2/LeaseKey;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNewEpoch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;->newEpoch:I

    .line 2
    .line 3
    return v0
.end method

.method public getNewLeaseState()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;->newLeaseState:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public isAckRequired()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;->flags:J

    .line 2
    .line 3
    const-wide/16 v2, 0x1

    .line 4
    .line 5
    and-long/2addr v0, v2

    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public parse(Lcom/hierynomus/mssmb2/SMB2PacketData;)Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hierynomus/mssmb2/SMB2Packet;->read(Lcom/hierynomus/mssmb2/SMB2PacketData;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public readMessage(Lcom/hierynomus/smb/SMBBuffer;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->readUInt16()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x2c

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->readUInt16()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;->newEpoch:I

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->readUInt32()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iput-wide v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;->flags:J

    .line 20
    .line 21
    new-instance v0, Lcom/hierynomus/mssmb2/LeaseKey;

    .line 22
    .line 23
    const/16 v1, 0x10

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->readRawBytes(I)[B

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, v1}, Lcom/hierynomus/mssmb2/LeaseKey;-><init>([B)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;->leaseKey:Lcom/hierynomus/mssmb2/LeaseKey;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->readUInt32()J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    iput-wide v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;->currentLeaseState:J

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->readUInt32()J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    iput-wide v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;->newLeaseState:J

    .line 45
    .line 46
    const/16 v0, 0xc

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->skip(I)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string v1, "Not a lease break notification, StructureSize="

    .line 55
    .line 56
    invoke-static {v0, v1}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1
.end method
