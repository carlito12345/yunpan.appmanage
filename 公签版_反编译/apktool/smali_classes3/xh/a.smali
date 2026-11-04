.class public final Lxh/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field public a:B

.field public b:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(BLjava/io/Serializable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-byte p1, p0, Lxh/a;->a:B

    .line 5
    .line 6
    iput-object p2, p0, Lxh/a;->b:Ljava/io/Serializable;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Ljava/io/DataInput;)J
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xff

    .line 6
    .line 7
    and-int/2addr v0, v1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0

    .line 15
    :cond_0
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    and-int/2addr v2, v1

    .line 20
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    and-int/2addr p0, v1

    .line 25
    shl-int/lit8 v0, v0, 0x10

    .line 26
    .line 27
    shl-int/lit8 v1, v2, 0x8

    .line 28
    .line 29
    add-int/2addr v0, v1

    .line 30
    add-int/2addr v0, p0

    .line 31
    int-to-long v0, v0

    .line 32
    const-wide/16 v2, 0x384

    .line 33
    .line 34
    mul-long v0, v0, v2

    .line 35
    .line 36
    const-wide v2, 0x110bc5000L

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    sub-long/2addr v0, v2

    .line 42
    return-wide v0
.end method

.method public static b(BLjava/io/DataInput;)Ljava/io/Serializable;
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_3

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lxh/f;->a(Ljava/io/DataInput;)Lxh/f;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_0
    new-instance p0, Ljava/io/StreamCorruptedException;

    .line 16
    .line 17
    const-string p1, "Unknown serialized type"

    .line 18
    .line 19
    invoke-direct {p0, p1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p0

    .line 23
    :cond_1
    invoke-static {p1}, Lxh/a;->a(Ljava/io/DataInput;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    invoke-static {p1}, Lxh/a;->c(Ljava/io/DataInput;)Lsh/p;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p1}, Lxh/a;->c(Ljava/io/DataInput;)Lsh/p;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Lsh/p;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_2

    .line 40
    .line 41
    new-instance v2, Lxh/e;

    .line 42
    .line 43
    invoke-direct {v2, v0, v1, p0, p1}, Lxh/e;-><init>(JLsh/p;Lsh/p;)V

    .line 44
    .line 45
    .line 46
    return-object v2

    .line 47
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    const-string p1, "Offsets must not be equal"

    .line 50
    .line 51
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :cond_3
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    new-array v2, p0, [J

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    const/4 v3, 0x0

    .line 63
    :goto_0
    if-ge v3, p0, :cond_4

    .line 64
    .line 65
    invoke-static {p1}, Lxh/a;->a(Ljava/io/DataInput;)J

    .line 66
    .line 67
    .line 68
    move-result-wide v4

    .line 69
    aput-wide v4, v2, v3

    .line 70
    .line 71
    add-int/lit8 v3, v3, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_4
    add-int/2addr p0, v0

    .line 75
    new-array v3, p0, [Lsh/p;

    .line 76
    .line 77
    const/4 v4, 0x0

    .line 78
    :goto_1
    if-ge v4, p0, :cond_5

    .line 79
    .line 80
    invoke-static {p1}, Lxh/a;->c(Ljava/io/DataInput;)Lsh/p;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    aput-object v5, v3, v4

    .line 85
    .line 86
    add-int/lit8 v4, v4, 0x1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_5
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    new-array v4, p0, [J

    .line 94
    .line 95
    const/4 v5, 0x0

    .line 96
    :goto_2
    if-ge v5, p0, :cond_6

    .line 97
    .line 98
    invoke-static {p1}, Lxh/a;->a(Ljava/io/DataInput;)J

    .line 99
    .line 100
    .line 101
    move-result-wide v6

    .line 102
    aput-wide v6, v4, v5

    .line 103
    .line 104
    add-int/lit8 v5, v5, 0x1

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_6
    add-int/2addr p0, v0

    .line 108
    new-array v5, p0, [Lsh/p;

    .line 109
    .line 110
    const/4 v0, 0x0

    .line 111
    :goto_3
    if-ge v0, p0, :cond_7

    .line 112
    .line 113
    invoke-static {p1}, Lxh/a;->c(Ljava/io/DataInput;)Lsh/p;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    aput-object v6, v5, v0

    .line 118
    .line 119
    add-int/lit8 v0, v0, 0x1

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_7
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    new-array v6, p0, [Lxh/f;

    .line 127
    .line 128
    :goto_4
    if-ge v1, p0, :cond_8

    .line 129
    .line 130
    invoke-static {p1}, Lxh/f;->a(Ljava/io/DataInput;)Lxh/f;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    aput-object v0, v6, v1

    .line 135
    .line 136
    add-int/lit8 v1, v1, 0x1

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_8
    new-instance p0, Lxh/b;

    .line 140
    .line 141
    move-object v1, p0

    .line 142
    invoke-direct/range {v1 .. v6}, Lxh/b;-><init>([J[Lsh/p;[J[Lsh/p;[Lxh/f;)V

    .line 143
    .line 144
    .line 145
    return-object p0
.end method

.method public static c(Ljava/io/DataInput;)Lsh/p;
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x7f

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-static {p0}, Lsh/p;->r(I)Lsh/p;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    mul-int/lit16 v0, v0, 0x384

    .line 19
    .line 20
    invoke-static {v0}, Lsh/p;->r(I)Lsh/p;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :goto_0
    return-object p0
.end method

.method public static d(JLjava/io/ObjectOutput;)V
    .locals 8

    .line 1
    const-wide v0, -0x110bc5000L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const/16 v2, 0xff

    .line 7
    .line 8
    cmp-long v3, p0, v0

    .line 9
    .line 10
    if-ltz v3, :cond_0

    .line 11
    .line 12
    const-wide v0, 0x26cb5db00L

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    cmp-long v3, p0, v0

    .line 18
    .line 19
    if-gez v3, :cond_0

    .line 20
    .line 21
    const-wide/16 v0, 0x384

    .line 22
    .line 23
    rem-long v3, p0, v0

    .line 24
    .line 25
    const-wide/16 v5, 0x0

    .line 26
    .line 27
    cmp-long v7, v3, v5

    .line 28
    .line 29
    if-nez v7, :cond_0

    .line 30
    .line 31
    const-wide v3, 0x110bc5000L

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    add-long/2addr p0, v3

    .line 37
    div-long/2addr p0, v0

    .line 38
    long-to-int p1, p0

    .line 39
    ushr-int/lit8 p0, p1, 0x10

    .line 40
    .line 41
    and-int/2addr p0, v2

    .line 42
    invoke-interface {p2, p0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 43
    .line 44
    .line 45
    ushr-int/lit8 p0, p1, 0x8

    .line 46
    .line 47
    and-int/2addr p0, v2

    .line 48
    invoke-interface {p2, p0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 49
    .line 50
    .line 51
    and-int/lit16 p0, p1, 0xff

    .line 52
    .line 53
    invoke-interface {p2, p0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-interface {p2, v2}, Ljava/io/DataOutput;->writeByte(I)V

    .line 58
    .line 59
    .line 60
    invoke-interface {p2, p0, p1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 61
    .line 62
    .line 63
    :goto_0
    return-void
.end method

.method public static f(Lsh/p;Ljava/io/ObjectOutput;)V
    .locals 2

    .line 1
    iget p0, p0, Lsh/p;->a:I

    .line 2
    .line 3
    rem-int/lit16 v0, p0, 0x384

    .line 4
    .line 5
    const/16 v1, 0x7f

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    div-int/lit16 v0, p0, 0x384

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/16 v0, 0x7f

    .line 13
    .line 14
    :goto_0
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 15
    .line 16
    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    invoke-interface {p1, p0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lxh/a;->b:Ljava/io/Serializable;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final readExternal(Ljava/io/ObjectInput;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput-byte v0, p0, Lxh/a;->a:B

    .line 6
    .line 7
    invoke-static {v0, p1}, Lxh/a;->b(BLjava/io/DataInput;)Ljava/io/Serializable;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lxh/a;->b:Ljava/io/Serializable;

    .line 12
    .line 13
    return-void
.end method

.method public final writeExternal(Ljava/io/ObjectOutput;)V
    .locals 7

    .line 1
    iget-byte v0, p0, Lxh/a;->a:B

    .line 2
    .line 3
    iget-object v1, p0, Lxh/a;->b:Ljava/io/Serializable;

    .line 4
    .line 5
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-eq v0, v2, :cond_2

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-eq v0, v2, :cond_1

    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    if-ne v0, v2, :cond_0

    .line 16
    .line 17
    check-cast v1, Lxh/f;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Lxh/f;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 20
    .line 21
    .line 22
    goto/16 :goto_5

    .line 23
    .line 24
    :cond_0
    new-instance p1, Ljava/io/InvalidClassException;

    .line 25
    .line 26
    const-string v0, "Unknown serialized type"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    check-cast v1, Lxh/e;

    .line 33
    .line 34
    iget-object v0, v1, Lxh/e;->a:Lsh/f;

    .line 35
    .line 36
    iget-object v2, v1, Lxh/e;->b:Lsh/p;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Lth/b;->m(Lsh/p;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v3

    .line 42
    invoke-static {v3, v4, p1}, Lxh/a;->d(JLjava/io/ObjectOutput;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v2, p1}, Lxh/a;->f(Lsh/p;Ljava/io/ObjectOutput;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, v1, Lxh/e;->c:Lsh/p;

    .line 49
    .line 50
    invoke-static {v0, p1}, Lxh/a;->f(Lsh/p;Ljava/io/ObjectOutput;)V

    .line 51
    .line 52
    .line 53
    goto :goto_5

    .line 54
    :cond_2
    check-cast v1, Lxh/b;

    .line 55
    .line 56
    iget-object v0, v1, Lxh/b;->a:[J

    .line 57
    .line 58
    array-length v2, v0

    .line 59
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 60
    .line 61
    .line 62
    array-length v2, v0

    .line 63
    const/4 v3, 0x0

    .line 64
    const/4 v4, 0x0

    .line 65
    :goto_0
    if-ge v4, v2, :cond_3

    .line 66
    .line 67
    aget-wide v5, v0, v4

    .line 68
    .line 69
    invoke-static {v5, v6, p1}, Lxh/a;->d(JLjava/io/ObjectOutput;)V

    .line 70
    .line 71
    .line 72
    add-int/lit8 v4, v4, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    iget-object v0, v1, Lxh/b;->b:[Lsh/p;

    .line 76
    .line 77
    array-length v2, v0

    .line 78
    const/4 v4, 0x0

    .line 79
    :goto_1
    if-ge v4, v2, :cond_4

    .line 80
    .line 81
    aget-object v5, v0, v4

    .line 82
    .line 83
    invoke-static {v5, p1}, Lxh/a;->f(Lsh/p;Ljava/io/ObjectOutput;)V

    .line 84
    .line 85
    .line 86
    add-int/lit8 v4, v4, 0x1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_4
    iget-object v0, v1, Lxh/b;->c:[J

    .line 90
    .line 91
    array-length v2, v0

    .line 92
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 93
    .line 94
    .line 95
    array-length v2, v0

    .line 96
    const/4 v4, 0x0

    .line 97
    :goto_2
    if-ge v4, v2, :cond_5

    .line 98
    .line 99
    aget-wide v5, v0, v4

    .line 100
    .line 101
    invoke-static {v5, v6, p1}, Lxh/a;->d(JLjava/io/ObjectOutput;)V

    .line 102
    .line 103
    .line 104
    add-int/lit8 v4, v4, 0x1

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_5
    iget-object v0, v1, Lxh/b;->e:[Lsh/p;

    .line 108
    .line 109
    array-length v2, v0

    .line 110
    const/4 v4, 0x0

    .line 111
    :goto_3
    if-ge v4, v2, :cond_6

    .line 112
    .line 113
    aget-object v5, v0, v4

    .line 114
    .line 115
    invoke-static {v5, p1}, Lxh/a;->f(Lsh/p;Ljava/io/ObjectOutput;)V

    .line 116
    .line 117
    .line 118
    add-int/lit8 v4, v4, 0x1

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_6
    iget-object v0, v1, Lxh/b;->f:[Lxh/f;

    .line 122
    .line 123
    array-length v1, v0

    .line 124
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 125
    .line 126
    .line 127
    array-length v1, v0

    .line 128
    :goto_4
    if-ge v3, v1, :cond_7

    .line 129
    .line 130
    aget-object v2, v0, v3

    .line 131
    .line 132
    invoke-virtual {v2, p1}, Lxh/f;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 133
    .line 134
    .line 135
    add-int/lit8 v3, v3, 0x1

    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_7
    :goto_5
    return-void
.end method
