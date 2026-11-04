.class public final synthetic Lha/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/i;

.field public final synthetic c:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lha/i;Landroid/widget/ImageView;I)V
    .locals 0

    .line 1
    iput p3, p0, Lha/e;->a:I

    iput-object p1, p0, Lha/e;->b:Lha/i;

    iput-object p2, p0, Lha/e;->c:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    .line 1
    iget p1, p0, Lha/e;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/e;->b:Lha/i;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 12
    .line 13
    iget-boolean v1, v0, Lcom/yunpan/appmanage/util/w;->D:Z

    .line 14
    .line 15
    xor-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    iput-boolean v1, v0, Lcom/yunpan/appmanage/util/w;->D:Z

    .line 18
    .line 19
    :try_start_0
    iget-object v2, v0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 20
    .line 21
    const-string v3, "BoYueLAutoAdb"

    .line 22
    .line 23
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v2, v3, v1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    :catch_0
    invoke-virtual {v0}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 31
    .line 32
    .line 33
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 34
    .line 35
    iget-boolean v1, v0, Lcom/yunpan/appmanage/util/w;->D:Z

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    const v1, 0x7f080234

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const v1, 0x7f080237

    .line 44
    .line 45
    .line 46
    :goto_0
    iget-object v2, p0, Lha/e;->c:Landroid/widget/ImageView;

    .line 47
    .line 48
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    .line 50
    .line 51
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/w;->D:Z

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    new-instance v0, Lha/z6;

    .line 56
    .line 57
    const-string v1, "\u63d0\u793a\uff1a\u9996\u6b21\u8fde\u63a5adb\uff0c\u8bf7\u6309\u4e0b\u9762\u7684\u65b9\u6cd5\u7528\u5339\u914d\u7801\u8fde\u63a5\uff0c\u9996\u6b21\u8fde\u63a5\u8fc7\u540e\uff0c\u4ee5\u540e\u5c31\u80fd\u81ea\u52a8\u8fde\u63a5\uff01"

    .line 58
    .line 59
    const-string v2, ""

    .line 60
    .line 61
    iget-object v3, p1, Lha/a4;->a:Landroid/app/Activity;

    .line 62
    .line 63
    iget-object p1, p1, Lha/a4;->b:Landroid/content/Context;

    .line 64
    .line 65
    invoke-direct {v0, v3, p1, v1, v2}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 69
    .line 70
    .line 71
    :cond_1
    return-void

    .line 72
    :pswitch_0
    iget-object p1, p0, Lha/e;->b:Lha/i;

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 78
    .line 79
    iget-boolean v1, v0, Lcom/yunpan/appmanage/util/w;->B:Z

    .line 80
    .line 81
    iget-object v2, p0, Lha/e;->c:Landroid/widget/ImageView;

    .line 82
    .line 83
    if-eqz v1, :cond_3

    .line 84
    .line 85
    const/4 p1, 0x0

    .line 86
    invoke-virtual {v0, p1}, Lcom/yunpan/appmanage/util/w;->r(Z)V

    .line 87
    .line 88
    .line 89
    iget-boolean p1, v0, Lcom/yunpan/appmanage/util/w;->B:Z

    .line 90
    .line 91
    if-eqz p1, :cond_2

    .line 92
    .line 93
    const p1, 0x7f080234

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    const p1, 0x7f080237

    .line 98
    .line 99
    .line 100
    :goto_1
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_3
    new-instance v0, Lha/z6;

    .line 105
    .line 106
    new-instance v10, Lh5/m;

    .line 107
    .line 108
    const/4 v1, 0x1

    .line 109
    invoke-direct {v10, v1, v2}, Lh5/m;-><init>(ILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    iget-object v4, p1, Lha/a4;->a:Landroid/app/Activity;

    .line 113
    .line 114
    iget-object v5, p1, Lha/a4;->b:Landroid/content/Context;

    .line 115
    .line 116
    const-string v8, "\u52fe\u9009"

    .line 117
    .line 118
    const-string v9, "\u53d6\u6d88"

    .line 119
    .line 120
    const-string v6, "\u5982\u679c\u60a8\u7684\u8bbe\u5907\u662f\u901a\u8fc7\u914d\u5bf9\u7801\u8fde\u63a5adb\uff08\u4e5f\u5c31\u662f\u65e0\u7ebf\u8c03\u8bd5\uff09\n\n\u90a3\u4e48\u53ef\u4ee5\u52fe\u9009\u6b64\u529f\u80fd\uff0c\u6253\u5f00\u7ba1\u5bb6\u5c31\u4f1a\u81ea\u52a8\u8fde\u63a5adb"

    .line 121
    .line 122
    const-string v7, "\u5982\u679c\u60a8\u7cfb\u7edf\u4e0d\u662f\u8fd9\u79cd\u65b9\u5f0f\u7684\u8bdd\uff0c\u8bf7\u52ff\u52fe\u9009"

    .line 123
    .line 124
    move-object v3, v0

    .line 125
    invoke-direct/range {v3 .. v10}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 129
    .line 130
    .line 131
    :goto_2
    return-void

    .line 132
    nop

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
