.class public Lcom/rapid7/client/dcerpc/messages/HandleResponse;
.super Lcom/rapid7/client/dcerpc/messages/RequestResponse;
.source "SourceFile"


# instance fields
.field private handle:[B


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
.method public getHandle()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/messages/HandleResponse;->handle:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public unmarshalResponse(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 1

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/messages/HandleResponse;->handle:[B

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readRawBytes([B)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
