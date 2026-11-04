.class public final enum Lmb/m;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:Lmb/m;

.field public static final enum d:Lmb/m;

.field public static final enum e:Lmb/m;

.field public static final enum f:Lmb/m;

.field public static final synthetic g:[Lmb/m;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lmb/m;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, ""

    .line 5
    .line 6
    const-string v3, "NONE"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lmb/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lmb/m;->c:Lmb/m;

    .line 12
    .line 13
    new-instance v2, Lmb/m;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    const-string v4, "\n"

    .line 17
    .line 18
    const-string v5, "LF"

    .line 19
    .line 20
    invoke-direct {v2, v5, v3, v4}, Lmb/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v2, Lmb/m;->d:Lmb/m;

    .line 24
    .line 25
    new-instance v4, Lmb/m;

    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    const-string v6, "\r"

    .line 29
    .line 30
    const-string v7, "CR"

    .line 31
    .line 32
    invoke-direct {v4, v7, v5, v6}, Lmb/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v4, Lmb/m;->e:Lmb/m;

    .line 36
    .line 37
    new-instance v6, Lmb/m;

    .line 38
    .line 39
    const/4 v7, 0x3

    .line 40
    const-string v8, "\r\n"

    .line 41
    .line 42
    const-string v9, "CRLF"

    .line 43
    .line 44
    invoke-direct {v6, v9, v7, v8}, Lmb/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v6, Lmb/m;->f:Lmb/m;

    .line 48
    .line 49
    const/4 v8, 0x4

    .line 50
    new-array v8, v8, [Lmb/m;

    .line 51
    .line 52
    aput-object v0, v8, v1

    .line 53
    .line 54
    aput-object v2, v8, v3

    .line 55
    .line 56
    aput-object v4, v8, v5

    .line 57
    .line 58
    aput-object v6, v8, v7

    .line 59
    .line 60
    sput-object v8, Lmb/m;->g:[Lmb/m;

    .line 61
    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lmb/m;->a:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput p1, p0, Lmb/m;->b:I

    .line 11
    .line 12
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmb/m;
    .locals 1

    .line 1
    const-class v0, Lmb/m;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lmb/m;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lmb/m;
    .locals 1

    .line 1
    sget-object v0, Lmb/m;->g:[Lmb/m;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lmb/m;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lmb/m;

    .line 8
    .line 9
    return-object v0
.end method
