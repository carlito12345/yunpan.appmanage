.class public final Ljg/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Ljava/nio/channels/SeekableByteChannel;

.field public final b:Ljava/util/ArrayList;

.field public c:I

.field public final d:Ljava/util/zip/CRC32;

.field public final e:Ljava/util/zip/CRC32;

.field public f:J

.field public g:Z

.field public h:Ljg/y;

.field public i:[Lyg/b;

.field public j:Ljava/util/List;

.field public final k:Ljava/util/HashMap;

.field public final l:Ljg/a;


# direct methods
.method public constructor <init>(Ljava/io/File;[C)V
    .locals 3

    .line 1
    invoke-static {p1}, Lvb/t;->d(Ljava/io/File;)Ljava/nio/file/Path;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {}, Landroidx/media3/exoplayer/video/i;->B()Ljava/nio/file/StandardOpenOption;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Landroidx/media3/exoplayer/video/i;->y()Ljava/nio/file/StandardOpenOption;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {}, Landroidx/media3/exoplayer/video/i;->A()Ljava/nio/file/StandardOpenOption;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    new-array v1, v1, [Ljava/nio/file/attribute/FileAttribute;

    .line 23
    .line 24
    invoke-static {p1, v0, v1}, Leg/a;->c(Ljava/nio/file/Path;Ljava/util/EnumSet;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Ljg/z;->b:Ljava/util/ArrayList;

    .line 37
    .line 38
    new-instance v0, Ljava/util/zip/CRC32;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Ljg/z;->d:Ljava/util/zip/CRC32;

    .line 44
    .line 45
    new-instance v0, Ljava/util/zip/CRC32;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Ljg/z;->e:Ljava/util/zip/CRC32;

    .line 51
    .line 52
    new-instance v0, Ljg/v;

    .line 53
    .line 54
    sget-object v1, Ljg/u;->d:Ljg/u;

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    invoke-direct {v0, v1, v2}, Ljg/v;-><init>(Ljg/u;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-object v0, p0, Ljg/z;->j:Ljava/util/List;

    .line 65
    .line 66
    new-instance v0, Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Ljg/z;->k:Ljava/util/HashMap;

    .line 72
    .line 73
    iput-object p1, p0, Ljg/z;->a:Ljava/nio/channels/SeekableByteChannel;

    .line 74
    .line 75
    invoke-static {p1}, Ljg/w;->z(Ljava/nio/channels/SeekableByteChannel;)V

    .line 76
    .line 77
    .line 78
    if-eqz p2, :cond_0

    .line 79
    .line 80
    new-instance p1, Ljg/a;

    .line 81
    .line 82
    invoke-direct {p1, p2}, Ljg/a;-><init>([C)V

    .line 83
    .line 84
    .line 85
    iput-object p1, p0, Ljg/z;->l:Ljg/a;

    .line 86
    .line 87
    :cond_0
    return-void
.end method

.method public static A(Ljava/io/File;Ljava/lang/String;)Ljg/n;
    .locals 5

    .line 1
    new-instance v0, Ljg/n;

    .line 2
    .line 3
    invoke-direct {v0}, Ljg/n;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iput-boolean v1, v0, Ljg/n;->c:Z

    .line 11
    .line 12
    iput-object p1, v0, Ljg/n;->a:Ljava/lang/String;

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    const/4 v1, 0x0

    .line 16
    :try_start_0
    invoke-static {p0}, Lvb/t;->d(Ljava/io/File;)Ljava/nio/file/Path;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-array v3, v1, [Ljava/nio/file/LinkOption;

    .line 21
    .line 22
    invoke-static {}, Landroidx/media3/exoplayer/video/i;->b()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-static {v2, v4, v3}, Leg/a;->f(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v2}, Leg/a;->g(Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/attribute/FileTime;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    const/4 v4, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v4, 0x0

    .line 39
    :goto_0
    iput-boolean v4, v0, Ljg/n;->f:Z

    .line 40
    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    iput-object v3, v0, Ljg/n;->i:Ljava/nio/file/attribute/FileTime;

    .line 44
    .line 45
    :cond_1
    invoke-static {v2}, Leg/a;->v(Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/attribute/FileTime;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    const/4 v4, 0x1

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    const/4 v4, 0x0

    .line 54
    :goto_1
    iput-boolean v4, v0, Ljg/n;->e:Z

    .line 55
    .line 56
    if-eqz v4, :cond_3

    .line 57
    .line 58
    iput-object v3, v0, Ljg/n;->h:Ljava/nio/file/attribute/FileTime;

    .line 59
    .line 60
    :cond_3
    invoke-static {v2}, Leg/a;->y(Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/attribute/FileTime;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-eqz v2, :cond_4

    .line 65
    .line 66
    const/4 v3, 0x1

    .line 67
    goto :goto_2

    .line 68
    :cond_4
    const/4 v3, 0x0

    .line 69
    :goto_2
    iput-boolean v3, v0, Ljg/n;->g:Z

    .line 70
    .line 71
    if-eqz v3, :cond_6

    .line 72
    .line 73
    iput-object v2, v0, Ljg/n;->j:Ljava/nio/file/attribute/FileTime;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :catch_0
    new-instance v2, Ljava/util/Date;

    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    .line 79
    .line 80
    .line 81
    move-result-wide v3

    .line 82
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 83
    .line 84
    .line 85
    sget-object p0, Lvg/b;->a:Ljava/math/MathContext;

    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 88
    .line 89
    .line 90
    move-result-wide v2

    .line 91
    invoke-static {v2, v3}, Landroidx/media3/exoplayer/video/i;->l(J)Ljava/nio/file/attribute/FileTime;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    if-eqz p0, :cond_5

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_5
    const/4 p1, 0x0

    .line 99
    :goto_3
    iput-boolean p1, v0, Ljg/n;->f:Z

    .line 100
    .line 101
    if-eqz p1, :cond_6

    .line 102
    .line 103
    iput-object p0, v0, Ljg/n;->i:Ljava/nio/file/attribute/FileTime;

    .line 104
    .line 105
    :cond_6
    :goto_4
    return-object v0
.end method

.method public static M(Ljava/io/DataOutputStream;Ljava/util/BitSet;I)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x7

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x7

    .line 5
    const/4 v4, 0x0

    .line 6
    :goto_0
    if-ge v2, p2, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1, v2}, Ljava/util/BitSet;->get(I)Z

    .line 9
    .line 10
    .line 11
    move-result v5

    .line 12
    shl-int/2addr v5, v3

    .line 13
    or-int/2addr v4, v5

    .line 14
    add-int/lit8 v3, v3, -0x1

    .line 15
    .line 16
    if-gez v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x7

    .line 22
    const/4 v4, 0x0

    .line 23
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    if-eq v3, v1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 29
    .line 30
    .line 31
    :cond_2
    return-void
.end method

.method public static N(Ljava/io/DataOutput;J)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x80

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/16 v2, 0x80

    .line 6
    .line 7
    :goto_0
    const/16 v3, 0x8

    .line 8
    .line 9
    if-ge v0, v3, :cond_1

    .line 10
    .line 11
    add-int/lit8 v4, v0, 0x1

    .line 12
    .line 13
    mul-int/lit8 v5, v4, 0x7

    .line 14
    .line 15
    const-wide/16 v6, 0x1

    .line 16
    .line 17
    shl-long v5, v6, v5

    .line 18
    .line 19
    cmp-long v7, p1, v5

    .line 20
    .line 21
    if-gez v7, :cond_0

    .line 22
    .line 23
    int-to-long v1, v1

    .line 24
    mul-int/lit8 v4, v0, 0x8

    .line 25
    .line 26
    ushr-long v4, p1, v4

    .line 27
    .line 28
    or-long/2addr v1, v4

    .line 29
    long-to-int v1, v1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    or-int/2addr v1, v2

    .line 32
    ushr-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    move v0, v4

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    :goto_1
    invoke-interface {p0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 37
    .line 38
    .line 39
    :goto_2
    if-lez v0, :cond_2

    .line 40
    .line 41
    const-wide/16 v1, 0xff

    .line 42
    .line 43
    and-long/2addr v1, p1

    .line 44
    long-to-int v2, v1

    .line 45
    invoke-interface {p0, v2}, Ljava/io/DataOutput;->write(I)V

    .line 46
    .line 47
    .line 48
    ushr-long/2addr p1, v3

    .line 49
    add-int/lit8 v0, v0, -0x1

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    return-void
.end method


# virtual methods
.method public final J()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Ljg/z;->g:Z

    .line 4
    .line 5
    if-nez v1, :cond_37

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, Ljg/z;->g:Z

    .line 9
    .line 10
    iget-object v2, v0, Ljg/z;->a:Ljava/nio/channels/SeekableByteChannel;

    .line 11
    .line 12
    invoke-static {v2}, La2/s0;->c(Ljava/nio/channels/SeekableByteChannel;)J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    .line 17
    .line 18
    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v5, Ljava/io/DataOutputStream;

    .line 22
    .line 23
    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 27
    .line 28
    .line 29
    const/4 v6, 0x4

    .line 30
    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->write(I)V

    .line 31
    .line 32
    .line 33
    iget v6, v0, Ljg/z;->c:I

    .line 34
    .line 35
    iget-object v7, v0, Ljg/z;->b:Ljava/util/ArrayList;

    .line 36
    .line 37
    const/16 v8, 0xc

    .line 38
    .line 39
    const-wide v9, 0xffffffffL

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    const/4 v11, 0x0

    .line 45
    if-lez v6, :cond_e

    .line 46
    .line 47
    const/4 v6, 0x6

    .line 48
    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->write(I)V

    .line 49
    .line 50
    .line 51
    const-wide/16 v12, 0x0

    .line 52
    .line 53
    invoke-static {v5, v12, v13}, Ljg/z;->N(Ljava/io/DataOutput;J)V

    .line 54
    .line 55
    .line 56
    iget v6, v0, Ljg/z;->c:I

    .line 57
    .line 58
    int-to-long v14, v6

    .line 59
    and-long/2addr v14, v9

    .line 60
    invoke-static {v5, v14, v15}, Ljg/z;->N(Ljava/io/DataOutput;J)V

    .line 61
    .line 62
    .line 63
    const/16 v6, 0x9

    .line 64
    .line 65
    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->write(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v14

    .line 76
    if-eqz v14, :cond_1

    .line 77
    .line 78
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v14

    .line 82
    check-cast v14, Ljg/n;

    .line 83
    .line 84
    iget-boolean v15, v14, Ljg/n;->b:Z

    .line 85
    .line 86
    if-eqz v15, :cond_0

    .line 87
    .line 88
    iget-wide v14, v14, Ljg/n;->q:J

    .line 89
    .line 90
    invoke-static {v5, v14, v15}, Ljg/z;->N(Ljava/io/DataOutput;J)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    const/16 v6, 0xa

    .line 95
    .line 96
    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->write(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object v14

    .line 106
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v15

    .line 110
    if-eqz v15, :cond_3

    .line 111
    .line 112
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v15

    .line 116
    check-cast v15, Ljg/n;

    .line 117
    .line 118
    iget-boolean v12, v15, Ljg/n;->b:Z

    .line 119
    .line 120
    if-eqz v12, :cond_2

    .line 121
    .line 122
    iget-wide v12, v15, Ljg/n;->o:J

    .line 123
    .line 124
    long-to-int v13, v12

    .line 125
    invoke-static {v13}, Ljava/lang/Integer;->reverseBytes(I)I

    .line 126
    .line 127
    .line 128
    move-result v12

    .line 129
    invoke-virtual {v5, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 130
    .line 131
    .line 132
    :cond_2
    const-wide/16 v12, 0x0

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_3
    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 136
    .line 137
    .line 138
    const/4 v12, 0x7

    .line 139
    invoke-virtual {v5, v12}, Ljava/io/DataOutputStream;->write(I)V

    .line 140
    .line 141
    .line 142
    const/16 v12, 0xb

    .line 143
    .line 144
    invoke-virtual {v5, v12}, Ljava/io/DataOutputStream;->write(I)V

    .line 145
    .line 146
    .line 147
    iget v12, v0, Ljg/z;->c:I

    .line 148
    .line 149
    int-to-long v12, v12

    .line 150
    invoke-static {v5, v12, v13}, Ljg/z;->N(Ljava/io/DataOutput;J)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 157
    .line 158
    .line 159
    move-result-object v12

    .line 160
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result v13

    .line 164
    if-eqz v13, :cond_8

    .line 165
    .line 166
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v13

    .line 170
    check-cast v13, Ljg/n;

    .line 171
    .line 172
    iget-boolean v14, v13, Ljg/n;->b:Z

    .line 173
    .line 174
    if-eqz v14, :cond_7

    .line 175
    .line 176
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    .line 177
    .line 178
    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v13}, Ljg/z;->K(Ljg/n;)Ljava/lang/Iterable;

    .line 182
    .line 183
    .line 184
    move-result-object v13

    .line 185
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 186
    .line 187
    .line 188
    move-result-object v13

    .line 189
    const/4 v15, 0x0

    .line 190
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 191
    .line 192
    .line 193
    move-result v16

    .line 194
    if-eqz v16, :cond_6

    .line 195
    .line 196
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v16

    .line 200
    move-object/from16 v9, v16

    .line 201
    .line 202
    check-cast v9, Ljg/v;

    .line 203
    .line 204
    add-int/lit8 v15, v15, 0x1

    .line 205
    .line 206
    iget-object v10, v9, Ljg/v;->a:Ljg/u;

    .line 207
    .line 208
    iget-object v10, v10, Ljg/u;->a:[B

    .line 209
    .line 210
    array-length v11, v10

    .line 211
    invoke-static {v10, v11}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 212
    .line 213
    .line 214
    move-result-object v10

    .line 215
    sget-object v11, Ljg/l;->a:Ljg/h;

    .line 216
    .line 217
    iget-object v1, v9, Ljg/v;->a:Ljg/u;

    .line 218
    .line 219
    invoke-virtual {v11, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    check-cast v1, Ljg/d;

    .line 224
    .line 225
    iget-object v9, v9, Ljg/v;->b:Ljava/lang/Object;

    .line 226
    .line 227
    invoke-virtual {v1, v9}, Ljg/d;->c(Ljava/lang/Object;)[B

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    array-length v9, v10

    .line 232
    array-length v11, v1

    .line 233
    if-lez v11, :cond_4

    .line 234
    .line 235
    or-int/lit8 v9, v9, 0x20

    .line 236
    .line 237
    :cond_4
    invoke-virtual {v14, v9}, Ljava/io/OutputStream;->write(I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v14, v10}, Ljava/io/OutputStream;->write([B)V

    .line 241
    .line 242
    .line 243
    array-length v9, v1

    .line 244
    if-lez v9, :cond_5

    .line 245
    .line 246
    array-length v9, v1

    .line 247
    invoke-virtual {v14, v9}, Ljava/io/OutputStream;->write(I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v14, v1}, Ljava/io/OutputStream;->write([B)V

    .line 251
    .line 252
    .line 253
    :cond_5
    const/4 v1, 0x1

    .line 254
    const-wide v9, 0xffffffffL

    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    const/4 v11, 0x0

    .line 260
    goto :goto_3

    .line 261
    :cond_6
    int-to-long v9, v15

    .line 262
    invoke-static {v5, v9, v10}, Ljg/z;->N(Ljava/io/DataOutput;J)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    invoke-interface {v5, v1}, Ljava/io/DataOutput;->write([B)V

    .line 270
    .line 271
    .line 272
    const-wide/16 v9, 0x0

    .line 273
    .line 274
    :goto_4
    add-int/lit8 v1, v15, -0x1

    .line 275
    .line 276
    int-to-long v13, v1

    .line 277
    cmp-long v1, v9, v13

    .line 278
    .line 279
    if-gez v1, :cond_7

    .line 280
    .line 281
    const-wide/16 v13, 0x1

    .line 282
    .line 283
    add-long/2addr v13, v9

    .line 284
    invoke-static {v5, v13, v14}, Ljg/z;->N(Ljava/io/DataOutput;J)V

    .line 285
    .line 286
    .line 287
    invoke-static {v5, v9, v10}, Ljg/z;->N(Ljava/io/DataOutput;J)V

    .line 288
    .line 289
    .line 290
    move-wide v9, v13

    .line 291
    goto :goto_4

    .line 292
    :cond_7
    const/4 v1, 0x1

    .line 293
    const-wide v9, 0xffffffffL

    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    const/4 v11, 0x0

    .line 299
    goto/16 :goto_2

    .line 300
    .line 301
    :cond_8
    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    :cond_9
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 309
    .line 310
    .line 311
    move-result v9

    .line 312
    if-eqz v9, :cond_b

    .line 313
    .line 314
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v9

    .line 318
    check-cast v9, Ljg/n;

    .line 319
    .line 320
    iget-boolean v10, v9, Ljg/n;->b:Z

    .line 321
    .line 322
    if-eqz v10, :cond_9

    .line 323
    .line 324
    iget-object v10, v0, Ljg/z;->k:Ljava/util/HashMap;

    .line 325
    .line 326
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v10

    .line 330
    check-cast v10, [J

    .line 331
    .line 332
    if-eqz v10, :cond_a

    .line 333
    .line 334
    array-length v11, v10

    .line 335
    const/4 v12, 0x0

    .line 336
    :goto_6
    if-ge v12, v11, :cond_a

    .line 337
    .line 338
    aget-wide v13, v10, v12

    .line 339
    .line 340
    invoke-static {v5, v13, v14}, Ljg/z;->N(Ljava/io/DataOutput;J)V

    .line 341
    .line 342
    .line 343
    add-int/lit8 v12, v12, 0x1

    .line 344
    .line 345
    goto :goto_6

    .line 346
    :cond_a
    iget-wide v9, v9, Ljg/n;->p:J

    .line 347
    .line 348
    invoke-static {v5, v9, v10}, Ljg/z;->N(Ljava/io/DataOutput;J)V

    .line 349
    .line 350
    .line 351
    goto :goto_5

    .line 352
    :cond_b
    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->write(I)V

    .line 353
    .line 354
    .line 355
    const/4 v1, 0x1

    .line 356
    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    :cond_c
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 364
    .line 365
    .line 366
    move-result v6

    .line 367
    if-eqz v6, :cond_d

    .line 368
    .line 369
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v6

    .line 373
    check-cast v6, Ljg/n;

    .line 374
    .line 375
    iget-boolean v9, v6, Ljg/n;->b:Z

    .line 376
    .line 377
    if-eqz v9, :cond_c

    .line 378
    .line 379
    iget-wide v9, v6, Ljg/n;->n:J

    .line 380
    .line 381
    long-to-int v6, v9

    .line 382
    invoke-static {v6}, Ljava/lang/Integer;->reverseBytes(I)I

    .line 383
    .line 384
    .line 385
    move-result v6

    .line 386
    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 387
    .line 388
    .line 389
    goto :goto_7

    .line 390
    :cond_d
    const/4 v6, 0x0

    .line 391
    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->write(I)V

    .line 392
    .line 393
    .line 394
    goto :goto_8

    .line 395
    :cond_e
    const/4 v6, 0x0

    .line 396
    :goto_8
    const/16 v1, 0x8

    .line 397
    .line 398
    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->write(I)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->write(I)V

    .line 405
    .line 406
    .line 407
    const/4 v6, 0x5

    .line 408
    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->write(I)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 412
    .line 413
    .line 414
    move-result v6

    .line 415
    int-to-long v9, v6

    .line 416
    invoke-static {v5, v9, v10}, Ljg/z;->N(Ljava/io/DataOutput;J)V

    .line 417
    .line 418
    .line 419
    invoke-static {v7}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 420
    .line 421
    .line 422
    move-result-object v6

    .line 423
    new-instance v9, Leh/h;

    .line 424
    .line 425
    const/4 v10, 0x2

    .line 426
    invoke-direct {v9, v10}, Leh/h;-><init>(I)V

    .line 427
    .line 428
    .line 429
    invoke-interface {v6, v9}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 430
    .line 431
    .line 432
    move-result v6

    .line 433
    if-eqz v6, :cond_10

    .line 434
    .line 435
    const/16 v6, 0xe

    .line 436
    .line 437
    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->write(I)V

    .line 438
    .line 439
    .line 440
    new-instance v6, Ljava/util/BitSet;

    .line 441
    .line 442
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 443
    .line 444
    .line 445
    move-result v9

    .line 446
    invoke-direct {v6, v9}, Ljava/util/BitSet;-><init>(I)V

    .line 447
    .line 448
    .line 449
    const/4 v9, 0x0

    .line 450
    :goto_9
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 451
    .line 452
    .line 453
    move-result v10

    .line 454
    if-ge v9, v10, :cond_f

    .line 455
    .line 456
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v10

    .line 460
    check-cast v10, Ljg/n;

    .line 461
    .line 462
    iget-boolean v10, v10, Ljg/n;->b:Z

    .line 463
    .line 464
    const/4 v11, 0x1

    .line 465
    xor-int/2addr v10, v11

    .line 466
    invoke-virtual {v6, v9, v10}, Ljava/util/BitSet;->set(IZ)V

    .line 467
    .line 468
    .line 469
    add-int/lit8 v9, v9, 0x1

    .line 470
    .line 471
    goto :goto_9

    .line 472
    :cond_f
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    .line 473
    .line 474
    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 475
    .line 476
    .line 477
    new-instance v10, Ljava/io/DataOutputStream;

    .line 478
    .line 479
    invoke-direct {v10, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 483
    .line 484
    .line 485
    move-result v11

    .line 486
    invoke-static {v10, v6, v11}, Ljg/z;->M(Ljava/io/DataOutputStream;Ljava/util/BitSet;I)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 493
    .line 494
    .line 495
    move-result-object v6

    .line 496
    array-length v9, v6

    .line 497
    int-to-long v9, v9

    .line 498
    invoke-static {v5, v9, v10}, Ljg/z;->N(Ljava/io/DataOutput;J)V

    .line 499
    .line 500
    .line 501
    invoke-interface {v5, v6}, Ljava/io/DataOutput;->write([B)V

    .line 502
    .line 503
    .line 504
    :cond_10
    new-instance v6, Ljava/util/BitSet;

    .line 505
    .line 506
    const/4 v9, 0x0

    .line 507
    invoke-direct {v6, v9}, Ljava/util/BitSet;-><init>(I)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 511
    .line 512
    .line 513
    move-result-object v9

    .line 514
    const/4 v10, 0x0

    .line 515
    const/4 v11, 0x0

    .line 516
    :cond_11
    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 517
    .line 518
    .line 519
    move-result v12

    .line 520
    if-eqz v12, :cond_12

    .line 521
    .line 522
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    move-result-object v12

    .line 526
    check-cast v12, Ljg/n;

    .line 527
    .line 528
    iget-boolean v13, v12, Ljg/n;->b:Z

    .line 529
    .line 530
    if-nez v13, :cond_11

    .line 531
    .line 532
    iget-boolean v12, v12, Ljg/n;->c:Z

    .line 533
    .line 534
    add-int/lit8 v13, v11, 0x1

    .line 535
    .line 536
    const/4 v14, 0x1

    .line 537
    xor-int/2addr v12, v14

    .line 538
    invoke-virtual {v6, v11, v12}, Ljava/util/BitSet;->set(IZ)V

    .line 539
    .line 540
    .line 541
    or-int/2addr v10, v12

    .line 542
    move v11, v13

    .line 543
    goto :goto_a

    .line 544
    :cond_12
    if-eqz v10, :cond_13

    .line 545
    .line 546
    const/16 v9, 0xf

    .line 547
    .line 548
    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 549
    .line 550
    .line 551
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    .line 552
    .line 553
    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 554
    .line 555
    .line 556
    new-instance v10, Ljava/io/DataOutputStream;

    .line 557
    .line 558
    invoke-direct {v10, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 559
    .line 560
    .line 561
    invoke-static {v10, v6, v11}, Ljg/z;->M(Ljava/io/DataOutputStream;Ljava/util/BitSet;I)V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 568
    .line 569
    .line 570
    move-result-object v6

    .line 571
    array-length v9, v6

    .line 572
    int-to-long v9, v9

    .line 573
    invoke-static {v5, v9, v10}, Ljg/z;->N(Ljava/io/DataOutput;J)V

    .line 574
    .line 575
    .line 576
    invoke-interface {v5, v6}, Ljava/io/DataOutput;->write([B)V

    .line 577
    .line 578
    .line 579
    :cond_13
    new-instance v6, Ljava/util/BitSet;

    .line 580
    .line 581
    const/4 v9, 0x0

    .line 582
    invoke-direct {v6, v9}, Ljava/util/BitSet;-><init>(I)V

    .line 583
    .line 584
    .line 585
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 586
    .line 587
    .line 588
    move-result-object v9

    .line 589
    const/4 v10, 0x0

    .line 590
    const/4 v11, 0x0

    .line 591
    :cond_14
    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 592
    .line 593
    .line 594
    move-result v12

    .line 595
    if-eqz v12, :cond_15

    .line 596
    .line 597
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    move-result-object v12

    .line 601
    check-cast v12, Ljg/n;

    .line 602
    .line 603
    iget-boolean v13, v12, Ljg/n;->b:Z

    .line 604
    .line 605
    if-nez v13, :cond_14

    .line 606
    .line 607
    iget-boolean v12, v12, Ljg/n;->d:Z

    .line 608
    .line 609
    add-int/lit8 v13, v11, 0x1

    .line 610
    .line 611
    invoke-virtual {v6, v11, v12}, Ljava/util/BitSet;->set(IZ)V

    .line 612
    .line 613
    .line 614
    or-int/2addr v10, v12

    .line 615
    move v11, v13

    .line 616
    goto :goto_b

    .line 617
    :cond_15
    if-eqz v10, :cond_16

    .line 618
    .line 619
    const/16 v9, 0x10

    .line 620
    .line 621
    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 622
    .line 623
    .line 624
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    .line 625
    .line 626
    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 627
    .line 628
    .line 629
    new-instance v10, Ljava/io/DataOutputStream;

    .line 630
    .line 631
    invoke-direct {v10, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 632
    .line 633
    .line 634
    invoke-static {v10, v6, v11}, Ljg/z;->M(Ljava/io/DataOutputStream;Ljava/util/BitSet;I)V

    .line 635
    .line 636
    .line 637
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V

    .line 638
    .line 639
    .line 640
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 641
    .line 642
    .line 643
    move-result-object v6

    .line 644
    array-length v9, v6

    .line 645
    int-to-long v9, v9

    .line 646
    invoke-static {v5, v9, v10}, Ljg/z;->N(Ljava/io/DataOutput;J)V

    .line 647
    .line 648
    .line 649
    invoke-interface {v5, v6}, Ljava/io/DataOutput;->write([B)V

    .line 650
    .line 651
    .line 652
    :cond_16
    const/16 v6, 0x11

    .line 653
    .line 654
    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->write(I)V

    .line 655
    .line 656
    .line 657
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    .line 658
    .line 659
    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 660
    .line 661
    .line 662
    new-instance v9, Ljava/io/DataOutputStream;

    .line 663
    .line 664
    invoke-direct {v9, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 665
    .line 666
    .line 667
    const/4 v10, 0x0

    .line 668
    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 672
    .line 673
    .line 674
    move-result-object v10

    .line 675
    :goto_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 676
    .line 677
    .line 678
    move-result v11

    .line 679
    if-eqz v11, :cond_17

    .line 680
    .line 681
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 682
    .line 683
    .line 684
    move-result-object v11

    .line 685
    check-cast v11, Ljg/n;

    .line 686
    .line 687
    iget-object v11, v11, Ljg/n;->a:Ljava/lang/String;

    .line 688
    .line 689
    sget-object v12, Lj$/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 690
    .line 691
    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 692
    .line 693
    .line 694
    move-result-object v11

    .line 695
    invoke-virtual {v9, v11}, Ljava/io/OutputStream;->write([B)V

    .line 696
    .line 697
    .line 698
    const/4 v11, 0x0

    .line 699
    invoke-virtual {v9, v11}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 700
    .line 701
    .line 702
    goto :goto_c

    .line 703
    :cond_17
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->flush()V

    .line 704
    .line 705
    .line 706
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 707
    .line 708
    .line 709
    move-result-object v6

    .line 710
    array-length v9, v6

    .line 711
    int-to-long v9, v9

    .line 712
    invoke-static {v5, v9, v10}, Ljg/z;->N(Ljava/io/DataOutput;J)V

    .line 713
    .line 714
    .line 715
    invoke-interface {v5, v6}, Ljava/io/DataOutput;->write([B)V

    .line 716
    .line 717
    .line 718
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 719
    .line 720
    .line 721
    move-result-object v6

    .line 722
    const/4 v9, 0x0

    .line 723
    :cond_18
    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 724
    .line 725
    .line 726
    move-result v10

    .line 727
    if-eqz v10, :cond_19

    .line 728
    .line 729
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 730
    .line 731
    .line 732
    move-result-object v10

    .line 733
    check-cast v10, Ljg/n;

    .line 734
    .line 735
    iget-boolean v10, v10, Ljg/n;->e:Z

    .line 736
    .line 737
    if-eqz v10, :cond_18

    .line 738
    .line 739
    add-int/lit8 v9, v9, 0x1

    .line 740
    .line 741
    goto :goto_d

    .line 742
    :cond_19
    const-string v6, "The entry doesn\'t have this timestamp"

    .line 743
    .line 744
    if-lez v9, :cond_1f

    .line 745
    .line 746
    const/16 v10, 0x12

    .line 747
    .line 748
    invoke-virtual {v5, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 749
    .line 750
    .line 751
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    .line 752
    .line 753
    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 754
    .line 755
    .line 756
    new-instance v11, Ljava/io/DataOutputStream;

    .line 757
    .line 758
    invoke-direct {v11, v10}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 759
    .line 760
    .line 761
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 762
    .line 763
    .line 764
    move-result v12

    .line 765
    if-eq v9, v12, :cond_1b

    .line 766
    .line 767
    const/4 v9, 0x0

    .line 768
    invoke-virtual {v11, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 769
    .line 770
    .line 771
    new-instance v9, Ljava/util/BitSet;

    .line 772
    .line 773
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 774
    .line 775
    .line 776
    move-result v12

    .line 777
    invoke-direct {v9, v12}, Ljava/util/BitSet;-><init>(I)V

    .line 778
    .line 779
    .line 780
    const/4 v12, 0x0

    .line 781
    :goto_e
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 782
    .line 783
    .line 784
    move-result v13

    .line 785
    if-ge v12, v13, :cond_1a

    .line 786
    .line 787
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 788
    .line 789
    .line 790
    move-result-object v13

    .line 791
    check-cast v13, Ljg/n;

    .line 792
    .line 793
    iget-boolean v13, v13, Ljg/n;->e:Z

    .line 794
    .line 795
    invoke-virtual {v9, v12, v13}, Ljava/util/BitSet;->set(IZ)V

    .line 796
    .line 797
    .line 798
    add-int/lit8 v12, v12, 0x1

    .line 799
    .line 800
    goto :goto_e

    .line 801
    :cond_1a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 802
    .line 803
    .line 804
    move-result v12

    .line 805
    invoke-static {v11, v9, v12}, Ljg/z;->M(Ljava/io/DataOutputStream;Ljava/util/BitSet;I)V

    .line 806
    .line 807
    .line 808
    :goto_f
    const/4 v9, 0x0

    .line 809
    goto :goto_10

    .line 810
    :cond_1b
    const/4 v9, 0x1

    .line 811
    invoke-virtual {v11, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 812
    .line 813
    .line 814
    goto :goto_f

    .line 815
    :goto_10
    invoke-virtual {v11, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 816
    .line 817
    .line 818
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 819
    .line 820
    .line 821
    move-result-object v9

    .line 822
    :cond_1c
    :goto_11
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 823
    .line 824
    .line 825
    move-result v12

    .line 826
    if-eqz v12, :cond_1e

    .line 827
    .line 828
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 829
    .line 830
    .line 831
    move-result-object v12

    .line 832
    check-cast v12, Ljg/n;

    .line 833
    .line 834
    iget-boolean v13, v12, Ljg/n;->e:Z

    .line 835
    .line 836
    if-eqz v13, :cond_1c

    .line 837
    .line 838
    if-eqz v13, :cond_1d

    .line 839
    .line 840
    iget-object v12, v12, Ljg/n;->h:Ljava/nio/file/attribute/FileTime;

    .line 841
    .line 842
    invoke-static {v12}, Lvg/b;->b(Ljava/nio/file/attribute/FileTime;)J

    .line 843
    .line 844
    .line 845
    move-result-wide v12

    .line 846
    invoke-static {v12, v13}, Ljava/lang/Long;->reverseBytes(J)J

    .line 847
    .line 848
    .line 849
    move-result-wide v12

    .line 850
    invoke-virtual {v11, v12, v13}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 851
    .line 852
    .line 853
    goto :goto_11

    .line 854
    :cond_1d
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 855
    .line 856
    invoke-direct {v1, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 857
    .line 858
    .line 859
    throw v1

    .line 860
    :cond_1e
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->flush()V

    .line 861
    .line 862
    .line 863
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 864
    .line 865
    .line 866
    move-result-object v9

    .line 867
    array-length v10, v9

    .line 868
    int-to-long v10, v10

    .line 869
    invoke-static {v5, v10, v11}, Ljg/z;->N(Ljava/io/DataOutput;J)V

    .line 870
    .line 871
    .line 872
    invoke-interface {v5, v9}, Ljava/io/DataOutput;->write([B)V

    .line 873
    .line 874
    .line 875
    :cond_1f
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 876
    .line 877
    .line 878
    move-result-object v9

    .line 879
    const/4 v10, 0x0

    .line 880
    :cond_20
    :goto_12
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 881
    .line 882
    .line 883
    move-result v11

    .line 884
    if-eqz v11, :cond_21

    .line 885
    .line 886
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 887
    .line 888
    .line 889
    move-result-object v11

    .line 890
    check-cast v11, Ljg/n;

    .line 891
    .line 892
    iget-boolean v11, v11, Ljg/n;->g:Z

    .line 893
    .line 894
    if-eqz v11, :cond_20

    .line 895
    .line 896
    add-int/lit8 v10, v10, 0x1

    .line 897
    .line 898
    goto :goto_12

    .line 899
    :cond_21
    if-lez v10, :cond_27

    .line 900
    .line 901
    const/16 v9, 0x13

    .line 902
    .line 903
    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 904
    .line 905
    .line 906
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    .line 907
    .line 908
    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 909
    .line 910
    .line 911
    new-instance v11, Ljava/io/DataOutputStream;

    .line 912
    .line 913
    invoke-direct {v11, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 914
    .line 915
    .line 916
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 917
    .line 918
    .line 919
    move-result v12

    .line 920
    if-eq v10, v12, :cond_23

    .line 921
    .line 922
    const/4 v10, 0x0

    .line 923
    invoke-virtual {v11, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 924
    .line 925
    .line 926
    new-instance v10, Ljava/util/BitSet;

    .line 927
    .line 928
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 929
    .line 930
    .line 931
    move-result v12

    .line 932
    invoke-direct {v10, v12}, Ljava/util/BitSet;-><init>(I)V

    .line 933
    .line 934
    .line 935
    const/4 v12, 0x0

    .line 936
    :goto_13
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 937
    .line 938
    .line 939
    move-result v13

    .line 940
    if-ge v12, v13, :cond_22

    .line 941
    .line 942
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 943
    .line 944
    .line 945
    move-result-object v13

    .line 946
    check-cast v13, Ljg/n;

    .line 947
    .line 948
    iget-boolean v13, v13, Ljg/n;->g:Z

    .line 949
    .line 950
    invoke-virtual {v10, v12, v13}, Ljava/util/BitSet;->set(IZ)V

    .line 951
    .line 952
    .line 953
    add-int/lit8 v12, v12, 0x1

    .line 954
    .line 955
    goto :goto_13

    .line 956
    :cond_22
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 957
    .line 958
    .line 959
    move-result v12

    .line 960
    invoke-static {v11, v10, v12}, Ljg/z;->M(Ljava/io/DataOutputStream;Ljava/util/BitSet;I)V

    .line 961
    .line 962
    .line 963
    :goto_14
    const/4 v10, 0x0

    .line 964
    goto :goto_15

    .line 965
    :cond_23
    const/4 v10, 0x1

    .line 966
    invoke-virtual {v11, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 967
    .line 968
    .line 969
    goto :goto_14

    .line 970
    :goto_15
    invoke-virtual {v11, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 971
    .line 972
    .line 973
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 974
    .line 975
    .line 976
    move-result-object v10

    .line 977
    :cond_24
    :goto_16
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 978
    .line 979
    .line 980
    move-result v12

    .line 981
    if-eqz v12, :cond_26

    .line 982
    .line 983
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 984
    .line 985
    .line 986
    move-result-object v12

    .line 987
    check-cast v12, Ljg/n;

    .line 988
    .line 989
    iget-boolean v13, v12, Ljg/n;->g:Z

    .line 990
    .line 991
    if-eqz v13, :cond_24

    .line 992
    .line 993
    if-eqz v13, :cond_25

    .line 994
    .line 995
    iget-object v12, v12, Ljg/n;->j:Ljava/nio/file/attribute/FileTime;

    .line 996
    .line 997
    invoke-static {v12}, Lvg/b;->b(Ljava/nio/file/attribute/FileTime;)J

    .line 998
    .line 999
    .line 1000
    move-result-wide v12

    .line 1001
    invoke-static {v12, v13}, Ljava/lang/Long;->reverseBytes(J)J

    .line 1002
    .line 1003
    .line 1004
    move-result-wide v12

    .line 1005
    invoke-virtual {v11, v12, v13}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1006
    .line 1007
    .line 1008
    goto :goto_16

    .line 1009
    :cond_25
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 1010
    .line 1011
    invoke-direct {v1, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1012
    .line 1013
    .line 1014
    throw v1

    .line 1015
    :cond_26
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->flush()V

    .line 1016
    .line 1017
    .line 1018
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 1019
    .line 1020
    .line 1021
    move-result-object v9

    .line 1022
    array-length v10, v9

    .line 1023
    int-to-long v10, v10

    .line 1024
    invoke-static {v5, v10, v11}, Ljg/z;->N(Ljava/io/DataOutput;J)V

    .line 1025
    .line 1026
    .line 1027
    invoke-interface {v5, v9}, Ljava/io/DataOutput;->write([B)V

    .line 1028
    .line 1029
    .line 1030
    :cond_27
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v9

    .line 1034
    const/4 v10, 0x0

    .line 1035
    :cond_28
    :goto_17
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 1036
    .line 1037
    .line 1038
    move-result v11

    .line 1039
    if-eqz v11, :cond_29

    .line 1040
    .line 1041
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v11

    .line 1045
    check-cast v11, Ljg/n;

    .line 1046
    .line 1047
    iget-boolean v11, v11, Ljg/n;->f:Z

    .line 1048
    .line 1049
    if-eqz v11, :cond_28

    .line 1050
    .line 1051
    add-int/lit8 v10, v10, 0x1

    .line 1052
    .line 1053
    goto :goto_17

    .line 1054
    :cond_29
    const/16 v9, 0x14

    .line 1055
    .line 1056
    if-lez v10, :cond_2f

    .line 1057
    .line 1058
    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 1059
    .line 1060
    .line 1061
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    .line 1062
    .line 1063
    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1064
    .line 1065
    .line 1066
    new-instance v12, Ljava/io/DataOutputStream;

    .line 1067
    .line 1068
    invoke-direct {v12, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1072
    .line 1073
    .line 1074
    move-result v13

    .line 1075
    if-eq v10, v13, :cond_2b

    .line 1076
    .line 1077
    const/4 v10, 0x0

    .line 1078
    invoke-virtual {v12, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 1079
    .line 1080
    .line 1081
    new-instance v10, Ljava/util/BitSet;

    .line 1082
    .line 1083
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1084
    .line 1085
    .line 1086
    move-result v13

    .line 1087
    invoke-direct {v10, v13}, Ljava/util/BitSet;-><init>(I)V

    .line 1088
    .line 1089
    .line 1090
    const/4 v13, 0x0

    .line 1091
    :goto_18
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1092
    .line 1093
    .line 1094
    move-result v14

    .line 1095
    if-ge v13, v14, :cond_2a

    .line 1096
    .line 1097
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v14

    .line 1101
    check-cast v14, Ljg/n;

    .line 1102
    .line 1103
    iget-boolean v14, v14, Ljg/n;->f:Z

    .line 1104
    .line 1105
    invoke-virtual {v10, v13, v14}, Ljava/util/BitSet;->set(IZ)V

    .line 1106
    .line 1107
    .line 1108
    add-int/lit8 v13, v13, 0x1

    .line 1109
    .line 1110
    goto :goto_18

    .line 1111
    :cond_2a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1112
    .line 1113
    .line 1114
    move-result v13

    .line 1115
    invoke-static {v12, v10, v13}, Ljg/z;->M(Ljava/io/DataOutputStream;Ljava/util/BitSet;I)V

    .line 1116
    .line 1117
    .line 1118
    :goto_19
    const/4 v10, 0x0

    .line 1119
    goto :goto_1a

    .line 1120
    :cond_2b
    const/4 v10, 0x1

    .line 1121
    invoke-virtual {v12, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 1122
    .line 1123
    .line 1124
    goto :goto_19

    .line 1125
    :goto_1a
    invoke-virtual {v12, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 1126
    .line 1127
    .line 1128
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v10

    .line 1132
    :cond_2c
    :goto_1b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 1133
    .line 1134
    .line 1135
    move-result v13

    .line 1136
    if-eqz v13, :cond_2e

    .line 1137
    .line 1138
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v13

    .line 1142
    check-cast v13, Ljg/n;

    .line 1143
    .line 1144
    iget-boolean v14, v13, Ljg/n;->f:Z

    .line 1145
    .line 1146
    if-eqz v14, :cond_2c

    .line 1147
    .line 1148
    if-eqz v14, :cond_2d

    .line 1149
    .line 1150
    iget-object v13, v13, Ljg/n;->i:Ljava/nio/file/attribute/FileTime;

    .line 1151
    .line 1152
    invoke-static {v13}, Lvg/b;->b(Ljava/nio/file/attribute/FileTime;)J

    .line 1153
    .line 1154
    .line 1155
    move-result-wide v13

    .line 1156
    invoke-static {v13, v14}, Ljava/lang/Long;->reverseBytes(J)J

    .line 1157
    .line 1158
    .line 1159
    move-result-wide v13

    .line 1160
    invoke-virtual {v12, v13, v14}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1161
    .line 1162
    .line 1163
    goto :goto_1b

    .line 1164
    :cond_2d
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 1165
    .line 1166
    invoke-direct {v1, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1167
    .line 1168
    .line 1169
    throw v1

    .line 1170
    :cond_2e
    invoke-virtual {v12}, Ljava/io/DataOutputStream;->flush()V

    .line 1171
    .line 1172
    .line 1173
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 1174
    .line 1175
    .line 1176
    move-result-object v6

    .line 1177
    array-length v10, v6

    .line 1178
    int-to-long v10, v10

    .line 1179
    invoke-static {v5, v10, v11}, Ljg/z;->N(Ljava/io/DataOutput;J)V

    .line 1180
    .line 1181
    .line 1182
    invoke-interface {v5, v6}, Ljava/io/DataOutput;->write([B)V

    .line 1183
    .line 1184
    .line 1185
    :cond_2f
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v6

    .line 1189
    const/4 v10, 0x0

    .line 1190
    :cond_30
    :goto_1c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1191
    .line 1192
    .line 1193
    move-result v11

    .line 1194
    if-eqz v11, :cond_31

    .line 1195
    .line 1196
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v11

    .line 1200
    check-cast v11, Ljg/n;

    .line 1201
    .line 1202
    iget-boolean v11, v11, Ljg/n;->k:Z

    .line 1203
    .line 1204
    if-eqz v11, :cond_30

    .line 1205
    .line 1206
    add-int/lit8 v10, v10, 0x1

    .line 1207
    .line 1208
    goto :goto_1c

    .line 1209
    :cond_31
    if-lez v10, :cond_36

    .line 1210
    .line 1211
    const/16 v6, 0x15

    .line 1212
    .line 1213
    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->write(I)V

    .line 1214
    .line 1215
    .line 1216
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    .line 1217
    .line 1218
    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1219
    .line 1220
    .line 1221
    new-instance v11, Ljava/io/DataOutputStream;

    .line 1222
    .line 1223
    invoke-direct {v11, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1224
    .line 1225
    .line 1226
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1227
    .line 1228
    .line 1229
    move-result v12

    .line 1230
    if-eq v10, v12, :cond_33

    .line 1231
    .line 1232
    const/4 v10, 0x0

    .line 1233
    invoke-virtual {v11, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 1234
    .line 1235
    .line 1236
    new-instance v10, Ljava/util/BitSet;

    .line 1237
    .line 1238
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1239
    .line 1240
    .line 1241
    move-result v12

    .line 1242
    invoke-direct {v10, v12}, Ljava/util/BitSet;-><init>(I)V

    .line 1243
    .line 1244
    .line 1245
    const/4 v12, 0x0

    .line 1246
    :goto_1d
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1247
    .line 1248
    .line 1249
    move-result v13

    .line 1250
    if-ge v12, v13, :cond_32

    .line 1251
    .line 1252
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v13

    .line 1256
    check-cast v13, Ljg/n;

    .line 1257
    .line 1258
    iget-boolean v13, v13, Ljg/n;->k:Z

    .line 1259
    .line 1260
    invoke-virtual {v10, v12, v13}, Ljava/util/BitSet;->set(IZ)V

    .line 1261
    .line 1262
    .line 1263
    add-int/lit8 v12, v12, 0x1

    .line 1264
    .line 1265
    goto :goto_1d

    .line 1266
    :cond_32
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1267
    .line 1268
    .line 1269
    move-result v12

    .line 1270
    invoke-static {v11, v10, v12}, Ljg/z;->M(Ljava/io/DataOutputStream;Ljava/util/BitSet;I)V

    .line 1271
    .line 1272
    .line 1273
    :goto_1e
    const/4 v10, 0x0

    .line 1274
    goto :goto_1f

    .line 1275
    :cond_33
    const/4 v10, 0x1

    .line 1276
    invoke-virtual {v11, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 1277
    .line 1278
    .line 1279
    goto :goto_1e

    .line 1280
    :goto_1f
    invoke-virtual {v11, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 1281
    .line 1282
    .line 1283
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1284
    .line 1285
    .line 1286
    move-result-object v7

    .line 1287
    :cond_34
    :goto_20
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 1288
    .line 1289
    .line 1290
    move-result v10

    .line 1291
    if-eqz v10, :cond_35

    .line 1292
    .line 1293
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1294
    .line 1295
    .line 1296
    move-result-object v10

    .line 1297
    check-cast v10, Ljg/n;

    .line 1298
    .line 1299
    iget-boolean v12, v10, Ljg/n;->k:Z

    .line 1300
    .line 1301
    if-eqz v12, :cond_34

    .line 1302
    .line 1303
    iget v10, v10, Ljg/n;->l:I

    .line 1304
    .line 1305
    invoke-static {v10}, Ljava/lang/Integer;->reverseBytes(I)I

    .line 1306
    .line 1307
    .line 1308
    move-result v10

    .line 1309
    invoke-virtual {v11, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1310
    .line 1311
    .line 1312
    goto :goto_20

    .line 1313
    :cond_35
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->flush()V

    .line 1314
    .line 1315
    .line 1316
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 1317
    .line 1318
    .line 1319
    move-result-object v6

    .line 1320
    array-length v7, v6

    .line 1321
    int-to-long v10, v7

    .line 1322
    invoke-static {v5, v10, v11}, Ljg/z;->N(Ljava/io/DataOutput;J)V

    .line 1323
    .line 1324
    .line 1325
    invoke-interface {v5, v6}, Ljava/io/DataOutput;->write([B)V

    .line 1326
    .line 1327
    .line 1328
    :cond_36
    const/4 v6, 0x0

    .line 1329
    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->write(I)V

    .line 1330
    .line 1331
    .line 1332
    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->write(I)V

    .line 1333
    .line 1334
    .line 1335
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 1336
    .line 1337
    .line 1338
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 1339
    .line 1340
    .line 1341
    move-result-object v4

    .line 1342
    iget-object v5, v0, Ljg/z;->a:Ljava/nio/channels/SeekableByteChannel;

    .line 1343
    .line 1344
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v6

    .line 1348
    invoke-static {v5, v6}, La2/s0;->w(Ljava/nio/channels/SeekableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 1349
    .line 1350
    .line 1351
    new-instance v5, Ljava/util/zip/CRC32;

    .line 1352
    .line 1353
    invoke-direct {v5}, Ljava/util/zip/CRC32;-><init>()V

    .line 1354
    .line 1355
    .line 1356
    invoke-virtual {v5, v4}, Ljava/util/zip/CRC32;->update([B)V

    .line 1357
    .line 1358
    .line 1359
    const/16 v6, 0x20

    .line 1360
    .line 1361
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 1362
    .line 1363
    .line 1364
    move-result-object v6

    .line 1365
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 1366
    .line 1367
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1368
    .line 1369
    .line 1370
    move-result-object v6

    .line 1371
    iget-object v7, v0, Ljg/z;->a:Ljava/nio/channels/SeekableByteChannel;

    .line 1372
    .line 1373
    invoke-static {v7}, Ljg/w;->r(Ljava/nio/channels/SeekableByteChannel;)V

    .line 1374
    .line 1375
    .line 1376
    sget-object v7, Ljg/t;->j:[B

    .line 1377
    .line 1378
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1379
    .line 1380
    .line 1381
    const/4 v7, 0x0

    .line 1382
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1383
    .line 1384
    .line 1385
    move-result-object v10

    .line 1386
    const/4 v11, 0x2

    .line 1387
    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1388
    .line 1389
    .line 1390
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1391
    .line 1392
    .line 1393
    const-wide/16 v10, 0x20

    .line 1394
    .line 1395
    sub-long/2addr v2, v10

    .line 1396
    invoke-virtual {v6, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v2

    .line 1400
    array-length v3, v4

    .line 1401
    int-to-long v3, v3

    .line 1402
    const-wide v10, 0xffffffffL

    .line 1403
    .line 1404
    .line 1405
    .line 1406
    .line 1407
    and-long/2addr v3, v10

    .line 1408
    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1409
    .line 1410
    .line 1411
    move-result-object v2

    .line 1412
    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    .line 1413
    .line 1414
    .line 1415
    move-result-wide v3

    .line 1416
    long-to-int v4, v3

    .line 1417
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1418
    .line 1419
    .line 1420
    invoke-virtual {v5}, Ljava/util/zip/CRC32;->reset()V

    .line 1421
    .line 1422
    .line 1423
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    .line 1424
    .line 1425
    .line 1426
    move-result-object v2

    .line 1427
    invoke-virtual {v5, v2, v8, v9}, Ljava/util/zip/CRC32;->update([BII)V

    .line 1428
    .line 1429
    .line 1430
    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    .line 1431
    .line 1432
    .line 1433
    move-result-wide v2

    .line 1434
    long-to-int v3, v2

    .line 1435
    invoke-virtual {v6, v1, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 1436
    .line 1437
    .line 1438
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1439
    .line 1440
    .line 1441
    iget-object v1, v0, Ljg/z;->a:Ljava/nio/channels/SeekableByteChannel;

    .line 1442
    .line 1443
    invoke-static {v1, v6}, La2/s0;->w(Ljava/nio/channels/SeekableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 1444
    .line 1445
    .line 1446
    return-void

    .line 1447
    :cond_37
    new-instance v1, Ljava/io/IOException;

    .line 1448
    .line 1449
    const-string v2, "This archive has already been finished"

    .line 1450
    .line 1451
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1452
    .line 1453
    .line 1454
    goto :goto_22

    .line 1455
    :goto_21
    throw v1

    .line 1456
    :goto_22
    goto :goto_21
.end method

.method public final K(Ljg/n;)Ljava/lang/Iterable;
    .locals 3

    .line 1
    iget-object p1, p1, Ljg/n;->r:Ljava/util/List;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Ljg/z;->j:Ljava/util/List;

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Ljg/z;->l:Ljg/a;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    new-instance v1, Ljg/v;

    .line 12
    .line 13
    sget-object v2, Ljg/u;->h:Ljg/u;

    .line 14
    .line 15
    invoke-direct {v1, v2, v0}, Ljg/v;-><init>(Ljg/u;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lj$/util/stream/Stream$-CC;->of(Ljava/lang/Object;)Lj$/util/stream/Stream;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {p1}, Lj$/lang/Iterable$-EL;->spliterator(Ljava/lang/Iterable;)Lj$/util/Spliterator;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-static {p1, v1}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {v0, p1}, Lj$/util/stream/Stream$-CC;->concat(Lj$/util/stream/Stream;Lj$/util/stream/Stream;)Lj$/util/stream/Stream;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Ljava/lang/Iterable;

    .line 44
    .line 45
    :cond_1
    return-object p1
.end method

.method public final L(I[B)V
    .locals 7

    .line 1
    if-lez p1, :cond_6

    .line 2
    .line 3
    iget-object v0, p0, Ljg/z;->h:Ljg/y;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_5

    .line 7
    .line 8
    iget-object v0, p0, Ljg/z;->b:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_4

    .line 15
    .line 16
    new-instance v2, Ljg/j;

    .line 17
    .line 18
    invoke-direct {v2, p0}, Ljg/j;-><init>(Ljg/z;)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    invoke-static {v4, v0}, Lta/q;->h(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljg/n;

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Ljg/z;->K(Ljg/n;)Ljava/lang/Iterable;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_2

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    check-cast v5, Ljg/v;

    .line 52
    .line 53
    if-nez v4, :cond_0

    .line 54
    .line 55
    new-instance v4, Lyg/b;

    .line 56
    .line 57
    invoke-direct {v4, v2}, Lyg/b;-><init>(Ljava/io/OutputStream;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-object v2, v4

    .line 64
    :cond_0
    iget-object v4, v5, Ljg/v;->a:Ljg/u;

    .line 65
    .line 66
    sget-object v6, Ljg/l;->a:Ljg/h;

    .line 67
    .line 68
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    check-cast v6, Ljg/d;

    .line 73
    .line 74
    if-eqz v6, :cond_1

    .line 75
    .line 76
    iget-object v4, v5, Ljg/v;->b:Ljava/lang/Object;

    .line 77
    .line 78
    invoke-virtual {v6, v2, v4}, Ljg/d;->b(Ljava/io/OutputStream;Ljava/lang/Object;)Ljava/io/OutputStream;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    const/4 v4, 0x0

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 85
    .line 86
    new-instance p2, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v0, "Unsupported compression method "

    .line 89
    .line 90
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p1

    .line 104
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-nez v0, :cond_3

    .line 109
    .line 110
    new-array v0, v1, [Lyg/b;

    .line 111
    .line 112
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, [Lyg/b;

    .line 117
    .line 118
    iput-object v0, p0, Ljg/z;->i:[Lyg/b;

    .line 119
    .line 120
    :cond_3
    new-instance v0, Ljg/y;

    .line 121
    .line 122
    invoke-direct {v0, p0, v2}, Ljg/y;-><init>(Ljg/z;Ljava/io/OutputStream;)V

    .line 123
    .line 124
    .line 125
    iput-object v0, p0, Ljg/z;->h:Ljg/y;

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 129
    .line 130
    const-string p2, "No current 7z entry"

    .line 131
    .line 132
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p1

    .line 136
    :cond_5
    :goto_1
    iget-object v0, p0, Ljg/z;->h:Ljg/y;

    .line 137
    .line 138
    invoke-virtual {v0, p2, v1, p1}, Ljg/y;->write([BII)V

    .line 139
    .line 140
    .line 141
    :cond_6
    return-void
.end method

.method public final close()V
    .locals 2

    .line 1
    :try_start_0
    iget-boolean v0, p0, Ljg/z;->g:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljg/z;->J()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    :goto_0
    iget-object v0, p0, Ljg/z;->a:Ljava/nio/channels/SeekableByteChannel;

    .line 12
    .line 13
    invoke-static {v0}, La2/s0;->u(Ljava/nio/channels/SeekableByteChannel;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :goto_1
    iget-object v1, p0, Ljg/z;->a:Ljava/nio/channels/SeekableByteChannel;

    .line 18
    .line 19
    invoke-static {v1}, La2/s0;->u(Ljava/nio/channels/SeekableByteChannel;)V

    .line 20
    .line 21
    .line 22
    throw v0
.end method

.method public final r()V
    .locals 10

    .line 1
    iget-object v0, p0, Ljg/z;->h:Ljg/y;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lyg/b;->flush()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Ljg/z;->h:Ljg/y;

    .line 9
    .line 10
    invoke-virtual {v0}, Lyg/b;->close()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Ljg/z;->b:Ljava/util/ArrayList;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-static {v1, v0}, Lta/q;->h(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljg/n;

    .line 21
    .line 22
    iget-wide v2, p0, Ljg/z;->f:J

    .line 23
    .line 24
    iget-object v4, p0, Ljg/z;->e:Ljava/util/zip/CRC32;

    .line 25
    .line 26
    iget-object v5, p0, Ljg/z;->d:Ljava/util/zip/CRC32;

    .line 27
    .line 28
    const-wide/16 v6, 0x0

    .line 29
    .line 30
    cmp-long v8, v2, v6

    .line 31
    .line 32
    if-lez v8, :cond_1

    .line 33
    .line 34
    iput-boolean v1, v0, Ljg/n;->b:Z

    .line 35
    .line 36
    iget v2, p0, Ljg/z;->c:I

    .line 37
    .line 38
    add-int/2addr v2, v1

    .line 39
    iput v2, p0, Ljg/z;->c:I

    .line 40
    .line 41
    iget-object v2, p0, Ljg/z;->h:Ljg/y;

    .line 42
    .line 43
    monitor-enter v2

    .line 44
    :try_start_0
    iget-wide v8, v2, Lyg/b;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    monitor-exit v2

    .line 47
    iput-wide v8, v0, Ljg/n;->p:J

    .line 48
    .line 49
    iget-wide v2, p0, Ljg/z;->f:J

    .line 50
    .line 51
    iput-wide v2, v0, Ljg/n;->q:J

    .line 52
    .line 53
    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    iput-wide v2, v0, Ljg/n;->n:J

    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    iput-wide v2, v0, Ljg/n;->o:J

    .line 64
    .line 65
    iput-boolean v1, v0, Ljg/n;->m:Z

    .line 66
    .line 67
    iget-object v1, p0, Ljg/z;->i:[Lyg/b;

    .line 68
    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    array-length v1, v1

    .line 72
    new-array v1, v1, [J

    .line 73
    .line 74
    new-instance v2, Ljg/x;

    .line 75
    .line 76
    invoke-direct {v2, p0}, Ljg/x;-><init>(Ljg/z;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v1, v2}, La2/s0;->y([JLjg/x;)V

    .line 80
    .line 81
    .line 82
    iget-object v2, p0, Ljg/z;->k:Ljava/util/HashMap;

    .line 83
    .line 84
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    throw v0

    .line 91
    :cond_1
    const/4 v1, 0x0

    .line 92
    iput-boolean v1, v0, Ljg/n;->b:Z

    .line 93
    .line 94
    iput-wide v6, v0, Ljg/n;->p:J

    .line 95
    .line 96
    iput-wide v6, v0, Ljg/n;->q:J

    .line 97
    .line 98
    iput-boolean v1, v0, Ljg/n;->m:Z

    .line 99
    .line 100
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Ljg/z;->h:Ljg/y;

    .line 102
    .line 103
    iput-object v0, p0, Ljg/z;->i:[Lyg/b;

    .line 104
    .line 105
    invoke-virtual {v5}, Ljava/util/zip/CRC32;->reset()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4}, Ljava/util/zip/CRC32;->reset()V

    .line 109
    .line 110
    .line 111
    iput-wide v6, p0, Ljg/z;->f:J

    .line 112
    .line 113
    return-void
.end method
