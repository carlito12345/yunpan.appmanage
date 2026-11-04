.class Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester$1;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;->outputStream()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;


# direct methods
.method public constructor <init>(Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester$1;->this$0:Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester$1;->this$0:Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester$1;->this$0:Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;->access$000(Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester$1;->this$0:Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;->flush()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester$1;->this$0:Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ".outputStream()"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public write(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester$1;->this$0:Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;

    invoke-static {v0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;->access$000(Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester$1;->this$0:Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;

    iget-object v0, v0, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;->buffer:Lfg/i;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Lfg/i;->W(I)V

    .line 3
    iget-object p1, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester$1;->this$0:Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;

    invoke-virtual {p1}, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;->emitCompleteSegments()Lfg/j;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester$1;->this$0:Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;

    invoke-static {v0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;->access$000(Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester$1;->this$0:Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;

    iget-object v0, v0, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;->buffer:Lfg/i;

    invoke-virtual {v0, p1, p2, p3}, Lfg/i;->V([BII)V

    .line 7
    iget-object p1, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester$1;->this$0:Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;

    invoke-virtual {p1}, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;->emitCompleteSegments()Lfg/j;

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
