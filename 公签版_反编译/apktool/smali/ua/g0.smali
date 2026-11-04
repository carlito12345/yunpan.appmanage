.class public final synthetic Lua/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityApps;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityApps;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/g0;->a:I

    iput-object p1, p0, Lua/g0;->b:Lcom/yunpan/appmanage/ui/ActivityApps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lua/g0;->b:Lcom/yunpan/appmanage/ui/ActivityApps;

    .line 2
    .line 3
    iget v1, p0, Lua/g0;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v1, Lcom/yunpan/appmanage/ui/ActivityApps;->L:I

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v1, Landroid/widget/PopupMenu;

    .line 14
    .line 15
    iget-object v2, v0, Lda/g;->A:Lda/g;

    .line 16
    .line 17
    invoke-direct {v1, v2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/high16 v3, 0x7f100000

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v2, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 31
    .line 32
    .line 33
    new-instance v2, Lua/i0;

    .line 34
    .line 35
    invoke-direct {v2, v0, p1}, Lua/i0;-><init>(Lcom/yunpan/appmanage/ui/ActivityApps;Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_0
    sget p1, Lcom/yunpan/appmanage/ui/ActivityApps;->L:I

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
