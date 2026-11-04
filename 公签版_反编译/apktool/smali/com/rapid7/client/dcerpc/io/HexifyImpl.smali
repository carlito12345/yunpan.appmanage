.class public abstract Lcom/rapid7/client/dcerpc/io/HexifyImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/rapid7/client/dcerpc/io/Hexify;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public fromHexString(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lv7/e;->d:Lv7/b;

    .line 2
    .line 3
    const-string v1, "\\s"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Lv7/e;->a(Ljava/lang/String;)[B

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 22
    .line 23
    .line 24
    new-instance p1, Lcom/rapid7/client/dcerpc/io/PacketInput;

    .line 25
    .line 26
    invoke-direct {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;-><init>(Ljava/io/InputStream;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p0, p1}, Lcom/rapid7/client/dcerpc/io/Packet;->unmarshal(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public toHexString()Ljava/lang/String;
    .locals 2

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
    invoke-interface {p0, v1}, Lcom/rapid7/client/dcerpc/io/Packet;->marshal(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v1, Lv7/e;->d:Lv7/b;

    .line 19
    .line 20
    invoke-virtual {v1}, Lv7/e;->f()Lv7/e;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1, v0}, Lv7/e;->c([B)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method
