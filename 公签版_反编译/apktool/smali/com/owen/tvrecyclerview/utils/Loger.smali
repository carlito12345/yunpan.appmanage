.class public Lcom/owen/tvrecyclerview/utils/Loger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final customTagPrefix:Ljava/lang/String; = "[TVRV_LOG]"

.field public static isDebug:Z = false


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-boolean p0, Lcom/owen/tvrecyclerview/utils/Loger;->isDebug:Z

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/owen/tvrecyclerview/utils/Loger;->generateTag()Ljava/lang/String;

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    sget-boolean p0, Lcom/owen/tvrecyclerview/utils/Loger;->isDebug:Z

    if-nez p0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/owen/tvrecyclerview/utils/Loger;->generateTag()Ljava/lang/String;

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-boolean p0, Lcom/owen/tvrecyclerview/utils/Loger;->isDebug:Z

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/owen/tvrecyclerview/utils/Loger;->generateTag()Ljava/lang/String;

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    sget-boolean p0, Lcom/owen/tvrecyclerview/utils/Loger;->isDebug:Z

    if-nez p0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/owen/tvrecyclerview/utils/Loger;->generateTag()Ljava/lang/String;

    return-void
.end method

.method private static generateTag()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/Throwable;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x2

    .line 11
    aget-object v0, v0, v1

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, "."

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x1

    .line 24
    add-int/2addr v3, v4

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v5, 0x3

    .line 42
    new-array v5, v5, [Ljava/lang/Object;

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    aput-object v2, v5, v6

    .line 46
    .line 47
    aput-object v3, v5, v4

    .line 48
    .line 49
    aput-object v0, v5, v1

    .line 50
    .line 51
    const-string v0, "%s.%s(L:%d)"

    .line 52
    .line 53
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string v1, "[TVRV_LOG]"

    .line 58
    .line 59
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_0

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const-string v1, "[TVRV_LOG]:"

    .line 67
    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    :goto_0
    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-boolean p0, Lcom/owen/tvrecyclerview/utils/Loger;->isDebug:Z

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/owen/tvrecyclerview/utils/Loger;->generateTag()Ljava/lang/String;

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    sget-boolean p0, Lcom/owen/tvrecyclerview/utils/Loger;->isDebug:Z

    if-nez p0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/owen/tvrecyclerview/utils/Loger;->generateTag()Ljava/lang/String;

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-boolean p0, Lcom/owen/tvrecyclerview/utils/Loger;->isDebug:Z

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/owen/tvrecyclerview/utils/Loger;->generateTag()Ljava/lang/String;

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    sget-boolean p0, Lcom/owen/tvrecyclerview/utils/Loger;->isDebug:Z

    if-nez p0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/owen/tvrecyclerview/utils/Loger;->generateTag()Ljava/lang/String;

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-boolean p0, Lcom/owen/tvrecyclerview/utils/Loger;->isDebug:Z

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/owen/tvrecyclerview/utils/Loger;->generateTag()Ljava/lang/String;

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    sget-boolean p0, Lcom/owen/tvrecyclerview/utils/Loger;->isDebug:Z

    if-nez p0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/owen/tvrecyclerview/utils/Loger;->generateTag()Ljava/lang/String;

    return-void
.end method

.method public static w(Ljava/lang/Throwable;)V
    .locals 0

    .line 5
    sget-boolean p0, Lcom/owen/tvrecyclerview/utils/Loger;->isDebug:Z

    if-nez p0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/owen/tvrecyclerview/utils/Loger;->generateTag()Ljava/lang/String;

    return-void
.end method

.method public static wtf(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/owen/tvrecyclerview/utils/Loger;->isDebug:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/owen/tvrecyclerview/utils/Loger;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 4
    sget-boolean v0, Lcom/owen/tvrecyclerview/utils/Loger;->isDebug:Z

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/owen/tvrecyclerview/utils/Loger;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0, p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static wtf(Ljava/lang/Throwable;)V
    .locals 1

    .line 7
    sget-boolean v0, Lcom/owen/tvrecyclerview/utils/Loger;->isDebug:Z

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/owen/tvrecyclerview/utils/Loger;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
