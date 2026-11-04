.class Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller;->onStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller;

.field final synthetic val$position:I


# direct methods
.method public constructor <init>(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller$1;->this$1:Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller;

    .line 2
    .line 3
    iput p2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller$1;->val$position:I

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
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller$1;->this$1:Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller;->this$0:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller$1;->val$position:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, "zzssqq position="

    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget v2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller$1;->val$position:I

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1}, Lcom/owen/tvrecyclerview/utils/Loger;->i(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller$1;->this$1:Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller;->this$0:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_0

    .line 45
    .line 46
    iget-object v1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller$1;->this$1:Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller;

    .line 47
    .line 48
    iget-object v1, v1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller;->this$0:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 49
    .line 50
    const/16 v2, 0x82

    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    const/4 v4, 0x1

    .line 54
    invoke-static {v1, v4, v2, v3}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->access$100(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;ZILandroid/graphics/Rect;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v1, "zzssqq itemView is null position="

    .line 64
    .line 65
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget v1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller$1;->val$position:I

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v0}, Lcom/owen/tvrecyclerview/utils/Loger;->i(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    return-void
.end method
