.class public abstract Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Response;
.super Lcom/rapid7/client/dcerpc/messages/RequestResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Response$DomainDisplayGroup;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;",
        ">",
        "Lcom/rapid7/client/dcerpc/messages/RequestResponse;"
    }
.end annotation


# instance fields
.field private displayInformation:Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private totalAvailable:I

.field private totalReturnedBytes:I


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
.method public abstract createDisplayInformation()Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getDisplayInformation()Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Response;->displayInformation:Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract getDisplayInformationClass()Lcom/rapid7/client/dcerpc/mssamr/objects/DisplayInformationClass;
.end method

.method public getTotalAvailable()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Response;->totalAvailable:I

    .line 2
    .line 3
    return v0
.end method

.method public getTotalReturned()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Response;->totalReturnedBytes:I

    .line 2
    .line 3
    return v0
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
    iput v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Response;->totalAvailable:I

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Response;->totalReturnedBytes:I

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnsignedShort()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Response;->getDisplayInformationClass()Lcom/rapid7/client/dcerpc/mssamr/objects/DisplayInformationClass;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/rapid7/client/dcerpc/mssamr/objects/DisplayInformationClass;->getInfoLevel()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-ne v0, v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Response;->createDisplayInformation()Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Response;->displayInformation:Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnmarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    new-instance p1, Ljava/rmi/UnmarshalException;

    .line 38
    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Response;->getDisplayInformationClass()Lcom/rapid7/client/dcerpc/mssamr/objects/DisplayInformationClass;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/rapid7/client/dcerpc/mssamr/objects/DisplayInformationClass;->getInfoLevel()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const/4 v2, 0x2

    .line 56
    new-array v2, v2, [Ljava/lang/Object;

    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    aput-object v0, v2, v3

    .line 60
    .line 61
    const/4 v0, 0x1

    .line 62
    aput-object v1, v2, v0

    .line 63
    .line 64
    const-string v0, "Incoming DISPLAY_INFORMATION_CLASS %d does not match expected: %d"

    .line 65
    .line 66
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-direct {p1, v0}, Ljava/rmi/UnmarshalException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1
.end method
