.class public final enum Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;

.field public static final enum CRITICAL:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;

.field public static final enum IGNORE:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;

.field private static final MS_TYPEDMAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum NORMAL:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;

.field public static final enum NO_CHANGE:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;

.field public static final enum SEVERE:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;

.field public static final enum UNKNOWN:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;


# instance fields
.field private final m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;

    .line 2
    .line 3
    const-string v1, "IGNORE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;->IGNORE:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;

    .line 10
    .line 11
    new-instance v1, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;

    .line 12
    .line 13
    const-string v3, "NORMAL"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;->NORMAL:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;

    .line 20
    .line 21
    new-instance v3, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;

    .line 22
    .line 23
    const-string v5, "SEVERE"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;->SEVERE:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;

    .line 30
    .line 31
    new-instance v5, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;

    .line 32
    .line 33
    const-string v7, "CRITICAL"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v8}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;->CRITICAL:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;

    .line 40
    .line 41
    new-instance v7, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;

    .line 42
    .line 43
    const-string v9, "NO_CHANGE"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    const/4 v11, -0x1

    .line 47
    invoke-direct {v7, v9, v10, v11}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;-><init>(Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    sput-object v7, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;->NO_CHANGE:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;

    .line 51
    .line 52
    new-instance v9, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;

    .line 53
    .line 54
    const-string v12, "UNKNOWN"

    .line 55
    .line 56
    const/4 v13, 0x5

    .line 57
    invoke-direct {v9, v12, v13, v11}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;-><init>(Ljava/lang/String;II)V

    .line 58
    .line 59
    .line 60
    sput-object v9, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;->UNKNOWN:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;

    .line 61
    .line 62
    const/4 v11, 0x6

    .line 63
    new-array v11, v11, [Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;

    .line 64
    .line 65
    aput-object v0, v11, v2

    .line 66
    .line 67
    aput-object v1, v11, v4

    .line 68
    .line 69
    aput-object v3, v11, v6

    .line 70
    .line 71
    aput-object v5, v11, v8

    .line 72
    .line 73
    aput-object v7, v11, v10

    .line 74
    .line 75
    aput-object v9, v11, v13

    .line 76
    .line 77
    sput-object v11, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;->$VALUES:[Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;

    .line 78
    .line 79
    new-instance v0, Ljava/util/HashMap;

    .line 80
    .line 81
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 82
    .line 83
    .line 84
    sput-object v0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;->MS_TYPEDMAP:Ljava/util/Map;

    .line 85
    .line 86
    invoke-static {}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;->values()[Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    array-length v1, v0

    .line 91
    :goto_0
    if-ge v2, v1, :cond_0

    .line 92
    .line 93
    aget-object v3, v0, v2

    .line 94
    .line 95
    sget-object v5, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;->MS_TYPEDMAP:Ljava/util/Map;

    .line 96
    .line 97
    invoke-virtual {v3}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;->getValue()I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    add-int/2addr v2, v4

    .line 109
    goto :goto_0

    .line 110
    :cond_0
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
    iput p3, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;->m_value:I

    .line 5
    .line 6
    return-void
.end method

.method public static fromInt(I)Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;->MS_TYPEDMAP:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;->UNKNOWN:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;

    .line 16
    .line 17
    :cond_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;
    .locals 1

    .line 1
    const-class v0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;->$VALUES:[Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;->m_value:I

    .line 2
    .line 3
    return v0
.end method
