.class public final enum Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;

.field public static final enum AUTO_START:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;

.field public static final enum BOOT_START:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;

.field public static final enum DEMAND_START:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;

.field public static final enum DISABLED:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;

.field private static final MS_TYPEDMAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum NO_CHANGE:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;

.field public static final enum SYSTEM_START:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;

.field public static final enum UNKNOWN:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;


# instance fields
.field private final m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;

    .line 2
    .line 3
    const-string v1, "SYSTEM_START"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;->SYSTEM_START:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;

    .line 11
    .line 12
    new-instance v1, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;

    .line 13
    .line 14
    const-string v4, "AUTO_START"

    .line 15
    .line 16
    const/4 v5, 0x2

    .line 17
    invoke-direct {v1, v4, v3, v5}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;->AUTO_START:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;

    .line 21
    .line 22
    new-instance v4, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;

    .line 23
    .line 24
    const-string v6, "DEMAND_START"

    .line 25
    .line 26
    const/4 v7, 0x3

    .line 27
    invoke-direct {v4, v6, v5, v7}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v4, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;->DEMAND_START:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;

    .line 31
    .line 32
    new-instance v6, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;

    .line 33
    .line 34
    const-string v8, "DISABLED"

    .line 35
    .line 36
    const/4 v9, 0x4

    .line 37
    invoke-direct {v6, v8, v7, v9}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    sput-object v6, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;->DISABLED:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;

    .line 41
    .line 42
    new-instance v8, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;

    .line 43
    .line 44
    const-string v10, "BOOT_START"

    .line 45
    .line 46
    invoke-direct {v8, v10, v9, v2}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v8, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;->BOOT_START:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;

    .line 50
    .line 51
    new-instance v10, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;

    .line 52
    .line 53
    const-string v11, "NO_CHANGE"

    .line 54
    .line 55
    const/4 v12, 0x5

    .line 56
    const/4 v13, -0x1

    .line 57
    invoke-direct {v10, v11, v12, v13}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;-><init>(Ljava/lang/String;II)V

    .line 58
    .line 59
    .line 60
    sput-object v10, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;->NO_CHANGE:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;

    .line 61
    .line 62
    new-instance v11, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;

    .line 63
    .line 64
    const-string v14, "UNKNOWN"

    .line 65
    .line 66
    const/4 v15, 0x6

    .line 67
    invoke-direct {v11, v14, v15, v13}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;-><init>(Ljava/lang/String;II)V

    .line 68
    .line 69
    .line 70
    sput-object v11, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;->UNKNOWN:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;

    .line 71
    .line 72
    const/4 v13, 0x7

    .line 73
    new-array v13, v13, [Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;

    .line 74
    .line 75
    aput-object v0, v13, v2

    .line 76
    .line 77
    aput-object v1, v13, v3

    .line 78
    .line 79
    aput-object v4, v13, v5

    .line 80
    .line 81
    aput-object v6, v13, v7

    .line 82
    .line 83
    aput-object v8, v13, v9

    .line 84
    .line 85
    aput-object v10, v13, v12

    .line 86
    .line 87
    aput-object v11, v13, v15

    .line 88
    .line 89
    sput-object v13, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;->$VALUES:[Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;

    .line 90
    .line 91
    new-instance v0, Ljava/util/HashMap;

    .line 92
    .line 93
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 94
    .line 95
    .line 96
    sput-object v0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;->MS_TYPEDMAP:Ljava/util/Map;

    .line 97
    .line 98
    invoke-static {}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;->values()[Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    array-length v1, v0

    .line 103
    :goto_0
    if-ge v2, v1, :cond_0

    .line 104
    .line 105
    aget-object v4, v0, v2

    .line 106
    .line 107
    sget-object v5, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;->MS_TYPEDMAP:Ljava/util/Map;

    .line 108
    .line 109
    invoke-virtual {v4}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;->getValue()I

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    add-int/2addr v2, v3

    .line 121
    goto :goto_0

    .line 122
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
    iput p3, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;->m_value:I

    .line 5
    .line 6
    return-void
.end method

.method public static fromInt(I)Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;->MS_TYPEDMAP:Ljava/util/Map;

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
    check-cast p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;->UNKNOWN:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;

    .line 16
    .line 17
    :cond_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;
    .locals 1

    .line 1
    const-class v0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;->$VALUES:[Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;->m_value:I

    .line 2
    .line 3
    return v0
.end method
