.class public abstract La9/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    .line 4
    .line 5
    invoke-static {v1, v0}, La9/h0;->k(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sput-object v1, La9/h0;->a:[B

    .line 10
    .line 11
    const-string v1, ""

    .line 12
    .line 13
    invoke-static {v1, v0}, La9/h0;->k(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static a([B[B)Z
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    array-length v1, p1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v2

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_2

    .line 9
    .line 10
    aget-byte v3, p0, v1

    .line 11
    .line 12
    aget-byte v4, p1, v1

    .line 13
    .line 14
    if-eq v3, v4, :cond_1

    .line 15
    .line 16
    return v2

    .line 17
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    const/4 p0, 0x1

    .line 21
    return p0
.end method

.method public static b(II[B)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v1, p2, p0, p1, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 6
    .line 7
    .line 8
    return-object v1
.end method

.method public static c([B)Ljava/lang/String;
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    sget-object v1, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 3
    .line 4
    new-instance v2, Ljava/lang/String;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v2, p0, v3, v0, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 8
    .line 9
    .line 10
    return-object v2
.end method

.method public static d([B)V
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    array-length v2, p0

    .line 7
    if-ge v1, v2, :cond_1

    .line 8
    .line 9
    aput-byte v0, p0, v1

    .line 10
    .line 11
    add-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    return-void
.end method

.method public static e(IILjava/lang/String;)Ljava/net/Socket;
    .locals 2

    .line 1
    new-instance v0, Ljava/net/Socket;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Ljava/net/InetSocketAddress;

    .line 7
    .line 8
    invoke-direct {v1, p2, p0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    :try_start_1
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_1
    nop

    .line 21
    :goto_0
    instance-of p1, p0, Ljava/net/SocketTimeoutException;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const-string p1, "timeout: socket is not established"

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :goto_1
    new-instance p2, La9/n;

    .line 33
    .line 34
    invoke-direct {p2, p1, p0}, La9/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    throw p2
.end method

.method public static f(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {p0}, La9/h0;->i(Ljava/lang/String;)[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    array-length v3, p0

    .line 9
    if-ge v2, v3, :cond_3

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_1
    array-length v4, p1

    .line 13
    if-ge v3, v4, :cond_1

    .line 14
    .line 15
    aget-object v4, p0, v2

    .line 16
    .line 17
    aget-object v5, p1, v3

    .line 18
    .line 19
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    if-nez v0, :cond_2

    .line 30
    .line 31
    aget-object v0, p0, v2

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_2
    const-string v3, ","

    .line 35
    .line 36
    invoke-static {v0, v3}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    aget-object v3, p0, v2

    .line 41
    .line 42
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    return-object v0
.end method

.method public static g(II[B)[B
    .locals 9

    .line 1
    :try_start_0
    new-array v0, p1, [B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    move v2, p0

    .line 6
    :goto_0
    add-int v4, p0, p1

    .line 7
    .line 8
    if-ge v2, v4, :cond_2

    .line 9
    .line 10
    aget-byte v4, p2, v2

    .line 11
    .line 12
    invoke-static {v4}, La9/h0;->m(B)B

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    shl-int/lit8 v4, v4, 0x2

    .line 17
    .line 18
    add-int/lit8 v5, v2, 0x1

    .line 19
    .line 20
    aget-byte v6, p2, v5

    .line 21
    .line 22
    invoke-static {v6}, La9/h0;->m(B)B

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    and-int/lit8 v6, v6, 0x30

    .line 27
    .line 28
    ushr-int/lit8 v6, v6, 0x4

    .line 29
    .line 30
    or-int/2addr v4, v6

    .line 31
    int-to-byte v4, v4

    .line 32
    aput-byte v4, v0, v3

    .line 33
    .line 34
    add-int/lit8 v4, v2, 0x2

    .line 35
    .line 36
    aget-byte v6, p2, v4

    .line 37
    .line 38
    const/16 v7, 0x3d

    .line 39
    .line 40
    if-ne v6, v7, :cond_0

    .line 41
    .line 42
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    add-int/lit8 v6, v3, 0x1

    .line 46
    .line 47
    aget-byte v5, p2, v5

    .line 48
    .line 49
    invoke-static {v5}, La9/h0;->m(B)B

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    and-int/lit8 v5, v5, 0xf

    .line 54
    .line 55
    shl-int/lit8 v5, v5, 0x4

    .line 56
    .line 57
    aget-byte v8, p2, v4

    .line 58
    .line 59
    invoke-static {v8}, La9/h0;->m(B)B

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    and-int/lit8 v8, v8, 0x3c

    .line 64
    .line 65
    ushr-int/lit8 v8, v8, 0x2

    .line 66
    .line 67
    or-int/2addr v5, v8

    .line 68
    int-to-byte v5, v5

    .line 69
    aput-byte v5, v0, v6

    .line 70
    .line 71
    add-int/lit8 v5, v2, 0x3

    .line 72
    .line 73
    aget-byte v6, p2, v5

    .line 74
    .line 75
    if-ne v6, v7, :cond_1

    .line 76
    .line 77
    add-int/lit8 v3, v3, 0x2

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    add-int/lit8 v6, v3, 0x2

    .line 81
    .line 82
    aget-byte v4, p2, v4

    .line 83
    .line 84
    invoke-static {v4}, La9/h0;->m(B)B

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    and-int/lit8 v4, v4, 0x3

    .line 89
    .line 90
    shl-int/lit8 v4, v4, 0x6

    .line 91
    .line 92
    aget-byte v5, p2, v5

    .line 93
    .line 94
    invoke-static {v5}, La9/h0;->m(B)B

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    and-int/lit8 v5, v5, 0x3f

    .line 99
    .line 100
    or-int/2addr v4, v5

    .line 101
    int-to-byte v4, v4

    .line 102
    aput-byte v4, v0, v6

    .line 103
    .line 104
    add-int/lit8 v3, v3, 0x3

    .line 105
    .line 106
    add-int/lit8 v2, v2, 0x4

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :catch_0
    move-exception p0

    .line 110
    goto :goto_2

    .line 111
    :cond_2
    :goto_1
    new-array p0, v3, [B

    .line 112
    .line 113
    invoke-static {v0, v1, p0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .line 115
    .line 116
    return-object p0

    .line 117
    :goto_2
    new-instance p1, La9/n;

    .line 118
    .line 119
    const-string p2, "fromBase64: invalid base64 data"

    .line 120
    .line 121
    invoke-direct {p1, p2, p0}, La9/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    goto :goto_4

    .line 125
    :goto_3
    throw p1

    .line 126
    :goto_4
    goto :goto_3
.end method

.method public static h(Ljava/lang/String;)[B
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "~"

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    const-string v3, "user.home"

    .line 12
    .line 13
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :catch_0
    :cond_0
    new-instance v2, Ljava/io/File;

    .line 22
    .line 23
    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v3, Ljava/io/FileInputStream;

    .line 27
    .line 28
    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    long-to-int p0, v4

    .line 36
    new-array v2, p0, [B

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    :goto_0
    sub-int v5, p0, v4

    .line 40
    .line 41
    invoke-virtual {v3, v2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    .line 42
    .line 43
    .line 44
    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    if-gtz v5, :cond_1

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 48
    .line 49
    .line 50
    return-object v2

    .line 51
    :cond_1
    add-int/2addr v4, v5

    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :catchall_1
    move-exception v2

    .line 59
    const-class v3, Ljava/lang/Throwable;

    .line 60
    .line 61
    :try_start_3
    const-string v4, "addSuppressed"

    .line 62
    .line 63
    new-array v5, v0, [Ljava/lang/Class;

    .line 64
    .line 65
    aput-object v3, v5, v1

    .line 66
    .line 67
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    new-array v0, v0, [Ljava/lang/Object;

    .line 72
    .line 73
    aput-object v2, v0, v1

    .line 74
    .line 75
    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 76
    .line 77
    .line 78
    :catch_1
    :goto_1
    goto :goto_3

    .line 79
    :goto_2
    throw p0

    .line 80
    :goto_3
    goto :goto_2
.end method

.method public static i(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    sget-object v0, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ljava/util/Vector;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    :goto_0
    const-string v4, ","

    .line 19
    .line 20
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-ltz v4, :cond_1

    .line 25
    .line 26
    sub-int v5, v4, v3

    .line 27
    .line 28
    invoke-static {v3, v5, v0}, La9/h0;->b(II[B)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v3, v4, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    array-length p0, v0

    .line 39
    sub-int/2addr p0, v3

    .line 40
    invoke-static {v3, p0, v0}, La9/h0;->b(II[B)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {v1, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    new-array v0, p0, [Ljava/lang/String;

    .line 52
    .line 53
    :goto_1
    if-ge v2, p0, :cond_2

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Ljava/lang/String;

    .line 60
    .line 61
    aput-object v3, v0, v2

    .line 62
    .line 63
    add-int/lit8 v2, v2, 0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    return-object v0
.end method

.method public static j(Ljava/lang/String;)[B
    .locals 1

    .line 1
    sget-object v0, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static k(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static l([B)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :cond_0
    :goto_0
    array-length v2, p0

    .line 8
    if-ge v1, v2, :cond_2

    .line 9
    .line 10
    aget-byte v2, p0, v1

    .line 11
    .line 12
    and-int/lit16 v2, v2, 0xff

    .line 13
    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v4, "0x"

    .line 21
    .line 22
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v5, 0x1

    .line 30
    if-ne v4, v5, :cond_1

    .line 31
    .line 32
    const-string v4, "0"

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const-string v4, ""

    .line 36
    .line 37
    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    array-length v2, p0

    .line 53
    if-ge v1, v2, :cond_0

    .line 54
    .line 55
    const-string v2, ":"

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0
.end method

.method public static m(B)B
    .locals 4

    .line 1
    const/16 v0, 0x3d

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    sget-object v2, La9/h0;->a:[B

    .line 9
    .line 10
    array-length v3, v2

    .line 11
    if-ge v0, v3, :cond_2

    .line 12
    .line 13
    aget-byte v2, v2, v0

    .line 14
    .line 15
    if-ne p0, v2, :cond_1

    .line 16
    .line 17
    int-to-byte p0, v0

    .line 18
    return p0

    .line 19
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    return v1
.end method
