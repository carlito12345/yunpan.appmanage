.class public final Lp0/i;
.super Ll5/y;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/Class;

.field public static final d:Ljava/lang/reflect/Constructor;

.field public static final e:Ljava/lang/reflect/Method;

.field public static final f:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_0
    const-string v3, "android.graphics.FontFamily"

    .line 5
    .line 6
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    invoke-virtual {v3, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    const-string v5, "addFontWeightStyle"

    .line 15
    .line 16
    const/4 v6, 0x5

    .line 17
    new-array v6, v6, [Ljava/lang/Class;

    .line 18
    .line 19
    const-class v7, Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    aput-object v7, v6, v0

    .line 22
    .line 23
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 24
    .line 25
    aput-object v7, v6, v1

    .line 26
    .line 27
    const-class v8, Ljava/util/List;

    .line 28
    .line 29
    const/4 v9, 0x2

    .line 30
    aput-object v8, v6, v9

    .line 31
    .line 32
    const/4 v8, 0x3

    .line 33
    aput-object v7, v6, v8

    .line 34
    .line 35
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 36
    .line 37
    const/4 v8, 0x4

    .line 38
    aput-object v7, v6, v8

    .line 39
    .line 40
    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    const-class v7, Landroid/graphics/Typeface;

    .line 49
    .line 50
    const-string v8, "createFromFamiliesWithDefault"

    .line 51
    .line 52
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    new-array v1, v1, [Ljava/lang/Class;

    .line 57
    .line 58
    aput-object v6, v1, v0

    .line 59
    .line 60
    invoke-virtual {v7, v8, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 61
    .line 62
    .line 63
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    move-object v0, v2

    .line 65
    move-object v2, v4

    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-object v0, v2

    .line 68
    move-object v3, v0

    .line 69
    move-object v5, v3

    .line 70
    :goto_0
    sput-object v2, Lp0/i;->d:Ljava/lang/reflect/Constructor;

    .line 71
    .line 72
    sput-object v3, Lp0/i;->c:Ljava/lang/Class;

    .line 73
    .line 74
    sput-object v5, Lp0/i;->e:Ljava/lang/reflect/Method;

    .line 75
    .line 76
    sput-object v0, Lp0/i;->f:Ljava/lang/reflect/Method;

    .line 77
    .line 78
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v1, v0}, Ll5/y;-><init>(BI)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static O(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lp0/i;->e:Ljava/lang/reflect/Method;

    .line 3
    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object p4

    .line 16
    const/4 v2, 0x5

    .line 17
    new-array v2, v2, [Ljava/lang/Object;

    .line 18
    .line 19
    aput-object p1, v2, v0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    aput-object p2, v2, p1

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    const/4 p2, 0x2

    .line 26
    aput-object p1, v2, p2

    .line 27
    .line 28
    const/4 p1, 0x3

    .line 29
    aput-object p3, v2, p1

    .line 30
    .line 31
    const/4 p1, 0x4

    .line 32
    aput-object p4, v2, p1

    .line 33
    .line 34
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    return p0

    .line 45
    :catch_0
    return v0
.end method

.method public static P(Ljava/lang/Object;)Landroid/graphics/Typeface;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_0
    sget-object v3, Lp0/i;->c:Ljava/lang/Class;

    .line 5
    .line 6
    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    invoke-static {v3, v0, p0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lp0/i;->f:Ljava/lang/reflect/Method;

    .line 14
    .line 15
    new-array v1, v1, [Ljava/lang/Object;

    .line 16
    .line 17
    aput-object v3, v1, v0

    .line 18
    .line 19
    invoke-virtual {p0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    return-object p0

    .line 26
    :catch_0
    return-object v2
.end method


# virtual methods
.method public final u(Landroid/content/Context;Lo0/f;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .locals 7

    .line 1
    const/4 p4, 0x0

    .line 2
    :try_start_0
    sget-object v0, Lp0/i;->d:Ljava/lang/reflect/Constructor;

    .line 3
    .line 4
    invoke-virtual {v0, p4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    nop

    .line 10
    move-object v0, p4

    .line 11
    :goto_0
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-object p4

    .line 14
    :cond_0
    iget-object p2, p2, Lo0/f;->a:[Lo0/g;

    .line 15
    .line 16
    array-length v1, p2

    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_1
    if-ge v2, v1, :cond_5

    .line 19
    .line 20
    aget-object v3, p2, v2

    .line 21
    .line 22
    iget v4, v3, Lo0/g;->f:I

    .line 23
    .line 24
    invoke-static {p1}, Lnh/b;->L(Landroid/content/Context;)Ljava/io/File;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    if-nez v5, :cond_1

    .line 29
    .line 30
    :goto_2
    move-object v4, p4

    .line 31
    goto :goto_3

    .line 32
    :cond_1
    :try_start_1
    invoke-static {v5, p3, v4}, Lnh/b;->n(Ljava/io/File;Landroid/content/res/Resources;I)Z

    .line 33
    .line 34
    .line 35
    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    if-nez v4, :cond_2

    .line 37
    .line 38
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    :try_start_2
    invoke-static {v5}, Lnh/b;->a0(Ljava/io/File;)Ljava/nio/MappedByteBuffer;

    .line 43
    .line 44
    .line 45
    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 47
    .line 48
    .line 49
    :goto_3
    if-nez v4, :cond_3

    .line 50
    .line 51
    return-object p4

    .line 52
    :cond_3
    iget v5, v3, Lo0/g;->b:I

    .line 53
    .line 54
    iget-boolean v6, v3, Lo0/g;->c:Z

    .line 55
    .line 56
    iget v3, v3, Lo0/g;->e:I

    .line 57
    .line 58
    invoke-static {v0, v4, v3, v5, v6}, Lp0/i;->O(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-nez v3, :cond_4

    .line 63
    .line 64
    return-object p4

    .line 65
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 70
    .line 71
    .line 72
    throw p1

    .line 73
    :cond_5
    invoke-static {v0}, Lp0/i;->P(Ljava/lang/Object;)Landroid/graphics/Typeface;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    return-object p1
.end method

.method public final v(Landroid/content/Context;[Lu0/g;I)Landroid/graphics/Typeface;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lp0/i;->d:Ljava/lang/reflect/Constructor;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    nop

    .line 10
    move-object v1, v0

    .line 11
    :goto_0
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    new-instance v2, La0/t;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-direct {v2, v3}, La0/t;-><init>(I)V

    .line 18
    .line 19
    .line 20
    array-length v4, p2

    .line 21
    :goto_1
    if-ge v3, v4, :cond_4

    .line 22
    .line 23
    aget-object v5, p2, v3

    .line 24
    .line 25
    iget-object v6, v5, Lu0/g;->a:Landroid/net/Uri;

    .line 26
    .line 27
    invoke-virtual {v2, v6}, La0/t;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    check-cast v7, Ljava/nio/ByteBuffer;

    .line 32
    .line 33
    if-nez v7, :cond_1

    .line 34
    .line 35
    invoke-static {p1, v6}, Lnh/b;->Z(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/MappedByteBuffer;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    invoke-virtual {v2, v6, v7}, La0/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    :cond_1
    if-nez v7, :cond_2

    .line 43
    .line 44
    return-object v0

    .line 45
    :cond_2
    iget v6, v5, Lu0/g;->c:I

    .line 46
    .line 47
    iget-boolean v8, v5, Lu0/g;->d:Z

    .line 48
    .line 49
    iget v5, v5, Lu0/g;->b:I

    .line 50
    .line 51
    invoke-static {v1, v7, v5, v6, v8}, Lp0/i;->O(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-nez v5, :cond_3

    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_4
    invoke-static {v1}, Lp0/i;->P(Ljava/lang/Object;)Landroid/graphics/Typeface;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-nez p1, :cond_5

    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_5
    invoke-static {p1, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    return-object p1
.end method
