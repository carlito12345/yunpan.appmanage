.class public final enum Luh/j;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Luh/e;


# static fields
.field public static final enum a:Luh/j;

.field public static final enum b:Luh/j;

.field public static final enum c:Luh/j;

.field public static final synthetic d:[Luh/j;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Luh/j;

    .line 2
    .line 3
    const-string v1, "SENSITIVE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Luh/j;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Luh/j;->a:Luh/j;

    .line 10
    .line 11
    new-instance v1, Luh/j;

    .line 12
    .line 13
    const-string v3, "INSENSITIVE"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Luh/j;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Luh/j;->b:Luh/j;

    .line 20
    .line 21
    new-instance v3, Luh/j;

    .line 22
    .line 23
    const-string v5, "STRICT"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Luh/j;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    new-instance v5, Luh/j;

    .line 30
    .line 31
    const-string v7, "LENIENT"

    .line 32
    .line 33
    const/4 v8, 0x3

    .line 34
    invoke-direct {v5, v7, v8}, Luh/j;-><init>(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    sput-object v5, Luh/j;->c:Luh/j;

    .line 38
    .line 39
    const/4 v7, 0x4

    .line 40
    new-array v7, v7, [Luh/j;

    .line 41
    .line 42
    aput-object v0, v7, v2

    .line 43
    .line 44
    aput-object v1, v7, v4

    .line 45
    .line 46
    aput-object v3, v7, v6

    .line 47
    .line 48
    aput-object v5, v7, v8

    .line 49
    .line 50
    sput-object v7, Luh/j;->d:[Luh/j;

    .line 51
    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Luh/j;
    .locals 1

    .line 1
    const-class v0, Luh/j;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Luh/j;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Luh/j;
    .locals 1

    .line 1
    sget-object v0, Luh/j;->d:[Luh/j;

    .line 2
    .line 3
    invoke-virtual {v0}, [Luh/j;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Luh/j;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final a(Landroidx/room/s;Ljava/lang/StringBuilder;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    const-string v0, "ParseStrict(false)"

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v1, "Unreachable"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0

    .line 27
    :cond_1
    const-string v0, "ParseStrict(true)"

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_2
    const-string v0, "ParseCaseSensitive(false)"

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_3
    const-string v0, "ParseCaseSensitive(true)"

    .line 34
    .line 35
    return-object v0
.end method
