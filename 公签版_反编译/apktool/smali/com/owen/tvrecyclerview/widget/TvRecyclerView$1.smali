.class Lcom/owen/tvrecyclerview/widget/TvRecyclerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field final synthetic val$isRv:Z

.field final synthetic val$itemView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;ZLandroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$1;->this$0:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$1;->val$isRv:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$1;->val$itemView:Landroid/view/View;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$1;->this$0:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$1;->this$0:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->r(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$1;->val$isRv:Z

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$1;->val$itemView:Landroid/view/View;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$1;->this$0:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$1;->this$0:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$1;->this$0:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-interface {v0, v1, v2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method
