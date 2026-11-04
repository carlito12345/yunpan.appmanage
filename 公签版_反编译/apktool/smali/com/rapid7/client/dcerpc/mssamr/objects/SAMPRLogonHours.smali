.class public Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRLogonHours;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;


# instance fields
.field private logonHours:[B

.field private unitsPerWeek:S


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
    instance-of v1, p1, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRLogonHours;

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
    check-cast p1, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRLogonHours;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRLogonHours;->getUnitsPerWeek()S

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRLogonHours;->getUnitsPerWeek()S

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-ne v1, v3, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRLogonHours;->getLogonHours()[B

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRLogonHours;->getLogonHours()[B

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const/4 v0, 0x0

    .line 39
    :goto_0
    return v0
.end method

.method public getLogonHours()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRLogonHours;->logonHours:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public getUnitsPerWeek()S
    .locals 1

    .line 1
    iget-short v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRLogonHours;->unitsPerWeek:S

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-short v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRLogonHours;->unitsPerWeek:S

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRLogonHours;->logonHours:[B

    .line 6
    .line 7
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v1, v0

    .line 12
    return v1
.end method

.method public setLogonHours([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRLogonHours;->logonHours:[B

    .line 2
    .line 3
    return-void
.end method

.method public setUnitsPerWeek(S)V
    .locals 0

    .line 1
    iput-short p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRLogonHours;->unitsPerWeek:S

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-short v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRLogonHours;->unitsPerWeek:S

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRLogonHours;->logonHours:[B

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const-string v1, "null"

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    array-length v1, v1

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :goto_0
    const/4 v2, 0x2

    .line 20
    new-array v2, v2, [Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    aput-object v0, v2, v3

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    aput-object v1, v2, v0

    .line 27
    .line 28
    const-string v0, "SAMPR_LOGON_HOURS{UnitsPerWeek:%d,size(LogonHours):%s}"

    .line 29
    .line 30
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0
.end method

.method public unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRLogonHours;->logonHours:[B

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->fullySkipBytes(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->fullySkipBytes(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->fullySkipBytes(I)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    :goto_0
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRLogonHours;->logonHours:[B

    .line 22
    .line 23
    array-length v2, v1

    .line 24
    if-ge v0, v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readByte()B

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    aput-byte v2, v1, v0

    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
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
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readShort()S

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput-short v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRLogonHours;->unitsPerWeek:S

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->fullySkipBytes(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readReferentID()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-short p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRLogonHours;->unitsPerWeek:S

    .line 23
    .line 24
    add-int/lit8 p1, p1, 0x7

    .line 25
    .line 26
    div-int/lit8 p1, p1, 0x8

    .line 27
    .line 28
    new-array p1, p1, [B

    .line 29
    .line 30
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRLogonHours;->logonHours:[B

    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public unmarshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 0

    return-void
.end method
