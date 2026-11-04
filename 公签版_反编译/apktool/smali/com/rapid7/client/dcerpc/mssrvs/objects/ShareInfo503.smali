.class public Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo503;
.super Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo2;
.source "SourceFile"


# instance fields
.field private securityDescriptor:[B

.field private serverName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo2;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private readIndex(Ljava/lang/String;Lcom/rapid7/client/dcerpc/io/PacketInput;)I
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnsignedInt()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/32 v2, 0x7fffffff

    .line 6
    .line 7
    .line 8
    cmp-long p2, v0, v2

    .line 9
    .line 10
    if-gtz p2, :cond_0

    .line 11
    .line 12
    long-to-int p1, v0

    .line 13
    return p1

    .line 14
    :cond_0
    new-instance p2, Ljava/rmi/UnmarshalException;

    .line 15
    .line 16
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const v1, 0x7fffffff

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x3

    .line 28
    new-array v2, v2, [Ljava/lang/Object;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    aput-object p1, v2, v3

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    aput-object v0, v2, p1

    .line 35
    .line 36
    const/4 p1, 0x2

    .line 37
    aput-object v1, v2, p1

    .line 38
    .line 39
    const-string p1, "%s %d > %d"

    .line 40
    .line 41
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {p2, p1}, Ljava/rmi/UnmarshalException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p2
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
    instance-of v1, p1, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo503;

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
    check-cast v1, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo503;

    .line 13
    .line 14
    invoke-super {p0, p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo2;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo503;->getServerName()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo503;->getServerName()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-static {p1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo503;->getSecurityDescriptor()[B

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo503;->getSecurityDescriptor()[B

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 v0, 0x0

    .line 50
    :goto_0
    return v0
.end method

.method public getSecurityDescriptor()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo503;->securityDescriptor:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public getServerName()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo503;->serverName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo2;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x1f

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo503;->getServerName()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    new-array v2, v2, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v1, v2, v3

    .line 16
    .line 17
    invoke-static {v2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    add-int/2addr v1, v0

    .line 22
    mul-int/lit8 v1, v1, 0x1f

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo503;->getSecurityDescriptor()[B

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    add-int/2addr v0, v1

    .line 33
    return v0
.end method

.method public setSecurityDescriptor([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo503;->securityDescriptor:[B

    .line 2
    .line 3
    return-void
.end method

.method public setServerName(Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo503;->serverName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

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
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo2;->getPermissions()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo2;->getMaxUses()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo2;->getCurrentUses()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo2;->getPath()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo2;->getPasswd()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo503;->getServerName()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo503;->getSecurityDescriptor()[B

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    if-nez v9, :cond_0

    .line 58
    .line 59
    const-string v9, "null"

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo503;->getSecurityDescriptor()[B

    .line 63
    .line 64
    .line 65
    move-result-object v9

    .line 66
    array-length v9, v9

    .line 67
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    :goto_0
    const/16 v10, 0xa

    .line 72
    .line 73
    new-array v10, v10, [Ljava/lang/Object;

    .line 74
    .line 75
    const/4 v11, 0x0

    .line 76
    aput-object v0, v10, v11

    .line 77
    .line 78
    const/4 v0, 0x1

    .line 79
    aput-object v1, v10, v0

    .line 80
    .line 81
    const/4 v0, 0x2

    .line 82
    aput-object v2, v10, v0

    .line 83
    .line 84
    const/4 v0, 0x3

    .line 85
    aput-object v3, v10, v0

    .line 86
    .line 87
    const/4 v0, 0x4

    .line 88
    aput-object v4, v10, v0

    .line 89
    .line 90
    const/4 v0, 0x5

    .line 91
    aput-object v5, v10, v0

    .line 92
    .line 93
    const/4 v0, 0x6

    .line 94
    aput-object v6, v10, v0

    .line 95
    .line 96
    const/4 v0, 0x7

    .line 97
    aput-object v7, v10, v0

    .line 98
    .line 99
    const/16 v0, 0x8

    .line 100
    .line 101
    aput-object v8, v10, v0

    .line 102
    .line 103
    const/16 v0, 0x9

    .line 104
    .line 105
    aput-object v9, v10, v0

    .line 106
    .line 107
    const-string v0, "SHARE_INFO_503{shi503_netname: %s, shi503_type: %d, shi503_remark: %s, shi503_permissions: %d, shi503_max_uses: %d, shi503_current_uses: %d, shi503_path: %s, shi503_passwd: %s, shi503_server_name: %s, size(shi503_security_descriptor): %s}"

    .line 108
    .line 109
    invoke-static {v0, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    return-object v0
.end method

.method public unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo2;->unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo503;->serverName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

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
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo503;->securityDescriptor:[B

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x4

    .line 21
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->fullySkipBytes(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo503;->securityDescriptor:[B

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readRawBytes([B)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo2;->unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readReferentID()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo503;->serverName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iput-object v1, p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo503;->serverName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 20
    .line 21
    :goto_0
    const-string v0, "reserved"

    .line 22
    .line 23
    invoke-direct {p0, v0, p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo503;->readIndex(Ljava/lang/String;Lcom/rapid7/client/dcerpc/io/PacketInput;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readReferentID()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    if-ltz v0, :cond_1

    .line 34
    .line 35
    new-array p1, v0, [B

    .line 36
    .line 37
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo503;->securityDescriptor:[B

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    new-instance p1, Ljava/rmi/UnmarshalException;

    .line 41
    .line 42
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const/4 v1, 0x1

    .line 47
    new-array v1, v1, [Ljava/lang/Object;

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    aput-object v0, v1, v2

    .line 51
    .line 52
    const-string v0, "Expected reserved >= 0, got: %d"

    .line 53
    .line 54
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-direct {p1, v0}, Ljava/rmi/UnmarshalException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_2
    iput-object v1, p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo503;->securityDescriptor:[B

    .line 63
    .line 64
    :goto_1
    return-void
.end method
