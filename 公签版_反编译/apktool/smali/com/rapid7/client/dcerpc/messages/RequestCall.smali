.class public abstract Lcom/rapid7/client/dcerpc/messages/RequestCall;
.super Lcom/rapid7/client/dcerpc/io/HexifyImpl;
.source "SourceFile"

# interfaces
.implements Lcom/rapid7/client/dcerpc/io/Packet;
.implements Lcom/rapid7/client/dcerpc/io/Hexify;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/rapid7/client/dcerpc/messages/RequestResponse;",
        ">",
        "Lcom/rapid7/client/dcerpc/io/HexifyImpl;",
        "Lcom/rapid7/client/dcerpc/io/Packet;",
        "Lcom/rapid7/client/dcerpc/io/Hexify;"
    }
.end annotation


# instance fields
.field private final opNum:S


# direct methods
.method public constructor <init>(S)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/rapid7/client/dcerpc/io/HexifyImpl;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-short p1, p0, Lcom/rapid7/client/dcerpc/messages/RequestCall;->opNum:S

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getOpNum()S
    .locals 1

    .line 1
    iget-short v0, p0, Lcom/rapid7/client/dcerpc/messages/RequestCall;->opNum:S

    .line 2
    .line 3
    return v0
.end method

.method public abstract getResponseObject()Lcom/rapid7/client/dcerpc/messages/RequestResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getStub()[B
    .locals 2

    .line 1
    new-instance v0, Lyg/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lyg/a;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/rapid7/client/dcerpc/io/PacketOutput;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lcom/rapid7/client/dcerpc/io/PacketOutput;-><init>(Ljava/io/OutputStream;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v1}, Lcom/rapid7/client/dcerpc/io/Packet;->marshal(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lyg/a;->A()[B

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public unmarshal(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "Unmarshal Not Implemented."

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method
