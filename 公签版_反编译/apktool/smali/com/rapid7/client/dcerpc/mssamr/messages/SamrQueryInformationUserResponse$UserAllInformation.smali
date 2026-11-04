.class public Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationUserResponse$UserAllInformation;
.super Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationUserResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationUserResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserAllInformation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationUserResponse<",
        "Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationUserResponse;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic createUserInformation()Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationUserResponse$UserAllInformation;->createUserInformation()Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;

    move-result-object v0

    return-object v0
.end method

.method public createUserInformation()Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;
    .locals 1

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;

    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;-><init>()V

    return-object v0
.end method

.method public getUserInformationClass()Lcom/rapid7/client/dcerpc/mssamr/objects/UserInformationClass;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/mssamr/objects/UserInformationClass;->USER_ALL_INFORMATION:Lcom/rapid7/client/dcerpc/mssamr/objects/UserInformationClass;

    .line 2
    .line 3
    return-object v0
.end method
