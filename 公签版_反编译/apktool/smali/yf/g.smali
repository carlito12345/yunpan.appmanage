.class public final Lyf/g;
.super Ljava/io/RandomAccessFile;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:[Ljava/io/File;

.field public c:Ljava/io/RandomAccessFile;

.field public final d:[B

.field public e:I

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;[Ljava/io/File;)V
    .locals 8

    .line 1
    const-string v0, "r"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v2, v1, [B

    .line 8
    .line 9
    iput-object v2, p0, Lyf/g;->d:[B

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    iput v2, p0, Lyf/g;->e:I

    .line 13
    .line 14
    invoke-super {p0}, Ljava/io/RandomAccessFile;->close()V

    .line 15
    .line 16
    .line 17
    array-length v3, p2

    .line 18
    const/4 v4, 0x1

    .line 19
    :goto_0
    if-ge v2, v3, :cond_2

    .line 20
    .line 21
    aget-object v5, p2, v2

    .line 22
    .line 23
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    const-string v6, "."

    .line 28
    .line 29
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    if-nez v7, :cond_0

    .line 34
    .line 35
    const-string v5, ""

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    add-int/2addr v6, v1

    .line 43
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    :goto_1
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-ne v4, v6, :cond_1

    .line 52
    .line 53
    add-int/lit8 v4, v4, 0x1

    .line 54
    .line 55
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 59
    .line 60
    new-instance p2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v0, "Split file number "

    .line 66
    .line 67
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v0, " does not exist"

    .line 74
    .line 75
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :catch_0
    new-instance p1, Ljava/io/IOException;

    .line 87
    .line 88
    const-string p2, "Split file extension not in expected format. Found: "

    .line 89
    .line 90
    const-string v0, " expected of format: .001, .002, etc"

    .line 91
    .line 92
    invoke-static {p2, v5, v0}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p1

    .line 100
    :cond_2
    new-instance v1, Ljava/io/RandomAccessFile;

    .line 101
    .line 102
    invoke-direct {v1, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iput-object v1, p0, Lyf/g;->c:Ljava/io/RandomAccessFile;

    .line 106
    .line 107
    iput-object p2, p0, Lyf/g;->b:[Ljava/io/File;

    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 110
    .line 111
    .line 112
    move-result-wide p1

    .line 113
    iput-wide p1, p0, Lyf/g;->a:J

    .line 114
    .line 115
    iput-object v0, p0, Lyf/g;->f:Ljava/lang/String;

    .line 116
    .line 117
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lyf/g;->c:Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Ljava/io/RandomAccessFile;->close()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final getFilePointer()J
    .locals 2

    .line 1
    iget-object v0, p0, Lyf/g;->c:Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final length()J
    .locals 2

    .line 1
    iget-object v0, p0, Lyf/g;->c:Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final r(I)V
    .locals 3

    .line 1
    iget v0, p0, Lyf/g;->e:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lyf/g;->b:[Ljava/io/File;

    .line 7
    .line 8
    array-length v1, v0

    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 10
    .line 11
    if-gt p1, v1, :cond_2

    .line 12
    .line 13
    iget-object v1, p0, Lyf/g;->c:Ljava/io/RandomAccessFile;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 18
    .line 19
    .line 20
    :cond_1
    new-instance v1, Ljava/io/RandomAccessFile;

    .line 21
    .line 22
    aget-object v0, v0, p1

    .line 23
    .line 24
    iget-object v2, p0, Lyf/g;->f:Ljava/lang/String;

    .line 25
    .line 26
    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lyf/g;->c:Ljava/io/RandomAccessFile;

    .line 30
    .line 31
    iput p1, p0, Lyf/g;->e:I

    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 35
    .line 36
    const-string v0, "split counter greater than number of split files"

    .line 37
    .line 38
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1
.end method

.method public final read()I
    .locals 4

    .line 1
    iget-object v0, p0, Lyf/g;->d:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lyf/g;->read([BII)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    return v3

    .line 2
    :cond_0
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final read([B)I
    .locals 2

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lyf/g;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .locals 3

    .line 4
    iget-object v0, p0, Lyf/g;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 5
    iget v0, p0, Lyf/g;->e:I

    iget-object v2, p0, Lyf/g;->b:[Ljava/io/File;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lyf/g;->r(I)V

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lyf/g;->read([BII)I

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public final seek(J)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lyf/g;->a:J

    .line 2
    .line 3
    div-long v2, p1, v0

    .line 4
    .line 5
    long-to-int v3, v2

    .line 6
    iget v2, p0, Lyf/g;->e:I

    .line 7
    .line 8
    if-eq v3, v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, v3}, Lyf/g;->r(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v2, p0, Lyf/g;->c:Ljava/io/RandomAccessFile;

    .line 14
    .line 15
    int-to-long v3, v3

    .line 16
    mul-long v3, v3, v0

    .line 17
    .line 18
    sub-long/2addr p1, v3

    .line 19
    invoke-virtual {v2, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final write(I)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final write([B)V
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lyf/g;->write([BII)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final write([BII)V
    .locals 0

    .line 3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
