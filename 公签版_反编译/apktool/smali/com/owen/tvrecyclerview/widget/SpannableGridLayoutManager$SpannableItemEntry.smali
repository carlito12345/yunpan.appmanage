.class public Lcom/owen/tvrecyclerview/widget/SpannableGridLayoutManager$SpannableItemEntry;
.super Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/owen/tvrecyclerview/widget/SpannableGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpannableItemEntry"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/owen/tvrecyclerview/widget/SpannableGridLayoutManager$SpannableItemEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final colSpan:I

.field private final rowSpan:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/owen/tvrecyclerview/widget/SpannableGridLayoutManager$SpannableItemEntry$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/owen/tvrecyclerview/widget/SpannableGridLayoutManager$SpannableItemEntry$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/owen/tvrecyclerview/widget/SpannableGridLayoutManager$SpannableItemEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;-><init>(II)V

    .line 2
    iput p3, p0, Lcom/owen/tvrecyclerview/widget/SpannableGridLayoutManager$SpannableItemEntry;->colSpan:I

    .line 3
    iput p4, p0, Lcom/owen/tvrecyclerview/widget/SpannableGridLayoutManager$SpannableItemEntry;->rowSpan:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 4
    invoke-direct {p0, p1}, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;-><init>(Landroid/os/Parcel;)V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/owen/tvrecyclerview/widget/SpannableGridLayoutManager$SpannableItemEntry;->colSpan:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/owen/tvrecyclerview/widget/SpannableGridLayoutManager$SpannableItemEntry;->rowSpan:I

    return-void
.end method

.method public static bridge synthetic d(Lcom/owen/tvrecyclerview/widget/SpannableGridLayoutManager$SpannableItemEntry;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/owen/tvrecyclerview/widget/SpannableGridLayoutManager$SpannableItemEntry;->colSpan:I

    return p0
.end method

.method public static bridge synthetic e(Lcom/owen/tvrecyclerview/widget/SpannableGridLayoutManager$SpannableItemEntry;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/owen/tvrecyclerview/widget/SpannableGridLayoutManager$SpannableItemEntry;->rowSpan:I

    return p0
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->describeContents()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic invalidateLane()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->invalidateLane()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic setLane(Lcom/owen/tvrecyclerview/Lanes$LaneInfo;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->setLane(Lcom/owen/tvrecyclerview/Lanes$LaneInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    iget p2, p0, Lcom/owen/tvrecyclerview/widget/SpannableGridLayoutManager$SpannableItemEntry;->colSpan:I

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    iget p2, p0, Lcom/owen/tvrecyclerview/widget/SpannableGridLayoutManager$SpannableItemEntry;->rowSpan:I

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
