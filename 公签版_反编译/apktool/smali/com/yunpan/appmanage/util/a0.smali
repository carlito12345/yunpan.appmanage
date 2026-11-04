.class public abstract Lcom/yunpan/appmanage/util/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/yunpan/appmanage/util/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yunpan/appmanage/util/b0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/yunpan/appmanage/util/b0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/yunpan/appmanage/util/a0;->a:Lcom/yunpan/appmanage/util/b0;

    .line 8
    .line 9
    return-void
.end method

.method public static A(Ljava/io/InputStream;)[B
    .locals 6

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x2000

    .line 7
    .line 8
    new-array v2, v1, [B

    .line 9
    .line 10
    :goto_0
    const/4 v3, 0x0

    .line 11
    invoke-virtual {p0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    const/4 v5, -0x1

    .line 16
    if-eq v4, v5, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public static a(ILjava/lang/String;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/16 v2, 0x72

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    :cond_0
    const/4 v1, 0x1

    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/16 v2, 0x77

    .line 17
    .line 18
    if-ne v1, v2, :cond_1

    .line 19
    .line 20
    add-int/lit8 v0, v0, 0x2

    .line 21
    .line 22
    :cond_1
    const/4 v1, 0x2

    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const/16 v1, 0x2d

    .line 28
    .line 29
    if-eq p1, v1, :cond_2

    .line 30
    .line 31
    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(C)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    :cond_2
    mul-int v0, v0, p0

    .line 40
    .line 41
    const/16 v1, 0x73

    .line 42
    .line 43
    if-eq p1, v1, :cond_5

    .line 44
    .line 45
    const/16 v1, 0x53

    .line 46
    .line 47
    if-ne p1, v1, :cond_3

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    const/16 p0, 0x74

    .line 51
    .line 52
    if-eq p1, p0, :cond_4

    .line 53
    .line 54
    const/16 p0, 0x54

    .line 55
    .line 56
    if-ne p1, p0, :cond_7

    .line 57
    .line 58
    :cond_4
    add-int/lit16 v0, v0, 0x3e8

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_5
    :goto_0
    const/16 p1, 0x64

    .line 62
    .line 63
    if-ne p0, p1, :cond_6

    .line 64
    .line 65
    const/16 p0, 0xfa0

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_6
    const/16 p0, 0x7d0

    .line 69
    .line 70
    :goto_1
    add-int/2addr v0, p0

    .line 71
    :cond_7
    :goto_2
    return v0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    .line 7
    .line 8
    .line 9
    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public static c(Ljava/io/File;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    .line 9
    .line 10
    .line 11
    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    :catch_0
    :cond_0
    return v0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->c(Ljava/io/File;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    new-instance v2, Ljava/io/File;

    .line 4
    .line 5
    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance p0, Ljava/io/File;

    .line 9
    .line 10
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string p1, "addSuppressed"

    .line 14
    .line 15
    const-class v3, Ljava/lang/Throwable;

    .line 16
    .line 17
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    .line 18
    .line 19
    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 20
    .line 21
    .line 22
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    .line 23
    .line 24
    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    .line 26
    .line 27
    const/16 p0, 0x400

    .line 28
    .line 29
    :try_start_2
    new-array p0, p0, [B

    .line 30
    .line 31
    :goto_0
    invoke-virtual {v4, p0}, Ljava/io/InputStream;->read([B)I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    const/4 v6, -0x1

    .line 36
    if-eq v5, v6, :cond_0

    .line 37
    .line 38
    invoke-virtual {v2, p0, v1, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 45
    .line 46
    .line 47
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 48
    .line 49
    .line 50
    goto :goto_5

    .line 51
    :catchall_1
    move-exception p0

    .line 52
    goto :goto_3

    .line 53
    :goto_1
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :catchall_2
    move-exception v2

    .line 58
    :try_start_6
    new-array v5, v0, [Ljava/lang/Class;

    .line 59
    .line 60
    aput-object v3, v5, v1

    .line 61
    .line 62
    invoke-virtual {v3, p1, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    new-array v6, v0, [Ljava/lang/Object;

    .line 67
    .line 68
    aput-object v2, v6, v1

    .line 69
    .line 70
    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 71
    .line 72
    .line 73
    :catch_0
    :goto_2
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 74
    :goto_3
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 75
    .line 76
    .line 77
    goto :goto_4

    .line 78
    :catchall_3
    move-exception v2

    .line 79
    :try_start_9
    new-array v4, v0, [Ljava/lang/Class;

    .line 80
    .line 81
    aput-object v3, v4, v1

    .line 82
    .line 83
    invoke-virtual {v3, p1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    new-array v0, v0, [Ljava/lang/Object;

    .line 88
    .line 89
    aput-object v2, v0, v1

    .line 90
    .line 91
    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 92
    .line 93
    .line 94
    :catch_1
    :goto_4
    :try_start_a
    throw p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 95
    :catch_2
    const/4 v0, 0x0

    .line 96
    :goto_5
    return v0
.end method

.method public static f(Ljava/io/File;)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return p0

    .line 6
    :catch_0
    const/4 p0, 0x0

    .line 7
    return p0
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->f(Ljava/io/File;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static h(Ljava/lang/String;)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/16 v2, 0x9

    .line 9
    .line 10
    if-eq v1, v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x3

    .line 14
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/16 v3, 0x64

    .line 19
    .line 20
    invoke-static {v3, v0}, Lcom/yunpan/appmanage/util/a0;->a(ILjava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v3, 0x6

    .line 25
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/16 v4, 0xa

    .line 30
    .line 31
    invoke-static {v4, v1}, Lcom/yunpan/appmanage/util/a0;->a(ILjava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const/4 v2, 0x1

    .line 40
    invoke-static {v2, p0}, Lcom/yunpan/appmanage/util/a0;->a(ILjava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    add-int/2addr v0, v1

    .line 45
    add-int/2addr v0, p0

    .line 46
    :cond_1
    :goto_0
    return v0
.end method

.method public static i(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "."

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {}, Lcom/yunpan/appmanage/util/y;->a()Ljava/util/HashMap;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Ljava/lang/String;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const-string p0, "*/*"

    .line 57
    .line 58
    :goto_0
    return-object p0
.end method

.method public static j(Ljava/lang/String;)J
    .locals 5

    .line 1
    new-instance v0, Landroid/os/StatFs;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x12

    .line 9
    .line 10
    if-lt p0, v1, :cond_0

    .line 11
    .line 12
    invoke-static {v0}, Lb1/o;->s(Landroid/os/StatFs;)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    return-wide v0

    .line 17
    :cond_0
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    int-to-long v1, p0

    .line 22
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    int-to-long v3, p0

    .line 27
    mul-long v1, v1, v3

    .line 28
    .line 29
    return-wide v1
.end method

.method public static k(Ljava/lang/String;)J
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x12

    .line 9
    .line 10
    if-lt p0, v1, :cond_0

    .line 11
    .line 12
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 13
    .line 14
    invoke-static {v0}, Lb1/o;->m(Landroid/os/StatFs;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lb1/o;->v(Landroid/os/StatFs;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lb1/o;->y(Landroid/os/StatFs;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    invoke-static {v0}, Lb1/o;->B(Landroid/os/StatFs;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    mul-long v1, v1, v3

    .line 32
    .line 33
    return-wide v1

    .line 34
    :cond_0
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    int-to-long v1, p0

    .line 39
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    .line 40
    .line 41
    .line 42
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    int-to-long v3, p0

    .line 44
    mul-long v1, v1, v3

    .line 45
    .line 46
    return-wide v1

    .line 47
    :catch_0
    const-wide/16 v0, 0x0

    .line 48
    .line 49
    return-wide v0
.end method

.method public static l(Lcom/yunpan/appmanage/base/AppStart;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/hjq/toast/Toaster;->init(Landroid/app/Application;)V

    .line 2
    .line 3
    .line 4
    const p0, 0x7f0e0208

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lcom/hjq/toast/Toaster;->setView(I)V

    .line 8
    .line 9
    .line 10
    const/16 p0, 0x11

    .line 11
    .line 12
    invoke-static {p0}, Lcom/hjq/toast/Toaster;->setGravity(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    :catch_0
    return-void
.end method

.method public static m(Ljava/lang/String;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    .line 4
    .line 5
    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    .line 9
    .line 10
    .line 11
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-eqz v4, :cond_2

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 25
    .line 26
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const-string v5, ".dex"

    .line 31
    .line 32
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_1

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const-string v5, "anifest.xml"

    .line 41
    .line 42
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    const/4 v3, 0x1

    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :catch_1
    move-exception p0

    .line 53
    const/4 v2, 0x0

    .line 54
    const/4 v3, 0x0

    .line 55
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 56
    .line 57
    .line 58
    :cond_2
    if-eqz v2, :cond_3

    .line 59
    .line 60
    if-eqz v3, :cond_3

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    const/4 v0, 0x0

    .line 64
    :goto_2
    return v0
.end method

.method public static n(Ljava/io/File;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length v0, p0

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v0, :cond_2

    .line 9
    .line 10
    aget-object v3, p0, v2

    .line 11
    .line 12
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const/4 v5, 0x1

    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const-string v4, "dex"

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    return v5

    .line 36
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    invoke-static {v3}, Lcom/yunpan/appmanage/util/a0;->n(Ljava/io/File;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    return v5

    .line 49
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    return v1
.end method

.method public static o()Z
    .locals 1

    .line 1
    const-string v0, "/system/bin/cmd"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static p(Ljava/io/File;)J
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-wide v0

    .line 6
    :catch_0
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    return-wide v0
.end method

.method public static q(Ljava/lang/String;[B)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    .line 4
    .line 5
    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    .line 10
    .line 11
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p0

    .line 16
    goto :goto_1

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_1
    move-exception p1

    .line 23
    :try_start_4
    const-class v2, Ljava/lang/Throwable;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 24
    .line 25
    :try_start_5
    const-string v3, "addSuppressed"

    .line 26
    .line 27
    new-array v4, v1, [Ljava/lang/Class;

    .line 28
    .line 29
    aput-object v2, v4, v0

    .line 30
    .line 31
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    new-array v1, v1, [Ljava/lang/Object;

    .line 36
    .line 37
    aput-object p1, v1, v0

    .line 38
    .line 39
    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 40
    .line 41
    .line 42
    :catch_1
    :goto_0
    :try_start_6
    throw p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 43
    :goto_1
    new-instance p1, Ljava/lang/Exception;

    .line 44
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v1, "saveBytesToFile  "

    .line 48
    .line 49
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p0, v0}, Lg/b;->z(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1
.end method

.method public static r(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static s(Ljava/lang/CharSequence;Z)V
    .locals 2

    .line 1
    new-instance v0, Lcom/hjq/toast/ToastParams;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hjq/toast/ToastParams;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/hjq/toast/ToastParams;->text:Ljava/lang/CharSequence;

    .line 7
    .line 8
    new-instance p0, Lcom/hjq/toast/style/CustomToastStyle;

    .line 9
    .line 10
    const v1, 0x7f0e0209

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v1}, Lcom/hjq/toast/style/CustomToastStyle;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object p0, v0, Lcom/hjq/toast/ToastParams;->style:Lcom/hjq/toast/config/IToastStyle;

    .line 17
    .line 18
    xor-int/lit8 p0, p1, 0x1

    .line 19
    .line 20
    iput p0, v0, Lcom/hjq/toast/ToastParams;->duration:I

    .line 21
    .line 22
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Lcom/hjq/toast/ToastParams;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static t(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/hjq/toast/ToastParams;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hjq/toast/ToastParams;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/hjq/toast/ToastParams;->text:Ljava/lang/CharSequence;

    .line 7
    .line 8
    new-instance v1, Lcom/hjq/toast/style/CustomToastStyle;

    .line 9
    .line 10
    const v2, 0x7f0e0209

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/hjq/toast/style/CustomToastStyle;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object v1, v0, Lcom/hjq/toast/ToastParams;->style:Lcom/hjq/toast/config/IToastStyle;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    const/16 v1, 0xc

    .line 23
    .line 24
    if-ge p0, v1, :cond_0

    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x1

    .line 29
    :goto_0
    iput p0, v0, Lcom/hjq/toast/ToastParams;->duration:I

    .line 30
    .line 31
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Lcom/hjq/toast/ToastParams;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static u(Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/hjq/toast/ToastParams;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hjq/toast/ToastParams;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/hjq/toast/ToastParams;->text:Ljava/lang/CharSequence;

    .line 7
    .line 8
    new-instance v1, Lcom/hjq/toast/style/CustomToastStyle;

    .line 9
    .line 10
    const v2, 0x7f0e020a

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/hjq/toast/style/CustomToastStyle;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object v1, v0, Lcom/hjq/toast/ToastParams;->style:Lcom/hjq/toast/config/IToastStyle;

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    const/16 v1, 0xc

    .line 23
    .line 24
    if-ge p0, v1, :cond_0

    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x1

    .line 29
    :goto_0
    iput p0, v0, Lcom/hjq/toast/ToastParams;->duration:I

    .line 30
    .line 31
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Lcom/hjq/toast/ToastParams;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static v(Ljava/lang/CharSequence;Z)V
    .locals 2

    .line 1
    new-instance v0, Lcom/hjq/toast/ToastParams;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hjq/toast/ToastParams;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/hjq/toast/ToastParams;->text:Ljava/lang/CharSequence;

    .line 7
    .line 8
    new-instance p0, Lcom/hjq/toast/style/CustomToastStyle;

    .line 9
    .line 10
    const v1, 0x7f0e020b

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v1}, Lcom/hjq/toast/style/CustomToastStyle;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object p0, v0, Lcom/hjq/toast/ToastParams;->style:Lcom/hjq/toast/config/IToastStyle;

    .line 17
    .line 18
    xor-int/lit8 p0, p1, 0x1

    .line 19
    .line 20
    iput p0, v0, Lcom/hjq/toast/ToastParams;->duration:I

    .line 21
    .line 22
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Lcom/hjq/toast/ToastParams;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/hjq/toast/ToastParams;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hjq/toast/ToastParams;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/hjq/toast/ToastParams;->text:Ljava/lang/CharSequence;

    .line 7
    .line 8
    new-instance v1, Lcom/hjq/toast/style/CustomToastStyle;

    .line 9
    .line 10
    const v2, 0x7f0e020b

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/hjq/toast/style/CustomToastStyle;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object v1, v0, Lcom/hjq/toast/ToastParams;->style:Lcom/hjq/toast/config/IToastStyle;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    const/16 v1, 0xc

    .line 23
    .line 24
    if-ge p0, v1, :cond_0

    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x1

    .line 29
    :goto_0
    iput p0, v0, Lcom/hjq/toast/ToastParams;->duration:I

    .line 30
    .line 31
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Lcom/hjq/toast/ToastParams;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static x(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/hjq/toast/ToastParams;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hjq/toast/ToastParams;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/hjq/toast/ToastParams;->text:Ljava/lang/CharSequence;

    .line 7
    .line 8
    new-instance v1, Lcom/hjq/toast/style/CustomToastStyle;

    .line 9
    .line 10
    const v2, 0x7f0e020c

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/hjq/toast/style/CustomToastStyle;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object v1, v0, Lcom/hjq/toast/ToastParams;->style:Lcom/hjq/toast/config/IToastStyle;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    const/16 v1, 0xc

    .line 23
    .line 24
    if-ge p0, v1, :cond_0

    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x1

    .line 29
    :goto_0
    iput p0, v0, Lcom/hjq/toast/ToastParams;->duration:I

    .line 30
    .line 31
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Lcom/hjq/toast/ToastParams;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static y(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/hjq/toast/ToastParams;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hjq/toast/ToastParams;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/hjq/toast/ToastParams;->text:Ljava/lang/CharSequence;

    .line 7
    .line 8
    new-instance v1, Lcom/hjq/toast/style/CustomToastStyle;

    .line 9
    .line 10
    const v2, 0x7f0e020d

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/hjq/toast/style/CustomToastStyle;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object v1, v0, Lcom/hjq/toast/ToastParams;->style:Lcom/hjq/toast/config/IToastStyle;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    const/16 v1, 0xc

    .line 23
    .line 24
    if-ge p0, v1, :cond_0

    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x1

    .line 29
    :goto_0
    iput p0, v0, Lcom/hjq/toast/ToastParams;->duration:I

    .line 30
    .line 31
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Lcom/hjq/toast/ToastParams;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static z(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    new-instance v0, Lcom/hjq/toast/ToastParams;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hjq/toast/ToastParams;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/hjq/toast/ToastParams;->text:Ljava/lang/CharSequence;

    .line 7
    .line 8
    new-instance p0, Lcom/hjq/toast/style/CustomToastStyle;

    .line 9
    .line 10
    const v1, 0x7f0e020d

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v1}, Lcom/hjq/toast/style/CustomToastStyle;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object p0, v0, Lcom/hjq/toast/ToastParams;->style:Lcom/hjq/toast/config/IToastStyle;

    .line 17
    .line 18
    xor-int/lit8 p0, p1, 0x1

    .line 19
    .line 20
    iput p0, v0, Lcom/hjq/toast/ToastParams;->duration:I

    .line 21
    .line 22
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Lcom/hjq/toast/ToastParams;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
