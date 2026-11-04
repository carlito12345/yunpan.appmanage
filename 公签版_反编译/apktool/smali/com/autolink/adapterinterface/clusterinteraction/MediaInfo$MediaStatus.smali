.class public final enum Lcom/autolink/adapterinterface/clusterinteraction/MediaInfo$MediaStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autolink/adapterinterface/clusterinteraction/MediaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/autolink/adapterinterface/clusterinteraction/MediaInfo$MediaStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autolink/adapterinterface/clusterinteraction/MediaInfo$MediaStatus;

.field public static final enum START_MEDIA_PROJECTION_SCREEN:Lcom/autolink/adapterinterface/clusterinteraction/MediaInfo$MediaStatus;

.field public static final enum STOP_MEDIA_PROJECTION_SCREEN:Lcom/autolink/adapterinterface/clusterinteraction/MediaInfo$MediaStatus;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/autolink/adapterinterface/clusterinteraction/MediaInfo$MediaStatus;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lcom/autolink/adapterinterface/clusterinteraction/MediaInfo$MediaStatus;

    .line 3
    .line 4
    sget-object v1, Lcom/autolink/adapterinterface/clusterinteraction/MediaInfo$MediaStatus;->START_MEDIA_PROJECTION_SCREEN:Lcom/autolink/adapterinterface/clusterinteraction/MediaInfo$MediaStatus;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/autolink/adapterinterface/clusterinteraction/MediaInfo$MediaStatus;->STOP_MEDIA_PROJECTION_SCREEN:Lcom/autolink/adapterinterface/clusterinteraction/MediaInfo$MediaStatus;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/autolink/adapterinterface/clusterinteraction/MediaInfo$MediaStatus;

    .line 2
    .line 3
    const-string v1, "START_MEDIA_PROJECTION_SCREEN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/autolink/adapterinterface/clusterinteraction/MediaInfo$MediaStatus;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/autolink/adapterinterface/clusterinteraction/MediaInfo$MediaStatus;->START_MEDIA_PROJECTION_SCREEN:Lcom/autolink/adapterinterface/clusterinteraction/MediaInfo$MediaStatus;

    .line 11
    .line 12
    new-instance v0, Lcom/autolink/adapterinterface/clusterinteraction/MediaInfo$MediaStatus;

    .line 13
    .line 14
    const-string v1, "STOP_MEDIA_PROJECTION_SCREEN"

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-direct {v0, v1, v3, v2}, Lcom/autolink/adapterinterface/clusterinteraction/MediaInfo$MediaStatus;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/autolink/adapterinterface/clusterinteraction/MediaInfo$MediaStatus;->STOP_MEDIA_PROJECTION_SCREEN:Lcom/autolink/adapterinterface/clusterinteraction/MediaInfo$MediaStatus;

    .line 21
    .line 22
    invoke-static {}, Lcom/autolink/adapterinterface/clusterinteraction/MediaInfo$MediaStatus;->$values()[Lcom/autolink/adapterinterface/clusterinteraction/MediaInfo$MediaStatus;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/autolink/adapterinterface/clusterinteraction/MediaInfo$MediaStatus;->$VALUES:[Lcom/autolink/adapterinterface/clusterinteraction/MediaInfo$MediaStatus;

    .line 27
    .line 28
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
    iput p3, p0, Lcom/autolink/adapterinterface/clusterinteraction/MediaInfo$MediaStatus;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/autolink/adapterinterface/clusterinteraction/MediaInfo$MediaStatus;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, v0, :cond_0

    .line 3
    .line 4
    sget-object p0, Lcom/autolink/adapterinterface/clusterinteraction/MediaInfo$MediaStatus;->START_MEDIA_PROJECTION_SCREEN:Lcom/autolink/adapterinterface/clusterinteraction/MediaInfo$MediaStatus;

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    const/4 v0, 0x2

    .line 8
    if-eq p0, v0, :cond_1

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    :cond_1
    sget-object p0, Lcom/autolink/adapterinterface/clusterinteraction/MediaInfo$MediaStatus;->STOP_MEDIA_PROJECTION_SCREEN:Lcom/autolink/adapterinterface/clusterinteraction/MediaInfo$MediaStatus;

    .line 13
    .line 14
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autolink/adapterinterface/clusterinteraction/MediaInfo$MediaStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/autolink/adapterinterface/clusterinteraction/MediaInfo$MediaStatus;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/autolink/adapterinterface/clusterinteraction/MediaInfo$MediaStatus;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/autolink/adapterinterface/clusterinteraction/MediaInfo$MediaStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/autolink/adapterinterface/clusterinteraction/MediaInfo$MediaStatus;->$VALUES:[Lcom/autolink/adapterinterface/clusterinteraction/MediaInfo$MediaStatus;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/autolink/adapterinterface/clusterinteraction/MediaInfo$MediaStatus;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/autolink/adapterinterface/clusterinteraction/MediaInfo$MediaStatus;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autolink/adapterinterface/clusterinteraction/MediaInfo$MediaStatus;->value:I

    .line 2
    .line 3
    return v0
.end method
