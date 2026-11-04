.class public Lcom/rapid7/client/dcerpc/objects/RPCSID;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;
.implements Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;


# instance fields
.field private identifierAuthority:[B

.field private revision:C

.field private subAuthority:[J

.field private subAuthorityCount:C


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
    instance-of v1, p1, Lcom/rapid7/client/dcerpc/objects/RPCSID;

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
    check-cast p1, Lcom/rapid7/client/dcerpc/objects/RPCSID;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/objects/RPCSID;->getRevision()C

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/objects/RPCSID;->getRevision()C

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-ne v1, v3, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/objects/RPCSID;->getSubAuthorityCount()C

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/objects/RPCSID;->getSubAuthorityCount()C

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-ne v1, v3, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/objects/RPCSID;->getIdentifierAuthority()[B

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/objects/RPCSID;->getIdentifierAuthority()[B

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/objects/RPCSID;->getSubAuthority()[J

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/objects/RPCSID;->getSubAuthority()[J

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([J[J)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const/4 v0, 0x0

    .line 63
    :goto_0
    return v0
.end method

.method public getIdentifierAuthority()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/objects/RPCSID;->identifierAuthority:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public getRevision()C
    .locals 1

    .line 1
    iget-char v0, p0, Lcom/rapid7/client/dcerpc/objects/RPCSID;->revision:C

    .line 2
    .line 3
    return v0
.end method

.method public getSubAuthority()[J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/objects/RPCSID;->subAuthority:[J

    .line 2
    .line 3
    return-object v0
.end method

.method public getSubAuthorityCount()C
    .locals 1

    .line 1
    iget-char v0, p0, Lcom/rapid7/client/dcerpc/objects/RPCSID;->subAuthorityCount:C

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/objects/RPCSID;->getRevision()C

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
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/objects/RPCSID;->getSubAuthorityCount()C

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x2

    .line 18
    new-array v2, v2, [Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    aput-object v0, v2, v3

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    aput-object v1, v2, v0

    .line 25
    .line 26
    invoke-static {v2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/objects/RPCSID;->getIdentifierAuthority()[B

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    add-int/2addr v1, v0

    .line 41
    mul-int/lit8 v1, v1, 0x1f

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/objects/RPCSID;->getSubAuthority()[J

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    add-int/2addr v0, v1

    .line 52
    return v0
.end method

.method public marshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 0

    return-void
.end method

.method public marshalEntity(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-char v2, p0, Lcom/rapid7/client/dcerpc/objects/RPCSID;->subAuthorityCount:C

    .line 4
    .line 5
    iget-object v3, p0, Lcom/rapid7/client/dcerpc/objects/RPCSID;->subAuthority:[J

    .line 6
    .line 7
    array-length v3, v3

    .line 8
    if-ne v2, v3, :cond_1

    .line 9
    .line 10
    sget-object v2, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 11
    .line 12
    invoke-virtual {p1, v2}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 13
    .line 14
    .line 15
    iget-char v2, p0, Lcom/rapid7/client/dcerpc/objects/RPCSID;->revision:C

    .line 16
    .line 17
    invoke-virtual {p1, v2}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeByte(I)V

    .line 18
    .line 19
    .line 20
    iget-char v2, p0, Lcom/rapid7/client/dcerpc/objects/RPCSID;->subAuthorityCount:C

    .line 21
    .line 22
    invoke-virtual {p1, v2}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeByte(I)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/rapid7/client/dcerpc/objects/RPCSID;->identifierAuthority:[B

    .line 26
    .line 27
    const/4 v3, 0x6

    .line 28
    invoke-virtual {p1, v2, v1, v3}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->write([BII)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/rapid7/client/dcerpc/objects/RPCSID;->subAuthority:[J

    .line 32
    .line 33
    array-length v3, v2

    .line 34
    :goto_0
    if-ge v1, v3, :cond_0

    .line 35
    .line 36
    aget-wide v4, v2, v1

    .line 37
    .line 38
    long-to-int v5, v4

    .line 39
    invoke-virtual {p1, v5}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 40
    .line 41
    .line 42
    add-int/2addr v1, v0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    return-void

    .line 45
    :cond_1
    new-instance p1, Ljava/rmi/MarshalException;

    .line 46
    .line 47
    iget-char v2, p0, Lcom/rapid7/client/dcerpc/objects/RPCSID;->subAuthorityCount:C

    .line 48
    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iget-object v3, p0, Lcom/rapid7/client/dcerpc/objects/RPCSID;->subAuthority:[J

    .line 54
    .line 55
    array-length v3, v3

    .line 56
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    const/4 v4, 0x2

    .line 61
    new-array v4, v4, [Ljava/lang/Object;

    .line 62
    .line 63
    aput-object v2, v4, v1

    .line 64
    .line 65
    aput-object v3, v4, v0

    .line 66
    .line 67
    const-string v0, "SubAuthorityCount (%d) != SubAuthority[] length (%d)"

    .line 68
    .line 69
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-direct {p1, v0}, Ljava/rmi/MarshalException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :goto_1
    throw p1

    .line 78
    :goto_2
    goto :goto_1
.end method

.method public marshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/objects/RPCSID;->subAuthority:[J

    .line 7
    .line 8
    array-length v0, v0

    .line 9
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setIdentifierAuthority([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/objects/RPCSID;->identifierAuthority:[B

    .line 2
    .line 3
    return-void
.end method

.method public setRevision(C)V
    .locals 0

    .line 1
    iput-char p1, p0, Lcom/rapid7/client/dcerpc/objects/RPCSID;->revision:C

    .line 2
    .line 3
    return-void
.end method

.method public setSubAuthority([J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/objects/RPCSID;->subAuthority:[J

    .line 2
    .line 3
    array-length p1, p1

    .line 4
    int-to-char p1, p1

    .line 5
    iput-char p1, p0, Lcom/rapid7/client/dcerpc/objects/RPCSID;->subAuthorityCount:C

    .line 6
    .line 7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/objects/RPCSID;->getRevision()C

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
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/objects/RPCSID;->getSubAuthorityCount()C

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/objects/RPCSID;->getIdentifierAuthority()[B

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/objects/RPCSID;->getSubAuthority()[J

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {v3}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const/4 v4, 0x4

    .line 34
    new-array v4, v4, [Ljava/lang/Object;

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    aput-object v0, v4, v5

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    aput-object v1, v4, v0

    .line 41
    .line 42
    const/4 v0, 0x2

    .line 43
    aput-object v2, v4, v0

    .line 44
    .line 45
    const/4 v0, 0x3

    .line 46
    aput-object v3, v4, v0

    .line 47
    .line 48
    const-string v0, "RPC_SID{Revision:%d, SubAuthorityCount:%d, IdentifierAuthority:%s, SubAuthority: %s}"

    .line 49
    .line 50
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    return-object v0
.end method

.method public unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 0

    return-void
.end method

.method public unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 4

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
    iput-char v0, p0, Lcom/rapid7/client/dcerpc/objects/RPCSID;->revision:C

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnsignedByte()C

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput-char v0, p0, Lcom/rapid7/client/dcerpc/objects/RPCSID;->subAuthorityCount:C

    .line 17
    .line 18
    const/4 v0, 0x6

    .line 19
    new-array v0, v0, [B

    .line 20
    .line 21
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/objects/RPCSID;->identifierAuthority:[B

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readRawBytes([B)V

    .line 24
    .line 25
    .line 26
    iget-char v0, p0, Lcom/rapid7/client/dcerpc/objects/RPCSID;->subAuthorityCount:C

    .line 27
    .line 28
    new-array v0, v0, [J

    .line 29
    .line 30
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/objects/RPCSID;->subAuthority:[J

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    :goto_0
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/objects/RPCSID;->subAuthority:[J

    .line 34
    .line 35
    array-length v2, v1

    .line 36
    if-ge v0, v2, :cond_0

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnsignedInt()J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    aput-wide v2, v1, v0

    .line 43
    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method

.method public unmarshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->fullySkipBytes(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
