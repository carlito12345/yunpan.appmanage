.class public abstract Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumRequest;
.super Lcom/rapid7/client/dcerpc/messages/RequestCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumRequest$NetShareEnumRequest503;,
        Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumRequest$NetShareEnumRequest502;,
        Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumRequest$NetShareEnumRequest501;,
        Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumRequest$NetShareEnumRequest2;,
        Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumRequest$NetShareEnumRequest1;,
        Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumRequest$NetShareEnumRequest0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumStruct;",
        ">",
        "Lcom/rapid7/client/dcerpc/messages/RequestCall<",
        "Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumResponse<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final preferredMaximumLength:J

.field private final resumeHandle:Ljava/lang/Long;


# direct methods
.method public constructor <init>(JLjava/lang/Long;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrOpCode;->NetrShareEnum:Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrOpCode;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrOpCode;->getOpCode()S

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-direct {p0, v0}, Lcom/rapid7/client/dcerpc/messages/RequestCall;-><init>(S)V

    .line 8
    .line 9
    .line 10
    iput-wide p1, p0, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumRequest;->preferredMaximumLength:J

    .line 11
    .line 12
    iput-object p3, p0, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumRequest;->resumeHandle:Ljava/lang/Long;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public abstract getShareEnumLevel()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;
.end method

.method public marshal(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeNull()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumRequest;->getShareEnumLevel()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;->getInfoLevel()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumRequest;->getShareEnumLevel()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;->getInfoLevel()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeReferentID()V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeNull()V

    .line 34
    .line 35
    .line 36
    iget-wide v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumRequest;->preferredMaximumLength:J

    .line 37
    .line 38
    invoke-virtual {p1, v0, v1}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(J)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumRequest;->resumeHandle:Ljava/lang/Long;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeReferentID(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumRequest;->resumeHandle:Ljava/lang/Long;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    invoke-virtual {p1, v0, v1}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(J)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
.end method
