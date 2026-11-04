.class public Lcom/rapid7/client/dcerpc/mssamr/messages/SamrConnect2Request;
.super Lcom/rapid7/client/dcerpc/messages/RequestCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rapid7/client/dcerpc/messages/RequestCall<",
        "Lcom/rapid7/client/dcerpc/messages/HandleResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static final OP_NUM:S = 0x39s


# instance fields
.field private final desiredAccess:I

.field private final serverName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;


# direct methods
.method public constructor <init>(Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;I)V
    .locals 1

    .line 1
    const/16 v0, 0x39

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/rapid7/client/dcerpc/messages/RequestCall;-><init>(S)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrConnect2Request;->serverName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 7
    .line 8
    iput p2, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrConnect2Request;->desiredAccess:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getResponseObject()Lcom/rapid7/client/dcerpc/messages/HandleResponse;
    .locals 1

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/messages/HandleResponse;

    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/messages/HandleResponse;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getResponseObject()Lcom/rapid7/client/dcerpc/messages/RequestResponse;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrConnect2Request;->getResponseObject()Lcom/rapid7/client/dcerpc/messages/HandleResponse;

    move-result-object v0

    return-object v0
.end method

.method public marshal(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrConnect2Request;->serverName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeReferentID(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrConnect2Request;->serverName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeMarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;

    .line 12
    .line 13
    .line 14
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrConnect2Request;->desiredAccess:I

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
