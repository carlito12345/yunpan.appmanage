.class public Lcom/rapid7/client/dcerpc/transport/SMBTransport;
.super Lcom/rapid7/client/dcerpc/transport/RPCTransport;
.source "SourceFile"


# instance fields
.field private final namedPipe:Lcom/rapid7/helper/smbj/share/NamedPipe;


# direct methods
.method public constructor <init>(Lcom/rapid7/helper/smbj/share/NamedPipe;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/rapid7/client/dcerpc/transport/RPCTransport;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/transport/SMBTransport;->namedPipe:Lcom/rapid7/helper/smbj/share/NamedPipe;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public read([B)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/transport/SMBTransport;->namedPipe:Lcom/rapid7/helper/smbj/share/NamedPipe;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/rapid7/helper/smbj/share/NamedPipe;->read()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    .line 11
    .line 12
    array-length p1, v0

    .line 13
    return p1
.end method

.method public transact([B[B)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/transport/SMBTransport;->namedPipe:Lcom/rapid7/helper/smbj/share/NamedPipe;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/rapid7/helper/smbj/share/NamedPipe;->transact([B)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    array-length v0, p1

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    .line 11
    .line 12
    array-length p1, p1

    .line 13
    return p1
.end method

.method public write([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/transport/SMBTransport;->namedPipe:Lcom/rapid7/helper/smbj/share/NamedPipe;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/rapid7/helper/smbj/share/NamedPipe;->write([B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
