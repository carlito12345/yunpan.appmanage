.class public final enum Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;

.field public static final enum AUDIT_CATEGORY_ACCOUNT_LOGON:Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;

.field public static final enum AUDIT_CATEGORY_ACCOUNT_MANAGEMENT:Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;

.field public static final enum AUDIT_CATEGORY_DETAILED_TRACKING:Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;

.field public static final enum AUDIT_CATEGORY_DIRECTORY_SERVICE_ACCESS:Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;

.field public static final enum AUDIT_CATEGORY_LOGON:Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;

.field public static final enum AUDIT_CATEGORY_OBJECT_ACCESS:Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;

.field public static final enum AUDIT_CATEGORY_POLICY_CHANGE:Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;

.field public static final enum AUDIT_CATEGORY_PRIVILEGE_USE:Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;

.field public static final enum AUDIT_CATEGORY_SYSTEM:Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;


# instance fields
.field private final value:B


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;

    .line 2
    .line 3
    const-string v1, "AUDIT_CATEGORY_SYSTEM"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;-><init>(Ljava/lang/String;IB)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;->AUDIT_CATEGORY_SYSTEM:Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;

    .line 11
    .line 12
    new-instance v1, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;

    .line 13
    .line 14
    const-string v4, "AUDIT_CATEGORY_LOGON"

    .line 15
    .line 16
    const/4 v5, 0x2

    .line 17
    invoke-direct {v1, v4, v3, v5}, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;-><init>(Ljava/lang/String;IB)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;->AUDIT_CATEGORY_LOGON:Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;

    .line 21
    .line 22
    new-instance v4, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;

    .line 23
    .line 24
    const-string v6, "AUDIT_CATEGORY_OBJECT_ACCESS"

    .line 25
    .line 26
    const/4 v7, 0x3

    .line 27
    invoke-direct {v4, v6, v5, v7}, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;-><init>(Ljava/lang/String;IB)V

    .line 28
    .line 29
    .line 30
    sput-object v4, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;->AUDIT_CATEGORY_OBJECT_ACCESS:Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;

    .line 31
    .line 32
    new-instance v6, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;

    .line 33
    .line 34
    const-string v8, "AUDIT_CATEGORY_PRIVILEGE_USE"

    .line 35
    .line 36
    const/4 v9, 0x4

    .line 37
    invoke-direct {v6, v8, v7, v9}, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;-><init>(Ljava/lang/String;IB)V

    .line 38
    .line 39
    .line 40
    sput-object v6, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;->AUDIT_CATEGORY_PRIVILEGE_USE:Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;

    .line 41
    .line 42
    new-instance v8, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;

    .line 43
    .line 44
    const-string v10, "AUDIT_CATEGORY_DETAILED_TRACKING"

    .line 45
    .line 46
    const/4 v11, 0x5

    .line 47
    invoke-direct {v8, v10, v9, v11}, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;-><init>(Ljava/lang/String;IB)V

    .line 48
    .line 49
    .line 50
    sput-object v8, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;->AUDIT_CATEGORY_DETAILED_TRACKING:Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;

    .line 51
    .line 52
    new-instance v10, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;

    .line 53
    .line 54
    const-string v12, "AUDIT_CATEGORY_POLICY_CHANGE"

    .line 55
    .line 56
    const/4 v13, 0x6

    .line 57
    invoke-direct {v10, v12, v11, v13}, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;-><init>(Ljava/lang/String;IB)V

    .line 58
    .line 59
    .line 60
    sput-object v10, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;->AUDIT_CATEGORY_POLICY_CHANGE:Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;

    .line 61
    .line 62
    new-instance v12, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;

    .line 63
    .line 64
    const-string v14, "AUDIT_CATEGORY_ACCOUNT_MANAGEMENT"

    .line 65
    .line 66
    const/4 v15, 0x7

    .line 67
    invoke-direct {v12, v14, v13, v15}, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;-><init>(Ljava/lang/String;IB)V

    .line 68
    .line 69
    .line 70
    sput-object v12, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;->AUDIT_CATEGORY_ACCOUNT_MANAGEMENT:Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;

    .line 71
    .line 72
    new-instance v14, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;

    .line 73
    .line 74
    const-string v13, "AUDIT_CATEGORY_DIRECTORY_SERVICE_ACCESS"

    .line 75
    .line 76
    const/16 v11, 0x8

    .line 77
    .line 78
    invoke-direct {v14, v13, v15, v11}, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;-><init>(Ljava/lang/String;IB)V

    .line 79
    .line 80
    .line 81
    sput-object v14, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;->AUDIT_CATEGORY_DIRECTORY_SERVICE_ACCESS:Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;

    .line 82
    .line 83
    new-instance v13, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;

    .line 84
    .line 85
    const-string v15, "AUDIT_CATEGORY_ACCOUNT_LOGON"

    .line 86
    .line 87
    const/16 v9, 0x9

    .line 88
    .line 89
    invoke-direct {v13, v15, v11, v9}, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;-><init>(Ljava/lang/String;IB)V

    .line 90
    .line 91
    .line 92
    sput-object v13, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;->AUDIT_CATEGORY_ACCOUNT_LOGON:Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;

    .line 93
    .line 94
    new-array v9, v9, [Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;

    .line 95
    .line 96
    aput-object v0, v9, v2

    .line 97
    .line 98
    aput-object v1, v9, v3

    .line 99
    .line 100
    aput-object v4, v9, v5

    .line 101
    .line 102
    aput-object v6, v9, v7

    .line 103
    .line 104
    const/4 v0, 0x4

    .line 105
    aput-object v8, v9, v0

    .line 106
    .line 107
    const/4 v0, 0x5

    .line 108
    aput-object v10, v9, v0

    .line 109
    .line 110
    const/4 v0, 0x6

    .line 111
    aput-object v12, v9, v0

    .line 112
    .line 113
    const/4 v0, 0x7

    .line 114
    aput-object v14, v9, v0

    .line 115
    .line 116
    aput-object v13, v9, v11

    .line 117
    .line 118
    sput-object v9, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;->$VALUES:[Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;

    .line 119
    .line 120
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-byte p3, p0, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;->value:B

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;
    .locals 1

    .line 1
    const-class v0, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;->$VALUES:[Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventType;->value:B

    .line 2
    .line 3
    return v0
.end method
