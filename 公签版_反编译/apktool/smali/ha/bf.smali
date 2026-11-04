.class public final Lha/bf;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public final synthetic g:I

.field public final h:Lx9/n5;

.field public i:Z

.field public final j:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lx9/n5;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, Lha/bf;->g:I

    const p5, 0x7f0e00d3

    invoke-direct {p0, p1, p2, p5}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lha/bf;->i:Z

    iput-object p4, p0, Lha/bf;->j:Ljava/lang/Object;

    iput-object p3, p0, Lha/bf;->h:Lx9/n5;

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    .line 1
    iget v0, p0, Lha/bf;->g:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lha/bf;->i:Z

    .line 8
    .line 9
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_0
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lha/bf;->i:Z

    .line 15
    .line 16
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget v0, p0, Lha/bf;->g:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    const p1, 0x7f0b04b9

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/widget/ImageView;

    .line 17
    .line 18
    const v0, 0x7f0b05a9

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/widget/TextView;

    .line 26
    .line 27
    const-string v1, "\u6b63\u5728\u83b7\u53d6\u4e8c\u7ef4\u7801(\u9700\u8054\u7f51)"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Lha/p7;

    .line 33
    .line 34
    const/16 v2, 0x1a

    .line 35
    .line 36
    invoke-direct {v1, v2, p0}, Lha/p7;-><init>(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    new-instance v2, Lmc/c;

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-direct {v2, v3, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 46
    .line 47
    invoke-virtual {v2, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v1, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    new-instance v2, Lha/ze;

    .line 60
    .line 61
    const/4 v3, 0x1

    .line 62
    invoke-direct {v2, p0, p1, v0, v3}, Lha/ze;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Lec/b;->b(Lec/e;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :pswitch_0
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 70
    .line 71
    .line 72
    const p1, 0x7f0b05a8

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Landroid/widget/TextView;

    .line 80
    .line 81
    const-string v0, "\u8bf7\u4f7f\u7528 \u5149\u9e2d\u4e91\u76d8app \u626b\u7801\u767b\u5f55"

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    const p1, 0x7f0b04b9

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Landroid/widget/ImageView;

    .line 94
    .line 95
    const v0, 0x7f0b05a9

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Landroid/widget/TextView;

    .line 103
    .line 104
    const-string v1, "\u6b63\u5728\u83b7\u53d6\u4e8c\u7ef4\u7801(\u9700\u8054\u7f51)"

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    new-instance v1, Lha/p7;

    .line 110
    .line 111
    const/16 v2, 0x19

    .line 112
    .line 113
    invoke-direct {v1, v2, p0}, Lha/p7;-><init>(ILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    new-instance v2, Lmc/c;

    .line 117
    .line 118
    const/4 v3, 0x0

    .line 119
    invoke-direct {v2, v3, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 123
    .line 124
    invoke-virtual {v2, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {v1, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    new-instance v2, Lha/ze;

    .line 137
    .line 138
    const/4 v3, 0x0

    .line 139
    invoke-direct {v2, p0, p1, v0, v3}, Lha/ze;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v2}, Lec/b;->b(Lec/e;)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    nop

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
