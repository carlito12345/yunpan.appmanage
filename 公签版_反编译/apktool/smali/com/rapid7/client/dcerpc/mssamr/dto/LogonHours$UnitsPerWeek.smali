.class public final enum Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UnitsPerWeek"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;

.field public static final enum DAYS:Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;

.field public static final enum HOURS:Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;

.field public static final enum MINUTES:Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;

    .line 2
    .line 3
    const-string v1, "DAYS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;->DAYS:Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;

    .line 10
    .line 11
    new-instance v1, Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;

    .line 12
    .line 13
    const-string v3, "HOURS"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;->HOURS:Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;

    .line 20
    .line 21
    new-instance v3, Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;

    .line 22
    .line 23
    const-string v5, "MINUTES"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;->MINUTES:Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;

    .line 30
    .line 31
    const/4 v5, 0x3

    .line 32
    new-array v5, v5, [Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;

    .line 33
    .line 34
    aput-object v0, v5, v2

    .line 35
    .line 36
    aput-object v1, v5, v4

    .line 37
    .line 38
    aput-object v3, v5, v6

    .line 39
    .line 40
    sput-object v5, Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;->$VALUES:[Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;

    .line 41
    .line 42
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static fromLogonHoursLength(I)Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_2

    .line 3
    .line 4
    const/16 v1, 0x15

    .line 5
    .line 6
    if-eq p0, v1, :cond_1

    .line 7
    .line 8
    const/16 v1, 0x4ec

    .line 9
    .line 10
    if-ne p0, v1, :cond_0

    .line 11
    .line 12
    sget-object p0, Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;->MINUTES:Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    new-array v0, v0, [Ljava/lang/Object;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    aput-object p0, v0, v2

    .line 25
    .line 26
    const-string p0, "Invalid logonHours length: %d"

    .line 27
    .line 28
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v1

    .line 36
    :cond_1
    sget-object p0, Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;->HOURS:Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;

    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_2
    sget-object p0, Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;->DAYS:Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;

    .line 40
    .line 41
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;
    .locals 1

    .line 1
    const-class v0, Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;->$VALUES:[Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;

    .line 8
    .line 9
    return-object v0
.end method
