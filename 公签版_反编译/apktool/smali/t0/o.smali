.class public abstract Lt0/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    const-class v4, Ljava/lang/String;

    .line 6
    .line 7
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v6, 0x12

    .line 10
    .line 11
    if-lt v5, v6, :cond_0

    .line 12
    .line 13
    const/16 v6, 0x1d

    .line 14
    .line 15
    if-ge v5, v6, :cond_0

    .line 16
    .line 17
    :try_start_0
    invoke-static {}, Lb1/o;->A()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    const-string v6, "TRACE_TAG_APP"

    .line 22
    .line 23
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    const/4 v6, 0x0

    .line 28
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lb1/o;->A()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    const-string v6, "isTagEnabled"

    .line 36
    .line 37
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 38
    .line 39
    new-array v8, v3, [Ljava/lang/Class;

    .line 40
    .line 41
    aput-object v7, v8, v2

    .line 42
    .line 43
    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lb1/o;->A()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    const-string v6, "asyncTraceBegin"

    .line 51
    .line 52
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 53
    .line 54
    new-array v9, v1, [Ljava/lang/Class;

    .line 55
    .line 56
    aput-object v7, v9, v2

    .line 57
    .line 58
    aput-object v4, v9, v3

    .line 59
    .line 60
    aput-object v8, v9, v0

    .line 61
    .line 62
    invoke-virtual {v5, v6, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 63
    .line 64
    .line 65
    invoke-static {}, Lb1/o;->A()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    const-string v6, "asyncTraceEnd"

    .line 70
    .line 71
    new-array v9, v1, [Ljava/lang/Class;

    .line 72
    .line 73
    aput-object v7, v9, v2

    .line 74
    .line 75
    aput-object v4, v9, v3

    .line 76
    .line 77
    aput-object v8, v9, v0

    .line 78
    .line 79
    invoke-virtual {v5, v6, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 80
    .line 81
    .line 82
    invoke-static {}, Lb1/o;->A()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    const-string v6, "traceCounter"

    .line 87
    .line 88
    new-array v1, v1, [Ljava/lang/Class;

    .line 89
    .line 90
    aput-object v7, v1, v2

    .line 91
    .line 92
    aput-object v4, v1, v3

    .line 93
    .line 94
    aput-object v8, v1, v0

    .line 95
    .line 96
    invoke-virtual {v5, v6, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    :catch_0
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

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
    invoke-static {p0}, Lt0/n;->a(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static b()V
    .locals 2

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
    invoke-static {}, Lt0/n;->b()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
