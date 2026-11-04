.class public final Lua/s1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;


# instance fields
.field public final synthetic a:Lcom/yunpan/appmanage/ui/ActivityDownload;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/ui/ActivityDownload;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/s1;->a:Lcom/yunpan/appmanage/ui/ActivityDownload;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;Landroid/view/View;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onItemPreSelected(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;Landroid/view/View;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onItemSelected(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;Landroid/view/View;I)V
    .locals 1

    .line 1
    if-eqz p2, :cond_2

    .line 2
    .line 3
    sget p1, Lcom/yunpan/appmanage/ui/ActivityDownload;->P0:I

    .line 4
    .line 5
    iget-object p1, p0, Lua/s1;->a:Lcom/yunpan/appmanage/ui/ActivityDownload;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/yunpan/appmanage/ui/ActivityDownload;->B()V

    .line 8
    .line 9
    .line 10
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityDownload;->T:Lx9/t0;

    .line 11
    .line 12
    invoke-virtual {p2, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;

    .line 17
    .line 18
    iget-object p2, p2, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;->name:Ljava/lang/String;

    .line 19
    .line 20
    const-string p3, "\u626b\u7801"

    .line 21
    .line 22
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    if-eqz p3, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/yunpan/appmanage/ui/ActivityDownload;->F()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string p3, "\u8bf4\u660e"

    .line 33
    .line 34
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    const/4 v0, 0x0

    .line 39
    if-eqz p3, :cond_1

    .line 40
    .line 41
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityDownload;->O:Landroid/widget/TextView;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const-string p3, "\u5386\u53f2"

    .line 48
    .line 49
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-eqz p2, :cond_2

    .line 54
    .line 55
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityDownload;->M:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_0
    return-void
.end method
