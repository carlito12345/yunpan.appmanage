.class public final synthetic Lua/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/r;->a:I

    iput-object p1, p0, Lua/r;->b:Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    const-string p1, "\u5df2\u91cd\u65b0\u6392\u5e8f"

    .line 2
    .line 3
    iget-object v0, p0, Lua/r;->b:Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;

    .line 4
    .line 5
    iget v1, p0, Lua/r;->a:I

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;->E:Ljava/util/ArrayList;

    .line 16
    .line 17
    new-instance v2, Lqa/e;

    .line 18
    .line 19
    const/16 v3, 0x9

    .line 20
    .line 21
    invoke-direct {v2, v3}, Lqa/e;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;->D:Lx9/i;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;->E:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_0
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 41
    .line 42
    .line 43
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;->E:Ljava/util/ArrayList;

    .line 44
    .line 45
    new-instance v2, Lqa/e;

    .line 46
    .line 47
    const/16 v3, 0x8

    .line 48
    .line 49
    invoke-direct {v2, v3}, Lqa/e;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;->D:Lx9/i;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;->E:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_1
    sget p1, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;->H:I

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
