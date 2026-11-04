.class public abstract Lcom/rapid7/client/dcerpc/mssamr/messages/SamrEnumerateRequest;
.super Lcom/rapid7/client/dcerpc/messages/RequestCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/rapid7/client/dcerpc/mssamr/messages/SamrEnumerateResponse;",
        ">",
        "Lcom/rapid7/client/dcerpc/messages/RequestCall<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final enumContext:I

.field private final handle:[B

.field private final maxLength:I


# direct methods
.method public constructor <init>(S[BII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/messages/RequestCall;-><init>(S)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrEnumerateRequest;->handle:[B

    .line 5
    .line 6
    iput p3, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrEnumerateRequest;->enumContext:I

    .line 7
    .line 8
    iput p4, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrEnumerateRequest;->maxLength:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public marshal(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrEnumerateRequest;->handle:[B

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->write([B)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrEnumerateRequest;->enumContext:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrEnumerateRequest;->maxLength:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
