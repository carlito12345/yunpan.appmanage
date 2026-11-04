.class public final synthetic Lha/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/widget/ImageView;

.field public final synthetic c:Landroid/widget/ImageView;

.field public final synthetic d:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V
    .locals 0

    .line 1
    iput p4, p0, Lha/ac;->a:I

    iput-object p1, p0, Lha/ac;->b:Landroid/widget/ImageView;

    iput-object p2, p0, Lha/ac;->c:Landroid/widget/ImageView;

    iput-object p3, p0, Lha/ac;->d:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget p1, p0, Lha/ac;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 7
    .line 8
    iget v0, p1, Lcom/yunpan/appmanage/util/w;->O:I

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const v0, 0x7f0802b0

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lha/ac;->b:Landroid/widget/ImageView;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lha/ac;->c:Landroid/widget/ImageView;

    .line 22
    .line 23
    const v1, 0x7f0802af

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lha/ac;->d:Landroid/widget/ImageView;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, v0}, Lcom/yunpan/appmanage/util/w;->p(I)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void

    .line 39
    :pswitch_0
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 40
    .line 41
    iget v0, p1, Lcom/yunpan/appmanage/util/w;->P:I

    .line 42
    .line 43
    const/4 v1, 0x2

    .line 44
    if-ne v0, v1, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    iget-boolean v0, p1, Lcom/yunpan/appmanage/util/w;->J:Z

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    const-string p1, "\u5df2\u52fe\u9009\u661f\u745e\u81ea\u52a8\u63d0\u6743\uff0c\u4e0d\u80fd\u518d\u52fe\u9009\u8fd9\u4e2a"

    .line 52
    .line 53
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    iget-object v0, p0, Lha/ac;->b:Landroid/widget/ImageView;

    .line 58
    .line 59
    const v2, 0x7f0802af

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lha/ac;->c:Landroid/widget/ImageView;

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 68
    .line 69
    .line 70
    const v0, 0x7f0802b0

    .line 71
    .line 72
    .line 73
    iget-object v2, p0, Lha/ac;->d:Landroid/widget/ImageView;

    .line 74
    .line 75
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v1}, Lcom/yunpan/appmanage/util/w;->o(I)V

    .line 79
    .line 80
    .line 81
    :goto_1
    return-void

    .line 82
    :pswitch_1
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 83
    .line 84
    iget v0, p1, Lcom/yunpan/appmanage/util/w;->P:I

    .line 85
    .line 86
    if-nez v0, :cond_3

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    const v0, 0x7f0802b0

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lha/ac;->b:Landroid/widget/ImageView;

    .line 93
    .line 94
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lha/ac;->c:Landroid/widget/ImageView;

    .line 98
    .line 99
    const v1, 0x7f0802af

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lha/ac;->d:Landroid/widget/ImageView;

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 108
    .line 109
    .line 110
    const/4 v0, 0x0

    .line 111
    invoke-virtual {p1, v0}, Lcom/yunpan/appmanage/util/w;->o(I)V

    .line 112
    .line 113
    .line 114
    :goto_2
    return-void

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
