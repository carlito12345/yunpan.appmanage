.class public final Lde/b;
.super Ljava/security/MessageDigest;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/security/MessageDigest;

.field public final c:[B

.field public final d:[B


# direct methods
.method public constructor <init>(Lde/b;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lde/b;->a:I

    .line 22
    const-string v0, "HMACT64"

    invoke-direct {p0, v0}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x40

    .line 23
    new-array v1, v0, [B

    iput-object v1, p0, Lde/b;->c:[B

    .line 24
    new-array v0, v0, [B

    iput-object v0, p0, Lde/b;->d:[B

    .line 25
    iget-object v0, p1, Lde/b;->c:[B

    iput-object v0, p0, Lde/b;->c:[B

    .line 26
    iget-object v0, p1, Lde/b;->d:[B

    iput-object v0, p0, Lde/b;->d:[B

    .line 27
    iget-object p1, p1, Lde/b;->b:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/MessageDigest;

    iput-object p1, p0, Lde/b;->b:Ljava/security/MessageDigest;

    return-void
.end method

.method public constructor <init>(Lde/b;B)V
    .locals 1

    const/4 p2, 0x1

    iput p2, p0, Lde/b;->a:I

    .line 28
    const-string p2, "HMACT64"

    invoke-direct {p0, p2}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x40

    .line 29
    new-array v0, p2, [B

    iput-object v0, p0, Lde/b;->c:[B

    .line 30
    new-array p2, p2, [B

    iput-object p2, p0, Lde/b;->d:[B

    .line 31
    iget-object p2, p1, Lde/b;->c:[B

    iput-object p2, p0, Lde/b;->c:[B

    .line 32
    iget-object p2, p1, Lde/b;->d:[B

    iput-object p2, p0, Lde/b;->d:[B

    .line 33
    iget-object p1, p1, Lde/b;->b:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/MessageDigest;

    iput-object p1, p0, Lde/b;->b:Ljava/security/MessageDigest;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 6

    iput p2, p0, Lde/b;->a:I

    packed-switch p2, :pswitch_data_0

    .line 1
    const-string p2, "HMACT64"

    invoke-direct {p0, p2}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x40

    .line 2
    new-array v0, p2, [B

    iput-object v0, p0, Lde/b;->c:[B

    .line 3
    new-array v0, p2, [B

    iput-object v0, p0, Lde/b;->d:[B

    .line 4
    array-length v0, p1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x5c

    const/16 v3, 0x36

    if-ge v1, v0, :cond_0

    .line 5
    iget-object v4, p0, Lde/b;->c:[B

    aget-byte v5, p1, v1

    xor-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v4, v1

    .line 6
    iget-object v3, p0, Lde/b;->d:[B

    aget-byte v4, p1, v1

    xor-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, p2, :cond_1

    .line 7
    iget-object p1, p0, Lde/b;->c:[B

    aput-byte v3, p1, v0

    .line 8
    iget-object p1, p0, Lde/b;->d:[B

    aput-byte v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9
    :cond_1
    :try_start_0
    const-string p1, "MD5"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lde/b;->b:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    invoke-virtual {p0}, Lde/b;->engineReset()V

    return-void

    :catch_0
    move-exception p1

    .line 11
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 12
    :pswitch_0
    const-string p2, "HMACT64"

    invoke-direct {p0, p2}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x40

    .line 13
    new-array v0, p2, [B

    iput-object v0, p0, Lde/b;->c:[B

    .line 14
    new-array v0, p2, [B

    iput-object v0, p0, Lde/b;->d:[B

    .line 15
    array-length v0, p1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    const/16 v2, 0x5c

    const/16 v3, 0x36

    if-ge v1, v0, :cond_2

    .line 16
    iget-object v4, p0, Lde/b;->c:[B

    aget-byte v5, p1, v1

    xor-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v4, v1

    .line 17
    iget-object v3, p0, Lde/b;->d:[B

    aget-byte v4, p1, v1

    xor-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-ge v0, p2, :cond_3

    .line 18
    iget-object p1, p0, Lde/b;->c:[B

    aput-byte v3, p1, v0

    .line 19
    iget-object p1, p0, Lde/b;->d:[B

    aput-byte v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 20
    :cond_3
    invoke-static {}, Lge/a;->k()Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lde/b;->b:Ljava/security/MessageDigest;

    .line 21
    invoke-virtual {p0}, Lde/b;->engineReset()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lde/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v0, Lde/b;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, v1}, Lde/b;-><init>(Lde/b;B)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v1

    .line 24
    :pswitch_0
    :try_start_1
    new-instance v0, Lde/b;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lde/b;-><init>(Lde/b;)V
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 27
    .line 28
    .line 29
    return-object v0

    .line 30
    :catch_1
    move-exception v0

    .line 31
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v1

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final engineDigest([BII)I
    .locals 3

    iget v0, p0, Lde/b;->a:I

    packed-switch v0, :pswitch_data_0

    .line 7
    iget-object v0, p0, Lde/b;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 8
    iget-object v2, p0, Lde/b;->d:[B

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 9
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 10
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->digest([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 11
    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 12
    :pswitch_0
    iget-object v0, p0, Lde/b;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 13
    iget-object v2, p0, Lde/b;->d:[B

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 14
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 15
    :try_start_1
    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->digest([BII)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p1

    .line 16
    :catch_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final engineDigest()[B
    .locals 3

    iget v0, p0, Lde/b;->a:I

    packed-switch v0, :pswitch_data_0

    .line 1
    iget-object v0, p0, Lde/b;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 2
    iget-object v2, p0, Lde/b;->d:[B

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 3
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0

    .line 4
    :pswitch_0
    iget-object v0, p0, Lde/b;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 5
    iget-object v2, p0, Lde/b;->d:[B

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 6
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final engineGetDigestLength()I
    .locals 1

    .line 1
    iget v0, p0, Lde/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lde/b;->b:Ljava/security/MessageDigest;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0

    .line 13
    :pswitch_0
    iget-object v0, p0, Lde/b;->b:Ljava/security/MessageDigest;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final engineReset()V
    .locals 2

    .line 1
    iget v0, p0, Lde/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lde/b;->b:Ljava/security/MessageDigest;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lde/b;->c:[B

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    iget-object v0, p0, Lde/b;->b:Ljava/security/MessageDigest;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lde/b;->c:[B

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final engineUpdate(B)V
    .locals 1

    iget v0, p0, Lde/b;->a:I

    packed-switch v0, :pswitch_data_0

    .line 1
    iget-object v0, p0, Lde/b;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    return-void

    .line 2
    :pswitch_0
    iget-object v0, p0, Lde/b;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final engineUpdate([BII)V
    .locals 1

    iget v0, p0, Lde/b;->a:I

    packed-switch v0, :pswitch_data_0

    .line 3
    iget-object v0, p0, Lde/b;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void

    .line 4
    :pswitch_0
    iget-object v0, p0, Lde/b;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
