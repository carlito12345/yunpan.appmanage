.class public abstract Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumStruct;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumStruct$ShareEnumStruct503;,
        Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumStruct$ShareEnumStruct502;,
        Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumStruct$ShareEnumStruct501;,
        Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumStruct$ShareEnumStruct2;,
        Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumStruct$ShareEnumStruct1;,
        Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumStruct$ShareEnumStruct0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;"
    }
.end annotation


# instance fields
.field private shareInfoContainer:Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer;
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract createShareInfoContainer()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getLevel()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;
.end method

.method public getShareInfoContainer()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumStruct;->shareInfoContainer:Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer;

    .line 2
    .line 3
    return-object v0
.end method

.method public unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumStruct;->getShareInfoContainer()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumStruct;->getShareInfoContainer()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnmarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    sget-object v3, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 5
    .line 6
    invoke-virtual {p1, v3}, Lcom/rapid7/client/dcerpc/io/PacketInput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumStruct;->getLevel()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {v4}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;->getInfoLevel()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-ne v3, v4, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-ne v4, v3, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readReferentID()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumStruct;->createShareInfoContainer()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumStruct;->shareInfoContainer:Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumStruct;->shareInfoContainer:Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer;

    .line 44
    .line 45
    :goto_0
    return-void

    .line 46
    :cond_1
    new-instance p1, Ljava/rmi/UnmarshalException;

    .line 47
    .line 48
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    new-array v2, v2, [Ljava/lang/Object;

    .line 57
    .line 58
    aput-object v3, v2, v1

    .line 59
    .line 60
    aput-object v4, v2, v0

    .line 61
    .line 62
    const-string v0, "Expected info level %d to match enum level, got: %d"

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

    .line 72
    :cond_2
    new-instance p1, Ljava/rmi/UnmarshalException;

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumStruct;->getLevel()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {v4}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;->getInfoLevel()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    new-array v2, v2, [Ljava/lang/Object;

    .line 91
    .line 92
    aput-object v4, v2, v1

    .line 93
    .line 94
    aput-object v3, v2, v0

    .line 95
    .line 96
    const-string v0, "Expected info level %d, got: %d"

    .line 97
    .line 98
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-direct {p1, v0}, Ljava/rmi/UnmarshalException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p1
.end method

.method public unmarshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 0

    return-void
.end method
