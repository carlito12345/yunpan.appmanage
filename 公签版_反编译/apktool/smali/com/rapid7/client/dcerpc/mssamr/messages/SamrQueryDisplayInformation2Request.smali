.class public abstract Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Request;
.super Lcom/rapid7/client/dcerpc/messages/RequestCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Request$DomainDisplayGroup;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;",
        ">",
        "Lcom/rapid7/client/dcerpc/messages/RequestCall<",
        "Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Response<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field public static final OP_NUM:S = 0x30s


# instance fields
.field private final domainHandle:[B

.field private final entryCount:I

.field private final index:I

.field private final preferredMaximumLength:I


# direct methods
.method public constructor <init>([BIII)V
    .locals 1

    .line 1
    const/16 v0, 0x30

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/rapid7/client/dcerpc/messages/RequestCall;-><init>(S)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Request;->domainHandle:[B

    .line 7
    .line 8
    iput p2, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Request;->index:I

    .line 9
    .line 10
    iput p3, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Request;->entryCount:I

    .line 11
    .line 12
    iput p4, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Request;->preferredMaximumLength:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public abstract getDisplayInformationClass()Lcom/rapid7/client/dcerpc/mssamr/objects/DisplayInformationClass;
.end method

.method public marshal(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Request;->domainHandle:[B

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->write([B)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Request;->getDisplayInformationClass()Lcom/rapid7/client/dcerpc/mssamr/objects/DisplayInformationClass;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/DisplayInformationClass;->getInfoLevel()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeShort(I)V

    .line 15
    .line 16
    .line 17
    const-wide/16 v0, 0x2

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->pad(J)V

    .line 20
    .line 21
    .line 22
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Request;->index:I

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 25
    .line 26
    .line 27
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Request;->entryCount:I

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 30
    .line 31
    .line 32
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Request;->preferredMaximumLength:I

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
