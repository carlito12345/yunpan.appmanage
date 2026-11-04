.class public final enum Lcom/rapid7/client/dcerpc/mslsad/dto/EventAuditOptions;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rapid7/client/dcerpc/mslsad/dto/EventAuditOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rapid7/client/dcerpc/mslsad/dto/EventAuditOptions;

.field public static final enum POLICY_AUDIT_EVENT_FAILURE:Lcom/rapid7/client/dcerpc/mslsad/dto/EventAuditOptions;

.field public static final enum POLICY_AUDIT_EVENT_NONE:Lcom/rapid7/client/dcerpc/mslsad/dto/EventAuditOptions;

.field public static final enum POLICY_AUDIT_EVENT_SUCCESS:Lcom/rapid7/client/dcerpc/mslsad/dto/EventAuditOptions;

.field public static final enum POLICY_AUDIT_EVENT_UNCHANGED:Lcom/rapid7/client/dcerpc/mslsad/dto/EventAuditOptions;


# instance fields
.field private final value:B


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mslsad/dto/EventAuditOptions;

    .line 2
    .line 3
    const-string v1, "POLICY_AUDIT_EVENT_UNCHANGED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/rapid7/client/dcerpc/mslsad/dto/EventAuditOptions;-><init>(Ljava/lang/String;IB)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/rapid7/client/dcerpc/mslsad/dto/EventAuditOptions;->POLICY_AUDIT_EVENT_UNCHANGED:Lcom/rapid7/client/dcerpc/mslsad/dto/EventAuditOptions;

    .line 10
    .line 11
    new-instance v1, Lcom/rapid7/client/dcerpc/mslsad/dto/EventAuditOptions;

    .line 12
    .line 13
    const/4 v3, 0x4

    .line 14
    const-string v4, "POLICY_AUDIT_EVENT_NONE"

    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    invoke-direct {v1, v4, v5, v3}, Lcom/rapid7/client/dcerpc/mslsad/dto/EventAuditOptions;-><init>(Ljava/lang/String;IB)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/rapid7/client/dcerpc/mslsad/dto/EventAuditOptions;->POLICY_AUDIT_EVENT_NONE:Lcom/rapid7/client/dcerpc/mslsad/dto/EventAuditOptions;

    .line 21
    .line 22
    new-instance v4, Lcom/rapid7/client/dcerpc/mslsad/dto/EventAuditOptions;

    .line 23
    .line 24
    const-string v6, "POLICY_AUDIT_EVENT_SUCCESS"

    .line 25
    .line 26
    const/4 v7, 0x2

    .line 27
    invoke-direct {v4, v6, v7, v5}, Lcom/rapid7/client/dcerpc/mslsad/dto/EventAuditOptions;-><init>(Ljava/lang/String;IB)V

    .line 28
    .line 29
    .line 30
    sput-object v4, Lcom/rapid7/client/dcerpc/mslsad/dto/EventAuditOptions;->POLICY_AUDIT_EVENT_SUCCESS:Lcom/rapid7/client/dcerpc/mslsad/dto/EventAuditOptions;

    .line 31
    .line 32
    new-instance v6, Lcom/rapid7/client/dcerpc/mslsad/dto/EventAuditOptions;

    .line 33
    .line 34
    const-string v8, "POLICY_AUDIT_EVENT_FAILURE"

    .line 35
    .line 36
    const/4 v9, 0x3

    .line 37
    invoke-direct {v6, v8, v9, v7}, Lcom/rapid7/client/dcerpc/mslsad/dto/EventAuditOptions;-><init>(Ljava/lang/String;IB)V

    .line 38
    .line 39
    .line 40
    sput-object v6, Lcom/rapid7/client/dcerpc/mslsad/dto/EventAuditOptions;->POLICY_AUDIT_EVENT_FAILURE:Lcom/rapid7/client/dcerpc/mslsad/dto/EventAuditOptions;

    .line 41
    .line 42
    new-array v3, v3, [Lcom/rapid7/client/dcerpc/mslsad/dto/EventAuditOptions;

    .line 43
    .line 44
    aput-object v0, v3, v2

    .line 45
    .line 46
    aput-object v1, v3, v5

    .line 47
    .line 48
    aput-object v4, v3, v7

    .line 49
    .line 50
    aput-object v6, v3, v9

    .line 51
    .line 52
    sput-object v3, Lcom/rapid7/client/dcerpc/mslsad/dto/EventAuditOptions;->$VALUES:[Lcom/rapid7/client/dcerpc/mslsad/dto/EventAuditOptions;

    .line 53
    .line 54
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
    iput-byte p3, p0, Lcom/rapid7/client/dcerpc/mslsad/dto/EventAuditOptions;->value:B

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/mslsad/dto/EventAuditOptions;
    .locals 1

    .line 1
    const-class v0, Lcom/rapid7/client/dcerpc/mslsad/dto/EventAuditOptions;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/rapid7/client/dcerpc/mslsad/dto/EventAuditOptions;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/rapid7/client/dcerpc/mslsad/dto/EventAuditOptions;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/mslsad/dto/EventAuditOptions;->$VALUES:[Lcom/rapid7/client/dcerpc/mslsad/dto/EventAuditOptions;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/rapid7/client/dcerpc/mslsad/dto/EventAuditOptions;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/rapid7/client/dcerpc/mslsad/dto/EventAuditOptions;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/rapid7/client/dcerpc/mslsad/dto/EventAuditOptions;->value:B

    .line 2
    .line 3
    return v0
.end method

.method public is(B)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mslsad/dto/EventAuditOptions;->getValue()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method public isSet(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mslsad/dto/EventAuditOptions;->getValue()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/2addr p1, v0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    return p1
.end method
