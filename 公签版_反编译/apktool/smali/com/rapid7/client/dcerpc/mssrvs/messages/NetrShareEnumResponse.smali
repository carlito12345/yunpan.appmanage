.class public abstract Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumResponse;
.super Lcom/rapid7/client/dcerpc/messages/RequestResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumResponse$NetShareEnumResponse503;,
        Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumResponse$NetShareEnumResponse502;,
        Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumResponse$NetShareEnumResponse501;,
        Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumResponse$NetShareEnumResponse2;,
        Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumResponse$NetShareEnumResponse1;,
        Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumResponse$NetShareEnumResponse0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumStruct;",
        ">",
        "Lcom/rapid7/client/dcerpc/messages/RequestResponse;"
    }
.end annotation


# instance fields
.field private resumeHandle:Ljava/lang/Long;

.field private shareEnumStruct:Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumStruct;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private totalEntries:J


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
.method public abstract createShareEnumStruct()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumStruct;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getResumeHandle()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumResponse;->resumeHandle:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract getShareEnumLevel()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;
.end method

.method public getShareEnumStruct()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumStruct;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumResponse;->shareEnumStruct:Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumStruct;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTotalEntries()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumResponse;->totalEntries:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public unmarshalResponse(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumResponse;->createShareEnumStruct()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumStruct;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumResponse;->shareEnumStruct:Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumStruct;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnmarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnsignedInt()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iput-wide v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumResponse;->totalEntries:J

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readReferentID()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnsignedInt()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumResponse;->resumeHandle:Ljava/lang/Long;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumResponse;->resumeHandle:Ljava/lang/Long;

    .line 40
    .line 41
    :goto_0
    return-void
.end method
