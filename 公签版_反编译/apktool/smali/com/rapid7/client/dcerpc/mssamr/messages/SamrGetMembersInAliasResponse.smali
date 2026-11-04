.class public Lcom/rapid7/client/dcerpc/mssamr/messages/SamrGetMembersInAliasResponse;
.super Lcom/rapid7/client/dcerpc/messages/RequestResponse;
.source "SourceFile"


# instance fields
.field private sids:[Lcom/rapid7/client/dcerpc/objects/RPCSID;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/rapid7/client/dcerpc/messages/RequestResponse;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getSids()[Lcom/rapid7/client/dcerpc/objects/RPCSID;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrGetMembersInAliasResponse;->sids:[Lcom/rapid7/client/dcerpc/objects/RPCSID;

    .line 2
    .line 3
    return-object v0
.end method

.method public unmarshalResponse(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readReferentID()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_3

    .line 12
    .line 13
    new-array v2, v2, [Lcom/rapid7/client/dcerpc/objects/RPCSID;

    .line 14
    .line 15
    iput-object v2, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrGetMembersInAliasResponse;->sids:[Lcom/rapid7/client/dcerpc/objects/RPCSID;

    .line 16
    .line 17
    const/4 v2, 0x4

    .line 18
    invoke-virtual {p1, v2}, Lcom/rapid7/client/dcerpc/io/PacketInput;->fullySkipBytes(I)V

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_0
    iget-object v3, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrGetMembersInAliasResponse;->sids:[Lcom/rapid7/client/dcerpc/objects/RPCSID;

    .line 23
    .line 24
    array-length v4, v3

    .line 25
    if-ge v2, v4, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readReferentID()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    iget-object v3, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrGetMembersInAliasResponse;->sids:[Lcom/rapid7/client/dcerpc/objects/RPCSID;

    .line 34
    .line 35
    new-instance v4, Lcom/rapid7/client/dcerpc/objects/RPCSID;

    .line 36
    .line 37
    invoke-direct {v4}, Lcom/rapid7/client/dcerpc/objects/RPCSID;-><init>()V

    .line 38
    .line 39
    .line 40
    aput-object v4, v3, v2

    .line 41
    .line 42
    :cond_0
    add-int/2addr v2, v1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    array-length v2, v3

    .line 45
    :goto_1
    if-ge v0, v2, :cond_4

    .line 46
    .line 47
    aget-object v4, v3, v0

    .line 48
    .line 49
    if-eqz v4, :cond_2

    .line 50
    .line 51
    invoke-virtual {p1, v4}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnmarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 52
    .line 53
    .line 54
    :cond_2
    add-int/2addr v0, v1

    .line 55
    goto :goto_1

    .line 56
    :cond_3
    if-gtz v2, :cond_5

    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrGetMembersInAliasResponse;->sids:[Lcom/rapid7/client/dcerpc/objects/RPCSID;

    .line 60
    .line 61
    :cond_4
    return-void

    .line 62
    :cond_5
    new-instance p1, Ljava/rmi/UnmarshalException;

    .line 63
    .line 64
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    new-array v1, v1, [Ljava/lang/Object;

    .line 69
    .line 70
    aput-object v2, v1, v0

    .line 71
    .line 72
    const-string v0, "Information null but EntriesRead != 0: %d"

    .line 73
    .line 74
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-direct {p1, v0}, Ljava/rmi/UnmarshalException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_3

    .line 82
    :goto_2
    throw p1

    .line 83
    :goto_3
    goto :goto_2
.end method
