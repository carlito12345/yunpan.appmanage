.class public abstract Lrf/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[[Ljava/lang/String;

.field public static final b:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [[Ljava/lang/String;

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    new-array v2, v1, [Ljava/lang/String;

    .line 6
    .line 7
    const-string v3, "\""

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    aput-object v3, v2, v4

    .line 11
    .line 12
    const-string v3, "&quot;"

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    aput-object v3, v2, v5

    .line 16
    .line 17
    aput-object v2, v0, v4

    .line 18
    .line 19
    new-array v2, v1, [Ljava/lang/String;

    .line 20
    .line 21
    const-string v3, "&"

    .line 22
    .line 23
    aput-object v3, v2, v4

    .line 24
    .line 25
    const-string v3, "&amp;"

    .line 26
    .line 27
    aput-object v3, v2, v5

    .line 28
    .line 29
    aput-object v2, v0, v5

    .line 30
    .line 31
    new-array v2, v1, [Ljava/lang/String;

    .line 32
    .line 33
    const-string v3, "<"

    .line 34
    .line 35
    aput-object v3, v2, v4

    .line 36
    .line 37
    const-string v3, "&lt;"

    .line 38
    .line 39
    aput-object v3, v2, v5

    .line 40
    .line 41
    aput-object v2, v0, v1

    .line 42
    .line 43
    new-array v2, v1, [Ljava/lang/String;

    .line 44
    .line 45
    const-string v3, ">"

    .line 46
    .line 47
    aput-object v3, v2, v4

    .line 48
    .line 49
    const-string v3, "&gt;"

    .line 50
    .line 51
    aput-object v3, v2, v5

    .line 52
    .line 53
    const/4 v3, 0x3

    .line 54
    aput-object v2, v0, v3

    .line 55
    .line 56
    sput-object v0, Lrf/c;->a:[[Ljava/lang/String;

    .line 57
    .line 58
    new-array v0, v5, [[Ljava/lang/String;

    .line 59
    .line 60
    new-array v1, v1, [Ljava/lang/String;

    .line 61
    .line 62
    const-string v2, "\'"

    .line 63
    .line 64
    aput-object v2, v1, v4

    .line 65
    .line 66
    const-string v2, "&apos;"

    .line 67
    .line 68
    aput-object v2, v1, v5

    .line 69
    .line 70
    aput-object v1, v0, v4

    .line 71
    .line 72
    sput-object v0, Lrf/c;->b:[[Ljava/lang/String;

    .line 73
    .line 74
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


# virtual methods
.method public abstract a(ILjava/io/StringWriter;Ljava/lang/String;)I
.end method
