.class public Lcom/owen/tvrecyclerview/Lanes$LaneInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/owen/tvrecyclerview/Lanes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LaneInfo"
.end annotation


# instance fields
.field public anchorLane:I

.field public startLane:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public isUndefined()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;->startLane:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    iget v0, p0, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;->anchorLane:I

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 14
    :goto_1
    return v0
.end method

.method public set(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;->startLane:I

    .line 2
    .line 3
    iput p2, p0, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;->anchorLane:I

    .line 4
    .line 5
    return-void
.end method

.method public setUndefined()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;->startLane:I

    .line 3
    .line 4
    iput v0, p0, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;->anchorLane:I

    .line 5
    .line 6
    return-void
.end method
