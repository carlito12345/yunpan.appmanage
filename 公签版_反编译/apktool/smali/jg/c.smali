.class public final Ljg/c;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public final a:Ljavax/crypto/CipherOutputStream;

.field public final b:I

.field public final c:[B

.field public d:I


# direct methods
.method public constructor <init>(Ljg/a;Ljava/io/OutputStream;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljavax/crypto/CipherOutputStream;

    .line 5
    .line 6
    iget-object v1, p1, Ljg/a;->d:Ljavax/crypto/Cipher;

    .line 7
    .line 8
    invoke-direct {v0, p2, v1}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Ljg/c;->a:Ljavax/crypto/CipherOutputStream;

    .line 12
    .line 13
    iget-object p1, p1, Ljg/a;->d:Ljavax/crypto/Cipher;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljavax/crypto/Cipher;->getBlockSize()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput p1, p0, Ljg/c;->b:I

    .line 20
    .line 21
    new-array p1, p1, [B

    .line 22
    .line 23
    iput-object p1, p0, Ljg/c;->c:[B

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    iget v0, p0, Ljg/c;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Ljg/c;->a:Ljavax/crypto/CipherOutputStream;

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Ljg/c;->c:[B

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljavax/crypto/CipherOutputStream;->write([B)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {v1}, Ljavax/crypto/CipherOutputStream;->close()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Ljg/c;->a:Ljavax/crypto/CipherOutputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljavax/crypto/CipherOutputStream;->flush()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final write(I)V
    .locals 3

    .line 11
    iget v0, p0, Ljg/c;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljg/c;->d:I

    int-to-byte p1, p1

    iget-object v2, p0, Ljg/c;->c:[B

    aput-byte p1, v2, v0

    .line 12
    iget p1, p0, Ljg/c;->b:I

    if-ne v1, p1, :cond_0

    .line 13
    iget-object p1, p0, Ljg/c;->a:Ljavax/crypto/CipherOutputStream;

    invoke-virtual {p1, v2}, Ljavax/crypto/CipherOutputStream;->write([B)V

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Ljg/c;->d:I

    .line 15
    invoke-static {v2, p1}, Ljava/util/Arrays;->fill([BB)V

    :cond_0
    return-void
.end method

.method public final write([BII)V
    .locals 6

    .line 1
    iget v0, p0, Ljg/c;->d:I

    add-int v1, p3, v0

    iget v2, p0, Ljg/c;->b:I

    if-le v1, v2, :cond_0

    sub-int v1, v2, v0

    goto :goto_0

    :cond_0
    move v1, p3

    .line 2
    :goto_0
    iget-object v3, p0, Ljg/c;->c:[B

    invoke-static {p1, p2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iget v0, p0, Ljg/c;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Ljg/c;->d:I

    if-ne v0, v2, :cond_2

    .line 4
    iget-object v0, p0, Ljg/c;->a:Ljavax/crypto/CipherOutputStream;

    invoke-virtual {v0, v3}, Ljavax/crypto/CipherOutputStream;->write([B)V

    const/4 v4, 0x0

    .line 5
    iput v4, p0, Ljg/c;->d:I

    .line 6
    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([BB)V

    sub-int v5, p3, v1

    if-lt v5, v2, :cond_1

    .line 7
    div-int/2addr v5, v2

    mul-int v5, v5, v2

    add-int v2, p2, v1

    .line 8
    invoke-virtual {v0, p1, v2, v5}, Ljavax/crypto/CipherOutputStream;->write([BII)V

    add-int/2addr v1, v5

    :cond_1
    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    .line 9
    invoke-static {p1, p2, v3, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iput p3, p0, Ljg/c;->d:I

    :cond_2
    return-void
.end method
