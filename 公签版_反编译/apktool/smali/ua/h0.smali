.class public final synthetic Lua/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityApps;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityApps;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/h0;->a:I

    iput-object p1, p0, Lua/h0;->b:Lcom/yunpan/appmanage/ui/ActivityApps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final x(Lc6/g;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget p2, p0, Lua/h0;->a:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lua/h0;->b:Lcom/yunpan/appmanage/ui/ActivityApps;

    .line 7
    .line 8
    iget-object p2, p2, Lcom/yunpan/appmanage/ui/ActivityApps;->H:Lha/o2;

    .line 9
    .line 10
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/yunpan/appmanage/db/AppBean;

    .line 15
    .line 16
    invoke-virtual {p2, p3, p1}, Lha/o2;->e(ILcom/yunpan/appmanage/db/AppBean;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object p1, p0, Lua/h0;->b:Lcom/yunpan/appmanage/ui/ActivityApps;

    .line 21
    .line 22
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityApps;->D:Lx9/c0;

    .line 23
    .line 24
    invoke-virtual {p2, p3}, Lx9/c0;->G(I)V

    .line 25
    .line 26
    .line 27
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityApps;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 28
    .line 29
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 30
    .line 31
    .line 32
    if-nez p3, :cond_0

    .line 33
    .line 34
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityApps;->I:Landroid/widget/EditText;

    .line 35
    .line 36
    const/4 p3, 0x0

    .line 37
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityApps;->I:Landroid/widget/EditText;

    .line 41
    .line 42
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 43
    .line 44
    .line 45
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityApps;->C:Landroidx/recyclerview/widget/RecyclerView;

    .line 46
    .line 47
    const/16 p2, 0x8

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p1, p3}, Lcom/yunpan/appmanage/ui/ActivityApps;->x(I)V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
