.class public final synthetic Lha/l3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/he;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/r3;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lha/r3;Ljava/util/ArrayList;Landroid/widget/TextView;I)V
    .locals 0

    .line 1
    iput p4, p0, Lha/l3;->a:I

    iput-object p1, p0, Lha/l3;->b:Lha/r3;

    iput-object p2, p0, Lha/l3;->c:Ljava/util/ArrayList;

    iput-object p3, p0, Lha/l3;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 7

    .line 1
    iget v0, p0, Lha/l3;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/l3;->b:Lha/r3;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lha/l3;->c:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 18
    .line 19
    iput-object p1, v0, Lha/r3;->q:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v0, p0, Lha/l3;->d:Landroid/widget/TextView;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_0
    iget-object v0, p0, Lha/l3;->b:Lha/r3;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lha/l3;->c:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 41
    .line 42
    iget v2, v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 43
    .line 44
    iget-object v3, p0, Lha/l3;->d:Landroid/widget/TextView;

    .line 45
    .line 46
    const/4 v4, -0x1

    .line 47
    if-ne v2, v4, :cond_0

    .line 48
    .line 49
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 54
    .line 55
    iput-object p1, v0, Lha/r3;->s:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_0
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 68
    .line 69
    iget v2, v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 70
    .line 71
    const/16 v4, 0x64

    .line 72
    .line 73
    if-lt v2, v4, :cond_1

    .line 74
    .line 75
    sget-object v2, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 76
    .line 77
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    check-cast v5, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 82
    .line 83
    iget v5, v5, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 84
    .line 85
    sub-int/2addr v5, v4

    .line 86
    invoke-virtual {v2, v5}, Lcom/yunpan/appmanage/carsdk/k0;->d(I)I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    check-cast v6, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 95
    .line 96
    iget v6, v6, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 97
    .line 98
    sub-int/2addr v6, v4

    .line 99
    invoke-virtual {v2, v6}, Lcom/yunpan/appmanage/carsdk/k0;->f(I)I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    goto :goto_0

    .line 104
    :cond_1
    iget-object v2, v0, Lha/r3;->y:Landroid/media/AudioManager;

    .line 105
    .line 106
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    check-cast v4, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 111
    .line 112
    iget v4, v4, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 113
    .line 114
    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    iget-object v2, v0, Lha/r3;->y:Landroid/media/AudioManager;

    .line 119
    .line 120
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    check-cast v4, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 125
    .line 126
    iget v4, v4, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 127
    .line 128
    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    :goto_0
    iget-object v4, v0, Lha/r3;->i:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 133
    .line 134
    const/4 v6, 0x0

    .line 135
    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 136
    .line 137
    .line 138
    iget-object v4, v0, Lha/r3;->i:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 139
    .line 140
    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 141
    .line 142
    .line 143
    iget-object v4, v0, Lha/r3;->i:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 144
    .line 145
    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 146
    .line 147
    .line 148
    iget-object v4, v0, Lha/r3;->z:Landroid/widget/TextView;

    .line 149
    .line 150
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    check-cast p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 162
    .line 163
    iput-object p1, v0, Lha/r3;->s:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 164
    .line 165
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :catch_0
    const-string p1, "\u7cfb\u7edf\u6ca1\u6709\u6b64\u97f3\u91cf"

    .line 172
    .line 173
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 174
    .line 175
    .line 176
    :goto_1
    return-void

    .line 177
    :pswitch_1
    iget-object v0, p0, Lha/l3;->b:Lha/r3;

    .line 178
    .line 179
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    iget-object v1, p0, Lha/l3;->c:Ljava/util/ArrayList;

    .line 183
    .line 184
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    check-cast p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 189
    .line 190
    iput-object p1, v0, Lha/r3;->p:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 191
    .line 192
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 193
    .line 194
    iget-object v0, p0, Lha/l3;->d:Landroid/widget/TextView;

    .line 195
    .line 196
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    nop

    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
