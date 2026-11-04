.class public final synthetic Lha/j9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/k9;


# direct methods
.method public synthetic constructor <init>(Lha/k9;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/j9;->a:I

    iput-object p1, p0, Lha/j9;->b:Lha/k9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInBorderKeyEvent(ILandroid/view/View;)Z
    .locals 1

    .line 1
    const/16 p2, 0x82

    .line 2
    .line 3
    iget-object v0, p0, Lha/j9;->b:Lha/k9;

    .line 4
    .line 5
    if-ne p1, p2, :cond_1

    .line 6
    .line 7
    iget-object p1, v0, Lha/k9;->j:Lx9/u2;

    .line 8
    .line 9
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-lez p1, :cond_0

    .line 14
    .line 15
    iget-object p1, v0, Lha/k9;->i:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 18
    .line 19
    .line 20
    :cond_0
    const/4 p1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    :goto_0
    return p1
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 2

    .line 1
    iget p1, p0, Lha/j9;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/j9;->b:Lha/k9;

    .line 7
    .line 8
    iget-object p2, p1, Lha/k9;->j:Lx9/u2;

    .line 9
    .line 10
    invoke-virtual {p2, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lx9/w3;

    .line 15
    .line 16
    iget-boolean v1, v0, Lx9/w3;->c:Z

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p2, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Lx9/w3;

    .line 25
    .line 26
    iget-object p3, p1, Lha/k9;->h:Lx9/g0;

    .line 27
    .line 28
    invoke-virtual {p3, p2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lha/k9;->a()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object p2, p1, Lha/k9;->p:Lh5/m;

    .line 36
    .line 37
    iget-object p2, p2, Lh5/m;->b:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p2, Landroidx/leanback/widget/h0;

    .line 40
    .line 41
    iget-object p3, p2, Landroidx/leanback/widget/h0;->b:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p3, Lha/w;

    .line 44
    .line 45
    iget-object v1, p3, Lha/w;->k:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v1, Lx9/n5;

    .line 48
    .line 49
    iget-object v0, v0, Lx9/w3;->b:Ljava/lang/String;

    .line 50
    .line 51
    iput-object v0, v1, Lx9/n5;->D:Ljava/lang/String;

    .line 52
    .line 53
    iget-object p3, p3, Lha/w;->h:Landroid/widget/TextView;

    .line 54
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v1, "\u5bc6\u94a5\uff1a"

    .line 58
    .line 59
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    new-instance v1, Ljava/io/File;

    .line 63
    .line 64
    iget-object p2, p2, Landroidx/leanback/widget/h0;->b:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p2, Lha/w;

    .line 67
    .line 68
    iget-object p2, p2, Lha/w;->k:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p2, Lx9/n5;

    .line 71
    .line 72
    iget-object p2, p2, Lx9/n5;->D:Ljava/lang/String;

    .line 73
    .line 74
    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 92
    .line 93
    .line 94
    :goto_0
    return-void

    .line 95
    :pswitch_0
    iget-object p1, p0, Lha/j9;->b:Lha/k9;

    .line 96
    .line 97
    iget-object p2, p1, Lha/k9;->h:Lx9/g0;

    .line 98
    .line 99
    invoke-virtual {p2}, Lc6/g;->b()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    add-int/lit8 v0, v0, -0x1

    .line 104
    .line 105
    if-eq p3, v0, :cond_2

    .line 106
    .line 107
    invoke-virtual {p2}, Lc6/g;->b()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    add-int/lit8 v0, v0, -0x1

    .line 112
    .line 113
    :goto_1
    if-le v0, p3, :cond_1

    .line 114
    .line 115
    invoke-virtual {p2, v0}, Lc6/g;->C(I)V

    .line 116
    .line 117
    .line 118
    add-int/lit8 v0, v0, -0x1

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_1
    invoke-virtual {p1}, Lha/k9;->a()V

    .line 122
    .line 123
    .line 124
    :cond_2
    return-void

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
