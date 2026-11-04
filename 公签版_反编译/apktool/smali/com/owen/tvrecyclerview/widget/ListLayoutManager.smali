.class public Lcom/owen/tvrecyclerview/widget/ListLayoutManager;
.super Lcom/owen/tvrecyclerview/BaseLayoutManager;
.source "SourceFile"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "ListLayoutManager"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/owen/tvrecyclerview/widget/ListLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/owen/tvrecyclerview/BaseLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;)V
    .locals 0

    .line 3
    invoke-direct {p0, p2}, Lcom/owen/tvrecyclerview/BaseLayoutManager;-><init>(Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;)V

    return-void
.end method


# virtual methods
.method public getLaneCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getLaneForPosition(Lcom/owen/tvrecyclerview/Lanes$LaneInfo;ILcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2, p2}, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;->set(II)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public moveLayoutToPosition(IILandroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->getLanes()Lcom/owen/tvrecyclerview/Lanes;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Lcom/owen/tvrecyclerview/Lanes;->reset(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
