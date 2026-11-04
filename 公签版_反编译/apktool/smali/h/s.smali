.class public final Lh/s;
.super Lh/n;
.source "SourceFile"

# interfaces
.implements Lh/e;


# instance fields
.field public final c:Ljava/util/Date;

.field public final d:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lh/n;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh/s;->c:Ljava/util/Date;

    .line 5
    .line 6
    iput-object p2, p0, Lh/s;->d:Ljava/util/Date;

    .line 7
    .line 8
    sget-object p1, Lh/r;->d:Lg/h;

    .line 9
    .line 10
    iput-object p1, p0, Lh/n;->a:Lg/h;

    .line 11
    .line 12
    invoke-virtual {p0}, Lh/s;->c()V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a(Lg/f;)V
    .locals 2

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
    if-nez v1, :cond_0

    .line 9
    .line 10
    sget-object v1, Lh/r;->d:Lg/h;

    .line 11
    .line 12
    iput-object v1, p0, Lh/n;->a:Lg/h;

    .line 13
    .line 14
    invoke-virtual {p0}, Lh/s;->c()V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0, v0}, Lh/n;->b(Lg/f;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final c()V
    .locals 7

    .line 1
    iget-object v0, p0, Lh/s;->d:Ljava/util/Date;

    .line 2
    .line 3
    iget-object v1, p0, Lh/s;->c:Ljava/util/Date;

    .line 4
    .line 5
    new-instance v2, Lg/f;

    .line 6
    .line 7
    invoke-direct {v2}, Lg/f;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v3, Lg/f;

    .line 11
    .line 12
    invoke-direct {v3}, Lg/f;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v4, Lg/f;

    .line 16
    .line 17
    invoke-direct {v4}, Lg/f;-><init>()V

    .line 18
    .line 19
    .line 20
    const/16 v5, 0x18

    .line 21
    .line 22
    invoke-virtual {v4, v1, v5}, Lg/f;->A(Ljava/util/Date;B)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-static {v1, v1}, Lg/g;->a(ZB)B

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    invoke-virtual {v3, v6, v4}, Lg/f;->L(BLg/f;)V

    .line 31
    .line 32
    .line 33
    new-instance v4, Lg/f;

    .line 34
    .line 35
    invoke-direct {v4}, Lg/f;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v0, v5}, Lg/f;->A(Ljava/util/Date;B)V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    invoke-static {v1, v0}, Lg/g;->a(ZB)B

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-virtual {v3, v0, v4}, Lg/f;->L(BLg/f;)V

    .line 47
    .line 48
    .line 49
    const/16 v0, 0x30

    .line 50
    .line 51
    invoke-virtual {v2, v0, v3}, Lg/f;->J(BLg/f;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Lh/n;->b:[B

    .line 59
    .line 60
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "PrivateKeyUsage"

    .line 2
    .line 3
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

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
    const-string v1, "PrivateKeyUsage: [\n"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ""

    .line 19
    .line 20
    iget-object v2, p0, Lh/s;->c:Ljava/util/Date;

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    move-object v2, v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v4, "From: "

    .line 29
    .line 30
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v2, ", "

    .line 41
    .line 42
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lh/s;->d:Ljava/util/Date;

    .line 53
    .line 54
    if-nez v2, :cond_1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v3, "To: "

    .line 60
    .line 61
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    :goto_1
    const-string v2, "]\n"

    .line 76
    .line 77
    invoke-static {v1, v2, v0}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    return-object v0
.end method
