.class Lcom/owen/tvrecyclerview/widget/TvRecyclerView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field final synthetic val$position:I


# direct methods
.method public constructor <init>(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$2;->this$0:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 2
    .line 3
    iput p2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$2;->val$position:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$2;->this$0:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/m1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$2;->val$position:I

    .line 10
    .line 11
    if-ltz v0, :cond_4

    .line 12
    .line 13
    iget-object v1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$2;->this$0:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getItemCount()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-lt v0, v1, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$2;->this$0:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 23
    .line 24
    iget v1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$2;->val$position:I

    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->v(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$2;->this$0:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v1, 0x0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$2;->this$0:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget v2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$2;->val$position:I

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move-object v0, v1

    .line 52
    :goto_0
    if-eqz v0, :cond_3

    .line 53
    .line 54
    iget-object v2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$2;->this$0:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-nez v2, :cond_2

    .line 61
    .line 62
    iget-object v2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$2;->this$0:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 63
    .line 64
    const/4 v3, 0x1

    .line 65
    const/16 v4, 0x82

    .line 66
    .line 67
    invoke-static {v2, v3, v4, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->access$000(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;ZILandroid/graphics/Rect;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    new-instance v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller;

    .line 75
    .line 76
    iget-object v6, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$2;->this$0:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 77
    .line 78
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    iget-object v1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$2;->this$0:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 83
    .line 84
    invoke-static {v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->t(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;)I

    .line 85
    .line 86
    .line 87
    move-result v10

    .line 88
    const/4 v8, 0x1

    .line 89
    const/4 v9, 0x0

    .line 90
    move-object v5, v0

    .line 91
    invoke-direct/range {v5 .. v10}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller;-><init>(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;Landroid/content/Context;ZZI)V

    .line 92
    .line 93
    .line 94
    iget v1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$2;->val$position:I

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/m2;->setTargetPosition(I)V

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$2;->this$0:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 100
    .line 101
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/m2;)V

    .line 106
    .line 107
    .line 108
    :cond_4
    :goto_1
    return-void
.end method
