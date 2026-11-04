.class public final Lua/l4;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/l4;->b:I

    iput-object p1, p0, Lua/l4;->c:Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final B(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget v0, p0, Lua/l4;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lua/l4;->c:Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    iget-object v0, p0, Lua/l4;->c:Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->I:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 29
    .line 30
    const/16 v1, 0x8

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const/4 v0, 0x0

    .line 44
    invoke-static {p1, v0}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lgc/b;)V
    .locals 2

    .line 1
    iget p1, p0, Lua/l4;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lua/l4;->c:Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->K:Landroid/widget/TextView;

    .line 9
    .line 10
    const-string v0, "\u8bfb\u53d6\u4e2d"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object p1, p0, Lua/l4;->c:Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;

    .line 17
    .line 18
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->I:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->K:Landroid/widget/TextView;

    .line 25
    .line 26
    const-string v0, "\u4fdd\u5b58\u4e2d"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onComplete()V
    .locals 3

    .line 1
    iget v0, p0, Lua/l4;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/l4;->c:Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->I:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    .line 10
    const/16 v2, 0x8

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->D:Lx9/r3;

    .line 16
    .line 17
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->G:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lc6/g;->E(Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->F:Lx9/r3;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->H:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_0
    iget-object v0, p0, Lua/l4;->c:Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->I:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 33
    .line 34
    const/16 v1, 0x8

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    const-string v0, "\u4fdd\u5b58\u6210\u529f"

    .line 40
    .line 41
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

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
