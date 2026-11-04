.class public Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final lastWriteTime:Lcom/rapid7/client/dcerpc/msrrp/dto/FileTime;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/rapid7/client/dcerpc/msrrp/dto/FileTime;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKey;->name:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKey;->lastWriteTime:Lcom/rapid7/client/dcerpc/msrrp/dto/FileTime;

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "LastWriteTime is invalid: "

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    const-string v0, "Name is invalid: "

    .line 36
    .line 37
    invoke-static {v0, p1}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKey;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKey;->name:Ljava/lang/String;

    .line 6
    .line 7
    check-cast p1, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKey;

    .line 8
    .line 9
    iget-object v1, p1, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKey;->name:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKey;->lastWriteTime:Lcom/rapid7/client/dcerpc/msrrp/dto/FileTime;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKey;->lastWriteTime:Lcom/rapid7/client/dcerpc/msrrp/dto/FileTime;

    .line 20
    .line 21
    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    return p1
.end method

.method public getLastWriteTime()Lcom/rapid7/client/dcerpc/msrrp/dto/FileTime;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKey;->lastWriteTime:Lcom/rapid7/client/dcerpc/msrrp/dto/FileTime;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKey;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKey;->name:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKey;->lastWriteTime:Lcom/rapid7/client/dcerpc/msrrp/dto/FileTime;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v0, v2, v3

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    aput-object v1, v2, v0

    .line 13
    .line 14
    invoke-static {v2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKey;->name:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKey;->lastWriteTime:Lcom/rapid7/client/dcerpc/msrrp/dto/FileTime;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v0, v2, v3

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    aput-object v1, v2, v0

    .line 13
    .line 14
    const-string v0, "%s {lastWriteTime=%s}"

    .line 15
    .line 16
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method
