.class public final Lua/n;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/n;->b:I

    iput-object p1, p0, Lua/n;->c:Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget v0, p0, Lua/n;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    .line 9
    .line 10
    const-string p1, "\u65e0\u6cd5\u83b7\u53d6\u6570\u636e"

    .line 11
    .line 12
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lua/n;->c:Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;

    .line 16
    .line 17
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->F:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 18
    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->D:Lx9/n;

    .line 25
    .line 26
    iget-object v1, p1, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->E:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->E:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->G:Landroid/widget/LinearLayout;

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lgc/b;)V
    .locals 2

    .line 1
    iget p1, p0, Lua/n;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lua/n;->c:Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;

    .line 7
    .line 8
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->G:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->F:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_0
    iget-object p1, p0, Lua/n;->c:Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->I:Landroid/widget/TextView;

    .line 30
    .line 31
    const-string v0, "\u5bfc\u51fa\u4e2d"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onComplete()V
    .locals 3

    .line 1
    iget v0, p0, Lua/n;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/n;->c:Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->F:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    .line 10
    const/16 v2, 0x8

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->D:Lx9/n;

    .line 16
    .line 17
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->E:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lc6/g;->E(Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->E:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->G:Landroid/widget/LinearLayout;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void

    .line 37
    :pswitch_0
    iget-object v0, p0, Lua/n;->c:Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->I:Landroid/widget/TextView;

    .line 40
    .line 41
    const-string v1, "\u5bfc\u51fa"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
