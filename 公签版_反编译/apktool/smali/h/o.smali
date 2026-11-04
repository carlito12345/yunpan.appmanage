.class public final Lh/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lg/g;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lg/g;-><init>([B)V

    .line 5
    iget-byte p1, v0, Lg/g;->a:B

    const/16 v1, 0x30

    if-ne p1, v1, :cond_3

    .line 6
    new-instance p1, Lg/g;

    .line 7
    iget-object v0, v0, Lg/g;->c:La1/i;

    iget-object v1, v0, La1/i;->b:Ljava/lang/Object;

    check-cast v1, Lg/e;

    .line 8
    invoke-direct {p1, v1}, Lg/g;-><init>(Lg/e;)V

    .line 9
    invoke-static {p1}, Lh/d;->d(Lg/g;)Lh/d;

    .line 10
    iget-object p1, v0, La1/i;->b:Ljava/lang/Object;

    check-cast p1, Lg/e;

    .line 11
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 12
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v0, p1}, La1/i;->q(ILjava/io/InputStream;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v1, v0, 0x8

    .line 13
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    sub-int/2addr v1, v2

    .line 14
    new-array v2, v0, [B

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "short read of DER bit string"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_1
    :goto_0
    new-instance p1, Lg/a;

    invoke-direct {p1, v1, v2}, Lg/a;-><init>(I[B)V

    .line 18
    iget-object p1, p1, Lg/a;->a:[B

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 19
    :try_start_0
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 21
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    iput-object p1, p0, Lh/o;->a:[B

    return-void

    .line 22
    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "SHA1 not supported"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "DER input not a bit string"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "PublicKey value is not a valid X.509 public key"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lh/o;->a:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Lh/o;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    check-cast p1, Lh/o;

    .line 12
    .line 13
    iget-object p1, p1, Lh/o;->a:[B

    .line 14
    .line 15
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, [B

    .line 20
    .line 21
    iget-object v0, p0, Lh/o;->a:[B

    .line 22
    .line 23
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lh/o;->a:[B

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge v0, v3, :cond_0

    .line 7
    .line 8
    aget-byte v2, v2, v0

    .line 9
    .line 10
    mul-int v2, v2, v0

    .line 11
    .line 12
    add-int/2addr v1, v2

    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, La/c;

    .line 2
    .line 3
    invoke-direct {v0}, La/c;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, "KeyIdentifier [\n"

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lh/o;->a:[B

    .line 14
    .line 15
    invoke-virtual {v0, v2}, La/b;->c([B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "]\n"

    .line 27
    .line 28
    invoke-static {v0, v1}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method
