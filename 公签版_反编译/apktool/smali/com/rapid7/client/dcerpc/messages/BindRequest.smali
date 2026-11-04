.class public final Lcom/rapid7/client/dcerpc/messages/BindRequest;
.super Lcom/rapid7/client/dcerpc/Header;
.source "SourceFile"


# instance fields
.field private final abstractSyntax:Lcom/rapid7/client/dcerpc/Interface;

.field private final maxRecvFrag:I

.field private final maxXmitFrag:I

.field private final transferSyntax:Lcom/rapid7/client/dcerpc/Interface;


# direct methods
.method public constructor <init>(IILcom/rapid7/client/dcerpc/Interface;Lcom/rapid7/client/dcerpc/Interface;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/rapid7/client/dcerpc/Header;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/rapid7/client/dcerpc/PDUType;->BIND:Lcom/rapid7/client/dcerpc/PDUType;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/rapid7/client/dcerpc/Header;->setPDUType(Lcom/rapid7/client/dcerpc/PDUType;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/rapid7/client/dcerpc/PFCFlag;->FIRST_FRAGMENT:Lcom/rapid7/client/dcerpc/PFCFlag;

    .line 10
    .line 11
    sget-object v1, Lcom/rapid7/client/dcerpc/PFCFlag;->LAST_FRAGMENT:Lcom/rapid7/client/dcerpc/PFCFlag;

    .line 12
    .line 13
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, v0}, Lcom/rapid7/client/dcerpc/Header;->setPFCFlags(Ljava/util/Set;)V

    .line 18
    .line 19
    .line 20
    const/16 v0, 0x48

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/rapid7/client/dcerpc/Header;->setFragLength(S)V

    .line 23
    .line 24
    .line 25
    iput p1, p0, Lcom/rapid7/client/dcerpc/messages/BindRequest;->maxXmitFrag:I

    .line 26
    .line 27
    iput p2, p0, Lcom/rapid7/client/dcerpc/messages/BindRequest;->maxRecvFrag:I

    .line 28
    .line 29
    iput-object p3, p0, Lcom/rapid7/client/dcerpc/messages/BindRequest;->abstractSyntax:Lcom/rapid7/client/dcerpc/Interface;

    .line 30
    .line 31
    iput-object p4, p0, Lcom/rapid7/client/dcerpc/messages/BindRequest;->transferSyntax:Lcom/rapid7/client/dcerpc/Interface;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public marshal(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/rapid7/client/dcerpc/Header;->marshal(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/rapid7/client/dcerpc/messages/BindRequest;->maxXmitFrag:I

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeShort(I)V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lcom/rapid7/client/dcerpc/messages/BindRequest;->maxRecvFrag:I

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeShort(I)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {p1, v1}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeByte(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeByte(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeShort(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeShort(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeByte(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeByte(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/messages/BindRequest;->abstractSyntax:Lcom/rapid7/client/dcerpc/Interface;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/Interface;->getUUID()[B

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->write([B)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/messages/BindRequest;->abstractSyntax:Lcom/rapid7/client/dcerpc/Interface;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/Interface;->getMajorVersion()S

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeShort(I)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/messages/BindRequest;->abstractSyntax:Lcom/rapid7/client/dcerpc/Interface;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/Interface;->getMinorVersion()S

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeShort(I)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/messages/BindRequest;->transferSyntax:Lcom/rapid7/client/dcerpc/Interface;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/Interface;->getUUID()[B

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->write([B)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/messages/BindRequest;->transferSyntax:Lcom/rapid7/client/dcerpc/Interface;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/Interface;->getMajorVersion()S

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeShort(I)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/messages/BindRequest;->transferSyntax:Lcom/rapid7/client/dcerpc/Interface;

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/Interface;->getMinorVersion()S

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeShort(I)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public unmarshal(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "Unmarshal Not Implemented."

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method
