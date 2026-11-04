.class public abstract Landroid/support/v4/media/session/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/reflect/Field; = null

.field public static b:Z = false

.field public static c:Z = true

.field public static d:Ljava/lang/reflect/Field; = null

.field public static e:Z = false

.field public static f:Ljava/lang/Class; = null

.field public static g:Z = false

.field public static h:Ljava/lang/reflect/Field; = null

.field public static i:Z = false

.field public static j:Ljava/lang/reflect/Field; = null

.field public static k:Z = false

.field public static l:Z = false

.field public static m:Ljava/lang/reflect/Method; = null

.field public static n:Z = false

.field public static o:Ljava/lang/reflect/Field;


# direct methods
.method public static A(Ljava/io/RandomAccessFile;Ljava/io/FileOutputStream;J)V
    .locals 4

    .line 1
    const/16 v0, 0x1fe2

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    :goto_0
    const-wide/16 v1, 0x1fe2

    .line 6
    .line 7
    cmp-long v3, p2, v1

    .line 8
    .line 9
    if-lez v3, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 15
    .line 16
    .line 17
    sub-long/2addr p2, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-wide/16 v0, 0x0

    .line 20
    .line 21
    cmp-long v2, p2, v0

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    long-to-int p3, p2

    .line 26
    new-array p2, p3, [B

    .line 27
    .line 28
    invoke-virtual {p0, p2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public static B(Ljava/nio/MappedByteBuffer;)Lh1/b;
    .locals 13

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    add-int/lit8 v0, v0, 0x4

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const v1, 0xffff

    .line 24
    .line 25
    .line 26
    and-int/2addr v0, v1

    .line 27
    const/16 v1, 0x64

    .line 28
    .line 29
    const-string v2, "Cannot read metadata."

    .line 30
    .line 31
    if-gt v0, v1, :cond_5

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    add-int/lit8 v1, v1, 0x6

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 40
    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    const/4 v3, 0x0

    .line 44
    :goto_0
    const-wide v4, 0xffffffffL

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    const-wide/16 v6, -0x1

    .line 50
    .line 51
    if-ge v3, v0, :cond_1

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    add-int/lit8 v9, v9, 0x4

    .line 62
    .line 63
    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    int-to-long v9, v9

    .line 71
    and-long/2addr v9, v4

    .line 72
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 73
    .line 74
    .line 75
    move-result v11

    .line 76
    add-int/lit8 v11, v11, 0x4

    .line 77
    .line 78
    invoke-virtual {p0, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 79
    .line 80
    .line 81
    const v11, 0x6d657461

    .line 82
    .line 83
    .line 84
    if-ne v11, v8, :cond_0

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    move-wide v9, v6

    .line 91
    :goto_1
    cmp-long v0, v9, v6

    .line 92
    .line 93
    if-eqz v0, :cond_4

    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    int-to-long v6, v0

    .line 100
    sub-long v6, v9, v6

    .line 101
    .line 102
    long-to-int v0, v6

    .line 103
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    add-int/2addr v3, v0

    .line 108
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    add-int/lit8 v0, v0, 0xc

    .line 116
    .line 117
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    int-to-long v6, v0

    .line 125
    and-long/2addr v6, v4

    .line 126
    :goto_2
    int-to-long v11, v1

    .line 127
    cmp-long v0, v11, v6

    .line 128
    .line 129
    if-gez v0, :cond_4

    .line 130
    .line 131
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    int-to-long v11, v3

    .line 140
    and-long/2addr v11, v4

    .line 141
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 142
    .line 143
    .line 144
    const v3, 0x456d6a69

    .line 145
    .line 146
    .line 147
    if-eq v3, v0, :cond_3

    .line 148
    .line 149
    const v3, 0x656d6a69

    .line 150
    .line 151
    .line 152
    if-ne v3, v0, :cond_2

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_3
    :goto_3
    add-long/2addr v11, v9

    .line 159
    long-to-int v0, v11

    .line 160
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 161
    .line 162
    .line 163
    new-instance v0, Lh1/b;

    .line 164
    .line 165
    invoke-direct {v0}, Lh1/b;-><init>()V

    .line 166
    .line 167
    .line 168
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 169
    .line 170
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    add-int/2addr v2, v1

    .line 186
    iput-object p0, v0, Lh1/c;->d:Ljava/lang/Object;

    .line 187
    .line 188
    iput v2, v0, Lh1/c;->a:I

    .line 189
    .line 190
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 191
    .line 192
    .line 193
    move-result p0

    .line 194
    sub-int/2addr v2, p0

    .line 195
    iput v2, v0, Lh1/c;->b:I

    .line 196
    .line 197
    iget-object p0, v0, Lh1/c;->d:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast p0, Ljava/nio/ByteBuffer;

    .line 200
    .line 201
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 202
    .line 203
    .line 204
    move-result p0

    .line 205
    iput p0, v0, Lh1/c;->c:I

    .line 206
    .line 207
    return-object v0

    .line 208
    :cond_4
    new-instance p0, Ljava/io/IOException;

    .line 209
    .line 210
    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    throw p0

    .line 214
    :cond_5
    new-instance p0, Ljava/io/IOException;

    .line 215
    .line 216
    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    goto :goto_5

    .line 220
    :goto_4
    throw p0

    .line 221
    :goto_5
    goto :goto_4
.end method

.method public static C(Ljava/util/List;Lud/c;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lud/c;

    .line 16
    .line 17
    iget v1, v1, Lud/c;->a:I

    .line 18
    .line 19
    iget v2, p1, Lud/c;->a:I

    .line 20
    .line 21
    if-ne v1, v2, :cond_0

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static D(Landroid/content/Context;I)Landroid/util/TypedValue;
    .locals 2

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method

.method public static E(Landroid/content/Context;IZ)Z
    .locals 1

    .line 1
    invoke-static {p0, p1}, Landroid/support/v4/media/session/b;->D(Landroid/content/Context;I)Landroid/util/TypedValue;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    iget p1, p0, Landroid/util/TypedValue;->type:I

    .line 8
    .line 9
    const/16 v0, 0x12

    .line 10
    .line 11
    if-ne p1, v0, :cond_1

    .line 12
    .line 13
    iget p0, p0, Landroid/util/TypedValue;->data:I

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p2, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p2, 0x0

    .line 20
    :cond_1
    :goto_0
    return p2
.end method

.method public static F(Landroid/content/Context;Ljava/lang/String;I)Landroid/util/TypedValue;
    .locals 2

    .line 1
    invoke-static {p0, p2}, Landroid/support/v4/media/session/b;->D(Landroid/content/Context;I)Landroid/util/TypedValue;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 p2, 0x2

    .line 19
    new-array p2, p2, [Ljava/lang/Object;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    aput-object p1, p2, v1

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    aput-object p0, p2, p1

    .line 26
    .line 27
    const-string p0, "%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant)."

    .line 28
    .line 29
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0
.end method

.method public static G(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Lb1/b;->c(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    check-cast p0, Lb1/w;

    .line 12
    .line 13
    invoke-interface {p0, p1}, Lb1/w;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public static H(Ll2/l;Z)Z
    .locals 12

    .line 1
    new-instance v0, Lu1/q;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lu1/q;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x1

    .line 10
    :cond_0
    :goto_0
    const/16 v4, 0x8

    .line 11
    .line 12
    invoke-virtual {v0, v4}, Lu1/q;->L(I)V

    .line 13
    .line 14
    .line 15
    iget-object v5, v0, Lu1/q;->a:[B

    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    invoke-virtual {p0, v5, v6, v4, v2}, Ll2/l;->c([BIIZ)Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-nez v5, :cond_1

    .line 23
    .line 24
    return v6

    .line 25
    :cond_1
    invoke-virtual {v0}, Lu1/q;->D()J

    .line 26
    .line 27
    .line 28
    move-result-wide v7

    .line 29
    invoke-virtual {v0}, Lu1/q;->o()I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const-wide/16 v9, 0x1

    .line 34
    .line 35
    cmp-long v11, v7, v9

    .line 36
    .line 37
    if-nez v11, :cond_3

    .line 38
    .line 39
    iget-object v7, v0, Lu1/q;->a:[B

    .line 40
    .line 41
    invoke-virtual {p0, v7, v4, v4, v2}, Ll2/l;->c([BIIZ)Z

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    if-nez v7, :cond_2

    .line 46
    .line 47
    return v6

    .line 48
    :cond_2
    invoke-virtual {v0}, Lu1/q;->H()J

    .line 49
    .line 50
    .line 51
    move-result-wide v7

    .line 52
    const/16 v9, 0x10

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    const/16 v9, 0x8

    .line 56
    .line 57
    :goto_1
    int-to-long v9, v9

    .line 58
    cmp-long v11, v7, v9

    .line 59
    .line 60
    if-gez v11, :cond_4

    .line 61
    .line 62
    return v6

    .line 63
    :cond_4
    sub-long/2addr v7, v9

    .line 64
    long-to-int v8, v7

    .line 65
    if-eqz v3, :cond_9

    .line 66
    .line 67
    const v3, 0x66747970

    .line 68
    .line 69
    .line 70
    if-ne v5, v3, :cond_8

    .line 71
    .line 72
    if-ge v8, v4, :cond_5

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_5
    const/4 v3, 0x4

    .line 76
    invoke-virtual {v0, v3}, Lu1/q;->L(I)V

    .line 77
    .line 78
    .line 79
    iget-object v4, v0, Lu1/q;->a:[B

    .line 80
    .line 81
    invoke-virtual {p0, v4, v6, v3, v6}, Ll2/l;->c([BIIZ)Z

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lu1/q;->o()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    const v4, 0x68656963

    .line 89
    .line 90
    .line 91
    if-eq v3, v4, :cond_6

    .line 92
    .line 93
    return v6

    .line 94
    :cond_6
    if-nez p1, :cond_7

    .line 95
    .line 96
    return v2

    .line 97
    :cond_7
    add-int/lit8 v8, v8, -0x4

    .line 98
    .line 99
    invoke-virtual {p0, v8, v6}, Ll2/l;->k(IZ)Z

    .line 100
    .line 101
    .line 102
    const/4 v3, 0x0

    .line 103
    goto :goto_0

    .line 104
    :cond_8
    :goto_2
    return v6

    .line 105
    :cond_9
    const v4, 0x6d707664

    .line 106
    .line 107
    .line 108
    if-ne v5, v4, :cond_a

    .line 109
    .line 110
    return v2

    .line 111
    :cond_a
    if-eqz v8, :cond_0

    .line 112
    .line 113
    invoke-virtual {p0, v8, v6}, Ll2/l;->k(IZ)Z

    .line 114
    .line 115
    .line 116
    goto :goto_0
.end method

.method public static I(Landroid/view/ViewGroup;Z)V
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, La2/c;->o(Landroid/view/ViewGroup;Z)V

    .line 8
    .line 9
    .line 10
    goto/16 :goto_3

    .line 11
    .line 12
    :cond_0
    const/16 v1, 0x12

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-lt v0, v1, :cond_1

    .line 16
    .line 17
    sget-boolean v0, Landroid/support/v4/media/session/b;->c:Z

    .line 18
    .line 19
    if-eqz v0, :cond_b

    .line 20
    .line 21
    :try_start_0
    invoke-static {p0, p1}, La2/c;->o(Landroid/view/ViewGroup;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto/16 :goto_3

    .line 25
    .line 26
    :catch_0
    sput-boolean v2, Landroid/support/v4/media/session/b;->c:Z

    .line 27
    .line 28
    goto/16 :goto_3

    .line 29
    .line 30
    :cond_1
    sget-object v0, Lcom/bumptech/glide/c;->a:Lh4/b0;

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    const/4 v3, 0x0

    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    new-instance v0, Lh4/b0;

    .line 37
    .line 38
    invoke-direct {v0}, Lh4/b0;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcom/bumptech/glide/c;->a:Lh4/b0;

    .line 42
    .line 43
    const/4 v4, 0x2

    .line 44
    invoke-virtual {v0, v4, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 45
    .line 46
    .line 47
    sget-object v0, Lcom/bumptech/glide/c;->a:Lh4/b0;

    .line 48
    .line 49
    invoke-virtual {v0, v2, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 50
    .line 51
    .line 52
    sget-object v0, Lcom/bumptech/glide/c;->a:Lh4/b0;

    .line 53
    .line 54
    invoke-virtual {v0, v1, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 55
    .line 56
    .line 57
    sget-object v0, Lcom/bumptech/glide/c;->a:Lh4/b0;

    .line 58
    .line 59
    const/4 v4, 0x3

    .line 60
    invoke-virtual {v0, v4, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 61
    .line 62
    .line 63
    sget-object v0, Lcom/bumptech/glide/c;->a:Lh4/b0;

    .line 64
    .line 65
    const/4 v4, 0x4

    .line 66
    invoke-virtual {v0, v4, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    const v0, 0x7f0b0307

    .line 70
    .line 71
    .line 72
    if-eqz p1, :cond_6

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-eqz p1, :cond_5

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/animation/LayoutTransition;->isRunning()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_4

    .line 85
    .line 86
    sget-boolean v2, Lcom/bumptech/glide/c;->e:Z

    .line 87
    .line 88
    if-nez v2, :cond_3

    .line 89
    .line 90
    :try_start_1
    const-class v2, Landroid/animation/LayoutTransition;

    .line 91
    .line 92
    const-string v4, "cancel"

    .line 93
    .line 94
    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    sput-object v2, Lcom/bumptech/glide/c;->d:Ljava/lang/reflect/Method;

    .line 99
    .line 100
    invoke-virtual {v2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    .line 102
    .line 103
    :catch_1
    sput-boolean v1, Lcom/bumptech/glide/c;->e:Z

    .line 104
    .line 105
    :cond_3
    sget-object v1, Lcom/bumptech/glide/c;->d:Ljava/lang/reflect/Method;

    .line 106
    .line 107
    if-eqz v1, :cond_4

    .line 108
    .line 109
    :try_start_2
    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :catch_2
    nop

    .line 114
    :cond_4
    :goto_0
    sget-object v1, Lcom/bumptech/glide/c;->a:Lh4/b0;

    .line 115
    .line 116
    if-eq p1, v1, :cond_5

    .line 117
    .line 118
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    :cond_5
    sget-object p1, Lcom/bumptech/glide/c;->a:Lh4/b0;

    .line 122
    .line 123
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_6
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 128
    .line 129
    .line 130
    sget-boolean p1, Lcom/bumptech/glide/c;->c:Z

    .line 131
    .line 132
    if-nez p1, :cond_7

    .line 133
    .line 134
    :try_start_3
    const-class p1, Landroid/view/ViewGroup;

    .line 135
    .line 136
    const-string v4, "mLayoutSuppressed"

    .line 137
    .line 138
    invoke-virtual {p1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    sput-object p1, Lcom/bumptech/glide/c;->b:Ljava/lang/reflect/Field;

    .line 143
    .line 144
    invoke-virtual {p1, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_3

    .line 145
    .line 146
    .line 147
    :catch_3
    sput-boolean v1, Lcom/bumptech/glide/c;->c:Z

    .line 148
    .line 149
    :cond_7
    sget-object p1, Lcom/bumptech/glide/c;->b:Ljava/lang/reflect/Field;

    .line 150
    .line 151
    if-eqz p1, :cond_9

    .line 152
    .line 153
    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result p1
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_5

    .line 157
    if-eqz p1, :cond_8

    .line 158
    .line 159
    :try_start_5
    sget-object v1, Lcom/bumptech/glide/c;->b:Ljava/lang/reflect/Field;

    .line 160
    .line 161
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_4

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :catch_4
    nop

    .line 166
    :cond_8
    :goto_1
    move v2, p1

    .line 167
    goto :goto_2

    .line 168
    :catch_5
    nop

    .line 169
    :cond_9
    :goto_2
    if-eqz v2, :cond_a

    .line 170
    .line 171
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 172
    .line 173
    .line 174
    :cond_a
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    check-cast p1, Landroid/animation/LayoutTransition;

    .line 179
    .line 180
    if-eqz p1, :cond_b

    .line 181
    .line 182
    invoke-virtual {p0, v0, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 186
    .line 187
    .line 188
    :cond_b
    :goto_3
    return-void
.end method

.method public static J(Lsh/c;)I
    .locals 4

    .line 1
    iget-wide v0, p0, Lsh/c;->a:J

    .line 2
    .line 3
    const/16 v2, 0x3e8

    .line 4
    .line 5
    invoke-static {v2, v0, v1}, Lif/a;->v0(IJ)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget p0, p0, Lsh/c;->b:I

    .line 10
    .line 11
    const v2, 0xf4240

    .line 12
    .line 13
    .line 14
    div-int/2addr p0, v2

    .line 15
    int-to-long v2, p0

    .line 16
    invoke-static {v0, v1, v2, v3}, Lif/a;->u0(JJ)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    const-wide/16 v2, 0x0

    .line 21
    .line 22
    cmp-long p0, v0, v2

    .line 23
    .line 24
    if-lez p0, :cond_0

    .line 25
    .line 26
    const-wide/32 v2, 0x7fffffff

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    :goto_0
    long-to-int p0, v0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    const-wide/32 v2, -0x80000000

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    goto :goto_0

    .line 43
    :goto_1
    return p0
.end method

.method public static K(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p0, :cond_7

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    goto :goto_4

    .line 12
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    :try_start_0
    const-string v3, "UTF-8"

    .line 18
    .line 19
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    array-length v3, p0

    .line 24
    const/4 v4, 0x0

    .line 25
    :goto_0
    if-ge v4, v3, :cond_6

    .line 26
    .line 27
    aget-byte v5, p0, v4

    .line 28
    .line 29
    and-int/lit16 v5, v5, 0xff

    .line 30
    .line 31
    int-to-char v6, v5

    .line 32
    const/16 v7, 0x41

    .line 33
    .line 34
    if-lt v6, v7, :cond_1

    .line 35
    .line 36
    const/16 v7, 0x5a

    .line 37
    .line 38
    if-le v6, v7, :cond_5

    .line 39
    .line 40
    :cond_1
    const/16 v7, 0x61

    .line 41
    .line 42
    if-lt v6, v7, :cond_2

    .line 43
    .line 44
    const/16 v7, 0x7a

    .line 45
    .line 46
    if-le v6, v7, :cond_5

    .line 47
    .line 48
    :cond_2
    const/16 v7, 0x30

    .line 49
    .line 50
    if-lt v6, v7, :cond_3

    .line 51
    .line 52
    const/16 v7, 0x39

    .line 53
    .line 54
    if-le v6, v7, :cond_5

    .line 55
    .line 56
    :cond_3
    const/16 v7, 0x2d

    .line 57
    .line 58
    if-eq v6, v7, :cond_5

    .line 59
    .line 60
    const/16 v7, 0x5f

    .line 61
    .line 62
    if-eq v6, v7, :cond_5

    .line 63
    .line 64
    const/16 v7, 0x2e

    .line 65
    .line 66
    if-eq v6, v7, :cond_5

    .line 67
    .line 68
    const/16 v7, 0x7e

    .line 69
    .line 70
    if-ne v6, v7, :cond_4

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    const-string v6, "%%%02X"

    .line 74
    .line 75
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    new-array v7, v0, [Ljava/lang/Object;

    .line 80
    .line 81
    aput-object v5, v7, v1

    .line 82
    .line 83
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :catch_0
    move-exception p0

    .line 92
    goto :goto_3

    .line 93
    :cond_5
    :goto_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    .line 96
    :goto_2
    add-int/2addr v4, v0

    .line 97
    goto :goto_0

    .line 98
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    return-object p0

    .line 103
    :goto_3
    new-instance v0, Ljava/lang/RuntimeException;

    .line 104
    .line 105
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    throw v0

    .line 109
    :cond_7
    :goto_4
    return-object p0
.end method

.method public static L(Lb5/b;IJ)V
    .locals 2

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    rsub-int/lit8 v0, v0, 0x40

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    :cond_0
    add-int/lit8 v0, v0, 0x7

    .line 11
    .line 12
    shr-int/lit8 v0, v0, 0x3

    .line 13
    .line 14
    mul-int/lit8 v1, v0, 0x8

    .line 15
    .line 16
    rsub-int/lit8 v1, v1, 0x40

    .line 17
    .line 18
    shr-long/2addr p2, v1

    .line 19
    add-int/lit8 v1, v0, -0x1

    .line 20
    .line 21
    shl-int/lit8 v1, v1, 0x5

    .line 22
    .line 23
    or-int/2addr p1, v1

    .line 24
    invoke-virtual {p0, p1}, Lb5/b;->i(I)V

    .line 25
    .line 26
    .line 27
    :goto_0
    if-lez v0, :cond_1

    .line 28
    .line 29
    long-to-int p1, p2

    .line 30
    int-to-byte p1, p1

    .line 31
    invoke-virtual {p0, p1}, Lb5/b;->i(I)V

    .line 32
    .line 33
    .line 34
    const/16 p1, 0x8

    .line 35
    .line 36
    shr-long/2addr p2, p1

    .line 37
    add-int/lit8 v0, v0, -0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-void
.end method

.method public static M(Lb5/b;IJ)V
    .locals 2

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    rsub-int/lit8 v0, v0, 0x40

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    :cond_0
    add-int/lit8 v0, v0, 0x7

    .line 11
    .line 12
    shr-int/lit8 v0, v0, 0x3

    .line 13
    .line 14
    add-int/lit8 v1, v0, -0x1

    .line 15
    .line 16
    shl-int/lit8 v1, v1, 0x5

    .line 17
    .line 18
    or-int/2addr p1, v1

    .line 19
    invoke-virtual {p0, p1}, Lb5/b;->i(I)V

    .line 20
    .line 21
    .line 22
    :goto_0
    if-lez v0, :cond_1

    .line 23
    .line 24
    long-to-int p1, p2

    .line 25
    int-to-byte p1, p1

    .line 26
    invoke-virtual {p0, p1}, Lb5/b;->i(I)V

    .line 27
    .line 28
    .line 29
    const/16 p1, 0x8

    .line 30
    .line 31
    shr-long/2addr p2, p1

    .line 32
    add-int/lit8 v0, v0, -0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method

.method public static a(Ljava/io/RandomAccessFile;Ljava/io/FileOutputStream;)V
    .locals 40

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->length()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    const-wide/32 v4, 0x10015

    .line 10
    .line 11
    .line 12
    cmp-long v6, v2, v4

    .line 13
    .line 14
    if-lez v6, :cond_0

    .line 15
    .line 16
    const v2, 0x10015

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    long-to-int v2, v2

    .line 21
    :goto_0
    new-array v3, v2, [B

    .line 22
    .line 23
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->length()J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    int-to-long v6, v2

    .line 28
    sub-long/2addr v4, v6

    .line 29
    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 33
    .line 34
    .line 35
    const/4 v4, 0x4

    .line 36
    sub-int/2addr v2, v4

    .line 37
    :goto_1
    const-wide/16 v8, -0x1

    .line 38
    .line 39
    if-ltz v2, :cond_2

    .line 40
    .line 41
    aget-byte v5, v3, v2

    .line 42
    .line 43
    and-int/lit16 v5, v5, 0xff

    .line 44
    .line 45
    const/16 v10, 0x50

    .line 46
    .line 47
    if-ne v5, v10, :cond_1

    .line 48
    .line 49
    add-int/lit8 v5, v2, 0x1

    .line 50
    .line 51
    aget-byte v5, v3, v5

    .line 52
    .line 53
    and-int/lit16 v5, v5, 0xff

    .line 54
    .line 55
    const/16 v10, 0x4b

    .line 56
    .line 57
    if-ne v5, v10, :cond_1

    .line 58
    .line 59
    add-int/lit8 v5, v2, 0x2

    .line 60
    .line 61
    aget-byte v5, v3, v5

    .line 62
    .line 63
    and-int/lit16 v5, v5, 0xff

    .line 64
    .line 65
    const/4 v10, 0x5

    .line 66
    if-ne v5, v10, :cond_1

    .line 67
    .line 68
    add-int/lit8 v5, v2, 0x3

    .line 69
    .line 70
    aget-byte v5, v3, v5

    .line 71
    .line 72
    and-int/lit16 v5, v5, 0xff

    .line 73
    .line 74
    const/4 v10, 0x6

    .line 75
    if-ne v5, v10, :cond_1

    .line 76
    .line 77
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->length()J

    .line 78
    .line 79
    .line 80
    move-result-wide v10

    .line 81
    sub-long/2addr v10, v6

    .line 82
    int-to-long v2, v2

    .line 83
    add-long/2addr v10, v2

    .line 84
    const-wide/16 v2, 0x4

    .line 85
    .line 86
    sub-long/2addr v10, v2

    .line 87
    goto :goto_2

    .line 88
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    move-wide v10, v8

    .line 92
    :goto_2
    cmp-long v2, v10, v8

    .line 93
    .line 94
    if-eqz v2, :cond_11

    .line 95
    .line 96
    const-wide/16 v2, 0xa

    .line 97
    .line 98
    add-long/2addr v2, v10

    .line 99
    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 100
    .line 101
    .line 102
    const/16 v2, 0xa

    .line 103
    .line 104
    new-array v3, v2, [B

    .line 105
    .line 106
    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->read([B)I

    .line 107
    .line 108
    .line 109
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 114
    .line 115
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    const v7, 0xffff

    .line 124
    .line 125
    .line 126
    and-int/2addr v6, v7

    .line 127
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    int-to-long v8, v3

    .line 135
    const-wide v12, 0xffffffffL

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    and-long/2addr v8, v12

    .line 141
    new-instance v3, Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .line 145
    .line 146
    new-instance v14, Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 152
    .line 153
    .line 154
    const/16 v15, 0x2e

    .line 155
    .line 156
    new-array v15, v15, [B

    .line 157
    .line 158
    invoke-static {v15}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    const/4 v5, 0x0

    .line 167
    const/4 v4, 0x0

    .line 168
    const/16 v17, 0x0

    .line 169
    .line 170
    :goto_3
    if-ge v4, v6, :cond_b

    .line 171
    .line 172
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 173
    .line 174
    .line 175
    move-result-wide v12

    .line 176
    invoke-virtual {v0, v15}, Ljava/io/RandomAccessFile;->read([B)I

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 180
    .line 181
    .line 182
    move-result v7

    .line 183
    const v5, 0x2014b50

    .line 184
    .line 185
    .line 186
    if-ne v7, v5, :cond_a

    .line 187
    .line 188
    const/16 v5, 0x1c

    .line 189
    .line 190
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    const v7, 0xffff

    .line 195
    .line 196
    .line 197
    and-int/2addr v5, v7

    .line 198
    move/from16 v20, v6

    .line 199
    .line 200
    const/16 v6, 0x1e

    .line 201
    .line 202
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 203
    .line 204
    .line 205
    move-result v6

    .line 206
    and-int/2addr v6, v7

    .line 207
    move-object/from16 v21, v15

    .line 208
    .line 209
    const/16 v15, 0x20

    .line 210
    .line 211
    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 212
    .line 213
    .line 214
    move-result v15

    .line 215
    and-int/2addr v15, v7

    .line 216
    const/16 v7, 0x2a

    .line 217
    .line 218
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 219
    .line 220
    .line 221
    move-result v7

    .line 222
    move-wide/from16 v22, v8

    .line 223
    .line 224
    int-to-long v7, v7

    .line 225
    const-wide v18, 0xffffffffL

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    and-long v7, v7, v18

    .line 231
    .line 232
    move/from16 v9, v17

    .line 233
    .line 234
    move-wide/from16 v24, v10

    .line 235
    .line 236
    if-eqz v9, :cond_3

    .line 237
    .line 238
    new-instance v10, Ly8/b;

    .line 239
    .line 240
    const-wide/16 v26, 0x2a

    .line 241
    .line 242
    move-object v11, v2

    .line 243
    add-long v1, v12, v26

    .line 244
    .line 245
    move-wide/from16 v26, v12

    .line 246
    .line 247
    int-to-long v12, v9

    .line 248
    add-long/2addr v12, v7

    .line 249
    invoke-direct {v10, v1, v2, v12, v13}, Ly8/b;-><init>(JJ)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    goto :goto_4

    .line 256
    :cond_3
    move-wide/from16 v26, v12

    .line 257
    .line 258
    move-object v11, v2

    .line 259
    :goto_4
    new-array v1, v5, [B

    .line 260
    .line 261
    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 262
    .line 263
    .line 264
    new-instance v2, Ljava/lang/String;

    .line 265
    .line 266
    sget-object v10, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 267
    .line 268
    invoke-direct {v2, v1, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 269
    .line 270
    .line 271
    const-string v1, ".so"

    .line 272
    .line 273
    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    const-wide/16 v28, 0x1e

    .line 278
    .line 279
    const-wide/16 v30, 0x1a

    .line 280
    .line 281
    if-eqz v1, :cond_6

    .line 282
    .line 283
    add-long v1, v7, v30

    .line 284
    .line 285
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 286
    .line 287
    .line 288
    const/4 v1, 0x4

    .line 289
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 294
    .line 295
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    const v10, 0xffff

    .line 311
    .line 312
    .line 313
    and-int/2addr v2, v10

    .line 314
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    and-int/2addr v1, v10

    .line 319
    add-long v32, v7, v28

    .line 320
    .line 321
    int-to-long v12, v2

    .line 322
    add-long v32, v32, v12

    .line 323
    .line 324
    int-to-long v12, v1

    .line 325
    add-long v32, v32, v12

    .line 326
    .line 327
    int-to-long v12, v9

    .line 328
    add-long v32, v32, v12

    .line 329
    .line 330
    const/16 v10, 0x4000

    .line 331
    .line 332
    int-to-long v12, v10

    .line 333
    rem-long v12, v32, v12

    .line 334
    .line 335
    long-to-int v10, v12

    .line 336
    if-nez v10, :cond_4

    .line 337
    .line 338
    const/16 v35, 0x0

    .line 339
    .line 340
    goto :goto_5

    .line 341
    :cond_4
    rsub-int v10, v10, 0x4000

    .line 342
    .line 343
    move/from16 v35, v10

    .line 344
    .line 345
    :goto_5
    add-int v17, v9, v35

    .line 346
    .line 347
    if-eqz v35, :cond_5

    .line 348
    .line 349
    new-instance v9, Ly8/a;

    .line 350
    .line 351
    const-wide/16 v12, 0x1c

    .line 352
    .line 353
    add-long v36, v7, v12

    .line 354
    .line 355
    add-int v10, v1, v35

    .line 356
    .line 357
    int-to-short v10, v10

    .line 358
    add-int v39, v2, v1

    .line 359
    .line 360
    move-object/from16 v34, v9

    .line 361
    .line 362
    move/from16 v38, v10

    .line 363
    .line 364
    invoke-direct/range {v34 .. v39}, Ly8/a;-><init>(IJSI)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    :cond_5
    const/4 v1, 0x1

    .line 371
    move/from16 v9, v17

    .line 372
    .line 373
    :goto_6
    const/16 v2, 0xa

    .line 374
    .line 375
    goto :goto_7

    .line 376
    :cond_6
    const/4 v1, 0x0

    .line 377
    goto :goto_6

    .line 378
    :goto_7
    invoke-virtual {v11, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 379
    .line 380
    .line 381
    move-result v10

    .line 382
    if-nez v10, :cond_9

    .line 383
    .line 384
    if-nez v1, :cond_9

    .line 385
    .line 386
    add-long v12, v7, v30

    .line 387
    .line 388
    invoke-virtual {v0, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 389
    .line 390
    .line 391
    const/4 v1, 0x4

    .line 392
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 393
    .line 394
    .line 395
    move-result-object v10

    .line 396
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 397
    .line 398
    invoke-virtual {v10, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 403
    .line 404
    .line 405
    move-result-object v10

    .line 406
    invoke-virtual {v0, v10}, Ljava/io/RandomAccessFile;->read([B)I

    .line 407
    .line 408
    .line 409
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 410
    .line 411
    .line 412
    move-result v10

    .line 413
    const v12, 0xffff

    .line 414
    .line 415
    .line 416
    and-int/2addr v10, v12

    .line 417
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 418
    .line 419
    .line 420
    move-result v1

    .line 421
    and-int/2addr v1, v12

    .line 422
    add-long v28, v7, v28

    .line 423
    .line 424
    int-to-long v12, v10

    .line 425
    add-long v28, v28, v12

    .line 426
    .line 427
    int-to-long v12, v1

    .line 428
    add-long v28, v28, v12

    .line 429
    .line 430
    int-to-long v12, v9

    .line 431
    add-long v28, v28, v12

    .line 432
    .line 433
    move-object v13, v3

    .line 434
    const/4 v12, 0x4

    .line 435
    int-to-long v2, v12

    .line 436
    rem-long v2, v28, v2

    .line 437
    .line 438
    long-to-int v3, v2

    .line 439
    if-nez v3, :cond_7

    .line 440
    .line 441
    const/16 v29, 0x0

    .line 442
    .line 443
    goto :goto_8

    .line 444
    :cond_7
    rsub-int/lit8 v2, v3, 0x4

    .line 445
    .line 446
    move/from16 v29, v2

    .line 447
    .line 448
    :goto_8
    add-int v9, v9, v29

    .line 449
    .line 450
    if-eqz v29, :cond_8

    .line 451
    .line 452
    new-instance v2, Ly8/a;

    .line 453
    .line 454
    const-wide/16 v16, 0x1c

    .line 455
    .line 456
    add-long v30, v7, v16

    .line 457
    .line 458
    add-int v3, v1, v29

    .line 459
    .line 460
    int-to-short v3, v3

    .line 461
    add-int v33, v10, v1

    .line 462
    .line 463
    move-object/from16 v28, v2

    .line 464
    .line 465
    move/from16 v32, v3

    .line 466
    .line 467
    invoke-direct/range {v28 .. v33}, Ly8/a;-><init>(IJSI)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    .line 472
    .line 473
    :cond_8
    :goto_9
    move/from16 v17, v9

    .line 474
    .line 475
    goto :goto_a

    .line 476
    :cond_9
    move-object v13, v3

    .line 477
    const/4 v12, 0x4

    .line 478
    goto :goto_9

    .line 479
    :goto_a
    const-wide/16 v1, 0x2e

    .line 480
    .line 481
    add-long v1, v26, v1

    .line 482
    .line 483
    int-to-long v7, v5

    .line 484
    add-long/2addr v1, v7

    .line 485
    int-to-long v5, v6

    .line 486
    add-long/2addr v1, v5

    .line 487
    int-to-long v5, v15

    .line 488
    add-long/2addr v1, v5

    .line 489
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 490
    .line 491
    .line 492
    add-int/lit8 v4, v4, 0x1

    .line 493
    .line 494
    move-object/from16 v1, p1

    .line 495
    .line 496
    move-object v2, v11

    .line 497
    move-object v3, v13

    .line 498
    move-wide/from16 v12, v18

    .line 499
    .line 500
    move/from16 v6, v20

    .line 501
    .line 502
    move-object/from16 v15, v21

    .line 503
    .line 504
    move-wide/from16 v8, v22

    .line 505
    .line 506
    move-wide/from16 v10, v24

    .line 507
    .line 508
    const/4 v5, 0x0

    .line 509
    const v7, 0xffff

    .line 510
    .line 511
    .line 512
    goto/16 :goto_3

    .line 513
    .line 514
    :cond_a
    move-wide/from16 v26, v12

    .line 515
    .line 516
    new-instance v0, La2/n0;

    .line 517
    .line 518
    new-instance v1, Ljava/lang/StringBuilder;

    .line 519
    .line 520
    const-string v2, "assumed central directory entry at "

    .line 521
    .line 522
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    move-wide/from16 v2, v26

    .line 526
    .line 527
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    const-string v2, " doesn\'t start with a signature"

    .line 531
    .line 532
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v1

    .line 539
    invoke-direct {v0, v1}, La2/n0;-><init>(Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    throw v0

    .line 543
    :cond_b
    move-object v13, v3

    .line 544
    move-wide/from16 v22, v8

    .line 545
    .line 546
    move-wide/from16 v24, v10

    .line 547
    .line 548
    move/from16 v9, v17

    .line 549
    .line 550
    const-wide/16 v1, 0x0

    .line 551
    .line 552
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 556
    .line 557
    .line 558
    move-result v3

    .line 559
    if-nez v3, :cond_c

    .line 560
    .line 561
    const/16 v1, 0x2000

    .line 562
    .line 563
    new-array v1, v1, [B

    .line 564
    .line 565
    :goto_b
    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 566
    .line 567
    .line 568
    move-result v2

    .line 569
    const/4 v3, -0x1

    .line 570
    if-eq v3, v2, :cond_10

    .line 571
    .line 572
    move-object/from16 v3, p1

    .line 573
    .line 574
    const/4 v4, 0x0

    .line 575
    invoke-virtual {v3, v1, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 576
    .line 577
    .line 578
    goto :goto_b

    .line 579
    :cond_c
    move-object/from16 v3, p1

    .line 580
    .line 581
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 582
    .line 583
    .line 584
    move-result-object v4

    .line 585
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 586
    .line 587
    .line 588
    move-result v5

    .line 589
    const/16 v6, 0x8

    .line 590
    .line 591
    if-eqz v5, :cond_e

    .line 592
    .line 593
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 594
    .line 595
    .line 596
    move-result-object v5

    .line 597
    check-cast v5, Ly8/a;

    .line 598
    .line 599
    iget-wide v7, v5, Ly8/a;->b:J

    .line 600
    .line 601
    cmp-long v10, v7, v1

    .line 602
    .line 603
    if-eqz v10, :cond_d

    .line 604
    .line 605
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 606
    .line 607
    .line 608
    move-result-wide v10

    .line 609
    sub-long/2addr v7, v10

    .line 610
    invoke-static {v0, v3, v7, v8}, Landroid/support/v4/media/session/b;->A(Ljava/io/RandomAccessFile;Ljava/io/FileOutputStream;J)V

    .line 611
    .line 612
    .line 613
    :cond_d
    iget-short v7, v5, Ly8/a;->c:S

    .line 614
    .line 615
    and-int/lit16 v8, v7, 0xff

    .line 616
    .line 617
    invoke-virtual {v3, v8}, Ljava/io/OutputStream;->write(I)V

    .line 618
    .line 619
    .line 620
    ushr-int/lit8 v6, v7, 0x8

    .line 621
    .line 622
    and-int/lit16 v6, v6, 0xff

    .line 623
    .line 624
    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write(I)V

    .line 625
    .line 626
    .line 627
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readShort()S

    .line 628
    .line 629
    .line 630
    iget v6, v5, Ly8/a;->d:I

    .line 631
    .line 632
    int-to-long v6, v6

    .line 633
    invoke-static {v0, v3, v6, v7}, Landroid/support/v4/media/session/b;->A(Ljava/io/RandomAccessFile;Ljava/io/FileOutputStream;J)V

    .line 634
    .line 635
    .line 636
    iget v5, v5, Ly8/a;->a:I

    .line 637
    .line 638
    new-array v5, v5, [B

    .line 639
    .line 640
    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 641
    .line 642
    .line 643
    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->flush()V

    .line 644
    .line 645
    .line 646
    goto :goto_c

    .line 647
    :cond_e
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 648
    .line 649
    .line 650
    move-result-object v1

    .line 651
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 652
    .line 653
    .line 654
    move-result v2

    .line 655
    const/16 v4, 0x18

    .line 656
    .line 657
    const/16 v5, 0x10

    .line 658
    .line 659
    const-wide/16 v7, 0xff

    .line 660
    .line 661
    if-eqz v2, :cond_f

    .line 662
    .line 663
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 664
    .line 665
    .line 666
    move-result-object v2

    .line 667
    check-cast v2, Ly8/b;

    .line 668
    .line 669
    iget-wide v10, v2, Ly8/b;->a:J

    .line 670
    .line 671
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 672
    .line 673
    .line 674
    move-result-wide v12

    .line 675
    sub-long/2addr v10, v12

    .line 676
    invoke-static {v0, v3, v10, v11}, Landroid/support/v4/media/session/b;->A(Ljava/io/RandomAccessFile;Ljava/io/FileOutputStream;J)V

    .line 677
    .line 678
    .line 679
    iget-wide v10, v2, Ly8/b;->b:J

    .line 680
    .line 681
    and-long/2addr v7, v10

    .line 682
    long-to-int v2, v7

    .line 683
    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write(I)V

    .line 684
    .line 685
    .line 686
    ushr-long v7, v10, v6

    .line 687
    .line 688
    long-to-int v2, v7

    .line 689
    and-int/lit16 v2, v2, 0xff

    .line 690
    .line 691
    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write(I)V

    .line 692
    .line 693
    .line 694
    ushr-long v7, v10, v5

    .line 695
    .line 696
    long-to-int v2, v7

    .line 697
    and-int/lit16 v2, v2, 0xff

    .line 698
    .line 699
    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write(I)V

    .line 700
    .line 701
    .line 702
    ushr-long v4, v10, v4

    .line 703
    .line 704
    long-to-int v2, v4

    .line 705
    and-int/lit16 v2, v2, 0xff

    .line 706
    .line 707
    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write(I)V

    .line 708
    .line 709
    .line 710
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readInt()I

    .line 711
    .line 712
    .line 713
    goto :goto_d

    .line 714
    :cond_f
    const-wide/16 v1, 0x10

    .line 715
    .line 716
    add-long v10, v24, v1

    .line 717
    .line 718
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 719
    .line 720
    .line 721
    move-result-wide v1

    .line 722
    sub-long/2addr v10, v1

    .line 723
    invoke-static {v0, v3, v10, v11}, Landroid/support/v4/media/session/b;->A(Ljava/io/RandomAccessFile;Ljava/io/FileOutputStream;J)V

    .line 724
    .line 725
    .line 726
    int-to-long v1, v9

    .line 727
    add-long v1, v22, v1

    .line 728
    .line 729
    and-long/2addr v7, v1

    .line 730
    long-to-int v8, v7

    .line 731
    invoke-virtual {v3, v8}, Ljava/io/OutputStream;->write(I)V

    .line 732
    .line 733
    .line 734
    ushr-long v6, v1, v6

    .line 735
    .line 736
    long-to-int v7, v6

    .line 737
    and-int/lit16 v6, v7, 0xff

    .line 738
    .line 739
    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write(I)V

    .line 740
    .line 741
    .line 742
    ushr-long v5, v1, v5

    .line 743
    .line 744
    long-to-int v6, v5

    .line 745
    and-int/lit16 v5, v6, 0xff

    .line 746
    .line 747
    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write(I)V

    .line 748
    .line 749
    .line 750
    ushr-long/2addr v1, v4

    .line 751
    long-to-int v2, v1

    .line 752
    and-int/lit16 v1, v2, 0xff

    .line 753
    .line 754
    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write(I)V

    .line 755
    .line 756
    .line 757
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readInt()I

    .line 758
    .line 759
    .line 760
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->length()J

    .line 761
    .line 762
    .line 763
    move-result-wide v1

    .line 764
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 765
    .line 766
    .line 767
    move-result-wide v4

    .line 768
    sub-long/2addr v1, v4

    .line 769
    invoke-static {v0, v3, v1, v2}, Landroid/support/v4/media/session/b;->A(Ljava/io/RandomAccessFile;Ljava/io/FileOutputStream;J)V

    .line 770
    .line 771
    .line 772
    :cond_10
    return-void

    .line 773
    :cond_11
    new-instance v0, La2/n0;

    .line 774
    .line 775
    const-string v1, "No end-of-central-directory found"

    .line 776
    .line 777
    invoke-direct {v0, v1}, La2/n0;-><init>(Ljava/lang/String;)V

    .line 778
    .line 779
    .line 780
    goto :goto_f

    .line 781
    :goto_e
    throw v0

    .line 782
    :goto_f
    goto :goto_e
.end method

.method public static b([B)Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    .line 6
    .line 7
    array-length v2, p0

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    :goto_0
    if-ge v4, v2, :cond_0

    .line 11
    .line 12
    aget-byte v5, p0, v4

    .line 13
    .line 14
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    new-array v6, v0, [Ljava/lang/Object;

    .line 19
    .line 20
    aput-object v5, v6, v3

    .line 21
    .line 22
    const-string v5, "%02x"

    .line 23
    .line 24
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    add-int/2addr v4, v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public static c(Ljava/io/File;Ljava/io/File;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "\u65e0\u6743\u9650\u5199\u5165\u6b64(\u76ee\u5f55/\u6587\u4ef6)"

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    .line 6
    .line 7
    .line 8
    move-result v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    nop

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-eqz v3, :cond_5

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-static {v3}, Lcom/yunpan/appmanage/util/a0;->c(Ljava/io/File;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_5

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    sget-object v3, Lfa/b0;->a:La2/w0;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, La2/w0;->A(Ljava/io/File;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    .line 39
    .line 40
    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 41
    .line 42
    .line 43
    :try_start_2
    new-instance p0, Ljava/io/FileOutputStream;

    .line 44
    .line 45
    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 46
    .line 47
    .line 48
    const/high16 p1, 0x200000

    .line 49
    .line 50
    :try_start_3
    new-array p1, p1, [B

    .line 51
    .line 52
    :goto_1
    invoke-virtual {v3, p1}, Ljava/io/InputStream;->read([B)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    const/4 v5, -0x1

    .line 57
    if-eq v4, v5, :cond_1

    .line 58
    .line 59
    invoke-virtual {p0, p1, v1, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    goto :goto_2

    .line 65
    :cond_1
    :try_start_4
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 66
    .line 67
    .line 68
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :catch_1
    move-exception p0

    .line 73
    goto :goto_6

    .line 74
    :catchall_1
    move-exception p0

    .line 75
    goto :goto_4

    .line 76
    :goto_2
    :try_start_6
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 77
    .line 78
    .line 79
    goto :goto_3

    .line 80
    :catchall_2
    move-exception p0

    .line 81
    :try_start_7
    const-class v4, Ljava/lang/Throwable;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 82
    .line 83
    :try_start_8
    const-string v5, "addSuppressed"

    .line 84
    .line 85
    new-array v6, v0, [Ljava/lang/Class;

    .line 86
    .line 87
    aput-object v4, v6, v1

    .line 88
    .line 89
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    new-array v0, v0, [Ljava/lang/Object;

    .line 94
    .line 95
    aput-object p0, v0, v1

    .line 96
    .line 97
    invoke-virtual {v4, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 98
    .line 99
    .line 100
    :catch_2
    :goto_3
    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 101
    :goto_4
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 102
    .line 103
    .line 104
    goto :goto_5

    .line 105
    :catchall_3
    move-exception p1

    .line 106
    :try_start_b
    invoke-static {p0, p1}, Lta/q;->u(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    :goto_5
    throw p0
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 110
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v0, ""

    .line 113
    .line 114
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-static {p0, p1}, Lg/b;->z(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    const-string p1, "ermission denied"

    .line 122
    .line 123
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-eqz p1, :cond_2

    .line 128
    .line 129
    goto :goto_7

    .line 130
    :cond_2
    const-string p1, "ead-only file system"

    .line 131
    .line 132
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-eqz p1, :cond_3

    .line 137
    .line 138
    const-string v2, "\u5931\u8d25\uff1a\u65e0\u6743\u9650\uff0c\u7cfb\u7edf\u6587\u4ef6"

    .line 139
    .line 140
    goto :goto_7

    .line 141
    :cond_3
    move-object v2, p0

    .line 142
    :goto_7
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 143
    .line 144
    .line 145
    move-result p0

    .line 146
    if-eqz p0, :cond_4

    .line 147
    .line 148
    const-string p0, "\u5931\u8d25\uff1a\u672a\u77e5\u9519\u8bef"

    .line 149
    .line 150
    move-object v2, p0

    .line 151
    :catch_3
    :cond_4
    new-instance p0, Ljava/lang/Exception;

    .line 152
    .line 153
    invoke-direct {p0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw p0

    .line 157
    :cond_5
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 158
    .line 159
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    invoke-static {p0, p1}, La2/w0;->z(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    return-void
.end method

.method public static d(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    sget-object v0, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v1, 0x1c

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_2

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lx0/a1;->d:Ljava/util/ArrayList;

    .line 13
    .line 14
    const v0, 0x7f0b02e2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lx0/a1;

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    new-instance v1, Lx0/a1;

    .line 26
    .line 27
    invoke-direct {v1}, Lx0/a1;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object p0, v1, Lx0/a1;->c:Ljava/lang/ref/WeakReference;

    .line 34
    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    if-ne p0, p1, :cond_2

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    new-instance p0, Ljava/lang/ref/WeakReference;

    .line 45
    .line 46
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iput-object p0, v1, Lx0/a1;->c:Ljava/lang/ref/WeakReference;

    .line 50
    .line 51
    iget-object p0, v1, Lx0/a1;->b:Landroid/util/SparseArray;

    .line 52
    .line 53
    if-nez p0, :cond_3

    .line 54
    .line 55
    new-instance p0, Landroid/util/SparseArray;

    .line 56
    .line 57
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object p0, v1, Lx0/a1;->b:Landroid/util/SparseArray;

    .line 61
    .line 62
    :cond_3
    iget-object p0, v1, Lx0/a1;->b:Landroid/util/SparseArray;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    const/4 v1, 0x1

    .line 69
    if-ne v0, v1, :cond_4

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-ltz v0, :cond_4

    .line 80
    .line 81
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 86
    .line 87
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    const/4 v3, 0x0

    .line 92
    :goto_0
    if-nez v3, :cond_5

    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    move-object v3, p0

    .line 103
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 104
    .line 105
    :cond_5
    if-eqz v3, :cond_8

    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    check-cast p0, Landroid/view/View;

    .line 112
    .line 113
    if-eqz p0, :cond_7

    .line 114
    .line 115
    invoke-static {p0}, Lx0/b1;->l(Landroid/view/View;)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_7

    .line 120
    .line 121
    const p1, 0x7f0b02e3

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    check-cast p0, Ljava/util/ArrayList;

    .line 129
    .line 130
    if-eqz p0, :cond_7

    .line 131
    .line 132
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    sub-int/2addr p1, v1

    .line 137
    if-gez p1, :cond_6

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_6
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    new-instance p0, Ljava/lang/ClassCastException;

    .line 148
    .line 149
    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    .line 150
    .line 151
    .line 152
    throw p0

    .line 153
    :cond_7
    :goto_1
    const/4 v2, 0x1

    .line 154
    :cond_8
    :goto_2
    return v2
.end method

.method public static e(Lx0/o;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return v1

    .line 6
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v3, 0x1c

    .line 9
    .line 10
    if-lt v2, v3, :cond_1

    .line 11
    .line 12
    invoke-interface {p0, p3}, Lx0/o;->j(Landroid/view/KeyEvent;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_1
    instance-of v2, p2, Landroid/app/Activity;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-eqz v2, :cond_9

    .line 21
    .line 22
    check-cast p2, Landroid/app/Activity;

    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/app/Activity;->onUserInteraction()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/16 p1, 0x8

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroid/view/Window;->hasFeature(I)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_5

    .line 38
    .line 39
    invoke-virtual {p2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const/16 v4, 0x52

    .line 48
    .line 49
    if-ne v2, v4, :cond_5

    .line 50
    .line 51
    if-eqz p1, :cond_5

    .line 52
    .line 53
    sget-boolean v2, Landroid/support/v4/media/session/b;->l:Z

    .line 54
    .line 55
    if-nez v2, :cond_2

    .line 56
    .line 57
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    const-string v4, "onMenuKeyEvent"

    .line 62
    .line 63
    new-array v5, v0, [Ljava/lang/Class;

    .line 64
    .line 65
    const-class v6, Landroid/view/KeyEvent;

    .line 66
    .line 67
    aput-object v6, v5, v1

    .line 68
    .line 69
    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    sput-object v2, Landroid/support/v4/media/session/b;->m:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    :catch_0
    sput-boolean v0, Landroid/support/v4/media/session/b;->l:Z

    .line 76
    .line 77
    :cond_2
    sget-object v2, Landroid/support/v4/media/session/b;->m:Ljava/lang/reflect/Method;

    .line 78
    .line 79
    if-eqz v2, :cond_4

    .line 80
    .line 81
    :try_start_1
    new-array v4, v0, [Ljava/lang/Object;

    .line 82
    .line 83
    aput-object p3, v4, v1

    .line 84
    .line 85
    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-nez p1, :cond_3

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    check-cast p1, Ljava/lang/Boolean;

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 95
    .line 96
    .line 97
    move-result v1
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    goto :goto_0

    .line 99
    :catch_1
    nop

    .line 100
    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_5
    invoke-virtual {p0, p3}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_6

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_6
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-static {p0, p3}, Lx0/b1;->c(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-eqz p1, :cond_7

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_7
    if-eqz p0, :cond_8

    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    :cond_8
    invoke-virtual {p3, p2, v3, p2}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    :goto_1
    return v0

    .line 132
    :cond_9
    instance-of v2, p2, Landroid/app/Dialog;

    .line 133
    .line 134
    if-eqz v2, :cond_10

    .line 135
    .line 136
    check-cast p2, Landroid/app/Dialog;

    .line 137
    .line 138
    sget-boolean p0, Landroid/support/v4/media/session/b;->n:Z

    .line 139
    .line 140
    if-nez p0, :cond_a

    .line 141
    .line 142
    :try_start_2
    const-class p0, Landroid/app/Dialog;

    .line 143
    .line 144
    const-string p1, "mOnKeyListener"

    .line 145
    .line 146
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    sput-object p0, Landroid/support/v4/media/session/b;->o:Ljava/lang/reflect/Field;

    .line 151
    .line 152
    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2

    .line 153
    .line 154
    .line 155
    :catch_2
    sput-boolean v0, Landroid/support/v4/media/session/b;->n:Z

    .line 156
    .line 157
    :cond_a
    sget-object p0, Landroid/support/v4/media/session/b;->o:Ljava/lang/reflect/Field;

    .line 158
    .line 159
    if-eqz p0, :cond_b

    .line 160
    .line 161
    :try_start_3
    invoke-virtual {p0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    check-cast p0, Landroid/content/DialogInterface$OnKeyListener;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :catch_3
    nop

    .line 169
    :cond_b
    move-object p0, v3

    .line 170
    :goto_2
    if-eqz p0, :cond_c

    .line 171
    .line 172
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    invoke-interface {p0, p2, p1, p3}, Landroid/content/DialogInterface$OnKeyListener;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    .line 177
    .line 178
    .line 179
    move-result p0

    .line 180
    if-eqz p0, :cond_c

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_c
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    invoke-virtual {p0, p3}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    if-eqz p1, :cond_d

    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_d
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    invoke-static {p0, p3}, Lx0/b1;->c(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    if-eqz p1, :cond_e

    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_e
    if-eqz p0, :cond_f

    .line 206
    .line 207
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    :cond_f
    invoke-virtual {p3, p2, v3, p2}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    :goto_3
    return v0

    .line 216
    :cond_10
    if-eqz p1, :cond_11

    .line 217
    .line 218
    invoke-static {p1, p3}, Lx0/b1;->c(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    if-nez p1, :cond_13

    .line 223
    .line 224
    :cond_11
    invoke-interface {p0, p3}, Lx0/o;->j(Landroid/view/KeyEvent;)Z

    .line 225
    .line 226
    .line 227
    move-result p0

    .line 228
    if-eqz p0, :cond_12

    .line 229
    .line 230
    goto :goto_4

    .line 231
    :cond_12
    const/4 v0, 0x0

    .line 232
    :cond_13
    :goto_4
    return v0
.end method

.method public static f(Lcom/yunpan/appmanage/service/AccService;Lz7/s;I)V
    .locals 5

    .line 1
    const/16 v0, 0x157c

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, -0x1

    .line 6
    const-string v4, "value"

    .line 7
    .line 8
    if-ne p2, v0, :cond_3

    .line 9
    .line 10
    invoke-virtual {p1, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lz7/p;->e()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-ne p1, v3, :cond_1

    .line 19
    .line 20
    sget-object p1, Lcom/yunpan/appmanage/carsdk/g0;->a:Lcom/yunpan/appmanage/carsdk/h0;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/yunpan/appmanage/carsdk/h0;->c:Lcom/autolink/app/vehicleservice/IVehicleControl;

    .line 23
    .line 24
    sget-object p2, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->KeyVehiclePropertyMirrorHold:Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;

    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->getValue()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    invoke-interface {p1, p2}, Lcom/autolink/app/vehicleservice/IVehicleControl;->getInt(I)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    :cond_0
    move p1, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    sget-object p2, Lcom/yunpan/appmanage/carsdk/g0;->a:Lcom/yunpan/appmanage/carsdk/h0;

    .line 40
    .line 41
    iget-object p2, p2, Lcom/yunpan/appmanage/carsdk/h0;->c:Lcom/autolink/app/vehicleservice/IVehicleControl;

    .line 42
    .line 43
    sget-object v0, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->KeyVehiclePropertyMirrorHold:Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->getValue()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-interface {p2, v0}, Lcom/autolink/app/vehicleservice/IVehicleControl;->getInt(I)I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-ne p2, p1, :cond_2

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    :goto_0
    sget-object p2, Lcom/yunpan/appmanage/carsdk/g0;->a:Lcom/yunpan/appmanage/carsdk/h0;

    .line 57
    .line 58
    iget-object p2, p2, Lcom/yunpan/appmanage/carsdk/h0;->c:Lcom/autolink/app/vehicleservice/IVehicleControl;

    .line 59
    .line 60
    sget-object v0, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->KeyVehiclePropertyMirrorHold:Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->getValue()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-interface {p2, v0, p1, p0}, Lcom/autolink/app/vehicleservice/IVehicleControl;->setIntData(IILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_3
    const/16 v0, 0x157d

    .line 75
    .line 76
    if-ne p2, v0, :cond_7

    .line 77
    .line 78
    invoke-virtual {p1, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lz7/p;->e()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-ne p1, v3, :cond_5

    .line 87
    .line 88
    sget-object p1, Lcom/yunpan/appmanage/carsdk/g0;->a:Lcom/yunpan/appmanage/carsdk/h0;

    .line 89
    .line 90
    iget-object p1, p1, Lcom/yunpan/appmanage/carsdk/h0;->c:Lcom/autolink/app/vehicleservice/IVehicleControl;

    .line 91
    .line 92
    sget-object p2, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->KeyVehiclePropertyPlg:Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;

    .line 93
    .line 94
    invoke-virtual {p2}, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->getValue()I

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    invoke-interface {p1, p2}, Lcom/autolink/app/vehicleservice/IVehicleControl;->getInt(I)I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-nez p1, :cond_4

    .line 103
    .line 104
    const/4 v1, 0x1

    .line 105
    :cond_4
    move p1, v1

    .line 106
    goto :goto_1

    .line 107
    :cond_5
    sget-object p2, Lcom/yunpan/appmanage/carsdk/g0;->a:Lcom/yunpan/appmanage/carsdk/h0;

    .line 108
    .line 109
    iget-object p2, p2, Lcom/yunpan/appmanage/carsdk/h0;->c:Lcom/autolink/app/vehicleservice/IVehicleControl;

    .line 110
    .line 111
    sget-object v0, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->KeyVehiclePropertyPlg:Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->getValue()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    invoke-interface {p2, v0}, Lcom/autolink/app/vehicleservice/IVehicleControl;->getInt(I)I

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    if-ne p2, p1, :cond_6

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_6
    :goto_1
    sget-object p2, Lcom/yunpan/appmanage/carsdk/g0;->a:Lcom/yunpan/appmanage/carsdk/h0;

    .line 125
    .line 126
    iget-object p2, p2, Lcom/yunpan/appmanage/carsdk/h0;->c:Lcom/autolink/app/vehicleservice/IVehicleControl;

    .line 127
    .line 128
    sget-object v0, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->KeyVehiclePropertyPlg:Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;

    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->getValue()I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-interface {p2, v0, p1, p0}, Lcom/autolink/app/vehicleservice/IVehicleControl;->setIntData(IILjava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :cond_7
    :goto_2
    return-void
.end method

.method public static g(Ljava/lang/Object;)V
    .locals 3

    .line 1
    sget-boolean v0, Landroid/support/v4/media/session/b;->g:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    const-string v0, "android.content.res.ThemedResourceCache"

    .line 7
    .line 8
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Landroid/support/v4/media/session/b;->f:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    :catch_0
    sput-boolean v1, Landroid/support/v4/media/session/b;->g:Z

    .line 15
    .line 16
    :cond_0
    sget-object v0, Landroid/support/v4/media/session/b;->f:Ljava/lang/Class;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    sget-boolean v2, Landroid/support/v4/media/session/b;->i:Z

    .line 22
    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    :try_start_1
    const-string v2, "mUnthemedEntries"

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Landroid/support/v4/media/session/b;->h:Ljava/lang/reflect/Field;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    .line 34
    .line 35
    .line 36
    :catch_1
    sput-boolean v1, Landroid/support/v4/media/session/b;->i:Z

    .line 37
    .line 38
    :cond_2
    sget-object v0, Landroid/support/v4/media/session/b;->h:Ljava/lang/reflect/Field;

    .line 39
    .line 40
    if-nez v0, :cond_3

    .line 41
    .line 42
    return-void

    .line 43
    :cond_3
    :try_start_2
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Landroid/util/LongSparseArray;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_2
    const/4 p0, 0x0

    .line 51
    :goto_0
    if-eqz p0, :cond_4

    .line 52
    .line 53
    invoke-static {p0}, Lq/h0;->a(Landroid/util/LongSparseArray;)V

    .line 54
    .line 55
    .line 56
    :cond_4
    return-void
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object p4

    .line 10
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p4

    .line 14
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/util/Map$Entry;

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    new-instance p4, Ljava/util/TreeMap;

    .line 47
    .line 48
    invoke-direct {p4}, Ljava/util/TreeMap;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 52
    .line 53
    .line 54
    move-result-object p5

    .line 55
    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object p5

    .line 59
    :goto_1
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Ljava/util/Map$Entry;

    .line 70
    .line 71
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    const-string v3, "\\s+"

    .line 82
    .line 83
    const-string v4, " "

    .line 84
    .line 85
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {p4, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_1
    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 104
    .line 105
    .line 106
    move-result-object p5

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object p5

    .line 116
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    const-string v3, ";"

    .line 121
    .line 122
    if-eqz v2, :cond_2

    .line 123
    .line 124
    :goto_2
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    check-cast v2, Ljava/lang/CharSequence;

    .line 129
    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-eqz v2, :cond_2

    .line 138
    .line 139
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p5

    .line 147
    invoke-virtual {p4}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    if-eqz v4, :cond_3

    .line 165
    .line 166
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    check-cast v4, Ljava/lang/CharSequence;

    .line 171
    .line 172
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    if-eqz v4, :cond_3

    .line 180
    .line 181
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string p2, "\n"

    .line 202
    .line 203
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v3, "/"

    .line 207
    .line 208
    if-eqz p3, :cond_7

    .line 209
    .line 210
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    if-eqz v4, :cond_4

    .line 215
    .line 216
    goto :goto_5

    .line 217
    :cond_4
    const/4 v4, -0x1

    .line 218
    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p3

    .line 222
    new-instance v4, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    const/4 v5, 0x0

    .line 228
    :goto_4
    array-length v6, p3

    .line 229
    if-ge v5, v6, :cond_6

    .line 230
    .line 231
    if-lez v5, :cond_5

    .line 232
    .line 233
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    :cond_5
    aget-object v6, p3, v5

    .line 237
    .line 238
    invoke-static {v6}, Landroid/support/v4/media/session/b;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    add-int/lit8 v5, v5, 0x1

    .line 246
    .line 247
    goto :goto_4

    .line 248
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    :cond_7
    :goto_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    new-instance p3, Ljava/util/ArrayList;

    .line 259
    .line 260
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 272
    .line 273
    .line 274
    move-result v3

    .line 275
    const-string v4, "="

    .line 276
    .line 277
    if-eqz v3, :cond_8

    .line 278
    .line 279
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    check-cast v3, Ljava/util/Map$Entry;

    .line 284
    .line 285
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v5

    .line 289
    check-cast v5, Ljava/lang/String;

    .line 290
    .line 291
    invoke-static {v5}, Landroid/support/v4/media/session/b;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v5

    .line 295
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    check-cast v3, Ljava/lang/String;

    .line 300
    .line 301
    invoke-static {v3}, Landroid/support/v4/media/session/b;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    new-instance v6, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    goto :goto_6

    .line 327
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 328
    .line 329
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 330
    .line 331
    .line 332
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 333
    .line 334
    .line 335
    move-result-object p3

    .line 336
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 337
    .line 338
    .line 339
    move-result v3

    .line 340
    const-string v5, "&"

    .line 341
    .line 342
    if-eqz v3, :cond_9

    .line 343
    .line 344
    :goto_7
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v3

    .line 348
    check-cast v3, Ljava/lang/CharSequence;

    .line 349
    .line 350
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 354
    .line 355
    .line 356
    move-result v3

    .line 357
    if-eqz v3, :cond_9

    .line 358
    .line 359
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    goto :goto_7

    .line 363
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object p3

    .line 367
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    new-instance p3, Ljava/util/ArrayList;

    .line 374
    .line 375
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .line 377
    .line 378
    invoke-virtual {p4}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 379
    .line 380
    .line 381
    move-result-object p4

    .line 382
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 383
    .line 384
    .line 385
    move-result-object p4

    .line 386
    :goto_8
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 387
    .line 388
    .line 389
    move-result v0

    .line 390
    if-eqz v0, :cond_a

    .line 391
    .line 392
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    check-cast v0, Ljava/util/Map$Entry;

    .line 397
    .line 398
    new-instance v3, Ljava/lang/StringBuilder;

    .line 399
    .line 400
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .line 402
    .line 403
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v6

    .line 407
    check-cast v6, Ljava/lang/String;

    .line 408
    .line 409
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    check-cast v0, Ljava/lang/String;

    .line 420
    .line 421
    invoke-static {v0}, Landroid/support/v4/media/session/b;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    goto :goto_8

    .line 436
    :cond_a
    new-instance p4, Ljava/lang/StringBuilder;

    .line 437
    .line 438
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 439
    .line 440
    .line 441
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 442
    .line 443
    .line 444
    move-result-object p3

    .line 445
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 446
    .line 447
    .line 448
    move-result v0

    .line 449
    if-eqz v0, :cond_b

    .line 450
    .line 451
    :goto_9
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    check-cast v0, Ljava/lang/CharSequence;

    .line 456
    .line 457
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 461
    .line 462
    .line 463
    move-result v0

    .line 464
    if-eqz v0, :cond_b

    .line 465
    .line 466
    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    goto :goto_9

    .line 470
    :cond_b
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object p3

    .line 474
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    .line 481
    .line 482
    sget-object p4, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 483
    .line 484
    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 485
    .line 486
    .line 487
    move-result-object p1

    .line 488
    const-string v0, "HmacSHA1"

    .line 489
    .line 490
    invoke-direct {p3, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 491
    .line 492
    .line 493
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 494
    .line 495
    .line 496
    move-result-object p1

    .line 497
    invoke-virtual {p1, p3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {p6, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 501
    .line 502
    .line 503
    move-result-object p3

    .line 504
    invoke-virtual {p1, p3}, Ljavax/crypto/Mac;->doFinal([B)[B

    .line 505
    .line 506
    .line 507
    move-result-object p1

    .line 508
    invoke-static {p1}, Landroid/support/v4/media/session/b;->b([B)Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object p1

    .line 512
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object p3

    .line 516
    const-string v2, "SHA-1"

    .line 517
    .line 518
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 519
    .line 520
    .line 521
    move-result-object v2

    .line 522
    invoke-virtual {p3, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 523
    .line 524
    .line 525
    move-result-object p3

    .line 526
    invoke-virtual {v2, p3}, Ljava/security/MessageDigest;->digest([B)[B

    .line 527
    .line 528
    .line 529
    move-result-object p3

    .line 530
    invoke-static {p3}, Landroid/support/v4/media/session/b;->b([B)Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object p3

    .line 534
    const-string v2, "sha1\n"

    .line 535
    .line 536
    invoke-static {v2, p6, p2, p3, p2}, Lta/q;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object p2

    .line 540
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    .line 541
    .line 542
    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 543
    .line 544
    .line 545
    move-result-object p1

    .line 546
    invoke-direct {p3, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 547
    .line 548
    .line 549
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 550
    .line 551
    .line 552
    move-result-object p1

    .line 553
    invoke-virtual {p1, p3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {p2, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 557
    .line 558
    .line 559
    move-result-object p2

    .line 560
    invoke-virtual {p1, p2}, Ljavax/crypto/Mac;->doFinal([B)[B

    .line 561
    .line 562
    .line 563
    move-result-object p1

    .line 564
    invoke-static {p1}, Landroid/support/v4/media/session/b;->b([B)Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object p1

    .line 568
    new-instance p2, Ljava/lang/StringBuilder;

    .line 569
    .line 570
    const-string p3, "q-sign-algorithm=sha1&q-ak="

    .line 571
    .line 572
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    const-string p0, "&q-sign-time="

    .line 579
    .line 580
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    const-string p0, "&q-key-time="

    .line 587
    .line 588
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    .line 590
    .line 591
    const-string p0, "&q-header-list="

    .line 592
    .line 593
    const-string p3, "&q-url-param-list="

    .line 594
    .line 595
    invoke-static {p2, p6, p0, v1, p3}, Landroid/support/v4/media/session/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    const-string p0, "&q-signature="

    .line 599
    .line 600
    invoke-static {p2, p5, p0, p1}, Landroid/support/v4/media/session/a;->u(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object p0

    .line 604
    return-object p0
.end method

.method public static i(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lb1/c;->a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    sget-boolean v0, Landroid/support/v4/media/session/b;->b:Z

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    :try_start_0
    const-class v1, Landroid/widget/CompoundButton;

    .line 18
    .line 19
    const-string v2, "mButtonDrawable"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sput-object v1, Landroid/support/v4/media/session/b;->a:Ljava/lang/reflect/Field;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    :catch_0
    sput-boolean v0, Landroid/support/v4/media/session/b;->b:Z

    .line 31
    .line 32
    :cond_1
    sget-object v0, Landroid/support/v4/media/session/b;->a:Ljava/lang/reflect/Field;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 42
    .line 43
    return-object p0

    .line 44
    :catch_1
    sput-object v1, Landroid/support/v4/media/session/b;->a:Ljava/lang/reflect/Field;

    .line 45
    .line 46
    :cond_2
    return-object v1
.end method

.method public static j([I[II)I
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    array-length v3, v0

    .line 8
    const/4 v4, 0x0

    .line 9
    const/16 v5, 0x9

    .line 10
    .line 11
    if-lt v3, v5, :cond_f

    .line 12
    .line 13
    array-length v3, v1

    .line 14
    const/16 v6, 0x26

    .line 15
    .line 16
    if-ge v3, v6, :cond_0

    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :cond_0
    const/4 v3, 0x5

    .line 21
    const/4 v6, 0x4

    .line 22
    const/4 v7, 0x2

    .line 23
    const/4 v8, 0x3

    .line 24
    const/4 v9, 0x1

    .line 25
    packed-switch v2, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    const/4 v10, 0x6

    .line 29
    if-eq v2, v5, :cond_e

    .line 30
    .line 31
    const/16 v11, 0xa

    .line 32
    .line 33
    const/4 v12, 0x7

    .line 34
    if-eq v2, v11, :cond_d

    .line 35
    .line 36
    packed-switch v2, :pswitch_data_1

    .line 37
    .line 38
    .line 39
    const/16 v13, 0xc

    .line 40
    .line 41
    const/16 v14, 0xb

    .line 42
    .line 43
    const/16 v15, 0xd

    .line 44
    .line 45
    const/16 v16, 0x8

    .line 46
    .line 47
    const/16 v17, 0xe

    .line 48
    .line 49
    const/16 v18, 0x10

    .line 50
    .line 51
    const/16 v19, 0x11

    .line 52
    .line 53
    const/16 v20, 0x17

    .line 54
    .line 55
    const/16 v21, 0x15

    .line 56
    .line 57
    const/16 v5, 0x12

    .line 58
    .line 59
    const/16 v22, 0xf

    .line 60
    .line 61
    packed-switch v2, :pswitch_data_2

    .line 62
    .line 63
    .line 64
    const/16 v11, 0x20

    .line 65
    .line 66
    const/16 v13, 0x1e

    .line 67
    .line 68
    const/16 v16, 0x18

    .line 69
    .line 70
    const/16 v17, 0x1f

    .line 71
    .line 72
    const/16 v18, 0x19

    .line 73
    .line 74
    const/16 v19, 0x1a

    .line 75
    .line 76
    packed-switch v2, :pswitch_data_3

    .line 77
    .line 78
    .line 79
    const/16 v13, 0x22

    .line 80
    .line 81
    const/16 v16, 0x21

    .line 82
    .line 83
    packed-switch v2, :pswitch_data_4

    .line 84
    .line 85
    .line 86
    const/16 v16, 0x1b

    .line 87
    .line 88
    const/16 v18, 0x1c

    .line 89
    .line 90
    const/16 v19, 0x13

    .line 91
    .line 92
    packed-switch v2, :pswitch_data_5

    .line 93
    .line 94
    .line 95
    const/16 v0, 0xe5

    .line 96
    .line 97
    if-eq v2, v0, :cond_c

    .line 98
    .line 99
    const/16 v0, 0xe6

    .line 100
    .line 101
    if-eq v2, v0, :cond_b

    .line 102
    .line 103
    packed-switch v2, :pswitch_data_6

    .line 104
    .line 105
    .line 106
    const/16 v0, 0x2769

    .line 107
    .line 108
    const/16 v10, 0x1d

    .line 109
    .line 110
    if-eq v2, v0, :cond_a

    .line 111
    .line 112
    const/16 v0, 0x276a

    .line 113
    .line 114
    if-eq v2, v0, :cond_9

    .line 115
    .line 116
    const/16 v0, 0x16

    .line 117
    .line 118
    packed-switch v2, :pswitch_data_7

    .line 119
    .line 120
    .line 121
    if-eq v2, v5, :cond_8

    .line 122
    .line 123
    const/16 v0, 0x2728

    .line 124
    .line 125
    if-eq v2, v0, :cond_7

    .line 126
    .line 127
    const/16 v0, 0x272c

    .line 128
    .line 129
    if-eq v2, v0, :cond_6

    .line 130
    .line 131
    const/16 v0, 0x2755

    .line 132
    .line 133
    if-eq v2, v0, :cond_5

    .line 134
    .line 135
    const/16 v0, 0x2757

    .line 136
    .line 137
    if-eq v2, v0, :cond_4

    .line 138
    .line 139
    const/16 v0, 0x2771

    .line 140
    .line 141
    if-eq v2, v0, :cond_3

    .line 142
    .line 143
    const/16 v0, 0x2798

    .line 144
    .line 145
    if-eq v2, v0, :cond_2

    .line 146
    .line 147
    const/16 v0, 0x27a3

    .line 148
    .line 149
    if-eq v2, v0, :cond_1

    .line 150
    .line 151
    return v4

    .line 152
    :cond_1
    aget v0, v1, v6

    .line 153
    .line 154
    and-int/2addr v0, v9

    .line 155
    return v0

    .line 156
    :cond_2
    const/16 v0, 0x14

    .line 157
    .line 158
    aget v0, v1, v0

    .line 159
    .line 160
    shr-int/2addr v0, v9

    .line 161
    and-int/2addr v0, v9

    .line 162
    return v0

    .line 163
    :cond_3
    aget v0, v1, v19

    .line 164
    .line 165
    shr-int/2addr v0, v3

    .line 166
    and-int/2addr v0, v8

    .line 167
    return v0

    .line 168
    :cond_4
    aget v0, v1, v10

    .line 169
    .line 170
    and-int/2addr v0, v9

    .line 171
    return v0

    .line 172
    :cond_5
    aget v0, v1, v10

    .line 173
    .line 174
    shr-int/2addr v0, v9

    .line 175
    and-int/2addr v0, v9

    .line 176
    return v0

    .line 177
    :cond_6
    aget v0, v1, v19

    .line 178
    .line 179
    shr-int/2addr v0, v6

    .line 180
    and-int/2addr v0, v9

    .line 181
    return v0

    .line 182
    :cond_7
    aget v0, v1, v18

    .line 183
    .line 184
    shr-int/2addr v0, v12

    .line 185
    and-int/2addr v0, v9

    .line 186
    return v0

    .line 187
    :cond_8
    aget v0, v1, v8

    .line 188
    .line 189
    shr-int/2addr v0, v6

    .line 190
    and-int/2addr v0, v9

    .line 191
    return v0

    .line 192
    :pswitch_0
    aget v0, v1, v0

    .line 193
    .line 194
    shr-int/2addr v0, v7

    .line 195
    and-int/2addr v0, v9

    .line 196
    return v0

    .line 197
    :pswitch_1
    aget v0, v1, v0

    .line 198
    .line 199
    shr-int/2addr v0, v9

    .line 200
    and-int/2addr v0, v9

    .line 201
    return v0

    .line 202
    :pswitch_2
    aget v0, v1, v0

    .line 203
    .line 204
    and-int/2addr v0, v9

    .line 205
    return v0

    .line 206
    :cond_9
    aget v0, v1, v10

    .line 207
    .line 208
    shr-int/2addr v0, v6

    .line 209
    and-int/2addr v0, v9

    .line 210
    return v0

    .line 211
    :cond_a
    aget v0, v1, v10

    .line 212
    .line 213
    shr-int/2addr v0, v8

    .line 214
    and-int/2addr v0, v9

    .line 215
    return v0

    .line 216
    :pswitch_3
    aget v0, v1, v13

    .line 217
    .line 218
    shr-int/2addr v0, v6

    .line 219
    and-int/2addr v0, v9

    .line 220
    return v0

    .line 221
    :pswitch_4
    aget v0, v1, v13

    .line 222
    .line 223
    shr-int/2addr v0, v8

    .line 224
    and-int/2addr v0, v9

    .line 225
    return v0

    .line 226
    :pswitch_5
    aget v0, v1, v13

    .line 227
    .line 228
    shr-int/2addr v0, v9

    .line 229
    and-int/2addr v0, v8

    .line 230
    return v0

    .line 231
    :pswitch_6
    aget v0, v1, v11

    .line 232
    .line 233
    shr-int/2addr v0, v7

    .line 234
    and-int/2addr v0, v8

    .line 235
    return v0

    .line 236
    :pswitch_7
    aget v0, v1, v18

    .line 237
    .line 238
    shr-int/2addr v0, v10

    .line 239
    and-int/2addr v0, v9

    .line 240
    return v0

    .line 241
    :pswitch_8
    aget v0, v1, v18

    .line 242
    .line 243
    shr-int/2addr v0, v3

    .line 244
    and-int/2addr v0, v9

    .line 245
    return v0

    .line 246
    :pswitch_9
    aget v0, v1, v19

    .line 247
    .line 248
    shr-int/2addr v0, v8

    .line 249
    and-int/2addr v0, v9

    .line 250
    return v0

    .line 251
    :pswitch_a
    aget v0, v1, v19

    .line 252
    .line 253
    shr-int/2addr v0, v7

    .line 254
    and-int/2addr v0, v9

    .line 255
    return v0

    .line 256
    :pswitch_b
    aget v0, v1, v15

    .line 257
    .line 258
    shr-int/2addr v0, v8

    .line 259
    and-int/2addr v0, v9

    .line 260
    return v0

    .line 261
    :pswitch_c
    aget v0, v1, v15

    .line 262
    .line 263
    shr-int/2addr v0, v9

    .line 264
    and-int/2addr v0, v8

    .line 265
    return v0

    .line 266
    :pswitch_d
    aget v0, v1, v14

    .line 267
    .line 268
    shr-int/2addr v0, v8

    .line 269
    and-int/2addr v0, v9

    .line 270
    return v0

    .line 271
    :pswitch_e
    aget v0, v1, v14

    .line 272
    .line 273
    shr-int/2addr v0, v7

    .line 274
    and-int/2addr v0, v9

    .line 275
    return v0

    .line 276
    :pswitch_f
    aget v0, v1, v14

    .line 277
    .line 278
    shr-int/2addr v0, v9

    .line 279
    and-int/2addr v0, v9

    .line 280
    return v0

    .line 281
    :cond_b
    aget v0, v1, v18

    .line 282
    .line 283
    shr-int/2addr v0, v6

    .line 284
    and-int/2addr v0, v9

    .line 285
    return v0

    .line 286
    :cond_c
    aget v0, v1, v19

    .line 287
    .line 288
    shr-int/2addr v0, v9

    .line 289
    and-int/2addr v0, v9

    .line 290
    return v0

    .line 291
    :pswitch_10
    aget v0, v1, v18

    .line 292
    .line 293
    and-int/lit8 v0, v0, 0xf

    .line 294
    .line 295
    return v0

    .line 296
    :pswitch_11
    aget v0, v0, v9

    .line 297
    .line 298
    shr-int/2addr v0, v8

    .line 299
    and-int/2addr v0, v9

    .line 300
    return v0

    .line 301
    :pswitch_12
    aget v0, v1, v19

    .line 302
    .line 303
    and-int/2addr v0, v9

    .line 304
    return v0

    .line 305
    :pswitch_13
    aget v0, v1, v16

    .line 306
    .line 307
    shr-int/2addr v0, v8

    .line 308
    and-int/lit8 v0, v0, 0x1f

    .line 309
    .line 310
    return v0

    .line 311
    :pswitch_14
    aget v0, v1, v16

    .line 312
    .line 313
    and-int/2addr v0, v12

    .line 314
    return v0

    .line 315
    :pswitch_15
    aget v0, v0, v8

    .line 316
    .line 317
    and-int/2addr v0, v9

    .line 318
    return v0

    .line 319
    :pswitch_16
    aget v0, v0, v12

    .line 320
    .line 321
    shr-int/2addr v0, v10

    .line 322
    and-int/2addr v0, v8

    .line 323
    return v0

    .line 324
    :pswitch_17
    aget v0, v0, v12

    .line 325
    .line 326
    shr-int/2addr v0, v6

    .line 327
    and-int/2addr v0, v8

    .line 328
    return v0

    .line 329
    :pswitch_18
    aget v0, v0, v12

    .line 330
    .line 331
    and-int/lit8 v0, v0, 0xf

    .line 332
    .line 333
    return v0

    .line 334
    :pswitch_19
    aget v0, v0, v10

    .line 335
    .line 336
    shr-int/2addr v0, v10

    .line 337
    and-int/2addr v0, v8

    .line 338
    return v0

    .line 339
    :pswitch_1a
    aget v0, v0, v10

    .line 340
    .line 341
    shr-int/2addr v0, v6

    .line 342
    and-int/2addr v0, v8

    .line 343
    return v0

    .line 344
    :pswitch_1b
    aget v0, v0, v10

    .line 345
    .line 346
    shr-int/2addr v0, v7

    .line 347
    and-int/2addr v0, v8

    .line 348
    return v0

    .line 349
    :pswitch_1c
    aget v0, v0, v3

    .line 350
    .line 351
    shr-int/2addr v0, v10

    .line 352
    and-int/2addr v0, v9

    .line 353
    return v0

    .line 354
    :pswitch_1d
    aget v0, v0, v3

    .line 355
    .line 356
    shr-int/2addr v0, v8

    .line 357
    and-int/2addr v0, v12

    .line 358
    return v0

    .line 359
    :pswitch_1e
    aget v0, v0, v3

    .line 360
    .line 361
    and-int/2addr v0, v12

    .line 362
    return v0

    .line 363
    :pswitch_1f
    aget v0, v0, v6

    .line 364
    .line 365
    shr-int/2addr v0, v6

    .line 366
    and-int/lit8 v0, v0, 0xf

    .line 367
    .line 368
    return v0

    .line 369
    :pswitch_20
    aget v0, v0, v6

    .line 370
    .line 371
    shr-int/2addr v0, v9

    .line 372
    and-int/2addr v0, v12

    .line 373
    return v0

    .line 374
    :pswitch_21
    aget v0, v0, v6

    .line 375
    .line 376
    and-int/2addr v0, v9

    .line 377
    return v0

    .line 378
    :pswitch_22
    aget v0, v0, v7

    .line 379
    .line 380
    shr-int/2addr v0, v10

    .line 381
    and-int/2addr v0, v8

    .line 382
    return v0

    .line 383
    :pswitch_23
    aget v0, v0, v7

    .line 384
    .line 385
    shr-int/2addr v0, v3

    .line 386
    and-int/2addr v0, v9

    .line 387
    return v0

    .line 388
    :pswitch_24
    aget v0, v0, v7

    .line 389
    .line 390
    shr-int/2addr v0, v6

    .line 391
    and-int/2addr v0, v9

    .line 392
    return v0

    .line 393
    :pswitch_25
    aget v0, v0, v7

    .line 394
    .line 395
    shr-int/2addr v0, v8

    .line 396
    and-int/2addr v0, v9

    .line 397
    return v0

    .line 398
    :pswitch_26
    aget v0, v0, v7

    .line 399
    .line 400
    shr-int/2addr v0, v7

    .line 401
    and-int/2addr v0, v9

    .line 402
    return v0

    .line 403
    :pswitch_27
    aget v0, v0, v7

    .line 404
    .line 405
    and-int/2addr v0, v8

    .line 406
    return v0

    .line 407
    :pswitch_28
    aget v0, v0, v9

    .line 408
    .line 409
    shr-int/2addr v0, v7

    .line 410
    and-int/2addr v0, v9

    .line 411
    return v0

    .line 412
    :pswitch_29
    aget v0, v0, v9

    .line 413
    .line 414
    shr-int/2addr v0, v9

    .line 415
    and-int/2addr v0, v9

    .line 416
    return v0

    .line 417
    :pswitch_2a
    aget v0, v0, v9

    .line 418
    .line 419
    and-int/2addr v0, v9

    .line 420
    return v0

    .line 421
    :pswitch_2b
    aget v0, v0, v4

    .line 422
    .line 423
    and-int/lit8 v0, v0, 0xf

    .line 424
    .line 425
    return v0

    .line 426
    :pswitch_2c
    aget v0, v1, v8

    .line 427
    .line 428
    shr-int/2addr v0, v10

    .line 429
    and-int/2addr v0, v9

    .line 430
    return v0

    .line 431
    :pswitch_2d
    aget v0, v1, v13

    .line 432
    .line 433
    and-int/2addr v0, v9

    .line 434
    return v0

    .line 435
    :pswitch_2e
    aget v0, v1, v16

    .line 436
    .line 437
    shr-int/2addr v0, v12

    .line 438
    and-int/2addr v0, v9

    .line 439
    return v0

    .line 440
    :pswitch_2f
    aget v0, v1, v16

    .line 441
    .line 442
    shr-int/2addr v0, v10

    .line 443
    and-int/2addr v0, v9

    .line 444
    return v0

    .line 445
    :pswitch_30
    aget v0, v1, v16

    .line 446
    .line 447
    shr-int/2addr v0, v6

    .line 448
    and-int/2addr v0, v8

    .line 449
    return v0

    .line 450
    :pswitch_31
    aget v0, v1, v16

    .line 451
    .line 452
    shr-int/2addr v0, v7

    .line 453
    and-int/2addr v0, v8

    .line 454
    return v0

    .line 455
    :pswitch_32
    aget v0, v1, v16

    .line 456
    .line 457
    and-int/2addr v0, v8

    .line 458
    return v0

    .line 459
    :pswitch_33
    aget v0, v1, v11

    .line 460
    .line 461
    shr-int/2addr v0, v12

    .line 462
    and-int/2addr v0, v9

    .line 463
    return v0

    .line 464
    :pswitch_34
    aget v0, v1, v11

    .line 465
    .line 466
    shr-int/2addr v0, v10

    .line 467
    and-int/2addr v0, v9

    .line 468
    return v0

    .line 469
    :pswitch_35
    aget v0, v1, v11

    .line 470
    .line 471
    shr-int/2addr v0, v6

    .line 472
    and-int/2addr v0, v8

    .line 473
    return v0

    .line 474
    :pswitch_36
    aget v0, v1, v11

    .line 475
    .line 476
    and-int/2addr v0, v8

    .line 477
    return v0

    .line 478
    :pswitch_37
    aget v0, v1, v17

    .line 479
    .line 480
    shr-int/2addr v0, v10

    .line 481
    and-int/2addr v0, v8

    .line 482
    return v0

    .line 483
    :pswitch_38
    aget v0, v1, v17

    .line 484
    .line 485
    shr-int/2addr v0, v3

    .line 486
    and-int/2addr v0, v9

    .line 487
    return v0

    .line 488
    :pswitch_39
    aget v0, v1, v17

    .line 489
    .line 490
    shr-int/2addr v0, v6

    .line 491
    and-int/2addr v0, v9

    .line 492
    return v0

    .line 493
    :pswitch_3a
    aget v0, v1, v17

    .line 494
    .line 495
    shr-int/2addr v0, v8

    .line 496
    and-int/2addr v0, v9

    .line 497
    return v0

    .line 498
    :pswitch_3b
    aget v0, v1, v17

    .line 499
    .line 500
    shr-int/2addr v0, v9

    .line 501
    and-int/2addr v0, v8

    .line 502
    return v0

    .line 503
    :pswitch_3c
    aget v0, v1, v17

    .line 504
    .line 505
    and-int/2addr v0, v9

    .line 506
    return v0

    .line 507
    :pswitch_3d
    aget v0, v1, v13

    .line 508
    .line 509
    shr-int/2addr v0, v12

    .line 510
    and-int/2addr v0, v9

    .line 511
    return v0

    .line 512
    :pswitch_3e
    aget v0, v1, v13

    .line 513
    .line 514
    shr-int/2addr v0, v3

    .line 515
    and-int/2addr v0, v8

    .line 516
    return v0

    .line 517
    :pswitch_3f
    aget v0, v1, v13

    .line 518
    .line 519
    shr-int/2addr v0, v8

    .line 520
    and-int/2addr v0, v8

    .line 521
    return v0

    .line 522
    :pswitch_40
    aget v0, v1, v13

    .line 523
    .line 524
    shr-int/2addr v0, v7

    .line 525
    and-int/2addr v0, v9

    .line 526
    return v0

    .line 527
    :pswitch_41
    aget v0, v1, v13

    .line 528
    .line 529
    shr-int/2addr v0, v9

    .line 530
    and-int/2addr v0, v9

    .line 531
    return v0

    .line 532
    :pswitch_42
    aget v0, v1, v13

    .line 533
    .line 534
    and-int/2addr v0, v9

    .line 535
    return v0

    .line 536
    :pswitch_43
    aget v0, v1, v19

    .line 537
    .line 538
    shr-int/2addr v0, v12

    .line 539
    and-int/2addr v0, v9

    .line 540
    return v0

    .line 541
    :pswitch_44
    aget v0, v1, v19

    .line 542
    .line 543
    shr-int/2addr v0, v10

    .line 544
    and-int/2addr v0, v9

    .line 545
    return v0

    .line 546
    :pswitch_45
    aget v0, v1, v19

    .line 547
    .line 548
    shr-int/2addr v0, v3

    .line 549
    and-int/2addr v0, v9

    .line 550
    return v0

    .line 551
    :pswitch_46
    aget v0, v1, v19

    .line 552
    .line 553
    shr-int/2addr v0, v6

    .line 554
    and-int/2addr v0, v9

    .line 555
    return v0

    .line 556
    :pswitch_47
    aget v0, v1, v19

    .line 557
    .line 558
    shr-int/2addr v0, v8

    .line 559
    and-int/2addr v0, v9

    .line 560
    return v0

    .line 561
    :pswitch_48
    aget v0, v1, v19

    .line 562
    .line 563
    shr-int/2addr v0, v7

    .line 564
    and-int/2addr v0, v9

    .line 565
    return v0

    .line 566
    :pswitch_49
    aget v0, v1, v19

    .line 567
    .line 568
    shr-int/2addr v0, v9

    .line 569
    and-int/2addr v0, v9

    .line 570
    return v0

    .line 571
    :pswitch_4a
    aget v0, v1, v19

    .line 572
    .line 573
    and-int/2addr v0, v9

    .line 574
    return v0

    .line 575
    :pswitch_4b
    aget v0, v1, v18

    .line 576
    .line 577
    shr-int/2addr v0, v12

    .line 578
    and-int/2addr v0, v9

    .line 579
    return v0

    .line 580
    :pswitch_4c
    aget v0, v1, v18

    .line 581
    .line 582
    shr-int/2addr v0, v10

    .line 583
    and-int/2addr v0, v9

    .line 584
    return v0

    .line 585
    :pswitch_4d
    aget v0, v1, v18

    .line 586
    .line 587
    shr-int/2addr v0, v3

    .line 588
    and-int/2addr v0, v9

    .line 589
    return v0

    .line 590
    :pswitch_4e
    aget v0, v1, v18

    .line 591
    .line 592
    shr-int/2addr v0, v6

    .line 593
    and-int/2addr v0, v9

    .line 594
    return v0

    .line 595
    :pswitch_4f
    aget v0, v1, v18

    .line 596
    .line 597
    shr-int/2addr v0, v8

    .line 598
    and-int/2addr v0, v9

    .line 599
    return v0

    .line 600
    :pswitch_50
    aget v0, v1, v18

    .line 601
    .line 602
    shr-int/2addr v0, v7

    .line 603
    and-int/2addr v0, v9

    .line 604
    return v0

    .line 605
    :pswitch_51
    aget v0, v1, v18

    .line 606
    .line 607
    shr-int/2addr v0, v9

    .line 608
    and-int/2addr v0, v9

    .line 609
    return v0

    .line 610
    :pswitch_52
    aget v0, v1, v18

    .line 611
    .line 612
    and-int/2addr v0, v9

    .line 613
    return v0

    .line 614
    :pswitch_53
    aget v0, v1, v16

    .line 615
    .line 616
    shr-int/2addr v0, v10

    .line 617
    and-int/2addr v0, v8

    .line 618
    return v0

    .line 619
    :pswitch_54
    aget v0, v1, v16

    .line 620
    .line 621
    shr-int/2addr v0, v3

    .line 622
    and-int/2addr v0, v9

    .line 623
    return v0

    .line 624
    :pswitch_55
    aget v0, v1, v16

    .line 625
    .line 626
    shr-int/2addr v0, v6

    .line 627
    and-int/2addr v0, v9

    .line 628
    return v0

    .line 629
    :pswitch_56
    aget v0, v1, v16

    .line 630
    .line 631
    shr-int/2addr v0, v8

    .line 632
    and-int/2addr v0, v9

    .line 633
    return v0

    .line 634
    :pswitch_57
    aget v0, v1, v16

    .line 635
    .line 636
    shr-int/2addr v0, v7

    .line 637
    and-int/2addr v0, v9

    .line 638
    return v0

    .line 639
    :pswitch_58
    aget v0, v1, v16

    .line 640
    .line 641
    shr-int/2addr v0, v9

    .line 642
    and-int/2addr v0, v9

    .line 643
    return v0

    .line 644
    :pswitch_59
    aget v0, v1, v16

    .line 645
    .line 646
    and-int/2addr v0, v9

    .line 647
    return v0

    .line 648
    :pswitch_5a
    aget v0, v1, v20

    .line 649
    .line 650
    shr-int/2addr v0, v12

    .line 651
    and-int/2addr v0, v9

    .line 652
    return v0

    .line 653
    :pswitch_5b
    aget v0, v1, v20

    .line 654
    .line 655
    shr-int/2addr v0, v3

    .line 656
    and-int/2addr v0, v9

    .line 657
    return v0

    .line 658
    :pswitch_5c
    aget v0, v1, v20

    .line 659
    .line 660
    shr-int/2addr v0, v6

    .line 661
    and-int/2addr v0, v9

    .line 662
    return v0

    .line 663
    :pswitch_5d
    aget v0, v1, v20

    .line 664
    .line 665
    shr-int/2addr v0, v8

    .line 666
    and-int/2addr v0, v9

    .line 667
    return v0

    .line 668
    :pswitch_5e
    aget v0, v1, v20

    .line 669
    .line 670
    shr-int/2addr v0, v7

    .line 671
    and-int/2addr v0, v9

    .line 672
    return v0

    .line 673
    :pswitch_5f
    aget v0, v1, v20

    .line 674
    .line 675
    shr-int/2addr v0, v9

    .line 676
    and-int/2addr v0, v9

    .line 677
    return v0

    .line 678
    :pswitch_60
    aget v0, v1, v20

    .line 679
    .line 680
    and-int/2addr v0, v9

    .line 681
    return v0

    .line 682
    :pswitch_61
    aget v0, v1, v21

    .line 683
    .line 684
    shr-int/2addr v0, v12

    .line 685
    and-int/2addr v0, v9

    .line 686
    return v0

    .line 687
    :pswitch_62
    aget v0, v1, v21

    .line 688
    .line 689
    shr-int/2addr v0, v10

    .line 690
    and-int/2addr v0, v9

    .line 691
    return v0

    .line 692
    :pswitch_63
    aget v0, v1, v21

    .line 693
    .line 694
    shr-int/2addr v0, v3

    .line 695
    and-int/2addr v0, v9

    .line 696
    return v0

    .line 697
    :pswitch_64
    aget v0, v1, v21

    .line 698
    .line 699
    shr-int/2addr v0, v6

    .line 700
    and-int/2addr v0, v9

    .line 701
    return v0

    .line 702
    :pswitch_65
    aget v0, v1, v21

    .line 703
    .line 704
    shr-int/2addr v0, v8

    .line 705
    and-int/2addr v0, v9

    .line 706
    return v0

    .line 707
    :pswitch_66
    aget v0, v1, v21

    .line 708
    .line 709
    shr-int/2addr v0, v7

    .line 710
    and-int/2addr v0, v9

    .line 711
    return v0

    .line 712
    :pswitch_67
    aget v0, v1, v21

    .line 713
    .line 714
    shr-int/2addr v0, v9

    .line 715
    and-int/2addr v0, v9

    .line 716
    return v0

    .line 717
    :pswitch_68
    aget v0, v1, v21

    .line 718
    .line 719
    and-int/2addr v0, v9

    .line 720
    return v0

    .line 721
    :pswitch_69
    aget v0, v1, v5

    .line 722
    .line 723
    shr-int/2addr v0, v12

    .line 724
    and-int/2addr v0, v9

    .line 725
    return v0

    .line 726
    :pswitch_6a
    aget v0, v1, v5

    .line 727
    .line 728
    shr-int/2addr v0, v10

    .line 729
    and-int/2addr v0, v9

    .line 730
    return v0

    .line 731
    :pswitch_6b
    aget v0, v1, v5

    .line 732
    .line 733
    shr-int/2addr v0, v3

    .line 734
    and-int/2addr v0, v9

    .line 735
    return v0

    .line 736
    :pswitch_6c
    aget v0, v1, v5

    .line 737
    .line 738
    shr-int/2addr v0, v6

    .line 739
    and-int/2addr v0, v9

    .line 740
    return v0

    .line 741
    :pswitch_6d
    aget v0, v1, v5

    .line 742
    .line 743
    shr-int/2addr v0, v8

    .line 744
    and-int/2addr v0, v9

    .line 745
    return v0

    .line 746
    :pswitch_6e
    aget v0, v1, v5

    .line 747
    .line 748
    shr-int/2addr v0, v7

    .line 749
    and-int/2addr v0, v9

    .line 750
    return v0

    .line 751
    :pswitch_6f
    aget v0, v1, v5

    .line 752
    .line 753
    shr-int/2addr v0, v9

    .line 754
    and-int/2addr v0, v9

    .line 755
    return v0

    .line 756
    :pswitch_70
    aget v0, v1, v5

    .line 757
    .line 758
    and-int/2addr v0, v9

    .line 759
    return v0

    .line 760
    :pswitch_71
    aget v0, v1, v19

    .line 761
    .line 762
    shr-int/2addr v0, v12

    .line 763
    and-int/2addr v0, v9

    .line 764
    return v0

    .line 765
    :pswitch_72
    aget v0, v1, v19

    .line 766
    .line 767
    shr-int/2addr v0, v10

    .line 768
    and-int/2addr v0, v9

    .line 769
    return v0

    .line 770
    :pswitch_73
    aget v0, v1, v19

    .line 771
    .line 772
    shr-int/2addr v0, v3

    .line 773
    and-int/2addr v0, v9

    .line 774
    return v0

    .line 775
    :pswitch_74
    aget v0, v1, v19

    .line 776
    .line 777
    shr-int/2addr v0, v6

    .line 778
    and-int/2addr v0, v9

    .line 779
    return v0

    .line 780
    :pswitch_75
    aget v0, v1, v19

    .line 781
    .line 782
    shr-int/2addr v0, v8

    .line 783
    and-int/2addr v0, v9

    .line 784
    return v0

    .line 785
    :pswitch_76
    aget v0, v1, v19

    .line 786
    .line 787
    shr-int/2addr v0, v7

    .line 788
    and-int/2addr v0, v9

    .line 789
    return v0

    .line 790
    :pswitch_77
    aget v0, v1, v19

    .line 791
    .line 792
    and-int/2addr v0, v8

    .line 793
    return v0

    .line 794
    :pswitch_78
    aget v0, v1, v18

    .line 795
    .line 796
    shr-int/2addr v0, v12

    .line 797
    and-int/2addr v0, v9

    .line 798
    return v0

    .line 799
    :pswitch_79
    aget v0, v1, v18

    .line 800
    .line 801
    shr-int/2addr v0, v10

    .line 802
    and-int/2addr v0, v9

    .line 803
    return v0

    .line 804
    :pswitch_7a
    aget v0, v1, v18

    .line 805
    .line 806
    shr-int/2addr v0, v3

    .line 807
    and-int/2addr v0, v9

    .line 808
    return v0

    .line 809
    :pswitch_7b
    aget v0, v1, v18

    .line 810
    .line 811
    shr-int/2addr v0, v6

    .line 812
    and-int/2addr v0, v9

    .line 813
    return v0

    .line 814
    :pswitch_7c
    aget v0, v1, v18

    .line 815
    .line 816
    shr-int/2addr v0, v8

    .line 817
    and-int/2addr v0, v9

    .line 818
    return v0

    .line 819
    :pswitch_7d
    aget v0, v1, v18

    .line 820
    .line 821
    shr-int/2addr v0, v7

    .line 822
    and-int/2addr v0, v9

    .line 823
    return v0

    .line 824
    :pswitch_7e
    aget v0, v1, v18

    .line 825
    .line 826
    and-int/2addr v0, v8

    .line 827
    return v0

    .line 828
    :pswitch_7f
    aget v0, v1, v22

    .line 829
    .line 830
    shr-int/2addr v0, v12

    .line 831
    and-int/2addr v0, v9

    .line 832
    return v0

    .line 833
    :pswitch_80
    aget v0, v1, v22

    .line 834
    .line 835
    shr-int/2addr v0, v10

    .line 836
    and-int/2addr v0, v9

    .line 837
    return v0

    .line 838
    :pswitch_81
    aget v0, v1, v22

    .line 839
    .line 840
    shr-int/2addr v0, v3

    .line 841
    and-int/2addr v0, v9

    .line 842
    return v0

    .line 843
    :pswitch_82
    aget v0, v1, v22

    .line 844
    .line 845
    shr-int/2addr v0, v6

    .line 846
    and-int/2addr v0, v9

    .line 847
    return v0

    .line 848
    :pswitch_83
    aget v0, v1, v22

    .line 849
    .line 850
    shr-int/2addr v0, v8

    .line 851
    and-int/2addr v0, v9

    .line 852
    return v0

    .line 853
    :pswitch_84
    aget v0, v1, v22

    .line 854
    .line 855
    shr-int/2addr v0, v7

    .line 856
    and-int/2addr v0, v9

    .line 857
    return v0

    .line 858
    :pswitch_85
    aget v0, v1, v22

    .line 859
    .line 860
    shr-int/2addr v0, v9

    .line 861
    and-int/2addr v0, v9

    .line 862
    return v0

    .line 863
    :pswitch_86
    aget v0, v1, v22

    .line 864
    .line 865
    and-int/2addr v0, v9

    .line 866
    return v0

    .line 867
    :pswitch_87
    aget v0, v1, v17

    .line 868
    .line 869
    shr-int/2addr v0, v12

    .line 870
    and-int/2addr v0, v9

    .line 871
    return v0

    .line 872
    :pswitch_88
    aget v0, v1, v17

    .line 873
    .line 874
    shr-int/2addr v0, v10

    .line 875
    and-int/2addr v0, v9

    .line 876
    return v0

    .line 877
    :pswitch_89
    aget v0, v1, v17

    .line 878
    .line 879
    shr-int/2addr v0, v3

    .line 880
    and-int/2addr v0, v9

    .line 881
    return v0

    .line 882
    :pswitch_8a
    aget v0, v1, v17

    .line 883
    .line 884
    shr-int/2addr v0, v6

    .line 885
    and-int/2addr v0, v9

    .line 886
    return v0

    .line 887
    :pswitch_8b
    aget v0, v1, v17

    .line 888
    .line 889
    shr-int/2addr v0, v7

    .line 890
    and-int/2addr v0, v8

    .line 891
    return v0

    .line 892
    :pswitch_8c
    aget v0, v1, v17

    .line 893
    .line 894
    and-int/2addr v0, v8

    .line 895
    return v0

    .line 896
    :pswitch_8d
    aget v0, v1, v15

    .line 897
    .line 898
    shr-int/2addr v0, v10

    .line 899
    and-int/2addr v0, v8

    .line 900
    return v0

    .line 901
    :pswitch_8e
    aget v0, v1, v15

    .line 902
    .line 903
    shr-int/2addr v0, v6

    .line 904
    and-int/2addr v0, v8

    .line 905
    return v0

    .line 906
    :pswitch_8f
    aget v0, v1, v13

    .line 907
    .line 908
    shr-int/2addr v0, v10

    .line 909
    and-int/2addr v0, v9

    .line 910
    return v0

    .line 911
    :pswitch_90
    aget v0, v1, v13

    .line 912
    .line 913
    shr-int/2addr v0, v8

    .line 914
    and-int/2addr v0, v12

    .line 915
    return v0

    .line 916
    :pswitch_91
    aget v0, v1, v13

    .line 917
    .line 918
    and-int/2addr v0, v12

    .line 919
    return v0

    .line 920
    :pswitch_92
    aget v0, v1, v14

    .line 921
    .line 922
    and-int/2addr v0, v9

    .line 923
    return v0

    .line 924
    :pswitch_93
    aget v0, v1, v11

    .line 925
    .line 926
    shr-int/2addr v0, v12

    .line 927
    and-int/2addr v0, v9

    .line 928
    return v0

    .line 929
    :pswitch_94
    aget v0, v1, v11

    .line 930
    .line 931
    shr-int/2addr v0, v10

    .line 932
    and-int/2addr v0, v9

    .line 933
    return v0

    .line 934
    :pswitch_95
    aget v0, v1, v11

    .line 935
    .line 936
    shr-int/2addr v0, v3

    .line 937
    and-int/2addr v0, v9

    .line 938
    return v0

    .line 939
    :pswitch_96
    aget v0, v1, v11

    .line 940
    .line 941
    shr-int/2addr v0, v6

    .line 942
    and-int/2addr v0, v9

    .line 943
    return v0

    .line 944
    :pswitch_97
    aget v0, v1, v11

    .line 945
    .line 946
    shr-int/2addr v0, v8

    .line 947
    and-int/2addr v0, v9

    .line 948
    return v0

    .line 949
    :pswitch_98
    aget v0, v1, v11

    .line 950
    .line 951
    shr-int/2addr v0, v7

    .line 952
    and-int/2addr v0, v9

    .line 953
    return v0

    .line 954
    :pswitch_99
    aget v0, v1, v11

    .line 955
    .line 956
    shr-int/2addr v0, v9

    .line 957
    and-int/2addr v0, v9

    .line 958
    return v0

    .line 959
    :pswitch_9a
    aget v0, v1, v11

    .line 960
    .line 961
    and-int/2addr v0, v9

    .line 962
    return v0

    .line 963
    :pswitch_9b
    const/16 v0, 0x9

    .line 964
    .line 965
    aget v0, v1, v0

    .line 966
    .line 967
    shr-int/2addr v0, v7

    .line 968
    and-int/2addr v0, v9

    .line 969
    return v0

    .line 970
    :pswitch_9c
    const/16 v0, 0x9

    .line 971
    .line 972
    aget v0, v1, v0

    .line 973
    .line 974
    shr-int/2addr v0, v9

    .line 975
    and-int/2addr v0, v9

    .line 976
    return v0

    .line 977
    :pswitch_9d
    const/16 v0, 0x9

    .line 978
    .line 979
    aget v0, v1, v0

    .line 980
    .line 981
    and-int/2addr v0, v9

    .line 982
    return v0

    .line 983
    :pswitch_9e
    aget v0, v1, v16

    .line 984
    .line 985
    shr-int/2addr v0, v12

    .line 986
    and-int/2addr v0, v9

    .line 987
    return v0

    .line 988
    :pswitch_9f
    aget v0, v1, v16

    .line 989
    .line 990
    shr-int/2addr v0, v10

    .line 991
    and-int/2addr v0, v9

    .line 992
    return v0

    .line 993
    :pswitch_a0
    aget v0, v1, v16

    .line 994
    .line 995
    shr-int/2addr v0, v3

    .line 996
    and-int/2addr v0, v9

    .line 997
    return v0

    .line 998
    :pswitch_a1
    aget v0, v1, v16

    .line 999
    .line 1000
    shr-int/2addr v0, v6

    .line 1001
    and-int/2addr v0, v9

    .line 1002
    return v0

    .line 1003
    :pswitch_a2
    aget v0, v1, v16

    .line 1004
    .line 1005
    and-int/2addr v0, v9

    .line 1006
    return v0

    .line 1007
    :pswitch_a3
    aget v0, v1, v12

    .line 1008
    .line 1009
    shr-int/2addr v0, v12

    .line 1010
    and-int/2addr v0, v9

    .line 1011
    return v0

    .line 1012
    :pswitch_a4
    aget v0, v1, v12

    .line 1013
    .line 1014
    shr-int/2addr v0, v6

    .line 1015
    and-int/2addr v0, v12

    .line 1016
    return v0

    .line 1017
    :pswitch_a5
    aget v0, v1, v12

    .line 1018
    .line 1019
    and-int/lit8 v0, v0, 0xf

    .line 1020
    .line 1021
    return v0

    .line 1022
    :pswitch_a6
    aget v0, v1, v8

    .line 1023
    .line 1024
    shr-int/2addr v0, v3

    .line 1025
    and-int/2addr v0, v9

    .line 1026
    return v0

    .line 1027
    :pswitch_a7
    aget v0, v1, v8

    .line 1028
    .line 1029
    shr-int/2addr v0, v8

    .line 1030
    and-int/2addr v0, v9

    .line 1031
    return v0

    .line 1032
    :pswitch_a8
    aget v0, v1, v8

    .line 1033
    .line 1034
    shr-int/2addr v0, v7

    .line 1035
    and-int/2addr v0, v9

    .line 1036
    return v0

    .line 1037
    :pswitch_a9
    aget v0, v1, v8

    .line 1038
    .line 1039
    shr-int/2addr v0, v9

    .line 1040
    and-int/2addr v0, v9

    .line 1041
    return v0

    .line 1042
    :pswitch_aa
    aget v0, v1, v8

    .line 1043
    .line 1044
    and-int/2addr v0, v9

    .line 1045
    return v0

    .line 1046
    :cond_d
    aget v0, v1, v7

    .line 1047
    .line 1048
    shr-int/2addr v0, v12

    .line 1049
    and-int/2addr v0, v9

    .line 1050
    return v0

    .line 1051
    :cond_e
    aget v0, v1, v7

    .line 1052
    .line 1053
    shr-int/2addr v0, v10

    .line 1054
    and-int/2addr v0, v9

    .line 1055
    return v0

    .line 1056
    :pswitch_ab
    aget v0, v1, v7

    .line 1057
    .line 1058
    shr-int/2addr v0, v3

    .line 1059
    and-int/2addr v0, v9

    .line 1060
    return v0

    .line 1061
    :pswitch_ac
    aget v0, v1, v7

    .line 1062
    .line 1063
    shr-int/2addr v0, v6

    .line 1064
    and-int/2addr v0, v9

    .line 1065
    return v0

    .line 1066
    :pswitch_ad
    aget v0, v1, v7

    .line 1067
    .line 1068
    shr-int/2addr v0, v8

    .line 1069
    and-int/2addr v0, v9

    .line 1070
    return v0

    .line 1071
    :pswitch_ae
    aget v0, v1, v7

    .line 1072
    .line 1073
    shr-int/2addr v0, v7

    .line 1074
    and-int/2addr v0, v9

    .line 1075
    return v0

    .line 1076
    :pswitch_af
    aget v0, v1, v7

    .line 1077
    .line 1078
    shr-int/2addr v0, v9

    .line 1079
    and-int/2addr v0, v9

    .line 1080
    return v0

    .line 1081
    :pswitch_b0
    aget v0, v1, v7

    .line 1082
    .line 1083
    and-int/2addr v0, v9

    .line 1084
    return v0

    .line 1085
    :pswitch_b1
    aget v0, v1, v9

    .line 1086
    .line 1087
    return v0

    .line 1088
    :pswitch_b2
    aget v0, v1, v4

    .line 1089
    .line 1090
    and-int/2addr v0, v8

    .line 1091
    return v0

    .line 1092
    :cond_f
    :goto_0
    return v4

    .line 1093
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
    .end packed-switch

    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
    .end packed-switch

    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    :pswitch_data_2
    .packed-switch 0x1a
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
    .end packed-switch

    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    :pswitch_data_3
    .packed-switch 0x67
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
    .end packed-switch

    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    :pswitch_data_4
    .packed-switch 0x8d
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
    .end packed-switch

    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    :pswitch_data_5
    .packed-switch 0xc8
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    .line 1384
    .line 1385
    .line 1386
    .line 1387
    .line 1388
    .line 1389
    .line 1390
    .line 1391
    .line 1392
    .line 1393
    .line 1394
    .line 1395
    .line 1396
    .line 1397
    .line 1398
    .line 1399
    .line 1400
    .line 1401
    .line 1402
    .line 1403
    .line 1404
    .line 1405
    .line 1406
    .line 1407
    .line 1408
    .line 1409
    .line 1410
    .line 1411
    .line 1412
    .line 1413
    .line 1414
    .line 1415
    .line 1416
    .line 1417
    .line 1418
    .line 1419
    .line 1420
    .line 1421
    .line 1422
    .line 1423
    .line 1424
    .line 1425
    .line 1426
    .line 1427
    .line 1428
    .line 1429
    .line 1430
    .line 1431
    .line 1432
    .line 1433
    .line 1434
    .line 1435
    .line 1436
    .line 1437
    .line 1438
    .line 1439
    .line 1440
    .line 1441
    .line 1442
    .line 1443
    :pswitch_data_6
    .packed-switch 0x2710
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 1444
    .line 1445
    .line 1446
    .line 1447
    .line 1448
    .line 1449
    .line 1450
    .line 1451
    .line 1452
    .line 1453
    .line 1454
    .line 1455
    .line 1456
    .line 1457
    .line 1458
    .line 1459
    .line 1460
    .line 1461
    .line 1462
    .line 1463
    .line 1464
    .line 1465
    .line 1466
    .line 1467
    .line 1468
    .line 1469
    .line 1470
    .line 1471
    .line 1472
    .line 1473
    :pswitch_data_7
    .packed-switch 0x278b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static k(Ljava/lang/String;)J
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    new-instance v2, Ljava/io/File;

    .line 4
    .line 5
    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->f(Ljava/io/File;)Z

    .line 9
    .line 10
    .line 11
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 12
    if-eqz p0, :cond_2

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    .line 16
    .line 17
    .line 18
    move-result v3
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    nop

    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_0
    if-nez v3, :cond_0

    .line 23
    .line 24
    goto :goto_4

    .line 25
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    array-length v3, v2

    .line 30
    :goto_1
    if-ge p0, v3, :cond_3

    .line 31
    .line 32
    aget-object v4, v2, p0

    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_1

    .line 39
    .line 40
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-static {v4}, Landroid/support/v4/media/session/b;->k(Ljava/lang/String;)J

    .line 45
    .line 46
    .line 47
    move-result-wide v4

    .line 48
    :goto_2
    add-long/2addr v0, v4

    .line 49
    goto :goto_3

    .line 50
    :catch_1
    move-exception p0

    .line 51
    goto :goto_5

    .line 52
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->length()J

    .line 53
    .line 54
    .line 55
    move-result-wide v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 56
    goto :goto_2

    .line 57
    :goto_3
    add-int/lit8 p0, p0, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    :goto_4
    return-wide v0

    .line 61
    :goto_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    .line 63
    .line 64
    :cond_3
    return-wide v0
.end method

.method public static l(Ljava/util/ArrayList;Ljava/io/InputStream;La2/k1;)I
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    new-instance v1, Lo5/w;

    .line 12
    .line 13
    invoke-direct {v1, p1, p2}, Lo5/w;-><init>(Ljava/io/InputStream;La2/k1;)V

    .line 14
    .line 15
    .line 16
    move-object p1, v1

    .line 17
    :cond_1
    const/high16 v1, 0x500000

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x0

    .line 27
    :goto_0
    if-ge v2, v1, :cond_3

    .line 28
    .line 29
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lf5/e;

    .line 34
    .line 35
    :try_start_0
    invoke-interface {v3, p1, p2}, Lf5/e;->d(Ljava/io/InputStream;La2/k1;)I

    .line 36
    .line 37
    .line 38
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 40
    .line 41
    .line 42
    if-eq v3, v0, :cond_2

    .line 43
    .line 44
    move v0, v3

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_3
    :goto_1
    return v0
.end method

.method public static m(Landroid/view/ViewGroup;)La1/i;
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x12

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, La1/i;

    .line 8
    .line 9
    invoke-direct {v0, p0}, La1/i;-><init>(Landroid/view/ViewGroup;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    move-object v0, p0

    .line 14
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const v3, 0x1020002

    .line 22
    .line 23
    .line 24
    if-ne v2, v3, :cond_2

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    instance-of v1, v1, Landroid/view/ViewGroup;

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/view/ViewGroup;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    move-object v0, v1

    .line 43
    :goto_1
    if-eqz v0, :cond_6

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    const/4 v2, 0x0

    .line 50
    :goto_2
    if-ge v2, v1, :cond_5

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    instance-of v4, v3, Lh4/c0;

    .line 57
    .line 58
    if-eqz v4, :cond_4

    .line 59
    .line 60
    check-cast v3, Lh4/c0;

    .line 61
    .line 62
    iget-object v1, v3, Lh4/c0;->d:La1/i;

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_5
    new-instance v1, La1/i;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-direct {v1, v2, v0, p0}, La1/i;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 75
    .line 76
    .line 77
    :cond_6
    :goto_3
    return-object v1
.end method

.method public static n(Ljava/util/ArrayList;Ljava/io/InputStream;La2/k1;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Lo5/w;

    .line 13
    .line 14
    invoke-direct {v0, p1, p2}, Lo5/w;-><init>(Ljava/io/InputStream;La2/k1;)V

    .line 15
    .line 16
    .line 17
    move-object p1, v0

    .line 18
    :cond_1
    const/high16 p2, 0x500000

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->mark(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    const/4 v0, 0x0

    .line 28
    :goto_0
    if-ge v0, p2, :cond_3

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lf5/e;

    .line 35
    .line 36
    :try_start_0
    invoke-interface {v1, p1}, Lf5/e;->c(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 37
    .line 38
    .line 39
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 41
    .line 42
    .line 43
    sget-object v2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 44
    .line 45
    if-eq v1, v2, :cond_2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_3
    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 57
    .line 58
    :goto_1
    return-object v1
.end method

.method public static o(Ljava/util/ArrayList;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lf5/e;

    .line 19
    .line 20
    :try_start_0
    invoke-interface {v3, p1}, Lf5/e;->a(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 21
    .line 22
    .line 23
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    sget-object v4, La6/c;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 31
    .line 32
    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 33
    .line 34
    if-eq v3, v4, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    sget-object v0, La6/c;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 48
    .line 49
    throw p0

    .line 50
    :cond_2
    sget-object v3, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 51
    .line 52
    :goto_1
    return-object v3
.end method

.method public static p(Lda/g;)Ljava/util/ArrayList;
    .locals 21

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    sget-object v3, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 13
    .line 14
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v3, ":acc"

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v3, Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v4, "activity"

    .line 36
    .line 37
    move-object/from16 v5, p0

    .line 38
    .line 39
    invoke-virtual {v5, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Landroid/app/ActivityManager;

    .line 44
    .line 45
    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    const/4 v9, 0x0

    .line 58
    const-string v14, "@"

    .line 59
    .line 60
    const-string v15, "\u81ea\u52a8\u5316\u4efb\u52a1"

    .line 61
    .line 62
    const-string v7, "\u8fdb\u7a0b"

    .line 63
    .line 64
    const-string v8, ":"

    .line 65
    .line 66
    const-string v10, "\u670d\u52a1"

    .line 67
    .line 68
    const/4 v11, -0x1

    .line 69
    if-eqz v6, :cond_9

    .line 70
    .line 71
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 76
    .line 77
    iget v12, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 78
    .line 79
    if-lt v12, v0, :cond_0

    .line 80
    .line 81
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v12

    .line 85
    invoke-virtual {v3, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v12

    .line 89
    if-eqz v12, :cond_1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    iget v12, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 93
    .line 94
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v12

    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v13

    .line 102
    invoke-virtual {v3, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    new-instance v12, Lcom/yunpan/appmanage/bean/PssBean;

    .line 106
    .line 107
    invoke-direct {v12}, Lcom/yunpan/appmanage/bean/PssBean;-><init>()V

    .line 108
    .line 109
    .line 110
    iget v13, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 111
    .line 112
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v13

    .line 116
    iput-object v13, v12, Lcom/yunpan/appmanage/bean/PssBean;->pid:Ljava/lang/String;

    .line 117
    .line 118
    iget v13, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 119
    .line 120
    filled-new-array {v13}, [I

    .line 121
    .line 122
    .line 123
    move-result-object v13

    .line 124
    invoke-virtual {v4, v13}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    .line 125
    .line 126
    .line 127
    move-result-object v13

    .line 128
    if-eqz v13, :cond_2

    .line 129
    .line 130
    array-length v0, v13

    .line 131
    if-lez v0, :cond_2

    .line 132
    .line 133
    aget-object v0, v13, v9

    .line 134
    .line 135
    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    move-object v13, v10

    .line 140
    int-to-long v9, v0

    .line 141
    goto :goto_1

    .line 142
    :cond_2
    move-object v13, v10

    .line 143
    const-wide/16 v9, 0x0

    .line 144
    .line 145
    :goto_1
    iput-wide v9, v12, Lcom/yunpan/appmanage/bean/PssBean;->pss:J

    .line 146
    .line 147
    invoke-static {v9, v10}, Lif/a;->l0(J)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    iput-object v0, v12, Lcom/yunpan/appmanage/bean/PssBean;->pss_str:Ljava/lang/String;

    .line 152
    .line 153
    iget-object v0, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 154
    .line 155
    iput-object v0, v12, Lcom/yunpan/appmanage/bean/PssBean;->pack_str:Ljava/lang/String;

    .line 156
    .line 157
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    iget-object v0, v12, Lcom/yunpan/appmanage/bean/PssBean;->pack_str:Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    move-result v6

    .line 168
    if-eq v6, v11, :cond_3

    .line 169
    .line 170
    const/4 v8, 0x0

    .line 171
    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    new-instance v8, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    iget-object v9, v12, Lcom/yunpan/appmanage/bean/PssBean;->pack_str:Ljava/lang/String;

    .line 181
    .line 182
    const/4 v10, 0x1

    .line 183
    add-int/2addr v6, v10

    .line 184
    invoke-virtual {v9, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    iput-object v6, v12, Lcom/yunpan/appmanage/bean/PssBean;->process_name:Ljava/lang/String;

    .line 199
    .line 200
    iget-object v6, v12, Lcom/yunpan/appmanage/bean/PssBean;->pack_str:Ljava/lang/String;

    .line 201
    .line 202
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v6

    .line 206
    if-eqz v6, :cond_5

    .line 207
    .line 208
    iput-object v15, v12, Lcom/yunpan/appmanage/bean/PssBean;->process_name:Ljava/lang/String;

    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_3
    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    move-result v6

    .line 215
    if-eq v6, v11, :cond_4

    .line 216
    .line 217
    const/4 v7, 0x0

    .line 218
    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    new-instance v7, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    iget-object v8, v12, Lcom/yunpan/appmanage/bean/PssBean;->pack_str:Ljava/lang/String;

    .line 228
    .line 229
    const/4 v9, 0x1

    .line 230
    add-int/2addr v6, v9

    .line 231
    invoke-virtual {v8, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    iput-object v6, v12, Lcom/yunpan/appmanage/bean/PssBean;->process_name:Ljava/lang/String;

    .line 246
    .line 247
    goto :goto_2

    .line 248
    :cond_4
    const-string v6, "\u4e3b\u7a0b\u5e8f"

    .line 249
    .line 250
    iput-object v6, v12, Lcom/yunpan/appmanage/bean/PssBean;->process_name:Ljava/lang/String;

    .line 251
    .line 252
    :cond_5
    :goto_2
    invoke-static {v0}, Landroid/support/v4/media/session/a;->k(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 253
    .line 254
    .line 255
    move-result-object v6

    .line 256
    if-eqz v6, :cond_6

    .line 257
    .line 258
    iget-object v0, v6, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 259
    .line 260
    iput-object v0, v12, Lcom/yunpan/appmanage/bean/PssBean;->name:Ljava/lang/String;

    .line 261
    .line 262
    iget-object v0, v6, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 263
    .line 264
    iput-object v0, v12, Lcom/yunpan/appmanage/bean/PssBean;->pack:Ljava/lang/String;

    .line 265
    .line 266
    iget-boolean v0, v6, Lcom/yunpan/appmanage/db/AppBean;->isCanStart:Z

    .line 267
    .line 268
    iput-boolean v0, v12, Lcom/yunpan/appmanage/bean/PssBean;->isCanStarted:Z

    .line 269
    .line 270
    goto :goto_3

    .line 271
    :cond_6
    sget-object v6, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 272
    .line 273
    sget-object v6, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 274
    .line 275
    iget-object v7, v6, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 276
    .line 277
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    if-eqz v0, :cond_8

    .line 282
    .line 283
    iget-object v0, v6, Lcom/yunpan/appmanage/util/k;->c:Ljava/lang/String;

    .line 284
    .line 285
    iput-object v0, v12, Lcom/yunpan/appmanage/bean/PssBean;->name:Ljava/lang/String;

    .line 286
    .line 287
    iget-object v0, v6, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 288
    .line 289
    iput-object v0, v12, Lcom/yunpan/appmanage/bean/PssBean;->pack:Ljava/lang/String;

    .line 290
    .line 291
    iget-wide v6, v12, Lcom/yunpan/appmanage/bean/PssBean;->pss:J

    .line 292
    .line 293
    const-wide/32 v8, 0x11170

    .line 294
    .line 295
    .line 296
    cmp-long v0, v6, v8

    .line 297
    .line 298
    if-lez v0, :cond_7

    .line 299
    .line 300
    const-wide/16 v8, 0x2800

    .line 301
    .line 302
    sub-long/2addr v6, v8

    .line 303
    iput-wide v6, v12, Lcom/yunpan/appmanage/bean/PssBean;->pss:J

    .line 304
    .line 305
    :cond_7
    iget-wide v6, v12, Lcom/yunpan/appmanage/bean/PssBean;->pss:J

    .line 306
    .line 307
    invoke-static {v6, v7}, Lif/a;->l0(J)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    iput-object v0, v12, Lcom/yunpan/appmanage/bean/PssBean;->pss_str:Ljava/lang/String;

    .line 312
    .line 313
    const/4 v0, 0x1

    .line 314
    iput-boolean v0, v12, Lcom/yunpan/appmanage/bean/PssBean;->isCanStarted:Z

    .line 315
    .line 316
    :cond_8
    :goto_3
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    const/4 v0, 0x1

    .line 320
    goto/16 :goto_0

    .line 321
    .line 322
    :cond_9
    move-object v13, v10

    .line 323
    const v0, 0x7fffffff

    .line 324
    .line 325
    .line 326
    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 335
    .line 336
    .line 337
    move-result v5

    .line 338
    if-eqz v5, :cond_13

    .line 339
    .line 340
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v5

    .line 344
    check-cast v5, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 345
    .line 346
    iget v6, v5, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    .line 347
    .line 348
    const/4 v9, 0x1

    .line 349
    if-lt v6, v9, :cond_12

    .line 350
    .line 351
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 352
    .line 353
    .line 354
    move-result-object v6

    .line 355
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v6

    .line 359
    if-eqz v6, :cond_a

    .line 360
    .line 361
    goto :goto_4

    .line 362
    :cond_a
    iget v6, v5, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    .line 363
    .line 364
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 365
    .line 366
    .line 367
    move-result-object v6

    .line 368
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 369
    .line 370
    .line 371
    move-result-object v10

    .line 372
    invoke-virtual {v3, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    new-instance v6, Lcom/yunpan/appmanage/bean/PssBean;

    .line 376
    .line 377
    invoke-direct {v6}, Lcom/yunpan/appmanage/bean/PssBean;-><init>()V

    .line 378
    .line 379
    .line 380
    iget v9, v5, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    .line 381
    .line 382
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v9

    .line 386
    iput-object v9, v6, Lcom/yunpan/appmanage/bean/PssBean;->pid:Ljava/lang/String;

    .line 387
    .line 388
    iget v9, v5, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    .line 389
    .line 390
    filled-new-array {v9}, [I

    .line 391
    .line 392
    .line 393
    move-result-object v9

    .line 394
    invoke-virtual {v4, v9}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    .line 395
    .line 396
    .line 397
    move-result-object v9

    .line 398
    if-eqz v9, :cond_b

    .line 399
    .line 400
    array-length v10, v9

    .line 401
    if-lez v10, :cond_b

    .line 402
    .line 403
    const/4 v10, 0x0

    .line 404
    aget-object v9, v9, v10

    .line 405
    .line 406
    invoke-virtual {v9}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    .line 407
    .line 408
    .line 409
    move-result v9

    .line 410
    int-to-long v9, v9

    .line 411
    goto :goto_5

    .line 412
    :cond_b
    const-wide/16 v9, 0x0

    .line 413
    .line 414
    :goto_5
    iput-wide v9, v6, Lcom/yunpan/appmanage/bean/PssBean;->pss:J

    .line 415
    .line 416
    invoke-static {v9, v10}, Lif/a;->l0(J)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v9

    .line 420
    iput-object v9, v6, Lcom/yunpan/appmanage/bean/PssBean;->pss_str:Ljava/lang/String;

    .line 421
    .line 422
    iget-object v5, v5, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 423
    .line 424
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v5

    .line 428
    iput-object v5, v6, Lcom/yunpan/appmanage/bean/PssBean;->pack_str:Ljava/lang/String;

    .line 429
    .line 430
    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 431
    .line 432
    .line 433
    move-result v9

    .line 434
    if-eq v9, v11, :cond_c

    .line 435
    .line 436
    const/4 v10, 0x0

    .line 437
    invoke-virtual {v5, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v5

    .line 441
    new-instance v10, Ljava/lang/StringBuilder;

    .line 442
    .line 443
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 444
    .line 445
    .line 446
    iget-object v12, v6, Lcom/yunpan/appmanage/bean/PssBean;->pack_str:Ljava/lang/String;

    .line 447
    .line 448
    const/16 v20, 0x1

    .line 449
    .line 450
    add-int/lit8 v9, v9, 0x1

    .line 451
    .line 452
    invoke-virtual {v12, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v9

    .line 456
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v9

    .line 466
    iput-object v9, v6, Lcom/yunpan/appmanage/bean/PssBean;->process_name:Ljava/lang/String;

    .line 467
    .line 468
    iget-object v9, v6, Lcom/yunpan/appmanage/bean/PssBean;->pack_str:Ljava/lang/String;

    .line 469
    .line 470
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 471
    .line 472
    .line 473
    move-result v9

    .line 474
    if-eqz v9, :cond_e

    .line 475
    .line 476
    iput-object v15, v6, Lcom/yunpan/appmanage/bean/PssBean;->process_name:Ljava/lang/String;

    .line 477
    .line 478
    goto :goto_6

    .line 479
    :cond_c
    invoke-virtual {v5, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 480
    .line 481
    .line 482
    move-result v9

    .line 483
    if-eq v9, v11, :cond_d

    .line 484
    .line 485
    const/4 v10, 0x0

    .line 486
    invoke-virtual {v5, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v5

    .line 490
    new-instance v12, Ljava/lang/StringBuilder;

    .line 491
    .line 492
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 493
    .line 494
    .line 495
    iget-object v10, v6, Lcom/yunpan/appmanage/bean/PssBean;->pack_str:Ljava/lang/String;

    .line 496
    .line 497
    const/16 v20, 0x1

    .line 498
    .line 499
    add-int/lit8 v9, v9, 0x1

    .line 500
    .line 501
    invoke-virtual {v10, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v9

    .line 505
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v9

    .line 515
    iput-object v9, v6, Lcom/yunpan/appmanage/bean/PssBean;->process_name:Ljava/lang/String;

    .line 516
    .line 517
    goto :goto_6

    .line 518
    :cond_d
    iput-object v13, v6, Lcom/yunpan/appmanage/bean/PssBean;->process_name:Ljava/lang/String;

    .line 519
    .line 520
    :cond_e
    :goto_6
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 521
    .line 522
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 523
    .line 524
    .line 525
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 526
    .line 527
    .line 528
    move-result-object v9

    .line 529
    invoke-virtual {v9}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 530
    .line 531
    .line 532
    move-result-object v9

    .line 533
    invoke-interface {v9, v5}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 534
    .line 535
    .line 536
    move-result-object v9

    .line 537
    if-eqz v9, :cond_10

    .line 538
    .line 539
    iget-object v5, v9, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 540
    .line 541
    iput-object v5, v6, Lcom/yunpan/appmanage/bean/PssBean;->name:Ljava/lang/String;

    .line 542
    .line 543
    iget-object v5, v9, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 544
    .line 545
    iput-object v5, v6, Lcom/yunpan/appmanage/bean/PssBean;->pack:Ljava/lang/String;

    .line 546
    .line 547
    iget-boolean v5, v9, Lcom/yunpan/appmanage/db/AppBean;->isCanStart:Z

    .line 548
    .line 549
    iput-boolean v5, v6, Lcom/yunpan/appmanage/bean/PssBean;->isCanStarted:Z

    .line 550
    .line 551
    :cond_f
    const/4 v5, 0x1

    .line 552
    const-wide/16 v16, 0x2800

    .line 553
    .line 554
    const-wide/32 v18, 0x11170

    .line 555
    .line 556
    .line 557
    goto :goto_7

    .line 558
    :cond_10
    sget-object v9, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 559
    .line 560
    sget-object v9, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 561
    .line 562
    iget-object v10, v9, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 563
    .line 564
    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 565
    .line 566
    .line 567
    move-result v5

    .line 568
    if-eqz v5, :cond_f

    .line 569
    .line 570
    iget-object v5, v9, Lcom/yunpan/appmanage/util/k;->c:Ljava/lang/String;

    .line 571
    .line 572
    iput-object v5, v6, Lcom/yunpan/appmanage/bean/PssBean;->name:Ljava/lang/String;

    .line 573
    .line 574
    iget-object v5, v9, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 575
    .line 576
    iput-object v5, v6, Lcom/yunpan/appmanage/bean/PssBean;->pack:Ljava/lang/String;

    .line 577
    .line 578
    iget-wide v9, v6, Lcom/yunpan/appmanage/bean/PssBean;->pss:J

    .line 579
    .line 580
    const-wide/32 v18, 0x11170

    .line 581
    .line 582
    .line 583
    cmp-long v5, v9, v18

    .line 584
    .line 585
    const-wide/16 v16, 0x2800

    .line 586
    .line 587
    if-lez v5, :cond_11

    .line 588
    .line 589
    sub-long v9, v9, v16

    .line 590
    .line 591
    iput-wide v9, v6, Lcom/yunpan/appmanage/bean/PssBean;->pss:J

    .line 592
    .line 593
    :cond_11
    iget-wide v9, v6, Lcom/yunpan/appmanage/bean/PssBean;->pss:J

    .line 594
    .line 595
    invoke-static {v9, v10}, Lif/a;->l0(J)Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v5

    .line 599
    iput-object v5, v6, Lcom/yunpan/appmanage/bean/PssBean;->pss_str:Ljava/lang/String;

    .line 600
    .line 601
    const/4 v5, 0x1

    .line 602
    iput-boolean v5, v6, Lcom/yunpan/appmanage/bean/PssBean;->isCanStarted:Z

    .line 603
    .line 604
    :goto_7
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    .line 606
    .line 607
    goto/16 :goto_4

    .line 608
    .line 609
    :cond_12
    const-wide/16 v16, 0x2800

    .line 610
    .line 611
    const-wide/32 v18, 0x11170

    .line 612
    .line 613
    .line 614
    goto/16 :goto_4

    .line 615
    .line 616
    :cond_13
    new-instance v0, La2/m;

    .line 617
    .line 618
    const/4 v2, 0x7

    .line 619
    invoke-direct {v0, v2}, La2/m;-><init>(I)V

    .line 620
    .line 621
    .line 622
    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 623
    .line 624
    .line 625
    return-object v1
.end method

.method public static q()Ljava/util/ArrayList;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lfa/b0;->a:La2/w0;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {}, La2/w0;->N()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    sget-object v2, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, ":acc"

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "dumpsys -t 25000 meminfo"

    .line 42
    .line 43
    const-wide/16 v3, 0x61a8

    .line 44
    .line 45
    invoke-static {v3, v4, v2}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iget v5, v2, Lfa/a0;->a:I

    .line 50
    .line 51
    if-eqz v5, :cond_1

    .line 52
    .line 53
    invoke-virtual {v2}, Lfa/a0;->a()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    const-string v6, "find service: -t"

    .line 58
    .line 59
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_1

    .line 64
    .line 65
    const-string v2, "dumpsys meminfo"

    .line 66
    .line 67
    invoke-static {v3, v4, v2}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    :cond_1
    invoke-virtual {v2}, Lfa/a0;->a()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    const-string v3, " "

    .line 76
    .line 77
    const-string v4, ""

    .line 78
    .line 79
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    const-string v3, "TotalPSSbyprocess"

    .line 84
    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-nez v3, :cond_2

    .line 90
    .line 91
    return-object v0

    .line 92
    :cond_2
    const-string v3, "TotalPSSbyprocess:"

    .line 93
    .line 94
    const-string v5, "TotalPSS"

    .line 95
    .line 96
    const/4 v6, 0x0

    .line 97
    invoke-static {v2, v3, v5, v6}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    const-string v3, "\n"

    .line 102
    .line 103
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    const-string v3, ","

    .line 108
    .line 109
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    const-string v3, "([0-9]{1,}).*?:(.*?)\\(pid([0-9]{1,})"

    .line 114
    .line 115
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-eqz v3, :cond_a

    .line 128
    .line 129
    :try_start_0
    new-instance v3, Lcom/yunpan/appmanage/bean/PssBean;

    .line 130
    .line 131
    invoke-direct {v3}, Lcom/yunpan/appmanage/bean/PssBean;-><init>()V

    .line 132
    .line 133
    .line 134
    const/4 v4, 0x3

    .line 135
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    iput-object v4, v3, Lcom/yunpan/appmanage/bean/PssBean;->pid:Ljava/lang/String;

    .line 140
    .line 141
    const/4 v4, 0x1

    .line 142
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 151
    .line 152
    .line 153
    move-result-wide v7

    .line 154
    iput-wide v7, v3, Lcom/yunpan/appmanage/bean/PssBean;->pss:J

    .line 155
    .line 156
    invoke-static {v7, v8}, Lif/a;->l0(J)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    iput-object v5, v3, Lcom/yunpan/appmanage/bean/PssBean;->pss_str:Ljava/lang/String;

    .line 161
    .line 162
    const/4 v5, 0x2

    .line 163
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    iput-object v5, v3, Lcom/yunpan/appmanage/bean/PssBean;->pack_str:Ljava/lang/String;

    .line 168
    .line 169
    iget-wide v7, v3, Lcom/yunpan/appmanage/bean/PssBean;->pss:J

    .line 170
    .line 171
    const-wide/32 v9, 0x28000

    .line 172
    .line 173
    .line 174
    cmp-long v5, v7, v9

    .line 175
    .line 176
    if-lez v5, :cond_3

    .line 177
    .line 178
    sget-object v5, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 179
    .line 180
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    iget-object v7, v3, Lcom/yunpan/appmanage/bean/PssBean;->pack_str:Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    if-eqz v5, :cond_3

    .line 191
    .line 192
    new-instance v5, Ljava/util/Date;

    .line 193
    .line 194
    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v5}, Ljava/util/Date;->getSeconds()I

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    mul-int/lit16 v5, v5, 0x400

    .line 202
    .line 203
    int-to-long v7, v5

    .line 204
    sub-long/2addr v9, v7

    .line 205
    iput-wide v9, v3, Lcom/yunpan/appmanage/bean/PssBean;->pss:J

    .line 206
    .line 207
    invoke-static {v9, v10}, Lif/a;->l0(J)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    iput-object v5, v3, Lcom/yunpan/appmanage/bean/PssBean;->pss_str:Ljava/lang/String;

    .line 212
    .line 213
    goto :goto_1

    .line 214
    :catch_0
    move-exception v3

    .line 215
    goto/16 :goto_4

    .line 216
    .line 217
    :cond_3
    :goto_1
    iget-object v5, v3, Lcom/yunpan/appmanage/bean/PssBean;->pack_str:Ljava/lang/String;

    .line 218
    .line 219
    const-string v7, "/"

    .line 220
    .line 221
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 222
    .line 223
    .line 224
    move-result v5

    .line 225
    if-nez v5, :cond_9

    .line 226
    .line 227
    iget-object v5, v3, Lcom/yunpan/appmanage/bean/PssBean;->pack_str:Ljava/lang/String;

    .line 228
    .line 229
    const-string v7, "su"

    .line 230
    .line 231
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v5

    .line 235
    if-nez v5, :cond_9

    .line 236
    .line 237
    iget-object v5, v3, Lcom/yunpan/appmanage/bean/PssBean;->pack_str:Ljava/lang/String;

    .line 238
    .line 239
    const-string v7, "."

    .line 240
    .line 241
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    move-result v5

    .line 245
    if-lez v5, :cond_9

    .line 246
    .line 247
    iget-object v5, v3, Lcom/yunpan/appmanage/bean/PssBean;->pack_str:Ljava/lang/String;

    .line 248
    .line 249
    const-string v7, ":"

    .line 250
    .line 251
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 252
    .line 253
    .line 254
    move-result v7

    .line 255
    const/4 v8, -0x1

    .line 256
    if-eq v7, v8, :cond_4

    .line 257
    .line 258
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    new-instance v8, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .line 266
    .line 267
    iget-object v9, v3, Lcom/yunpan/appmanage/bean/PssBean;->pack_str:Ljava/lang/String;

    .line 268
    .line 269
    add-int/lit8 v7, v7, 0x1

    .line 270
    .line 271
    invoke-virtual {v9, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v7

    .line 275
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    const-string v7, "\u8fdb\u7a0b"

    .line 279
    .line 280
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v7

    .line 287
    iput-object v7, v3, Lcom/yunpan/appmanage/bean/PssBean;->process_name:Ljava/lang/String;

    .line 288
    .line 289
    iget-object v7, v3, Lcom/yunpan/appmanage/bean/PssBean;->pack_str:Ljava/lang/String;

    .line 290
    .line 291
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v7

    .line 295
    if-eqz v7, :cond_6

    .line 296
    .line 297
    const-string v7, "\u81ea\u52a8\u5316\u4efb\u52a1"

    .line 298
    .line 299
    iput-object v7, v3, Lcom/yunpan/appmanage/bean/PssBean;->process_name:Ljava/lang/String;

    .line 300
    .line 301
    goto :goto_2

    .line 302
    :cond_4
    const-string v7, "@"

    .line 303
    .line 304
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 305
    .line 306
    .line 307
    move-result v7

    .line 308
    if-eq v7, v8, :cond_5

    .line 309
    .line 310
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v5

    .line 314
    new-instance v8, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .line 318
    .line 319
    iget-object v9, v3, Lcom/yunpan/appmanage/bean/PssBean;->pack_str:Ljava/lang/String;

    .line 320
    .line 321
    add-int/lit8 v7, v7, 0x1

    .line 322
    .line 323
    invoke-virtual {v9, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v7

    .line 327
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    const-string v7, "\u670d\u52a1"

    .line 331
    .line 332
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v7

    .line 339
    iput-object v7, v3, Lcom/yunpan/appmanage/bean/PssBean;->process_name:Ljava/lang/String;

    .line 340
    .line 341
    goto :goto_2

    .line 342
    :cond_5
    const-string v7, "\u4e3b\u7a0b\u5e8f"

    .line 343
    .line 344
    iput-object v7, v3, Lcom/yunpan/appmanage/bean/PssBean;->process_name:Ljava/lang/String;

    .line 345
    .line 346
    :cond_6
    :goto_2
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 347
    .line 348
    .line 349
    move-result-object v7

    .line 350
    invoke-virtual {v7}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 351
    .line 352
    .line 353
    move-result-object v7

    .line 354
    invoke-interface {v7, v5}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 355
    .line 356
    .line 357
    move-result-object v7

    .line 358
    if-eqz v7, :cond_7

    .line 359
    .line 360
    iget-object v4, v7, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 361
    .line 362
    iput-object v4, v3, Lcom/yunpan/appmanage/bean/PssBean;->name:Ljava/lang/String;

    .line 363
    .line 364
    iget-object v4, v7, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 365
    .line 366
    iput-object v4, v3, Lcom/yunpan/appmanage/bean/PssBean;->pack:Ljava/lang/String;

    .line 367
    .line 368
    iget-boolean v4, v7, Lcom/yunpan/appmanage/db/AppBean;->isCanStart:Z

    .line 369
    .line 370
    iput-boolean v4, v3, Lcom/yunpan/appmanage/bean/PssBean;->isCanStarted:Z

    .line 371
    .line 372
    goto :goto_3

    .line 373
    :cond_7
    sget-object v7, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 374
    .line 375
    iget-object v8, v7, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 376
    .line 377
    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 378
    .line 379
    .line 380
    move-result v5

    .line 381
    if-eqz v5, :cond_9

    .line 382
    .line 383
    iget-object v5, v7, Lcom/yunpan/appmanage/util/k;->c:Ljava/lang/String;

    .line 384
    .line 385
    iput-object v5, v3, Lcom/yunpan/appmanage/bean/PssBean;->name:Ljava/lang/String;

    .line 386
    .line 387
    iget-object v5, v7, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 388
    .line 389
    iput-object v5, v3, Lcom/yunpan/appmanage/bean/PssBean;->pack:Ljava/lang/String;

    .line 390
    .line 391
    iget-wide v7, v3, Lcom/yunpan/appmanage/bean/PssBean;->pss:J

    .line 392
    .line 393
    const-wide/32 v9, 0x11170

    .line 394
    .line 395
    .line 396
    cmp-long v5, v7, v9

    .line 397
    .line 398
    if-lez v5, :cond_8

    .line 399
    .line 400
    const-wide/16 v9, 0x2800

    .line 401
    .line 402
    sub-long/2addr v7, v9

    .line 403
    iput-wide v7, v3, Lcom/yunpan/appmanage/bean/PssBean;->pss:J

    .line 404
    .line 405
    :cond_8
    iget-wide v7, v3, Lcom/yunpan/appmanage/bean/PssBean;->pss:J

    .line 406
    .line 407
    invoke-static {v7, v8}, Lif/a;->l0(J)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v5

    .line 411
    iput-object v5, v3, Lcom/yunpan/appmanage/bean/PssBean;->pss_str:Ljava/lang/String;

    .line 412
    .line 413
    iput-boolean v4, v3, Lcom/yunpan/appmanage/bean/PssBean;->isCanStarted:Z

    .line 414
    .line 415
    :cond_9
    :goto_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    .line 417
    .line 418
    goto/16 :goto_0

    .line 419
    .line 420
    :goto_4
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 421
    .line 422
    .line 423
    goto/16 :goto_0

    .line 424
    .line 425
    :cond_a
    return-object v0
.end method

.method public static r(III)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x50

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    xor-int/lit8 v1, p1, -0x1

    .line 9
    .line 10
    and-int/2addr v1, p0

    .line 11
    and-int/2addr p0, p1

    .line 12
    and-int/lit8 p1, p0, 0x1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const-string p1, "|public"

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    :cond_0
    and-int/lit8 p1, p0, 0x2

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    const-string p1, "|private"

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    :cond_1
    and-int/lit8 p1, p0, 0x4

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    const-string p1, "|protected"

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    :cond_2
    and-int/lit8 p1, p0, 0x8

    .line 40
    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    const-string p1, "|static"

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    :cond_3
    and-int/lit8 p1, p0, 0x10

    .line 49
    .line 50
    if-eqz p1, :cond_4

    .line 51
    .line 52
    const-string p1, "|final"

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    :cond_4
    and-int/lit8 p1, p0, 0x20

    .line 58
    .line 59
    const/4 v2, 0x1

    .line 60
    if-eqz p1, :cond_6

    .line 61
    .line 62
    if-ne p2, v2, :cond_5

    .line 63
    .line 64
    const-string p1, "|super"

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_5
    const-string p1, "|synchronized"

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    :cond_6
    :goto_0
    and-int/lit8 p1, p0, 0x40

    .line 76
    .line 77
    const/4 v3, 0x3

    .line 78
    if-eqz p1, :cond_8

    .line 79
    .line 80
    if-ne p2, v3, :cond_7

    .line 81
    .line 82
    const-string p1, "|bridge"

    .line 83
    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_7
    const-string p1, "|volatile"

    .line 89
    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    :cond_8
    :goto_1
    and-int/lit16 p1, p0, 0x80

    .line 94
    .line 95
    if-eqz p1, :cond_a

    .line 96
    .line 97
    if-ne p2, v3, :cond_9

    .line 98
    .line 99
    const-string p1, "|varargs"

    .line 100
    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_9
    const-string p1, "|transient"

    .line 106
    .line 107
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    :cond_a
    :goto_2
    and-int/lit16 p1, p0, 0x100

    .line 111
    .line 112
    if-eqz p1, :cond_b

    .line 113
    .line 114
    const-string p1, "|native"

    .line 115
    .line 116
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    :cond_b
    and-int/lit16 p1, p0, 0x200

    .line 120
    .line 121
    if-eqz p1, :cond_c

    .line 122
    .line 123
    const-string p1, "|interface"

    .line 124
    .line 125
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    :cond_c
    and-int/lit16 p1, p0, 0x400

    .line 129
    .line 130
    if-eqz p1, :cond_d

    .line 131
    .line 132
    const-string p1, "|abstract"

    .line 133
    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    :cond_d
    and-int/lit16 p1, p0, 0x800

    .line 138
    .line 139
    if-eqz p1, :cond_e

    .line 140
    .line 141
    const-string p1, "|strictfp"

    .line 142
    .line 143
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    :cond_e
    and-int/lit16 p1, p0, 0x1000

    .line 147
    .line 148
    if-eqz p1, :cond_f

    .line 149
    .line 150
    const-string p1, "|synthetic"

    .line 151
    .line 152
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    :cond_f
    and-int/lit16 p1, p0, 0x2000

    .line 156
    .line 157
    if-eqz p1, :cond_10

    .line 158
    .line 159
    const-string p1, "|annotation"

    .line 160
    .line 161
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    :cond_10
    and-int/lit16 p1, p0, 0x4000

    .line 165
    .line 166
    if-eqz p1, :cond_11

    .line 167
    .line 168
    const-string p1, "|enum"

    .line 169
    .line 170
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    :cond_11
    const/high16 p1, 0x10000

    .line 174
    .line 175
    and-int/2addr p1, p0

    .line 176
    if-eqz p1, :cond_12

    .line 177
    .line 178
    const-string p1, "|constructor"

    .line 179
    .line 180
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    :cond_12
    const/high16 p1, 0x20000

    .line 184
    .line 185
    and-int/2addr p0, p1

    .line 186
    if-eqz p0, :cond_13

    .line 187
    .line 188
    const-string p0, "|declared_synchronized"

    .line 189
    .line 190
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    :cond_13
    if-nez v1, :cond_14

    .line 194
    .line 195
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 196
    .line 197
    .line 198
    move-result p0

    .line 199
    if-nez p0, :cond_15

    .line 200
    .line 201
    :cond_14
    const/16 p0, 0x7c

    .line 202
    .line 203
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-static {v1}, Lqf/c;->e0(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    :cond_15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    return-object p0
.end method

.method public static s(Landroid/app/Activity;Landroid/content/Context;Lha/u9;Lx9/w3;)V
    .locals 6

    .line 1
    :try_start_0
    const-string v0, "/data/"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->j(Ljava/lang/String;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-wide v2, p3, Lx9/w3;->d:J

    .line 8
    .line 9
    const-wide/16 v4, 0x2

    .line 10
    .line 11
    mul-long v2, v2, v4

    .line 12
    .line 13
    cmp-long v4, v0, v2

    .line 14
    .line 15
    if-gez v4, :cond_0

    .line 16
    .line 17
    const-string v0, "\u5e94\u7528\u5206\u533a\u5269\u4f59\u7a7a\u95f4\u4e0d\u8db3\uff0c\u8bf7\u6e05\u7406\u6570\u636e\u540e\u518d\u5b89\u88c5"

    .line 18
    .line 19
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catch_0
    :cond_0
    new-instance v0, Lha/d4;

    .line 24
    .line 25
    const/4 v1, 0x5

    .line 26
    invoke-direct {v0, p3, v1}, Lha/d4;-><init>(Lx9/w3;I)V

    .line 27
    .line 28
    .line 29
    new-instance p3, Lmc/c;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-direct {p3, v1, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 36
    .line 37
    invoke-virtual {p3, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p3, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    new-instance v0, Lha/ze;

    .line 50
    .line 51
    const/4 v1, 0x3

    .line 52
    invoke-direct {v0, p0, p1, p2, v1}, Lha/ze;-><init>(Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3, v0}, Lec/b;->b(Lec/e;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public static t(I)Z
    .locals 3

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq p0, v0, :cond_4

    .line 5
    .line 6
    const/4 v0, 0x7

    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v2, 0x1f

    .line 13
    .line 14
    if-lt v0, v2, :cond_2

    .line 15
    .line 16
    const/16 v2, 0x1a

    .line 17
    .line 18
    if-eq p0, v2, :cond_1

    .line 19
    .line 20
    const/16 v2, 0x1b

    .line 21
    .line 22
    if-ne p0, v2, :cond_2

    .line 23
    .line 24
    :cond_1
    return v1

    .line 25
    :cond_2
    const/16 v2, 0x21

    .line 26
    .line 27
    if-lt v0, v2, :cond_3

    .line 28
    .line 29
    const/16 v0, 0x1e

    .line 30
    .line 31
    if-ne p0, v0, :cond_3

    .line 32
    .line 33
    return v1

    .line 34
    :cond_3
    const/4 p0, 0x0

    .line 35
    return p0

    .line 36
    :cond_4
    :goto_0
    return v1
.end method

.method public static u(I)Z
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public static v(I)Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x1d

    .line 8
    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public static w(I)Z
    .locals 3

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq p0, v0, :cond_2

    .line 5
    .line 6
    const/16 v0, 0xc

    .line 7
    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v2, 0x1f

    .line 14
    .line 15
    if-lt v0, v2, :cond_1

    .line 16
    .line 17
    const/16 v0, 0x16

    .line 18
    .line 19
    if-ne p0, v0, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    const/4 p0, 0x0

    .line 23
    return p0

    .line 24
    :cond_2
    :goto_0
    return v1
.end method

.method public static x(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    const-string v0, ""

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_3

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto :goto_1

    .line 36
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const/16 v2, 0x100

    .line 39
    .line 40
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 41
    .line 42
    .line 43
    if-eqz v1, :cond_4

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    :cond_4
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_5

    .line 53
    .line 54
    const-string v1, "|"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    :goto_1
    return-object v0
.end method

.method public static varargs y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 9

    .line 1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    array-length v2, p1

    .line 8
    if-ge v1, v2, :cond_1

    .line 9
    .line 10
    aget-object v2, p1, v1

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    const-string v2, "null"

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_1

    .line 22
    :catch_0
    move-exception v3

    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const/16 v5, 0x40

    .line 40
    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const-string v4, "com.google.common.base.Strings"

    .line 60
    .line 61
    invoke-static {v4}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 66
    .line 67
    new-instance v6, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v7, "Exception during lenientFormat for "

    .line 70
    .line 71
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-virtual {v4, v5, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    const-string v4, "<"

    .line 85
    .line 86
    const-string v5, " threw "

    .line 87
    .line 88
    invoke-static {v4, v2, v5}, Lda/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v3, ">"

    .line 104
    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    :goto_1
    aput-object v2, p1, v1

    .line 113
    .line 114
    add-int/lit8 v1, v1, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    array-length v3, p1

    .line 124
    mul-int/lit8 v3, v3, 0x10

    .line 125
    .line 126
    add-int/2addr v3, v2

    .line 127
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 128
    .line 129
    .line 130
    const/4 v2, 0x0

    .line 131
    :goto_2
    array-length v3, p1

    .line 132
    if-ge v0, v3, :cond_3

    .line 133
    .line 134
    const-string v3, "%s"

    .line 135
    .line 136
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    const/4 v4, -0x1

    .line 141
    if-ne v3, v4, :cond_2

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_2
    invoke-virtual {v1, p0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    add-int/lit8 v2, v0, 0x1

    .line 148
    .line 149
    aget-object v0, p1, v0

    .line 150
    .line 151
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    add-int/lit8 v0, v3, 0x2

    .line 155
    .line 156
    move v8, v2

    .line 157
    move v2, v0

    .line 158
    move v0, v8

    .line 159
    goto :goto_2

    .line 160
    :cond_3
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    invoke-virtual {v1, p0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    array-length p0, p1

    .line 168
    if-ge v0, p0, :cond_5

    .line 169
    .line 170
    const-string p0, " ["

    .line 171
    .line 172
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    add-int/lit8 p0, v0, 0x1

    .line 176
    .line 177
    aget-object v0, p1, v0

    .line 178
    .line 179
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    :goto_4
    array-length v0, p1

    .line 183
    if-ge p0, v0, :cond_4

    .line 184
    .line 185
    const-string v0, ", "

    .line 186
    .line 187
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    add-int/lit8 v0, p0, 0x1

    .line 191
    .line 192
    aget-object p0, p1, p0

    .line 193
    .line 194
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    move p0, v0

    .line 198
    goto :goto_4

    .line 199
    :cond_4
    const/16 p0, 0x5d

    .line 200
    .line 201
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    return-object p0
.end method

.method public static z(Lu1/q;)Ljava/util/ArrayList;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lu1/q;->B()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    const/4 v1, 0x7

    .line 12
    invoke-virtual {v0, v1}, Lu1/q;->P(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p0 .. p0}, Lu1/q;->o()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const v4, 0x64666c38

    .line 20
    .line 21
    .line 22
    const/4 v5, 0x1

    .line 23
    if-ne v3, v4, :cond_2

    .line 24
    .line 25
    new-instance v3, Lu1/q;

    .line 26
    .line 27
    invoke-direct {v3}, Lu1/q;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v4, Ljava/util/zip/Inflater;

    .line 31
    .line 32
    invoke-direct {v4, v5}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 33
    .line 34
    .line 35
    :try_start_0
    invoke-static {v0, v3, v4}, Lu1/f0;->A(Lu1/q;Lu1/q;Ljava/util/zip/Inflater;)Z

    .line 36
    .line 37
    .line 38
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    .line 42
    .line 43
    .line 44
    return-object v2

    .line 45
    :cond_1
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    .line 46
    .line 47
    .line 48
    move-object v0, v3

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    move-object v1, v0

    .line 52
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    .line 53
    .line 54
    .line 55
    throw v1

    .line 56
    :cond_2
    const v4, 0x72617720

    .line 57
    .line 58
    .line 59
    if-eq v3, v4, :cond_3

    .line 60
    .line 61
    return-object v2

    .line 62
    :cond_3
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    iget v4, v0, Lu1/q;->b:I

    .line 68
    .line 69
    iget v6, v0, Lu1/q;->c:I

    .line 70
    .line 71
    :goto_1
    if-ge v4, v6, :cond_14

    .line 72
    .line 73
    invoke-virtual {v0}, Lu1/q;->o()I

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    add-int/2addr v7, v4

    .line 78
    if-le v7, v4, :cond_11

    .line 79
    .line 80
    if-le v7, v6, :cond_4

    .line 81
    .line 82
    goto/16 :goto_c

    .line 83
    .line 84
    :cond_4
    invoke-virtual {v0}, Lu1/q;->o()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    const v8, 0x6d657368

    .line 89
    .line 90
    .line 91
    if-ne v4, v8, :cond_13

    .line 92
    .line 93
    invoke-virtual {v0}, Lu1/q;->o()I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    const/16 v8, 0x2710

    .line 98
    .line 99
    if-le v4, v8, :cond_5

    .line 100
    .line 101
    :goto_2
    move-object v1, v2

    .line 102
    move-object/from16 p0, v3

    .line 103
    .line 104
    move/from16 v19, v6

    .line 105
    .line 106
    :goto_3
    const/16 v20, 0x1

    .line 107
    .line 108
    goto/16 :goto_b

    .line 109
    .line 110
    :cond_5
    new-array v8, v4, [F

    .line 111
    .line 112
    const/4 v10, 0x0

    .line 113
    :goto_4
    if-ge v10, v4, :cond_6

    .line 114
    .line 115
    invoke-virtual {v0}, Lu1/q;->n()F

    .line 116
    .line 117
    .line 118
    move-result v11

    .line 119
    aput v11, v8, v10

    .line 120
    .line 121
    add-int/lit8 v10, v10, 0x1

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_6
    invoke-virtual {v0}, Lu1/q;->o()I

    .line 125
    .line 126
    .line 127
    move-result v10

    .line 128
    const/16 v11, 0x7d00

    .line 129
    .line 130
    if-le v10, v11, :cond_7

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_7
    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    .line 134
    .line 135
    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    .line 136
    .line 137
    .line 138
    move-result-wide v13

    .line 139
    move-object/from16 p0, v3

    .line 140
    .line 141
    int-to-double v2, v4

    .line 142
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 143
    .line 144
    .line 145
    mul-double v2, v2, v11

    .line 146
    .line 147
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    .line 148
    .line 149
    .line 150
    move-result-wide v2

    .line 151
    div-double/2addr v2, v13

    .line 152
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 153
    .line 154
    .line 155
    move-result-wide v2

    .line 156
    double-to-int v2, v2

    .line 157
    new-instance v3, Lj3/f;

    .line 158
    .line 159
    iget-object v9, v0, Lu1/q;->a:[B

    .line 160
    .line 161
    array-length v15, v9

    .line 162
    invoke-direct {v3, v9, v15}, Lj3/f;-><init>([BI)V

    .line 163
    .line 164
    .line 165
    iget v9, v0, Lu1/q;->b:I

    .line 166
    .line 167
    const/16 v15, 0x8

    .line 168
    .line 169
    mul-int/lit8 v9, v9, 0x8

    .line 170
    .line 171
    invoke-virtual {v3, v9}, Lj3/f;->m(I)V

    .line 172
    .line 173
    .line 174
    mul-int/lit8 v9, v10, 0x5

    .line 175
    .line 176
    new-array v9, v9, [F

    .line 177
    .line 178
    const/4 v11, 0x5

    .line 179
    new-array v12, v11, [I

    .line 180
    .line 181
    const/4 v15, 0x0

    .line 182
    const/16 v18, 0x0

    .line 183
    .line 184
    :goto_5
    if-ge v15, v10, :cond_b

    .line 185
    .line 186
    const/4 v1, 0x0

    .line 187
    :goto_6
    if-ge v1, v11, :cond_a

    .line 188
    .line 189
    aget v19, v12, v1

    .line 190
    .line 191
    invoke-virtual {v3, v2}, Lj3/f;->g(I)I

    .line 192
    .line 193
    .line 194
    move-result v20

    .line 195
    shr-int/lit8 v21, v20, 0x1

    .line 196
    .line 197
    and-int/lit8 v11, v20, 0x1

    .line 198
    .line 199
    neg-int v11, v11

    .line 200
    xor-int v11, v21, v11

    .line 201
    .line 202
    add-int v11, v11, v19

    .line 203
    .line 204
    if-ge v11, v4, :cond_9

    .line 205
    .line 206
    if-gez v11, :cond_8

    .line 207
    .line 208
    goto :goto_7

    .line 209
    :cond_8
    add-int/lit8 v19, v18, 0x1

    .line 210
    .line 211
    aget v20, v8, v11

    .line 212
    .line 213
    aput v20, v9, v18

    .line 214
    .line 215
    aput v11, v12, v1

    .line 216
    .line 217
    add-int/lit8 v1, v1, 0x1

    .line 218
    .line 219
    move/from16 v18, v19

    .line 220
    .line 221
    const/4 v11, 0x5

    .line 222
    goto :goto_6

    .line 223
    :cond_9
    :goto_7
    move/from16 v19, v6

    .line 224
    .line 225
    const/4 v1, 0x0

    .line 226
    goto :goto_3

    .line 227
    :cond_a
    add-int/lit8 v15, v15, 0x1

    .line 228
    .line 229
    const/4 v1, 0x7

    .line 230
    const/4 v11, 0x5

    .line 231
    goto :goto_5

    .line 232
    :cond_b
    invoke-virtual {v3}, Lj3/f;->e()I

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    const/4 v2, 0x7

    .line 237
    add-int/2addr v1, v2

    .line 238
    and-int/lit8 v1, v1, -0x8

    .line 239
    .line 240
    invoke-virtual {v3, v1}, Lj3/f;->m(I)V

    .line 241
    .line 242
    .line 243
    const/16 v1, 0x20

    .line 244
    .line 245
    invoke-virtual {v3, v1}, Lj3/f;->g(I)I

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    new-array v8, v4, [La9/a;

    .line 250
    .line 251
    const/4 v11, 0x0

    .line 252
    :goto_8
    if-ge v11, v4, :cond_10

    .line 253
    .line 254
    const/16 v12, 0x8

    .line 255
    .line 256
    invoke-virtual {v3, v12}, Lj3/f;->g(I)I

    .line 257
    .line 258
    .line 259
    move-result v15

    .line 260
    invoke-virtual {v3, v12}, Lj3/f;->g(I)I

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    invoke-virtual {v3, v1}, Lj3/f;->g(I)I

    .line 265
    .line 266
    .line 267
    move-result v12

    .line 268
    const v1, 0x1f400

    .line 269
    .line 270
    .line 271
    if-le v12, v1, :cond_c

    .line 272
    .line 273
    goto :goto_7

    .line 274
    :cond_c
    move/from16 v19, v6

    .line 275
    .line 276
    int-to-double v5, v10

    .line 277
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    .line 278
    .line 279
    .line 280
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    .line 281
    .line 282
    mul-double v5, v5, v16

    .line 283
    .line 284
    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    .line 285
    .line 286
    .line 287
    move-result-wide v5

    .line 288
    div-double/2addr v5, v13

    .line 289
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 290
    .line 291
    .line 292
    move-result-wide v5

    .line 293
    double-to-int v5, v5

    .line 294
    mul-int/lit8 v6, v12, 0x3

    .line 295
    .line 296
    new-array v6, v6, [F

    .line 297
    .line 298
    mul-int/lit8 v1, v12, 0x2

    .line 299
    .line 300
    new-array v1, v1, [F

    .line 301
    .line 302
    move-object/from16 v21, v1

    .line 303
    .line 304
    const/4 v1, 0x0

    .line 305
    const/16 v22, 0x0

    .line 306
    .line 307
    :goto_9
    if-ge v1, v12, :cond_f

    .line 308
    .line 309
    invoke-virtual {v3, v5}, Lj3/f;->g(I)I

    .line 310
    .line 311
    .line 312
    move-result v23

    .line 313
    shr-int/lit8 v24, v23, 0x1

    .line 314
    .line 315
    move-object/from16 v25, v3

    .line 316
    .line 317
    const/16 v20, 0x1

    .line 318
    .line 319
    and-int/lit8 v3, v23, 0x1

    .line 320
    .line 321
    move-object/from16 v27, v21

    .line 322
    .line 323
    move/from16 v21, v4

    .line 324
    .line 325
    move-object/from16 v4, v27

    .line 326
    .line 327
    neg-int v3, v3

    .line 328
    xor-int v3, v24, v3

    .line 329
    .line 330
    add-int v3, v3, v22

    .line 331
    .line 332
    if-ltz v3, :cond_d

    .line 333
    .line 334
    if-lt v3, v10, :cond_e

    .line 335
    .line 336
    :cond_d
    const/16 v20, 0x1

    .line 337
    .line 338
    goto :goto_a

    .line 339
    :cond_e
    mul-int/lit8 v22, v1, 0x3

    .line 340
    .line 341
    mul-int/lit8 v23, v3, 0x5

    .line 342
    .line 343
    aget v24, v9, v23

    .line 344
    .line 345
    aput v24, v6, v22

    .line 346
    .line 347
    add-int/lit8 v24, v22, 0x1

    .line 348
    .line 349
    add-int/lit8 v26, v23, 0x1

    .line 350
    .line 351
    aget v26, v9, v26

    .line 352
    .line 353
    aput v26, v6, v24

    .line 354
    .line 355
    add-int/lit8 v22, v22, 0x2

    .line 356
    .line 357
    add-int/lit8 v24, v23, 0x2

    .line 358
    .line 359
    aget v24, v9, v24

    .line 360
    .line 361
    aput v24, v6, v22

    .line 362
    .line 363
    mul-int/lit8 v22, v1, 0x2

    .line 364
    .line 365
    add-int/lit8 v24, v23, 0x3

    .line 366
    .line 367
    aget v24, v9, v24

    .line 368
    .line 369
    aput v24, v4, v22

    .line 370
    .line 371
    const/16 v20, 0x1

    .line 372
    .line 373
    add-int/lit8 v22, v22, 0x1

    .line 374
    .line 375
    add-int/lit8 v23, v23, 0x4

    .line 376
    .line 377
    aget v23, v9, v23

    .line 378
    .line 379
    aput v23, v4, v22

    .line 380
    .line 381
    add-int/lit8 v1, v1, 0x1

    .line 382
    .line 383
    move/from16 v22, v3

    .line 384
    .line 385
    move-object/from16 v3, v25

    .line 386
    .line 387
    move/from16 v27, v21

    .line 388
    .line 389
    move-object/from16 v21, v4

    .line 390
    .line 391
    move/from16 v4, v27

    .line 392
    .line 393
    goto :goto_9

    .line 394
    :goto_a
    const/4 v1, 0x0

    .line 395
    goto :goto_b

    .line 396
    :cond_f
    move-object/from16 v25, v3

    .line 397
    .line 398
    const/16 v20, 0x1

    .line 399
    .line 400
    move-object/from16 v27, v21

    .line 401
    .line 402
    move/from16 v21, v4

    .line 403
    .line 404
    move-object/from16 v4, v27

    .line 405
    .line 406
    new-instance v1, La9/a;

    .line 407
    .line 408
    invoke-direct {v1, v15, v6, v4, v2}, La9/a;-><init>(I[F[FI)V

    .line 409
    .line 410
    .line 411
    aput-object v1, v8, v11

    .line 412
    .line 413
    add-int/lit8 v11, v11, 0x1

    .line 414
    .line 415
    move/from16 v6, v19

    .line 416
    .line 417
    move/from16 v4, v21

    .line 418
    .line 419
    const/16 v1, 0x20

    .line 420
    .line 421
    const/4 v2, 0x7

    .line 422
    const/4 v5, 0x1

    .line 423
    goto/16 :goto_8

    .line 424
    .line 425
    :cond_10
    move/from16 v19, v6

    .line 426
    .line 427
    const/16 v20, 0x1

    .line 428
    .line 429
    new-instance v1, Lk2/e;

    .line 430
    .line 431
    invoke-direct {v1, v8}, Lk2/e;-><init>([La9/a;)V

    .line 432
    .line 433
    .line 434
    :goto_b
    if-nez v1, :cond_12

    .line 435
    .line 436
    :cond_11
    :goto_c
    const/4 v2, 0x0

    .line 437
    goto :goto_e

    .line 438
    :cond_12
    move-object/from16 v2, p0

    .line 439
    .line 440
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    goto :goto_d

    .line 444
    :cond_13
    move-object v2, v3

    .line 445
    move/from16 v19, v6

    .line 446
    .line 447
    const/16 v20, 0x1

    .line 448
    .line 449
    :goto_d
    invoke-virtual {v0, v7}, Lu1/q;->O(I)V

    .line 450
    .line 451
    .line 452
    move-object v3, v2

    .line 453
    move v4, v7

    .line 454
    move/from16 v6, v19

    .line 455
    .line 456
    const/4 v1, 0x7

    .line 457
    const/4 v2, 0x0

    .line 458
    const/4 v5, 0x1

    .line 459
    goto/16 :goto_1

    .line 460
    .line 461
    :cond_14
    move-object v2, v3

    .line 462
    :goto_e
    return-object v2
.end method
