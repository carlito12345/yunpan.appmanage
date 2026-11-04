.class public final Lua/h2;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/yunpan/appmanage/ui/ActivityImage;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityImage;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/h2;->b:I

    iput-object p1, p0, Lua/h2;->c:Lcom/yunpan/appmanage/ui/ActivityImage;

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget p1, p0, Lua/h2;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    const-string p1, "\u4fdd\u5b58\u5931\u8d25"

    .line 8
    .line 9
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_1
    const-string p1, "\u65cb\u8f6c\u5931\u8d25"

    .line 14
    .line 15
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onComplete()V
    .locals 6

    .line 1
    iget-object v0, p0, Lua/h2;->c:Lcom/yunpan/appmanage/ui/ActivityImage;

    .line 2
    .line 3
    iget v1, p0, Lua/h2;->b:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const-string v1, "\u4fdd\u5b58\u6210\u529f"

    .line 9
    .line 10
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityImage;->L:Landroid/widget/TextView;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 16
    .line 17
    .line 18
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityImage;->M:Landroid/widget/TextView;

    .line 19
    .line 20
    const/16 v1, 0x8

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    sget v2, Lcom/yunpan/appmanage/ui/ActivityImage;->t0:I

    .line 32
    .line 33
    iget-object v2, v0, Lda/g;->A:Lda/g;

    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, "/rotation.ming"

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/yunpan/appmanage/ui/ActivityImage;->z(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityImage;->M:Landroid/widget/TextView;

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_1
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    new-instance v2, Lja/e;

    .line 66
    .line 67
    sget-object v3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 68
    .line 69
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 70
    .line 71
    iget-object v4, v3, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 72
    .line 73
    iget-object v5, v4, Lcom/yunpan/appmanage/bean/ImageData;->bdFiles:Ljava/util/List;

    .line 74
    .line 75
    iget v4, v4, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 76
    .line 77
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    check-cast v4, Lx9/w3;

    .line 82
    .line 83
    iget-object v4, v4, Lx9/w3;->b:Ljava/lang/String;

    .line 84
    .line 85
    const/4 v5, 0x0

    .line 86
    invoke-direct {v2, v4, v5}, Lja/e;-><init>(Ljava/lang/String;Lx9/w3;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2}, Lkh/e;->f(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    const-string v1, "\u5220\u9664\u6210\u529f"

    .line 93
    .line 94
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    iget-object v1, v3, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 98
    .line 99
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/ImageData;->bdFiles:Ljava/util/List;

    .line 100
    .line 101
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    const/4 v2, 0x1

    .line 106
    if-ne v1, v2, :cond_0

    .line 107
    .line 108
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_0
    iget-object v1, v3, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 113
    .line 114
    iget-object v2, v1, Lcom/yunpan/appmanage/bean/ImageData;->bdFiles:Ljava/util/List;

    .line 115
    .line 116
    iget v1, v1, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 117
    .line 118
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    sget v1, Lcom/yunpan/appmanage/ui/ActivityImage;->t0:I

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/yunpan/appmanage/ui/ActivityImage;->y()V

    .line 124
    .line 125
    .line 126
    :goto_0
    return-void

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
