.class public final synthetic Lha/o4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lha/o4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    const/16 v0, 0x16

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget v3, p0, Lha/o4;->a:I

    .line 6
    .line 7
    packed-switch v3, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v3, Lcom/yunpan/appmanage/ui/ActivityImmersive;->N:I

    .line 11
    .line 12
    const/16 v3, 0x13

    .line 13
    .line 14
    const/16 v4, 0x14d

    .line 15
    .line 16
    if-ne p2, v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-ne v3, v2, :cond_0

    .line 23
    .line 24
    invoke-static {v4, p1}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    if-ne p2, v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-ne p2, v2, :cond_1

    .line 35
    .line 36
    invoke-static {v4, p1}, Ls1/g;->W(ILandroid/view/View;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return v1

    .line 40
    :pswitch_0
    sget p1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->c1:I

    .line 41
    .line 42
    if-ne p2, v0, :cond_2

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    :cond_2
    return v1

    .line 46
    :pswitch_1
    sget p1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->c1:I

    .line 47
    .line 48
    const/16 p1, 0x15

    .line 49
    .line 50
    if-ne p2, p1, :cond_3

    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    :cond_3
    return v1

    .line 54
    :pswitch_2
    sget p1, Lha/u9;->k:I

    .line 55
    .line 56
    return v2

    .line 57
    :pswitch_3
    sget p1, Lha/q4;->k:I

    .line 58
    .line 59
    return v2

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
