.class public final synthetic Lua/h3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public synthetic constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/h3;->a:I

    iput-object p1, p0, Lua/h3;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    const/4 p1, 0x0

    .line 2
    iget-object v0, p0, Lua/h3;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 3
    .line 4
    const/16 v1, 0x13

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    const/16 v3, 0x14

    .line 8
    .line 9
    iget v4, p0, Lua/h3;->a:I

    .line 10
    .line 11
    packed-switch v4, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    sget v4, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissanSet;->E:I

    .line 15
    .line 16
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    if-nez p3, :cond_1

    .line 21
    .line 22
    if-ne p2, v3, :cond_0

    .line 23
    .line 24
    :goto_0
    const/4 p1, 0x1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    if-ne p2, v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    :goto_1
    return p1

    .line 33
    :pswitch_0
    sget v4, Lcom/yunpan/appmanage/ui/ActivityKeyMapAccSet;->E:I

    .line 34
    .line 35
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    if-nez p3, :cond_3

    .line 40
    .line 41
    if-ne p2, v3, :cond_2

    .line 42
    .line 43
    :goto_2
    const/4 p1, 0x1

    .line 44
    goto :goto_3

    .line 45
    :cond_2
    if-ne p2, v1, :cond_3

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_3
    :goto_3
    return p1

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
