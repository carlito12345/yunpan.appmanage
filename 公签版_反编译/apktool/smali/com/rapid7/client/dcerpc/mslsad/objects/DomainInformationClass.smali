.class public final enum Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;

.field public static final enum DOMAIN_LOCKOUT_INFORMATION:Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;

.field public static final enum DOMAIN_LOGOFF_INFORMATION:Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;

.field public static final enum DOMAIN_PASSWORD_INFORMATION:Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;


# instance fields
.field private final infoLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;

    .line 2
    .line 3
    const-string v1, "DOMAIN_PASSWORD_INFORMATION"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;->DOMAIN_PASSWORD_INFORMATION:Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;

    .line 11
    .line 12
    new-instance v1, Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;

    .line 13
    .line 14
    const-string v4, "DOMAIN_LOGOFF_INFORMATION"

    .line 15
    .line 16
    const/4 v5, 0x3

    .line 17
    invoke-direct {v1, v4, v3, v5}, Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;->DOMAIN_LOGOFF_INFORMATION:Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;

    .line 21
    .line 22
    new-instance v4, Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;

    .line 23
    .line 24
    const/4 v6, 0x2

    .line 25
    const/16 v7, 0xc

    .line 26
    .line 27
    const-string v8, "DOMAIN_LOCKOUT_INFORMATION"

    .line 28
    .line 29
    invoke-direct {v4, v8, v6, v7}, Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;-><init>(Ljava/lang/String;II)V

    .line 30
    .line 31
    .line 32
    sput-object v4, Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;->DOMAIN_LOCKOUT_INFORMATION:Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;

    .line 33
    .line 34
    new-array v5, v5, [Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;

    .line 35
    .line 36
    aput-object v0, v5, v2

    .line 37
    .line 38
    aput-object v1, v5, v3

    .line 39
    .line 40
    aput-object v4, v5, v6

    .line 41
    .line 42
    sput-object v5, Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;->$VALUES:[Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;

    .line 43
    .line 44
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
    iput p3, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;->infoLevel:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;
    .locals 1

    .line 1
    const-class v0, Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;->$VALUES:[Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getInfoLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;->infoLevel:I

    .line 2
    .line 3
    return v0
.end method
