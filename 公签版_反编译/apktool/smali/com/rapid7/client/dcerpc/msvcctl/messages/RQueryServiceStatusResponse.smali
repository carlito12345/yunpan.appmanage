.class public Lcom/rapid7/client/dcerpc/msvcctl/messages/RQueryServiceStatusResponse;
.super Lcom/rapid7/client/dcerpc/messages/RequestResponse;
.source "SourceFile"


# instance fields
.field private lpServiceStatus:Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;


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
.method public getLpServiceStatus()Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RQueryServiceStatusResponse;->lpServiceStatus:Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;

    .line 2
    .line 3
    return-object v0
.end method

.method public unmarshalResponse(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RQueryServiceStatusResponse;->lpServiceStatus:Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnmarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 9
    .line 10
    .line 11
    return-void
.end method
