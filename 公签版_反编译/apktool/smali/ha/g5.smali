.class public final Lha/g5;
.super Landroid/app/Presentation;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/a4;


# direct methods
.method public synthetic constructor <init>(Lha/a4;Landroid/content/Context;Landroid/view/Display;I)V
    .locals 0

    .line 1
    iput p4, p0, Lha/g5;->a:I

    iput-object p1, p0, Lha/g5;->b:Lha/a4;

    invoke-direct {p0, p2, p3}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget v0, p0, Lha/g5;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lha/g5;->b:Lha/a4;

    .line 10
    .line 11
    check-cast p1, Lha/m5;

    .line 12
    .line 13
    iget-boolean v0, p1, Lha/m5;->g:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p1, Lha/m5;->l:Lha/g5;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p1, p1, Lha/m5;->l:Lha/g5;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :try_start_0
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 40
    .line 41
    .line 42
    const v0, 0x106000d

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/4 v1, 0x0

    .line 53
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 56
    .line 57
    .line 58
    const/4 v0, 0x2

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 60
    .line 61
    .line 62
    const/16 v0, 0x200

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    :catch_0
    :cond_1
    :goto_0
    return-void

    .line 68
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lha/g5;->b:Lha/a4;

    .line 72
    .line 73
    check-cast p1, Lha/j5;

    .line 74
    .line 75
    invoke-static {p1}, Lha/j5;->a(Lha/j5;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :pswitch_1
    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lha/g5;->b:Lha/a4;

    .line 83
    .line 84
    check-cast p1, Lha/j5;

    .line 85
    .line 86
    invoke-static {p1}, Lha/j5;->b(Lha/j5;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :pswitch_2
    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lha/g5;->b:Lha/a4;

    .line 94
    .line 95
    check-cast p1, Lha/j5;

    .line 96
    .line 97
    invoke-static {p1}, Lha/j5;->b(Lha/j5;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :pswitch_3
    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lha/g5;->b:Lha/a4;

    .line 105
    .line 106
    check-cast p1, Lha/j5;

    .line 107
    .line 108
    invoke-static {p1}, Lha/j5;->a(Lha/j5;)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    nop

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
