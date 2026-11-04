.class public final Lfd/i;
.super Led/c;
.source "SourceFile"

# interfaces
.implements Lad/j;


# instance fields
.field public final G:Z

.field public final H:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lvc/f;Z)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    const/16 v4, 0x72

    .line 6
    .line 7
    invoke-direct {p0, p1, v4, v3}, Led/c;-><init>(Lvc/f;BLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput-boolean p2, p0, Lfd/i;->G:Z

    .line 11
    .line 12
    check-cast p1, Lwc/a;

    .line 13
    .line 14
    iget p2, p1, Lwc/a;->x:I

    .line 15
    .line 16
    iput p2, p0, Led/c;->g:I

    .line 17
    .line 18
    iget-object p2, p1, Lwc/a;->q0:Lvc/i;

    .line 19
    .line 20
    iget-boolean p2, p2, Lvc/i;->a:Z

    .line 21
    .line 22
    const-string v3, "SMB 2.002"

    .line 23
    .line 24
    const-string v4, "SMB 2.???"

    .line 25
    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    new-array p1, v0, [Ljava/lang/String;

    .line 29
    .line 30
    aput-object v4, p1, v2

    .line 31
    .line 32
    aput-object v3, p1, v1

    .line 33
    .line 34
    iput-object p1, p0, Lfd/i;->H:[Ljava/lang/String;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object p1, p1, Lwc/a;->r0:Lvc/i;

    .line 38
    .line 39
    iget-boolean p1, p1, Lvc/i;->a:Z

    .line 40
    .line 41
    const-string p2, "NT LM 0.12"

    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    const/4 p1, 0x3

    .line 46
    new-array p1, p1, [Ljava/lang/String;

    .line 47
    .line 48
    aput-object p2, p1, v2

    .line 49
    .line 50
    aput-object v4, p1, v1

    .line 51
    .line 52
    aput-object v3, p1, v0

    .line 53
    .line 54
    iput-object p1, p0, Lfd/i;->H:[Ljava/lang/String;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    new-array p1, v1, [Ljava/lang/String;

    .line 58
    .line 59
    aput-object p2, p1, v2

    .line 60
    .line 61
    iput-object p1, p0, Lfd/i;->H:[Ljava/lang/String;

    .line 62
    .line 63
    :goto_0
    return-void
.end method


# virtual methods
.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfd/i;->G:Z

    .line 2
    .line 3
    return v0
.end method

.method public final i0(I[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final k0(I[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final o0(I[B)I
    .locals 7

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lfd/i;->H:[Ljava/lang/String;

    .line 7
    .line 8
    array-length v2, v1

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    :goto_0
    if-ge v4, v2, :cond_0

    .line 12
    .line 13
    aget-object v5, v1, v4

    .line 14
    .line 15
    const/4 v6, 0x2

    .line 16
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 17
    .line 18
    .line 19
    :try_start_0
    sget-object v6, Lge/b;->c:Ljava/nio/charset/Charset;

    .line 20
    .line 21
    invoke-static {v5, v6}, Lge/b;->d(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 29
    .line 30
    .line 31
    add-int/lit8 v4, v4, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p1

    .line 35
    new-instance p2, Landroidx/fragment/app/b0;

    .line 36
    .line 37
    const/16 v0, 0xa

    .line 38
    .line 39
    invoke-direct {p2, v0, p1}, Landroidx/fragment/app/b0;-><init>(ILjava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    throw p2

    .line 43
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-static {v1, v3, p2, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    return p1
.end method

.method public final q0(I[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "SmbComNegotiate["

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Led/c;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ",wordCount="

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v2, p0, Led/c;->k:I

    .line 23
    .line 24
    const-string v3, ",dialects=NT LM 0.12]"

    .line 25
    .line 26
    invoke-static {v1, v2, v3}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method
