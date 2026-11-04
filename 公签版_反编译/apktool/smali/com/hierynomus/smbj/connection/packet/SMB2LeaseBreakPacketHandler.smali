.class public Lcom/hierynomus/smbj/connection/packet/SMB2LeaseBreakPacketHandler;
.super Lcom/hierynomus/smbj/connection/packet/SMB2PacketHandler;
.source "SourceFile"


# static fields
.field private static final LEASE_BREAK_NOTIFICATION_SIZE:I = 0x2c

.field private static final OPLOCK_BREAK_NOTIFICATION_SIZE:I = 0x18

.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private final leaseManager:Lcom/hierynomus/smbj/connection/LeaseManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/hierynomus/smbj/connection/packet/SMB2LeaseBreakPacketHandler;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/hierynomus/smbj/connection/packet/SMB2LeaseBreakPacketHandler;->logger:Lorg/slf4j/Logger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/hierynomus/smbj/connection/LeaseManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hierynomus/smbj/connection/packet/SMB2PacketHandler;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/hierynomus/smbj/connection/packet/SMB2LeaseBreakPacketHandler;->leaseManager:Lcom/hierynomus/smbj/connection/LeaseManager;

    .line 5
    .line 6
    return-void
.end method

.method private static peekStructureSize(Lcom/hierynomus/mssmb2/SMB2PacketData;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/hierynomus/smb/SMBPacketData;->getDataBuffer()Lcom/hierynomus/smb/SMBBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->rpos()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->readUInt16()I

    .line 10
    .line 11
    .line 12
    move-result v1
    :try_end_0
    .catch Lcom/hierynomus/protocol/commons/buffer/Buffer$BufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {p0, v0}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->rpos(I)V

    .line 14
    .line 15
    .line 16
    return v1

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    invoke-virtual {p0, v0}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->rpos(I)V

    .line 19
    .line 20
    .line 21
    throw v1

    .line 22
    :catch_0
    invoke-virtual {p0, v0}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->rpos(I)V

    .line 23
    .line 24
    .line 25
    const/4 p0, -0x1

    .line 26
    return p0
.end method


# virtual methods
.method public doSMB2Handle(Lcom/hierynomus/mssmb2/SMB2PacketData;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/hierynomus/mssmb2/SMB2PacketData;->isOplockBreakNotification()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/hierynomus/smbj/connection/packet/AbstractIncomingPacketHandler;->next:Lcom/hierynomus/smbj/connection/packet/IncomingPacketHandler;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lcom/hierynomus/smbj/connection/packet/IncomingPacketHandler;->handle(Lcom/hierynomus/smb/SMBPacketData;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-static {p1}, Lcom/hierynomus/smbj/connection/packet/SMB2LeaseBreakPacketHandler;->peekStructureSize(Lcom/hierynomus/mssmb2/SMB2PacketData;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/16 v1, 0x2c

    .line 18
    .line 19
    if-eq v0, v1, :cond_2

    .line 20
    .line 21
    const/16 p1, 0x18

    .line 22
    .line 23
    if-ne v0, p1, :cond_1

    .line 24
    .line 25
    sget-object p1, Lcom/hierynomus/smbj/connection/packet/SMB2LeaseBreakPacketHandler;->logger:Lorg/slf4j/Logger;

    .line 26
    .line 27
    const-string v0, "Received oplock break (file oplocks out of scope), ignoring"

    .line 28
    .line 29
    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    sget-object p1, Lcom/hierynomus/smbj/connection/packet/SMB2LeaseBreakPacketHandler;->logger:Lorg/slf4j/Logger;

    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "Unexpected unsolicited OPLOCK_BREAK StructureSize {}, dropping"

    .line 40
    .line 41
    invoke-interface {p1, v1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void

    .line 45
    :cond_2
    :try_start_0
    new-instance v0, Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;

    .line 46
    .line 47
    invoke-direct {v0}, Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;->parse(Lcom/hierynomus/mssmb2/SMB2PacketData;)Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    sget-object v0, Lcom/hierynomus/smbj/connection/packet/SMB2LeaseBreakPacketHandler;->logger:Lorg/slf4j/Logger;

    .line 55
    .line 56
    const-string v1, "Lease break for {} {}->{} ackRequired={}"

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;->getLeaseKey()Lcom/hierynomus/mssmb2/LeaseKey;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {p1}, Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;->getCurrentLeaseState()J

    .line 63
    .line 64
    .line 65
    move-result-wide v3

    .line 66
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {p1}, Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;->getNewLeaseState()J

    .line 71
    .line 72
    .line 73
    move-result-wide v4

    .line 74
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {p1}, Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;->isAckRequired()Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    const/4 v6, 0x4

    .line 87
    new-array v6, v6, [Ljava/lang/Object;

    .line 88
    .line 89
    const/4 v7, 0x0

    .line 90
    aput-object v2, v6, v7

    .line 91
    .line 92
    const/4 v2, 0x1

    .line 93
    aput-object v3, v6, v2

    .line 94
    .line 95
    const/4 v2, 0x2

    .line 96
    aput-object v4, v6, v2

    .line 97
    .line 98
    const/4 v2, 0x3

    .line 99
    aput-object v5, v6, v2

    .line 100
    .line 101
    invoke-interface {v0, v1, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/hierynomus/smbj/connection/packet/SMB2LeaseBreakPacketHandler;->leaseManager:Lcom/hierynomus/smbj/connection/LeaseManager;

    .line 105
    .line 106
    invoke-virtual {v0, p1}, Lcom/hierynomus/smbj/connection/LeaseManager;->dispatchBreak(Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;)V
    :try_end_0
    .catch Lcom/hierynomus/protocol/commons/buffer/Buffer$BufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :catch_0
    move-exception p1

    .line 111
    sget-object v0, Lcom/hierynomus/smbj/connection/packet/SMB2LeaseBreakPacketHandler;->logger:Lorg/slf4j/Logger;

    .line 112
    .line 113
    const-string v1, "Malformed lease break notification, dropping"

    .line 114
    .line 115
    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    :goto_1
    return-void
.end method
