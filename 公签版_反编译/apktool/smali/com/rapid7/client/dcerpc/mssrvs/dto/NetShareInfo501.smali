.class public Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo501;
.super Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo1;
.source "SourceFile"


# instance fields
.field private final flags:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo501;->flags:I

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
    instance-of v1, p1, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo501;

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
    check-cast v1, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo501;

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
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo501;->getFlags()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {v1}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo501;->getFlags()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-ne p1, v1, :cond_2

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

.method public getFlags()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo501;->flags:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 4

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
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo501;->getFlags()I

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
    const/4 v2, 0x1

    .line 16
    new-array v2, v2, [Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    aput-object v1, v2, v3

    .line 20
    .line 21
    invoke-static {v2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    add-int/2addr v1, v0

    .line 26
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

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
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo501;->getFlags()I

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
    const-string v0, "NetShareInfo501{netName: %s, type: %d, remark: %s, flags: %d}"

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
