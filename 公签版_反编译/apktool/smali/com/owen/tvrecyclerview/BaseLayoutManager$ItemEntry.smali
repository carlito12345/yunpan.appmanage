.class public Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/owen/tvrecyclerview/BaseLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemEntry"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public anchorLane:I

.field private spanMargins:[I

.field public startLane:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->startLane:I

    .line 3
    iput p2, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->anchorLane:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->startLane:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->anchorLane:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    .line 8
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->spanMargins:[I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    iget-object v2, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->spanMargins:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static bridge synthetic a(ILcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;)I
    .locals 0

    .line 1
    invoke-direct {p1, p0}, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->getSpanMargin(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->hasSpanMargins()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;III)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->setSpanMargin(III)V

    return-void
.end method

.method private getSpanMargin(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->spanMargins:[I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    aget p1, v0, p1

    .line 8
    .line 9
    return p1
.end method

.method private hasSpanMargins()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->spanMargins:[I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method private setSpanMargin(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->spanMargins:[I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-array p3, p3, [I

    .line 6
    .line 7
    iput-object p3, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->spanMargins:[I

    .line 8
    .line 9
    :cond_0
    iget-object p3, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->spanMargins:[I

    .line 10
    .line 11
    aput p2, p3, p1

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public invalidateLane()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->startLane:I

    .line 3
    .line 4
    iput v0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->anchorLane:I

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->spanMargins:[I

    .line 8
    .line 9
    return-void
.end method

.method public setLane(Lcom/owen/tvrecyclerview/Lanes$LaneInfo;)V
    .locals 1

    .line 1
    iget v0, p1, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;->startLane:I

    .line 2
    .line 3
    iput v0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->startLane:I

    .line 4
    .line 5
    iget p1, p1, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;->anchorLane:I

    .line 6
    .line 7
    iput p1, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->anchorLane:I

    .line 8
    .line 9
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget p2, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->startLane:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->anchorLane:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->spanMargins:[I

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    array-length p2, p2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p2, 0x0

    .line 19
    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    .line 21
    .line 22
    :goto_1
    if-ge v0, p2, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->spanMargins:[I

    .line 25
    .line 26
    aget v1, v1, v0

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    return-void
.end method
