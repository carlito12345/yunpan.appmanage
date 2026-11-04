.class public final enum Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ$CustomEntry;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CustomEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ$CustomEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ$CustomEntry;

.field public static final enum EQ1:Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ$CustomEntry;

.field public static final enum EQ2:Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ$CustomEntry;

.field public static final enum EQ3:Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ$CustomEntry;


# instance fields
.field private value:I


# direct methods
.method private static synthetic $values()[Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ$CustomEntry;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ$CustomEntry;

    .line 3
    .line 4
    sget-object v1, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ$CustomEntry;->EQ1:Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ$CustomEntry;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ$CustomEntry;->EQ2:Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ$CustomEntry;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ$CustomEntry;->EQ3:Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ$CustomEntry;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ$CustomEntry;

    .line 2
    .line 3
    const-string v1, "EQ1"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ$CustomEntry;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ$CustomEntry;->EQ1:Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ$CustomEntry;

    .line 10
    .line 11
    new-instance v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ$CustomEntry;

    .line 12
    .line 13
    const-string v1, "EQ2"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ$CustomEntry;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ$CustomEntry;->EQ2:Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ$CustomEntry;

    .line 20
    .line 21
    new-instance v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ$CustomEntry;

    .line 22
    .line 23
    const-string v1, "EQ3"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ$CustomEntry;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ$CustomEntry;->EQ3:Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ$CustomEntry;

    .line 30
    .line 31
    invoke-static {}, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ$CustomEntry;->$values()[Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ$CustomEntry;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ$CustomEntry;->$VALUES:[Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ$CustomEntry;

    .line 36
    .line 37
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ$CustomEntry;
    .locals 1

    .line 1
    const-class v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ$CustomEntry;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ$CustomEntry;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ$CustomEntry;
    .locals 1

    .line 1
    sget-object v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ$CustomEntry;->$VALUES:[Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ$CustomEntry;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ$CustomEntry;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ$CustomEntry;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ$CustomEntry;->value:I

    .line 2
    .line 3
    return v0
.end method

.method public setValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ$CustomEntry;->value:I

    .line 2
    .line 3
    return-void
.end method
