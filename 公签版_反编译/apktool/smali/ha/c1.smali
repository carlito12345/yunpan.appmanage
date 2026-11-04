.class public final synthetic Lha/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/he;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/g1;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lha/g1;Ljava/util/ArrayList;Landroid/widget/TextView;I)V
    .locals 0

    .line 1
    iput p4, p0, Lha/c1;->a:I

    iput-object p1, p0, Lha/c1;->b:Lha/g1;

    iput-object p2, p0, Lha/c1;->c:Ljava/util/ArrayList;

    iput-object p3, p0, Lha/c1;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 6

    .line 1
    iget v0, p0, Lha/c1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/c1;->b:Lha/g1;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lha/c1;->c:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 18
    .line 19
    iget v2, v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 20
    .line 21
    iget-object v3, p0, Lha/c1;->d:Landroid/widget/TextView;

    .line 22
    .line 23
    const/4 v4, -0x1

    .line 24
    if-ne v2, v4, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 31
    .line 32
    iput-object p1, v0, Lha/g1;->s:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    :try_start_0
    iget-object v2, v0, Lha/g1;->w:Landroid/media/AudioManager;

    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 47
    .line 48
    iget v4, v4, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 49
    .line 50
    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    iget-object v4, v0, Lha/g1;->j:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 55
    .line 56
    const/4 v5, 0x0

    .line 57
    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 58
    .line 59
    .line 60
    iget-object v4, v0, Lha/g1;->j:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 61
    .line 62
    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 63
    .line 64
    .line 65
    iget-object v4, v0, Lha/g1;->j:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 66
    .line 67
    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 75
    .line 76
    iput-object p1, v0, Lha/g1;->s:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 77
    .line 78
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catch_0
    const-string p1, "\u7cfb\u7edf\u6ca1\u6709\u6b64\u97f3\u91cf"

    .line 85
    .line 86
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    :goto_0
    return-void

    .line 90
    :pswitch_0
    iget-object v0, p0, Lha/c1;->b:Lha/g1;

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lha/c1;->c:Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 102
    .line 103
    iput-object p1, v0, Lha/g1;->n:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 104
    .line 105
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 106
    .line 107
    iget-object v0, p0, Lha/c1;->d:Landroid/widget/TextView;

    .line 108
    .line 109
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :pswitch_1
    iget-object v0, p0, Lha/c1;->b:Lha/g1;

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Lha/c1;->c:Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    check-cast p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 125
    .line 126
    iput-object p1, v0, Lha/g1;->m:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 127
    .line 128
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 129
    .line 130
    iget-object v0, p0, Lha/c1;->d:Landroid/widget/TextView;

    .line 131
    .line 132
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :pswitch_2
    iget-object v0, p0, Lha/c1;->b:Lha/g1;

    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    iget-object v1, p0, Lha/c1;->c:Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    check-cast p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 148
    .line 149
    iput-object p1, v0, Lha/g1;->p:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 150
    .line 151
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 152
    .line 153
    iget-object v0, p0, Lha/c1;->d:Landroid/widget/TextView;

    .line 154
    .line 155
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
