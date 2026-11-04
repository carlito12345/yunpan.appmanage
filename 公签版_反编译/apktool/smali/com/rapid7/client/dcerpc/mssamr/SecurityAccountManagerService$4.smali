.class Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService$EnumerationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;->getUsersForDomain(Lcom/rapid7/client/dcerpc/mssamr/dto/DomainHandle;II)[Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;

.field final synthetic val$bufferSize:I

.field final synthetic val$domainHandleBytes:[B

.field final synthetic val$userAccountControl:I


# direct methods
.method public constructor <init>(Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;[BII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService$4;->this$0:Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService$4;->val$domainHandleBytes:[B

    .line 4
    .line 5
    iput p3, p0, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService$4;->val$userAccountControl:I

    .line 6
    .line 7
    iput p4, p0, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService$4;->val$bufferSize:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "SamrEnumerateUsersInDomain"

    .line 2
    .line 3
    return-object v0
.end method

.method public request(I)Lcom/rapid7/client/dcerpc/mssamr/messages/SamrEnumerateResponse;
    .locals 4

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrEnumerateUsersInDomainRequest;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService$4;->val$domainHandleBytes:[B

    .line 4
    .line 5
    iget v2, p0, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService$4;->val$userAccountControl:I

    .line 6
    .line 7
    iget v3, p0, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService$4;->val$bufferSize:I

    .line 8
    .line 9
    invoke-direct {v0, v1, p1, v2, v3}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrEnumerateUsersInDomainRequest;-><init>([BIII)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService$4;->this$0:Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;

    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;->access$300(Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;Lcom/rapid7/client/dcerpc/messages/RequestCall;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrEnumerateResponse;

    .line 19
    .line 20
    return-object p1
.end method
