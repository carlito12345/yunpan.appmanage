.class public final enum Lcom/hierynomus/mssmb2/SMB2LeaseState;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/hierynomus/protocol/commons/EnumWithValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hierynomus/mssmb2/SMB2LeaseState;",
        ">;",
        "Lcom/hierynomus/protocol/commons/EnumWithValue<",
        "Lcom/hierynomus/mssmb2/SMB2LeaseState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hierynomus/mssmb2/SMB2LeaseState;

.field public static final enum SMB2_LEASE_HANDLE_CACHING:Lcom/hierynomus/mssmb2/SMB2LeaseState;

.field public static final enum SMB2_LEASE_NONE:Lcom/hierynomus/mssmb2/SMB2LeaseState;

.field public static final enum SMB2_LEASE_READ_CACHING:Lcom/hierynomus/mssmb2/SMB2LeaseState;

.field public static final enum SMB2_LEASE_WRITE_CACHING:Lcom/hierynomus/mssmb2/SMB2LeaseState;


# instance fields
.field private final value:J


# direct methods
.method private static synthetic $values()[Lcom/hierynomus/mssmb2/SMB2LeaseState;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Lcom/hierynomus/mssmb2/SMB2LeaseState;

    .line 3
    .line 4
    sget-object v1, Lcom/hierynomus/mssmb2/SMB2LeaseState;->SMB2_LEASE_NONE:Lcom/hierynomus/mssmb2/SMB2LeaseState;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/hierynomus/mssmb2/SMB2LeaseState;->SMB2_LEASE_READ_CACHING:Lcom/hierynomus/mssmb2/SMB2LeaseState;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/hierynomus/mssmb2/SMB2LeaseState;->SMB2_LEASE_HANDLE_CACHING:Lcom/hierynomus/mssmb2/SMB2LeaseState;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lcom/hierynomus/mssmb2/SMB2LeaseState;->SMB2_LEASE_WRITE_CACHING:Lcom/hierynomus/mssmb2/SMB2LeaseState;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/hierynomus/mssmb2/SMB2LeaseState;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    const-string v4, "SMB2_LEASE_NONE"

    .line 7
    .line 8
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/mssmb2/SMB2LeaseState;-><init>(Ljava/lang/String;IJ)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/hierynomus/mssmb2/SMB2LeaseState;->SMB2_LEASE_NONE:Lcom/hierynomus/mssmb2/SMB2LeaseState;

    .line 12
    .line 13
    new-instance v0, Lcom/hierynomus/mssmb2/SMB2LeaseState;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-wide/16 v2, 0x1

    .line 17
    .line 18
    const-string v4, "SMB2_LEASE_READ_CACHING"

    .line 19
    .line 20
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/mssmb2/SMB2LeaseState;-><init>(Ljava/lang/String;IJ)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/hierynomus/mssmb2/SMB2LeaseState;->SMB2_LEASE_READ_CACHING:Lcom/hierynomus/mssmb2/SMB2LeaseState;

    .line 24
    .line 25
    new-instance v0, Lcom/hierynomus/mssmb2/SMB2LeaseState;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-wide/16 v2, 0x2

    .line 29
    .line 30
    const-string v4, "SMB2_LEASE_HANDLE_CACHING"

    .line 31
    .line 32
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/mssmb2/SMB2LeaseState;-><init>(Ljava/lang/String;IJ)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/hierynomus/mssmb2/SMB2LeaseState;->SMB2_LEASE_HANDLE_CACHING:Lcom/hierynomus/mssmb2/SMB2LeaseState;

    .line 36
    .line 37
    new-instance v0, Lcom/hierynomus/mssmb2/SMB2LeaseState;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-wide/16 v2, 0x4

    .line 41
    .line 42
    const-string v4, "SMB2_LEASE_WRITE_CACHING"

    .line 43
    .line 44
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/mssmb2/SMB2LeaseState;-><init>(Ljava/lang/String;IJ)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/hierynomus/mssmb2/SMB2LeaseState;->SMB2_LEASE_WRITE_CACHING:Lcom/hierynomus/mssmb2/SMB2LeaseState;

    .line 48
    .line 49
    invoke-static {}, Lcom/hierynomus/mssmb2/SMB2LeaseState;->$values()[Lcom/hierynomus/mssmb2/SMB2LeaseState;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lcom/hierynomus/mssmb2/SMB2LeaseState;->$VALUES:[Lcom/hierynomus/mssmb2/SMB2LeaseState;

    .line 54
    .line 55
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-wide p3, p0, Lcom/hierynomus/mssmb2/SMB2LeaseState;->value:J

    .line 5
    .line 6
    return-void
.end method

.method public static isHandle(J)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/hierynomus/mssmb2/SMB2LeaseState;->SMB2_LEASE_HANDLE_CACHING:Lcom/hierynomus/mssmb2/SMB2LeaseState;

    .line 2
    .line 3
    iget-wide v0, v0, Lcom/hierynomus/mssmb2/SMB2LeaseState;->value:J

    .line 4
    .line 5
    and-long/2addr p0, v0

    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v2, p0, v0

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
.end method

.method public static isRead(J)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/hierynomus/mssmb2/SMB2LeaseState;->SMB2_LEASE_READ_CACHING:Lcom/hierynomus/mssmb2/SMB2LeaseState;

    .line 2
    .line 3
    iget-wide v0, v0, Lcom/hierynomus/mssmb2/SMB2LeaseState;->value:J

    .line 4
    .line 5
    and-long/2addr p0, v0

    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v2, p0, v0

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
.end method

.method public static isReadHandle(J)Z
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lcom/hierynomus/mssmb2/SMB2LeaseState;->isRead(J)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Lcom/hierynomus/mssmb2/SMB2LeaseState;->isHandle(J)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public static isWrite(J)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/hierynomus/mssmb2/SMB2LeaseState;->SMB2_LEASE_WRITE_CACHING:Lcom/hierynomus/mssmb2/SMB2LeaseState;

    .line 2
    .line 3
    iget-wide v0, v0, Lcom/hierynomus/mssmb2/SMB2LeaseState;->value:J

    .line 4
    .line 5
    and-long/2addr p0, v0

    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v2, p0, v0

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
.end method

.method public static readHandle()J
    .locals 4

    .line 1
    sget-object v0, Lcom/hierynomus/mssmb2/SMB2LeaseState;->SMB2_LEASE_READ_CACHING:Lcom/hierynomus/mssmb2/SMB2LeaseState;

    .line 2
    .line 3
    iget-wide v0, v0, Lcom/hierynomus/mssmb2/SMB2LeaseState;->value:J

    .line 4
    .line 5
    sget-object v2, Lcom/hierynomus/mssmb2/SMB2LeaseState;->SMB2_LEASE_HANDLE_CACHING:Lcom/hierynomus/mssmb2/SMB2LeaseState;

    .line 6
    .line 7
    iget-wide v2, v2, Lcom/hierynomus/mssmb2/SMB2LeaseState;->value:J

    .line 8
    .line 9
    or-long/2addr v0, v2

    .line 10
    return-wide v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hierynomus/mssmb2/SMB2LeaseState;
    .locals 1

    .line 1
    const-class v0, Lcom/hierynomus/mssmb2/SMB2LeaseState;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/hierynomus/mssmb2/SMB2LeaseState;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/hierynomus/mssmb2/SMB2LeaseState;
    .locals 1

    .line 1
    sget-object v0, Lcom/hierynomus/mssmb2/SMB2LeaseState;->$VALUES:[Lcom/hierynomus/mssmb2/SMB2LeaseState;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/hierynomus/mssmb2/SMB2LeaseState;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/hierynomus/mssmb2/SMB2LeaseState;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hierynomus/mssmb2/SMB2LeaseState;->value:J

    .line 2
    .line 3
    return-wide v0
.end method
