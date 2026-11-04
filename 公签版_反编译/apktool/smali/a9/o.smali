.class public abstract La9/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/Stack;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(I[B)S
    .locals 1

    .line 1
    aget-byte v0, p1, p0

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    shl-int/lit8 v0, v0, 0x8

    .line 6
    .line 7
    add-int/lit8 p0, p0, 0x1

    .line 8
    .line 9
    aget-byte p0, p1, p0

    .line 10
    .line 11
    and-int/lit16 p0, p0, 0xff

    .line 12
    .line 13
    or-int/2addr p0, v0

    .line 14
    int-to-short p0, p0

    .line 15
    return p0
.end method

.method public static B(I[B)S
    .locals 1

    .line 1
    aget-byte v0, p1, p0

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    add-int/lit8 p0, p0, 0x1

    .line 6
    .line 7
    aget-byte p0, p1, p0

    .line 8
    .line 9
    and-int/lit16 p0, p0, 0xff

    .line 10
    .line 11
    shl-int/lit8 p0, p0, 0x8

    .line 12
    .line 13
    or-int/2addr p0, v0

    .line 14
    int-to-short p0, p0

    .line 15
    return p0
.end method

.method public static C(I[B)I
    .locals 2

    .line 1
    aget-byte v0, p1, p0

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    shl-int/lit8 v0, v0, 0x18

    .line 6
    .line 7
    add-int/lit8 v1, p0, 0x1

    .line 8
    .line 9
    aget-byte v1, p1, v1

    .line 10
    .line 11
    and-int/lit16 v1, v1, 0xff

    .line 12
    .line 13
    shl-int/lit8 v1, v1, 0x10

    .line 14
    .line 15
    or-int/2addr v0, v1

    .line 16
    add-int/lit8 v1, p0, 0x2

    .line 17
    .line 18
    aget-byte v1, p1, v1

    .line 19
    .line 20
    and-int/lit16 v1, v1, 0xff

    .line 21
    .line 22
    shl-int/lit8 v1, v1, 0x8

    .line 23
    .line 24
    or-int/2addr v0, v1

    .line 25
    add-int/lit8 p0, p0, 0x3

    .line 26
    .line 27
    aget-byte p0, p1, p0

    .line 28
    .line 29
    and-int/lit16 p0, p0, 0xff

    .line 30
    .line 31
    or-int/2addr p0, v0

    .line 32
    return p0
.end method

.method public static D(I[B)I
    .locals 2

    .line 1
    aget-byte v0, p1, p0

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    add-int/lit8 v1, p0, 0x1

    .line 6
    .line 7
    aget-byte v1, p1, v1

    .line 8
    .line 9
    and-int/lit16 v1, v1, 0xff

    .line 10
    .line 11
    shl-int/lit8 v1, v1, 0x8

    .line 12
    .line 13
    or-int/2addr v0, v1

    .line 14
    add-int/lit8 v1, p0, 0x2

    .line 15
    .line 16
    aget-byte v1, p1, v1

    .line 17
    .line 18
    and-int/lit16 v1, v1, 0xff

    .line 19
    .line 20
    shl-int/lit8 v1, v1, 0x10

    .line 21
    .line 22
    or-int/2addr v0, v1

    .line 23
    add-int/lit8 p0, p0, 0x3

    .line 24
    .line 25
    aget-byte p0, p1, p0

    .line 26
    .line 27
    and-int/lit16 p0, p0, 0xff

    .line 28
    .line 29
    shl-int/lit8 p0, p0, 0x18

    .line 30
    .line 31
    or-int/2addr p0, v0

    .line 32
    return p0
.end method

.method public static E(I[B)Ljava/lang/String;
    .locals 11

    .line 1
    new-array v0, p0, [C

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    if-ge v2, p0, :cond_8

    .line 7
    .line 8
    add-int/lit8 v4, v2, 0x1

    .line 9
    .line 10
    aget-byte v5, p1, v2

    .line 11
    .line 12
    and-int/lit16 v6, v5, 0xff

    .line 13
    .line 14
    if-eqz v6, :cond_8

    .line 15
    .line 16
    const/16 v7, 0x80

    .line 17
    .line 18
    if-ge v6, v7, :cond_0

    .line 19
    .line 20
    int-to-char v2, v6

    .line 21
    aput-char v2, v0, v3

    .line 22
    .line 23
    move v2, v4

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    and-int/lit16 v6, v5, 0xe0

    .line 26
    .line 27
    const/16 v8, 0xc0

    .line 28
    .line 29
    const-string v9, "Invalid UTF-8 sequence"

    .line 30
    .line 31
    if-ne v6, v8, :cond_3

    .line 32
    .line 33
    sub-int v6, p0, v4

    .line 34
    .line 35
    const/4 v10, 0x2

    .line 36
    if-ge v6, v10, :cond_1

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_1
    and-int/lit8 v5, v5, 0x1f

    .line 40
    .line 41
    shl-int/lit8 v5, v5, 0x6

    .line 42
    .line 43
    int-to-char v5, v5

    .line 44
    aput-char v5, v0, v3

    .line 45
    .line 46
    add-int/lit8 v2, v2, 0x2

    .line 47
    .line 48
    aget-byte v4, p1, v4

    .line 49
    .line 50
    and-int/lit8 v6, v4, 0x3f

    .line 51
    .line 52
    or-int/2addr v5, v6

    .line 53
    int-to-char v5, v5

    .line 54
    aput-char v5, v0, v3

    .line 55
    .line 56
    and-int/2addr v4, v8

    .line 57
    if-ne v4, v7, :cond_2

    .line 58
    .line 59
    if-lt v5, v7, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    new-instance p0, Ljava/io/IOException;

    .line 63
    .line 64
    invoke-direct {p0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    :cond_3
    and-int/lit16 v6, v5, 0xf0

    .line 69
    .line 70
    const/16 v10, 0xe0

    .line 71
    .line 72
    if-ne v6, v10, :cond_7

    .line 73
    .line 74
    sub-int v6, p0, v4

    .line 75
    .line 76
    const/4 v10, 0x3

    .line 77
    if-ge v6, v10, :cond_4

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_4
    and-int/lit8 v5, v5, 0xf

    .line 81
    .line 82
    shl-int/lit8 v5, v5, 0xc

    .line 83
    .line 84
    int-to-char v5, v5

    .line 85
    aput-char v5, v0, v3

    .line 86
    .line 87
    add-int/lit8 v6, v2, 0x2

    .line 88
    .line 89
    aget-byte v4, p1, v4

    .line 90
    .line 91
    and-int/lit16 v10, v4, 0xc0

    .line 92
    .line 93
    if-ne v10, v7, :cond_6

    .line 94
    .line 95
    and-int/lit8 v4, v4, 0x3f

    .line 96
    .line 97
    shl-int/lit8 v4, v4, 0x6

    .line 98
    .line 99
    or-int/2addr v4, v5

    .line 100
    int-to-char v4, v4

    .line 101
    aput-char v4, v0, v3

    .line 102
    .line 103
    add-int/lit8 v2, v2, 0x3

    .line 104
    .line 105
    aget-byte v5, p1, v6

    .line 106
    .line 107
    and-int/lit8 v6, v5, 0x3f

    .line 108
    .line 109
    or-int/2addr v4, v6

    .line 110
    int-to-char v4, v4

    .line 111
    aput-char v4, v0, v3

    .line 112
    .line 113
    and-int/2addr v5, v8

    .line 114
    if-ne v5, v7, :cond_5

    .line 115
    .line 116
    const/16 v5, 0x800

    .line 117
    .line 118
    if-lt v4, v5, :cond_5

    .line 119
    .line 120
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_5
    new-instance p0, Ljava/io/IOException;

    .line 124
    .line 125
    invoke-direct {p0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p0

    .line 129
    :cond_6
    new-instance p0, Ljava/io/IOException;

    .line 130
    .line 131
    invoke-direct {p0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw p0

    .line 135
    :cond_7
    new-instance p0, Ljava/io/IOException;

    .line 136
    .line 137
    const-string p1, "Unsupported UTF-8 sequence"

    .line 138
    .line 139
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p0

    .line 143
    :cond_8
    :goto_2
    new-instance p0, Ljava/lang/String;

    .line 144
    .line 145
    invoke-direct {p0, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 146
    .line 147
    .line 148
    return-object p0
.end method

.method public static F(II[B)Landroid/graphics/Bitmap;
    .locals 10

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 12
    .line 13
    invoke-static {p2, v1, p0, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 14
    .line 15
    .line 16
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 17
    .line 18
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 19
    .line 20
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 25
    .line 26
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 27
    .line 28
    :goto_0
    if-le v3, p1, :cond_1

    .line 29
    .line 30
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 31
    .line 32
    mul-int/lit8 v4, v4, 0x2

    .line 33
    .line 34
    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 35
    .line 36
    div-int/lit8 v3, v3, 0x2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 40
    :cond_1
    invoke-static {p2, v1, p0, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 47
    .line 48
    :cond_2
    if-eqz v3, :cond_4

    .line 49
    .line 50
    new-instance p0, Ljava/io/ByteArrayInputStream;

    .line 51
    .line 52
    invoke-direct {p0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 53
    .line 54
    .line 55
    :try_start_0
    new-instance p1, Lj1/g;

    .line 56
    .line 57
    invoke-direct {p1, p0}, Lj1/g;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lj1/g;->c()I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    packed-switch p0, :pswitch_data_0

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :pswitch_0
    const/16 v1, 0x5a

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :pswitch_1
    const/16 v1, 0x10e

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :pswitch_2
    const/16 v1, 0xb4

    .line 78
    .line 79
    :goto_1
    if-eqz v1, :cond_3

    .line 80
    .line 81
    new-instance v8, Landroid/graphics/Matrix;

    .line 82
    .line 83
    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 84
    .line 85
    .line 86
    int-to-float p0, v1

    .line 87
    invoke-virtual {v8, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    const/4 v4, 0x0

    .line 99
    const/4 v5, 0x0

    .line 100
    const/4 v9, 0x0

    .line 101
    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    :cond_3
    return-object v3

    .line 106
    :catchall_0
    move-exception p1

    .line 107
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :catchall_1
    move-exception p0

    .line 112
    const-class p2, Ljava/lang/Throwable;

    .line 113
    .line 114
    :try_start_2
    const-string v0, "addSuppressed"

    .line 115
    .line 116
    new-array v3, v2, [Ljava/lang/Class;

    .line 117
    .line 118
    aput-object p2, v3, v1

    .line 119
    .line 120
    invoke-virtual {p2, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    new-array v0, v2, [Ljava/lang/Object;

    .line 125
    .line 126
    aput-object p0, v0, v1

    .line 127
    .line 128
    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 129
    .line 130
    .line 131
    :catch_0
    :goto_2
    throw p1

    .line 132
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 133
    .line 134
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 135
    .line 136
    .line 137
    const-string p1, "Could not decode image data"

    .line 138
    .line 139
    invoke-static {p0, p1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    goto :goto_4

    .line 144
    :goto_3
    throw p0

    .line 145
    :goto_4
    goto :goto_3

    .line 146
    nop

    .line 147
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static G(II[B)V
    .locals 3

    .line 1
    add-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    shr-int/lit8 v1, p0, 0x18

    .line 4
    .line 5
    and-int/lit16 v1, v1, 0xff

    .line 6
    .line 7
    int-to-byte v1, v1

    .line 8
    aput-byte v1, p2, p1

    .line 9
    .line 10
    add-int/lit8 v1, p1, 0x2

    .line 11
    .line 12
    shr-int/lit8 v2, p0, 0x10

    .line 13
    .line 14
    and-int/lit16 v2, v2, 0xff

    .line 15
    .line 16
    int-to-byte v2, v2

    .line 17
    aput-byte v2, p2, v0

    .line 18
    .line 19
    add-int/lit8 p1, p1, 0x3

    .line 20
    .line 21
    shr-int/lit8 v0, p0, 0x8

    .line 22
    .line 23
    and-int/lit16 v0, v0, 0xff

    .line 24
    .line 25
    int-to-byte v0, v0

    .line 26
    aput-byte v0, p2, v1

    .line 27
    .line 28
    and-int/lit16 p0, p0, 0xff

    .line 29
    .line 30
    int-to-byte p0, p0

    .line 31
    aput-byte p0, p2, p1

    .line 32
    .line 33
    return-void
.end method

.method public static H(II[B)V
    .locals 3

    .line 1
    add-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    and-int/lit16 v1, p0, 0xff

    .line 4
    .line 5
    int-to-byte v1, v1

    .line 6
    aput-byte v1, p2, p1

    .line 7
    .line 8
    add-int/lit8 v1, p1, 0x2

    .line 9
    .line 10
    shr-int/lit8 v2, p0, 0x8

    .line 11
    .line 12
    and-int/lit16 v2, v2, 0xff

    .line 13
    .line 14
    int-to-byte v2, v2

    .line 15
    aput-byte v2, p2, v0

    .line 16
    .line 17
    add-int/lit8 p1, p1, 0x3

    .line 18
    .line 19
    shr-int/lit8 v0, p0, 0x10

    .line 20
    .line 21
    and-int/lit16 v0, v0, 0xff

    .line 22
    .line 23
    int-to-byte v0, v0

    .line 24
    aput-byte v0, p2, v1

    .line 25
    .line 26
    shr-int/lit8 p0, p0, 0x18

    .line 27
    .line 28
    and-int/lit16 p0, p0, 0xff

    .line 29
    .line 30
    int-to-byte p0, p0

    .line 31
    aput-byte p0, p2, p1

    .line 32
    .line 33
    return-void
.end method

.method public static I(Lcom/yunpan/appmanage/service/AccService;Lz7/s;I)V
    .locals 6

    .line 1
    iget-object v0, p1, Lz7/s;->a:Lb8/n;

    .line 2
    .line 3
    const/16 v1, 0x1b58

    .line 4
    .line 5
    const-string v2, "maps2"

    .line 6
    .line 7
    const-string v3, "maps1"

    .line 8
    .line 9
    const-string v4, "int1"

    .line 10
    .line 11
    if-ne p2, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p2}, Lz7/p;->e()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    iget v1, p0, Lcom/yunpan/appmanage/service/AccService;->s:F

    .line 22
    .line 23
    int-to-float p2, p2

    .line 24
    cmpl-float p2, v1, p2

    .line 25
    .line 26
    if-lez p2, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0, v3}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-eqz p2, :cond_3

    .line 33
    .line 34
    invoke-virtual {p1, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p0, p1}, Lta/l;->k(Lcom/yunpan/appmanage/service/AccService;Lz7/o;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v0, v2}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-eqz p2, :cond_3

    .line 47
    .line 48
    invoke-virtual {p1, v2}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p0, p1}, Lta/l;->k(Lcom/yunpan/appmanage/service/AccService;Lz7/o;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/16 v1, 0x1b59

    .line 57
    .line 58
    if-ne p2, v1, :cond_3

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    const-string v1, "screen_brightness"

    .line 65
    .line 66
    const/16 v5, 0xff

    .line 67
    .line 68
    invoke-static {p2, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    invoke-virtual {p1, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-le p2, v1, :cond_2

    .line 81
    .line 82
    invoke-virtual {v0, v3}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    if-eqz p2, :cond_3

    .line 87
    .line 88
    invoke-virtual {p1, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {p0, p1}, Lta/l;->k(Lcom/yunpan/appmanage/service/AccService;Lz7/o;)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {v0, v2}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    if-eqz p2, :cond_3

    .line 101
    .line 102
    invoke-virtual {p1, v2}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-static {p0, p1}, Lta/l;->k(Lcom/yunpan/appmanage/service/AccService;Lz7/o;)V

    .line 107
    .line 108
    .line 109
    :cond_3
    :goto_0
    return-void
.end method

.method public static J(IILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Li8/a;->b:Li8/a;

    .line 7
    .line 8
    const-string v2, "UTF-8"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    sget-object v1, Li8/a;->c:Li8/a;

    .line 14
    .line 15
    const-string v2, "0"

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    :try_start_0
    invoke-static {p2, p0, p1, v0}, Lnh/b;->u(Ljava/lang/String;IILjava/util/HashMap;)Lj8/b;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    mul-int v0, p0, p1

    .line 25
    .line 26
    new-array v1, v0, [I

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    const/4 v2, 0x0

    .line 30
    :goto_0
    if-ge v2, p1, :cond_2

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    :goto_1
    if-ge v3, p0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p2, v3, v2}, Lj8/b;->a(II)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    mul-int v4, v2, p0

    .line 42
    .line 43
    add-int/2addr v4, v3

    .line 44
    aput v0, v1, v4

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :catch_0
    move-exception p0

    .line 48
    goto :goto_3

    .line 49
    :cond_0
    mul-int v4, v2, p0

    .line 50
    .line 51
    add-int/2addr v4, v3

    .line 52
    const/4 v5, -0x1

    .line 53
    aput v5, v1, v4

    .line 54
    .line 55
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    move v3, p0

    .line 65
    move v4, p0

    .line 66
    move v5, p1

    .line 67
    invoke-static/range {v1 .. v6}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 68
    .line 69
    .line 70
    move-result-object p0
    :try_end_0
    .catch Li8/b; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 71
    return-object p0

    .line 72
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    .line 74
    .line 75
    :catch_1
    const/4 p0, 0x0

    .line 76
    return-object p0
.end method

.method public static K(Ljava/util/List;)Lu7/g0;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v2, 0x1f

    .line 5
    .line 6
    if-lt v1, v2, :cond_4

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    new-instance v1, Ljava/util/TreeSet;

    .line 12
    .line 13
    new-instance v2, La2/n;

    .line 14
    .line 15
    invoke-direct {v2, v0}, La2/n;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-static {v2}, Lj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v2}, Lj$/util/Comparator$-EL;->reversed(Ljava/util/Comparator;)Ljava/util/Comparator;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {v2}, La2/b;->i(Ljava/lang/Object;)Landroid/media/AudioDescriptor;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v2}, La2/b;->c(Landroid/media/AudioDescriptor;)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    const/4 v4, 0x1

    .line 52
    if-ne v3, v4, :cond_1

    .line 53
    .line 54
    invoke-static {v2}, La2/b;->y(Landroid/media/AudioDescriptor;)[B

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    array-length v3, v2

    .line 59
    const/4 v5, 0x3

    .line 60
    if-eq v3, v5, :cond_2

    .line 61
    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v4, "Invalid SAD length: "

    .line 65
    .line 66
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    array-length v2, v2

    .line 70
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-static {v2}, Lu1/a;->p(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    aget-byte v2, v2, v0

    .line 82
    .line 83
    and-int/lit8 v3, v2, 0x7

    .line 84
    .line 85
    add-int/2addr v3, v4

    .line 86
    shr-int/2addr v2, v5

    .line 87
    and-int/lit8 v2, v2, 0xf

    .line 88
    .line 89
    if-ne v2, v4, :cond_1

    .line 90
    .line 91
    invoke-static {v3}, Lu1/f0;->n(I)I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    invoke-static {v1}, Lu7/g0;->m(Ljava/util/Collection;)Lu7/g0;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    return-object p0

    .line 108
    :cond_4
    :goto_1
    sget-object p0, Lu7/g0;->b:Lu7/e0;

    .line 109
    .line 110
    sget-object p0, Lu7/y0;->e:Lu7/y0;

    .line 111
    .line 112
    return-object p0
.end method

.method public static L([I[II)I
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
    if-lt v3, v5, :cond_6

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
    if-eq v2, v5, :cond_5

    .line 30
    .line 31
    const/16 v11, 0xa

    .line 32
    .line 33
    const/4 v12, 0x7

    .line 34
    if-eq v2, v11, :cond_4

    .line 35
    .line 36
    packed-switch v2, :pswitch_data_1

    .line 37
    .line 38
    .line 39
    const/16 v13, 0xd

    .line 40
    .line 41
    const/16 v14, 0xc

    .line 42
    .line 43
    const/16 v15, 0xe

    .line 44
    .line 45
    const/16 v16, 0xb

    .line 46
    .line 47
    const/16 v17, 0x8

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
    const/16 v11, 0x12

    .line 58
    .line 59
    const/16 v22, 0xf

    .line 60
    .line 61
    packed-switch v2, :pswitch_data_2

    .line 62
    .line 63
    .line 64
    const/16 v13, 0x1e

    .line 65
    .line 66
    const/16 v15, 0x18

    .line 67
    .line 68
    const/16 v18, 0x1f

    .line 69
    .line 70
    const/16 v19, 0x19

    .line 71
    .line 72
    const/16 v21, 0x1a

    .line 73
    .line 74
    packed-switch v2, :pswitch_data_3

    .line 75
    .line 76
    .line 77
    const/16 v13, 0x20

    .line 78
    .line 79
    const/16 v15, 0x21

    .line 80
    .line 81
    packed-switch v2, :pswitch_data_4

    .line 82
    .line 83
    .line 84
    const/16 v13, 0x1b

    .line 85
    .line 86
    const/16 v15, 0x1c

    .line 87
    .line 88
    const/16 v19, 0x13

    .line 89
    .line 90
    packed-switch v2, :pswitch_data_5

    .line 91
    .line 92
    .line 93
    const/16 v13, 0x1d

    .line 94
    .line 95
    packed-switch v2, :pswitch_data_6

    .line 96
    .line 97
    .line 98
    packed-switch v2, :pswitch_data_7

    .line 99
    .line 100
    .line 101
    packed-switch v2, :pswitch_data_8

    .line 102
    .line 103
    .line 104
    const/16 v15, 0x16

    .line 105
    .line 106
    packed-switch v2, :pswitch_data_9

    .line 107
    .line 108
    .line 109
    packed-switch v2, :pswitch_data_a

    .line 110
    .line 111
    .line 112
    packed-switch v2, :pswitch_data_b

    .line 113
    .line 114
    .line 115
    if-eq v2, v11, :cond_3

    .line 116
    .line 117
    const/16 v0, 0x274e

    .line 118
    .line 119
    if-eq v2, v0, :cond_2

    .line 120
    .line 121
    const/16 v0, 0x275c

    .line 122
    .line 123
    if-eq v2, v0, :cond_1

    .line 124
    .line 125
    return v4

    .line 126
    :cond_1
    aget v0, v1, v14

    .line 127
    .line 128
    shr-int/2addr v0, v12

    .line 129
    and-int/2addr v0, v9

    .line 130
    return v0

    .line 131
    :cond_2
    aget v0, v1, v13

    .line 132
    .line 133
    shr-int/2addr v0, v6

    .line 134
    and-int/2addr v0, v8

    .line 135
    return v0

    .line 136
    :cond_3
    aget v0, v1, v8

    .line 137
    .line 138
    shr-int/2addr v0, v6

    .line 139
    and-int/2addr v0, v9

    .line 140
    return v0

    .line 141
    :pswitch_0
    aget v0, v1, v19

    .line 142
    .line 143
    shr-int/2addr v0, v10

    .line 144
    and-int/2addr v0, v9

    .line 145
    return v0

    .line 146
    :pswitch_1
    aget v0, v1, v16

    .line 147
    .line 148
    shr-int/2addr v0, v3

    .line 149
    and-int/2addr v0, v9

    .line 150
    return v0

    .line 151
    :pswitch_2
    aget v0, v1, v16

    .line 152
    .line 153
    shr-int/2addr v0, v6

    .line 154
    and-int/2addr v0, v9

    .line 155
    return v0

    .line 156
    :pswitch_3
    aget v0, v1, v19

    .line 157
    .line 158
    shr-int/2addr v0, v3

    .line 159
    and-int/2addr v0, v9

    .line 160
    return v0

    .line 161
    :pswitch_4
    aget v0, v1, v19

    .line 162
    .line 163
    shr-int/2addr v0, v6

    .line 164
    and-int/2addr v0, v9

    .line 165
    return v0

    .line 166
    :pswitch_5
    aget v0, v1, v19

    .line 167
    .line 168
    shr-int/2addr v0, v8

    .line 169
    and-int/2addr v0, v9

    .line 170
    return v0

    .line 171
    :pswitch_6
    aget v0, v1, v13

    .line 172
    .line 173
    shr-int/2addr v0, v7

    .line 174
    and-int/2addr v0, v9

    .line 175
    return v0

    .line 176
    :pswitch_7
    aget v0, v1, v15

    .line 177
    .line 178
    shr-int/2addr v0, v7

    .line 179
    and-int/2addr v0, v9

    .line 180
    return v0

    .line 181
    :pswitch_8
    aget v0, v1, v15

    .line 182
    .line 183
    shr-int/2addr v0, v9

    .line 184
    and-int/2addr v0, v9

    .line 185
    return v0

    .line 186
    :pswitch_9
    aget v0, v1, v15

    .line 187
    .line 188
    and-int/2addr v0, v9

    .line 189
    return v0

    .line 190
    :pswitch_a
    aget v0, v0, v5

    .line 191
    .line 192
    shr-int/2addr v0, v8

    .line 193
    and-int/2addr v0, v9

    .line 194
    return v0

    .line 195
    :pswitch_b
    aget v0, v0, v5

    .line 196
    .line 197
    shr-int/2addr v0, v7

    .line 198
    and-int/2addr v0, v9

    .line 199
    return v0

    .line 200
    :pswitch_c
    aget v0, v0, v5

    .line 201
    .line 202
    shr-int/2addr v0, v9

    .line 203
    and-int/2addr v0, v9

    .line 204
    return v0

    .line 205
    :pswitch_d
    aget v0, v0, v3

    .line 206
    .line 207
    shr-int/2addr v0, v12

    .line 208
    and-int/2addr v0, v9

    .line 209
    return v0

    .line 210
    :pswitch_e
    aget v0, v0, v5

    .line 211
    .line 212
    and-int/2addr v0, v9

    .line 213
    return v0

    .line 214
    :pswitch_f
    aget v0, v0, v4

    .line 215
    .line 216
    and-int/2addr v0, v8

    .line 217
    return v0

    .line 218
    :pswitch_10
    aget v0, v1, v13

    .line 219
    .line 220
    shr-int/2addr v0, v9

    .line 221
    and-int/2addr v0, v9

    .line 222
    return v0

    .line 223
    :pswitch_11
    aget v0, v1, v13

    .line 224
    .line 225
    and-int/2addr v0, v9

    .line 226
    return v0

    .line 227
    :pswitch_12
    aget v0, v1, v15

    .line 228
    .line 229
    shr-int/2addr v0, v12

    .line 230
    and-int/2addr v0, v9

    .line 231
    return v0

    .line 232
    :pswitch_13
    aget v0, v1, v19

    .line 233
    .line 234
    shr-int/2addr v0, v7

    .line 235
    and-int/2addr v0, v9

    .line 236
    return v0

    .line 237
    :pswitch_14
    aget v0, v1, v15

    .line 238
    .line 239
    shr-int/2addr v0, v3

    .line 240
    and-int/2addr v0, v9

    .line 241
    return v0

    .line 242
    :pswitch_15
    aget v0, v1, v16

    .line 243
    .line 244
    shr-int/2addr v0, v8

    .line 245
    and-int/2addr v0, v9

    .line 246
    return v0

    .line 247
    :pswitch_16
    aget v0, v1, v16

    .line 248
    .line 249
    shr-int/2addr v0, v7

    .line 250
    and-int/2addr v0, v9

    .line 251
    return v0

    .line 252
    :pswitch_17
    aget v0, v1, v16

    .line 253
    .line 254
    shr-int/2addr v0, v9

    .line 255
    and-int/2addr v0, v9

    .line 256
    return v0

    .line 257
    :pswitch_18
    aget v0, v1, v4

    .line 258
    .line 259
    shr-int/2addr v0, v7

    .line 260
    and-int/2addr v0, v8

    .line 261
    return v0

    .line 262
    :pswitch_19
    aget v0, v1, v15

    .line 263
    .line 264
    shr-int/2addr v0, v10

    .line 265
    and-int/2addr v0, v9

    .line 266
    return v0

    .line 267
    :pswitch_1a
    aget v0, v1, v13

    .line 268
    .line 269
    shr-int/2addr v0, v8

    .line 270
    and-int/2addr v0, v9

    .line 271
    return v0

    .line 272
    :pswitch_1b
    aget v0, v1, v17

    .line 273
    .line 274
    shr-int/2addr v0, v9

    .line 275
    and-int/2addr v0, v9

    .line 276
    return v0

    .line 277
    :pswitch_1c
    aget v0, v0, v17

    .line 278
    .line 279
    and-int/2addr v0, v9

    .line 280
    return v0

    .line 281
    :pswitch_1d
    aget v0, v1, v5

    .line 282
    .line 283
    shr-int/2addr v0, v6

    .line 284
    and-int/2addr v0, v9

    .line 285
    return v0

    .line 286
    :pswitch_1e
    aget v0, v1, v15

    .line 287
    .line 288
    shr-int/2addr v0, v3

    .line 289
    and-int/2addr v0, v9

    .line 290
    return v0

    .line 291
    :pswitch_1f
    aget v0, v1, v19

    .line 292
    .line 293
    shr-int/2addr v0, v9

    .line 294
    and-int/2addr v0, v9

    .line 295
    return v0

    .line 296
    :pswitch_20
    aget v0, v1, v5

    .line 297
    .line 298
    shr-int/2addr v0, v8

    .line 299
    and-int/2addr v0, v9

    .line 300
    return v0

    .line 301
    :pswitch_21
    aget v0, v1, v15

    .line 302
    .line 303
    and-int/lit8 v0, v0, 0xf

    .line 304
    .line 305
    return v0

    .line 306
    :pswitch_22
    aget v0, v0, v9

    .line 307
    .line 308
    shr-int/2addr v0, v8

    .line 309
    and-int/2addr v0, v9

    .line 310
    return v0

    .line 311
    :pswitch_23
    aget v0, v1, v19

    .line 312
    .line 313
    and-int/2addr v0, v9

    .line 314
    return v0

    .line 315
    :pswitch_24
    aget v0, v1, v13

    .line 316
    .line 317
    shr-int/2addr v0, v8

    .line 318
    and-int/lit8 v0, v0, 0x1f

    .line 319
    .line 320
    return v0

    .line 321
    :pswitch_25
    aget v0, v1, v13

    .line 322
    .line 323
    and-int/2addr v0, v12

    .line 324
    return v0

    .line 325
    :pswitch_26
    aget v0, v0, v8

    .line 326
    .line 327
    and-int/2addr v0, v9

    .line 328
    return v0

    .line 329
    :pswitch_27
    aget v0, v0, v12

    .line 330
    .line 331
    shr-int/2addr v0, v10

    .line 332
    and-int/2addr v0, v8

    .line 333
    return v0

    .line 334
    :pswitch_28
    aget v0, v0, v12

    .line 335
    .line 336
    shr-int/2addr v0, v6

    .line 337
    and-int/2addr v0, v8

    .line 338
    return v0

    .line 339
    :pswitch_29
    aget v0, v0, v12

    .line 340
    .line 341
    and-int/lit8 v0, v0, 0xf

    .line 342
    .line 343
    return v0

    .line 344
    :pswitch_2a
    aget v0, v0, v10

    .line 345
    .line 346
    shr-int/2addr v0, v10

    .line 347
    and-int/2addr v0, v8

    .line 348
    return v0

    .line 349
    :pswitch_2b
    aget v0, v0, v10

    .line 350
    .line 351
    shr-int/2addr v0, v6

    .line 352
    and-int/2addr v0, v8

    .line 353
    return v0

    .line 354
    :pswitch_2c
    aget v0, v0, v10

    .line 355
    .line 356
    shr-int/2addr v0, v7

    .line 357
    and-int/2addr v0, v8

    .line 358
    return v0

    .line 359
    :pswitch_2d
    aget v0, v0, v3

    .line 360
    .line 361
    shr-int/2addr v0, v10

    .line 362
    and-int/2addr v0, v9

    .line 363
    return v0

    .line 364
    :pswitch_2e
    aget v0, v0, v3

    .line 365
    .line 366
    shr-int/2addr v0, v8

    .line 367
    and-int/2addr v0, v12

    .line 368
    return v0

    .line 369
    :pswitch_2f
    aget v0, v0, v3

    .line 370
    .line 371
    and-int/2addr v0, v12

    .line 372
    return v0

    .line 373
    :pswitch_30
    aget v0, v0, v6

    .line 374
    .line 375
    shr-int/2addr v0, v6

    .line 376
    and-int/lit8 v0, v0, 0xf

    .line 377
    .line 378
    return v0

    .line 379
    :pswitch_31
    aget v0, v0, v6

    .line 380
    .line 381
    shr-int/2addr v0, v9

    .line 382
    and-int/2addr v0, v12

    .line 383
    return v0

    .line 384
    :pswitch_32
    aget v0, v0, v6

    .line 385
    .line 386
    and-int/2addr v0, v9

    .line 387
    return v0

    .line 388
    :pswitch_33
    aget v0, v0, v7

    .line 389
    .line 390
    shr-int/2addr v0, v10

    .line 391
    and-int/2addr v0, v8

    .line 392
    return v0

    .line 393
    :pswitch_34
    aget v0, v0, v7

    .line 394
    .line 395
    shr-int/2addr v0, v3

    .line 396
    and-int/2addr v0, v9

    .line 397
    return v0

    .line 398
    :pswitch_35
    aget v0, v0, v7

    .line 399
    .line 400
    shr-int/2addr v0, v6

    .line 401
    and-int/2addr v0, v9

    .line 402
    return v0

    .line 403
    :pswitch_36
    aget v0, v0, v7

    .line 404
    .line 405
    shr-int/2addr v0, v8

    .line 406
    and-int/2addr v0, v9

    .line 407
    return v0

    .line 408
    :pswitch_37
    aget v0, v0, v7

    .line 409
    .line 410
    shr-int/2addr v0, v7

    .line 411
    and-int/2addr v0, v9

    .line 412
    return v0

    .line 413
    :pswitch_38
    aget v0, v0, v7

    .line 414
    .line 415
    and-int/2addr v0, v8

    .line 416
    return v0

    .line 417
    :pswitch_39
    aget v0, v0, v9

    .line 418
    .line 419
    shr-int/2addr v0, v7

    .line 420
    and-int/2addr v0, v9

    .line 421
    return v0

    .line 422
    :pswitch_3a
    aget v0, v0, v9

    .line 423
    .line 424
    shr-int/2addr v0, v9

    .line 425
    and-int/2addr v0, v9

    .line 426
    return v0

    .line 427
    :pswitch_3b
    aget v0, v0, v9

    .line 428
    .line 429
    and-int/2addr v0, v9

    .line 430
    return v0

    .line 431
    :pswitch_3c
    aget v0, v0, v4

    .line 432
    .line 433
    and-int/lit8 v0, v0, 0xf

    .line 434
    .line 435
    return v0

    .line 436
    :pswitch_3d
    aget v0, v1, v8

    .line 437
    .line 438
    shr-int/2addr v0, v10

    .line 439
    and-int/2addr v0, v9

    .line 440
    return v0

    .line 441
    :pswitch_3e
    const/16 v0, 0x22

    .line 442
    .line 443
    aget v0, v1, v0

    .line 444
    .line 445
    and-int/2addr v0, v9

    .line 446
    return v0

    .line 447
    :pswitch_3f
    aget v0, v1, v15

    .line 448
    .line 449
    shr-int/2addr v0, v12

    .line 450
    and-int/2addr v0, v9

    .line 451
    return v0

    .line 452
    :pswitch_40
    aget v0, v1, v15

    .line 453
    .line 454
    shr-int/2addr v0, v10

    .line 455
    and-int/2addr v0, v9

    .line 456
    return v0

    .line 457
    :pswitch_41
    aget v0, v1, v15

    .line 458
    .line 459
    shr-int/2addr v0, v6

    .line 460
    and-int/2addr v0, v8

    .line 461
    return v0

    .line 462
    :pswitch_42
    aget v0, v1, v15

    .line 463
    .line 464
    shr-int/2addr v0, v7

    .line 465
    and-int/2addr v0, v8

    .line 466
    return v0

    .line 467
    :pswitch_43
    aget v0, v1, v15

    .line 468
    .line 469
    and-int/2addr v0, v8

    .line 470
    return v0

    .line 471
    :pswitch_44
    aget v0, v1, v13

    .line 472
    .line 473
    shr-int/2addr v0, v12

    .line 474
    and-int/2addr v0, v9

    .line 475
    return v0

    .line 476
    :pswitch_45
    aget v0, v1, v13

    .line 477
    .line 478
    shr-int/2addr v0, v10

    .line 479
    and-int/2addr v0, v9

    .line 480
    return v0

    .line 481
    :pswitch_46
    aget v0, v1, v13

    .line 482
    .line 483
    shr-int/2addr v0, v6

    .line 484
    and-int/2addr v0, v8

    .line 485
    return v0

    .line 486
    :pswitch_47
    aget v0, v1, v13

    .line 487
    .line 488
    shr-int/2addr v0, v7

    .line 489
    and-int/2addr v0, v8

    .line 490
    return v0

    .line 491
    :pswitch_48
    aget v0, v1, v18

    .line 492
    .line 493
    shr-int/2addr v0, v10

    .line 494
    and-int/2addr v0, v8

    .line 495
    return v0

    .line 496
    :pswitch_49
    aget v0, v1, v18

    .line 497
    .line 498
    shr-int/2addr v0, v3

    .line 499
    and-int/2addr v0, v9

    .line 500
    return v0

    .line 501
    :pswitch_4a
    aget v0, v1, v18

    .line 502
    .line 503
    shr-int/2addr v0, v6

    .line 504
    and-int/2addr v0, v9

    .line 505
    return v0

    .line 506
    :pswitch_4b
    aget v0, v1, v18

    .line 507
    .line 508
    shr-int/2addr v0, v8

    .line 509
    and-int/2addr v0, v9

    .line 510
    return v0

    .line 511
    :pswitch_4c
    aget v0, v1, v18

    .line 512
    .line 513
    shr-int/2addr v0, v9

    .line 514
    and-int/2addr v0, v8

    .line 515
    return v0

    .line 516
    :pswitch_4d
    aget v0, v1, v18

    .line 517
    .line 518
    and-int/2addr v0, v9

    .line 519
    return v0

    .line 520
    :pswitch_4e
    aget v0, v1, v13

    .line 521
    .line 522
    shr-int/2addr v0, v12

    .line 523
    and-int/2addr v0, v9

    .line 524
    return v0

    .line 525
    :pswitch_4f
    aget v0, v1, v13

    .line 526
    .line 527
    shr-int/2addr v0, v3

    .line 528
    and-int/2addr v0, v8

    .line 529
    return v0

    .line 530
    :pswitch_50
    aget v0, v1, v13

    .line 531
    .line 532
    shr-int/2addr v0, v8

    .line 533
    and-int/2addr v0, v8

    .line 534
    return v0

    .line 535
    :pswitch_51
    aget v0, v1, v13

    .line 536
    .line 537
    shr-int/2addr v0, v7

    .line 538
    and-int/2addr v0, v9

    .line 539
    return v0

    .line 540
    :pswitch_52
    aget v0, v1, v13

    .line 541
    .line 542
    shr-int/2addr v0, v9

    .line 543
    and-int/2addr v0, v9

    .line 544
    return v0

    .line 545
    :pswitch_53
    aget v0, v1, v13

    .line 546
    .line 547
    and-int/2addr v0, v9

    .line 548
    return v0

    .line 549
    :pswitch_54
    aget v0, v1, v21

    .line 550
    .line 551
    shr-int/2addr v0, v12

    .line 552
    and-int/2addr v0, v9

    .line 553
    return v0

    .line 554
    :pswitch_55
    aget v0, v1, v21

    .line 555
    .line 556
    shr-int/2addr v0, v10

    .line 557
    and-int/2addr v0, v9

    .line 558
    return v0

    .line 559
    :pswitch_56
    aget v0, v1, v21

    .line 560
    .line 561
    shr-int/2addr v0, v3

    .line 562
    and-int/2addr v0, v9

    .line 563
    return v0

    .line 564
    :pswitch_57
    aget v0, v1, v21

    .line 565
    .line 566
    shr-int/2addr v0, v6

    .line 567
    and-int/2addr v0, v9

    .line 568
    return v0

    .line 569
    :pswitch_58
    aget v0, v1, v21

    .line 570
    .line 571
    shr-int/2addr v0, v8

    .line 572
    and-int/2addr v0, v9

    .line 573
    return v0

    .line 574
    :pswitch_59
    aget v0, v1, v21

    .line 575
    .line 576
    shr-int/2addr v0, v7

    .line 577
    and-int/2addr v0, v9

    .line 578
    return v0

    .line 579
    :pswitch_5a
    aget v0, v1, v21

    .line 580
    .line 581
    shr-int/2addr v0, v9

    .line 582
    and-int/2addr v0, v9

    .line 583
    return v0

    .line 584
    :pswitch_5b
    aget v0, v1, v21

    .line 585
    .line 586
    and-int/2addr v0, v9

    .line 587
    return v0

    .line 588
    :pswitch_5c
    aget v0, v1, v19

    .line 589
    .line 590
    shr-int/2addr v0, v12

    .line 591
    and-int/2addr v0, v9

    .line 592
    return v0

    .line 593
    :pswitch_5d
    aget v0, v1, v19

    .line 594
    .line 595
    shr-int/2addr v0, v10

    .line 596
    and-int/2addr v0, v9

    .line 597
    return v0

    .line 598
    :pswitch_5e
    aget v0, v1, v19

    .line 599
    .line 600
    shr-int/2addr v0, v3

    .line 601
    and-int/2addr v0, v9

    .line 602
    return v0

    .line 603
    :pswitch_5f
    aget v0, v1, v19

    .line 604
    .line 605
    shr-int/2addr v0, v6

    .line 606
    and-int/2addr v0, v9

    .line 607
    return v0

    .line 608
    :pswitch_60
    aget v0, v1, v19

    .line 609
    .line 610
    shr-int/2addr v0, v8

    .line 611
    and-int/2addr v0, v9

    .line 612
    return v0

    .line 613
    :pswitch_61
    aget v0, v1, v19

    .line 614
    .line 615
    shr-int/2addr v0, v7

    .line 616
    and-int/2addr v0, v9

    .line 617
    return v0

    .line 618
    :pswitch_62
    aget v0, v1, v19

    .line 619
    .line 620
    shr-int/2addr v0, v9

    .line 621
    and-int/2addr v0, v9

    .line 622
    return v0

    .line 623
    :pswitch_63
    aget v0, v1, v19

    .line 624
    .line 625
    and-int/2addr v0, v9

    .line 626
    return v0

    .line 627
    :pswitch_64
    aget v0, v1, v15

    .line 628
    .line 629
    shr-int/2addr v0, v10

    .line 630
    and-int/2addr v0, v8

    .line 631
    return v0

    .line 632
    :pswitch_65
    aget v0, v1, v15

    .line 633
    .line 634
    shr-int/2addr v0, v3

    .line 635
    and-int/2addr v0, v9

    .line 636
    return v0

    .line 637
    :pswitch_66
    aget v0, v1, v15

    .line 638
    .line 639
    shr-int/2addr v0, v6

    .line 640
    and-int/2addr v0, v9

    .line 641
    return v0

    .line 642
    :pswitch_67
    aget v0, v1, v15

    .line 643
    .line 644
    shr-int/2addr v0, v8

    .line 645
    and-int/2addr v0, v9

    .line 646
    return v0

    .line 647
    :pswitch_68
    aget v0, v1, v15

    .line 648
    .line 649
    shr-int/2addr v0, v7

    .line 650
    and-int/2addr v0, v9

    .line 651
    return v0

    .line 652
    :pswitch_69
    aget v0, v1, v15

    .line 653
    .line 654
    shr-int/2addr v0, v9

    .line 655
    and-int/2addr v0, v9

    .line 656
    return v0

    .line 657
    :pswitch_6a
    aget v0, v1, v15

    .line 658
    .line 659
    and-int/2addr v0, v9

    .line 660
    return v0

    .line 661
    :pswitch_6b
    aget v0, v1, v20

    .line 662
    .line 663
    shr-int/2addr v0, v12

    .line 664
    and-int/2addr v0, v9

    .line 665
    return v0

    .line 666
    :pswitch_6c
    aget v0, v1, v20

    .line 667
    .line 668
    shr-int/2addr v0, v3

    .line 669
    and-int/2addr v0, v9

    .line 670
    return v0

    .line 671
    :pswitch_6d
    aget v0, v1, v20

    .line 672
    .line 673
    shr-int/2addr v0, v6

    .line 674
    and-int/2addr v0, v9

    .line 675
    return v0

    .line 676
    :pswitch_6e
    aget v0, v1, v20

    .line 677
    .line 678
    shr-int/2addr v0, v8

    .line 679
    and-int/2addr v0, v9

    .line 680
    return v0

    .line 681
    :pswitch_6f
    aget v0, v1, v20

    .line 682
    .line 683
    shr-int/2addr v0, v7

    .line 684
    and-int/2addr v0, v9

    .line 685
    return v0

    .line 686
    :pswitch_70
    aget v0, v1, v20

    .line 687
    .line 688
    shr-int/2addr v0, v9

    .line 689
    and-int/2addr v0, v9

    .line 690
    return v0

    .line 691
    :pswitch_71
    aget v0, v1, v20

    .line 692
    .line 693
    and-int/2addr v0, v9

    .line 694
    return v0

    .line 695
    :pswitch_72
    aget v0, v1, v21

    .line 696
    .line 697
    shr-int/2addr v0, v12

    .line 698
    and-int/2addr v0, v9

    .line 699
    return v0

    .line 700
    :pswitch_73
    aget v0, v1, v21

    .line 701
    .line 702
    shr-int/2addr v0, v10

    .line 703
    and-int/2addr v0, v9

    .line 704
    return v0

    .line 705
    :pswitch_74
    aget v0, v1, v21

    .line 706
    .line 707
    shr-int/2addr v0, v3

    .line 708
    and-int/2addr v0, v9

    .line 709
    return v0

    .line 710
    :pswitch_75
    aget v0, v1, v21

    .line 711
    .line 712
    shr-int/2addr v0, v6

    .line 713
    and-int/2addr v0, v9

    .line 714
    return v0

    .line 715
    :pswitch_76
    aget v0, v1, v21

    .line 716
    .line 717
    shr-int/2addr v0, v8

    .line 718
    and-int/2addr v0, v9

    .line 719
    return v0

    .line 720
    :pswitch_77
    aget v0, v1, v21

    .line 721
    .line 722
    shr-int/2addr v0, v7

    .line 723
    and-int/2addr v0, v9

    .line 724
    return v0

    .line 725
    :pswitch_78
    aget v0, v1, v21

    .line 726
    .line 727
    shr-int/2addr v0, v9

    .line 728
    and-int/2addr v0, v9

    .line 729
    return v0

    .line 730
    :pswitch_79
    aget v0, v1, v21

    .line 731
    .line 732
    and-int/2addr v0, v9

    .line 733
    return v0

    .line 734
    :pswitch_7a
    aget v0, v1, v11

    .line 735
    .line 736
    shr-int/2addr v0, v12

    .line 737
    and-int/2addr v0, v9

    .line 738
    return v0

    .line 739
    :pswitch_7b
    aget v0, v1, v11

    .line 740
    .line 741
    shr-int/2addr v0, v10

    .line 742
    and-int/2addr v0, v9

    .line 743
    return v0

    .line 744
    :pswitch_7c
    aget v0, v1, v11

    .line 745
    .line 746
    shr-int/2addr v0, v3

    .line 747
    and-int/2addr v0, v9

    .line 748
    return v0

    .line 749
    :pswitch_7d
    aget v0, v1, v11

    .line 750
    .line 751
    shr-int/2addr v0, v6

    .line 752
    and-int/2addr v0, v9

    .line 753
    return v0

    .line 754
    :pswitch_7e
    aget v0, v1, v11

    .line 755
    .line 756
    shr-int/2addr v0, v8

    .line 757
    and-int/2addr v0, v9

    .line 758
    return v0

    .line 759
    :pswitch_7f
    aget v0, v1, v11

    .line 760
    .line 761
    shr-int/2addr v0, v7

    .line 762
    and-int/2addr v0, v9

    .line 763
    return v0

    .line 764
    :pswitch_80
    aget v0, v1, v11

    .line 765
    .line 766
    shr-int/2addr v0, v9

    .line 767
    and-int/2addr v0, v9

    .line 768
    return v0

    .line 769
    :pswitch_81
    aget v0, v1, v11

    .line 770
    .line 771
    and-int/2addr v0, v9

    .line 772
    return v0

    .line 773
    :pswitch_82
    aget v0, v1, v19

    .line 774
    .line 775
    shr-int/2addr v0, v12

    .line 776
    and-int/2addr v0, v9

    .line 777
    return v0

    .line 778
    :pswitch_83
    aget v0, v1, v19

    .line 779
    .line 780
    shr-int/2addr v0, v10

    .line 781
    and-int/2addr v0, v9

    .line 782
    return v0

    .line 783
    :pswitch_84
    aget v0, v1, v19

    .line 784
    .line 785
    shr-int/2addr v0, v3

    .line 786
    and-int/2addr v0, v9

    .line 787
    return v0

    .line 788
    :pswitch_85
    aget v0, v1, v19

    .line 789
    .line 790
    shr-int/2addr v0, v6

    .line 791
    and-int/2addr v0, v9

    .line 792
    return v0

    .line 793
    :pswitch_86
    aget v0, v1, v19

    .line 794
    .line 795
    shr-int/2addr v0, v8

    .line 796
    and-int/2addr v0, v9

    .line 797
    return v0

    .line 798
    :pswitch_87
    aget v0, v1, v19

    .line 799
    .line 800
    shr-int/2addr v0, v7

    .line 801
    and-int/2addr v0, v9

    .line 802
    return v0

    .line 803
    :pswitch_88
    aget v0, v1, v19

    .line 804
    .line 805
    and-int/2addr v0, v8

    .line 806
    return v0

    .line 807
    :pswitch_89
    aget v0, v1, v18

    .line 808
    .line 809
    shr-int/2addr v0, v12

    .line 810
    and-int/2addr v0, v9

    .line 811
    return v0

    .line 812
    :pswitch_8a
    aget v0, v1, v18

    .line 813
    .line 814
    shr-int/2addr v0, v10

    .line 815
    and-int/2addr v0, v9

    .line 816
    return v0

    .line 817
    :pswitch_8b
    aget v0, v1, v18

    .line 818
    .line 819
    shr-int/2addr v0, v3

    .line 820
    and-int/2addr v0, v9

    .line 821
    return v0

    .line 822
    :pswitch_8c
    aget v0, v1, v18

    .line 823
    .line 824
    shr-int/2addr v0, v6

    .line 825
    and-int/2addr v0, v9

    .line 826
    return v0

    .line 827
    :pswitch_8d
    aget v0, v1, v18

    .line 828
    .line 829
    shr-int/2addr v0, v8

    .line 830
    and-int/2addr v0, v9

    .line 831
    return v0

    .line 832
    :pswitch_8e
    aget v0, v1, v18

    .line 833
    .line 834
    shr-int/2addr v0, v7

    .line 835
    and-int/2addr v0, v9

    .line 836
    return v0

    .line 837
    :pswitch_8f
    aget v0, v1, v18

    .line 838
    .line 839
    and-int/2addr v0, v8

    .line 840
    return v0

    .line 841
    :pswitch_90
    aget v0, v1, v22

    .line 842
    .line 843
    shr-int/2addr v0, v12

    .line 844
    and-int/2addr v0, v9

    .line 845
    return v0

    .line 846
    :pswitch_91
    aget v0, v1, v22

    .line 847
    .line 848
    shr-int/2addr v0, v10

    .line 849
    and-int/2addr v0, v9

    .line 850
    return v0

    .line 851
    :pswitch_92
    aget v0, v1, v22

    .line 852
    .line 853
    shr-int/2addr v0, v3

    .line 854
    and-int/2addr v0, v9

    .line 855
    return v0

    .line 856
    :pswitch_93
    aget v0, v1, v22

    .line 857
    .line 858
    shr-int/2addr v0, v6

    .line 859
    and-int/2addr v0, v9

    .line 860
    return v0

    .line 861
    :pswitch_94
    aget v0, v1, v22

    .line 862
    .line 863
    shr-int/2addr v0, v8

    .line 864
    and-int/2addr v0, v9

    .line 865
    return v0

    .line 866
    :pswitch_95
    aget v0, v1, v22

    .line 867
    .line 868
    shr-int/2addr v0, v7

    .line 869
    and-int/2addr v0, v9

    .line 870
    return v0

    .line 871
    :pswitch_96
    aget v0, v1, v22

    .line 872
    .line 873
    shr-int/2addr v0, v9

    .line 874
    and-int/2addr v0, v9

    .line 875
    return v0

    .line 876
    :pswitch_97
    aget v0, v1, v22

    .line 877
    .line 878
    and-int/2addr v0, v9

    .line 879
    return v0

    .line 880
    :pswitch_98
    aget v0, v1, v15

    .line 881
    .line 882
    shr-int/2addr v0, v12

    .line 883
    and-int/2addr v0, v9

    .line 884
    return v0

    .line 885
    :pswitch_99
    aget v0, v1, v15

    .line 886
    .line 887
    shr-int/2addr v0, v10

    .line 888
    and-int/2addr v0, v9

    .line 889
    return v0

    .line 890
    :pswitch_9a
    aget v0, v1, v15

    .line 891
    .line 892
    shr-int/2addr v0, v3

    .line 893
    and-int/2addr v0, v9

    .line 894
    return v0

    .line 895
    :pswitch_9b
    aget v0, v1, v15

    .line 896
    .line 897
    shr-int/2addr v0, v6

    .line 898
    and-int/2addr v0, v9

    .line 899
    return v0

    .line 900
    :pswitch_9c
    aget v0, v1, v15

    .line 901
    .line 902
    shr-int/2addr v0, v7

    .line 903
    and-int/2addr v0, v8

    .line 904
    return v0

    .line 905
    :pswitch_9d
    aget v0, v1, v15

    .line 906
    .line 907
    and-int/2addr v0, v8

    .line 908
    return v0

    .line 909
    :pswitch_9e
    aget v0, v1, v13

    .line 910
    .line 911
    shr-int/2addr v0, v10

    .line 912
    and-int/2addr v0, v8

    .line 913
    return v0

    .line 914
    :pswitch_9f
    aget v0, v1, v13

    .line 915
    .line 916
    shr-int/2addr v0, v6

    .line 917
    and-int/2addr v0, v8

    .line 918
    return v0

    .line 919
    :pswitch_a0
    aget v0, v1, v14

    .line 920
    .line 921
    shr-int/2addr v0, v10

    .line 922
    and-int/2addr v0, v9

    .line 923
    return v0

    .line 924
    :pswitch_a1
    aget v0, v1, v14

    .line 925
    .line 926
    shr-int/2addr v0, v8

    .line 927
    and-int/2addr v0, v12

    .line 928
    return v0

    .line 929
    :pswitch_a2
    aget v0, v1, v14

    .line 930
    .line 931
    and-int/2addr v0, v12

    .line 932
    return v0

    .line 933
    :pswitch_a3
    aget v0, v1, v16

    .line 934
    .line 935
    and-int/2addr v0, v9

    .line 936
    return v0

    .line 937
    :pswitch_a4
    const/16 v0, 0xa

    .line 938
    .line 939
    aget v0, v1, v0

    .line 940
    .line 941
    shr-int/2addr v0, v12

    .line 942
    and-int/2addr v0, v9

    .line 943
    return v0

    .line 944
    :pswitch_a5
    const/16 v0, 0xa

    .line 945
    .line 946
    aget v0, v1, v0

    .line 947
    .line 948
    shr-int/2addr v0, v10

    .line 949
    and-int/2addr v0, v9

    .line 950
    return v0

    .line 951
    :pswitch_a6
    const/16 v0, 0xa

    .line 952
    .line 953
    aget v0, v1, v0

    .line 954
    .line 955
    shr-int/2addr v0, v3

    .line 956
    and-int/2addr v0, v9

    .line 957
    return v0

    .line 958
    :pswitch_a7
    const/16 v0, 0xa

    .line 959
    .line 960
    aget v0, v1, v0

    .line 961
    .line 962
    shr-int/2addr v0, v6

    .line 963
    and-int/2addr v0, v9

    .line 964
    return v0

    .line 965
    :pswitch_a8
    const/16 v0, 0xa

    .line 966
    .line 967
    aget v0, v1, v0

    .line 968
    .line 969
    shr-int/2addr v0, v8

    .line 970
    and-int/2addr v0, v9

    .line 971
    return v0

    .line 972
    :pswitch_a9
    const/16 v0, 0xa

    .line 973
    .line 974
    aget v0, v1, v0

    .line 975
    .line 976
    shr-int/2addr v0, v7

    .line 977
    and-int/2addr v0, v9

    .line 978
    return v0

    .line 979
    :pswitch_aa
    const/16 v0, 0xa

    .line 980
    .line 981
    aget v0, v1, v0

    .line 982
    .line 983
    shr-int/2addr v0, v9

    .line 984
    and-int/2addr v0, v9

    .line 985
    return v0

    .line 986
    :pswitch_ab
    const/16 v0, 0xa

    .line 987
    .line 988
    aget v0, v1, v0

    .line 989
    .line 990
    and-int/2addr v0, v9

    .line 991
    return v0

    .line 992
    :pswitch_ac
    aget v0, v1, v5

    .line 993
    .line 994
    shr-int/2addr v0, v7

    .line 995
    and-int/2addr v0, v9

    .line 996
    return v0

    .line 997
    :pswitch_ad
    aget v0, v1, v5

    .line 998
    .line 999
    shr-int/2addr v0, v9

    .line 1000
    and-int/2addr v0, v9

    .line 1001
    return v0

    .line 1002
    :pswitch_ae
    aget v0, v1, v5

    .line 1003
    .line 1004
    and-int/2addr v0, v9

    .line 1005
    return v0

    .line 1006
    :pswitch_af
    aget v0, v1, v17

    .line 1007
    .line 1008
    shr-int/2addr v0, v12

    .line 1009
    and-int/2addr v0, v9

    .line 1010
    return v0

    .line 1011
    :pswitch_b0
    aget v0, v1, v17

    .line 1012
    .line 1013
    shr-int/2addr v0, v10

    .line 1014
    and-int/2addr v0, v9

    .line 1015
    return v0

    .line 1016
    :pswitch_b1
    aget v0, v1, v17

    .line 1017
    .line 1018
    shr-int/2addr v0, v3

    .line 1019
    and-int/2addr v0, v9

    .line 1020
    return v0

    .line 1021
    :pswitch_b2
    aget v0, v1, v17

    .line 1022
    .line 1023
    shr-int/2addr v0, v6

    .line 1024
    and-int/2addr v0, v9

    .line 1025
    return v0

    .line 1026
    :pswitch_b3
    aget v0, v1, v17

    .line 1027
    .line 1028
    and-int/2addr v0, v9

    .line 1029
    return v0

    .line 1030
    :pswitch_b4
    aget v0, v1, v12

    .line 1031
    .line 1032
    shr-int/2addr v0, v12

    .line 1033
    and-int/2addr v0, v9

    .line 1034
    return v0

    .line 1035
    :pswitch_b5
    aget v0, v1, v12

    .line 1036
    .line 1037
    shr-int/2addr v0, v6

    .line 1038
    and-int/2addr v0, v12

    .line 1039
    return v0

    .line 1040
    :pswitch_b6
    aget v0, v1, v12

    .line 1041
    .line 1042
    and-int/lit8 v0, v0, 0xf

    .line 1043
    .line 1044
    return v0

    .line 1045
    :pswitch_b7
    aget v0, v1, v8

    .line 1046
    .line 1047
    shr-int/2addr v0, v3

    .line 1048
    and-int/2addr v0, v9

    .line 1049
    return v0

    .line 1050
    :pswitch_b8
    aget v0, v1, v8

    .line 1051
    .line 1052
    shr-int/2addr v0, v8

    .line 1053
    and-int/2addr v0, v9

    .line 1054
    return v0

    .line 1055
    :pswitch_b9
    aget v0, v1, v8

    .line 1056
    .line 1057
    shr-int/2addr v0, v7

    .line 1058
    and-int/2addr v0, v9

    .line 1059
    return v0

    .line 1060
    :pswitch_ba
    aget v0, v1, v8

    .line 1061
    .line 1062
    shr-int/2addr v0, v9

    .line 1063
    and-int/2addr v0, v9

    .line 1064
    return v0

    .line 1065
    :pswitch_bb
    aget v0, v1, v8

    .line 1066
    .line 1067
    and-int/2addr v0, v9

    .line 1068
    return v0

    .line 1069
    :cond_4
    aget v0, v1, v7

    .line 1070
    .line 1071
    shr-int/2addr v0, v12

    .line 1072
    and-int/2addr v0, v9

    .line 1073
    return v0

    .line 1074
    :cond_5
    aget v0, v1, v7

    .line 1075
    .line 1076
    shr-int/2addr v0, v10

    .line 1077
    and-int/2addr v0, v9

    .line 1078
    return v0

    .line 1079
    :pswitch_bc
    aget v0, v1, v7

    .line 1080
    .line 1081
    shr-int/2addr v0, v3

    .line 1082
    and-int/2addr v0, v9

    .line 1083
    return v0

    .line 1084
    :pswitch_bd
    aget v0, v1, v7

    .line 1085
    .line 1086
    shr-int/2addr v0, v6

    .line 1087
    and-int/2addr v0, v9

    .line 1088
    return v0

    .line 1089
    :pswitch_be
    aget v0, v1, v7

    .line 1090
    .line 1091
    shr-int/2addr v0, v8

    .line 1092
    and-int/2addr v0, v9

    .line 1093
    return v0

    .line 1094
    :pswitch_bf
    aget v0, v1, v7

    .line 1095
    .line 1096
    shr-int/2addr v0, v7

    .line 1097
    and-int/2addr v0, v9

    .line 1098
    return v0

    .line 1099
    :pswitch_c0
    aget v0, v1, v7

    .line 1100
    .line 1101
    shr-int/2addr v0, v9

    .line 1102
    and-int/2addr v0, v9

    .line 1103
    return v0

    .line 1104
    :pswitch_c1
    aget v0, v1, v7

    .line 1105
    .line 1106
    and-int/2addr v0, v9

    .line 1107
    return v0

    .line 1108
    :pswitch_c2
    aget v0, v1, v9

    .line 1109
    .line 1110
    return v0

    .line 1111
    :pswitch_c3
    aget v0, v1, v4

    .line 1112
    .line 1113
    and-int/2addr v0, v8

    .line 1114
    return v0

    .line 1115
    :cond_6
    :goto_0
    return v4

    .line 1116
    nop

    .line 1117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
    .end packed-switch

    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
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
    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
    .end packed-switch

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
    :pswitch_data_2
    .packed-switch 0x1a
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
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
    .end packed-switch

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
    :pswitch_data_3
    .packed-switch 0x67
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
    .end packed-switch

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
    :pswitch_data_4
    .packed-switch 0x8c
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
    .end packed-switch

    .line 1382
    .line 1383
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
    :pswitch_data_5
    .packed-switch 0xc8
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
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
    .end packed-switch

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
    .line 1474
    .line 1475
    .line 1476
    .line 1477
    .line 1478
    .line 1479
    :pswitch_data_6
    .packed-switch 0xec
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    .line 1480
    .line 1481
    .line 1482
    .line 1483
    .line 1484
    .line 1485
    .line 1486
    .line 1487
    .line 1488
    .line 1489
    :pswitch_data_7
    .packed-switch 0x2710
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    .line 1490
    .line 1491
    .line 1492
    .line 1493
    .line 1494
    .line 1495
    .line 1496
    .line 1497
    .line 1498
    .line 1499
    :pswitch_data_8
    .packed-switch 0x2725
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    .line 1500
    .line 1501
    .line 1502
    .line 1503
    .line 1504
    .line 1505
    .line 1506
    .line 1507
    .line 1508
    .line 1509
    .line 1510
    .line 1511
    .line 1512
    .line 1513
    .line 1514
    .line 1515
    .line 1516
    .line 1517
    :pswitch_data_9
    .packed-switch 0x2738
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 1518
    .line 1519
    .line 1520
    .line 1521
    .line 1522
    .line 1523
    .line 1524
    .line 1525
    .line 1526
    .line 1527
    .line 1528
    .line 1529
    .line 1530
    .line 1531
    .line 1532
    .line 1533
    .line 1534
    .line 1535
    .line 1536
    .line 1537
    :pswitch_data_a
    .packed-switch 0x2755
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 1538
    .line 1539
    .line 1540
    .line 1541
    .line 1542
    .line 1543
    .line 1544
    .line 1545
    .line 1546
    .line 1547
    :pswitch_data_b
    .packed-switch 0x2769
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static M(Ly7/c;)Ljava/lang/Object;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    check-cast p0, Lc0/g;

    .line 4
    .line 5
    invoke-virtual {p0}, Lc0/g;->isDone()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_2

    .line 10
    .line 11
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lc0/g;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-object p0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 33
    .line 34
    .line 35
    :cond_1
    throw p0

    .line 36
    :catch_0
    const/4 v1, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    new-array v0, v0, [Ljava/lang/Object;

    .line 41
    .line 42
    aput-object p0, v0, v1

    .line 43
    .line 44
    const-string p0, "Future was expected to be done: %s"

    .line 45
    .line 46
    invoke-static {p0, v0}, Landroid/support/v4/media/session/b;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-direct {v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :goto_1
    throw v2

    .line 55
    :goto_2
    goto :goto_1
.end method

.method public static N(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "tableName"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "triggerType"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "`room_table_modification_trigger_"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const/16 p0, 0x5f

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const/16 p0, 0x60

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public static Q(Lcom/yunpan/appmanage/bean/WpTaskBean;Lx9/w3;Lcom/yunpan/appmanage/bean/WpPathBean;Lmc/b;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    const-string v2, "SELECT * FROM fileList WHERE parent=?"

    .line 5
    .line 6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 10
    .line 11
    iget-boolean v2, v2, Lcom/yunpan/appmanage/util/w;->l0:Z

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const-string v2, ""

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v2, " and name NOT LIKE \'.%\'"

    .line 19
    .line 20
    :goto_0
    const-string v3, " ORDER BY name"

    .line 21
    .line 22
    invoke-static {v2, v3, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object p1, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 27
    .line 28
    new-array v2, v0, [Ljava/lang/Object;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    aput-object p1, v2, v3

    .line 32
    .line 33
    new-instance p1, La2/g1;

    .line 34
    .line 35
    invoke-direct {p1, v1, v2}, La2/g1;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    :try_start_0
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-interface {v2, p1}, Lcom/yunpan/appmanage/db/FileInfoDao;->sqlQuery(Lc4/d;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_1

    .line 52
    :catch_0
    nop

    .line 53
    move-object p1, v1

    .line 54
    :goto_1
    if-eqz p1, :cond_a

    .line 55
    .line 56
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-nez v2, :cond_a

    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_a

    .line 71
    .line 72
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Lcom/yunpan/appmanage/db/FileInfo;

    .line 77
    .line 78
    new-instance v3, Lx9/w3;

    .line 79
    .line 80
    invoke-direct {v3, v2}, Lx9/w3;-><init>(Lcom/yunpan/appmanage/db/FileInfo;)V

    .line 81
    .line 82
    .line 83
    iget-boolean v2, v2, Lcom/yunpan/appmanage/db/FileInfo;->isDir:Z

    .line 84
    .line 85
    const/4 v4, 0x2

    .line 86
    if-eqz v2, :cond_9

    .line 87
    .line 88
    iget-object v2, p0, Lcom/yunpan/appmanage/bean/WpTaskBean;->userInfo:Lx9/n5;

    .line 89
    .line 90
    iget v5, v2, Lx9/n5;->a:I

    .line 91
    .line 92
    if-ne v5, v0, :cond_1

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_1
    if-ne v5, v4, :cond_2

    .line 96
    .line 97
    iget-object v4, p2, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 98
    .line 99
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    int-to-long v4, v4

    .line 108
    iget-object v6, v3, Lx9/w3;->a:Ljava/lang/String;

    .line 109
    .line 110
    invoke-static {v4, v5, v6, v2}, Lqf/c;->b(JLjava/lang/String;Lx9/n5;)Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    goto :goto_4

    .line 115
    :cond_2
    const/4 v4, 0x3

    .line 116
    if-ne v5, v4, :cond_3

    .line 117
    .line 118
    iget-object v4, v3, Lx9/w3;->a:Ljava/lang/String;

    .line 119
    .line 120
    invoke-static {p2, v4, v2}, Lqa/f;->b(Lcom/yunpan/appmanage/bean/WpPathBean;Ljava/lang/String;Lx9/n5;)Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    goto :goto_4

    .line 125
    :cond_3
    const/4 v4, 0x4

    .line 126
    if-ne v5, v4, :cond_4

    .line 127
    .line 128
    iget-object v4, v3, Lx9/w3;->a:Ljava/lang/String;

    .line 129
    .line 130
    invoke-static {p2, v4, v2}, Lcom/bumptech/glide/c;->d(Lcom/yunpan/appmanage/bean/WpPathBean;Ljava/lang/String;Lx9/n5;)Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    goto :goto_4

    .line 135
    :cond_4
    const/4 v4, 0x5

    .line 136
    if-ne v5, v4, :cond_5

    .line 137
    .line 138
    iget-object v4, v3, Lx9/w3;->a:Ljava/lang/String;

    .line 139
    .line 140
    invoke-static {p2, v4, v2}, Lcom/bumptech/glide/d;->e(Lcom/yunpan/appmanage/bean/WpPathBean;Ljava/lang/String;Lx9/n5;)Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    goto :goto_4

    .line 145
    :cond_5
    const/4 v4, 0x6

    .line 146
    if-ne v5, v4, :cond_6

    .line 147
    .line 148
    iget-object v4, v3, Lx9/w3;->a:Ljava/lang/String;

    .line 149
    .line 150
    invoke-static {v2, v4}, Lif/a;->h(Lx9/n5;Ljava/lang/String;)Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    goto :goto_4

    .line 155
    :cond_6
    const/4 v4, 0x7

    .line 156
    if-ne v5, v4, :cond_7

    .line 157
    .line 158
    iget-object v4, v3, Lx9/w3;->a:Ljava/lang/String;

    .line 159
    .line 160
    invoke-static {p2, v4, v2}, Lqa/g;->b(Lcom/yunpan/appmanage/bean/WpPathBean;Ljava/lang/String;Lx9/n5;)Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    goto :goto_4

    .line 165
    :cond_7
    :goto_3
    move-object v2, v1

    .line 166
    :goto_4
    if-nez v2, :cond_8

    .line 167
    .line 168
    const-string p0, "\u521b\u5efa\u6587\u4ef6\u5939\u5931\u8d25"

    .line 169
    .line 170
    invoke-static {p0, p3}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :cond_8
    invoke-static {p0, v3, v2, p3}, La9/o;->Q(Lcom/yunpan/appmanage/bean/WpTaskBean;Lx9/w3;Lcom/yunpan/appmanage/bean/WpPathBean;Lmc/b;)V

    .line 175
    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_9
    new-instance v2, Lcom/yunpan/appmanage/bean/WpTaskBean;

    .line 179
    .line 180
    invoke-direct {v2}, Lcom/yunpan/appmanage/bean/WpTaskBean;-><init>()V

    .line 181
    .line 182
    .line 183
    iput v4, v2, Lcom/yunpan/appmanage/bean/WpTaskBean;->type:I

    .line 184
    .line 185
    iget-object v4, p0, Lcom/yunpan/appmanage/bean/WpTaskBean;->userInfo:Lx9/n5;

    .line 186
    .line 187
    iput-object v4, v2, Lcom/yunpan/appmanage/bean/WpTaskBean;->userInfo:Lx9/n5;

    .line 188
    .line 189
    iget-object v4, p0, Lcom/yunpan/appmanage/bean/WpTaskBean;->wpRootPath:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 190
    .line 191
    iput-object v4, v2, Lcom/yunpan/appmanage/bean/WpTaskBean;->wpRootPath:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 192
    .line 193
    iget-object v4, p0, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdRootPath:Lx9/w3;

    .line 194
    .line 195
    iput-object v4, v2, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdRootPath:Lx9/w3;

    .line 196
    .line 197
    iput-object p2, v2, Lcom/yunpan/appmanage/bean/WpTaskBean;->wpPathInfo:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 198
    .line 199
    iput-object v3, v2, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdPathInfo:Lx9/w3;

    .line 200
    .line 201
    invoke-virtual {p3, v2}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    goto/16 :goto_2

    .line 205
    .line 206
    :cond_a
    return-void
.end method

.method public static R(Ljava/io/File;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 7
    .line 8
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->Q:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 35
    .line 36
    iget-boolean v1, v1, Lcom/yunpan/appmanage/util/w;->r0:Z

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-static {p0, v0, v2, v2}, Lif/a;->w(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lmc/b;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-static {p0, v0, v2, v2}, Lza/g;->e(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lmc/b;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    new-instance p0, Ljava/io/File;

    .line 49
    .line 50
    const-string v1, "AndroidManifest.json"

    .line 51
    .line 52
    invoke-static {v0, v1}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    const-string v2, ""

    .line 64
    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    .line 73
    .line 74
    new-instance v4, Ljava/io/FileReader;

    .line 75
    .line 76
    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 77
    .line 78
    .line 79
    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 80
    .line 81
    .line 82
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    if-eqz p0, :cond_1

    .line 87
    .line 88
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string p0, "\n"

    .line 92
    .line 93
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :catch_0
    move-exception p0

    .line 98
    goto :goto_2

    .line 99
    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 104
    .line 105
    .line 106
    :goto_3
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-static {p0}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {p0}, Lz7/p;->g()Lz7/s;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    const-string v1, "packageName"

    .line 119
    .line 120
    invoke-virtual {p0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 128
    :try_start_2
    const-string v3, "sourceDirPath"

    .line 129
    .line 130
    invoke-virtual {p0, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-virtual {p0}, Lz7/p;->i()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 138
    :goto_4
    move-object p0, v2

    .line 139
    move-object v2, v1

    .line 140
    goto :goto_6

    .line 141
    :catch_1
    move-exception p0

    .line 142
    goto :goto_5

    .line 143
    :catch_2
    move-exception p0

    .line 144
    move-object v1, v2

    .line 145
    :goto_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 146
    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_2
    move-object p0, v2

    .line 150
    :goto_6
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    const-string v3, ".apk"

    .line 155
    .line 156
    const/4 v4, 0x0

    .line 157
    if-eqz v1, :cond_4

    .line 158
    .line 159
    new-instance v1, Ljava/io/File;

    .line 160
    .line 161
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    array-length v5, v1

    .line 169
    const/4 v6, 0x0

    .line 170
    :goto_7
    if-ge v6, v5, :cond_4

    .line 171
    .line 172
    aget-object v7, v1, v6

    .line 173
    .line 174
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    invoke-virtual {v8, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 183
    .line 184
    .line 185
    move-result v8

    .line 186
    if-eqz v8, :cond_3

    .line 187
    .line 188
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 189
    .line 190
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 191
    .line 192
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    const/16 v6, 0x2000

    .line 197
    .line 198
    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    if-eqz v1, :cond_4

    .line 203
    .line 204
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 205
    .line 206
    goto :goto_8

    .line 207
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 208
    .line 209
    goto :goto_7

    .line 210
    :cond_4
    :goto_8
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    if-eqz v1, :cond_6

    .line 215
    .line 216
    invoke-static {v2}, Landroid/support/v4/media/session/a;->k(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    if-nez v1, :cond_5

    .line 221
    .line 222
    goto :goto_9

    .line 223
    :cond_5
    new-instance p0, Ljava/lang/Exception;

    .line 224
    .line 225
    const-string v0, "\u89e3\u6790\u9519\u8bef\uff0c\u67e5\u4e0d\u5230\u5305\u540d"

    .line 226
    .line 227
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    throw p0

    .line 231
    :cond_6
    :goto_9
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-nez v1, :cond_8

    .line 236
    .line 237
    invoke-static {v2}, Landroid/support/v4/media/session/a;->k(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    if-nez v1, :cond_7

    .line 242
    .line 243
    goto :goto_a

    .line 244
    :cond_7
    new-instance p0, Ljava/lang/Exception;

    .line 245
    .line 246
    const-string v0, "\u6b64\u7cfb\u7edf\u5df2\u5b58\u5728\u76f8\u540c\u5305\u540d\u7684\u5e94\u7528\u4e86"

    .line 247
    .line 248
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    throw p0

    .line 252
    :cond_8
    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    if-eqz v1, :cond_9

    .line 257
    .line 258
    const-string p0, "/system/app/"

    .line 259
    .line 260
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p0

    .line 264
    :cond_9
    new-instance v1, Ljava/io/File;

    .line 265
    .line 266
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    if-eqz v1, :cond_b

    .line 274
    .line 275
    new-instance v1, Ljava/io/File;

    .line 276
    .line 277
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    array-length v2, v1

    .line 285
    :goto_b
    if-ge v4, v2, :cond_b

    .line 286
    .line 287
    aget-object v5, v1, v4

    .line 288
    .line 289
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 298
    .line 299
    .line 300
    move-result v5

    .line 301
    if-eqz v5, :cond_a

    .line 302
    .line 303
    const-string v1, "123"

    .line 304
    .line 305
    invoke-static {p0, v1}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object p0

    .line 309
    goto :goto_c

    .line 310
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 311
    .line 312
    goto :goto_b

    .line 313
    :cond_b
    :goto_c
    new-instance v1, Ljava/io/File;

    .line 314
    .line 315
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    if-nez v1, :cond_d

    .line 323
    .line 324
    sget-object v1, Lfa/b0;->a:La2/w0;

    .line 325
    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    const-string v3, "mkdir -p \'"

    .line 329
    .line 330
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    const-string v3, "/\'"

    .line 337
    .line 338
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    .line 347
    .line 348
    invoke-static {v2}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    iget v1, v1, Lfa/a0;->a:I

    .line 353
    .line 354
    if-nez v1, :cond_c

    .line 355
    .line 356
    goto :goto_d

    .line 357
    :cond_c
    new-instance p0, Ljava/lang/Exception;

    .line 358
    .line 359
    const-string v0, "\u5b89\u88c5\u5931\u8d25\uff1a\u521b\u5efa\u6587\u4ef6\u5939\u5931\u8d25"

    .line 360
    .line 361
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    throw p0

    .line 365
    :cond_d
    :goto_d
    invoke-static {v0, p0, v0}, La9/o;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    return-void
.end method

.method public static Y(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "locales"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :try_start_0
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    .line 19
    .line 20
    .line 21
    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 22
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    :try_start_1
    invoke-interface {v1, p0, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v3, "UTF-8"

    .line 31
    .line 32
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 38
    .line 39
    .line 40
    const-string v3, "application_locales"

    .line 41
    .line 42
    invoke-interface {v1, v2, v3, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 43
    .line 44
    .line 45
    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 46
    .line 47
    .line 48
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    .line 51
    if-eqz p0, :cond_2

    .line 52
    .line 53
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 54
    .line 55
    .line 56
    goto :goto_3

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    goto :goto_1

    .line 59
    :catch_0
    nop

    .line 60
    goto :goto_2

    .line 61
    :goto_1
    if-eqz p0, :cond_1

    .line 62
    .line 63
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 64
    .line 65
    .line 66
    :catch_1
    :cond_1
    throw p1

    .line 67
    :goto_2
    if-eqz p0, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catch_2
    :cond_2
    :goto_3
    return-void
.end method

.method public static Z(Ljava/io/InputStream;)[B
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/16 v2, 0x2000

    .line 4
    .line 5
    new-array v2, v2, [B

    .line 6
    .line 7
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 10
    .line 11
    .line 12
    :goto_0
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const/4 v5, -0x1

    .line 17
    if-eq v4, v5, :cond_0

    .line 18
    .line 19
    invoke-virtual {v3, v2, v1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 26
    .line 27
    .line 28
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 30
    .line 31
    .line 32
    return-object p0

    .line 33
    :goto_1
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    :catchall_1
    move-exception v2

    .line 35
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :catchall_2
    move-exception v3

    .line 40
    const-class v4, Ljava/lang/Throwable;

    .line 41
    .line 42
    :try_start_3
    const-string v5, "addSuppressed"

    .line 43
    .line 44
    new-array v6, v0, [Ljava/lang/Class;

    .line 45
    .line 46
    aput-object v4, v6, v1

    .line 47
    .line 48
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    new-array v0, v0, [Ljava/lang/Object;

    .line 53
    .line 54
    aput-object v3, v0, v1

    .line 55
    .line 56
    invoke-virtual {v4, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 57
    .line 58
    .line 59
    :catch_0
    :goto_2
    goto :goto_4

    .line 60
    :goto_3
    throw v2

    .line 61
    :goto_4
    goto :goto_3
.end method

.method public static a()V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, La9/o;->a:Ljava/util/Stack;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_2

    .line 10
    .line 11
    sget-object v0, La9/o;->a:Ljava/util/Stack;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    if-ge v1, v0, :cond_1

    .line 19
    .line 20
    sget-object v2, La9/o;->a:Ljava/util/Stack;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroid/app/Activity;

    .line 27
    .line 28
    sget-object v3, La9/o;->a:Ljava/util/Stack;

    .line 29
    .line 30
    invoke-virtual {v3, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_0

    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 43
    .line 44
    .line 45
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    sget-object v0, La9/o;->a:Ljava/util/Stack;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    sget-object v1, La9/o;->a:Ljava/util/Stack;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->clear()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    :cond_2
    :goto_1
    return-void
.end method

.method public static a0(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .line 1
    const-string v0, "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    .line 6
    .line 7
    .line 8
    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 9
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const-string v4, "UTF-8"

    .line 14
    .line 15
    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    :cond_0
    :goto_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    const/4 v6, 0x1

    .line 27
    if-eq v5, v6, :cond_3

    .line 28
    .line 29
    const/4 v6, 0x3

    .line 30
    if-ne v5, v6, :cond_1

    .line 31
    .line 32
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    if-le v7, v4, :cond_3

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_3

    .line 41
    :catch_0
    nop

    .line 42
    goto :goto_4

    .line 43
    :cond_1
    :goto_1
    if-eq v5, v6, :cond_0

    .line 44
    .line 45
    const/4 v6, 0x4

    .line 46
    if-ne v5, v6, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    const-string v6, "locales"

    .line 54
    .line 55
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_0

    .line 60
    .line 61
    const-string v4, "application_locales"

    .line 62
    .line 63
    const/4 v5, 0x0

    .line 64
    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :cond_3
    if-eqz v2, :cond_5

    .line 69
    .line 70
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 71
    .line 72
    .line 73
    goto :goto_5

    .line 74
    :catch_1
    nop

    .line 75
    goto :goto_5

    .line 76
    :goto_3
    if-eqz v2, :cond_4

    .line 77
    .line 78
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 79
    .line 80
    .line 81
    :catch_2
    :cond_4
    throw p0

    .line 82
    :goto_4
    if-eqz v2, :cond_5

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_5
    :goto_5
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-nez v2, :cond_6

    .line 90
    .line 91
    goto :goto_6

    .line 92
    :cond_6
    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    :catch_3
    :goto_6
    return-object v1
.end method

.method public static b(IILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    if-gez p0, :cond_0

    .line 5
    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    new-array p1, v2, [Ljava/lang/Object;

    .line 11
    .line 12
    aput-object p2, p1, v1

    .line 13
    .line 14
    aput-object p0, p1, v0

    .line 15
    .line 16
    const-string p0, "%s (%s) must not be negative"

    .line 17
    .line 18
    invoke-static {p0, p1}, Landroid/support/v4/media/session/b;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_0
    if-ltz p1, :cond_1

    .line 24
    .line 25
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 v3, 0x3

    .line 34
    new-array v3, v3, [Ljava/lang/Object;

    .line 35
    .line 36
    aput-object p2, v3, v1

    .line 37
    .line 38
    aput-object p0, v3, v0

    .line 39
    .line 40
    aput-object p1, v3, v2

    .line 41
    .line 42
    const-string p0, "%s (%s) must not be greater than size (%s)"

    .line 43
    .line 44
    invoke-static {p0, v3}, Landroid/support/v4/media/session/b;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    const-string p2, "negative size: "

    .line 52
    .line 53
    invoke-static {p1, p2}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0
.end method

.method public static b0(Lo3/f;[Ljava/lang/String;Ljava/util/Map;)Lo3/f;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p0, :cond_3

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    array-length v2, p1

    .line 10
    if-ne v2, v1, :cond_1

    .line 11
    .line 12
    aget-object p0, p1, v0

    .line 13
    .line 14
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lo3/f;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    array-length v2, p1

    .line 22
    if-le v2, v1, :cond_5

    .line 23
    .line 24
    new-instance p0, Lo3/f;

    .line 25
    .line 26
    invoke-direct {p0}, Lo3/f;-><init>()V

    .line 27
    .line 28
    .line 29
    array-length v1, p1

    .line 30
    :goto_0
    if-ge v0, v1, :cond_2

    .line 31
    .line 32
    aget-object v2, p1, v0

    .line 33
    .line 34
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lo3/f;

    .line 39
    .line 40
    invoke-virtual {p0, v2}, Lo3/f;->a(Lo3/f;)V

    .line 41
    .line 42
    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    return-object p0

    .line 47
    :cond_3
    if-eqz p1, :cond_4

    .line 48
    .line 49
    array-length v2, p1

    .line 50
    if-ne v2, v1, :cond_4

    .line 51
    .line 52
    aget-object p1, p1, v0

    .line 53
    .line 54
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lo3/f;

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Lo3/f;->a(Lo3/f;)V

    .line 61
    .line 62
    .line 63
    return-object p0

    .line 64
    :cond_4
    if-eqz p1, :cond_5

    .line 65
    .line 66
    array-length v2, p1

    .line 67
    if-le v2, v1, :cond_5

    .line 68
    .line 69
    array-length v1, p1

    .line 70
    :goto_1
    if-ge v0, v1, :cond_5

    .line 71
    .line 72
    aget-object v2, p1, v0

    .line 73
    .line 74
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Lo3/f;

    .line 79
    .line 80
    invoke-virtual {p0, v2}, Lo3/f;->a(Lo3/f;)V

    .line 81
    .line 82
    .line 83
    add-int/lit8 v0, v0, 0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_5
    return-object p0
.end method

.method public static c(Lke/i;)Lke/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lke/i;->a:Lke/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lke/f;->b()Lke/f;

    .line 4
    .line 5
    .line 6
    iget v0, v0, Lke/f;->i:I

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object p0, Lke/i;->b:Lke/i;

    .line 12
    .line 13
    :goto_0
    return-object p0
.end method

.method public static d([B)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    array-length v2, p0

    .line 5
    mul-int/lit8 v2, v2, 0x2

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    array-length v4, p0

    .line 13
    if-ge v3, v4, :cond_0

    .line 14
    .line 15
    aget-byte v4, p0, v3

    .line 16
    .line 17
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    new-array v5, v0, [Ljava/lang/Object;

    .line 22
    .line 23
    aput-object v4, v5, v2

    .line 24
    .line 25
    const-string v4, "%02x"

    .line 26
    .line 27
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    add-int/2addr v3, v0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method public static e([B)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "0123456789ABCDEF"

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v1, p0

    .line 8
    mul-int/lit8 v1, v1, 0x2

    .line 9
    .line 10
    new-array v1, v1, [C

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    array-length v3, p0

    .line 14
    if-ge v2, v3, :cond_0

    .line 15
    .line 16
    aget-byte v3, p0, v2

    .line 17
    .line 18
    and-int/lit16 v4, v3, 0xff

    .line 19
    .line 20
    mul-int/lit8 v5, v2, 0x2

    .line 21
    .line 22
    ushr-int/lit8 v4, v4, 0x4

    .line 23
    .line 24
    aget-char v4, v0, v4

    .line 25
    .line 26
    aput-char v4, v1, v5

    .line 27
    .line 28
    add-int/lit8 v5, v5, 0x1

    .line 29
    .line 30
    and-int/lit8 v3, v3, 0xf

    .line 31
    .line 32
    aget-char v3, v0, v3

    .line 33
    .line 34
    aput-char v3, v1, v5

    .line 35
    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance p0, Ljava/lang/String;

    .line 40
    .line 41
    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    .line 42
    .line 43
    .line 44
    return-object p0
.end method

.method public static f(Ljava/io/File;)Lba/h;
    .locals 15

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-eqz v2, :cond_8

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    const-wide/32 v4, 0x8000000

    .line 14
    .line 15
    .line 16
    cmp-long v6, v2, v4

    .line 17
    .line 18
    if-gtz v6, :cond_0

    .line 19
    .line 20
    const/high16 v4, 0x40000

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-wide/32 v4, 0x10000000

    .line 24
    .line 25
    .line 26
    cmp-long v6, v2, v4

    .line 27
    .line 28
    if-gtz v6, :cond_1

    .line 29
    .line 30
    const/high16 v4, 0x80000

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-wide/32 v4, 0x20000000

    .line 34
    .line 35
    .line 36
    cmp-long v6, v2, v4

    .line 37
    .line 38
    if-gtz v6, :cond_2

    .line 39
    .line 40
    const/high16 v4, 0x100000

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/high16 v4, 0x200000

    .line 44
    .line 45
    :goto_0
    const-string v5, "SHA-1"

    .line 46
    .line 47
    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    new-array v8, v4, [B

    .line 56
    .line 57
    new-instance v9, Ljava/io/FileInputStream;

    .line 58
    .line 59
    invoke-direct {v9, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 60
    .line 61
    .line 62
    :goto_1
    const/4 v10, 0x0

    .line 63
    :goto_2
    const-string v11, "addSuppressed"

    .line 64
    .line 65
    const-class v12, Ljava/lang/Throwable;

    .line 66
    .line 67
    const/4 v13, -0x1

    .line 68
    if-ge v10, v4, :cond_4

    .line 69
    .line 70
    sub-int v14, v4, v10

    .line 71
    .line 72
    :try_start_0
    invoke-virtual {v9, v8, v10, v14}, Ljava/io/FileInputStream;->read([BII)I

    .line 73
    .line 74
    .line 75
    move-result v14

    .line 76
    if-ne v14, v13, :cond_3

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_3
    add-int/2addr v10, v14

    .line 80
    goto :goto_2

    .line 81
    :cond_4
    :goto_3
    if-lez v10, :cond_5

    .line 82
    .line 83
    invoke-virtual {v7}, Ljava/security/MessageDigest;->reset()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v7, v8, v1, v10}, Ljava/security/MessageDigest;->update([BII)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    .line 90
    .line 91
    .line 92
    move-result-object v10

    .line 93
    invoke-virtual {v6, v10}, Ljava/security/MessageDigest;->update([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    :try_start_1
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 99
    .line 100
    .line 101
    goto :goto_4

    .line 102
    :catchall_1
    move-exception v2

    .line 103
    :try_start_2
    new-array v3, v0, [Ljava/lang/Class;

    .line 104
    .line 105
    aput-object v12, v3, v1

    .line 106
    .line 107
    invoke-virtual {v12, v11, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    new-array v0, v0, [Ljava/lang/Object;

    .line 112
    .line 113
    aput-object v2, v0, v1

    .line 114
    .line 115
    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 116
    .line 117
    .line 118
    :catch_0
    :goto_4
    throw p0

    .line 119
    :cond_5
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-static {v4}, La9/o;->e([B)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    const-wide/32 v6, 0xf000

    .line 135
    .line 136
    .line 137
    cmp-long v8, v2, v6

    .line 138
    .line 139
    if-gez v8, :cond_7

    .line 140
    .line 141
    const v2, 0x8000

    .line 142
    .line 143
    .line 144
    new-array v2, v2, [B

    .line 145
    .line 146
    new-instance v3, Ljava/io/FileInputStream;

    .line 147
    .line 148
    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 149
    .line 150
    .line 151
    :goto_5
    :try_start_3
    invoke-virtual {v3, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 152
    .line 153
    .line 154
    move-result p0

    .line 155
    if-eq p0, v13, :cond_6

    .line 156
    .line 157
    invoke-virtual {v5, v2, v1, p0}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 158
    .line 159
    .line 160
    goto :goto_5

    .line 161
    :catchall_2
    move-exception p0

    .line 162
    goto :goto_6

    .line 163
    :cond_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 164
    .line 165
    .line 166
    goto :goto_8

    .line 167
    :goto_6
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 168
    .line 169
    .line 170
    goto :goto_7

    .line 171
    :catchall_3
    move-exception v2

    .line 172
    :try_start_5
    new-array v3, v0, [Ljava/lang/Class;

    .line 173
    .line 174
    aput-object v12, v3, v1

    .line 175
    .line 176
    invoke-virtual {v12, v11, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    new-array v0, v0, [Ljava/lang/Object;

    .line 181
    .line 182
    aput-object v2, v0, v1

    .line 183
    .line 184
    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 185
    .line 186
    .line 187
    :catch_1
    :goto_7
    throw p0

    .line 188
    :cond_7
    const/16 v6, 0x5000

    .line 189
    .line 190
    new-array v7, v6, [B

    .line 191
    .line 192
    new-instance v8, Ljava/io/RandomAccessFile;

    .line 193
    .line 194
    const-string v9, "r"

    .line 195
    .line 196
    invoke-direct {v8, p0, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    const-wide/16 v9, 0x0

    .line 200
    .line 201
    :try_start_6
    invoke-virtual {v8, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v8, v7}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v5, v7, v1, v6}, Ljava/security/MessageDigest;->update([BII)V

    .line 208
    .line 209
    .line 210
    const-wide/16 v9, 0x3

    .line 211
    .line 212
    div-long v9, v2, v9

    .line 213
    .line 214
    invoke-virtual {v8, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v8, v7}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v5, v7, v1, v6}, Ljava/security/MessageDigest;->update([BII)V

    .line 221
    .line 222
    .line 223
    const-wide/16 v9, 0x5000

    .line 224
    .line 225
    sub-long/2addr v2, v9

    .line 226
    invoke-virtual {v8, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v8, v7}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v5, v7, v1, v6}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 233
    .line 234
    .line 235
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    .line 236
    .line 237
    .line 238
    :goto_8
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    .line 239
    .line 240
    .line 241
    move-result-object p0

    .line 242
    invoke-static {p0}, La9/o;->e([B)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    new-instance v0, Lba/h;

    .line 247
    .line 248
    invoke-direct {v0, v4, p0, v1}, Lba/h;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 249
    .line 250
    .line 251
    return-object v0

    .line 252
    :catchall_4
    move-exception p0

    .line 253
    :try_start_7
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 254
    .line 255
    .line 256
    goto :goto_9

    .line 257
    :catchall_5
    move-exception v2

    .line 258
    :try_start_8
    new-array v3, v0, [Ljava/lang/Class;

    .line 259
    .line 260
    aput-object v12, v3, v1

    .line 261
    .line 262
    invoke-virtual {v12, v11, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    new-array v0, v0, [Ljava/lang/Object;

    .line 267
    .line 268
    aput-object v2, v0, v1

    .line 269
    .line 270
    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 271
    .line 272
    .line 273
    :catch_2
    :goto_9
    throw p0

    .line 274
    :cond_8
    new-instance v0, Ljava/io/IOException;

    .line 275
    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    const-string v2, "\u6587\u4ef6\u4e0d\u5b58\u5728\u6216\u4e0d\u662f\u666e\u901a\u6587\u4ef6: "

    .line 279
    .line 280
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p0

    .line 290
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    goto :goto_b

    .line 294
    :goto_a
    throw v0

    .line 295
    :goto_b
    goto :goto_a
.end method

.method public static g(Ljava/lang/String;IIZ)V
    .locals 2

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const/4 v0, 0x2

    .line 15
    new-array v0, v0, [Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    aput-object p1, v0, v1

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    aput-object p2, v0, p1

    .line 22
    .line 23
    invoke-static {p0, v0}, Landroid/support/v4/media/session/b;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-direct {p3, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p3
.end method

.method public static h(Ljava/lang/String;IZ)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x1

    .line 11
    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    aput-object p1, v0, v1

    .line 15
    .line 16
    invoke-static {p0, v0}, Landroid/support/v4/media/session/b;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p2
.end method

.method public static i(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    throw p1
.end method

.method public static j(Ljava/lang/String;ZJ)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 5
    .line 6
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const/4 p3, 0x1

    .line 11
    new-array p3, p3, [Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    aput-object p2, p3, v0

    .line 15
    .line 16
    invoke-static {p0, p3}, Landroid/support/v4/media/session/b;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method

.method public static k(Z)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 7
    .line 8
    .line 9
    throw p0
.end method

.method public static l(ZLjava/lang/String;Ljava/lang/Comparable;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    aput-object p2, v0, v1

    .line 11
    .line 12
    invoke-static {p1, v0}, Landroid/support/v4/media/session/b;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static m(II)V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-ltz p0, :cond_1

    .line 5
    .line 6
    if-lt p0, p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    return-void

    .line 10
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    .line 11
    .line 12
    const-string v4, "index"

    .line 13
    .line 14
    if-ltz p0, :cond_3

    .line 15
    .line 16
    if-ltz p1, :cond_2

    .line 17
    .line 18
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 v5, 0x3

    .line 27
    new-array v5, v5, [Ljava/lang/Object;

    .line 28
    .line 29
    aput-object v4, v5, v2

    .line 30
    .line 31
    aput-object p0, v5, v1

    .line 32
    .line 33
    aput-object p1, v5, v0

    .line 34
    .line 35
    const-string p0, "%s (%s) must be less than size (%s)"

    .line 36
    .line 37
    invoke-static {p0, v5}, Landroid/support/v4/media/session/b;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    const-string v0, "negative size: "

    .line 45
    .line 46
    invoke-static {p1, v0}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    new-array p1, v0, [Ljava/lang/Object;

    .line 59
    .line 60
    aput-object v4, p1, v2

    .line 61
    .line 62
    aput-object p0, p1, v1

    .line 63
    .line 64
    const-string p0, "%s (%s) must not be negative"

    .line 65
    .line 66
    invoke-static {p0, p1}, Landroid/support/v4/media/session/b;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    :goto_1
    invoke-direct {v3, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v3
.end method

.method public static n(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static o(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 5
    .line 6
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    throw p0
.end method

.method public static p(II)V
    .locals 2

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    if-gt p0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 7
    .line 8
    const-string v1, "index"

    .line 9
    .line 10
    invoke-static {p0, p1, v1}, La9/o;->b(IILjava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public static q(III)V
    .locals 2

    .line 1
    if-ltz p0, :cond_1

    .line 2
    .line 3
    if-lt p1, p0, :cond_1

    .line 4
    .line 5
    if-le p1, p2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    return-void

    .line 9
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 10
    .line 11
    if-ltz p0, :cond_4

    .line 12
    .line 13
    if-gt p0, p2, :cond_4

    .line 14
    .line 15
    if-ltz p1, :cond_3

    .line 16
    .line 17
    if-le p1, p2, :cond_2

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const/4 p2, 0x2

    .line 29
    new-array p2, p2, [Ljava/lang/Object;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    aput-object p1, p2, v1

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    aput-object p0, p2, p1

    .line 36
    .line 37
    const-string p0, "end index (%s) must not be less than start index (%s)"

    .line 38
    .line 39
    invoke-static {p0, p2}, Landroid/support/v4/media/session/b;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    goto :goto_2

    .line 44
    :cond_3
    :goto_1
    const-string p0, "end index"

    .line 45
    .line 46
    invoke-static {p1, p2, p0}, La9/o;->b(IILjava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    goto :goto_2

    .line 51
    :cond_4
    const-string p1, "start index"

    .line 52
    .line 53
    invoke-static {p0, p2, p1}, La9/o;->b(IILjava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    :goto_2
    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v0
.end method

.method public static r(I)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    if-gt v0, p0, :cond_0

    .line 3
    .line 4
    const/16 v1, 0x25

    .line 5
    .line 6
    if-ge p0, v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string v2, "radix "

    .line 12
    .line 13
    const-string v3, " was not in valid range "

    .line 14
    .line 15
    invoke-static {v2, p0, v3}, Lg/b;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    new-instance v2, Lye/c;

    .line 20
    .line 21
    const/16 v3, 0x24

    .line 22
    .line 23
    invoke-direct {v2, v0, v3}, Lye/c;-><init>(II)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v1
.end method

.method public static s(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 5
    .line 6
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public static t(Z)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 7
    .line 8
    .line 9
    throw p0
.end method

.method public static u(III)I
    .locals 0

    .line 1
    if-ge p0, p1, :cond_0

    .line 2
    .line 3
    return p1

    .line 4
    :cond_0
    if-le p0, p2, :cond_1

    .line 5
    .line 6
    return p2

    .line 7
    :cond_1
    return p0
.end method

.method public static x(Ljava/io/InputStream;)V
    .locals 2

    .line 1
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    int-to-long v0, v0

    .line 12
    invoke-virtual {p0, v0, v1}, Ljava/io/InputStream;->skip(J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    :cond_0
    return-void
.end method

.method public static y(Ljava/io/Serializable;)[J
    .locals 4

    .line 1
    instance-of v0, p0, [I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p0, [I

    .line 6
    .line 7
    array-length v0, p0

    .line 8
    new-array v0, v0, [J

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    array-length v2, p0

    .line 12
    if-ge v1, v2, :cond_0

    .line 13
    .line 14
    aget v2, p0, v1

    .line 15
    .line 16
    int-to-long v2, v2

    .line 17
    aput-wide v2, v0, v1

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-object v0

    .line 23
    :cond_1
    instance-of v0, p0, [J

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    check-cast p0, [J

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_2
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method public static z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    array-length v0, p2

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, v0, :cond_7

    .line 13
    .line 14
    aget-object v2, p2, v1

    .line 15
    .line 16
    const-string v3, "/"

    .line 17
    .line 18
    invoke-static {p1, v3}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-static {p0, v4, v3}, Lta/q;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const-string v5, "\'"

    .line 35
    .line 36
    if-eqz v4, :cond_2

    .line 37
    .line 38
    sget-object v4, Lfa/b0;->a:La2/w0;

    .line 39
    .line 40
    new-instance v6, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v7, "mkdir -p \'"

    .line 43
    .line 44
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-static {v6}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    iget v4, v4, Lfa/a0;->a:I

    .line 65
    .line 66
    if-nez v4, :cond_1

    .line 67
    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v6, "chmod 755 \'"

    .line 71
    .line 72
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-static {v3}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    iget v3, v3, Lfa/a0;->a:I

    .line 90
    .line 91
    if-nez v3, :cond_0

    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-static {p0, p1, v2}, La9/o;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto/16 :goto_1

    .line 101
    .line 102
    :cond_0
    new-instance p0, Ljava/lang/Exception;

    .line 103
    .line 104
    const-string p1, "\u5b89\u88c5\u5931\u8d25\uff1a\u66f4\u6539\u76ee\u5f55\u6743\u9650\u5931\u8d25"

    .line 105
    .line 106
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p0

    .line 110
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    .line 111
    .line 112
    const-string p1, "\u5b89\u88c5\u5931\u8d25\uff1a\u521b\u5efa\u76ee\u5f55\u5931\u8d25"

    .line 113
    .line 114
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p0

    .line 118
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    const-string v6, "logo.png"

    .line 123
    .line 124
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-nez v4, :cond_6

    .line 129
    .line 130
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    const-string v6, "AndroidManifest.json"

    .line 135
    .line 136
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    if-eqz v4, :cond_3

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_3
    sget-object v4, Lfa/b0;->a:La2/w0;

    .line 144
    .line 145
    new-instance v6, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string v7, "\\cp -R \'"

    .line 148
    .line 149
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v2, "\' \'"

    .line 160
    .line 161
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    invoke-static {v2}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    iget v2, v2, Lfa/a0;->a:I

    .line 182
    .line 183
    if-nez v2, :cond_5

    .line 184
    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    const-string v4, "chmod 644 \'"

    .line 188
    .line 189
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-static {v2}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    iget v2, v2, Lfa/a0;->a:I

    .line 207
    .line 208
    if-nez v2, :cond_4

    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_4
    new-instance p0, Ljava/lang/Exception;

    .line 212
    .line 213
    const-string p1, "\u5b89\u88c5\u5931\u8d25\uff1a\u66f4\u6539\u6587\u4ef6\u6743\u9650\u5931\u8d25"

    .line 214
    .line 215
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    throw p0

    .line 219
    :cond_5
    new-instance p0, Ljava/lang/Exception;

    .line 220
    .line 221
    const-string p1, "\u5b89\u88c5\u5931\u8d25\uff1a\u5199\u5165\u6587\u4ef6\u51fa\u9519"

    .line 222
    .line 223
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw p0

    .line 227
    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 228
    .line 229
    goto/16 :goto_0

    .line 230
    .line 231
    :cond_7
    return-void
.end method


# virtual methods
.method public O(Landroid/view/View;)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public P()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public abstract S(Ljava/lang/Throwable;)V
.end method

.method public abstract T(La2/w0;)V
.end method

.method public U(ILandroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract V(I)V
.end method

.method public abstract W(Landroid/view/View;II)V
.end method

.method public abstract X(Landroid/view/View;FF)V
.end method

.method public abstract c0(ILandroid/view/View;)Z
.end method

.method public abstract v(ILandroid/view/View;)I
.end method

.method public abstract w(ILandroid/view/View;)I
.end method
