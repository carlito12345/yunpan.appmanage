.class public abstract Lcom/rapid7/client/dcerpc/mssamr/messages/SamrEnumerateResponse;
.super Lcom/rapid7/client/dcerpc/messages/RequestResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/rapid7/client/dcerpc/messages/RequestResponse;"
    }
.end annotation


# instance fields
.field private numEntries:I

.field private resumeHandle:I


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
.method public abstract getList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public getNumEntries()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrEnumerateResponse;->numEntries:I

    .line 2
    .line 3
    return v0
.end method

.method public getResumeHandle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrEnumerateResponse;->resumeHandle:I

    .line 2
    .line 3
    return v0
.end method

.method public unmarshalResponse(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrEnumerateResponse;->resumeHandle:I

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readReferentID()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrEnumerateResponse;->unmarshallBuffer(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iput p1, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrEnumerateResponse;->numEntries:I

    .line 26
    .line 27
    return-void
.end method

.method public abstract unmarshallBuffer(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
.end method
