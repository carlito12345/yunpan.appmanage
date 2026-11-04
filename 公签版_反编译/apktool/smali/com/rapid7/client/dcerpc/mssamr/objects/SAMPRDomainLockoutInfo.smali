.class public Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainLockoutInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;


# instance fields
.field private lockoutDuration:J

.field private lockoutObservationWindow:J

.field private lockoutThreshold:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainLockoutInfo;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainLockoutInfo;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainLockoutInfo;->getLockoutDuration()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainLockoutInfo;->getLockoutDuration()J

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
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainLockoutInfo;->getLockoutObservationWindow()J

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainLockoutInfo;->getLockoutObservationWindow()J

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainLockoutInfo;->getLockoutThreshold()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainLockoutInfo;->getLockoutThreshold()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_2

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    const/4 v0, 0x0

    .line 81
    :goto_0
    return v0
.end method

.method public getLockoutDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainLockoutInfo;->lockoutDuration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLockoutObservationWindow()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainLockoutInfo;->lockoutObservationWindow:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLockoutThreshold()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainLockoutInfo;->lockoutThreshold:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainLockoutInfo;->getLockoutDuration()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainLockoutInfo;->getLockoutObservationWindow()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainLockoutInfo;->getLockoutThreshold()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const/4 v3, 0x3

    .line 26
    new-array v3, v3, [Ljava/lang/Object;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    aput-object v0, v3, v4

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    aput-object v1, v3, v0

    .line 33
    .line 34
    const/4 v0, 0x2

    .line 35
    aput-object v2, v3, v0

    .line 36
    .line 37
    invoke-static {v3}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainLockoutInfo;->getLockoutDuration()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainLockoutInfo;->getLockoutObservationWindow()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainLockoutInfo;->getLockoutThreshold()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const-string v5, "SAMPRDomainLockoutInfo{lockoutDuration:"

    .line 14
    .line 15
    const-string v6, ", lockoutObservationWindow:"

    .line 16
    .line 17
    invoke-static {v0, v1, v5, v6}, Landroid/support/v4/media/session/a;->w(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ",lockoutThreshold:"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, "}"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method

.method public unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 0

    return-void
.end method

.method public unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->EIGHT:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readLong()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iput-wide v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainLockoutInfo;->lockoutDuration:J

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readLong()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iput-wide v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainLockoutInfo;->lockoutObservationWindow:J

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readShort()S

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainLockoutInfo;->lockoutThreshold:I

    .line 23
    .line 24
    return-void
.end method

.method public unmarshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 0

    return-void
.end method
