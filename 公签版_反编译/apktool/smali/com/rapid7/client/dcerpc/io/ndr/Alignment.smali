.class public final enum Lcom/rapid7/client/dcerpc/io/ndr/Alignment;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rapid7/client/dcerpc/io/ndr/Alignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

.field public static final enum EIGHT:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

.field public static final enum FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

.field public static final enum ONE:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

.field public static final enum TWO:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;


# instance fields
.field private final offByOneAlignment:B


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 2
    .line 3
    const-string v1, "ONE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;-><init>(Ljava/lang/String;IB)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->ONE:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 11
    .line 12
    new-instance v1, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 13
    .line 14
    const-string v4, "TWO"

    .line 15
    .line 16
    const/4 v5, 0x2

    .line 17
    invoke-direct {v1, v4, v3, v5}, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;-><init>(Ljava/lang/String;IB)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->TWO:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 21
    .line 22
    new-instance v4, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 23
    .line 24
    const-string v6, "FOUR"

    .line 25
    .line 26
    const/4 v7, 0x4

    .line 27
    invoke-direct {v4, v6, v5, v7}, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;-><init>(Ljava/lang/String;IB)V

    .line 28
    .line 29
    .line 30
    sput-object v4, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 31
    .line 32
    new-instance v6, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 33
    .line 34
    const/4 v8, 0x3

    .line 35
    const/16 v9, 0x8

    .line 36
    .line 37
    const-string v10, "EIGHT"

    .line 38
    .line 39
    invoke-direct {v6, v10, v8, v9}, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;-><init>(Ljava/lang/String;IB)V

    .line 40
    .line 41
    .line 42
    sput-object v6, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->EIGHT:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 43
    .line 44
    new-array v7, v7, [Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 45
    .line 46
    aput-object v0, v7, v2

    .line 47
    .line 48
    aput-object v1, v7, v3

    .line 49
    .line 50
    aput-object v4, v7, v5

    .line 51
    .line 52
    aput-object v6, v7, v8

    .line 53
    .line 54
    sput-object v7, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->$VALUES:[Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 55
    .line 56
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
    add-int/lit8 p3, p3, -0x1

    .line 5
    .line 6
    int-to-byte p1, p3

    .line 7
    iput-byte p1, p0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->offByOneAlignment:B

    .line 8
    .line 9
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/io/ndr/Alignment;
    .locals 1

    .line 1
    const-class v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/rapid7/client/dcerpc/io/ndr/Alignment;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->$VALUES:[Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getOffByOneAlignment()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->offByOneAlignment:B

    .line 2
    .line 3
    return v0
.end method
