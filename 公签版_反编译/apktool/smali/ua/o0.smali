.class public final Lua/o0;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/o0;->b:I

    iput-object p1, p0, Lua/o0;->c:Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final B(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget v0, p0, Lua/o0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lua/o0;->c:Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;

    .line 18
    .line 19
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->E:Landroid/widget/ProgressBar;

    .line 20
    .line 21
    const/16 v1, 0x8

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->F:Lx9/m0;

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    const-string v1, "\u5f00\u59cb\u6388\u6743"

    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_0
    iget-object v0, p0, Lua/o0;->c:Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;

    .line 36
    .line 37
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->E:Landroid/widget/ProgressBar;

    .line 38
    .line 39
    const/16 v2, 0x8

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final E(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lua/o0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/o0;->c:Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->I:Lx9/b0;

    .line 9
    .line 10
    check-cast p1, Ljava/lang/Integer;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object v0, p0, Lua/o0;->c:Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;

    .line 21
    .line 22
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->E:Landroid/widget/ProgressBar;

    .line 23
    .line 24
    const/16 v2, 0x8

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->I:Lx9/b0;

    .line 30
    .line 31
    check-cast p1, Ljava/util/List;

    .line 32
    .line 33
    invoke-virtual {v1, p1}, Lc6/g;->E(Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->I:Lx9/b0;

    .line 37
    .line 38
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_0

    .line 43
    .line 44
    const-string p1, "\u6b64\u5e94\u7528\u65e0\u9700\u7ba1\u7406\u6743\u9650"

    .line 45
    .line 46
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lgc/b;)V
    .locals 1

    .line 1
    iget p1, p0, Lua/o0;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lua/o0;->c:Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->E:Landroid/widget/ProgressBar;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    iget-object p1, p0, Lua/o0;->c:Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->E:Landroid/widget/ProgressBar;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onComplete()V
    .locals 3

    .line 1
    iget v0, p0, Lua/o0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lua/o0;->c:Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->E:Landroid/widget/ProgressBar;

    .line 10
    .line 11
    const/16 v2, 0x8

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->F:Lx9/m0;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    const-string v2, "\u5f00\u59cb\u6388\u6743"

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    const-string v0, "\u6388\u6743\u5b8c\u6bd5"

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
