.class public Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupIdsInDomainRequest;
.super Lcom/rapid7/client/dcerpc/messages/RequestCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rapid7/client/dcerpc/messages/RequestCall<",
        "Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupIdsInDomainResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static OP_NUM:S = 0x12s


# instance fields
.field private final count:I

.field private final handle:[B

.field private final relativeIDs:[J


# direct methods
.method public varargs constructor <init>([B[J)V
    .locals 1

    .line 1
    sget-short v0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupIdsInDomainRequest;->OP_NUM:S

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/rapid7/client/dcerpc/messages/RequestCall;-><init>(S)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupIdsInDomainRequest;->handle:[B

    .line 7
    .line 8
    array-length p1, p2

    .line 9
    iput p1, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupIdsInDomainRequest;->count:I

    .line 10
    .line 11
    const/16 v0, 0x3e8

    .line 12
    .line 13
    if-gt p1, v0, :cond_0

    .line 14
    .line 15
    iput-object p2, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupIdsInDomainRequest;->relativeIDs:[J

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const-string v0, "Count cannot exceed 1000 to limit the amount of memory client can force the server to allocate: "

    .line 21
    .line 22
    invoke-static {p1, v0}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p2
.end method


# virtual methods
.method public bridge synthetic getResponseObject()Lcom/rapid7/client/dcerpc/messages/RequestResponse;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupIdsInDomainRequest;->getResponseObject()Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupIdsInDomainResponse;

    move-result-object v0

    return-object v0
.end method

.method public getResponseObject()Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupIdsInDomainResponse;
    .locals 1

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupIdsInDomainResponse;

    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupIdsInDomainResponse;-><init>()V

    return-object v0
.end method

.method public marshal(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupIdsInDomainRequest;->handle:[B

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->write([B)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupIdsInDomainRequest;->count:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    const/16 v0, 0x3e8

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 18
    .line 19
    .line 20
    iget v1, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupIdsInDomainRequest;->count:I

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupIdsInDomainRequest;->relativeIDs:[J

    .line 26
    .line 27
    array-length v2, v1

    .line 28
    :goto_0
    if-ge v0, v2, :cond_0

    .line 29
    .line 30
    aget-wide v3, v1, v0

    .line 31
    .line 32
    invoke-virtual {p1, v3, v4}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(J)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method
