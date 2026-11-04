.class public final enum Lwh/h;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lwh/p;


# static fields
.field public static final synthetic b:[Lwh/h;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    new-instance v2, Lwh/h;

    .line 4
    .line 5
    sget-object v3, Lsh/c;->c:Lsh/c;

    .line 6
    .line 7
    const-string v3, "WEEK_BASED_YEARS"

    .line 8
    .line 9
    const-string v4, "WeekBasedYears"

    .line 10
    .line 11
    invoke-direct {v2, v3, v1, v4}, Lwh/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v3, Lwh/h;

    .line 15
    .line 16
    const-string v4, "QuarterYears"

    .line 17
    .line 18
    const-string v5, "QUARTER_YEARS"

    .line 19
    .line 20
    invoke-direct {v3, v5, v0, v4}, Lwh/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    new-array v4, v4, [Lwh/h;

    .line 25
    .line 26
    aput-object v2, v4, v1

    .line 27
    .line 28
    aput-object v3, v4, v0

    .line 29
    .line 30
    sput-object v4, Lwh/h;->b:[Lwh/h;

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lwh/h;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lwh/h;
    .locals 1

    .line 1
    const-class v0, Lwh/h;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lwh/h;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lwh/h;
    .locals 1

    .line 1
    sget-object v0, Lwh/h;->b:[Lwh/h;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lwh/h;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lwh/h;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lwh/h;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
