.class public Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedName;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;


# instance fields
.field private domainIndex:I

.field private name:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

.field private use:S


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
    instance-of v1, p1, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedName;

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
    check-cast p1, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedName;

    .line 12
    .line 13
    iget-short v1, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedName;->use:S

    .line 14
    .line 15
    iget-short v3, p1, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedName;->use:S

    .line 16
    .line 17
    if-ne v1, v3, :cond_2

    .line 18
    .line 19
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedName;->name:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 20
    .line 21
    iget-object v3, p1, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedName;->name:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 22
    .line 23
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    iget v1, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedName;->domainIndex:I

    .line 30
    .line 31
    iget p1, p1, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedName;->domainIndex:I

    .line 32
    .line 33
    if-ne v1, p1, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/4 v0, 0x0

    .line 37
    :goto_0
    return v0
.end method

.method public getDomainIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedName;->domainIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public getName()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedName;->name:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUse()I
    .locals 1

    .line 1
    iget-short v0, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedName;->use:S

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-short v0, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedName;->use:S

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedName;->name:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 8
    .line 9
    iget v2, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedName;->domainIndex:I

    .line 10
    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x3

    .line 16
    new-array v3, v3, [Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    aput-object v0, v3, v4

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    aput-object v1, v3, v0

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    aput-object v2, v3, v0

    .line 26
    .line 27
    invoke-static {v3}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-short v0, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedName;->use:S

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedName;->name:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 8
    .line 9
    iget v2, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedName;->domainIndex:I

    .line 10
    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x3

    .line 16
    new-array v3, v3, [Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    aput-object v0, v3, v4

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    aput-object v1, v3, v0

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    aput-object v2, v3, v0

    .line 26
    .line 27
    const-string v0, "LSAPR_TRANSLATED_NAME{Use:%d,Name:%s,DomainIndex:%d"

    .line 28
    .line 29
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedName;->name:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 4
    .line 5
    .line 6
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
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readShort()S

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iput-short v1, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedName;->use:S

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    invoke-virtual {p1, v1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->fullySkipBytes(I)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedName;->name:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iput p1, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedName;->domainIndex:I

    .line 29
    .line 30
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
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedName;->name:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
