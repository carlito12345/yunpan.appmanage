.class public abstract Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoResponse;
.super Lcom/rapid7/client/dcerpc/messages/RequestResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoResponse$NetrShareGetInfoResponse503;,
        Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoResponse$NetrShareGetInfoResponse502;,
        Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoResponse$NetrShareGetInfoResponse501;,
        Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoResponse$NetrShareGetInfoResponse2;,
        Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoResponse$NetrShareGetInfoResponse1;,
        Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoResponse$NetrShareGetInfoResponse0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;",
        ">",
        "Lcom/rapid7/client/dcerpc/messages/RequestResponse;"
    }
.end annotation


# instance fields
.field private shareInfo:Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


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
.method public abstract createShareInfo()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getShareInfo()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoResponse;->shareInfo:Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract getShareInfoLevel()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoLevel;
.end method

.method public unmarshalResponse(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoResponse;->getShareInfoLevel()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoLevel;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoLevel;->getInfoLevel()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readReferentID()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoResponse;->createShareInfo()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoResponse;->shareInfo:Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnmarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoResponse;->shareInfo:Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;

    .line 33
    .line 34
    :goto_0
    return-void

    .line 35
    :cond_1
    new-instance p1, Ljava/rmi/UnmarshalException;

    .line 36
    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoResponse;->getShareInfoLevel()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoLevel;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoLevel;->getInfoLevel()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const/4 v2, 0x2

    .line 54
    new-array v2, v2, [Ljava/lang/Object;

    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    aput-object v0, v2, v3

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    aput-object v1, v2, v0

    .line 61
    .line 62
    const-string v0, "Incoming LPSHARE_INFO level %d does not match expected: %d"

    .line 63
    .line 64
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-direct {p1, v0}, Ljava/rmi/UnmarshalException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p1
.end method
