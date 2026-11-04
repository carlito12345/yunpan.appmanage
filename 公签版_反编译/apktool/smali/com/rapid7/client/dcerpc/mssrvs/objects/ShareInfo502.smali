.class public Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo502;
.super Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo2;
.source "SourceFile"


# instance fields
.field private securityDescriptor:[B


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
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo502;

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
    check-cast v1, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo502;

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
    iget-object p1, p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo502;->securityDescriptor:[B

    .line 21
    .line 22
    iget-object v1, v1, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo502;->securityDescriptor:[B

    .line 23
    .line 24
    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0
.end method

.method public getSecurityDescriptor()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo502;->securityDescriptor:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

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
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo502;->securityDescriptor:[B

    .line 8
    .line 9
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/2addr v1, v0

    .line 14
    return v1
.end method

.method public setSecurityDescriptor([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo502;->securityDescriptor:[B

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

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
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo502;->getSecurityDescriptor()[B

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    if-nez v8, :cond_0

    .line 54
    .line 55
    const-string v8, "null"

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo502;->getSecurityDescriptor()[B

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    array-length v8, v8

    .line 63
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    :goto_0
    const/16 v9, 0x9

    .line 68
    .line 69
    new-array v9, v9, [Ljava/lang/Object;

    .line 70
    .line 71
    const/4 v10, 0x0

    .line 72
    aput-object v0, v9, v10

    .line 73
    .line 74
    const/4 v0, 0x1

    .line 75
    aput-object v1, v9, v0

    .line 76
    .line 77
    const/4 v0, 0x2

    .line 78
    aput-object v2, v9, v0

    .line 79
    .line 80
    const/4 v0, 0x3

    .line 81
    aput-object v3, v9, v0

    .line 82
    .line 83
    const/4 v0, 0x4

    .line 84
    aput-object v4, v9, v0

    .line 85
    .line 86
    const/4 v0, 0x5

    .line 87
    aput-object v5, v9, v0

    .line 88
    .line 89
    const/4 v0, 0x6

    .line 90
    aput-object v6, v9, v0

    .line 91
    .line 92
    const/4 v0, 0x7

    .line 93
    aput-object v7, v9, v0

    .line 94
    .line 95
    const/16 v0, 0x8

    .line 96
    .line 97
    aput-object v8, v9, v0

    .line 98
    .line 99
    const-string v0, "SHARE_INFO_502{shi502_netname: %s, shi502_type: %d, shi502_remark: %s, shi502_permissions: %d, shi502_max_uses: %d, shi502_current_uses: %d, shi502_path: %s, shi502_passwd: %s, size(shi502_security_descriptor): %s}"

    .line 100
    .line 101
    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    return-object v0
.end method

.method public unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo2;->unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo502;->securityDescriptor:[B

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->fullySkipBytes(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo502;->securityDescriptor:[B

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readRawBytes([B)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo2;->unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "reserved"

    .line 5
    .line 6
    invoke-direct {p0, v0, p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo502;->readIndex(Ljava/lang/String;Lcom/rapid7/client/dcerpc/io/PacketInput;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readReferentID()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    if-ltz v0, :cond_0

    .line 17
    .line 18
    new-array p1, v0, [B

    .line 19
    .line 20
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo502;->securityDescriptor:[B

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance p1, Ljava/rmi/UnmarshalException;

    .line 24
    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x1

    .line 30
    new-array v1, v1, [Ljava/lang/Object;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    aput-object v0, v1, v2

    .line 34
    .line 35
    const-string v0, "Expected reserved >= 0, got: %d"

    .line 36
    .line 37
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-direct {p1, v0}, Ljava/rmi/UnmarshalException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_1
    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo502;->securityDescriptor:[B

    .line 47
    .line 48
    :goto_0
    return-void
.end method
