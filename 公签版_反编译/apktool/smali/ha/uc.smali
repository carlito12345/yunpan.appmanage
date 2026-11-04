.class public final Lha/uc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/KeyEvent$Callback;


# direct methods
.method public synthetic constructor <init>(Landroid/view/KeyEvent$Callback;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/uc;->a:I

    iput-object p1, p0, Lha/uc;->b:Landroid/view/KeyEvent$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget p1, p0, Lha/uc;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_2

    .line 11
    .line 12
    const/16 p1, 0x14

    .line 13
    .line 14
    const/4 p3, 0x1

    .line 15
    iget-object v0, p0, Lha/uc;->b:Landroid/view/KeyEvent$Callback;

    .line 16
    .line 17
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;

    .line 18
    .line 19
    if-eq p2, p1, :cond_1

    .line 20
    .line 21
    const/16 p1, 0x42

    .line 22
    .line 23
    if-ne p2, p1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/16 p1, 0x13

    .line 27
    .line 28
    if-ne p2, p1, :cond_2

    .line 29
    .line 30
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->Z:Landroid/widget/EditText;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->M0:Landroid/widget/TextView;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    const/4 p3, 0x0

    .line 43
    :goto_1
    return p3

    .line 44
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_3

    .line 49
    .line 50
    const/16 p1, 0x15

    .line 51
    .line 52
    if-ne p2, p1, :cond_3

    .line 53
    .line 54
    iget-object p1, p0, Lha/uc;->b:Landroid/view/KeyEvent$Callback;

    .line 55
    .line 56
    check-cast p1, Landroid/widget/TextView;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 59
    .line 60
    .line 61
    const/4 p1, 0x1

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    const/4 p1, 0x0

    .line 64
    :goto_2
    return p1

    .line 65
    :pswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-nez p1, :cond_4

    .line 70
    .line 71
    const/16 p1, 0x16

    .line 72
    .line 73
    if-ne p2, p1, :cond_4

    .line 74
    .line 75
    iget-object p1, p0, Lha/uc;->b:Landroid/view/KeyEvent$Callback;

    .line 76
    .line 77
    check-cast p1, Landroid/widget/TextView;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 80
    .line 81
    .line 82
    const/4 p1, 0x1

    .line 83
    goto :goto_3

    .line 84
    :cond_4
    const/4 p1, 0x0

    .line 85
    :goto_3
    return p1

    .line 86
    :pswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-nez p1, :cond_5

    .line 91
    .line 92
    const/16 p1, 0x42

    .line 93
    .line 94
    if-ne p2, p1, :cond_5

    .line 95
    .line 96
    iget-object p1, p0, Lha/uc;->b:Landroid/view/KeyEvent$Callback;

    .line 97
    .line 98
    check-cast p1, Landroid/widget/TextView;

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 101
    .line 102
    .line 103
    const/4 p1, 0x1

    .line 104
    goto :goto_4

    .line 105
    :cond_5
    const/4 p1, 0x0

    .line 106
    :goto_4
    return p1

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
