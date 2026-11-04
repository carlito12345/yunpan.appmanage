.class public final synthetic Lha/n8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/ea;
.implements Lea/e;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/t8;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lha/t8;II)V
    .locals 0

    .line 1
    iput p3, p0, Lha/n8;->a:I

    iput-object p1, p0, Lha/n8;->b:Lha/t8;

    iput p2, p0, Lha/n8;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 5

    .line 1
    iget v0, p0, Lha/n8;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/n8;->b:Lha/t8;

    .line 7
    .line 8
    iget v1, p0, Lha/n8;->c:I

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    iget-object p1, v0, Lha/t8;->E:Lx9/t2;

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
    iget-object p1, v0, Lha/t8;->x:Landroid/widget/TextView;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object p1, v0, Lha/t8;->E:Lx9/t2;

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
    iget-object v2, v0, Lha/t8;->E:Lx9/t2;

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
    new-instance v3, Lha/n8;

    .line 45
    .line 46
    const/4 v4, 0x2

    .line 47
    invoke-direct {v3, v0, v1, v4}, Lha/n8;-><init>(Lha/t8;II)V

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
    iget-object v0, p0, Lha/n8;->b:Lha/t8;

    .line 66
    .line 67
    iget v1, p0, Lha/n8;->c:I

    .line 68
    .line 69
    const/4 v2, 0x1

    .line 70
    if-nez p1, :cond_4

    .line 71
    .line 72
    iget-object p1, v0, Lha/t8;->E:Lx9/t2;

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
    iget-object p1, v0, Lha/t8;->x:Landroid/widget/TextView;

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 83
    .line 84
    .line 85
    :cond_3
    iget-object p1, v0, Lha/t8;->E:Lx9/t2;

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
    new-instance p1, Lha/q9;

    .line 94
    .line 95
    iget-object v2, v0, Lha/t8;->E:Lx9/t2;

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
    const-string v3, "json"

    .line 104
    .line 105
    invoke-virtual {v2, v3}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    new-instance v3, Lha/n8;

    .line 110
    .line 111
    const/4 v4, 0x3

    .line 112
    invoke-direct {v3, v0, v1, v4}, Lha/n8;-><init>(Lha/t8;II)V

    .line 113
    .line 114
    .line 115
    iget-object v1, v0, Lha/a4;->a:Landroid/app/Activity;

    .line 116
    .line 117
    iget-object v0, v0, Lha/a4;->b:Landroid/content/Context;

    .line 118
    .line 119
    invoke-direct {p1, v1, v0, v2, v3}, Lha/q9;-><init>(Landroid/app/Activity;Landroid/content/Context;Lz7/s;Lha/n8;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    :goto_1
    return-void

    .line 130
    nop

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public k(Lz7/s;)V
    .locals 2

    .line 1
    iget v0, p0, Lha/n8;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/n8;->b:Lha/t8;

    .line 7
    .line 8
    iget-object v0, v0, Lha/t8;->E:Lx9/t2;

    .line 9
    .line 10
    iget v1, p0, Lha/n8;->c:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lz7/s;

    .line 17
    .line 18
    const-string v1, "json"

    .line 19
    .line 20
    invoke-virtual {v0, v1, p1}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    iget-object v0, p0, Lha/n8;->b:Lha/t8;

    .line 25
    .line 26
    iget-object v0, v0, Lha/t8;->E:Lx9/t2;

    .line 27
    .line 28
    iget v1, p0, Lha/n8;->c:I

    .line 29
    .line 30
    invoke-virtual {v0, v1, p1}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
