.class public final synthetic Lua/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/l0;->a:I

    iput-object p1, p0, Lua/l0;->b:Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final x(Lc6/g;Landroid/view/View;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lua/l0;->b:Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;

    .line 2
    .line 3
    iget p2, p0, Lua/l0;->a:I

    .line 4
    .line 5
    packed-switch p2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget p2, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->K:I

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance p2, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->F:Lx9/a0;

    .line 19
    .line 20
    invoke-virtual {v0, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    check-cast p3, Lcom/yunpan/appmanage/db/AppBean;

    .line 25
    .line 26
    iget-object p3, p3, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "packageName"

    .line 29
    .line 30
    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance p3, Landroid/content/Intent;

    .line 34
    .line 35
    iget-object v0, p1, Lda/g;->A:Lda/g;

    .line 36
    .line 37
    const-class v1, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;

    .line 38
    .line 39
    invoke-direct {p3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_0
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->D:Lx9/c0;

    .line 50
    .line 51
    invoke-virtual {p2, p3}, Lx9/c0;->G(I)V

    .line 52
    .line 53
    .line 54
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 55
    .line 56
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 57
    .line 58
    .line 59
    if-nez p3, :cond_0

    .line 60
    .line 61
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->H:Landroid/widget/EditText;

    .line 62
    .line 63
    const/4 p3, 0x0

    .line 64
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->H:Landroid/widget/EditText;

    .line 68
    .line 69
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 70
    .line 71
    .line 72
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->C:Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    .line 74
    const/16 p2, 0x8

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p1, p3}, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->x(I)V

    .line 81
    .line 82
    .line 83
    :goto_0
    return-void

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
