.class public abstract Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationUserRequest;
.super Lcom/rapid7/client/dcerpc/messages/RequestCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationUserRequest$UserAllInformation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;",
        ">",
        "Lcom/rapid7/client/dcerpc/messages/RequestCall<",
        "Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationUserResponse<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field public static final OP_NUM:S = 0x24s


# instance fields
.field private final userHandle:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 1
    const/16 v0, 0x24

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/rapid7/client/dcerpc/messages/RequestCall;-><init>(S)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationUserRequest;->userHandle:[B

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getUserHandle()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationUserRequest;->userHandle:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract getUserInformationClass()Lcom/rapid7/client/dcerpc/mssamr/objects/UserInformationClass;
.end method

.method public marshal(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationUserRequest;->getUserHandle()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->write([B)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationUserRequest;->getUserInformationClass()Lcom/rapid7/client/dcerpc/mssamr/objects/UserInformationClass;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/UserInformationClass;->getInfoLevel()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeShort(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
