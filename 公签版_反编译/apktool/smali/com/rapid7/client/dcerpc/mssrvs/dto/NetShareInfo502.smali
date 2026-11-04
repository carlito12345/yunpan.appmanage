.class public Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo502;
.super Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;
.source "SourceFile"


# instance fields
.field private final securityDescriptor:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;-><init>(Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-object p9, p0, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo502;->securityDescriptor:[B

    .line 5
    .line 6
    return-void
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
    instance-of v1, p1, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo502;

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
    check-cast v1, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo502;

    .line 13
    .line 14
    invoke-super {p0, p1}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo502;->getSecurityDescriptor()[B

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v1}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo502;->getSecurityDescriptor()[B

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/4 v0, 0x0

    .line 36
    :goto_0
    return v0
.end method

.method public getSecurityDescriptor()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo502;->securityDescriptor:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x1f

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo502;->getSecurityDescriptor()[B

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo;->getNetName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo;->formatString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo1;->getType()I

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
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo1;->getRemark()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p0, v2}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo;->formatString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;->getPermissions()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;->getMaxUses()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;->getCurrentUses()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;->getPasswd()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-virtual {p0, v6}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo;->formatString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;->getPasswd()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-virtual {p0, v7}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo;->formatString(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo502;->getSecurityDescriptor()[B

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    if-nez v8, :cond_0

    .line 70
    .line 71
    const-string v8, "null"

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo502;->getSecurityDescriptor()[B

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    array-length v8, v8

    .line 79
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    :goto_0
    const/16 v9, 0x9

    .line 84
    .line 85
    new-array v9, v9, [Ljava/lang/Object;

    .line 86
    .line 87
    const/4 v10, 0x0

    .line 88
    aput-object v0, v9, v10

    .line 89
    .line 90
    const/4 v0, 0x1

    .line 91
    aput-object v1, v9, v0

    .line 92
    .line 93
    const/4 v0, 0x2

    .line 94
    aput-object v2, v9, v0

    .line 95
    .line 96
    const/4 v0, 0x3

    .line 97
    aput-object v3, v9, v0

    .line 98
    .line 99
    const/4 v0, 0x4

    .line 100
    aput-object v4, v9, v0

    .line 101
    .line 102
    const/4 v0, 0x5

    .line 103
    aput-object v5, v9, v0

    .line 104
    .line 105
    const/4 v0, 0x6

    .line 106
    aput-object v6, v9, v0

    .line 107
    .line 108
    const/4 v0, 0x7

    .line 109
    aput-object v7, v9, v0

    .line 110
    .line 111
    const/16 v0, 0x8

    .line 112
    .line 113
    aput-object v8, v9, v0

    .line 114
    .line 115
    const-string v0, "NetShareInfo502{netName: %s, type: %d, remark: %s, permissions: %d, maxUses: %d, currentUses: %d, path: %s, passwd: %s, size(securityDescriptor): %s}"

    .line 116
    .line 117
    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    return-object v0
.end method
