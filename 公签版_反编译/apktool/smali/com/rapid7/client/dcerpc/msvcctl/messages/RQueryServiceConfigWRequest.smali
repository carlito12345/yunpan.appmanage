.class public Lcom/rapid7/client/dcerpc/msvcctl/messages/RQueryServiceConfigWRequest;
.super Lcom/rapid7/client/dcerpc/messages/RequestCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rapid7/client/dcerpc/messages/RequestCall<",
        "Lcom/rapid7/client/dcerpc/msvcctl/messages/RQueryServiceConfigWResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static final MAX_BUFFER_SIZE:I = 0x2000

.field public static final OP_NUM:S = 0x11s


# instance fields
.field private final cbBufSize:I

.field private final hService:[B


# direct methods
.method public constructor <init>([BI)V
    .locals 1

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/rapid7/client/dcerpc/messages/RequestCall;-><init>(S)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RQueryServiceConfigWRequest;->hService:[B

    .line 7
    .line 8
    iput p2, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RQueryServiceConfigWRequest;->cbBufSize:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public bridge synthetic getResponseObject()Lcom/rapid7/client/dcerpc/messages/RequestResponse;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/messages/RQueryServiceConfigWRequest;->getResponseObject()Lcom/rapid7/client/dcerpc/msvcctl/messages/RQueryServiceConfigWResponse;

    move-result-object v0

    return-object v0
.end method

.method public getResponseObject()Lcom/rapid7/client/dcerpc/msvcctl/messages/RQueryServiceConfigWResponse;
    .locals 1

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RQueryServiceConfigWResponse;

    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/msvcctl/messages/RQueryServiceConfigWResponse;-><init>()V

    return-object v0
.end method

.method public marshal(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RQueryServiceConfigWRequest;->hService:[B

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->write([B)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RQueryServiceConfigWRequest;->cbBufSize:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
