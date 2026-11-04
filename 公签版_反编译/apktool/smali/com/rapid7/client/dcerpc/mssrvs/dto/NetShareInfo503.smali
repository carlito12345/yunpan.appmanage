.class public Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo503;
.super Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo502;
.source "SourceFile"


# instance fields
.field private final serverName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move v2, p2

    .line 4
    move-object v3, p3

    .line 5
    move v4, p4

    .line 6
    move v5, p5

    .line 7
    move/from16 v6, p6

    .line 8
    .line 9
    move-object/from16 v7, p7

    .line 10
    .line 11
    move-object/from16 v8, p8

    .line 12
    .line 13
    move-object/from16 v9, p10

    .line 14
    .line 15
    invoke-direct/range {v0 .. v9}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo502;-><init>(Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;[B)V

    .line 16
    .line 17
    .line 18
    move-object/from16 v1, p9

    .line 19
    .line 20
    iput-object v1, v0, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo503;->serverName:Ljava/lang/String;

    .line 21
    .line 22
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
    instance-of v1, p1, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo503;

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
    check-cast v1, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo503;

    .line 13
    .line 14
    invoke-super {p0, p1}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo502;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo503;->getServerName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v1}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo503;->getServerName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {p1, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

.method public getServerName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo503;->serverName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo502;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x1f

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo503;->getServerName()Ljava/lang/String;

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
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 12

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
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo503;->getServerName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    invoke-virtual {p0, v8}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo;->formatString(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo502;->getSecurityDescriptor()[B

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    if-nez v9, :cond_0

    .line 78
    .line 79
    const-string v9, "null"

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo502;->getSecurityDescriptor()[B

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    array-length v9, v9

    .line 87
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v9

    .line 91
    :goto_0
    const/16 v10, 0xa

    .line 92
    .line 93
    new-array v10, v10, [Ljava/lang/Object;

    .line 94
    .line 95
    const/4 v11, 0x0

    .line 96
    aput-object v0, v10, v11

    .line 97
    .line 98
    const/4 v0, 0x1

    .line 99
    aput-object v1, v10, v0

    .line 100
    .line 101
    const/4 v0, 0x2

    .line 102
    aput-object v2, v10, v0

    .line 103
    .line 104
    const/4 v0, 0x3

    .line 105
    aput-object v3, v10, v0

    .line 106
    .line 107
    const/4 v0, 0x4

    .line 108
    aput-object v4, v10, v0

    .line 109
    .line 110
    const/4 v0, 0x5

    .line 111
    aput-object v5, v10, v0

    .line 112
    .line 113
    const/4 v0, 0x6

    .line 114
    aput-object v6, v10, v0

    .line 115
    .line 116
    const/4 v0, 0x7

    .line 117
    aput-object v7, v10, v0

    .line 118
    .line 119
    const/16 v0, 0x8

    .line 120
    .line 121
    aput-object v8, v10, v0

    .line 122
    .line 123
    const/16 v0, 0x9

    .line 124
    .line 125
    aput-object v9, v10, v0

    .line 126
    .line 127
    const-string v0, "NetShareInfo503{netName: %s, type: %d, remark: %s, permissions: %d, maxUses: %d, currentUses: %d, path: %s, passwd: %s, serverName: %s, size(securityDescriptor): %s}"

    .line 128
    .line 129
    invoke-static {v0, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    return-object v0
.end method
