.class public Lcom/yunpan/appmanage/bean/LogcatBean;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_PATTERN:Ljava/util/regex/Pattern;

.field private static final LOG_PATTERN_LEGACY:Ljava/util/regex/Pattern;


# instance fields
.field public appName:Ljava/lang/String;

.field public level:Ljava/lang/String;

.field public log:Ljava/lang/String;

.field public msg:Ljava/lang/String;

.field public packName:Ljava/lang/String;

.field public pid:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public tid:Ljava/lang/String;

.field public time:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "(\\d{2}-\\d{2}\\s\\d{2}:\\d{2}:\\d{2}\\.\\d{3})\\s+(.+\\d+)\\s+(\\d+)\\s+([ADEIVWF])\\s+(.+?): (.*)"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/yunpan/appmanage/bean/LogcatBean;->LOG_PATTERN:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const-string v0, "(\\d{2}-\\d{2}\\s\\d{2}:\\d{2}:\\d{2}\\.\\d{3})\\s+([ADEIVWF])/([^(].+)\\(\\s*(\\d+)(?:\\*\\s*\\d+)?\\): (.*)"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/yunpan/appmanage/bean/LogcatBean;->LOG_PATTERN_LEGACY:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static matchPattern(Ljava/lang/String;Lcom/yunpan/appmanage/bean/LogcatBean;)Z
    .locals 6

    .line 1
    sget-object v0, Lcom/yunpan/appmanage/bean/LogcatBean;->LOG_PATTERN:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    iput-object v3, p1, Lcom/yunpan/appmanage/bean/LogcatBean;->time:Ljava/lang/String;

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-static {v4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    const-string v5, "\\s+"

    .line 31
    .line 32
    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    array-length v5, v4

    .line 37
    if-ne v5, v3, :cond_1

    .line 38
    .line 39
    aget-object v3, v4, v2

    .line 40
    .line 41
    iput-object v3, p1, Lcom/yunpan/appmanage/bean/LogcatBean;->pid:Ljava/lang/String;

    .line 42
    .line 43
    aget-object v3, v4, v1

    .line 44
    .line 45
    iput-object v3, p1, Lcom/yunpan/appmanage/bean/LogcatBean;->tid:Ljava/lang/String;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    aget-object v3, v4, v2

    .line 49
    .line 50
    iput-object v3, p1, Lcom/yunpan/appmanage/bean/LogcatBean;->pid:Ljava/lang/String;

    .line 51
    .line 52
    const/4 v3, 0x3

    .line 53
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    iput-object v3, p1, Lcom/yunpan/appmanage/bean/LogcatBean;->tid:Ljava/lang/String;

    .line 58
    .line 59
    :goto_0
    const-string v3, ""

    .line 60
    .line 61
    iput-object v3, p1, Lcom/yunpan/appmanage/bean/LogcatBean;->packName:Ljava/lang/String;

    .line 62
    .line 63
    iput-object v3, p1, Lcom/yunpan/appmanage/bean/LogcatBean;->appName:Ljava/lang/String;

    .line 64
    .line 65
    const/4 v3, 0x4

    .line 66
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    iput-object v2, p1, Lcom/yunpan/appmanage/bean/LogcatBean;->level:Ljava/lang/String;

    .line 82
    .line 83
    const/4 v2, 0x5

    .line 84
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    iput-object v2, p1, Lcom/yunpan/appmanage/bean/LogcatBean;->tag:Ljava/lang/String;

    .line 96
    .line 97
    const/4 v2, 0x6

    .line 98
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/LogcatBean;->msg:Ljava/lang/String;

    .line 106
    .line 107
    iput-object p0, p1, Lcom/yunpan/appmanage/bean/LogcatBean;->log:Ljava/lang/String;

    .line 108
    .line 109
    return v1
.end method

.method private static matchPatternLegacy(Ljava/lang/String;Lcom/yunpan/appmanage/bean/LogcatBean;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/yunpan/appmanage/bean/LogcatBean;->LOG_PATTERN_LEGACY:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iput-object v2, p1, Lcom/yunpan/appmanage/bean/LogcatBean;->time:Ljava/lang/String;

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iput-object v2, p1, Lcom/yunpan/appmanage/bean/LogcatBean;->level:Ljava/lang/String;

    .line 28
    .line 29
    const/4 v2, 0x3

    .line 30
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iput-object v2, p1, Lcom/yunpan/appmanage/bean/LogcatBean;->tag:Ljava/lang/String;

    .line 42
    .line 43
    const/4 v2, 0x4

    .line 44
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iput-object v2, p1, Lcom/yunpan/appmanage/bean/LogcatBean;->pid:Ljava/lang/String;

    .line 49
    .line 50
    const-string v2, ""

    .line 51
    .line 52
    iput-object v2, p1, Lcom/yunpan/appmanage/bean/LogcatBean;->packName:Ljava/lang/String;

    .line 53
    .line 54
    iput-object v2, p1, Lcom/yunpan/appmanage/bean/LogcatBean;->appName:Ljava/lang/String;

    .line 55
    .line 56
    const/4 v2, 0x5

    .line 57
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/LogcatBean;->msg:Ljava/lang/String;

    .line 62
    .line 63
    iput-object p0, p1, Lcom/yunpan/appmanage/bean/LogcatBean;->log:Ljava/lang/String;

    .line 64
    .line 65
    return v1
.end method

.method public static newLogLine(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/LogcatBean;
    .locals 2

    .line 1
    new-instance v0, Lcom/yunpan/appmanage/bean/LogcatBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yunpan/appmanage/bean/LogcatBean;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lcom/yunpan/appmanage/bean/LogcatBean;->matchPattern(Ljava/lang/String;Lcom/yunpan/appmanage/bean/LogcatBean;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    invoke-static {p0, v0}, Lcom/yunpan/appmanage/bean/LogcatBean;->matchPatternLegacy(Ljava/lang/String;Lcom/yunpan/appmanage/bean/LogcatBean;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method
