.class public Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfg/j;


# instance fields
.field buffer:Lfg/i;

.field private closed:Z

.field private digest:[B

.field private final digester:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>(Ljava/security/MessageDigest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;->digester:Ljava/security/MessageDigest;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/security/MessageDigest;->reset()V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lfg/i;

    .line 10
    .line 11
    invoke-direct {p1}, Lfg/i;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;->buffer:Lfg/i;

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic access$000(Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;->closed:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public buffer()Lfg/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;->buffer:Lfg/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;->closed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;->closed:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;->digester:Ljava/security/MessageDigest;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;->digest:[B

    .line 16
    .line 17
    iget-object v0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;->buffer:Lfg/i;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public emit()Lfg/j;
    .locals 0

    .line 1
    return-object p0
.end method

.method public emitCompleteSegments()Lfg/j;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public synthetic getBuffer()Lfg/i;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public getDigest()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;->digest:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public outputStream()Ljava/io/OutputStream;
    .locals 1

    .line 1
    new-instance v0, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester$1;-><init>(Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public timeout()Lfg/c0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public write(Lfg/l;)Lfg/j;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;->digester:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Lfg/l;->p()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    return-object p0
.end method

.method public synthetic write(Lfg/l;II)Lfg/j;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public write(Lfg/z;J)Lfg/j;
    .locals 0

    .line 5
    iget-boolean p1, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;->closed:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream has been already closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([B)Lfg/j;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;->digester:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    return-object p0
.end method

.method public write([BII)Lfg/j;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;->digester:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-object p0
.end method

.method public write(Lfg/i;J)V
    .locals 0

    .line 7
    return-void
.end method

.method public writeAll(Lfg/z;)J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    return-wide v0
.end method

.method public writeByte(I)Lfg/j;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public writeDecimalLong(J)Lfg/j;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public writeHexadecimalUnsignedLong(J)Lfg/j;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public writeInt(I)Lfg/j;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public writeIntLe(I)Lfg/j;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public writeLong(J)Lfg/j;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public writeLongLe(J)Lfg/j;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public writeShort(I)Lfg/j;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public writeShortLe(I)Lfg/j;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lfg/j;
    .locals 0

    .line 2
    const/4 p1, 0x0

    return-object p1
.end method

.method public writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lfg/j;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public writeUtf8(Ljava/lang/String;)Lfg/j;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public writeUtf8(Ljava/lang/String;II)Lfg/j;
    .locals 0

    .line 2
    const/4 p1, 0x0

    return-object p1
.end method

.method public writeUtf8CodePoint(I)Lfg/j;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method
