.class public final Ly9/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Ljava/io/InputStream;)Ly9/d;
    .locals 7

    .line 1
    new-instance v0, Ly9/d;

    .line 2
    .line 3
    invoke-direct {v0}, Ly9/d;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x18

    .line 7
    .line 8
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    :cond_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    rsub-int/lit8 v6, v4, 0x18

    .line 25
    .line 26
    invoke-virtual {p0, v5, v4, v6}, Ljava/io/InputStream;->read([BII)I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    const-string v6, "Stream closed"

    .line 31
    .line 32
    if-ltz v5, :cond_4

    .line 33
    .line 34
    add-int/2addr v4, v5

    .line 35
    if-lt v4, v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    iput v1, v0, Ly9/d;->a:I

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    iput v1, v0, Ly9/d;->b:I

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    iput v1, v0, Ly9/d;->c:I

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    iput v1, v0, Ly9/d;->d:I

    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    iput v1, v0, Ly9/d;->e:I

    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    iput v1, v0, Ly9/d;->f:I

    .line 72
    .line 73
    iget v1, v0, Ly9/d;->d:I

    .line 74
    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    new-array v1, v1, [B

    .line 78
    .line 79
    iput-object v1, v0, Ly9/d;->g:[B

    .line 80
    .line 81
    :cond_1
    iget-object v1, v0, Ly9/d;->g:[B

    .line 82
    .line 83
    iget v2, v0, Ly9/d;->d:I

    .line 84
    .line 85
    sub-int/2addr v2, v3

    .line 86
    invoke-virtual {p0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-ltz v1, :cond_2

    .line 91
    .line 92
    add-int/2addr v3, v1

    .line 93
    iget v1, v0, Ly9/d;->d:I

    .line 94
    .line 95
    if-lt v3, v1, :cond_1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    new-instance p0, Ljava/io/IOException;

    .line 99
    .line 100
    invoke-direct {p0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p0

    .line 104
    :cond_3
    :goto_0
    return-object v0

    .line 105
    :cond_4
    new-instance p0, Ljava/io/IOException;

    .line 106
    .line 107
    invoke-direct {p0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :goto_1
    throw p0

    .line 112
    :goto_2
    goto :goto_1
.end method
