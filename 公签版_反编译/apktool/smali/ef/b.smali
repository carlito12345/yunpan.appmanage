.class public final Lef/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final l:Ljava/util/Locale;


# instance fields
.field public a:Z

.field public b:Lmf/h;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Lff/c;

.field public f:Ljava/util/List;

.field public g:Ljava/util/ArrayList;

.field public h:Ljava/util/ArrayList;

.field public final i:Ljava/util/zip/ZipFile;

.field public final j:Ljava/io/File;

.field public k:Ljava/nio/channels/FileChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    sput-object v0, Lef/b;->l:Ljava/util/Locale;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lef/b;->j:Ljava/io/File;

    .line 3
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lef/b;->i:Ljava/util/zip/ZipFile;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lef/b;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public final A()Ljava/util/List;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lef/b;->M()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lef/b;->f:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_5

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lff/h;

    .line 41
    .line 42
    iget-object v3, v2, Lff/h;->a:Ljava/lang/String;

    .line 43
    .line 44
    const-string v4, ".xml"

    .line 45
    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    iget v2, v2, Lff/h;->b:I

    .line 51
    .line 52
    if-eqz v4, :cond_4

    .line 53
    .line 54
    invoke-virtual {p0, v3}, Lef/b;->L(Ljava/lang/String;)[B

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    if-nez v3, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p0}, Lef/b;->N()V

    .line 62
    .line 63
    .line 64
    new-instance v4, Lba/h;

    .line 65
    .line 66
    const/4 v5, 0x2

    .line 67
    invoke-direct {v4, v5}, Lba/h;-><init>(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v3, v4}, Lef/b;->O([BLkf/e;)V

    .line 71
    .line 72
    .line 73
    iget-object v3, v4, Lba/h;->c:Ljava/lang/String;

    .line 74
    .line 75
    const/4 v5, 0x0

    .line 76
    if-eqz v3, :cond_2

    .line 77
    .line 78
    new-instance v6, Lff/f;

    .line 79
    .line 80
    invoke-virtual {p0, v3}, Lef/b;->L(Ljava/lang/String;)[B

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    invoke-direct {v6, v3, v2, v7}, Lff/f;-><init>(Ljava/lang/String;I[B)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    move-object v6, v5

    .line 89
    :goto_1
    iget-object v3, v4, Lba/h;->b:Ljava/lang/String;

    .line 90
    .line 91
    if-eqz v3, :cond_3

    .line 92
    .line 93
    new-instance v5, Lff/f;

    .line 94
    .line 95
    invoke-virtual {p0, v3}, Lef/b;->L(Ljava/lang/String;)[B

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-direct {v5, v3, v2, v4}, Lff/f;-><init>(Ljava/lang/String;I[B)V

    .line 100
    .line 101
    .line 102
    :cond_3
    new-instance v2, Lff/a;

    .line 103
    .line 104
    invoke-direct {v2, v5, v6}, Lff/a;-><init>(Lff/f;Lff/f;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_4
    new-instance v4, Lff/f;

    .line 112
    .line 113
    invoke-virtual {p0, v3}, Lef/b;->L(Ljava/lang/String;)[B

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-direct {v4, v3, v2, v5}, Lff/f;-><init>(Ljava/lang/String;I[B)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_5
    return-object v1
.end method

.method public final J()Ljava/util/ArrayList;
    .locals 7

    .line 1
    iget-object v0, p0, Lef/b;->g:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_7

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lef/b;->g:Ljava/util/ArrayList;

    .line 11
    .line 12
    iget-object v0, p0, Lef/b;->i:Ljava/util/zip/ZipFile;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_3

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    const-string v5, ".RSA"

    .line 51
    .line 52
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-nez v5, :cond_2

    .line 57
    .line 58
    const-string v5, ".DSA"

    .line 59
    .line 60
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_0

    .line 65
    .line 66
    :cond_2
    new-instance v5, Lef/a;

    .line 67
    .line 68
    invoke-virtual {v0, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    :try_start_0
    invoke-static {v3}, La9/o;->Z(Ljava/io/InputStream;)[B

    .line 73
    .line 74
    .line 75
    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 77
    .line 78
    .line 79
    invoke-direct {v5, v4, v6}, Lef/a;-><init>(Ljava/lang/String;[B)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 88
    .line 89
    .line 90
    throw v0

    .line 91
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-nez v1, :cond_4

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Lef/a;

    .line 107
    .line 108
    iget-object v0, v0, Lef/a;->a:[B

    .line 109
    .line 110
    :try_start_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 111
    .line 112
    .line 113
    move-result-object v0
    :try_end_1
    .catch Lgf/e; {:try_start_1 .. :try_end_1} :catch_1

    .line 114
    :try_start_2
    new-instance v1, Lhf/b;

    .line 115
    .line 116
    const/4 v2, 0x0

    .line 117
    invoke-direct {v1, v0, v2}, Lhf/b;-><init>(Ljava/nio/ByteBuffer;I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Lhf/b;->f()La9/a;

    .line 121
    .line 122
    .line 123
    move-result-object v0
    :try_end_2
    .catch Lhf/a; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lgf/e; {:try_start_2 .. :try_end_2} :catch_1

    .line 124
    if-eqz v0, :cond_6

    .line 125
    .line 126
    :try_start_3
    const-class v1, Lif/a;

    .line 127
    .line 128
    invoke-static {v0, v1}, Lgf/c;->g(La9/a;Ljava/lang/Class;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v0
    :try_end_3
    .catch Lgf/e; {:try_start_3 .. :try_end_3} :catch_1

    .line 132
    if-nez v0, :cond_5

    .line 133
    .line 134
    const/4 v0, 0x0

    .line 135
    throw v0

    .line 136
    :cond_5
    :try_start_4
    new-instance v0, Ljava/lang/ClassCastException;

    .line 137
    .line 138
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 139
    .line 140
    .line 141
    throw v0

    .line 142
    :cond_6
    new-instance v0, Lgf/e;

    .line 143
    .line 144
    const-string v1, "Empty input"

    .line 145
    .line 146
    invoke-direct {v0, v1}, Lgf/e;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw v0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    new-instance v1, Lgf/e;

    .line 152
    .line 153
    const-string v2, "Failed to decode top-level data value"

    .line 154
    .line 155
    invoke-direct {v1, v2, v0}, Lgf/e;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 156
    .line 157
    .line 158
    throw v1
    :try_end_4
    .catch Lgf/e; {:try_start_4 .. :try_end_4} :catch_1

    .line 159
    :catch_1
    move-exception v0

    .line 160
    new-instance v1, Ljava/security/cert/CertificateException;

    .line 161
    .line 162
    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    .line 163
    .line 164
    .line 165
    throw v1

    .line 166
    :cond_7
    :goto_1
    iget-object v0, p0, Lef/b;->g:Ljava/util/ArrayList;

    .line 167
    .line 168
    return-object v0
.end method

.method public final K()Ljava/util/ArrayList;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/16 v2, 0x16

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    iget-object v4, v1, Lef/b;->h:Ljava/util/ArrayList;

    .line 8
    .line 9
    if-nez v4, :cond_12

    .line 10
    .line 11
    new-instance v4, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v5, Ljava/io/FileInputStream;

    .line 17
    .line 18
    iget-object v6, v1, Lef/b;->j:Ljava/io/File;

    .line 19
    .line 20
    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 24
    .line 25
    .line 26
    move-result-object v7

    .line 27
    iput-object v7, v1, Lef/b;->k:Ljava/nio/channels/FileChannel;

    .line 28
    .line 29
    sget-object v8, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    .line 30
    .line 31
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    .line 32
    .line 33
    .line 34
    move-result-wide v11

    .line 35
    const-wide/16 v9, 0x0

    .line 36
    .line 37
    invoke-virtual/range {v7 .. v12}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 42
    .line 43
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-lt v6, v2, :cond_11

    .line 52
    .line 53
    add-int/lit8 v7, v6, -0x16

    .line 54
    .line 55
    const/4 v8, 0x0

    .line 56
    move-object v9, v8

    .line 57
    :goto_0
    const v10, 0x19000

    .line 58
    .line 59
    .line 60
    sub-int v10, v6, v10

    .line 61
    .line 62
    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    .line 63
    .line 64
    .line 65
    move-result v10

    .line 66
    const-wide v11, 0xffffffffL

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    if-le v7, v10, :cond_1

    .line 72
    .line 73
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 74
    .line 75
    .line 76
    move-result v10

    .line 77
    const v13, 0x6054b50

    .line 78
    .line 79
    .line 80
    if-ne v10, v13, :cond_0

    .line 81
    .line 82
    add-int/lit8 v9, v7, 0x4

    .line 83
    .line 84
    invoke-virtual {v5, v9}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 85
    .line 86
    .line 87
    new-instance v9, Landroidx/leanback/widget/i;

    .line 88
    .line 89
    const/4 v10, 0x5

    .line 90
    invoke-direct {v9, v10}, Landroidx/leanback/widget/i;-><init>(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    .line 109
    .line 110
    .line 111
    move-result v10

    .line 112
    int-to-long v13, v10

    .line 113
    and-long/2addr v11, v13

    .line 114
    long-to-int v10, v11

    .line 115
    iput v10, v9, Landroidx/leanback/widget/i;->b:I

    .line 116
    .line 117
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    .line 118
    .line 119
    .line 120
    :cond_0
    add-int/lit8 v7, v7, -0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_1
    if-nez v9, :cond_2

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_2
    iget v6, v9, Landroidx/leanback/widget/i;->b:I

    .line 127
    .line 128
    int-to-long v6, v6

    .line 129
    and-long/2addr v6, v11

    .line 130
    const/16 v9, 0x10

    .line 131
    .line 132
    int-to-long v10, v9

    .line 133
    sub-long v10, v6, v10

    .line 134
    .line 135
    invoke-static {v5, v10, v11}, Ls1/g;->P(Ljava/nio/ByteBuffer;J)V

    .line 136
    .line 137
    .line 138
    new-array v10, v9, [B

    .line 139
    .line 140
    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 141
    .line 142
    .line 143
    new-instance v11, Ljava/lang/String;

    .line 144
    .line 145
    invoke-direct {v11, v10}, Ljava/lang/String;-><init>([B)V

    .line 146
    .line 147
    .line 148
    const-string v10, "APK Sig Block 42"

    .line 149
    .line 150
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v10

    .line 154
    if-nez v10, :cond_3

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_3
    const-wide/16 v10, 0x18

    .line 158
    .line 159
    sub-long v10, v6, v10

    .line 160
    .line 161
    invoke-static {v5, v10, v11}, Ls1/g;->P(Ljava/nio/ByteBuffer;J)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getLong()J

    .line 165
    .line 166
    .line 167
    move-result-wide v10

    .line 168
    invoke-static {v10, v11}, Lcom/bumptech/glide/c;->r(J)I

    .line 169
    .line 170
    .line 171
    move-result v10

    .line 172
    int-to-long v11, v10

    .line 173
    sub-long/2addr v6, v11

    .line 174
    const-wide/16 v13, 0x8

    .line 175
    .line 176
    sub-long/2addr v6, v13

    .line 177
    invoke-static {v5, v6, v7}, Ls1/g;->P(Ljava/nio/ByteBuffer;J)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getLong()J

    .line 181
    .line 182
    .line 183
    move-result-wide v6

    .line 184
    const-wide/16 v13, 0x0

    .line 185
    .line 186
    cmp-long v15, v6, v13

    .line 187
    .line 188
    if-ltz v15, :cond_10

    .line 189
    .line 190
    cmp-long v13, v11, v6

    .line 191
    .line 192
    if-eqz v13, :cond_4

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_4
    sub-int/2addr v10, v9

    .line 196
    invoke-static {v5, v10}, Ls1/g;->a0(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    .line 197
    .line 198
    .line 199
    move-result-object v8

    .line 200
    :goto_1
    if-eqz v8, :cond_f

    .line 201
    .line 202
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 203
    .line 204
    invoke-virtual {v8, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    new-instance v6, Ljava/util/ArrayList;

    .line 209
    .line 210
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .line 212
    .line 213
    :cond_5
    :goto_2
    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    .line 214
    .line 215
    .line 216
    move-result v7

    .line 217
    const/16 v8, 0x8

    .line 218
    .line 219
    if-lt v7, v8, :cond_b

    .line 220
    .line 221
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    .line 222
    .line 223
    .line 224
    move-result v7

    .line 225
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    .line 226
    .line 227
    .line 228
    move-result v8

    .line 229
    int-to-long v8, v8

    .line 230
    invoke-static {v8, v9}, Lcom/bumptech/glide/c;->r(J)I

    .line 231
    .line 232
    .line 233
    move-result v8

    .line 234
    const v9, 0x7109871a

    .line 235
    .line 236
    .line 237
    if-ne v7, v9, :cond_a

    .line 238
    .line 239
    invoke-static {v5, v8}, Ls1/g;->a0(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    .line 240
    .line 241
    .line 242
    move-result-object v7

    .line 243
    :goto_3
    invoke-virtual {v7}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 244
    .line 245
    .line 246
    move-result v8

    .line 247
    if-eqz v8, :cond_5

    .line 248
    .line 249
    invoke-static {v7}, Lcom/bumptech/glide/d;->X(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 250
    .line 251
    .line 252
    move-result-object v8

    .line 253
    invoke-static {v8}, Lcom/bumptech/glide/d;->X(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 254
    .line 255
    .line 256
    move-result-object v9

    .line 257
    invoke-static {v9}, Lcom/bumptech/glide/d;->X(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 258
    .line 259
    .line 260
    move-result-object v10

    .line 261
    new-instance v11, Ljava/util/ArrayList;

    .line 262
    .line 263
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .line 265
    .line 266
    :goto_4
    invoke-virtual {v10}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 267
    .line 268
    .line 269
    move-result v12

    .line 270
    if-eqz v12, :cond_6

    .line 271
    .line 272
    invoke-static {v10}, Lcom/bumptech/glide/d;->X(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 273
    .line 274
    .line 275
    move-result-object v12

    .line 276
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->getInt()I

    .line 277
    .line 278
    .line 279
    invoke-virtual {v12}, Ljava/nio/Buffer;->remaining()I

    .line 280
    .line 281
    .line 282
    move-result v13

    .line 283
    new-array v13, v13, [B

    .line 284
    .line 285
    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 286
    .line 287
    .line 288
    new-instance v12, Lha/l2;

    .line 289
    .line 290
    invoke-direct {v12, v2}, Lha/l2;-><init>(I)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    goto :goto_4

    .line 297
    :cond_6
    invoke-static {v9}, Lcom/bumptech/glide/d;->X(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 298
    .line 299
    .line 300
    move-result-object v10

    .line 301
    const-string v11, "X.509"

    .line 302
    .line 303
    invoke-static {v11}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 304
    .line 305
    .line 306
    move-result-object v11

    .line 307
    new-instance v12, Ljava/util/ArrayList;

    .line 308
    .line 309
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .line 311
    .line 312
    :goto_5
    invoke-virtual {v10}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 313
    .line 314
    .line 315
    move-result v13

    .line 316
    if-eqz v13, :cond_7

    .line 317
    .line 318
    invoke-static {v10}, Lcom/bumptech/glide/d;->X(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 319
    .line 320
    .line 321
    move-result-object v13

    .line 322
    new-instance v14, Ljava/io/ByteArrayInputStream;

    .line 323
    .line 324
    invoke-virtual {v13}, Ljava/nio/Buffer;->remaining()I

    .line 325
    .line 326
    .line 327
    move-result v15

    .line 328
    new-array v15, v15, [B

    .line 329
    .line 330
    invoke-virtual {v13, v15}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 331
    .line 332
    .line 333
    invoke-direct {v14, v15}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v11, v14}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 337
    .line 338
    .line 339
    move-result-object v13

    .line 340
    check-cast v13, Ljava/security/cert/X509Certificate;

    .line 341
    .line 342
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    goto :goto_5

    .line 346
    :cond_7
    invoke-static {v9}, Lcom/bumptech/glide/d;->X(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 347
    .line 348
    .line 349
    move-result-object v9

    .line 350
    :goto_6
    invoke-virtual {v9}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 351
    .line 352
    .line 353
    move-result v10

    .line 354
    if-eqz v10, :cond_8

    .line 355
    .line 356
    invoke-static {v9}, Lcom/bumptech/glide/d;->X(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 357
    .line 358
    .line 359
    move-result-object v10

    .line 360
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    .line 361
    .line 362
    .line 363
    goto :goto_6

    .line 364
    :cond_8
    invoke-static {v8}, Lcom/bumptech/glide/d;->X(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 365
    .line 366
    .line 367
    move-result-object v9

    .line 368
    new-instance v10, Ljava/util/ArrayList;

    .line 369
    .line 370
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .line 372
    .line 373
    :goto_7
    invoke-virtual {v9}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 374
    .line 375
    .line 376
    move-result v11

    .line 377
    if-eqz v11, :cond_9

    .line 378
    .line 379
    invoke-static {v9}, Lcom/bumptech/glide/d;->X(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 380
    .line 381
    .line 382
    move-result-object v11

    .line 383
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    .line 384
    .line 385
    .line 386
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    .line 387
    .line 388
    .line 389
    move-result v13

    .line 390
    int-to-long v13, v13

    .line 391
    invoke-static {v13, v14}, Lcom/bumptech/glide/c;->r(J)I

    .line 392
    .line 393
    .line 394
    move-result v13

    .line 395
    new-array v13, v13, [B

    .line 396
    .line 397
    invoke-virtual {v11, v13}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 398
    .line 399
    .line 400
    new-instance v11, Lha/j2;

    .line 401
    .line 402
    const/16 v13, 0x17

    .line 403
    .line 404
    invoke-direct {v11, v13}, Lha/j2;-><init>(I)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    .line 409
    .line 410
    goto :goto_7

    .line 411
    :cond_9
    invoke-static {v8}, Lcom/bumptech/glide/d;->X(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 412
    .line 413
    .line 414
    new-instance v8, Lnf/a;

    .line 415
    .line 416
    invoke-direct {v8, v12}, Lnf/a;-><init>(Ljava/util/ArrayList;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    goto/16 :goto_3

    .line 423
    .line 424
    :cond_a
    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    .line 425
    .line 426
    .line 427
    move-result v7

    .line 428
    add-int/2addr v7, v8

    .line 429
    invoke-virtual {v5, v7}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 430
    .line 431
    .line 432
    goto/16 :goto_2

    .line 433
    .line 434
    :cond_b
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 435
    .line 436
    .line 437
    move-result-object v2

    .line 438
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 439
    .line 440
    .line 441
    move-result v5

    .line 442
    if-eqz v5, :cond_f

    .line 443
    .line 444
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v5

    .line 448
    check-cast v5, Lnf/a;

    .line 449
    .line 450
    iget-object v5, v5, Lnf/a;->a:Ljava/util/ArrayList;

    .line 451
    .line 452
    const-string v6, "md5"

    .line 453
    .line 454
    new-instance v7, Ljava/util/ArrayList;

    .line 455
    .line 456
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 457
    .line 458
    .line 459
    move-result v8

    .line 460
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 464
    .line 465
    .line 466
    move-result-object v5

    .line 467
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 468
    .line 469
    .line 470
    move-result v8

    .line 471
    if-eqz v8, :cond_e

    .line 472
    .line 473
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v8

    .line 477
    check-cast v8, Ljava/security/cert/X509Certificate;

    .line 478
    .line 479
    invoke-virtual {v8}, Ljava/security/cert/Certificate;->getEncoded()[B

    .line 480
    .line 481
    .line 482
    move-result-object v9

    .line 483
    :try_start_0
    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 484
    .line 485
    .line 486
    move-result-object v10
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 487
    invoke-virtual {v10, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    .line 491
    .line 492
    .line 493
    move-result-object v10

    .line 494
    new-instance v11, Ljava/math/BigInteger;

    .line 495
    .line 496
    invoke-direct {v11, v3, v10}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 497
    .line 498
    .line 499
    new-array v10, v3, [Ljava/lang/Object;

    .line 500
    .line 501
    aput-object v11, v10, v0

    .line 502
    .line 503
    const-string v11, "%032x"

    .line 504
    .line 505
    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v17

    .line 509
    new-instance v10, Ljava/lang/StringBuilder;

    .line 510
    .line 511
    array-length v12, v9

    .line 512
    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 513
    .line 514
    .line 515
    array-length v12, v9

    .line 516
    const/4 v13, 0x0

    .line 517
    :goto_a
    if-ge v13, v12, :cond_d

    .line 518
    .line 519
    aget-byte v14, v9, v13

    .line 520
    .line 521
    int-to-char v14, v14

    .line 522
    and-int/lit16 v14, v14, 0xff

    .line 523
    .line 524
    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v14

    .line 528
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 529
    .line 530
    .line 531
    move-result v15

    .line 532
    const/4 v3, 0x2

    .line 533
    if-ge v15, v3, :cond_c

    .line 534
    .line 535
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    :cond_c
    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v3

    .line 542
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    const/4 v3, 0x1

    .line 546
    add-int/2addr v13, v3

    .line 547
    goto :goto_a

    .line 548
    :cond_d
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v3

    .line 552
    :try_start_1
    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 553
    .line 554
    .line 555
    move-result-object v9
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 556
    sget-object v10, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 557
    .line 558
    invoke-virtual {v3, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 559
    .line 560
    .line 561
    move-result-object v3

    .line 562
    invoke-virtual {v9, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v9}, Ljava/security/MessageDigest;->digest()[B

    .line 566
    .line 567
    .line 568
    move-result-object v3

    .line 569
    new-instance v9, Ljava/math/BigInteger;

    .line 570
    .line 571
    const/4 v10, 0x1

    .line 572
    invoke-direct {v9, v10, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 573
    .line 574
    .line 575
    new-array v3, v10, [Ljava/lang/Object;

    .line 576
    .line 577
    aput-object v9, v3, v0

    .line 578
    .line 579
    invoke-static {v11, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v16

    .line 583
    new-instance v3, Lff/e;

    .line 584
    .line 585
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v9

    .line 589
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v13

    .line 593
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    .line 597
    .line 598
    .line 599
    move-result-object v14

    .line 600
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    .line 601
    .line 602
    .line 603
    move-result-object v15

    .line 604
    move-object v12, v3

    .line 605
    invoke-direct/range {v12 .. v17}, Lff/e;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    .line 610
    .line 611
    const/4 v3, 0x1

    .line 612
    goto/16 :goto_9

    .line 613
    .line 614
    :catch_0
    move-exception v0

    .line 615
    move-object v2, v0

    .line 616
    new-instance v0, Ljava/lang/RuntimeException;

    .line 617
    .line 618
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object v2

    .line 622
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 623
    .line 624
    .line 625
    throw v0

    .line 626
    :catch_1
    move-exception v0

    .line 627
    move-object v2, v0

    .line 628
    new-instance v0, Ljava/lang/RuntimeException;

    .line 629
    .line 630
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v2

    .line 634
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 635
    .line 636
    .line 637
    throw v0

    .line 638
    :cond_e
    const/4 v10, 0x1

    .line 639
    new-instance v3, Lff/d;

    .line 640
    .line 641
    invoke-direct {v3, v7}, Lff/d;-><init>(Ljava/util/ArrayList;)V

    .line 642
    .line 643
    .line 644
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    .line 646
    .line 647
    const/4 v3, 0x1

    .line 648
    goto/16 :goto_8

    .line 649
    .line 650
    :cond_f
    iput-object v4, v1, Lef/b;->h:Ljava/util/ArrayList;

    .line 651
    .line 652
    goto :goto_b

    .line 653
    :cond_10
    new-instance v0, Ljava/lang/ArithmeticException;

    .line 654
    .line 655
    const-string v2, "unsigned long overflow"

    .line 656
    .line 657
    invoke-direct {v0, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 658
    .line 659
    .line 660
    throw v0

    .line 661
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    .line 662
    .line 663
    const-string v2, "Not zip file"

    .line 664
    .line 665
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 666
    .line 667
    .line 668
    throw v0

    .line 669
    :cond_12
    :goto_b
    iget-object v0, v1, Lef/b;->h:Ljava/util/ArrayList;

    .line 670
    .line 671
    return-object v0
.end method

.method public final L(Ljava/lang/String;)[B
    .locals 1

    .line 1
    iget-object v0, p0, Lef/b;->i:Ljava/util/zip/ZipFile;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :try_start_0
    invoke-static {p1}, La9/o;->Z(Ljava/io/InputStream;)[B

    .line 16
    .line 17
    .line 18
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method public final M()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-boolean v1, p0, Lef/b;->c:Z

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Lef/b;->N()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lkf/f;

    .line 11
    .line 12
    invoke-direct {v1}, Lkf/f;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lg3/j;

    .line 16
    .line 17
    iget-object v3, p0, Lef/b;->b:Lmf/h;

    .line 18
    .line 19
    invoke-direct {v2, v3}, Lg3/j;-><init>(Lmf/h;)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Lh5/m;

    .line 23
    .line 24
    const/4 v4, 0x2

    .line 25
    new-array v4, v4, [Lkf/e;

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    aput-object v1, v4, v5

    .line 29
    .line 30
    aput-object v2, v4, v0

    .line 31
    .line 32
    const/16 v5, 0x1b

    .line 33
    .line 34
    invoke-direct {v3, v5, v4}, Lh5/m;-><init>(ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const-string v4, "AndroidManifest.xml"

    .line 38
    .line 39
    invoke-virtual {p0, v4}, Lef/b;->L(Ljava/lang/String;)[B

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0, v4, v3}, Lef/b;->O([BLkf/e;)V

    .line 46
    .line 47
    .line 48
    iget-object v1, v1, Lkf/f;->d:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iput-object v1, p0, Lef/b;->d:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v1, v2, Lg3/j;->c:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v1, Lff/b;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    new-instance v3, Lff/c;

    .line 66
    .line 67
    invoke-direct {v3, v1}, Lff/c;-><init>(Lff/b;)V

    .line 68
    .line 69
    .line 70
    iput-object v3, p0, Lef/b;->e:Lff/c;

    .line 71
    .line 72
    iget-object v1, v2, Lg3/j;->d:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v1, Ljava/util/List;

    .line 75
    .line 76
    iput-object v1, p0, Lef/b;->f:Ljava/util/List;

    .line 77
    .line 78
    iput-boolean v0, p0, Lef/b;->c:Z

    .line 79
    .line 80
    return-void

    .line 81
    :cond_1
    new-instance v0, Landroidx/fragment/app/b0;

    .line 82
    .line 83
    const-string v1, "Manifest file not found"

    .line 84
    .line 85
    const/4 v2, 0x6

    .line 86
    invoke-direct {v0, v1, v2}, Landroidx/fragment/app/b0;-><init>(Ljava/lang/String;I)V

    .line 87
    .line 88
    .line 89
    throw v0
.end method

.method public final N()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lef/b;->a:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lef/b;->a:Z

    .line 10
    .line 11
    const-string v2, "resources.arsc"

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Lef/b;->L(Ljava/lang/String;)[B

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    new-instance v1, Lmf/h;

    .line 20
    .line 21
    invoke-direct {v1}, Lmf/h;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, v0, Lef/b;->b:Lmf/h;

    .line 25
    .line 26
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    new-instance v3, Lkf/b;

    .line 35
    .line 36
    invoke-direct {v3, v2}, Lkf/b;-><init>(Ljava/nio/ByteBuffer;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Lkf/b;->a()Llf/a;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lmf/i;

    .line 44
    .line 45
    invoke-virtual {v3}, Lkf/b;->a()Llf/a;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Llf/g;

    .line 50
    .line 51
    iget-object v5, v3, Lkf/b;->d:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v5, Ljava/nio/ByteBuffer;

    .line 54
    .line 55
    invoke-static {v5, v4}, Lqf/b;->c(Ljava/nio/ByteBuffer;Llf/g;)Ll2/l0;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    iput-object v4, v3, Lkf/b;->c:Ljava/lang/Object;

    .line 60
    .line 61
    new-instance v4, Lmf/h;

    .line 62
    .line 63
    invoke-direct {v4}, Lmf/h;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v4, v3, Lkf/b;->e:Ljava/lang/Object;

    .line 67
    .line 68
    invoke-virtual {v3}, Lkf/b;->a()Llf/a;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    check-cast v4, Lmf/c;

    .line 73
    .line 74
    const/4 v7, 0x0

    .line 75
    :goto_0
    int-to-long v8, v7

    .line 76
    iget v10, v2, Lmf/i;->d:I

    .line 77
    .line 78
    int-to-long v10, v10

    .line 79
    const-wide v12, 0xffffffffL

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    and-long/2addr v10, v12

    .line 85
    cmp-long v14, v8, v10

    .line 86
    .line 87
    if-gez v14, :cond_c

    .line 88
    .line 89
    new-instance v8, Lmf/f;

    .line 90
    .line 91
    invoke-direct {v8, v4}, Lmf/f;-><init>(Lmf/c;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    int-to-long v9, v9

    .line 99
    iget v11, v4, Lmf/c;->e:I

    .line 100
    .line 101
    iget-short v14, v4, Llf/a;->b:S

    .line 102
    .line 103
    if-lez v11, :cond_2

    .line 104
    .line 105
    move v15, v7

    .line 106
    int-to-long v6, v11

    .line 107
    add-long/2addr v6, v9

    .line 108
    move-object/from16 v16, v2

    .line 109
    .line 110
    int-to-long v1, v14

    .line 111
    sub-long/2addr v6, v1

    .line 112
    invoke-static {v5, v6, v7}, Ls1/g;->P(Ljava/nio/ByteBuffer;J)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3}, Lkf/b;->a()Llf/a;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    check-cast v1, Llf/g;

    .line 120
    .line 121
    invoke-static {v5, v1}, Lqf/b;->c(Ljava/nio/ByteBuffer;Llf/g;)Ll2/l0;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    iput-object v1, v8, Lmf/f;->b:Ll2/l0;

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_2
    move-object/from16 v16, v2

    .line 129
    .line 130
    move v15, v7

    .line 131
    :goto_1
    iget v1, v4, Lmf/c;->f:I

    .line 132
    .line 133
    if-lez v1, :cond_3

    .line 134
    .line 135
    int-to-long v1, v1

    .line 136
    add-long/2addr v9, v1

    .line 137
    int-to-long v1, v14

    .line 138
    sub-long/2addr v9, v1

    .line 139
    invoke-static {v5, v9, v10}, Ls1/g;->P(Ljava/nio/ByteBuffer;J)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3}, Lkf/b;->a()Llf/a;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    check-cast v1, Llf/g;

    .line 147
    .line 148
    invoke-static {v5, v1}, Lqf/b;->c(Ljava/nio/ByteBuffer;Llf/g;)Ll2/l0;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    iput-object v1, v8, Lmf/f;->c:Ll2/l0;

    .line 153
    .line 154
    :cond_3
    :goto_2
    invoke-virtual {v5}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-eqz v1, :cond_b

    .line 159
    .line 160
    invoke-virtual {v3}, Lkf/b;->a()Llf/a;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    int-to-long v6, v2

    .line 169
    iget-short v2, v1, Llf/a;->a:S

    .line 170
    .line 171
    if-eqz v2, :cond_a

    .line 172
    .line 173
    packed-switch v2, :pswitch_data_0

    .line 174
    .line 175
    .line 176
    new-instance v1, Landroidx/fragment/app/b0;

    .line 177
    .line 178
    const-string v3, "unexpected chunk type: 0x"

    .line 179
    .line 180
    invoke-static {v2, v3}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    const/4 v3, 0x6

    .line 185
    invoke-direct {v1, v2, v3}, Landroidx/fragment/app/b0;-><init>(Ljava/lang/String;I)V

    .line 186
    .line 187
    .line 188
    throw v1

    .line 189
    :pswitch_0
    move-object v2, v1

    .line 190
    check-cast v2, Lmf/a;

    .line 191
    .line 192
    const-wide/16 v9, 0x0

    .line 193
    .line 194
    :goto_3
    iget v4, v2, Lmf/a;->d:I

    .line 195
    .line 196
    int-to-long v11, v4

    .line 197
    cmp-long v4, v9, v11

    .line 198
    .line 199
    if-gez v4, :cond_6

    .line 200
    .line 201
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    .line 202
    .line 203
    .line 204
    const/4 v4, 0x0

    .line 205
    :goto_4
    const/16 v11, 0x80

    .line 206
    .line 207
    if-ge v4, v11, :cond_5

    .line 208
    .line 209
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getChar()C

    .line 210
    .line 211
    .line 212
    move-result v11

    .line 213
    if-nez v11, :cond_4

    .line 214
    .line 215
    rsub-int/lit8 v4, v4, 0x7f

    .line 216
    .line 217
    mul-int/lit8 v4, v4, 0x2

    .line 218
    .line 219
    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    .line 220
    .line 221
    .line 222
    move-result v11

    .line 223
    add-int/2addr v11, v4

    .line 224
    invoke-virtual {v5, v11}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 225
    .line 226
    .line 227
    goto :goto_5

    .line 228
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 229
    .line 230
    goto :goto_4

    .line 231
    :cond_5
    :goto_5
    const-wide/16 v11, 0x1

    .line 232
    .line 233
    add-long/2addr v9, v11

    .line 234
    const-wide v12, 0xffffffffL

    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_6
    invoke-virtual {v1}, Llf/a;->a()I

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    int-to-long v1, v1

    .line 245
    add-long/2addr v6, v1

    .line 246
    invoke-static {v5, v6, v7}, Ls1/g;->P(Ljava/nio/ByteBuffer;J)V

    .line 247
    .line 248
    .line 249
    goto/16 :goto_9

    .line 250
    .line 251
    :pswitch_1
    check-cast v1, Lmf/m;

    .line 252
    .line 253
    iget v2, v1, Lmf/m;->e:I

    .line 254
    .line 255
    new-array v2, v2, [J

    .line 256
    .line 257
    const/4 v4, 0x0

    .line 258
    :goto_6
    iget v9, v1, Lmf/m;->e:I

    .line 259
    .line 260
    if-ge v4, v9, :cond_7

    .line 261
    .line 262
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    .line 263
    .line 264
    .line 265
    move-result v9

    .line 266
    int-to-long v9, v9

    .line 267
    const-wide v11, 0xffffffffL

    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    and-long/2addr v9, v11

    .line 273
    aput-wide v9, v2, v4

    .line 274
    .line 275
    add-int/lit8 v4, v4, 0x1

    .line 276
    .line 277
    goto :goto_6

    .line 278
    :cond_7
    new-instance v4, Lmf/l;

    .line 279
    .line 280
    invoke-direct {v4, v1}, Lmf/l;-><init>(Lmf/m;)V

    .line 281
    .line 282
    .line 283
    iput-object v2, v4, Lmf/l;->a:[J

    .line 284
    .line 285
    iget-object v2, v8, Lmf/f;->b:Ll2/l0;

    .line 286
    .line 287
    iget-byte v9, v1, Lmf/m;->d:B

    .line 288
    .line 289
    and-int/lit16 v9, v9, 0xff

    .line 290
    .line 291
    int-to-short v9, v9

    .line 292
    const/4 v10, 0x1

    .line 293
    sub-int/2addr v9, v10

    .line 294
    iget-object v2, v2, Ll2/l0;->a:[Ljava/lang/String;

    .line 295
    .line 296
    aget-object v2, v2, v9

    .line 297
    .line 298
    iput-object v2, v4, Lmf/l;->b:Ljava/lang/String;

    .line 299
    .line 300
    iget-object v2, v8, Lmf/f;->d:Ljava/util/HashMap;

    .line 301
    .line 302
    iget-short v9, v4, Lmf/l;->c:S

    .line 303
    .line 304
    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 305
    .line 306
    .line 307
    move-result-object v9

    .line 308
    invoke-virtual {v2, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v1}, Llf/a;->a()I

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    int-to-long v1, v1

    .line 316
    add-long/2addr v6, v1

    .line 317
    invoke-static {v5, v6, v7}, Ls1/g;->P(Ljava/nio/ByteBuffer;J)V

    .line 318
    .line 319
    .line 320
    goto/16 :goto_9

    .line 321
    .line 322
    :pswitch_2
    check-cast v1, Lmf/k;

    .line 323
    .line 324
    iget v2, v1, Lmf/k;->e:I

    .line 325
    .line 326
    new-array v2, v2, [J

    .line 327
    .line 328
    const/4 v4, 0x0

    .line 329
    :goto_7
    iget v9, v1, Lmf/k;->e:I

    .line 330
    .line 331
    if-ge v4, v9, :cond_8

    .line 332
    .line 333
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    .line 334
    .line 335
    .line 336
    move-result v9

    .line 337
    int-to-long v9, v9

    .line 338
    const-wide v12, 0xffffffffL

    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    and-long/2addr v9, v12

    .line 344
    aput-wide v9, v2, v4

    .line 345
    .line 346
    add-int/lit8 v4, v4, 0x1

    .line 347
    .line 348
    goto :goto_7

    .line 349
    :cond_8
    const-wide v12, 0xffffffffL

    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    new-instance v4, Lmf/j;

    .line 355
    .line 356
    invoke-direct {v4, v1}, Lmf/j;-><init>(Lmf/k;)V

    .line 357
    .line 358
    .line 359
    iget-object v9, v8, Lmf/f;->b:Ll2/l0;

    .line 360
    .line 361
    iget-byte v10, v1, Lmf/k;->d:B

    .line 362
    .line 363
    and-int/lit16 v10, v10, 0xff

    .line 364
    .line 365
    int-to-short v10, v10

    .line 366
    const/4 v11, 0x1

    .line 367
    sub-int/2addr v10, v11

    .line 368
    iget-object v9, v9, Ll2/l0;->a:[Ljava/lang/String;

    .line 369
    .line 370
    aget-object v9, v9, v10

    .line 371
    .line 372
    iput-object v9, v4, Lmf/j;->a:Ljava/lang/String;

    .line 373
    .line 374
    iget v9, v1, Lmf/k;->f:I

    .line 375
    .line 376
    int-to-long v9, v9

    .line 377
    add-long/2addr v9, v6

    .line 378
    iget-short v14, v1, Llf/a;->b:S

    .line 379
    .line 380
    int-to-long v11, v14

    .line 381
    sub-long/2addr v9, v11

    .line 382
    invoke-static {v5, v9, v10}, Ls1/g;->P(Ljava/nio/ByteBuffer;J)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 386
    .line 387
    .line 388
    move-result-object v9

    .line 389
    iget-object v10, v3, Lkf/b;->b:Ljava/lang/Object;

    .line 390
    .line 391
    check-cast v10, Ljava/nio/ByteOrder;

    .line 392
    .line 393
    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 394
    .line 395
    .line 396
    iput-object v9, v4, Lmf/j;->e:Ljava/nio/ByteBuffer;

    .line 397
    .line 398
    iget-object v9, v8, Lmf/f;->c:Ll2/l0;

    .line 399
    .line 400
    iput-object v9, v4, Lmf/j;->d:Ll2/l0;

    .line 401
    .line 402
    iput-object v2, v4, Lmf/j;->f:[J

    .line 403
    .line 404
    iget-object v2, v3, Lkf/b;->c:Ljava/lang/Object;

    .line 405
    .line 406
    check-cast v2, Ll2/l0;

    .line 407
    .line 408
    iput-object v2, v4, Lmf/j;->g:Ll2/l0;

    .line 409
    .line 410
    iget-object v2, v8, Lmf/f;->e:Ljava/util/HashMap;

    .line 411
    .line 412
    iget-short v9, v4, Lmf/j;->b:S

    .line 413
    .line 414
    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 415
    .line 416
    .line 417
    move-result-object v9

    .line 418
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v9

    .line 422
    check-cast v9, Ljava/util/List;

    .line 423
    .line 424
    if-nez v9, :cond_9

    .line 425
    .line 426
    new-instance v9, Ljava/util/ArrayList;

    .line 427
    .line 428
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .line 430
    .line 431
    iget-short v10, v4, Lmf/j;->b:S

    .line 432
    .line 433
    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 434
    .line 435
    .line 436
    move-result-object v10

    .line 437
    invoke-virtual {v2, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    :cond_9
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    iget-object v2, v3, Lkf/b;->f:Ljava/lang/Object;

    .line 444
    .line 445
    check-cast v2, Ljava/util/HashSet;

    .line 446
    .line 447
    iget-object v4, v4, Lmf/j;->c:Ljava/util/Locale;

    .line 448
    .line 449
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    invoke-virtual {v1}, Llf/a;->a()I

    .line 453
    .line 454
    .line 455
    move-result v1

    .line 456
    int-to-long v1, v1

    .line 457
    add-long/2addr v6, v1

    .line 458
    invoke-static {v5, v6, v7}, Ls1/g;->P(Ljava/nio/ByteBuffer;J)V

    .line 459
    .line 460
    .line 461
    goto :goto_9

    .line 462
    :pswitch_3
    check-cast v1, Lmf/c;

    .line 463
    .line 464
    :goto_8
    move-object v4, v1

    .line 465
    goto :goto_a

    .line 466
    :cond_a
    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    .line 467
    .line 468
    .line 469
    move-result v1

    .line 470
    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    .line 471
    .line 472
    .line 473
    move-result v2

    .line 474
    add-int/2addr v2, v1

    .line 475
    invoke-virtual {v5, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 476
    .line 477
    .line 478
    :goto_9
    const-wide v12, 0xffffffffL

    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    goto/16 :goto_2

    .line 484
    .line 485
    :cond_b
    const/4 v1, 0x0

    .line 486
    goto :goto_8

    .line 487
    :goto_a
    iget-object v1, v3, Lkf/b;->e:Ljava/lang/Object;

    .line 488
    .line 489
    check-cast v1, Lmf/h;

    .line 490
    .line 491
    iget-object v1, v1, Lmf/h;->a:Ljava/util/HashMap;

    .line 492
    .line 493
    iget-short v2, v8, Lmf/f;->a:S

    .line 494
    .line 495
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 496
    .line 497
    .line 498
    move-result-object v2

    .line 499
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    add-int/lit8 v7, v15, 0x1

    .line 503
    .line 504
    move-object/from16 v2, v16

    .line 505
    .line 506
    const/4 v1, 0x1

    .line 507
    goto/16 :goto_0

    .line 508
    .line 509
    :cond_c
    iget-object v1, v3, Lkf/b;->e:Ljava/lang/Object;

    .line 510
    .line 511
    check-cast v1, Lmf/h;

    .line 512
    .line 513
    iput-object v1, v0, Lef/b;->b:Lmf/h;

    .line 514
    .line 515
    return-void

    .line 516
    nop

    .line 517
    :pswitch_data_0
    .packed-switch 0x200
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final O([BLkf/e;)V
    .locals 17

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    invoke-virtual/range {p0 .. p0}, Lef/b;->N()V

    .line 6
    .line 7
    .line 8
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    new-instance v5, Lkf/a;

    .line 13
    .line 14
    move-object/from16 v6, p0

    .line 15
    .line 16
    iget-object v7, v6, Lef/b;->b:Lmf/h;

    .line 17
    .line 18
    invoke-direct {v5, v4, v7}, Lkf/a;-><init>(Ljava/nio/ByteBuffer;Lmf/h;)V

    .line 19
    .line 20
    .line 21
    sget-object v4, Lef/b;->l:Ljava/util/Locale;

    .line 22
    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    iput-object v4, v5, Lkf/a;->f:Ljava/util/Locale;

    .line 26
    .line 27
    :cond_0
    move-object/from16 v4, p2

    .line 28
    .line 29
    iput-object v4, v5, Lkf/a;->d:Lkf/e;

    .line 30
    .line 31
    invoke-virtual {v5}, Lkf/a;->b()Llf/a;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    if-nez v4, :cond_1

    .line 36
    .line 37
    goto/16 :goto_8

    .line 38
    .line 39
    :cond_1
    invoke-virtual {v5}, Lkf/a;->b()Llf/a;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    if-nez v4, :cond_2

    .line 44
    .line 45
    goto/16 :goto_8

    .line 46
    .line 47
    :cond_2
    sget-object v7, Lqf/b;->a:Ljava/nio/charset/Charset;

    .line 48
    .line 49
    iget-short v7, v4, Llf/a;->a:S

    .line 50
    .line 51
    if-ne v3, v7, :cond_1d

    .line 52
    .line 53
    check-cast v4, Llf/g;

    .line 54
    .line 55
    iget-object v7, v5, Lkf/a;->c:Ljava/nio/ByteBuffer;

    .line 56
    .line 57
    invoke-static {v7, v4}, Lqf/b;->c(Ljava/nio/ByteBuffer;Llf/g;)Ll2/l0;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    iput-object v4, v5, Lkf/a;->a:Ll2/l0;

    .line 62
    .line 63
    invoke-virtual {v5}, Lkf/a;->b()Llf/a;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    if-nez v4, :cond_3

    .line 68
    .line 69
    goto/16 :goto_8

    .line 70
    .line 71
    :cond_3
    iget-short v8, v4, Llf/a;->a:S

    .line 72
    .line 73
    const/16 v9, 0x180

    .line 74
    .line 75
    if-ne v8, v9, :cond_7

    .line 76
    .line 77
    check-cast v4, Lof/b;

    .line 78
    .line 79
    invoke-virtual {v4}, Llf/a;->a()I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    div-int/2addr v4, v1

    .line 84
    new-array v8, v4, [J

    .line 85
    .line 86
    const/4 v9, 0x0

    .line 87
    :goto_0
    if-ge v9, v4, :cond_4

    .line 88
    .line 89
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    .line 90
    .line 91
    .line 92
    move-result v10

    .line 93
    int-to-long v10, v10

    .line 94
    const-wide v12, 0xffffffffL

    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    and-long/2addr v10, v12

    .line 100
    aput-wide v10, v8, v9

    .line 101
    .line 102
    add-int/2addr v9, v3

    .line 103
    goto :goto_0

    .line 104
    :cond_4
    new-array v9, v4, [Ljava/lang/String;

    .line 105
    .line 106
    iput-object v9, v5, Lkf/a;->b:[Ljava/lang/String;

    .line 107
    .line 108
    const/4 v9, 0x0

    .line 109
    :goto_1
    if-ge v9, v4, :cond_6

    .line 110
    .line 111
    iget-object v10, v5, Lkf/a;->b:[Ljava/lang/String;

    .line 112
    .line 113
    aget-wide v11, v8, v9

    .line 114
    .line 115
    sget-object v13, Lof/a;->a:Ljava/util/HashMap;

    .line 116
    .line 117
    long-to-int v14, v11

    .line 118
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v14

    .line 122
    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v13

    .line 126
    check-cast v13, Ljava/lang/String;

    .line 127
    .line 128
    if-nez v13, :cond_5

    .line 129
    .line 130
    new-instance v13, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v14, "AttrId:0x"

    .line 133
    .line 134
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-static {v11, v12}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v11

    .line 141
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v13

    .line 148
    :cond_5
    aput-object v13, v10, v9

    .line 149
    .line 150
    add-int/2addr v9, v3

    .line 151
    goto :goto_1

    .line 152
    :cond_6
    invoke-virtual {v5}, Lkf/a;->b()Llf/a;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    :cond_7
    :goto_2
    if-eqz v4, :cond_1c

    .line 157
    .line 158
    invoke-virtual {v7}, Ljava/nio/Buffer;->position()I

    .line 159
    .line 160
    .line 161
    move-result v8

    .line 162
    int-to-long v8, v8

    .line 163
    iget-short v10, v4, Llf/a;->a:S

    .line 164
    .line 165
    packed-switch v10, :pswitch_data_0

    .line 166
    .line 167
    .line 168
    const/16 v11, 0x100

    .line 169
    .line 170
    if-lt v10, v11, :cond_8

    .line 171
    .line 172
    const/16 v11, 0x17f

    .line 173
    .line 174
    if-gt v10, v11, :cond_8

    .line 175
    .line 176
    invoke-virtual {v4}, Llf/a;->a()I

    .line 177
    .line 178
    .line 179
    move-result v10

    .line 180
    invoke-virtual {v7}, Ljava/nio/Buffer;->position()I

    .line 181
    .line 182
    .line 183
    move-result v11

    .line 184
    add-int/2addr v11, v10

    .line 185
    invoke-virtual {v7, v11}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 186
    .line 187
    .line 188
    goto/16 :goto_7

    .line 189
    .line 190
    :cond_8
    new-instance v1, Landroidx/fragment/app/b0;

    .line 191
    .line 192
    const-string v2, "Unexpected chunk type:"

    .line 193
    .line 194
    invoke-static {v10, v2}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-direct {v1, v2, v0}, Landroidx/fragment/app/b0;-><init>(Ljava/lang/String;I)V

    .line 199
    .line 200
    .line 201
    throw v1

    .line 202
    :pswitch_0
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    .line 203
    .line 204
    .line 205
    move-result v10

    .line 206
    if-lez v10, :cond_9

    .line 207
    .line 208
    iget-object v11, v5, Lkf/a;->a:Ll2/l0;

    .line 209
    .line 210
    iget-object v11, v11, Ll2/l0;->a:[Ljava/lang/String;

    .line 211
    .line 212
    aget-object v10, v11, v10

    .line 213
    .line 214
    :cond_9
    iget-object v10, v5, Lkf/a;->a:Ll2/l0;

    .line 215
    .line 216
    invoke-static {v7, v10}, Lqf/b;->b(Ljava/nio/ByteBuffer;Ll2/l0;)Lab/a;

    .line 217
    .line 218
    .line 219
    goto/16 :goto_7

    .line 220
    .line 221
    :pswitch_1
    new-instance v10, Lba/h;

    .line 222
    .line 223
    const/4 v11, 0x5

    .line 224
    invoke-direct {v10, v11}, Lba/h;-><init>(I)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    .line 228
    .line 229
    .line 230
    move-result v11

    .line 231
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    .line 232
    .line 233
    .line 234
    move-result v12

    .line 235
    if-lez v11, :cond_a

    .line 236
    .line 237
    iget-object v13, v5, Lkf/a;->a:Ll2/l0;

    .line 238
    .line 239
    iget-object v13, v13, Ll2/l0;->a:[Ljava/lang/String;

    .line 240
    .line 241
    aget-object v11, v13, v11

    .line 242
    .line 243
    iput-object v11, v10, Lba/h;->b:Ljava/lang/String;

    .line 244
    .line 245
    :cond_a
    iget-object v11, v5, Lkf/a;->a:Ll2/l0;

    .line 246
    .line 247
    iget-object v11, v11, Ll2/l0;->a:[Ljava/lang/String;

    .line 248
    .line 249
    aget-object v11, v11, v12

    .line 250
    .line 251
    iput-object v11, v10, Lba/h;->c:Ljava/lang/String;

    .line 252
    .line 253
    iget-object v11, v5, Lkf/a;->d:Lkf/e;

    .line 254
    .line 255
    if-eqz v11, :cond_1b

    .line 256
    .line 257
    invoke-interface {v11, v10}, Lkf/e;->f(Lba/h;)V

    .line 258
    .line 259
    .line 260
    goto/16 :goto_7

    .line 261
    .line 262
    :pswitch_2
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    .line 263
    .line 264
    .line 265
    move-result v10

    .line 266
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    .line 267
    .line 268
    .line 269
    move-result v11

    .line 270
    new-instance v12, Lv3/f;

    .line 271
    .line 272
    const/16 v13, 0x18

    .line 273
    .line 274
    invoke-direct {v12, v13, v2}, Lv3/f;-><init>(IC)V

    .line 275
    .line 276
    .line 277
    if-lez v10, :cond_b

    .line 278
    .line 279
    iget-object v13, v5, Lkf/a;->a:Ll2/l0;

    .line 280
    .line 281
    iget-object v13, v13, Ll2/l0;->a:[Ljava/lang/String;

    .line 282
    .line 283
    aget-object v10, v13, v10

    .line 284
    .line 285
    iput-object v10, v12, Lv3/f;->b:Ljava/lang/Object;

    .line 286
    .line 287
    :cond_b
    iget-object v10, v5, Lkf/a;->a:Ll2/l0;

    .line 288
    .line 289
    iget-object v10, v10, Ll2/l0;->a:[Ljava/lang/String;

    .line 290
    .line 291
    aget-object v10, v10, v11

    .line 292
    .line 293
    iput-object v10, v12, Lv3/f;->c:Ljava/lang/Object;

    .line 294
    .line 295
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getShort()S

    .line 296
    .line 297
    .line 298
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getShort()S

    .line 299
    .line 300
    .line 301
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getShort()S

    .line 302
    .line 303
    .line 304
    move-result v10

    .line 305
    const v11, 0xffff

    .line 306
    .line 307
    .line 308
    and-int/2addr v10, v11

    .line 309
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getShort()S

    .line 310
    .line 311
    .line 312
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getShort()S

    .line 313
    .line 314
    .line 315
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getShort()S

    .line 316
    .line 317
    .line 318
    new-instance v11, Ll5/y;

    .line 319
    .line 320
    invoke-direct {v11, v10}, Ll5/y;-><init>(I)V

    .line 321
    .line 322
    .line 323
    const/4 v13, 0x0

    .line 324
    :goto_3
    if-ge v13, v10, :cond_16

    .line 325
    .line 326
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    .line 327
    .line 328
    .line 329
    move-result v14

    .line 330
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    .line 331
    .line 332
    .line 333
    move-result v15

    .line 334
    new-instance v2, Lkf/b;

    .line 335
    .line 336
    invoke-direct {v2}, Lkf/b;-><init>()V

    .line 337
    .line 338
    .line 339
    if-lez v14, :cond_c

    .line 340
    .line 341
    iget-object v0, v5, Lkf/a;->a:Ll2/l0;

    .line 342
    .line 343
    iget-object v0, v0, Ll2/l0;->a:[Ljava/lang/String;

    .line 344
    .line 345
    aget-object v0, v0, v14

    .line 346
    .line 347
    iput-object v0, v2, Lkf/b;->b:Ljava/lang/Object;

    .line 348
    .line 349
    :cond_c
    iget-object v0, v5, Lkf/a;->a:Ll2/l0;

    .line 350
    .line 351
    iget-object v0, v0, Ll2/l0;->a:[Ljava/lang/String;

    .line 352
    .line 353
    aget-object v0, v0, v15

    .line 354
    .line 355
    iput-object v0, v2, Lkf/b;->c:Ljava/lang/Object;

    .line 356
    .line 357
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    if-eqz v0, :cond_d

    .line 362
    .line 363
    iget-object v0, v5, Lkf/a;->b:[Ljava/lang/String;

    .line 364
    .line 365
    if-eqz v0, :cond_d

    .line 366
    .line 367
    array-length v14, v0

    .line 368
    if-ge v15, v14, :cond_d

    .line 369
    .line 370
    aget-object v0, v0, v15

    .line 371
    .line 372
    iput-object v0, v2, Lkf/b;->c:Ljava/lang/Object;

    .line 373
    .line 374
    :cond_d
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    .line 375
    .line 376
    .line 377
    move-result v0

    .line 378
    if-lez v0, :cond_e

    .line 379
    .line 380
    iget-object v14, v5, Lkf/a;->a:Ll2/l0;

    .line 381
    .line 382
    iget-object v14, v14, Ll2/l0;->a:[Ljava/lang/String;

    .line 383
    .line 384
    aget-object v0, v14, v0

    .line 385
    .line 386
    iput-object v0, v2, Lkf/b;->d:Ljava/lang/Object;

    .line 387
    .line 388
    :cond_e
    iget-object v0, v5, Lkf/a;->a:Ll2/l0;

    .line 389
    .line 390
    invoke-static {v7, v0}, Lqf/b;->b(Ljava/nio/ByteBuffer;Ll2/l0;)Lab/a;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    iput-object v0, v2, Lkf/b;->e:Ljava/lang/Object;

    .line 395
    .line 396
    iget-object v14, v5, Lkf/a;->d:Lkf/e;

    .line 397
    .line 398
    if-eqz v14, :cond_15

    .line 399
    .line 400
    iget-object v14, v5, Lkf/a;->f:Ljava/util/Locale;

    .line 401
    .line 402
    iget-object v15, v2, Lkf/b;->d:Ljava/lang/Object;

    .line 403
    .line 404
    check-cast v15, Ljava/lang/String;

    .line 405
    .line 406
    if-eqz v15, :cond_f

    .line 407
    .line 408
    goto :goto_4

    .line 409
    :cond_f
    if-eqz v0, :cond_10

    .line 410
    .line 411
    iget-object v15, v5, Lkf/a;->e:Lmf/h;

    .line 412
    .line 413
    invoke-virtual {v0, v15, v14}, Lab/a;->f(Lmf/h;Ljava/util/Locale;)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v15

    .line 417
    goto :goto_4

    .line 418
    :cond_10
    const-string v15, ""

    .line 419
    .line 420
    :goto_4
    sget-object v0, Lkf/a;->g:Ljava/util/HashSet;

    .line 421
    .line 422
    iget-object v14, v2, Lkf/b;->c:Ljava/lang/Object;

    .line 423
    .line 424
    check-cast v14, Ljava/lang/String;

    .line 425
    .line 426
    invoke-virtual {v0, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    move-result v0

    .line 430
    if-eqz v0, :cond_14

    .line 431
    .line 432
    if-eqz v15, :cond_14

    .line 433
    .line 434
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 435
    .line 436
    .line 437
    move-result v0

    .line 438
    if-nez v0, :cond_11

    .line 439
    .line 440
    goto :goto_6

    .line 441
    :cond_11
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 442
    .line 443
    .line 444
    move-result v0

    .line 445
    const/4 v14, 0x0

    .line 446
    :goto_5
    if-ge v14, v0, :cond_13

    .line 447
    .line 448
    invoke-virtual {v15, v14}, Ljava/lang/String;->charAt(I)C

    .line 449
    .line 450
    .line 451
    move-result v16

    .line 452
    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->isDigit(C)Z

    .line 453
    .line 454
    .line 455
    move-result v16

    .line 456
    if-nez v16, :cond_12

    .line 457
    .line 458
    goto :goto_6

    .line 459
    :cond_12
    add-int/2addr v14, v3

    .line 460
    goto :goto_5

    .line 461
    :cond_13
    :try_start_0
    iget-object v0, v2, Lkf/b;->c:Ljava/lang/Object;

    .line 462
    .line 463
    check-cast v0, Ljava/lang/String;

    .line 464
    .line 465
    invoke-static {v0, v15}, Lkf/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :catch_0
    :cond_14
    :goto_6
    iput-object v15, v2, Lkf/b;->f:Ljava/lang/Object;

    .line 470
    .line 471
    iget-object v0, v11, Ll5/y;->b:Ljava/lang/Object;

    .line 472
    .line 473
    check-cast v0, [Lkf/b;

    .line 474
    .line 475
    aput-object v2, v0, v13

    .line 476
    .line 477
    :cond_15
    add-int/2addr v13, v3

    .line 478
    const/4 v0, 0x6

    .line 479
    const/4 v2, 0x0

    .line 480
    goto/16 :goto_3

    .line 481
    .line 482
    :cond_16
    iput-object v11, v12, Lv3/f;->d:Ljava/lang/Object;

    .line 483
    .line 484
    iget-object v0, v5, Lkf/a;->d:Lkf/e;

    .line 485
    .line 486
    if-eqz v0, :cond_1b

    .line 487
    .line 488
    invoke-interface {v0, v12}, Lkf/e;->m(Lv3/f;)V

    .line 489
    .line 490
    .line 491
    goto :goto_7

    .line 492
    :pswitch_3
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    .line 493
    .line 494
    .line 495
    move-result v0

    .line 496
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    .line 497
    .line 498
    .line 499
    move-result v2

    .line 500
    new-instance v10, Lba/h;

    .line 501
    .line 502
    const/4 v11, 0x3

    .line 503
    invoke-direct {v10, v11}, Lba/h;-><init>(I)V

    .line 504
    .line 505
    .line 506
    if-lez v0, :cond_17

    .line 507
    .line 508
    iget-object v11, v5, Lkf/a;->a:Ll2/l0;

    .line 509
    .line 510
    iget-object v11, v11, Ll2/l0;->a:[Ljava/lang/String;

    .line 511
    .line 512
    aget-object v0, v11, v0

    .line 513
    .line 514
    iput-object v0, v10, Lba/h;->b:Ljava/lang/String;

    .line 515
    .line 516
    :cond_17
    if-lez v2, :cond_18

    .line 517
    .line 518
    iget-object v0, v5, Lkf/a;->a:Ll2/l0;

    .line 519
    .line 520
    iget-object v0, v0, Ll2/l0;->a:[Ljava/lang/String;

    .line 521
    .line 522
    aget-object v0, v0, v2

    .line 523
    .line 524
    iput-object v0, v10, Lba/h;->c:Ljava/lang/String;

    .line 525
    .line 526
    :cond_18
    iget-object v0, v5, Lkf/a;->d:Lkf/e;

    .line 527
    .line 528
    invoke-interface {v0, v10}, Lkf/e;->i(Lba/h;)V

    .line 529
    .line 530
    .line 531
    goto :goto_7

    .line 532
    :pswitch_4
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    .line 533
    .line 534
    .line 535
    move-result v0

    .line 536
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    .line 537
    .line 538
    .line 539
    move-result v2

    .line 540
    new-instance v10, Lba/h;

    .line 541
    .line 542
    invoke-direct {v10, v1}, Lba/h;-><init>(I)V

    .line 543
    .line 544
    .line 545
    if-lez v0, :cond_19

    .line 546
    .line 547
    iget-object v11, v5, Lkf/a;->a:Ll2/l0;

    .line 548
    .line 549
    iget-object v11, v11, Ll2/l0;->a:[Ljava/lang/String;

    .line 550
    .line 551
    aget-object v0, v11, v0

    .line 552
    .line 553
    iput-object v0, v10, Lba/h;->b:Ljava/lang/String;

    .line 554
    .line 555
    :cond_19
    if-lez v2, :cond_1a

    .line 556
    .line 557
    iget-object v0, v5, Lkf/a;->a:Ll2/l0;

    .line 558
    .line 559
    iget-object v0, v0, Ll2/l0;->a:[Ljava/lang/String;

    .line 560
    .line 561
    aget-object v0, v0, v2

    .line 562
    .line 563
    iput-object v0, v10, Lba/h;->c:Ljava/lang/String;

    .line 564
    .line 565
    :cond_1a
    iget-object v0, v5, Lkf/a;->d:Lkf/e;

    .line 566
    .line 567
    invoke-interface {v0, v10}, Lkf/e;->g(Lba/h;)V

    .line 568
    .line 569
    .line 570
    :cond_1b
    :goto_7
    invoke-virtual {v4}, Llf/a;->a()I

    .line 571
    .line 572
    .line 573
    move-result v0

    .line 574
    int-to-long v10, v0

    .line 575
    add-long/2addr v8, v10

    .line 576
    invoke-static {v7, v8, v9}, Ls1/g;->P(Ljava/nio/ByteBuffer;J)V

    .line 577
    .line 578
    .line 579
    invoke-virtual {v5}, Lkf/a;->b()Llf/a;

    .line 580
    .line 581
    .line 582
    move-result-object v4

    .line 583
    const/4 v0, 0x6

    .line 584
    const/4 v2, 0x0

    .line 585
    goto/16 :goto_2

    .line 586
    .line 587
    :cond_1c
    :goto_8
    return-void

    .line 588
    :cond_1d
    new-instance v0, Landroidx/fragment/app/b0;

    .line 589
    .line 590
    new-instance v1, Ljava/lang/StringBuilder;

    .line 591
    .line 592
    const-string v2, "Expect chunk type:"

    .line 593
    .line 594
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v2

    .line 601
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    const-string v2, ", but got:"

    .line 605
    .line 606
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v2

    .line 613
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    .line 615
    .line 616
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v1

    .line 620
    const/4 v2, 0x6

    .line 621
    invoke-direct {v0, v1, v2}, Landroidx/fragment/app/b0;-><init>(Ljava/lang/String;I)V

    .line 622
    .line 623
    .line 624
    goto :goto_a

    .line 625
    :goto_9
    throw v0

    .line 626
    :goto_a
    goto :goto_9

    .line 627
    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final close()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "addSuppressed"

    .line 4
    .line 5
    const-class v3, Ljava/lang/Throwable;

    .line 6
    .line 7
    :try_start_0
    iget-object v4, p0, Lef/b;->i:Ljava/util/zip/ZipFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    .line 9
    :try_start_1
    iget-object v5, p0, Lef/b;->k:Ljava/nio/channels/FileChannel;

    .line 10
    .line 11
    if-eqz v5, :cond_0

    .line 12
    .line 13
    invoke-interface {v5}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v5

    .line 18
    goto :goto_2

    .line 19
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 20
    .line 21
    :try_start_2
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :catchall_1
    move-exception v4

    .line 26
    goto :goto_4

    .line 27
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lef/b;->r()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :goto_2
    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 32
    :catchall_2
    move-exception v6

    .line 33
    if-eqz v4, :cond_2

    .line 34
    .line 35
    :try_start_4
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 36
    .line 37
    .line 38
    goto :goto_3

    .line 39
    :catchall_3
    move-exception v4

    .line 40
    :try_start_5
    new-array v7, v1, [Ljava/lang/Class;

    .line 41
    .line 42
    aput-object v3, v7, v0

    .line 43
    .line 44
    invoke-virtual {v3, v2, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    new-array v8, v1, [Ljava/lang/Object;

    .line 49
    .line 50
    aput-object v4, v8, v0

    .line 51
    .line 52
    invoke-virtual {v7, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 53
    .line 54
    .line 55
    :catch_0
    :cond_2
    :goto_3
    :try_start_6
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 56
    :goto_4
    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 57
    :catchall_4
    move-exception v5

    .line 58
    :try_start_8
    invoke-virtual {p0}, Lef/b;->r()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 59
    .line 60
    .line 61
    goto :goto_5

    .line 62
    :catchall_5
    move-exception v6

    .line 63
    :try_start_9
    new-array v7, v1, [Ljava/lang/Class;

    .line 64
    .line 65
    aput-object v3, v7, v0

    .line 66
    .line 67
    invoke-virtual {v3, v2, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    new-array v1, v1, [Ljava/lang/Object;

    .line 72
    .line 73
    aput-object v6, v1, v0

    .line 74
    .line 75
    invoke-virtual {v2, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 76
    .line 77
    .line 78
    :catch_1
    :goto_5
    throw v5
.end method

.method public final r()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lef/b;->g:Ljava/util/ArrayList;

    .line 3
    .line 4
    iput-object v0, p0, Lef/b;->b:Lmf/h;

    .line 5
    .line 6
    iput-object v0, p0, Lef/b;->f:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method
