.class public final synthetic Lha/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/ea;
.implements Lea/e;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/b0;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lha/b0;II)V
    .locals 0

    .line 1
    iput p3, p0, Lha/a0;->a:I

    iput-object p1, p0, Lha/a0;->b:Lha/b0;

    iput p2, p0, Lha/a0;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 5

    .line 1
    iget v0, p0, Lha/a0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/a0;->b:Lha/b0;

    .line 7
    .line 8
    iget v1, p0, Lha/a0;->c:I

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    iget-object p1, v0, Lha/b0;->q:Lx9/t2;

    .line 14
    .line 15
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-ne p1, v2, :cond_0

    .line 20
    .line 21
    iget-object p1, v0, Lha/b0;->l:Landroid/widget/TextView;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object p1, v0, Lha/b0;->q:Lx9/t2;

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Lc6/g;->C(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    if-ne p1, v2, :cond_2

    .line 33
    .line 34
    new-instance p1, Lha/i0;

    .line 35
    .line 36
    iget-object v2, v0, Lha/b0;->q:Lx9/t2;

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lz7/s;

    .line 43
    .line 44
    new-instance v3, Lha/a0;

    .line 45
    .line 46
    const/4 v4, 0x2

    .line 47
    invoke-direct {v3, v0, v1, v4}, Lha/a0;-><init>(Lha/b0;II)V

    .line 48
    .line 49
    .line 50
    iget-object v1, v0, Lha/a4;->a:Landroid/app/Activity;

    .line 51
    .line 52
    iget-object v0, v0, Lha/a4;->b:Landroid/content/Context;

    .line 53
    .line 54
    invoke-direct {p1, v1, v0, v2, v3}, Lha/i0;-><init>(Landroid/app/Activity;Landroid/content/Context;Lz7/s;Lea/e;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void

    .line 65
    :pswitch_0
    iget-object v0, p0, Lha/a0;->b:Lha/b0;

    .line 66
    .line 67
    iget v1, p0, Lha/a0;->c:I

    .line 68
    .line 69
    const/4 v2, 0x1

    .line 70
    if-nez p1, :cond_4

    .line 71
    .line 72
    iget-object p1, v0, Lha/b0;->p:Lx9/t2;

    .line 73
    .line 74
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-ne p1, v2, :cond_3

    .line 79
    .line 80
    iget-object p1, v0, Lha/b0;->j:Landroid/widget/TextView;

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 83
    .line 84
    .line 85
    :cond_3
    iget-object p1, v0, Lha/b0;->p:Lx9/t2;

    .line 86
    .line 87
    invoke-virtual {p1, v1}, Lc6/g;->C(I)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_4
    if-ne p1, v2, :cond_5

    .line 92
    .line 93
    new-instance p1, Lha/i0;

    .line 94
    .line 95
    iget-object v2, v0, Lha/b0;->p:Lx9/t2;

    .line 96
    .line 97
    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    check-cast v2, Lz7/s;

    .line 102
    .line 103
    new-instance v3, Lha/a0;

    .line 104
    .line 105
    const/4 v4, 0x3

    .line 106
    invoke-direct {v3, v0, v1, v4}, Lha/a0;-><init>(Lha/b0;II)V

    .line 107
    .line 108
    .line 109
    iget-object v1, v0, Lha/a4;->a:Landroid/app/Activity;

    .line 110
    .line 111
    iget-object v0, v0, Lha/a4;->b:Landroid/content/Context;

    .line 112
    .line 113
    invoke-direct {p1, v1, v0, v2, v3}, Lha/i0;-><init>(Landroid/app/Activity;Landroid/content/Context;Lz7/s;Lea/e;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    :goto_1
    return-void

    .line 124
    nop

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public k(Lz7/s;)V
    .locals 2

    .line 1
    iget v0, p0, Lha/a0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/a0;->b:Lha/b0;

    .line 7
    .line 8
    iget-object v0, v0, Lha/b0;->p:Lx9/t2;

    .line 9
    .line 10
    iget v1, p0, Lha/a0;->c:I

    .line 11
    .line 12
    invoke-virtual {v0, v1, p1}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, p0, Lha/a0;->b:Lha/b0;

    .line 17
    .line 18
    iget-object v0, v0, Lha/b0;->q:Lx9/t2;

    .line 19
    .line 20
    iget v1, p0, Lha/a0;->c:I

    .line 21
    .line 22
    invoke-virtual {v0, v1, p1}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
