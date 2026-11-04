.class public Lcom/rapid7/client/dcerpc/mssamr/messages/SamrGetGroupsForUserResponse;
.super Lcom/rapid7/client/dcerpc/messages/RequestResponse;
.source "SourceFile"


# instance fields
.field private buffer:Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGetGroupsBuffer;


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
.method public getGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rapid7/client/dcerpc/mssamr/objects/GroupMembership;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrGetGroupsForUserResponse;->buffer:Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGetGroupsBuffer;

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

.method public unmarshalResponse(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readReferentID()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGetGroupsBuffer;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGetGroupsBuffer;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrGetGroupsForUserResponse;->buffer:Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGetGroupsBuffer;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnmarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrGetGroupsForUserResponse;->buffer:Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGetGroupsBuffer;

    .line 20
    .line 21
    :goto_0
    return-void
.end method
