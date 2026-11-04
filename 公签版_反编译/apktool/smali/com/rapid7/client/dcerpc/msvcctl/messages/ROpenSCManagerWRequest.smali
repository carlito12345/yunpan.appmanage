.class public Lcom/rapid7/client/dcerpc/msvcctl/messages/ROpenSCManagerWRequest;
.super Lcom/rapid7/client/dcerpc/messages/RequestCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rapid7/client/dcerpc/messages/RequestCall<",
        "Lcom/rapid7/client/dcerpc/messages/HandleResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final EMPTY:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

.field public static final OP_NUM:S = 0xfs


# instance fields
.field private final dwDesiredAccess:I

.field private final lpDatabaseName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

.field private final lpMachineName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {v0}, Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;->of(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/rapid7/client/dcerpc/msvcctl/messages/ROpenSCManagerWRequest;->EMPTY:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/msvcctl/messages/ROpenSCManagerWRequest;->EMPTY:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    const/4 v1, 0x0

    const v2, 0xf003f

    invoke-direct {p0, v0, v1, v2}, Lcom/rapid7/client/dcerpc/msvcctl/messages/ROpenSCManagerWRequest;-><init>(Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;I)V

    return-void
.end method

.method public constructor <init>(Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;I)V
    .locals 1

    const/16 v0, 0xf

    .line 2
    invoke-direct {p0, v0}, Lcom/rapid7/client/dcerpc/messages/RequestCall;-><init>(S)V

    .line 3
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/ROpenSCManagerWRequest;->lpMachineName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 4
    iput-object p2, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/ROpenSCManagerWRequest;->lpDatabaseName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 5
    iput p3, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/ROpenSCManagerWRequest;->dwDesiredAccess:I

    return-void
.end method


# virtual methods
.method public getResponseObject()Lcom/rapid7/client/dcerpc/messages/HandleResponse;
    .locals 1

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/messages/HandleResponse;

    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/messages/HandleResponse;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getResponseObject()Lcom/rapid7/client/dcerpc/messages/RequestResponse;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/messages/ROpenSCManagerWRequest;->getResponseObject()Lcom/rapid7/client/dcerpc/messages/HandleResponse;

    move-result-object v0

    return-object v0
.end method

.method public marshal(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/ROpenSCManagerWRequest;->lpMachineName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeReferentID(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/ROpenSCManagerWRequest;->lpMachineName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeMarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;

    .line 12
    .line 13
    .line 14
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/ROpenSCManagerWRequest;->lpDatabaseName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeReferentID(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/ROpenSCManagerWRequest;->lpDatabaseName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeMarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;

    .line 30
    .line 31
    .line 32
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/ROpenSCManagerWRequest;->dwDesiredAccess:I

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
