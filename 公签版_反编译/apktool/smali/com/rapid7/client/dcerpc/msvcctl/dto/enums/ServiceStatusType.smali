.class public final enum Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

.field public static final enum ACCESS_MASK:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

.field private static final MS_TYPEDMAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum SERVICE_CONTINUE_PENDING:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

.field public static final enum SERVICE_PAUSED:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

.field public static final enum SERVICE_PAUSE_PENDING:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

.field public static final enum SERVICE_RUNNING:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

.field public static final enum SERVICE_START_PENDING:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

.field public static final enum SERVICE_STOPPED:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

.field public static final enum SERVICE_STOP_PENDING:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

.field public static final enum UNKNOWN:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;


# instance fields
.field private final m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

    .line 2
    .line 3
    const-string v1, "SERVICE_PAUSED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x7

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;->SERVICE_PAUSED:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

    .line 11
    .line 12
    new-instance v1, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

    .line 13
    .line 14
    const-string v4, "SERVICE_RUNNING"

    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    const/4 v6, 0x4

    .line 18
    invoke-direct {v1, v4, v5, v6}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;-><init>(Ljava/lang/String;II)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;->SERVICE_RUNNING:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

    .line 22
    .line 23
    new-instance v4, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

    .line 24
    .line 25
    const-string v7, "SERVICE_STOPPED"

    .line 26
    .line 27
    const/4 v8, 0x2

    .line 28
    invoke-direct {v4, v7, v8, v5}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;-><init>(Ljava/lang/String;II)V

    .line 29
    .line 30
    .line 31
    sput-object v4, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;->SERVICE_STOPPED:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

    .line 32
    .line 33
    new-instance v7, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

    .line 34
    .line 35
    const-string v9, "SERVICE_CONTINUE_PENDING"

    .line 36
    .line 37
    const/4 v10, 0x3

    .line 38
    const/4 v11, 0x5

    .line 39
    invoke-direct {v7, v9, v10, v11}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;-><init>(Ljava/lang/String;II)V

    .line 40
    .line 41
    .line 42
    sput-object v7, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;->SERVICE_CONTINUE_PENDING:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

    .line 43
    .line 44
    new-instance v9, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

    .line 45
    .line 46
    const-string v12, "SERVICE_PAUSE_PENDING"

    .line 47
    .line 48
    const/4 v13, 0x6

    .line 49
    invoke-direct {v9, v12, v6, v13}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;-><init>(Ljava/lang/String;II)V

    .line 50
    .line 51
    .line 52
    sput-object v9, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;->SERVICE_PAUSE_PENDING:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

    .line 53
    .line 54
    new-instance v12, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

    .line 55
    .line 56
    const-string v14, "SERVICE_START_PENDING"

    .line 57
    .line 58
    invoke-direct {v12, v14, v11, v8}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;-><init>(Ljava/lang/String;II)V

    .line 59
    .line 60
    .line 61
    sput-object v12, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;->SERVICE_START_PENDING:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

    .line 62
    .line 63
    new-instance v14, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

    .line 64
    .line 65
    const-string v15, "SERVICE_STOP_PENDING"

    .line 66
    .line 67
    invoke-direct {v14, v15, v13, v10}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;-><init>(Ljava/lang/String;II)V

    .line 68
    .line 69
    .line 70
    sput-object v14, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;->SERVICE_STOP_PENDING:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

    .line 71
    .line 72
    new-instance v15, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

    .line 73
    .line 74
    const-string v13, "ACCESS_MASK"

    .line 75
    .line 76
    const v11, 0xf01ff

    .line 77
    .line 78
    .line 79
    invoke-direct {v15, v13, v3, v11}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;-><init>(Ljava/lang/String;II)V

    .line 80
    .line 81
    .line 82
    sput-object v15, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;->ACCESS_MASK:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

    .line 83
    .line 84
    new-instance v11, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

    .line 85
    .line 86
    const/16 v13, 0x8

    .line 87
    .line 88
    const/4 v3, -0x1

    .line 89
    const-string v6, "UNKNOWN"

    .line 90
    .line 91
    invoke-direct {v11, v6, v13, v3}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;-><init>(Ljava/lang/String;II)V

    .line 92
    .line 93
    .line 94
    sput-object v11, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;->UNKNOWN:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

    .line 95
    .line 96
    const/16 v3, 0x9

    .line 97
    .line 98
    new-array v3, v3, [Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

    .line 99
    .line 100
    aput-object v0, v3, v2

    .line 101
    .line 102
    aput-object v1, v3, v5

    .line 103
    .line 104
    aput-object v4, v3, v8

    .line 105
    .line 106
    aput-object v7, v3, v10

    .line 107
    .line 108
    const/4 v0, 0x4

    .line 109
    aput-object v9, v3, v0

    .line 110
    .line 111
    const/4 v0, 0x5

    .line 112
    aput-object v12, v3, v0

    .line 113
    .line 114
    const/4 v0, 0x6

    .line 115
    aput-object v14, v3, v0

    .line 116
    .line 117
    const/4 v0, 0x7

    .line 118
    aput-object v15, v3, v0

    .line 119
    .line 120
    aput-object v11, v3, v13

    .line 121
    .line 122
    sput-object v3, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;->$VALUES:[Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

    .line 123
    .line 124
    new-instance v0, Ljava/util/HashMap;

    .line 125
    .line 126
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 127
    .line 128
    .line 129
    sput-object v0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;->MS_TYPEDMAP:Ljava/util/Map;

    .line 130
    .line 131
    invoke-static {}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;->values()[Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    array-length v1, v0

    .line 136
    :goto_0
    if-ge v2, v1, :cond_0

    .line 137
    .line 138
    aget-object v3, v0, v2

    .line 139
    .line 140
    sget-object v4, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;->MS_TYPEDMAP:Ljava/util/Map;

    .line 141
    .line 142
    invoke-virtual {v3}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;->getValue()I

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    invoke-interface {v4, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    add-int/2addr v2, v5

    .line 154
    goto :goto_0

    .line 155
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
    iput p3, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;->m_value:I

    .line 5
    .line 6
    return-void
.end method

.method public static fromInt(I)Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;->MS_TYPEDMAP:Ljava/util/Map;

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
    check-cast p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;->UNKNOWN:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

    .line 16
    .line 17
    :cond_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;
    .locals 1

    .line 1
    const-class v0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;->$VALUES:[Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;->m_value:I

    .line 2
    .line 3
    return v0
.end method
