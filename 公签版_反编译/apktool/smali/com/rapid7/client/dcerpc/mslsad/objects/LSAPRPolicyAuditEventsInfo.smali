.class public Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyAuditEventsInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;


# instance fields
.field private auditingMode:C

.field private eventAuditingOptions:[I

.field private maximumAuditEventCount:I


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
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyAuditEventsInfo;

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
    check-cast p1, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyAuditEventsInfo;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyAuditEventsInfo;->getAuditingMode()C

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyAuditEventsInfo;->getAuditingMode()C

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

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
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyAuditEventsInfo;->getEventAuditingOptions()[I

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyAuditEventsInfo;->getEventAuditingOptions()[I

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyAuditEventsInfo;->getMaximumAuditEventCount()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyAuditEventsInfo;->getMaximumAuditEventCount()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_2

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    const/4 v0, 0x0

    .line 73
    :goto_0
    return v0
.end method

.method public getAuditingMode()C
    .locals 1

    .line 1
    iget-char v0, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyAuditEventsInfo;->auditingMode:C

    .line 2
    .line 3
    return v0
.end method

.method public getEventAuditingOptions()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyAuditEventsInfo;->eventAuditingOptions:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaximumAuditEventCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyAuditEventsInfo;->maximumAuditEventCount:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyAuditEventsInfo;->getAuditingMode()C

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    mul-int/lit8 v0, v0, 0x1f

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyAuditEventsInfo;->getEventAuditingOptions()[I

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    add-int/2addr v1, v0

    .line 24
    mul-int/lit8 v1, v1, 0x1f

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyAuditEventsInfo;->getMaximumAuditEventCount()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    add-int/2addr v0, v1

    .line 39
    return v0
.end method

.method public setAuditingMode(C)V
    .locals 0

    .line 1
    iput-char p1, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyAuditEventsInfo;->auditingMode:C

    .line 2
    .line 3
    return-void
.end method

.method public setEventAuditingOptions([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyAuditEventsInfo;->eventAuditingOptions:[I

    .line 2
    .line 3
    return-void
.end method

.method public setMaximumAuditEventCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyAuditEventsInfo;->maximumAuditEventCount:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyAuditEventsInfo;->getAuditingMode()C

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyAuditEventsInfo;->getEventAuditingOptions()[I

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyAuditEventsInfo;->getMaximumAuditEventCount()I

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
    const-string v0, "LSAPR_POLICY_AUDIT_EVENTS_INFO{AuditingMode:%d, EventAuditingOptions:%s, MaximumAuditEventCount:%d}"

    .line 38
    .line 39
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0
.end method

.method public unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyAuditEventsInfo;->eventAuditingOptions:[I

    .line 4
    .line 5
    if-eqz v2, :cond_1

    .line 6
    .line 7
    sget-object v2, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 8
    .line 9
    invoke-virtual {p1, v2}, Lcom/rapid7/client/dcerpc/io/PacketInput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iget v3, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyAuditEventsInfo;->maximumAuditEventCount:I

    .line 17
    .line 18
    if-lt v2, v3, :cond_0

    .line 19
    .line 20
    :goto_0
    iget-object v2, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyAuditEventsInfo;->eventAuditingOptions:[I

    .line 21
    .line 22
    array-length v3, v2

    .line 23
    if-ge v1, v3, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    aput v3, v2, v1

    .line 30
    .line 31
    add-int/2addr v1, v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iget v3, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyAuditEventsInfo;->maximumAuditEventCount:I

    .line 40
    .line 41
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const/4 v4, 0x2

    .line 46
    new-array v4, v4, [Ljava/lang/Object;

    .line 47
    .line 48
    aput-object v2, v4, v1

    .line 49
    .line 50
    aput-object v3, v4, v0

    .line 51
    .line 52
    const-string v0, "Expected MaximumAuditingEventCount (%d) >= EventAuditingOptions.MaximumCount (%d)"

    .line 53
    .line 54
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_1
    return-void
.end method

.method public unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnsignedByte()C

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput-char v0, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyAuditEventsInfo;->auditingMode:C

    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->fullySkipBytes(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readReferentID()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput p1, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyAuditEventsInfo;->maximumAuditEventCount:I

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyAuditEventsInfo;->eventAuditingOptions:[I

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    const-string v0, "If the MaximumAuditingEventCount field has a value other than 0, EventAuditingOptions MUST NOT be NULL."

    .line 42
    .line 43
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :cond_2
    new-array p1, p1, [I

    .line 48
    .line 49
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyAuditEventsInfo;->eventAuditingOptions:[I

    .line 50
    .line 51
    :goto_1
    return-void
.end method

.method public unmarshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 0

    return-void
.end method
