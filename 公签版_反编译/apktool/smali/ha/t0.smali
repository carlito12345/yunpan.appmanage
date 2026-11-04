.class public final synthetic Lha/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/he;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/x0;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lha/x0;Ljava/util/ArrayList;Landroid/widget/TextView;I)V
    .locals 0

    .line 1
    iput p4, p0, Lha/t0;->a:I

    iput-object p1, p0, Lha/t0;->b:Lha/x0;

    iput-object p2, p0, Lha/t0;->c:Ljava/util/ArrayList;

    iput-object p3, p0, Lha/t0;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 7

    .line 1
    iget v0, p0, Lha/t0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/t0;->b:Lha/x0;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lha/t0;->c:Ljava/util/ArrayList;

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
    iget-object v3, p0, Lha/t0;->d:Landroid/widget/TextView;

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
    iput-object p1, v0, Lha/x0;->n:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 45
    .line 46
    iget v2, v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 47
    .line 48
    const/16 v4, 0x64

    .line 49
    .line 50
    if-lt v2, v4, :cond_1

    .line 51
    .line 52
    sget-object v2, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 53
    .line 54
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    check-cast v5, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 59
    .line 60
    iget v5, v5, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 61
    .line 62
    sub-int/2addr v5, v4

    .line 63
    invoke-virtual {v2, v5}, Lcom/yunpan/appmanage/carsdk/k0;->d(I)I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    check-cast v6, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 72
    .line 73
    iget v6, v6, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 74
    .line 75
    sub-int/2addr v6, v4

    .line 76
    invoke-virtual {v2, v6}, Lcom/yunpan/appmanage/carsdk/k0;->f(I)I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    iget-object v2, v0, Lha/x0;->r:Landroid/media/AudioManager;

    .line 82
    .line 83
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    check-cast v4, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 88
    .line 89
    iget v4, v4, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 90
    .line 91
    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    iget-object v2, v0, Lha/x0;->r:Landroid/media/AudioManager;

    .line 96
    .line 97
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    check-cast v4, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 102
    .line 103
    iget v4, v4, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 104
    .line 105
    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    :goto_0
    iget-object v4, v0, Lha/x0;->j:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 110
    .line 111
    const/4 v6, 0x0

    .line 112
    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 113
    .line 114
    .line 115
    iget-object v4, v0, Lha/x0;->j:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 116
    .line 117
    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 118
    .line 119
    .line 120
    iget-object v4, v0, Lha/x0;->j:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 121
    .line 122
    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 123
    .line 124
    .line 125
    iget-object v4, v0, Lha/x0;->t:Landroid/widget/TextView;

    .line 126
    .line 127
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    check-cast p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 139
    .line 140
    iput-object p1, v0, Lha/x0;->n:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 141
    .line 142
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :catch_0
    const-string p1, "\u7cfb\u7edf\u6ca1\u6709\u6b64\u97f3\u91cf"

    .line 149
    .line 150
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 151
    .line 152
    .line 153
    :goto_1
    return-void

    .line 154
    :pswitch_0
    iget-object v0, p0, Lha/t0;->b:Lha/x0;

    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    iget-object v1, p0, Lha/t0;->c:Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    check-cast p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 166
    .line 167
    iput-object p1, v0, Lha/x0;->l:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 168
    .line 169
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 170
    .line 171
    iget-object v0, p0, Lha/t0;->d:Landroid/widget/TextView;

    .line 172
    .line 173
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
