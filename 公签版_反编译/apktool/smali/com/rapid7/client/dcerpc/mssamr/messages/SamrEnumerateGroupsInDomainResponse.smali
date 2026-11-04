.class public Lcom/rapid7/client/dcerpc/mssamr/messages/SamrEnumerateGroupsInDomainResponse;
.super Lcom/rapid7/client/dcerpc/mssamr/messages/SamrEnumerateResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rapid7/client/dcerpc/mssamr/messages/SamrEnumerateResponse<",
        "Lcom/rapid7/client/dcerpc/mssamr/objects/GroupInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private groups:Lcom/rapid7/client/dcerpc/mssamr/objects/EnumeratedGroups;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrEnumerateResponse;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rapid7/client/dcerpc/mssamr/objects/GroupInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrEnumerateGroupsInDomainResponse;->groups:Lcom/rapid7/client/dcerpc/mssamr/objects/EnumeratedGroups;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPREnumerationBuffer;->getEntries()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public unmarshallBuffer(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/objects/EnumeratedGroups;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/EnumeratedGroups;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrEnumerateGroupsInDomainResponse;->groups:Lcom/rapid7/client/dcerpc/mssamr/objects/EnumeratedGroups;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnmarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 9
    .line 10
    .line 11
    return-void
.end method
