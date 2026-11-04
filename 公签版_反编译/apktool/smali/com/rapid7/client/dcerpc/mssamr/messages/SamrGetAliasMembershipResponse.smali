.class public Lcom/rapid7/client/dcerpc/mssamr/messages/SamrGetAliasMembershipResponse;
.super Lcom/rapid7/client/dcerpc/messages/RequestResponse;
.source "SourceFile"


# instance fields
.field private membership:Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRULongArray;


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
.method public getMembership()Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRULongArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrGetAliasMembershipResponse;->membership:Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRULongArray;

    .line 2
    .line 3
    return-object v0
.end method

.method public unmarshalResponse(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRULongArray;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRULongArray;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrGetAliasMembershipResponse;->membership:Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRULongArray;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnmarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 9
    .line 10
    .line 11
    return-void
.end method
