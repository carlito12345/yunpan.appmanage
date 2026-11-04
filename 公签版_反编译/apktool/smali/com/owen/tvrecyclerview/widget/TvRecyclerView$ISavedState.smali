.class public Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/owen/tvrecyclerview/widget/TvRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ISavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHasMoreData:Z

.field private mHorizontalSpacingWithMargins:I

.field private mISuperState:Landroid/os/Parcelable;

.field private mIsMenu:Z

.field private mIsSelectFirstVisiblePosition:Z

.field private mOldHorizontalSpacingWithMargins:I

.field private mOldVerticalSpacingWithMargins:I

.field private mSelectedItemCentered:Z

.field private mSelectedItemOffsetEnd:I

.field private mSelectedItemOffsetStart:I

.field private mSelectedPosition:I

.field private mVerticalSpacingWithMargins:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 3
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mISuperState:Landroid/os/Parcelable;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mSelectedPosition:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mVerticalSpacingWithMargins:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mHorizontalSpacingWithMargins:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mOldVerticalSpacingWithMargins:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mOldHorizontalSpacingWithMargins:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mSelectedItemOffsetStart:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mSelectedItemOffsetEnd:I

    const/4 v0, 0x4

    .line 11
    new-array v0, v0, [Z

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    const/4 p1, 0x0

    .line 13
    aget-boolean p1, v0, p1

    iput-boolean p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mSelectedItemCentered:Z

    const/4 p1, 0x1

    .line 14
    aget-boolean p1, v0, p1

    iput-boolean p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mIsMenu:Z

    const/4 p1, 0x2

    .line 15
    aget-boolean p1, v0, p1

    iput-boolean p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mHasMoreData:Z

    const/4 p1, 0x3

    .line 16
    aget-boolean p1, v0, p1

    iput-boolean p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mIsSelectFirstVisiblePosition:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mHasMoreData:Z

    return p0
.end method

.method public static bridge synthetic b(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mHorizontalSpacingWithMargins:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;)Landroid/os/Parcelable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mISuperState:Landroid/os/Parcelable;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mIsMenu:Z

    return p0
.end method

.method public static bridge synthetic e(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mIsSelectFirstVisiblePosition:Z

    return p0
.end method

.method public static bridge synthetic f(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mOldHorizontalSpacingWithMargins:I

    return p0
.end method

.method public static bridge synthetic g(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mOldVerticalSpacingWithMargins:I

    return p0
.end method

.method public static bridge synthetic h(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mSelectedItemCentered:Z

    return p0
.end method

.method public static bridge synthetic i(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mSelectedItemOffsetEnd:I

    return p0
.end method

.method public static bridge synthetic j(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mSelectedItemOffsetStart:I

    return p0
.end method

.method public static bridge synthetic k(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mSelectedPosition:I

    return p0
.end method

.method public static bridge synthetic l(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mVerticalSpacingWithMargins:I

    return p0
.end method

.method public static bridge synthetic m(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mHasMoreData:Z

    return-void
.end method

.method public static bridge synthetic n(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mHorizontalSpacingWithMargins:I

    return-void
.end method

.method public static bridge synthetic o(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;Landroidx/recyclerview/widget/j2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mISuperState:Landroid/os/Parcelable;

    return-void
.end method

.method public static bridge synthetic p(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mIsMenu:Z

    return-void
.end method

.method public static bridge synthetic q(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mIsSelectFirstVisiblePosition:Z

    return-void
.end method

.method public static bridge synthetic r(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mOldHorizontalSpacingWithMargins:I

    return-void
.end method

.method public static bridge synthetic s(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mOldVerticalSpacingWithMargins:I

    return-void
.end method

.method public static bridge synthetic t(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mSelectedItemCentered:Z

    return-void
.end method

.method public static bridge synthetic u(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mSelectedItemOffsetEnd:I

    return-void
.end method

.method public static bridge synthetic v(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mSelectedItemOffsetStart:I

    return-void
.end method

.method public static bridge synthetic w(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mSelectedPosition:I

    return-void
.end method

.method public static bridge synthetic x(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mVerticalSpacingWithMargins:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mISuperState:Landroid/os/Parcelable;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 8
    .line 9
    .line 10
    iget p2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mSelectedPosition:I

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    .line 14
    .line 15
    iget p2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mVerticalSpacingWithMargins:I

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    .line 19
    .line 20
    iget p2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mHorizontalSpacingWithMargins:I

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    .line 24
    .line 25
    iget p2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mOldVerticalSpacingWithMargins:I

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    .line 29
    .line 30
    iget p2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mOldHorizontalSpacingWithMargins:I

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    .line 34
    .line 35
    iget p2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mSelectedItemOffsetStart:I

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    .line 39
    .line 40
    iget p2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mSelectedItemOffsetEnd:I

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    .line 44
    .line 45
    iget-boolean p2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mSelectedItemCentered:Z

    .line 46
    .line 47
    iget-boolean v1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mIsMenu:Z

    .line 48
    .line 49
    iget-boolean v2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mHasMoreData:Z

    .line 50
    .line 51
    iget-boolean v3, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->mIsSelectFirstVisiblePosition:Z

    .line 52
    .line 53
    const/4 v4, 0x4

    .line 54
    new-array v4, v4, [Z

    .line 55
    .line 56
    aput-boolean p2, v4, v0

    .line 57
    .line 58
    const/4 p2, 0x1

    .line 59
    aput-boolean v1, v4, p2

    .line 60
    .line 61
    const/4 p2, 0x2

    .line 62
    aput-boolean v2, v4, p2

    .line 63
    .line 64
    const/4 p2, 0x3

    .line 65
    aput-boolean v3, v4, p2

    .line 66
    .line 67
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 68
    .line 69
    .line 70
    return-void
.end method
