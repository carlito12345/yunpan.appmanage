.class public Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;
.super Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo1;
.source "SourceFile"


# instance fields
.field private final currentUses:I

.field private final maxUses:I

.field private final passwd:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final permissions:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;->permissions:I

    .line 5
    .line 6
    iput p5, p0, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;->maxUses:I

    .line 7
    .line 8
    iput p6, p0, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;->currentUses:I

    .line 9
    .line 10
    iput-object p7, p0, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;->path:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p8, p0, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;->passwd:Ljava/lang/String;

    .line 13
    .line 14
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
    instance-of v1, p1, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;

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
    check-cast v1, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;

    .line 13
    .line 14
    invoke-super {p0, p1}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo1;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;->getPermissions()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {v1}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;->getPermissions()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-ne p1, v3, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;->getMaxUses()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-virtual {v1}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;->getMaxUses()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-ne p1, v3, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;->getCurrentUses()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-virtual {v1}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;->getCurrentUses()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-ne p1, v3, :cond_2

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;->getPath()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v1}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;->getPath()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-static {p1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;->getPasswd()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {v1}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;->getPasswd()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {p1, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_2

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    const/4 v0, 0x0

    .line 80
    :goto_0
    return v0
.end method

.method public getCurrentUses()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;->currentUses:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxUses()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;->maxUses:I

    .line 2
    .line 3
    return v0
.end method

.method public getPasswd()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;->passwd:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;->path:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPermissions()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;->permissions:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo1;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x1f

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;->getPermissions()I

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
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;->getMaxUses()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;->getCurrentUses()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;->getPath()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;->getPasswd()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    const/4 v6, 0x5

    .line 40
    new-array v6, v6, [Ljava/lang/Object;

    .line 41
    .line 42
    const/4 v7, 0x0

    .line 43
    aput-object v1, v6, v7

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    aput-object v2, v6, v1

    .line 47
    .line 48
    const/4 v1, 0x2

    .line 49
    aput-object v3, v6, v1

    .line 50
    .line 51
    const/4 v1, 0x3

    .line 52
    aput-object v4, v6, v1

    .line 53
    .line 54
    const/4 v1, 0x4

    .line 55
    aput-object v5, v6, v1

    .line 56
    .line 57
    invoke-static {v6}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    add-int/2addr v1, v0

    .line 62
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 10

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
    const/16 v8, 0x8

    .line 66
    .line 67
    new-array v8, v8, [Ljava/lang/Object;

    .line 68
    .line 69
    const/4 v9, 0x0

    .line 70
    aput-object v0, v8, v9

    .line 71
    .line 72
    const/4 v0, 0x1

    .line 73
    aput-object v1, v8, v0

    .line 74
    .line 75
    const/4 v0, 0x2

    .line 76
    aput-object v2, v8, v0

    .line 77
    .line 78
    const/4 v0, 0x3

    .line 79
    aput-object v3, v8, v0

    .line 80
    .line 81
    const/4 v0, 0x4

    .line 82
    aput-object v4, v8, v0

    .line 83
    .line 84
    const/4 v0, 0x5

    .line 85
    aput-object v5, v8, v0

    .line 86
    .line 87
    const/4 v0, 0x6

    .line 88
    aput-object v6, v8, v0

    .line 89
    .line 90
    const/4 v0, 0x7

    .line 91
    aput-object v7, v8, v0

    .line 92
    .line 93
    const-string v0, "NetShareInfo2{netName: %s, type: %d, remark: %s, permissions: %d, maxUses: %d, currentUses: %d, path: %s, passwd: %s}"

    .line 94
    .line 95
    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    return-object v0
.end method
