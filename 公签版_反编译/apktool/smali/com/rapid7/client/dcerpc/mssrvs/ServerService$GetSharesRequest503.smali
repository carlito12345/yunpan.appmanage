.class Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest503;
.super Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rapid7/client/dcerpc/mssrvs/ServerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetSharesRequest503"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest<",
        "Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo503;",
        "Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo503;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rapid7/client/dcerpc/mssrvs/ServerService;


# direct methods
.method public constructor <init>(Lcom/rapid7/client/dcerpc/mssrvs/ServerService;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest503;->this$0:Lcom/rapid7/client/dcerpc/mssrvs/ServerService;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest;-><init>(Lcom/rapid7/client/dcerpc/mssrvs/ServerService;J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public convert(Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo503;)Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo503;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest503;->this$0:Lcom/rapid7/client/dcerpc/mssrvs/ServerService;

    invoke-static {v0, p1}, Lcom/rapid7/client/dcerpc/mssrvs/ServerService;->access$500(Lcom/rapid7/client/dcerpc/mssrvs/ServerService;Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo503;)Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo503;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic convert(Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;)Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo;
    .locals 0

    .line 1
    check-cast p1, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo503;

    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest503;->convert(Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo503;)Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo503;

    move-result-object p1

    return-object p1
.end method

.method public createRequest(JLjava/lang/Long;)Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Long;",
            ")",
            "Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumRequest<",
            "+",
            "Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumStruct<",
            "+",
            "Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer<",
            "Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo503;",
            ">;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumRequest$NetShareEnumRequest503;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumRequest$NetShareEnumRequest503;-><init>(JLjava/lang/Long;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "NetrShareEnum[503]"

    .line 2
    .line 3
    return-object v0
.end method
