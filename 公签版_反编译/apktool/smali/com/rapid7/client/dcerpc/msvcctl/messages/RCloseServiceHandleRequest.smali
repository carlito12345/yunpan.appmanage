.class public Lcom/rapid7/client/dcerpc/msvcctl/messages/RCloseServiceHandleRequest;
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
.field public static final OP_NUM:S


# instance fields
.field private final hSCObject:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/rapid7/client/dcerpc/messages/RequestCall;-><init>(S)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RCloseServiceHandleRequest;->hSCObject:[B

    .line 6
    .line 7
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
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/messages/RCloseServiceHandleRequest;->getResponseObject()Lcom/rapid7/client/dcerpc/messages/HandleResponse;

    move-result-object v0

    return-object v0
.end method

.method public marshal(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RCloseServiceHandleRequest;->hSCObject:[B

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->write([B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
