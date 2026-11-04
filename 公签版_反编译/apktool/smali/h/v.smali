.class public final Lh/v;
.super Lh/n;
.source "SourceFile"

# interfaces
.implements Lh/e;


# instance fields
.field public final c:Lh/o;


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lh/n;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lh/v;->c:Lh/o;

    .line 6
    .line 7
    new-instance v0, Lh/o;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Lh/o;-><init>([B)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lh/v;->c:Lh/o;

    .line 13
    .line 14
    sget-object p1, Lh/r;->b:Lg/h;

    .line 15
    .line 16
    iput-object p1, p0, Lh/n;->a:Lg/h;

    .line 17
    .line 18
    new-instance p1, Lg/f;

    .line 19
    .line 20
    invoke-direct {p1}, Lg/f;-><init>()V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x4

    .line 24
    iget-object v0, v0, Lh/o;->a:[B

    .line 25
    .line 26
    invoke-virtual {p1, v1, v0}, Lg/f;->K(B[B)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lh/n;->b:[B

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final a(Lg/f;)V
    .locals 4

    .line 1
    new-instance v0, Lg/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lg/f;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lh/n;->b:[B

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    sget-object v1, Lh/r;->b:Lg/h;

    .line 11
    .line 12
    iput-object v1, p0, Lh/n;->a:Lg/h;

    .line 13
    .line 14
    iget-object v1, p0, Lh/v;->c:Lh/o;

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput-object v1, p0, Lh/n;->b:[B

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v2, Lg/f;

    .line 23
    .line 24
    invoke-direct {v2}, Lg/f;-><init>()V

    .line 25
    .line 26
    .line 27
    const/4 v3, 0x4

    .line 28
    iget-object v1, v1, Lh/o;->a:[B

    .line 29
    .line 30
    invoke-virtual {v2, v3, v1}, Lg/f;->K(B[B)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iput-object v1, p0, Lh/n;->b:[B

    .line 38
    .line 39
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lh/n;->b(Lg/f;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "SubjectKeyIdentifier"

    .line 2
    .line 3
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lh/n;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "SubjectKeyIdentifier [\n"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lh/v;->c:Lh/o;

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, "]\n"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method
