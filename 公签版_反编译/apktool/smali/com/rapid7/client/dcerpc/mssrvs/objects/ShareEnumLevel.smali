.class public final enum Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;

.field public static final enum SHARE_INFO_0_CONTAINER:Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;

.field public static final enum SHARE_INFO_1_CONTAINER:Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;

.field public static final enum SHARE_INFO_2_CONTAINER:Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;

.field public static final enum SHARE_INFO_501_CONTAINER:Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;

.field public static final enum SHARE_INFO_502_CONTAINER:Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;

.field public static final enum SHARE_INFO_503_CONTAINER:Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;


# instance fields
.field private final infoLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;

    .line 2
    .line 3
    const-string v1, "SHARE_INFO_0_CONTAINER"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;->SHARE_INFO_0_CONTAINER:Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;

    .line 10
    .line 11
    new-instance v1, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;

    .line 12
    .line 13
    const-string v3, "SHARE_INFO_1_CONTAINER"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;->SHARE_INFO_1_CONTAINER:Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;

    .line 20
    .line 21
    new-instance v3, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;

    .line 22
    .line 23
    const-string v5, "SHARE_INFO_2_CONTAINER"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;->SHARE_INFO_2_CONTAINER:Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;

    .line 30
    .line 31
    new-instance v5, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;

    .line 32
    .line 33
    const/4 v7, 0x3

    .line 34
    const/16 v8, 0x1f5

    .line 35
    .line 36
    const-string v9, "SHARE_INFO_501_CONTAINER"

    .line 37
    .line 38
    invoke-direct {v5, v9, v7, v8}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;-><init>(Ljava/lang/String;II)V

    .line 39
    .line 40
    .line 41
    sput-object v5, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;->SHARE_INFO_501_CONTAINER:Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;

    .line 42
    .line 43
    new-instance v8, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;

    .line 44
    .line 45
    const/4 v9, 0x4

    .line 46
    const/16 v10, 0x1f6

    .line 47
    .line 48
    const-string v11, "SHARE_INFO_502_CONTAINER"

    .line 49
    .line 50
    invoke-direct {v8, v11, v9, v10}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;-><init>(Ljava/lang/String;II)V

    .line 51
    .line 52
    .line 53
    sput-object v8, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;->SHARE_INFO_502_CONTAINER:Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;

    .line 54
    .line 55
    new-instance v10, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;

    .line 56
    .line 57
    const/4 v11, 0x5

    .line 58
    const/16 v12, 0x1f7

    .line 59
    .line 60
    const-string v13, "SHARE_INFO_503_CONTAINER"

    .line 61
    .line 62
    invoke-direct {v10, v13, v11, v12}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;-><init>(Ljava/lang/String;II)V

    .line 63
    .line 64
    .line 65
    sput-object v10, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;->SHARE_INFO_503_CONTAINER:Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;

    .line 66
    .line 67
    const/4 v12, 0x6

    .line 68
    new-array v12, v12, [Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;

    .line 69
    .line 70
    aput-object v0, v12, v2

    .line 71
    .line 72
    aput-object v1, v12, v4

    .line 73
    .line 74
    aput-object v3, v12, v6

    .line 75
    .line 76
    aput-object v5, v12, v7

    .line 77
    .line 78
    aput-object v8, v12, v9

    .line 79
    .line 80
    aput-object v10, v12, v11

    .line 81
    .line 82
    sput-object v12, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;->$VALUES:[Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;

    .line 83
    .line 84
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;->infoLevel:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;
    .locals 1

    .line 1
    const-class v0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;->$VALUES:[Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getInfoLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;->infoLevel:I

    .line 2
    .line 3
    return v0
.end method
