.class public abstract Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoRequest;
.super Lcom/rapid7/client/dcerpc/messages/RequestCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoRequest$NetrShareGetInfoRequest503;,
        Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoRequest$NetrShareGetInfoRequest502;,
        Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoRequest$NetrShareGetInfoRequest501;,
        Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoRequest$NetrShareGetInfoRequest2;,
        Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoRequest$NetrShareGetInfoRequest1;,
        Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoRequest$NetrShareGetInfoRequest0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;",
        ">",
        "Lcom/rapid7/client/dcerpc/messages/RequestCall<",
        "Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoResponse<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field public static final OP_NUM:S = 0x10s


# instance fields
.field private final shareName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;


# direct methods
.method public constructor <init>(Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;)V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/rapid7/client/dcerpc/messages/RequestCall;-><init>(S)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoRequest;->shareName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string v0, "Despite what the documentation states, this is not a pointer"

    .line 14
    .line 15
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1
.end method


# virtual methods
.method public abstract getShareInfoLevel()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoLevel;
.end method

.method public marshal(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeNull()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoRequest;->shareName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeMarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoRequest;->getShareInfoLevel()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoLevel;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoLevel;->getInfoLevel()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
