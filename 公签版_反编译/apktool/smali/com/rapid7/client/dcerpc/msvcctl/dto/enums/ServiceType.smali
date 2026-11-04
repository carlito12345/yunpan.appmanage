.class public final enum Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

.field public static final enum ADAPTER:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

.field public static final enum FILE_SYSTEM_DRIVER:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

.field public static final enum INTERACTIVE_PROCESS:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

.field public static final enum KERNEL_DRIVER:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

.field private static final MS_TYPEDMAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum NO_CHANGE:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

.field public static final enum RECOGNIZER_DRIVER:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

.field public static final enum UNKNOWN:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

.field public static final enum WIN32_OWN_PROCESS:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

.field public static final enum WIN32_SHARE_PROCESS:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;


# instance fields
.field private final m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

    .line 2
    .line 3
    const-string v1, "KERNEL_DRIVER"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;->KERNEL_DRIVER:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

    .line 11
    .line 12
    new-instance v1, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

    .line 13
    .line 14
    const-string v4, "FILE_SYSTEM_DRIVER"

    .line 15
    .line 16
    const/4 v5, 0x2

    .line 17
    invoke-direct {v1, v4, v3, v5}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;->FILE_SYSTEM_DRIVER:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

    .line 21
    .line 22
    new-instance v4, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

    .line 23
    .line 24
    const-string v6, "ADAPTER"

    .line 25
    .line 26
    const/4 v7, 0x4

    .line 27
    invoke-direct {v4, v6, v5, v7}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v4, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;->ADAPTER:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

    .line 31
    .line 32
    new-instance v6, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

    .line 33
    .line 34
    const-string v8, "RECOGNIZER_DRIVER"

    .line 35
    .line 36
    const/4 v9, 0x3

    .line 37
    const/16 v10, 0x8

    .line 38
    .line 39
    invoke-direct {v6, v8, v9, v10}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;-><init>(Ljava/lang/String;II)V

    .line 40
    .line 41
    .line 42
    sput-object v6, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;->RECOGNIZER_DRIVER:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

    .line 43
    .line 44
    new-instance v8, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

    .line 45
    .line 46
    const-string v11, "WIN32_OWN_PROCESS"

    .line 47
    .line 48
    const/16 v12, 0x10

    .line 49
    .line 50
    invoke-direct {v8, v11, v7, v12}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;-><init>(Ljava/lang/String;II)V

    .line 51
    .line 52
    .line 53
    sput-object v8, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;->WIN32_OWN_PROCESS:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

    .line 54
    .line 55
    new-instance v11, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

    .line 56
    .line 57
    const/4 v12, 0x5

    .line 58
    const/16 v13, 0x20

    .line 59
    .line 60
    const-string v14, "WIN32_SHARE_PROCESS"

    .line 61
    .line 62
    invoke-direct {v11, v14, v12, v13}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;-><init>(Ljava/lang/String;II)V

    .line 63
    .line 64
    .line 65
    sput-object v11, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;->WIN32_SHARE_PROCESS:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

    .line 66
    .line 67
    new-instance v13, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

    .line 68
    .line 69
    const/4 v14, 0x6

    .line 70
    const/16 v15, 0x100

    .line 71
    .line 72
    const-string v12, "INTERACTIVE_PROCESS"

    .line 73
    .line 74
    invoke-direct {v13, v12, v14, v15}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;-><init>(Ljava/lang/String;II)V

    .line 75
    .line 76
    .line 77
    sput-object v13, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;->INTERACTIVE_PROCESS:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

    .line 78
    .line 79
    new-instance v12, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

    .line 80
    .line 81
    const-string v15, "NO_CHANGE"

    .line 82
    .line 83
    const/4 v14, 0x7

    .line 84
    const/4 v7, -0x1

    .line 85
    invoke-direct {v12, v15, v14, v7}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;-><init>(Ljava/lang/String;II)V

    .line 86
    .line 87
    .line 88
    sput-object v12, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;->NO_CHANGE:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

    .line 89
    .line 90
    new-instance v15, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

    .line 91
    .line 92
    const-string v14, "UNKNOWN"

    .line 93
    .line 94
    invoke-direct {v15, v14, v10, v7}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;-><init>(Ljava/lang/String;II)V

    .line 95
    .line 96
    .line 97
    sput-object v15, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;->UNKNOWN:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

    .line 98
    .line 99
    const/16 v7, 0x9

    .line 100
    .line 101
    new-array v7, v7, [Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

    .line 102
    .line 103
    aput-object v0, v7, v2

    .line 104
    .line 105
    aput-object v1, v7, v3

    .line 106
    .line 107
    aput-object v4, v7, v5

    .line 108
    .line 109
    aput-object v6, v7, v9

    .line 110
    .line 111
    const/4 v0, 0x4

    .line 112
    aput-object v8, v7, v0

    .line 113
    .line 114
    const/4 v0, 0x5

    .line 115
    aput-object v11, v7, v0

    .line 116
    .line 117
    const/4 v0, 0x6

    .line 118
    aput-object v13, v7, v0

    .line 119
    .line 120
    const/4 v0, 0x7

    .line 121
    aput-object v12, v7, v0

    .line 122
    .line 123
    aput-object v15, v7, v10

    .line 124
    .line 125
    sput-object v7, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;->$VALUES:[Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

    .line 126
    .line 127
    new-instance v0, Ljava/util/HashMap;

    .line 128
    .line 129
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 130
    .line 131
    .line 132
    sput-object v0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;->MS_TYPEDMAP:Ljava/util/Map;

    .line 133
    .line 134
    invoke-static {}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;->values()[Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    array-length v1, v0

    .line 139
    :goto_0
    if-ge v2, v1, :cond_0

    .line 140
    .line 141
    aget-object v4, v0, v2

    .line 142
    .line 143
    sget-object v5, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;->MS_TYPEDMAP:Ljava/util/Map;

    .line 144
    .line 145
    invoke-virtual {v4}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;->getValue()I

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    add-int/2addr v2, v3

    .line 157
    goto :goto_0

    .line 158
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
    iput p3, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;->m_value:I

    .line 5
    .line 6
    return-void
.end method

.method public static fromInt(I)Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;->MS_TYPEDMAP:Ljava/util/Map;

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
    check-cast p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;->UNKNOWN:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

    .line 16
    .line 17
    :cond_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;
    .locals 1

    .line 1
    const-class v0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;->$VALUES:[Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;->m_value:I

    .line 2
    .line 3
    return v0
.end method
