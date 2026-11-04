.class public final synthetic Lua/l7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityTextHzh;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityTextHzh;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/l7;->a:I

    iput-object p1, p0, Lua/l7;->b:Lcom/yunpan/appmanage/ui/ActivityTextHzh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget p1, p0, Lua/l7;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lua/l7;->b:Lcom/yunpan/appmanage/ui/ActivityTextHzh;

    .line 7
    .line 8
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->H:Lua/m7;

    .line 9
    .line 10
    iput-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->I:Lua/m7;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    return p1

    .line 14
    :pswitch_0
    iget-object p1, p0, Lua/l7;->b:Lcom/yunpan/appmanage/ui/ActivityTextHzh;

    .line 15
    .line 16
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->G:Lua/m7;

    .line 17
    .line 18
    iput-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->I:Lua/m7;

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    return p1

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
