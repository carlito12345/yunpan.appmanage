.class public Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;


# instance fields
.field private adminComment:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

.field private attributes:I

.field private memberCount:J

.field private name:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;


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
    instance-of v1, p1, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;

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
    check-cast p1, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;->getName()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;->getName()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;->getAttributes()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;->getAttributes()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;->getMemberCount()J

    .line 50
    .line 51
    .line 52
    move-result-wide v3

    .line 53
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;->getMemberCount()J

    .line 58
    .line 59
    .line 60
    move-result-wide v3

    .line 61
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;->getAdminComment()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;->getAdminComment()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {v1, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_2

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    const/4 v0, 0x0

    .line 87
    :goto_0
    return v0
.end method

.method public getAdminComment()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;->adminComment:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAttributes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;->attributes:I

    .line 2
    .line 3
    return v0
.end method

.method public getMemberCount()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;->memberCount:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getName()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;->name:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;->getName()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;->getAttributes()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;->getMemberCount()J

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
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;->getAdminComment()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const/4 v4, 0x4

    .line 26
    new-array v4, v4, [Ljava/lang/Object;

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    aput-object v0, v4, v5

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    aput-object v1, v4, v0

    .line 33
    .line 34
    const/4 v0, 0x2

    .line 35
    aput-object v2, v4, v0

    .line 36
    .line 37
    const/4 v0, 0x3

    .line 38
    aput-object v3, v4, v0

    .line 39
    .line 40
    invoke-static {v4}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    return v0
.end method

.method public setAdminComment(Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;->adminComment:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    return-void
.end method

.method public setAttributes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;->attributes:I

    .line 2
    .line 3
    return-void
.end method

.method public setMemberCount(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;->memberCount:J

    .line 2
    .line 3
    return-void
.end method

.method public setName(Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;->name:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;->getName()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;->getAttributes()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;->getMemberCount()J

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
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;->getAdminComment()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const/4 v4, 0x4

    .line 26
    new-array v4, v4, [Ljava/lang/Object;

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    aput-object v0, v4, v5

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    aput-object v1, v4, v0

    .line 33
    .line 34
    const/4 v0, 0x2

    .line 35
    aput-object v2, v4, v0

    .line 36
    .line 37
    const/4 v0, 0x3

    .line 38
    aput-object v3, v4, v0

    .line 39
    .line 40
    const-string v0, "SAMPR_GROUP_GENERAL_INFORMATION{Name:%s,Attributes:%d,MemberCount:%d,AdminComment:%s}"

    .line 41
    .line 42
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method

.method public unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;->name:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;->adminComment:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;->name:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;->attributes:I

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnsignedInt()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    iput-wide v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;->memberCount:J

    .line 25
    .line 26
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;->adminComment:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public unmarshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;->name:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;->adminComment:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
