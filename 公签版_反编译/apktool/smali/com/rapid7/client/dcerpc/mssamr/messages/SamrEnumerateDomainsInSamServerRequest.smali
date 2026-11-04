.class public Lcom/rapid7/client/dcerpc/mssamr/messages/SamrEnumerateDomainsInSamServerRequest;
.super Lcom/rapid7/client/dcerpc/mssamr/messages/SamrEnumerateRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rapid7/client/dcerpc/mssamr/messages/SamrEnumerateRequest<",
        "Lcom/rapid7/client/dcerpc/mssamr/messages/SamrEnumerateDomainsInSamServerResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static final OP_NUM:S = 0x6s


# direct methods
.method public constructor <init>([BII)V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrEnumerateRequest;-><init>(S[BII)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public bridge synthetic getResponseObject()Lcom/rapid7/client/dcerpc/messages/RequestResponse;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrEnumerateDomainsInSamServerRequest;->getResponseObject()Lcom/rapid7/client/dcerpc/mssamr/messages/SamrEnumerateDomainsInSamServerResponse;

    move-result-object v0

    return-object v0
.end method

.method public getResponseObject()Lcom/rapid7/client/dcerpc/mssamr/messages/SamrEnumerateDomainsInSamServerResponse;
    .locals 1

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrEnumerateDomainsInSamServerResponse;

    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrEnumerateDomainsInSamServerResponse;-><init>()V

    return-object v0
.end method
