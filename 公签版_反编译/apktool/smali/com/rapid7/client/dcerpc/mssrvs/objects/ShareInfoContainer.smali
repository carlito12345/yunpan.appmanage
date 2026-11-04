.class public abstract Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer$ShareInfo503Container;,
        Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer$ShareInfo502Container;,
        Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer$ShareInfo501Container;,
        Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer$ShareInfo2Container;,
        Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer$ShareInfo1Container;,
        Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer$ShareInfo0Container;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;"
    }
.end annotation


# instance fields
.field private buffer:[Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


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
.method public abstract createBuffer(I)[Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation
.end method

.method public abstract createEntry()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

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
    instance-of v0, p1, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer;

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
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer;->buffer:[Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;

    .line 12
    .line 13
    check-cast p1, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer;->buffer:[Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;

    .line 16
    .line 17
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public getBuffer()[Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer;->buffer:[Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer;->buffer:[Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer;->buffer:[Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->fullySkipBytes(I)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    iget-object v2, p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer;->buffer:[Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;

    .line 17
    .line 18
    array-length v3, v2

    .line 19
    if-ge v1, v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer;->createEntry()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    aput-object v3, v2, v1

    .line 26
    .line 27
    iget-object v2, p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer;->buffer:[Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;

    .line 28
    .line 29
    aget-object v2, v2, v1

    .line 30
    .line 31
    invoke-virtual {v2, p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;->unmarshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    array-length v1, v2

    .line 38
    const/4 v3, 0x0

    .line 39
    :goto_1
    if-ge v3, v1, :cond_1

    .line 40
    .line 41
    aget-object v4, v2, v3

    .line 42
    .line 43
    invoke-virtual {v4, p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;->unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 44
    .line 45
    .line 46
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer;->buffer:[Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;

    .line 50
    .line 51
    array-length v2, v1

    .line 52
    :goto_2
    if-ge v0, v2, :cond_2

    .line 53
    .line 54
    aget-object v3, v1, v0

    .line 55
    .line 56
    invoke-virtual {v3, p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;->unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 57
    .line 58
    .line 59
    add-int/lit8 v0, v0, 0x1

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    return-void
.end method

.method public unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "EntriesRead"

    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer;->readIndex(Ljava/lang/String;Lcom/rapid7/client/dcerpc/io/PacketInput;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readReferentID()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    if-ltz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer;->createBuffer(I)[Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer;->buffer:[Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance p1, Ljava/rmi/UnmarshalException;

    .line 28
    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/4 v1, 0x1

    .line 34
    new-array v1, v1, [Ljava/lang/Object;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    aput-object v0, v1, v2

    .line 38
    .line 39
    const-string v0, "Expected entriesRead >= 0, got: %d"

    .line 40
    .line 41
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-direct {p1, v0}, Ljava/rmi/UnmarshalException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_1
    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer;->buffer:[Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;

    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method public unmarshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 0

    return-void
.end method
