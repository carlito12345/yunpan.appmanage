.class public final Lua/j0;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/yunpan/appmanage/ui/ActivityApps;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityApps;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/j0;->b:I

    iput-object p1, p0, Lua/j0;->c:Lcom/yunpan/appmanage/ui/ActivityApps;

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public E(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lua/j0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lua/j0;->c:Lcom/yunpan/appmanage/ui/ActivityApps;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityApps;->F:Lx9/a0;

    .line 10
    .line 11
    check-cast p1, Ljava/util/List;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lc6/g;->E(Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityApps;->G:Landroid/widget/LinearLayout;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityApps;->F:Lx9/a0;

    .line 19
    .line 20
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/16 v0, 0x8

    .line 29
    .line 30
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lgc/b;)V
    .locals 0

    .line 1
    iget p1, p0, Lua/j0;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    const-string p1, "\u5237\u65b0\u56fe\u6807\u4e2d..."

    .line 8
    .line 9
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onComplete()V
    .locals 4

    .line 1
    iget v0, p0, Lua/j0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    const-string v0, "\u5237\u65b0\u5b8c\u6210"

    .line 8
    .line 9
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lua/j0;->c:Lcom/yunpan/appmanage/ui/ActivityApps;

    .line 13
    .line 14
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityApps;->D:Lx9/c0;

    .line 15
    .line 16
    invoke-virtual {v1}, Lx9/c0;->F()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityApps;->C:Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityApps;->I:Landroid/widget/EditText;

    .line 29
    .line 30
    const/16 v3, 0x8

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityApps;->D:Lx9/c0;

    .line 36
    .line 37
    const/4 v3, 0x2

    .line 38
    invoke-virtual {v2, v3}, Lx9/c0;->G(I)V

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {v0, v1}, Lcom/yunpan/appmanage/ui/ActivityApps;->x(I)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
