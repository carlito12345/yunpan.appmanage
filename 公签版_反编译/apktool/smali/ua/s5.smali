.class public final synthetic Lua/s5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityPresentation2;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityPresentation2;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/s5;->a:I

    iput-object p1, p0, Lua/s5;->b:Lcom/yunpan/appmanage/ui/ActivityPresentation2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lua/s5;->b:Lcom/yunpan/appmanage/ui/ActivityPresentation2;

    .line 2
    .line 3
    iget v0, p0, Lua/s5;->a:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Lcom/yunpan/appmanage/ui/ActivityPresentation2;->H:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/yunpan/appmanage/ui/ActivityPresentation2;->x()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    sget v0, Lcom/yunpan/appmanage/ui/ActivityPresentation2;->H:I

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
