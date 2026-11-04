.class public Lcom/rapid7/client/dcerpc/msrrp/messages/HandleRequest;
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


# instance fields
.field private final accessMask:I


# direct methods
.method public constructor <init>(SI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/messages/RequestCall;-><init>(S)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/HandleRequest;->accessMask:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getAccessMask()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/HandleRequest;->accessMask:I

    .line 2
    .line 3
    return v0
.end method

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
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msrrp/messages/HandleRequest;->getResponseObject()Lcom/rapid7/client/dcerpc/messages/HandleResponse;

    move-result-object v0

    return-object v0
.end method

.method public marshal(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeNull()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/HandleRequest;->accessMask:I

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
