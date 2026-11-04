.class public Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final lastWriteTime:J

.field private final maxClassLen:I

.field private final maxSubKeyLen:I

.field private final maxValueLen:I

.field private final maxValueNameLen:I

.field private final securityDescriptor:I

.field private final subKeys:I

.field private final values:I


# direct methods
.method public constructor <init>(IIIIIIIJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->subKeys:I

    .line 5
    .line 6
    iput p2, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->maxSubKeyLen:I

    .line 7
    .line 8
    iput p3, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->maxClassLen:I

    .line 9
    .line 10
    iput p4, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->values:I

    .line 11
    .line 12
    iput p5, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->maxValueNameLen:I

    .line 13
    .line 14
    iput p6, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->maxValueLen:I

    .line 15
    .line 16
    iput p7, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->securityDescriptor:I

    .line 17
    .line 18
    iput-wide p8, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->lastWriteTime:J

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;

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
    check-cast p1, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->getSubKeys()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->getSubKeys()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-ne v1, v3, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->getMaxSubKeyLen()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->getMaxSubKeyLen()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-ne v1, v3, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->getMaxClassLen()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->getMaxClassLen()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-ne v1, v3, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->getValues()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->getValues()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-ne v1, v3, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->getMaxValueNameLen()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->getMaxValueNameLen()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-ne v1, v3, :cond_2

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->getMaxValueLen()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->getMaxValueLen()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-ne v1, v3, :cond_2

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->getSecurityDescriptor()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->getSecurityDescriptor()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-ne v1, v3, :cond_2

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->getLastWriteTime()J

    .line 84
    .line 85
    .line 86
    move-result-wide v3

    .line 87
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->getLastWriteTime()J

    .line 88
    .line 89
    .line 90
    move-result-wide v5

    .line 91
    cmp-long p1, v3, v5

    .line 92
    .line 93
    if-nez p1, :cond_2

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    const/4 v0, 0x0

    .line 97
    :goto_0
    return v0
.end method

.method public getLastWriteTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->lastWriteTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getMaxClassLen()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->maxClassLen:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxSubKeyLen()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->maxSubKeyLen:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxValueLen()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->maxValueLen:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxValueNameLen()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->maxValueNameLen:I

    .line 2
    .line 3
    return v0
.end method

.method public getSecurityDescriptor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->securityDescriptor:I

    .line 2
    .line 3
    return v0
.end method

.method public getSubKeys()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->subKeys:I

    .line 2
    .line 3
    return v0
.end method

.method public getValues()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->values:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->getSubKeys()I

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
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->getMaxSubKeyLen()I

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
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->getMaxClassLen()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->getValues()I

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
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->getMaxValueNameLen()I

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
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->getMaxValueLen()I

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
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->getSecurityDescriptor()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->getLastWriteTime()J

    .line 58
    .line 59
    .line 60
    move-result-wide v7

    .line 61
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

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
    invoke-static {v8}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->getSubKeys()I

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
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->getMaxSubKeyLen()I

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
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->getMaxClassLen()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->getValues()I

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
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->getMaxValueNameLen()I

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
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->getMaxValueLen()I

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
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->getSecurityDescriptor()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->getLastWriteTime()J

    .line 58
    .line 59
    .line 60
    move-result-wide v7

    .line 61
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

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
    const-string v0, "RegistryKeyInfo{subKeys: %d, maxSubKeyLen: %d, maxClassLen: %d, values: %d, maxValueNameLen: %d, maxValueLen: %d, securityDescriptor: %d,lastWriteTime: %d}"

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
