.class public Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationUserRequest$UserAllInformation;
.super Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationUserRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationUserRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserAllInformation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationUserRequest<",
        "Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationUserRequest;-><init>([B)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic getResponseObject()Lcom/rapid7/client/dcerpc/messages/RequestResponse;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationUserRequest$UserAllInformation;->getResponseObject()Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationUserResponse$UserAllInformation;

    move-result-object v0

    return-object v0
.end method

.method public getResponseObject()Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationUserResponse$UserAllInformation;
    .locals 1

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationUserResponse$UserAllInformation;

    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationUserResponse$UserAllInformation;-><init>()V

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
