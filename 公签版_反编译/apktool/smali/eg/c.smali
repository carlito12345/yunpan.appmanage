.class public abstract Leg/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B

.field public static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v1, Leg/c;->a:[B

    .line 8
    .line 9
    new-array v0, v0, [B

    .line 10
    .line 11
    fill-array-data v0, :array_1

    .line 12
    .line 13
    .line 14
    sput-object v0, Leg/c;->b:[B

    .line 15
    .line 16
    return-void

    .line 17
    :array_0
    .array-data 1
        0x0t
        0x0t
        -0x5ct
        -0x7ft
    .end array-data

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    :array_1
    .array-data 1
        0x0t
        0x0t
        -0x13t
        0x41t
    .end array-data
.end method

.method public static a(BILjava/util/HashSet;Ljava/nio/file/attribute/PosixFilePermission;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Leg/c;->g(BI)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static b([CZ)[B
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    sget-object p1, Leg/d;->b:Ljava/nio/charset/Charset;

    .line 5
    .line 6
    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p1, v1}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    new-array v1, v1, [B

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_2

    .line 24
    :catch_0
    array-length p1, p0

    .line 25
    new-array v1, p1, [B

    .line 26
    .line 27
    :goto_0
    array-length p1, p0

    .line 28
    if-ge v0, p1, :cond_1

    .line 29
    .line 30
    aget-char p1, p0, v0

    .line 31
    .line 32
    int-to-byte p1, p1

    .line 33
    aput-byte p1, v1, v0

    .line 34
    .line 35
    add-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    array-length p1, p0

    .line 39
    new-array v1, p1, [B

    .line 40
    .line 41
    :goto_1
    array-length p1, p0

    .line 42
    if-ge v0, p1, :cond_1

    .line 43
    .line 44
    aget-char p1, p0, v0

    .line 45
    .line 46
    int-to-byte p1, p1

    .line 47
    aput-byte p1, v1, v0

    .line 48
    .line 49
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    :goto_2
    return-object v1
.end method

.method public static c(J)J
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    shl-long v0, p0, v0

    .line 3
    .line 4
    const-wide/16 v2, 0x3e

    .line 5
    .line 6
    and-long/2addr v0, v2

    .line 7
    long-to-int v8, v0

    .line 8
    const/4 v0, 0x5

    .line 9
    shr-long v0, p0, v0

    .line 10
    .line 11
    const-wide/16 v2, 0x3f

    .line 12
    .line 13
    and-long/2addr v0, v2

    .line 14
    long-to-int v7, v0

    .line 15
    const/16 v0, 0xb

    .line 16
    .line 17
    shr-long v0, p0, v0

    .line 18
    .line 19
    const-wide/16 v2, 0x1f

    .line 20
    .line 21
    and-long/2addr v0, v2

    .line 22
    long-to-int v6, v0

    .line 23
    const/16 v0, 0x10

    .line 24
    .line 25
    shr-long v0, p0, v0

    .line 26
    .line 27
    and-long/2addr v0, v2

    .line 28
    long-to-int v5, v0

    .line 29
    const/16 v0, 0x15

    .line 30
    .line 31
    shr-long v0, p0, v0

    .line 32
    .line 33
    const-wide/16 v2, 0xf

    .line 34
    .line 35
    and-long/2addr v0, v2

    .line 36
    const-wide/16 v2, 0x1

    .line 37
    .line 38
    sub-long/2addr v0, v2

    .line 39
    long-to-int v4, v0

    .line 40
    const/16 v0, 0x19

    .line 41
    .line 42
    shr-long v0, p0, v0

    .line 43
    .line 44
    const-wide/16 v2, 0x7f

    .line 45
    .line 46
    and-long/2addr v0, v2

    .line 47
    const-wide/16 v2, 0x7bc

    .line 48
    .line 49
    add-long/2addr v0, v2

    .line 50
    long-to-int v3, v0

    .line 51
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    move-object v2, v0

    .line 56
    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 57
    .line 58
    .line 59
    const/16 v1, 0xe

    .line 60
    .line 61
    const/4 v2, 0x0

    .line 62
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 70
    .line 71
    .line 72
    move-result-wide v0

    .line 73
    const/16 v2, 0x20

    .line 74
    .line 75
    shr-long/2addr p0, v2

    .line 76
    add-long/2addr v0, p0

    .line 77
    return-wide v0
.end method

.method public static d(J)J
    .locals 8

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const-wide/32 v2, 0x210000

    .line 4
    .line 5
    .line 6
    cmp-long v4, p0, v0

    .line 7
    .line 8
    if-gez v4, :cond_0

    .line 9
    .line 10
    return-wide v2

    .line 11
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    const/16 v5, 0x7bc

    .line 24
    .line 25
    if-ge v4, v5, :cond_1

    .line 26
    .line 27
    move-wide v0, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    sub-int/2addr v4, v5

    .line 30
    shl-int/lit8 v4, v4, 0x19

    .line 31
    .line 32
    const/4 v5, 0x2

    .line 33
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    add-int/2addr v5, v1

    .line 38
    shl-int/lit8 v5, v5, 0x15

    .line 39
    .line 40
    or-int/2addr v4, v5

    .line 41
    const/4 v5, 0x5

    .line 42
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    shl-int/lit8 v6, v6, 0x10

    .line 47
    .line 48
    or-int/2addr v4, v6

    .line 49
    const/16 v6, 0xb

    .line 50
    .line 51
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    shl-int/lit8 v6, v7, 0xb

    .line 56
    .line 57
    or-int/2addr v4, v6

    .line 58
    const/16 v6, 0xc

    .line 59
    .line 60
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    shl-int/lit8 v5, v6, 0x5

    .line 65
    .line 66
    or-int/2addr v4, v5

    .line 67
    const/16 v5, 0xd

    .line 68
    .line 69
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    shr-int/2addr v0, v1

    .line 74
    or-int/2addr v0, v4

    .line 75
    int-to-long v0, v0

    .line 76
    :goto_0
    cmp-long v4, v0, v2

    .line 77
    .line 78
    if-eqz v4, :cond_2

    .line 79
    .line 80
    const-wide/16 v2, 0x7d0

    .line 81
    .line 82
    rem-long/2addr p0, v2

    .line 83
    const/16 v2, 0x20

    .line 84
    .line 85
    shl-long/2addr p0, v2

    .line 86
    add-long v2, v0, p0

    .line 87
    .line 88
    :cond_2
    return-wide v2
.end method

.method public static e(Ljava/io/File;)[Ljava/io/File;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "."

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, -0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    new-instance v1, Leg/b;

    .line 25
    .line 26
    invoke-direct {v1, v0}, Leg/b;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    if-nez p0, :cond_1

    .line 34
    .line 35
    new-array p0, v3, [Ljava/io/File;

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-object p0
.end method

.method public static f(Lag/b;)I
    .locals 2

    .line 1
    iget v0, p0, Lag/b;->e:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget-object p0, p0, Lag/b;->q:Lag/a;

    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    iget p0, p0, Lag/a;->g:I

    .line 12
    .line 13
    return p0

    .line 14
    :cond_1
    new-instance p0, Lwf/a;

    .line 15
    .line 16
    const-string v0, "AesExtraDataRecord not present in local header for aes encrypted data"

    .line 17
    .line 18
    invoke-direct {p0, v0}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method public static g(BI)Z
    .locals 4

    .line 1
    int-to-long v0, p0

    .line 2
    const-wide/16 v2, 0x1

    .line 3
    .line 4
    shl-long p0, v2, p1

    .line 5
    .line 6
    and-long/2addr p0, v0

    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    cmp-long v2, p0, v0

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public static h(Ljava/lang/String;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-lez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public static i(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "/"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "\\"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0
.end method

.method public static j(Ljava/io/InputStream;[B)I
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_6

    .line 7
    .line 8
    array-length v2, p1

    .line 9
    if-eq v0, v2, :cond_5

    .line 10
    .line 11
    if-ltz v0, :cond_4

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    array-length v3, p1

    .line 19
    sub-int/2addr v3, v0

    .line 20
    const/4 v4, 0x1

    .line 21
    :goto_0
    array-length v5, p1

    .line 22
    if-ge v0, v5, :cond_2

    .line 23
    .line 24
    if-eq v2, v1, :cond_2

    .line 25
    .line 26
    const/16 v2, 0xf

    .line 27
    .line 28
    if-ge v4, v2, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0, p1, v0, v3}, Ljava/io/InputStream;->read([BII)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-lez v2, :cond_1

    .line 35
    .line 36
    add-int/2addr v0, v2

    .line 37
    sub-int/2addr v3, v2

    .line 38
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    :goto_1
    array-length p0, p1

    .line 42
    if-ne v0, p0, :cond_3

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_3
    new-instance p0, Ljava/io/IOException;

    .line 46
    .line 47
    const-string p1, "Cannot read fully into byte buffer"

    .line 48
    .line 49
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :cond_4
    new-instance p0, Ljava/io/IOException;

    .line 54
    .line 55
    const-string p1, "Invalid readLength"

    .line 56
    .line 57
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0

    .line 61
    :cond_5
    :goto_2
    return v0

    .line 62
    :cond_6
    new-instance p0, Ljava/io/IOException;

    .line 63
    .line 64
    const-string p1, "Unexpected EOF reached when trying to read stream"

    .line 65
    .line 66
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto :goto_4

    .line 70
    :goto_3
    throw p0

    .line 71
    :goto_4
    goto :goto_3
.end method

.method public static k(Ljava/io/InputStream;[BII)I
    .locals 3

    .line 1
    if-ltz p2, :cond_6

    .line 2
    .line 3
    if-ltz p3, :cond_5

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    add-int v1, p2, p3

    .line 10
    .line 11
    array-length v2, p1

    .line 12
    if-gt v1, v2, :cond_4

    .line 13
    .line 14
    :goto_0
    if-eq v0, p3, :cond_3

    .line 15
    .line 16
    add-int v1, p2, v0

    .line 17
    .line 18
    sub-int v2, p3, v0

    .line 19
    .line 20
    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, -0x1

    .line 25
    if-ne v1, v2, :cond_2

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    return v2

    .line 30
    :cond_1
    return v0

    .line 31
    :cond_2
    add-int/2addr v0, v1

    .line 32
    goto :goto_0

    .line 33
    :cond_3
    return v0

    .line 34
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    const-string p1, "Length greater than buffer size"

    .line 37
    .line 38
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0

    .line 42
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    const-string p1, "Negative length"

    .line 45
    .line 46
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p0

    .line 50
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    const-string p1, "Negative offset"

    .line 53
    .line 54
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :goto_1
    throw p0

    .line 59
    :goto_2
    goto :goto_1
.end method

.method public static l(BI)B
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    shl-int p1, v0, p1

    .line 3
    .line 4
    or-int/2addr p0, p1

    .line 5
    int-to-byte p0, p0

    .line 6
    return p0
.end method

.method public static m(Ljava/nio/file/Path;[B)V
    .locals 9

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto/16 :goto_0

    .line 7
    .line 8
    :cond_0
    const-string v0, "os.name"

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "win"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x5

    .line 25
    const/4 v3, 0x2

    .line 26
    const/4 v4, 0x1

    .line 27
    const/4 v5, 0x0

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    aget-byte v0, p1, v5

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    goto/16 :goto_0

    .line 35
    .line 36
    :cond_1
    invoke-static {}, Lcom/hjq/permissions/permission/special/b;->h()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-array v1, v4, [Ljava/nio/file/LinkOption;

    .line 41
    .line 42
    invoke-static {}, Lcom/hjq/permissions/permission/special/b;->j()Ljava/nio/file/LinkOption;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    aput-object v6, v1, v5

    .line 47
    .line 48
    invoke-static {p0, v0, v1}, Lcom/hjq/permissions/permission/special/b;->m(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-static {p0}, Lcom/hjq/permissions/permission/special/b;->l(Ljava/lang/Object;)Ljava/nio/file/attribute/DosFileAttributeView;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    if-nez p0, :cond_2

    .line 57
    .line 58
    goto/16 :goto_0

    .line 59
    .line 60
    :cond_2
    :try_start_0
    aget-byte v0, p1, v5

    .line 61
    .line 62
    invoke-static {v0, v5}, Leg/c;->g(BI)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-static {p0, v0}, Lcom/hjq/permissions/permission/special/b;->t(Ljava/nio/file/attribute/DosFileAttributeView;Z)V

    .line 67
    .line 68
    .line 69
    aget-byte v0, p1, v5

    .line 70
    .line 71
    invoke-static {v0, v4}, Leg/c;->g(BI)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    invoke-static {p0, v0}, Lcom/hjq/permissions/permission/special/b;->z(Ljava/nio/file/attribute/DosFileAttributeView;Z)V

    .line 76
    .line 77
    .line 78
    aget-byte v0, p1, v5

    .line 79
    .line 80
    invoke-static {v0, v3}, Leg/c;->g(BI)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    invoke-static {p0, v0}, Lcom/hjq/permissions/permission/special/b;->C(Ljava/nio/file/attribute/DosFileAttributeView;Z)V

    .line 85
    .line 86
    .line 87
    aget-byte p1, p1, v5

    .line 88
    .line 89
    invoke-static {p1, v2}, Leg/c;->g(BI)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    invoke-static {p0, p1}, Lcom/hjq/permissions/permission/special/b;->D(Ljava/nio/file/attribute/DosFileAttributeView;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    .line 96
    goto/16 :goto_0

    .line 97
    .line 98
    :cond_3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    const-string v6, "mac"

    .line 107
    .line 108
    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-nez v1, :cond_4

    .line 113
    .line 114
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    const-string v1, "nux"

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_6

    .line 129
    .line 130
    :cond_4
    aget-byte v0, p1, v3

    .line 131
    .line 132
    const/4 v1, 0x3

    .line 133
    if-nez v0, :cond_5

    .line 134
    .line 135
    aget-byte v0, p1, v1

    .line 136
    .line 137
    if-nez v0, :cond_5

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_5
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    .line 141
    .line 142
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 143
    .line 144
    .line 145
    aget-byte v6, p1, v1

    .line 146
    .line 147
    invoke-static {}, Lcom/hjq/permissions/permission/special/b;->x()Ljava/nio/file/attribute/PosixFilePermission;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    invoke-static {v6, v5, v0, v7}, Leg/c;->a(BILjava/util/HashSet;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 152
    .line 153
    .line 154
    aget-byte v6, p1, v3

    .line 155
    .line 156
    invoke-static {}, Leg/a;->h()Ljava/nio/file/attribute/PosixFilePermission;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    const/4 v8, 0x7

    .line 161
    invoke-static {v6, v8, v0, v7}, Leg/c;->a(BILjava/util/HashSet;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 162
    .line 163
    .line 164
    aget-byte v6, p1, v3

    .line 165
    .line 166
    invoke-static {}, Leg/a;->w()Ljava/nio/file/attribute/PosixFilePermission;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    const/4 v8, 0x6

    .line 171
    invoke-static {v6, v8, v0, v7}, Leg/c;->a(BILjava/util/HashSet;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 172
    .line 173
    .line 174
    aget-byte v6, p1, v3

    .line 175
    .line 176
    invoke-static {}, Leg/a;->z()Ljava/nio/file/attribute/PosixFilePermission;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    invoke-static {v6, v2, v0, v7}, Leg/c;->a(BILjava/util/HashSet;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 181
    .line 182
    .line 183
    aget-byte v2, p1, v3

    .line 184
    .line 185
    invoke-static {}, Leg/a;->A()Ljava/nio/file/attribute/PosixFilePermission;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    const/4 v7, 0x4

    .line 190
    invoke-static {v2, v7, v0, v6}, Leg/c;->a(BILjava/util/HashSet;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 191
    .line 192
    .line 193
    aget-byte v2, p1, v3

    .line 194
    .line 195
    invoke-static {}, Leg/a;->B()Ljava/nio/file/attribute/PosixFilePermission;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    invoke-static {v2, v1, v0, v6}, Leg/c;->a(BILjava/util/HashSet;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 200
    .line 201
    .line 202
    aget-byte v1, p1, v3

    .line 203
    .line 204
    invoke-static {}, Leg/a;->C()Ljava/nio/file/attribute/PosixFilePermission;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    invoke-static {v1, v3, v0, v2}, Leg/c;->a(BILjava/util/HashSet;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 209
    .line 210
    .line 211
    aget-byte v1, p1, v3

    .line 212
    .line 213
    invoke-static {}, Leg/a;->D()Ljava/nio/file/attribute/PosixFilePermission;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    invoke-static {v1, v4, v0, v2}, Leg/c;->a(BILjava/util/HashSet;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 218
    .line 219
    .line 220
    aget-byte p1, p1, v3

    .line 221
    .line 222
    invoke-static {}, Lcom/hjq/permissions/permission/special/b;->n()Ljava/nio/file/attribute/PosixFilePermission;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-static {p1, v5, v0, v1}, Leg/c;->a(BILjava/util/HashSet;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 227
    .line 228
    .line 229
    invoke-static {p0, v0}, Lcom/hjq/permissions/permission/special/b;->s(Ljava/nio/file/Path;Ljava/util/HashSet;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 230
    .line 231
    .line 232
    :catch_0
    :cond_6
    :goto_0
    return-void
.end method
