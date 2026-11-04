.class public final synthetic Lha/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/p;


# direct methods
.method public synthetic constructor <init>(Lha/p;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/m;->a:I

    iput-object p1, p0, Lha/m;->b:Lha/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final x(Lc6/g;Landroid/view/View;I)V
    .locals 3

    .line 1
    iget p1, p0, Lha/m;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Lha/s;

    .line 7
    .line 8
    iget-object p2, p0, Lha/m;->b:Lha/p;

    .line 9
    .line 10
    iget-object v0, p2, Lha/p;->D:Lx9/s2;

    .line 11
    .line 12
    invoke-virtual {v0, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lz7/s;

    .line 17
    .line 18
    new-instance v1, Lha/o;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-direct {v1, p3, v2, p2}, Lha/o;-><init>(IILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object p3, p2, Lha/a4;->a:Landroid/app/Activity;

    .line 25
    .line 26
    iget-object p2, p2, Lha/a4;->b:Landroid/content/Context;

    .line 27
    .line 28
    invoke-direct {p1, p3, p2, v0, v1}, Lha/s;-><init>(Landroid/app/Activity;Landroid/content/Context;Lz7/s;Lha/o;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_0
    iget-object p1, p0, Lha/m;->b:Lha/p;

    .line 36
    .line 37
    invoke-virtual {p1, p3}, Lha/p;->b(I)V

    .line 38
    .line 39
    .line 40
    iget-object p2, p1, Lha/p;->l:Landroid/widget/TextView;

    .line 41
    .line 42
    iget-object p1, p1, Lha/p;->j:Lx9/i4;

    .line 43
    .line 44
    invoke-virtual {p1}, Lx9/i4;->F()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_0

    .line 49
    .line 50
    const/16 p1, 0x8

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 p1, 0x0

    .line 54
    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_1
    iget-object p1, p0, Lha/m;->b:Lha/p;

    .line 59
    .line 60
    iget-object p2, p1, Lha/p;->E:Lx9/d;

    .line 61
    .line 62
    invoke-virtual {p2}, Lc6/g;->b()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    add-int/lit8 p2, p2, -0x1

    .line 67
    .line 68
    if-ne p3, p2, :cond_1

    .line 69
    .line 70
    iget-object p1, p1, Lha/p;->t:Landroid/widget/LinearLayout;

    .line 71
    .line 72
    const/16 p2, 0x8

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    iget-object p2, p1, Lha/p;->m:Landroid/widget/EditText;

    .line 79
    .line 80
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    iget-object v0, p1, Lha/p;->m:Landroid/widget/EditText;

    .line 85
    .line 86
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    iget-object p1, p1, Lha/p;->E:Lx9/d;

    .line 91
    .line 92
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Ljava/lang/CharSequence;

    .line 97
    .line 98
    invoke-interface {p2, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 99
    .line 100
    .line 101
    :goto_1
    return-void

    .line 102
    nop

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
