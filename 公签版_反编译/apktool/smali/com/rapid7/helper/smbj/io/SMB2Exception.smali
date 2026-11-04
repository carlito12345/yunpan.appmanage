.class public Lcom/rapid7/helper/smbj/io/SMB2Exception;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field private final failedCommand:Lcom/hierynomus/mssmb2/SMB2MessageCommandCode;

.field private final status:Lcom/hierynomus/mserref/NtStatus;

.field private final statusCode:J


# direct methods
.method public constructor <init>(Lcom/hierynomus/mssmb2/SMB2PacketHeader;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/hierynomus/mssmb2/SMB2PacketHeader;->getMessage()Lcom/hierynomus/mssmb2/SMB2MessageCommandCode;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/hierynomus/mssmb2/SMB2PacketHeader;->getStatusCode()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lcom/hierynomus/mssmb2/SMB2PacketHeader;->getStatusCode()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p1}, Lcom/hierynomus/mssmb2/SMB2PacketHeader;->getStatusCode()J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const/4 v4, 0x5

    .line 30
    new-array v4, v4, [Ljava/lang/Object;

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    aput-object v0, v4, v5

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    aput-object v1, v4, v0

    .line 37
    .line 38
    const/4 v0, 0x2

    .line 39
    aput-object v2, v4, v0

    .line 40
    .line 41
    const/4 v0, 0x3

    .line 42
    aput-object v3, v4, v0

    .line 43
    .line 44
    const/4 v0, 0x4

    .line 45
    aput-object p2, v4, v0

    .line 46
    .line 47
    const-string p2, "%s returned %s (%d/%d): %s"

    .line 48
    .line 49
    invoke-static {p2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/hierynomus/mssmb2/SMB2PacketHeader;->getStatusCode()J

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    invoke-static {v0, v1}, Lcom/hierynomus/mserref/NtStatus;->valueOf(J)Lcom/hierynomus/mserref/NtStatus;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    iput-object p2, p0, Lcom/rapid7/helper/smbj/io/SMB2Exception;->status:Lcom/hierynomus/mserref/NtStatus;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/hierynomus/mssmb2/SMB2PacketHeader;->getStatusCode()J

    .line 67
    .line 68
    .line 69
    move-result-wide v0

    .line 70
    iput-wide v0, p0, Lcom/rapid7/helper/smbj/io/SMB2Exception;->statusCode:J

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/hierynomus/mssmb2/SMB2PacketHeader;->getMessage()Lcom/hierynomus/mssmb2/SMB2MessageCommandCode;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iput-object p1, p0, Lcom/rapid7/helper/smbj/io/SMB2Exception;->failedCommand:Lcom/hierynomus/mssmb2/SMB2MessageCommandCode;

    .line 77
    .line 78
    return-void
.end method


# virtual methods
.method public getFailedCommand()Lcom/hierynomus/mssmb2/SMB2MessageCommandCode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/helper/smbj/io/SMB2Exception;->failedCommand:Lcom/hierynomus/mssmb2/SMB2MessageCommandCode;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStatus()Lcom/hierynomus/mserref/NtStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/helper/smbj/io/SMB2Exception;->status:Lcom/hierynomus/mserref/NtStatus;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStatusCode()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/rapid7/helper/smbj/io/SMB2Exception;->statusCode:J

    .line 2
    .line 3
    return-wide v0
.end method
