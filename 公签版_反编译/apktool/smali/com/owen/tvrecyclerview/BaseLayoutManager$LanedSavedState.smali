.class public Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;
.super Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/owen/tvrecyclerview/BaseLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LanedSavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private itemEntries:Lcom/owen/tvrecyclerview/ItemEntries;

.field private laneSize:F

.field private lanes:[Landroid/graphics/Rect;

.field private orientation:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 3
    invoke-direct {p0, p1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;-><init>(Landroid/os/Parcel;)V

    .line 4
    invoke-static {}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;->values()[Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;->orientation:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;->laneSize:F

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 7
    new-array v2, v0, [Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;->lanes:[Landroid/graphics/Rect;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 8
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 9
    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 10
    iget-object v4, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;->lanes:[Landroid/graphics/Rect;

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    .line 12
    new-instance v2, Lcom/owen/tvrecyclerview/ItemEntries;

    invoke-direct {v2}, Lcom/owen/tvrecyclerview/ItemEntries;-><init>()V

    iput-object v2, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;->itemEntries:Lcom/owen/tvrecyclerview/ItemEntries;

    :goto_1
    if-ge v1, v0, :cond_1

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;

    .line 14
    iget-object v3, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;->itemEntries:Lcom/owen/tvrecyclerview/ItemEntries;

    invoke-virtual {v3, v1, v2}, Lcom/owen/tvrecyclerview/ItemEntries;->restoreItemEntry(ILcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;)Lcom/owen/tvrecyclerview/ItemEntries;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;->itemEntries:Lcom/owen/tvrecyclerview/ItemEntries;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;->laneSize:F

    return p0
.end method

.method public static bridge synthetic g(Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;)[Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;->lanes:[Landroid/graphics/Rect;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;)Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;->orientation:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;Lcom/owen/tvrecyclerview/ItemEntries;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;->itemEntries:Lcom/owen/tvrecyclerview/ItemEntries;

    return-void
.end method

.method public static bridge synthetic j(Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;->laneSize:F

    return-void
.end method

.method public static bridge synthetic k(Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;[Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;->lanes:[Landroid/graphics/Rect;

    return-void
.end method

.method public static bridge synthetic l(Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;->orientation:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;->orientation:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;->laneSize:F

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;->lanes:[Landroid/graphics/Rect;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    array-length v0, v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    :goto_1
    if-ge v2, v0, :cond_1

    .line 31
    .line 32
    iget-object v3, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;->lanes:[Landroid/graphics/Rect;

    .line 33
    .line 34
    aget-object v3, v3, v2

    .line 35
    .line 36
    const/4 v4, 0x1

    .line 37
    invoke-virtual {v3, p1, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;->itemEntries:Lcom/owen/tvrecyclerview/ItemEntries;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/owen/tvrecyclerview/ItemEntries;->size()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/4 v0, 0x0

    .line 53
    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    .line 55
    .line 56
    :goto_3
    if-ge v1, v0, :cond_3

    .line 57
    .line 58
    iget-object v2, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;->itemEntries:Lcom/owen/tvrecyclerview/ItemEntries;

    .line 59
    .line 60
    invoke-virtual {v2, v1}, Lcom/owen/tvrecyclerview/ItemEntries;->getItemEntry(I)Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 65
    .line 66
    .line 67
    add-int/lit8 v1, v1, 0x1

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_3
    return-void
.end method
