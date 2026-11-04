.class public final Lh/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh/e;


# instance fields
.field public final a:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "x509"

    .line 2
    .line 3
    invoke-static {v0}, Lg/c;->a(Ljava/lang/String;)Lg/c;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/Hashtable;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lh/g;->a:Ljava/util/Hashtable;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Lg/f;)V
    .locals 5

    .line 1
    new-instance v0, Lg/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lg/f;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lh/g;->a:Ljava/util/Hashtable;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    array-length v3, v1

    .line 18
    if-ge v2, v3, :cond_2

    .line 19
    .line 20
    aget-object v3, v1, v2

    .line 21
    .line 22
    instance-of v4, v3, Lh/e;

    .line 23
    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    check-cast v3, Lh/e;

    .line 27
    .line 28
    invoke-interface {v3, v0}, Lh/e;->a(Lg/f;)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    instance-of v4, v3, Lh/n;

    .line 33
    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    check-cast v3, Lh/n;

    .line 37
    .line 38
    invoke-virtual {v3, v0}, Lh/n;->b(Lg/f;)V

    .line 39
    .line 40
    .line 41
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    new-instance p1, Ljava/security/cert/CertificateException;

    .line 45
    .line 46
    const-string v0, "Illegal extension object"

    .line 47
    .line 48
    invoke-direct {p1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_2
    new-instance v1, Lg/f;

    .line 53
    .line 54
    invoke-direct {v1}, Lg/f;-><init>()V

    .line 55
    .line 56
    .line 57
    const/16 v2, 0x30

    .line 58
    .line 59
    invoke-virtual {v1, v2, v0}, Lg/f;->J(BLg/f;)V

    .line 60
    .line 61
    .line 62
    new-instance v0, Lg/f;

    .line 63
    .line 64
    invoke-direct {v0}, Lg/f;-><init>()V

    .line 65
    .line 66
    .line 67
    const/4 v2, 0x3

    .line 68
    const/4 v3, 0x1

    .line 69
    invoke-static {v3, v2}, Lg/g;->a(ZB)B

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    invoke-virtual {v0, v2, v1}, Lg/f;->J(BLg/f;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lh/n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lh/g;->a:Ljava/util/Hashtable;

    .line 6
    .line 7
    check-cast p1, Lh/n;

    .line 8
    .line 9
    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 14
    .line 15
    const-string p2, "Unknown extension type."

    .line 16
    .line 17
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Lh/g;

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
    check-cast p1, Lh/g;

    .line 12
    .line 13
    iget-object p1, p1, Lh/g;->a:Ljava/util/Hashtable;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    array-length v0, p1

    .line 24
    iget-object v2, p0, Lh/g;->a:Ljava/util/Hashtable;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eq v0, v3, :cond_2

    .line 31
    .line 32
    return v1

    .line 33
    :cond_2
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x0

    .line 35
    :goto_0
    if-ge v4, v0, :cond_7

    .line 36
    .line 37
    aget-object v5, p1, v4

    .line 38
    .line 39
    instance-of v6, v5, Lh/e;

    .line 40
    .line 41
    if-eqz v6, :cond_3

    .line 42
    .line 43
    check-cast v5, Lh/e;

    .line 44
    .line 45
    invoke-interface {v5}, Lh/e;->getName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    :cond_3
    aget-object v5, p1, v4

    .line 50
    .line 51
    check-cast v5, Lh/n;

    .line 52
    .line 53
    if-nez v3, :cond_4

    .line 54
    .line 55
    iget-object v3, v5, Lh/n;->a:Lg/h;

    .line 56
    .line 57
    invoke-virtual {v3}, Lg/h;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    :cond_4
    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    check-cast v6, Lh/n;

    .line 66
    .line 67
    if-nez v6, :cond_5

    .line 68
    .line 69
    return v1

    .line 70
    :cond_5
    invoke-virtual {v6, v5}, Lh/n;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-nez v5, :cond_6

    .line 75
    .line 76
    return v1

    .line 77
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_7
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-interface {p1, v0}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    return p1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "extensions"

    .line 2
    .line 3
    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lh/g;->a:Ljava/util/Hashtable;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Hashtable;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lh/g;->a:Ljava/util/Hashtable;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Hashtable;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
