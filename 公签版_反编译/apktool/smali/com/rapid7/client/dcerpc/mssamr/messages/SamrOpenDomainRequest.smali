.class public Lcom/rapid7/client/dcerpc/mssamr/messages/SamrOpenDomainRequest;
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
.field public static final OP_NUM:S = 0x7s


# instance fields
.field private final desiredAccess:I

.field private final domainId:Lcom/rapid7/client/dcerpc/objects/RPCSID;

.field private final handle:[B


# direct methods
.method public constructor <init>([BILcom/rapid7/client/dcerpc/objects/RPCSID;)V
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    invoke-direct {p0, v0}, Lcom/rapid7/client/dcerpc/messages/RequestCall;-><init>(S)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrOpenDomainRequest;->handle:[B

    .line 6
    .line 7
    iput p2, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrOpenDomainRequest;->desiredAccess:I

    .line 8
    .line 9
    iput-object p3, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrOpenDomainRequest;->domainId:Lcom/rapid7/client/dcerpc/objects/RPCSID;

    .line 10
    .line 11
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
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrOpenDomainRequest;->getResponseObject()Lcom/rapid7/client/dcerpc/messages/HandleResponse;

    move-result-object v0

    return-object v0
.end method

.method public marshal(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrOpenDomainRequest;->handle:[B

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->write([B)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrOpenDomainRequest;->desiredAccess:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrOpenDomainRequest;->domainId:Lcom/rapid7/client/dcerpc/objects/RPCSID;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeMarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;

    .line 14
    .line 15
    .line 16
    return-void
.end method
