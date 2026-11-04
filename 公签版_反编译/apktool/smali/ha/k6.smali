.class public final synthetic Lha/k6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/n6;


# direct methods
.method public synthetic constructor <init>(Lha/n6;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/k6;->a:I

    iput-object p1, p0, Lha/k6;->b:Lha/n6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    const/4 p1, 0x0

    .line 2
    iget-object v0, p0, Lha/k6;->b:Lha/n6;

    .line 3
    .line 4
    iget v1, p0, Lha/k6;->a:I

    .line 5
    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object p1, v0, Lha/n6;->h:Landroid/widget/TextView;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v1, "\u76d1\u542c\u65e5\u5fd7"

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    new-instance p1, Lha/da;

    .line 24
    .line 25
    new-instance v1, Lha/l6;

    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    invoke-direct {v1, v0, v2}, Lha/l6;-><init>(Lha/n6;I)V

    .line 29
    .line 30
    .line 31
    iget-object v2, v0, Lha/a4;->a:Landroid/app/Activity;

    .line 32
    .line 33
    iget-object v0, v0, Lha/a4;->b:Landroid/content/Context;

    .line 34
    .line 35
    invoke-direct {p1, v2, v0, v1}, Lha/da;-><init>(Landroid/app/Activity;Landroid/content/Context;Lha/l6;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object p1, v0, Lha/n6;->k:Lg0/e;

    .line 43
    .line 44
    invoke-virtual {p1}, Lg0/e;->k()V

    .line 45
    .line 46
    .line 47
    iget-object p1, v0, Lha/n6;->h:Landroid/widget/TextView;

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void

    .line 53
    :pswitch_0
    invoke-virtual {v0}, Lha/n6;->dismiss()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_1
    iget-object v1, v0, Lha/n6;->j:Lx9/b3;

    .line 58
    .line 59
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_1

    .line 64
    .line 65
    const-string p1, "\u8bf7\u5148\u76d1\u542c\u65e5\u5fd7"

    .line 66
    .line 67
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    sget-object v1, Lfa/g0;->a:Lfa/h0;

    .line 72
    .line 73
    invoke-virtual {v1}, Lfa/h0;->d()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_2

    .line 82
    .line 83
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 84
    .line 85
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 86
    .line 87
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_2

    .line 94
    .line 95
    const-string p1, "\u6ca1\u6709\u5185\u90e8\u5b58\u50a8\uff0c\u65e0\u6cd5\u4fdd\u5b58"

    .line 96
    .line 97
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_2
    new-instance v1, Lha/l6;

    .line 102
    .line 103
    const/4 v2, 0x3

    .line 104
    invoke-direct {v1, v0, v2}, Lha/l6;-><init>(Lha/n6;I)V

    .line 105
    .line 106
    .line 107
    new-instance v0, Lmc/c;

    .line 108
    .line 109
    invoke-direct {v0, p1, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    new-instance v1, Lha/m6;

    .line 127
    .line 128
    invoke-direct {v1, p1}, Lha/m6;-><init>(I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 132
    .line 133
    .line 134
    :goto_1
    return-void

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
