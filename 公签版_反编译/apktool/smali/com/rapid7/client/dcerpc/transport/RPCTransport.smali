.class public abstract Lcom/rapid7/client/dcerpc/transport/RPCTransport;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/rapid7/client/dcerpc/io/Transport;


# static fields
.field protected static final DEFAULT_MAX_RECV_FRAG:I = 0x4000

.field protected static final DEFAULT_MAX_XMIT_FRAG:I = 0x4000


# instance fields
.field private final callID:Ljava/util/concurrent/atomic/AtomicInteger;

.field private maxRecvFrag:I

.field private maxXmitFrag:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/transport/RPCTransport;->callID:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    const/16 v0, 0x4000

    .line 12
    .line 13
    iput v0, p0, Lcom/rapid7/client/dcerpc/transport/RPCTransport;->maxXmitFrag:I

    .line 14
    .line 15
    iput v0, p0, Lcom/rapid7/client/dcerpc/transport/RPCTransport;->maxRecvFrag:I

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public bind(Lcom/rapid7/client/dcerpc/Interface;Lcom/rapid7/client/dcerpc/Interface;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/messages/BindRequest;

    .line 2
    .line 3
    const/16 v1, 0x4000

    .line 4
    .line 5
    invoke-direct {v0, v1, v1, p1, p2}, Lcom/rapid7/client/dcerpc/messages/BindRequest;-><init>(IILcom/rapid7/client/dcerpc/Interface;Lcom/rapid7/client/dcerpc/Interface;)V

    .line 6
    .line 7
    .line 8
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    .line 9
    .line 10
    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/rapid7/client/dcerpc/io/PacketOutput;

    .line 14
    .line 15
    invoke-direct {v1, p2}, Lcom/rapid7/client/dcerpc/io/PacketOutput;-><init>(Ljava/io/OutputStream;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/transport/RPCTransport;->getCallID()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {v0, v2}, Lcom/rapid7/client/dcerpc/Header;->setCallID(I)V

    .line 23
    .line 24
    .line 25
    sget-object v2, Lcom/rapid7/client/dcerpc/PFCFlag;->FIRST_FRAGMENT:Lcom/rapid7/client/dcerpc/PFCFlag;

    .line 26
    .line 27
    sget-object v3, Lcom/rapid7/client/dcerpc/PFCFlag;->LAST_FRAGMENT:Lcom/rapid7/client/dcerpc/PFCFlag;

    .line 28
    .line 29
    invoke-static {v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0, v2}, Lcom/rapid7/client/dcerpc/Header;->setPFCFlags(Ljava/util/Set;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/rapid7/client/dcerpc/messages/BindRequest;->marshal(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/transport/RPCTransport;->getMaxXmitFrag()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    new-array v0, v0, [B

    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-interface {p0, p2, v0}, Lcom/rapid7/client/dcerpc/io/Transport;->transact([B[B)I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    invoke-direct {v1, v0, v2, p2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 57
    .line 58
    .line 59
    new-instance p2, Lcom/rapid7/client/dcerpc/io/PacketInput;

    .line 60
    .line 61
    invoke-direct {p2, v1}, Lcom/rapid7/client/dcerpc/io/PacketInput;-><init>(Ljava/io/InputStream;)V

    .line 62
    .line 63
    .line 64
    new-instance v0, Lcom/rapid7/client/dcerpc/messages/BindResponse;

    .line 65
    .line 66
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/messages/BindResponse;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p2}, Lcom/rapid7/client/dcerpc/messages/BindResponse;->unmarshal(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/messages/BindResponse;->isACK()Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-eqz p2, :cond_0

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/messages/BindResponse;->getMaxXmitFrag()S

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/transport/RPCTransport;->setMaxXmitFrag(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/messages/BindResponse;->getMaxRecvFrag()S

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/transport/RPCTransport;->setMaxRecvFrag(I)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_0
    new-instance p2, Ljava/io/IOException;

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/Interface;->getName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/Interface;->getRepr()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    const-string v1, "BIND "

    .line 104
    .line 105
    const-string v2, " ("

    .line 106
    .line 107
    const-string v3, ") failed."

    .line 108
    .line 109
    invoke-static {v1, v0, v2, p1, v3}, Lta/q;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p2
.end method

.method public call(Lcom/rapid7/client/dcerpc/messages/RequestCall;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/rapid7/client/dcerpc/messages/RequestResponse;",
            ">(",
            "Lcom/rapid7/client/dcerpc/messages/RequestCall<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/rapid7/client/dcerpc/io/PacketOutput;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lcom/rapid7/client/dcerpc/io/PacketOutput;-><init>(Ljava/io/OutputStream;)V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/rapid7/client/dcerpc/messages/Request;

    .line 12
    .line 13
    invoke-direct {v2}, Lcom/rapid7/client/dcerpc/messages/Request;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/transport/RPCTransport;->getCallID()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-virtual {v2, v3}, Lcom/rapid7/client/dcerpc/Header;->setCallID(I)V

    .line 21
    .line 22
    .line 23
    sget-object v3, Lcom/rapid7/client/dcerpc/PFCFlag;->FIRST_FRAGMENT:Lcom/rapid7/client/dcerpc/PFCFlag;

    .line 24
    .line 25
    sget-object v4, Lcom/rapid7/client/dcerpc/PFCFlag;->LAST_FRAGMENT:Lcom/rapid7/client/dcerpc/PFCFlag;

    .line 26
    .line 27
    invoke-static {v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v2, v3}, Lcom/rapid7/client/dcerpc/Header;->setPFCFlags(Ljava/util/Set;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/messages/RequestCall;->getOpNum()S

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-virtual {v2, v3}, Lcom/rapid7/client/dcerpc/messages/Request;->setOpNum(S)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/messages/RequestCall;->getStub()[B

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Lcom/rapid7/client/dcerpc/messages/Request;->setStub([B)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v1}, Lcom/rapid7/client/dcerpc/messages/Request;->marshal(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/transport/RPCTransport;->getMaxXmitFrag()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    new-array v1, v1, [B

    .line 60
    .line 61
    new-instance v2, Lbh/a;

    .line 62
    .line 63
    invoke-direct {v2}, Lbh/a;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-interface {p0, v0, v1}, Lcom/rapid7/client/dcerpc/io/Transport;->transact([B[B)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iput v0, v2, Lbh/a;->a:I

    .line 71
    .line 72
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 73
    .line 74
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 75
    .line 76
    .line 77
    new-instance v3, Lcom/rapid7/client/dcerpc/messages/Response;

    .line 78
    .line 79
    invoke-direct {v3}, Lcom/rapid7/client/dcerpc/messages/Response;-><init>()V

    .line 80
    .line 81
    .line 82
    :goto_0
    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 83
    .line 84
    iget v5, v2, Lbh/a;->a:I

    .line 85
    .line 86
    const/4 v6, 0x0

    .line 87
    invoke-direct {v4, v1, v6, v5}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 88
    .line 89
    .line 90
    new-instance v5, Lcom/rapid7/client/dcerpc/io/PacketInput;

    .line 91
    .line 92
    invoke-direct {v5, v4}, Lcom/rapid7/client/dcerpc/io/PacketInput;-><init>(Ljava/io/InputStream;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v5}, Lcom/rapid7/client/dcerpc/messages/Response;->unmarshal(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3}, Lcom/rapid7/client/dcerpc/messages/Response;->getStub()[B

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3}, Lcom/rapid7/client/dcerpc/Header;->getPFCFlags()Ljava/util/Set;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    sget-object v5, Lcom/rapid7/client/dcerpc/PFCFlag;->LAST_FRAGMENT:Lcom/rapid7/client/dcerpc/PFCFlag;

    .line 110
    .line 111
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-eqz v4, :cond_3

    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 122
    .line 123
    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 124
    .line 125
    .line 126
    new-instance v0, Lcom/rapid7/client/dcerpc/io/PacketInput;

    .line 127
    .line 128
    invoke-direct {v0, v1}, Lcom/rapid7/client/dcerpc/io/PacketInput;-><init>(Ljava/io/InputStream;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3}, Lcom/rapid7/client/dcerpc/Header;->getPDUType()Lcom/rapid7/client/dcerpc/PDUType;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    sget-object v2, Lcom/rapid7/client/dcerpc/PDUType;->RESPONSE:Lcom/rapid7/client/dcerpc/PDUType;

    .line 136
    .line 137
    if-eq v1, v2, :cond_2

    .line 138
    .line 139
    invoke-virtual {v3}, Lcom/rapid7/client/dcerpc/Header;->getPDUType()Lcom/rapid7/client/dcerpc/PDUType;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    sget-object v1, Lcom/rapid7/client/dcerpc/PDUType;->FAULT:Lcom/rapid7/client/dcerpc/PDUType;

    .line 144
    .line 145
    if-eq p1, v1, :cond_1

    .line 146
    .line 147
    invoke-virtual {v3}, Lcom/rapid7/client/dcerpc/Header;->getPDUType()Lcom/rapid7/client/dcerpc/PDUType;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    sget-object v1, Lcom/rapid7/client/dcerpc/PDUType;->REJECT:Lcom/rapid7/client/dcerpc/PDUType;

    .line 152
    .line 153
    if-ne p1, v1, :cond_0

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 157
    .line 158
    invoke-virtual {v3}, Lcom/rapid7/client/dcerpc/Header;->getPDUType()Lcom/rapid7/client/dcerpc/PDUType;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string v3, "Expected PDU "

    .line 165
    .line 166
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v2, " but got: "

    .line 173
    .line 174
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw p1

    .line 188
    :cond_1
    :goto_1
    invoke-static {v0}, Lcom/rapid7/client/dcerpc/transport/exceptions/RPCFaultException;->read(Lcom/rapid7/client/dcerpc/io/PacketInput;)Lcom/rapid7/client/dcerpc/transport/exceptions/RPCFaultException;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    throw p1

    .line 193
    :cond_2
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/messages/RequestCall;->getResponseObject()Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/messages/RequestResponse;->unmarshal(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 198
    .line 199
    .line 200
    return-object p1

    .line 201
    :cond_3
    invoke-interface {p0, v1}, Lcom/rapid7/client/dcerpc/io/Transport;->read([B)I

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    iput v4, v2, Lbh/a;->a:I

    .line 206
    .line 207
    goto :goto_0
.end method

.method public getCallID()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/transport/RPCTransport;->callID:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getMaxRecvFrag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/transport/RPCTransport;->maxRecvFrag:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxXmitFrag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/transport/RPCTransport;->maxXmitFrag:I

    .line 2
    .line 3
    return v0
.end method

.method public setMaxRecvFrag(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/rapid7/client/dcerpc/transport/RPCTransport;->maxRecvFrag:I

    .line 2
    .line 3
    return-void
.end method

.method public setMaxXmitFrag(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/rapid7/client/dcerpc/transport/RPCTransport;->maxXmitFrag:I

    .line 2
    .line 3
    return-void
.end method
