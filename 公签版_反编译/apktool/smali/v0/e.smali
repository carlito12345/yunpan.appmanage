.class public abstract Lv0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/reflect/Method;

.field public static final b:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-class v2, Ljava/lang/String;

    .line 4
    .line 5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v4, 0x15

    .line 8
    .line 9
    const-string v5, "addLikelySubtags"

    .line 10
    .line 11
    const-string v6, "libcore.icu.ICU"

    .line 12
    .line 13
    if-ge v3, v4, :cond_0

    .line 14
    .line 15
    :try_start_0
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const-string v4, "getScript"

    .line 20
    .line 21
    new-array v6, v1, [Ljava/lang/Class;

    .line 22
    .line 23
    aput-object v2, v6, v0

    .line 24
    .line 25
    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    sput-object v4, Lv0/e;->a:Ljava/lang/reflect/Method;

    .line 30
    .line 31
    new-array v1, v1, [Ljava/lang/Class;

    .line 32
    .line 33
    aput-object v2, v1, v0

    .line 34
    .line 35
    invoke-virtual {v3, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lv0/e;->b:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    const/4 v0, 0x0

    .line 43
    sput-object v0, Lv0/e;->a:Ljava/lang/reflect/Method;

    .line 44
    .line 45
    sput-object v0, Lv0/e;->b:Ljava/lang/reflect/Method;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/16 v2, 0x18

    .line 49
    .line 50
    if-ge v3, v2, :cond_1

    .line 51
    .line 52
    :try_start_1
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    new-array v1, v1, [Ljava/lang/Class;

    .line 57
    .line 58
    const-class v3, Ljava/util/Locale;

    .line 59
    .line 60
    aput-object v3, v1, v0

    .line 61
    .line 62
    invoke-virtual {v2, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    sput-object v0, Lv0/e;->b:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catch_1
    move-exception v0

    .line 70
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    throw v1

    .line 76
    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Ljava/util/Locale;)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v3, 0x18

    .line 6
    .line 7
    if-lt v2, v3, :cond_0

    .line 8
    .line 9
    invoke-static {p0}, Lv0/d;->b(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Lv0/d;->a(Ljava/lang/Object;)Landroid/icu/util/ULocale;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Lv0/d;->c(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    const/16 v3, 0x15

    .line 23
    .line 24
    sget-object v4, Lv0/e;->b:Ljava/lang/reflect/Method;

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    if-lt v2, v3, :cond_1

    .line 28
    .line 29
    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 30
    .line 31
    aput-object p0, v1, v0

    .line 32
    .line 33
    invoke-virtual {v4, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/util/Locale;

    .line 38
    .line 39
    invoke-static {v0}, Lv0/c;->a(Ljava/util/Locale;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    return-object p0

    .line 44
    :catch_0
    invoke-static {p0}, Lv0/c;->a(Ljava/util/Locale;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :cond_1
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    if-eqz v4, :cond_2

    .line 54
    .line 55
    :try_start_1
    new-array v2, v1, [Ljava/lang/Object;

    .line 56
    .line 57
    aput-object p0, v2, v0

    .line 58
    .line 59
    invoke-virtual {v4, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    .line 65
    move-object p0, v2

    .line 66
    goto :goto_0

    .line 67
    :catch_1
    nop

    .line 68
    :cond_2
    :goto_0
    if-eqz p0, :cond_3

    .line 69
    .line 70
    :try_start_2
    sget-object v2, Lv0/e;->a:Ljava/lang/reflect/Method;

    .line 71
    .line 72
    if-eqz v2, :cond_3

    .line 73
    .line 74
    new-array v1, v1, [Ljava/lang/Object;

    .line 75
    .line 76
    aput-object p0, v1, v0

    .line 77
    .line 78
    invoke-virtual {v2, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    check-cast p0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    .line 83
    .line 84
    move-object v5, p0

    .line 85
    :catch_2
    :cond_3
    return-object v5
.end method
