.class public final synthetic Lha/ub;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/vb;


# direct methods
.method public synthetic constructor <init>(Lha/vb;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/ub;->a:I

    iput-object p1, p0, Lha/ub;->b:Lha/vb;

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
    iget-object v0, p0, Lha/ub;->b:Lha/vb;

    .line 4
    .line 5
    if-ne p1, p2, :cond_1

    .line 6
    .line 7
    iget-object p1, v0, Lha/vb;->m:Lx9/f0;

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
    iget-object p1, v0, Lha/vb;->l:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

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
    .locals 3

    .line 1
    iget p1, p0, Lha/ub;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/ub;->b:Lha/vb;

    .line 7
    .line 8
    iget-object p2, p1, Lha/vb;->m:Lx9/f0;

    .line 9
    .line 10
    invoke-virtual {p2, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    check-cast p2, Lx9/w3;

    .line 15
    .line 16
    iget-boolean p2, p2, Lx9/w3;->c:Z

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    iget-object p2, p1, Lha/vb;->m:Lx9/f0;

    .line 21
    .line 22
    invoke-virtual {p2, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Lx9/w3;

    .line 27
    .line 28
    iget-object p3, p1, Lha/vb;->k:Lx9/g0;

    .line 29
    .line 30
    invoke-virtual {p3, p2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lha/vb;->a()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object p2, p1, Lha/vb;->s:Lea/f;

    .line 38
    .line 39
    iget-object v0, p1, Lha/vb;->m:Lx9/f0;

    .line 40
    .line 41
    invoke-virtual {v0, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    check-cast p3, Lx9/w3;

    .line 46
    .line 47
    invoke-interface {p2, p3}, Lea/f;->a(Lx9/w3;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void

    .line 54
    :pswitch_0
    iget-object p1, p0, Lha/ub;->b:Lha/vb;

    .line 55
    .line 56
    iget-object p2, p1, Lha/vb;->k:Lx9/g0;

    .line 57
    .line 58
    invoke-virtual {p2}, Lc6/g;->b()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    add-int/lit8 v0, v0, -0x1

    .line 63
    .line 64
    if-eq p3, v0, :cond_2

    .line 65
    .line 66
    invoke-virtual {p2}, Lc6/g;->b()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    add-int/lit8 v0, v0, -0x1

    .line 71
    .line 72
    :goto_1
    if-le v0, p3, :cond_1

    .line 73
    .line 74
    invoke-virtual {p2, v0}, Lc6/g;->C(I)V

    .line 75
    .line 76
    .line 77
    add-int/lit8 v0, v0, -0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    invoke-virtual {p1}, Lha/vb;->a()V

    .line 81
    .line 82
    .line 83
    :cond_2
    return-void

    .line 84
    :pswitch_1
    iget-object p1, p0, Lha/ub;->b:Lha/vb;

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    new-instance p2, Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .line 93
    .line 94
    new-instance v0, Lx9/w3;

    .line 95
    .line 96
    iget-object v1, p1, Lha/vb;->i:Lx9/g2;

    .line 97
    .line 98
    invoke-virtual {v1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Lx9/w3;

    .line 103
    .line 104
    iget-object v2, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    check-cast p3, Lx9/w3;

    .line 111
    .line 112
    iget-object p3, p3, Lx9/w3;->b:Ljava/lang/String;

    .line 113
    .line 114
    invoke-direct {v0, v2, p3}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    iget-object p3, p1, Lha/vb;->k:Lx9/g0;

    .line 121
    .line 122
    invoke-virtual {p3, p2}, Lc6/g;->E(Ljava/util/List;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Lha/vb;->a()V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
