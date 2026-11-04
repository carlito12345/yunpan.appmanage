.class public final enum Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;

.field public static final enum ALL_ACCESS:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;

.field public static final enum CONNECT:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;

.field public static final enum CREATE_SERVICE:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;

.field public static final enum ENUMERATE_SERVICE:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;

.field public static final enum LOCK:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;

.field public static final enum MODIFY_BOOT_CONFIG:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;

.field public static final enum QUERY_LOCK_STATUS:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;


# instance fields
.field private final m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;

    .line 2
    .line 3
    const-string v1, "CONNECT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;->CONNECT:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;

    .line 11
    .line 12
    new-instance v1, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;

    .line 13
    .line 14
    const-string v4, "CREATE_SERVICE"

    .line 15
    .line 16
    const/4 v5, 0x2

    .line 17
    invoke-direct {v1, v4, v3, v5}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;->CREATE_SERVICE:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;

    .line 21
    .line 22
    new-instance v4, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;

    .line 23
    .line 24
    const-string v6, "ENUMERATE_SERVICE"

    .line 25
    .line 26
    const/4 v7, 0x4

    .line 27
    invoke-direct {v4, v6, v5, v7}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v4, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;->ENUMERATE_SERVICE:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;

    .line 31
    .line 32
    new-instance v6, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;

    .line 33
    .line 34
    const/4 v8, 0x3

    .line 35
    const/16 v9, 0x8

    .line 36
    .line 37
    const-string v10, "LOCK"

    .line 38
    .line 39
    invoke-direct {v6, v10, v8, v9}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;-><init>(Ljava/lang/String;II)V

    .line 40
    .line 41
    .line 42
    sput-object v6, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;->LOCK:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;

    .line 43
    .line 44
    new-instance v9, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;

    .line 45
    .line 46
    const-string v10, "QUERY_LOCK_STATUS"

    .line 47
    .line 48
    const/16 v11, 0x10

    .line 49
    .line 50
    invoke-direct {v9, v10, v7, v11}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;-><init>(Ljava/lang/String;II)V

    .line 51
    .line 52
    .line 53
    sput-object v9, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;->QUERY_LOCK_STATUS:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;

    .line 54
    .line 55
    new-instance v10, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;

    .line 56
    .line 57
    const/4 v11, 0x5

    .line 58
    const/16 v12, 0x20

    .line 59
    .line 60
    const-string v13, "MODIFY_BOOT_CONFIG"

    .line 61
    .line 62
    invoke-direct {v10, v13, v11, v12}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;-><init>(Ljava/lang/String;II)V

    .line 63
    .line 64
    .line 65
    sput-object v10, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;->MODIFY_BOOT_CONFIG:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;

    .line 66
    .line 67
    new-instance v12, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;

    .line 68
    .line 69
    const/4 v13, 0x6

    .line 70
    const v14, 0xf003f

    .line 71
    .line 72
    .line 73
    const-string v15, "ALL_ACCESS"

    .line 74
    .line 75
    invoke-direct {v12, v15, v13, v14}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;-><init>(Ljava/lang/String;II)V

    .line 76
    .line 77
    .line 78
    sput-object v12, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;->ALL_ACCESS:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;

    .line 79
    .line 80
    const/4 v14, 0x7

    .line 81
    new-array v14, v14, [Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;

    .line 82
    .line 83
    aput-object v0, v14, v2

    .line 84
    .line 85
    aput-object v1, v14, v3

    .line 86
    .line 87
    aput-object v4, v14, v5

    .line 88
    .line 89
    aput-object v6, v14, v8

    .line 90
    .line 91
    aput-object v9, v14, v7

    .line 92
    .line 93
    aput-object v10, v14, v11

    .line 94
    .line 95
    aput-object v12, v14, v13

    .line 96
    .line 97
    sput-object v14, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;->$VALUES:[Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;

    .line 98
    .line 99
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
    iput p3, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;->m_value:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;
    .locals 1

    .line 1
    const-class v0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;->$VALUES:[Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceManagerAccessLevel;->m_value:I

    .line 2
    .line 3
    return v0
.end method
