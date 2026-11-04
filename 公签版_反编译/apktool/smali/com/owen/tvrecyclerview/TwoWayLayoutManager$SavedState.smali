.class public Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/owen/tvrecyclerview/TwoWayLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;",
            ">;"
        }
    .end annotation
.end field

.field protected static final EMPTY_STATE:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;


# instance fields
.field private anchorItemPosition:I

.field private itemSelectionState:Landroid/os/Bundle;

.field private final superState:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;->EMPTY_STATE:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;

    .line 7
    .line 8
    new-instance v0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;->superState:Landroid/os/Parcelable;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-object v0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;->EMPTY_STATE:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;

    iput-object v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;->superState:Landroid/os/Parcelable;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;->anchorItemPosition:I

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    iput-object p1, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;->itemSelectionState:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 4
    sget-object v0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;->EMPTY_STATE:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;->superState:Landroid/os/Parcelable;

    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "superState must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static bridge synthetic a(Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;->anchorItemPosition:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;)Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;->itemSelectionState:Landroid/os/Bundle;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;->anchorItemPosition:I

    return-void
.end method

.method public static bridge synthetic d(Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;->itemSelectionState:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSuperState()Landroid/os/Parcelable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;->superState:Landroid/os/Parcelable;

    .line 2
    .line 3
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;->anchorItemPosition:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;->itemSelectionState:Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
