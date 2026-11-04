.class public final enum Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hsae/autosdk/hmi/HmiConst$HMI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;

.field public static final enum LONG_DOWN:Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;

.field public static final enum LONG_UP:Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;

.field public static final enum SHORT_DOWN:Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;

.field public static final enum SHORT_UP:Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;

.field public static final enum UP:Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;


# instance fields
.field private f11id:I


# direct methods
.method private static synthetic $values()[Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;

    .line 3
    .line 4
    sget-object v1, Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;->SHORT_UP:Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;->LONG_UP:Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;->LONG_DOWN:Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;->SHORT_DOWN:Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    sget-object v1, Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;->UP:Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;

    .line 2
    .line 3
    const-string v1, "SHORT_UP"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;->SHORT_UP:Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;

    .line 11
    .line 12
    new-instance v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;

    .line 13
    .line 14
    const-string v1, "LONG_UP"

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-direct {v0, v1, v3, v2}, Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;->LONG_UP:Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;

    .line 21
    .line 22
    new-instance v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;

    .line 23
    .line 24
    const-string v1, "LONG_DOWN"

    .line 25
    .line 26
    const/4 v3, 0x3

    .line 27
    invoke-direct {v0, v1, v2, v3}, Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;->LONG_DOWN:Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;

    .line 31
    .line 32
    new-instance v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;

    .line 33
    .line 34
    const-string v1, "SHORT_DOWN"

    .line 35
    .line 36
    const/4 v2, 0x4

    .line 37
    invoke-direct {v0, v1, v3, v2}, Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;->SHORT_DOWN:Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;

    .line 41
    .line 42
    new-instance v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;

    .line 43
    .line 44
    const-string v1, "UP"

    .line 45
    .line 46
    const/4 v3, 0x5

    .line 47
    invoke-direct {v0, v1, v2, v3}, Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;-><init>(Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;->UP:Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;

    .line 51
    .line 52
    invoke-static {}, Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;->$values()[Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sput-object v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;->$VALUES:[Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;

    .line 57
    .line 58
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
    iput p3, p0, Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;->f11id:I

    .line 5
    .line 6
    return-void
.end method

.method public static final findById(I)Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;
    .locals 5

    .line 1
    invoke-static {}, Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;->values()[Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    iget v4, v3, Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;->f11id:I

    .line 12
    .line 13
    if-ne v4, p0, :cond_0

    .line 14
    .line 15
    return-object v3

    .line 16
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;->values()[Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    iget v4, v3, Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;->f11id:I

    .line 12
    .line 13
    if-ne v4, p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;
    .locals 1

    .line 1
    const-class v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;
    .locals 1

    .line 1
    sget-object v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;->$VALUES:[Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public m23id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;->f11id:I

    .line 2
    .line 3
    return v0
.end method
