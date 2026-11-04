.class public Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo0;
.super Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo0;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    invoke-super {p0, p1}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

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
    const-string v1, "NetShareInfo0{netName: "

    .line 10
    .line 11
    const-string v2, "}"

    .line 12
    .line 13
    invoke-static {v1, v0, v2}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method
