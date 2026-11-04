.class public final enum Lcom/rapid7/client/dcerpc/mslsad/objects/PolicyInformationClass;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rapid7/client/dcerpc/mslsad/objects/PolicyInformationClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rapid7/client/dcerpc/mslsad/objects/PolicyInformationClass;

.field public static final enum POLICY_ACCOUNT_DOMAIN_INFORMATION:Lcom/rapid7/client/dcerpc/mslsad/objects/PolicyInformationClass;

.field public static final enum POLICY_AUDIT_EVENTS_INFORMATION:Lcom/rapid7/client/dcerpc/mslsad/objects/PolicyInformationClass;

.field public static final enum POLICY_PRIMARY_DOMAIN_INFORMATION:Lcom/rapid7/client/dcerpc/mslsad/objects/PolicyInformationClass;


# instance fields
.field private final infoLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mslsad/objects/PolicyInformationClass;

    .line 2
    .line 3
    const-string v1, "POLICY_AUDIT_EVENTS_INFORMATION"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/rapid7/client/dcerpc/mslsad/objects/PolicyInformationClass;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/rapid7/client/dcerpc/mslsad/objects/PolicyInformationClass;->POLICY_AUDIT_EVENTS_INFORMATION:Lcom/rapid7/client/dcerpc/mslsad/objects/PolicyInformationClass;

    .line 11
    .line 12
    new-instance v1, Lcom/rapid7/client/dcerpc/mslsad/objects/PolicyInformationClass;

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    const/4 v5, 0x3

    .line 16
    const-string v6, "POLICY_PRIMARY_DOMAIN_INFORMATION"

    .line 17
    .line 18
    invoke-direct {v1, v6, v4, v5}, Lcom/rapid7/client/dcerpc/mslsad/objects/PolicyInformationClass;-><init>(Ljava/lang/String;II)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/rapid7/client/dcerpc/mslsad/objects/PolicyInformationClass;->POLICY_PRIMARY_DOMAIN_INFORMATION:Lcom/rapid7/client/dcerpc/mslsad/objects/PolicyInformationClass;

    .line 22
    .line 23
    new-instance v6, Lcom/rapid7/client/dcerpc/mslsad/objects/PolicyInformationClass;

    .line 24
    .line 25
    const-string v7, "POLICY_ACCOUNT_DOMAIN_INFORMATION"

    .line 26
    .line 27
    const/4 v8, 0x5

    .line 28
    invoke-direct {v6, v7, v3, v8}, Lcom/rapid7/client/dcerpc/mslsad/objects/PolicyInformationClass;-><init>(Ljava/lang/String;II)V

    .line 29
    .line 30
    .line 31
    sput-object v6, Lcom/rapid7/client/dcerpc/mslsad/objects/PolicyInformationClass;->POLICY_ACCOUNT_DOMAIN_INFORMATION:Lcom/rapid7/client/dcerpc/mslsad/objects/PolicyInformationClass;

    .line 32
    .line 33
    new-array v5, v5, [Lcom/rapid7/client/dcerpc/mslsad/objects/PolicyInformationClass;

    .line 34
    .line 35
    aput-object v0, v5, v2

    .line 36
    .line 37
    aput-object v1, v5, v4

    .line 38
    .line 39
    aput-object v6, v5, v3

    .line 40
    .line 41
    sput-object v5, Lcom/rapid7/client/dcerpc/mslsad/objects/PolicyInformationClass;->$VALUES:[Lcom/rapid7/client/dcerpc/mslsad/objects/PolicyInformationClass;

    .line 42
    .line 43
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
    iput p3, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/PolicyInformationClass;->infoLevel:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/mslsad/objects/PolicyInformationClass;
    .locals 1

    .line 1
    const-class v0, Lcom/rapid7/client/dcerpc/mslsad/objects/PolicyInformationClass;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/rapid7/client/dcerpc/mslsad/objects/PolicyInformationClass;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/rapid7/client/dcerpc/mslsad/objects/PolicyInformationClass;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/mslsad/objects/PolicyInformationClass;->$VALUES:[Lcom/rapid7/client/dcerpc/mslsad/objects/PolicyInformationClass;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/rapid7/client/dcerpc/mslsad/objects/PolicyInformationClass;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/rapid7/client/dcerpc/mslsad/objects/PolicyInformationClass;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getInfoLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/PolicyInformationClass;->infoLevel:I

    .line 2
    .line 3
    return v0
.end method
