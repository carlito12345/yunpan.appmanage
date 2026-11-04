.class public Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;
.super Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MetroItemEntry"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final colSpan:I

.field private final isSectionStart:Z

.field private final rowSpan:I

.field private final scale:I

.field private final sectionIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(IIIIIIZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;-><init>(II)V

    .line 2
    iput p3, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;->colSpan:I

    .line 3
    iput p4, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;->rowSpan:I

    .line 4
    iput p5, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;->scale:I

    .line 5
    iput p6, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;->sectionIndex:I

    .line 6
    iput-boolean p7, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;->isSectionStart:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 7
    invoke-direct {p0, p1}, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;-><init>(Landroid/os/Parcel;)V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;->colSpan:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;->rowSpan:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;->scale:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;->sectionIndex:I

    const/4 v0, 0x1

    .line 12
    new-array v0, v0, [Z

    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    const/4 p1, 0x0

    .line 14
    aget-boolean p1, v0, p1

    iput-boolean p1, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;->isSectionStart:Z

    return-void
.end method

.method public static bridge synthetic d(Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;->isSectionStart:Z

    return p0
.end method

.method public static bridge synthetic e(Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;->sectionIndex:I

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

.method public getColSpan()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;->colSpan:I

    .line 2
    .line 3
    iget v1, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;->scale:I

    .line 4
    .line 5
    mul-int v0, v0, v1

    .line 6
    .line 7
    return v0
.end method

.method public getRowSpan()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;->rowSpan:I

    .line 2
    .line 3
    iget v1, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;->scale:I

    .line 4
    .line 5
    mul-int v0, v0, v1

    .line 6
    .line 7
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
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    iget p2, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;->colSpan:I

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    iget p2, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;->rowSpan:I

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    .line 13
    .line 14
    iget p2, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;->scale:I

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    .line 18
    .line 19
    iget p2, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;->sectionIndex:I

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    .line 23
    .line 24
    iget-boolean p2, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;->isSectionStart:Z

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    new-array v0, v0, [Z

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    aput-boolean p2, v0, v1

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
