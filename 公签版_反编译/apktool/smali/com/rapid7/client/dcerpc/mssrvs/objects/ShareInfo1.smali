.class public Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo1;
.super Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo0;
.source "SourceFile"


# instance fields
.field private remark:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo0;-><init>()V

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
    instance-of v1, p1, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo1;

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
    move-object v1, p1

    .line 12
    check-cast v1, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo1;

    .line 13
    .line 14
    invoke-super {p0, p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    iget p1, p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo1;->type:I

    .line 21
    .line 22
    iget v3, v1, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo1;->type:I

    .line 23
    .line 24
    if-ne p1, v3, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo1;->getRemark()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo1;->getRemark()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {p1, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 v0, 0x0

    .line 42
    :goto_0
    return v0
.end method

.method public getRemark()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo1;->remark:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo1;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x1f

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo1;->getType()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo1;->getRemark()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x2

    .line 20
    new-array v3, v3, [Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    aput-object v1, v3, v4

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    aput-object v2, v3, v1

    .line 27
    .line 28
    invoke-static {v3}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    add-int/2addr v1, v0

    .line 33
    return v1
.end method

.method public setRemark(Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo1;->remark:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 2
    .line 3
    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo1;->type:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;->getNetName()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo1;->getType()I

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
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo1;->getRemark()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x3

    .line 18
    new-array v3, v3, [Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    aput-object v0, v3, v4

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    aput-object v1, v3, v0

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    aput-object v2, v3, v0

    .line 28
    .line 29
    const-string v0, "SHARE_INFO_1{shi1_netname: %s, shi1_type: %d, shi1_remark: %s}"

    .line 30
    .line 31
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method public unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;->unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo1;->remark:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnmarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;->unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnsignedInt()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    long-to-int v1, v0

    .line 9
    iput v1, p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo1;->type:I

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readReferentID()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    new-instance p1, Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 18
    .line 19
    invoke-direct {p1}, Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo1;->remark:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo1;->remark:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 27
    .line 28
    :goto_0
    return-void
.end method
