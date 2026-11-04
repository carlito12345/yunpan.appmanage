.class public final synthetic Lua/q2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityInstaller;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityInstaller;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/q2;->a:I

    iput-object p1, p0, Lua/q2;->b:Lcom/yunpan/appmanage/ui/ActivityInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lua/q2;->b:Lcom/yunpan/appmanage/ui/ActivityInstaller;

    .line 2
    .line 3
    iget v0, p0, Lua/q2;->a:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityInstaller;->H:Lff/c;

    .line 9
    .line 10
    iget-object v0, v0, Lff/c;->a:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {p1, v0}, Lif/a;->z0(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    sget v0, Lcom/yunpan/appmanage/ui/ActivityInstaller;->P:I

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
