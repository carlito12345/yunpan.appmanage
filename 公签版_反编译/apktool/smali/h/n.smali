.class public abstract Lh/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lg/h;

.field public b:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lh/n;->a:Lg/h;

    .line 6
    .line 7
    iput-object v0, p0, Lh/n;->b:[B

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final b(Lg/f;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lh/n;->a:Lg/h;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lh/n;->b:[B

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lg/f;

    .line 10
    .line 11
    invoke-direct {v0}, Lg/f;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lh/n;->a:Lg/h;

    .line 15
    .line 16
    const/4 v2, 0x6

    .line 17
    iget-object v1, v1, Lg/h;->a:[B

    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Lg/f;->K(B[B)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lh/n;->b:[B

    .line 23
    .line 24
    const/4 v2, 0x4

    .line 25
    invoke-virtual {v0, v2, v1}, Lg/f;->K(B[B)V

    .line 26
    .line 27
    .line 28
    const/16 v1, 0x30

    .line 29
    .line 30
    invoke-virtual {p1, v1, v0}, Lg/f;->J(BLg/f;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 35
    .line 36
    const-string v0, "No value to encode for the extension!"

    .line 37
    .line 38
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 43
    .line 44
    const-string v0, "Null OID to encode for the extension!"

    .line 45
    .line 46
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Lh/n;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return v1

    .line 11
    :cond_1
    check-cast p1, Lh/n;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lh/n;->a:Lg/h;

    .line 17
    .line 18
    iget-object v2, p1, Lh/n;->a:Lg/h;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lg/h;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    return v1

    .line 27
    :cond_2
    iget-object v0, p0, Lh/n;->b:[B

    .line 28
    .line 29
    iget-object p1, p1, Lh/n;->b:[B

    .line 30
    .line 31
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    return p1
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lh/n;->b:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    array-length v2, v0

    .line 7
    :goto_0
    if-lez v2, :cond_0

    .line 8
    .line 9
    add-int/lit8 v3, v2, -0x1

    .line 10
    .line 11
    aget-byte v4, v0, v3

    .line 12
    .line 13
    mul-int v2, v2, v4

    .line 14
    .line 15
    add-int/2addr v1, v2

    .line 16
    move v2, v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    mul-int/lit8 v1, v1, 0x1f

    .line 19
    .line 20
    iget-object v0, p0, Lh/n;->a:Lg/h;

    .line 21
    .line 22
    iget-object v0, v0, Lg/h;->a:[B

    .line 23
    .line 24
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    add-int/2addr v0, v1

    .line 29
    mul-int/lit8 v0, v0, 0x1f

    .line 30
    .line 31
    add-int/lit16 v0, v0, 0x4d5

    .line 32
    .line 33
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ObjectId: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lh/n;->a:Lg/h;

    .line 9
    .line 10
    invoke-virtual {v1}, Lg/h;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, " Criticality=false\n"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method
