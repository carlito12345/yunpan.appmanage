.class public final Lha/w;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public final synthetic g:I

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Ljava/lang/Object;

.field public l:Ljava/lang/Object;

.field public m:Landroid/view/View;

.field public n:Ljava/lang/Object;

.field public p:Ljava/lang/Object;

.field public q:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lha/w;->g:I

    const v0, 0x7f0e0104

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lha/y8;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lha/w;->g:I

    const v0, 0x7f0e007c

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 2
    new-instance p1, Lha/u;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Lha/u;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lha/w;->q:Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lha/w;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lx9/n5;Lha/ic;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lha/w;->g:I

    const v0, 0x7f0e00d4

    .line 5
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 6
    iput-object p4, p0, Lha/w;->l:Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Lha/w;->k:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lha/w;->n:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "\u53d6\u6d88\u4e0b\u8f7d"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lha/w;->m:Landroid/view/View;

    .line 11
    .line 12
    check-cast v0, Lcom/yunpan/appmanage/view/MyProgressViewTest;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lcom/yunpan/appmanage/view/MyProgressViewTest;->setCurrentCount(F)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lha/w;->j:Landroid/widget/TextView;

    .line 19
    .line 20
    const-string v1, "\u89e3\u6790\u4e2d"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lha/w;->k:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Lx9/n5;

    .line 28
    .line 29
    iget v1, v0, Lx9/n5;->a:I

    .line 30
    .line 31
    const/16 v2, 0x15

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eq v1, v4, :cond_0

    .line 36
    .line 37
    if-eq v1, v3, :cond_0

    .line 38
    .line 39
    const/16 v5, 0x14

    .line 40
    .line 41
    if-eq v1, v5, :cond_0

    .line 42
    .line 43
    if-ne v1, v2, :cond_4

    .line 44
    .line 45
    :cond_0
    if-ne v1, v4, :cond_1

    .line 46
    .line 47
    iget-object v1, p0, Lha/w;->l:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v1, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 50
    .line 51
    iget-object v2, p0, Lha/w;->q:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v2, Ljava/lang/String;

    .line 54
    .line 55
    new-instance v3, Lba/e;

    .line 56
    .line 57
    const/4 v4, 0x3

    .line 58
    invoke-direct {v3, v1, v0, v2, v4}, Lba/e;-><init>(Lcom/yunpan/appmanage/bean/WpPathBean;Lx9/n5;Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Lmc/c;

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-direct {v0, v1, v3}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    if-ne v1, v3, :cond_2

    .line 83
    .line 84
    iget-object v1, p0, Lha/w;->l:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v1, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 87
    .line 88
    iget-object v2, p0, Lha/w;->q:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v2, Ljava/lang/String;

    .line 91
    .line 92
    new-instance v3, Lba/e;

    .line 93
    .line 94
    const/4 v4, 0x5

    .line 95
    invoke-direct {v3, v1, v0, v2, v4}, Lba/e;-><init>(Lcom/yunpan/appmanage/bean/WpPathBean;Lx9/n5;Ljava/lang/String;I)V

    .line 96
    .line 97
    .line 98
    new-instance v0, Lmc/c;

    .line 99
    .line 100
    const/4 v1, 0x0

    .line 101
    invoke-direct {v0, v1, v3}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    goto :goto_0

    .line 119
    :cond_2
    if-ne v1, v2, :cond_3

    .line 120
    .line 121
    iget-object v1, p0, Lha/w;->l:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v1, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 124
    .line 125
    iget-object v2, p0, Lha/w;->q:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v2, Ljava/lang/String;

    .line 128
    .line 129
    new-instance v3, Lba/e;

    .line 130
    .line 131
    const/4 v4, 0x0

    .line 132
    invoke-direct {v3, v1, v0, v2, v4}, Lba/e;-><init>(Lcom/yunpan/appmanage/bean/WpPathBean;Lx9/n5;Ljava/lang/String;I)V

    .line 133
    .line 134
    .line 135
    new-instance v0, Lmc/c;

    .line 136
    .line 137
    const/4 v1, 0x0

    .line 138
    invoke-direct {v0, v1, v3}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    goto :goto_0

    .line 156
    :cond_3
    iget-object v1, p0, Lha/w;->l:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast v1, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 159
    .line 160
    iget-object v2, p0, Lha/w;->q:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v2, Ljava/lang/String;

    .line 163
    .line 164
    new-instance v3, Lba/e;

    .line 165
    .line 166
    const/4 v4, 0x7

    .line 167
    invoke-direct {v3, v1, v0, v2, v4}, Lba/e;-><init>(Lcom/yunpan/appmanage/bean/WpPathBean;Lx9/n5;Ljava/lang/String;I)V

    .line 168
    .line 169
    .line 170
    new-instance v0, Lmc/c;

    .line 171
    .line 172
    const/4 v1, 0x0

    .line 173
    invoke-direct {v0, v1, v3}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    :goto_0
    new-instance v1, Lha/p0;

    .line 191
    .line 192
    const/16 v2, 0x1b

    .line 193
    .line 194
    invoke-direct {v1, v2, p0}, Lha/p0;-><init>(ILjava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 198
    .line 199
    .line 200
    :cond_4
    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 1
    iget v0, p0, Lha/w;->g:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lha/w;->l:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    iput-boolean v1, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->isStopDown:Z

    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_2
    iget-object v0, p0, Lha/w;->p:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Landroid/hardware/SensorManager;

    .line 24
    .line 25
    iget-object v1, p0, Lha/w;->q:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v1, Lha/u;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 30
    .line 31
    .line 32
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget v0, p0, Lha/w;->g:I

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
    const p1, 0x7f0b0486

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/widget/TextView;

    .line 17
    .line 18
    iput-object p1, p0, Lha/w;->h:Landroid/widget/TextView;

    .line 19
    .line 20
    const p1, 0x7f0b0489

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Landroid/widget/TextView;

    .line 28
    .line 29
    iput-object p1, p0, Lha/w;->i:Landroid/widget/TextView;

    .line 30
    .line 31
    const p1, 0x7f0b0538

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lcom/yunpan/appmanage/view/MyProgressViewTest;

    .line 39
    .line 40
    iput-object p1, p0, Lha/w;->m:Landroid/view/View;

    .line 41
    .line 42
    const p1, 0x7f0b0539

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Landroid/widget/TextView;

    .line 50
    .line 51
    iput-object p1, p0, Lha/w;->j:Landroid/widget/TextView;

    .line 52
    .line 53
    const p1, 0x7f0b0377

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Landroid/widget/TextView;

    .line 61
    .line 62
    iput-object p1, p0, Lha/w;->n:Ljava/lang/Object;

    .line 63
    .line 64
    new-instance v0, Lha/g9;

    .line 65
    .line 66
    const/16 v1, 0x12

    .line 67
    .line 68
    invoke-direct {v0, v1, p0}, Lha/g9;-><init>(ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :pswitch_0
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 76
    .line 77
    .line 78
    const p1, 0x7f0b05ba

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Landroid/widget/TextView;

    .line 86
    .line 87
    iget-object v0, p0, Lha/w;->k:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v0, Lx9/n5;

    .line 90
    .line 91
    iget v1, v0, Lx9/n5;->a:I

    .line 92
    .line 93
    const/4 v2, 0x4

    .line 94
    if-ne v1, v2, :cond_0

    .line 95
    .line 96
    const-string v1, "FTP"

    .line 97
    .line 98
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_0
    const/4 v2, 0x5

    .line 103
    if-ne v1, v2, :cond_1

    .line 104
    .line 105
    const-string v1, "FTPS"

    .line 106
    .line 107
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    .line 110
    :cond_1
    :goto_0
    const p1, 0x7f0b0437

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, Landroid/widget/EditText;

    .line 118
    .line 119
    iput-object p1, p0, Lha/w;->m:Landroid/view/View;

    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 122
    .line 123
    .line 124
    const p1, 0x7f0b0446

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    check-cast p1, Landroid/widget/EditText;

    .line 132
    .line 133
    iput-object p1, p0, Lha/w;->n:Ljava/lang/Object;

    .line 134
    .line 135
    const p1, 0x7f0b0453

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    check-cast p1, Landroid/widget/EditText;

    .line 143
    .line 144
    iput-object p1, p0, Lha/w;->p:Ljava/lang/Object;

    .line 145
    .line 146
    const p1, 0x7f0b0445

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    check-cast p1, Landroid/widget/EditText;

    .line 154
    .line 155
    iput-object p1, p0, Lha/w;->q:Ljava/lang/Object;

    .line 156
    .line 157
    const p1, 0x7f0b059b

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    check-cast p1, Landroid/widget/TextView;

    .line 165
    .line 166
    iput-object p1, p0, Lha/w;->h:Landroid/widget/TextView;

    .line 167
    .line 168
    const p1, 0x7f0b0386

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    check-cast p1, Landroid/widget/TextView;

    .line 176
    .line 177
    iput-object p1, p0, Lha/w;->i:Landroid/widget/TextView;

    .line 178
    .line 179
    const p1, 0x7f0b0390

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    check-cast p1, Landroid/widget/TextView;

    .line 187
    .line 188
    iput-object p1, p0, Lha/w;->j:Landroid/widget/TextView;

    .line 189
    .line 190
    iget-object p1, p0, Lha/w;->m:Landroid/view/View;

    .line 191
    .line 192
    check-cast p1, Landroid/widget/EditText;

    .line 193
    .line 194
    iget-object v1, v0, Lx9/n5;->c:Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    .line 198
    .line 199
    iget-object p1, p0, Lha/w;->n:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast p1, Landroid/widget/EditText;

    .line 202
    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    .line 208
    iget v2, v0, Lx9/n5;->d:I

    .line 209
    .line 210
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v2, ""

    .line 214
    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    .line 224
    .line 225
    iget-object p1, p0, Lha/w;->p:Ljava/lang/Object;

    .line 226
    .line 227
    check-cast p1, Landroid/widget/EditText;

    .line 228
    .line 229
    iget-object v1, v0, Lx9/n5;->e:Ljava/lang/String;

    .line 230
    .line 231
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    .line 233
    .line 234
    iget-object p1, p0, Lha/w;->q:Ljava/lang/Object;

    .line 235
    .line 236
    check-cast p1, Landroid/widget/EditText;

    .line 237
    .line 238
    iget-object v1, v0, Lx9/n5;->f:Ljava/lang/String;

    .line 239
    .line 240
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    .line 242
    .line 243
    iget-object p1, v0, Lx9/n5;->D:Ljava/lang/String;

    .line 244
    .line 245
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 246
    .line 247
    .line 248
    move-result p1

    .line 249
    if-nez p1, :cond_2

    .line 250
    .line 251
    iget-object p1, p0, Lha/w;->h:Landroid/widget/TextView;

    .line 252
    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    const-string v2, "\u5bc6\u94a5\uff1a"

    .line 256
    .line 257
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    new-instance v2, Ljava/io/File;

    .line 261
    .line 262
    iget-object v0, v0, Lx9/n5;->D:Ljava/lang/String;

    .line 263
    .line 264
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    .line 280
    .line 281
    :cond_2
    iget-object p1, p0, Lha/w;->i:Landroid/widget/TextView;

    .line 282
    .line 283
    new-instance v0, Landroidx/leanback/widget/h0;

    .line 284
    .line 285
    const/4 v1, 0x3

    .line 286
    invoke-direct {v0, v1, p0}, Landroidx/leanback/widget/h0;-><init>(ILjava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    .line 291
    .line 292
    iget-object p1, p0, Lha/w;->j:Landroid/widget/TextView;

    .line 293
    .line 294
    new-instance v0, Lha/g9;

    .line 295
    .line 296
    const/16 v1, 0xa

    .line 297
    .line 298
    invoke-direct {v0, v1, p0}, Lha/g9;-><init>(ILjava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    .line 303
    .line 304
    iget-object p1, p0, Lha/w;->j:Landroid/widget/TextView;

    .line 305
    .line 306
    new-instance v0, Lha/hc;

    .line 307
    .line 308
    const/4 v1, 0x0

    .line 309
    invoke-direct {v0, p0, v1}, Lha/hc;-><init>(Lha/w;I)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 313
    .line 314
    .line 315
    iget-object p1, p0, Lha/w;->m:Landroid/view/View;

    .line 316
    .line 317
    check-cast p1, Landroid/widget/EditText;

    .line 318
    .line 319
    new-instance v0, Lha/hc;

    .line 320
    .line 321
    const/4 v1, 0x1

    .line 322
    invoke-direct {v0, p0, v1}, Lha/hc;-><init>(Lha/w;I)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 326
    .line 327
    .line 328
    iget-object p1, p0, Lha/w;->n:Ljava/lang/Object;

    .line 329
    .line 330
    check-cast p1, Landroid/widget/EditText;

    .line 331
    .line 332
    new-instance v0, Lha/hc;

    .line 333
    .line 334
    const/4 v1, 0x2

    .line 335
    invoke-direct {v0, p0, v1}, Lha/hc;-><init>(Lha/w;I)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 339
    .line 340
    .line 341
    iget-object p1, p0, Lha/w;->p:Ljava/lang/Object;

    .line 342
    .line 343
    check-cast p1, Landroid/widget/EditText;

    .line 344
    .line 345
    new-instance v0, Lha/hc;

    .line 346
    .line 347
    const/4 v1, 0x3

    .line 348
    invoke-direct {v0, p0, v1}, Lha/hc;-><init>(Lha/w;I)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 352
    .line 353
    .line 354
    iget-object p1, p0, Lha/w;->q:Ljava/lang/Object;

    .line 355
    .line 356
    check-cast p1, Landroid/widget/EditText;

    .line 357
    .line 358
    new-instance v0, Lha/hc;

    .line 359
    .line 360
    const/4 v1, 0x4

    .line 361
    invoke-direct {v0, p0, v1}, Lha/hc;-><init>(Lha/w;I)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 365
    .line 366
    .line 367
    iget-object p1, p0, Lha/w;->i:Landroid/widget/TextView;

    .line 368
    .line 369
    new-instance v0, Lha/hc;

    .line 370
    .line 371
    const/4 v1, 0x5

    .line 372
    invoke-direct {v0, p0, v1}, Lha/hc;-><init>(Lha/w;I)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 376
    .line 377
    .line 378
    return-void

    .line 379
    :pswitch_1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 380
    .line 381
    .line 382
    const p1, 0x7f0b0560

    .line 383
    .line 384
    .line 385
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 386
    .line 387
    .line 388
    move-result-object p1

    .line 389
    check-cast p1, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 390
    .line 391
    iput-object p1, p0, Lha/w;->l:Ljava/lang/Object;

    .line 392
    .line 393
    const/16 v0, 0x3e8

    .line 394
    .line 395
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 396
    .line 397
    .line 398
    iget-object p1, p0, Lha/w;->l:Ljava/lang/Object;

    .line 399
    .line 400
    check-cast p1, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 401
    .line 402
    const/16 v0, 0x32

    .line 403
    .line 404
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 405
    .line 406
    .line 407
    iget-object p1, p0, Lha/w;->l:Ljava/lang/Object;

    .line 408
    .line 409
    check-cast p1, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 410
    .line 411
    new-instance v0, Lha/v;

    .line 412
    .line 413
    const/4 v1, 0x0

    .line 414
    invoke-direct {v0, v1, p0}, Lha/v;-><init>(ILjava/lang/Object;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 418
    .line 419
    .line 420
    const p1, 0x7f0b05fb

    .line 421
    .line 422
    .line 423
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 424
    .line 425
    .line 426
    move-result-object p1

    .line 427
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 428
    .line 429
    iput-object p1, p0, Lha/w;->m:Landroid/view/View;

    .line 430
    .line 431
    const p1, 0x7f0b05fc

    .line 432
    .line 433
    .line 434
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 435
    .line 436
    .line 437
    move-result-object p1

    .line 438
    check-cast p1, Landroid/widget/TextView;

    .line 439
    .line 440
    iput-object p1, p0, Lha/w;->h:Landroid/widget/TextView;

    .line 441
    .line 442
    const p1, 0x7f0b03f3

    .line 443
    .line 444
    .line 445
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 446
    .line 447
    .line 448
    move-result-object p1

    .line 449
    check-cast p1, Landroid/widget/TextView;

    .line 450
    .line 451
    iput-object p1, p0, Lha/w;->i:Landroid/widget/TextView;

    .line 452
    .line 453
    const p1, 0x7f0b0412

    .line 454
    .line 455
    .line 456
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 457
    .line 458
    .line 459
    move-result-object p1

    .line 460
    check-cast p1, Landroid/widget/TextView;

    .line 461
    .line 462
    iput-object p1, p0, Lha/w;->j:Landroid/widget/TextView;

    .line 463
    .line 464
    new-instance p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 465
    .line 466
    const-string v0, "\u5149\u7167\u4eae\u5ea6\u4e0a\u5347\u5230 50 \u4ee5\u4e0a\u7684\u65f6\u5019"

    .line 467
    .line 468
    invoke-direct {p1, v0, v1}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 469
    .line 470
    .line 471
    iput-object p1, p0, Lha/w;->n:Ljava/lang/Object;

    .line 472
    .line 473
    iget-object v0, p0, Lha/w;->h:Landroid/widget/TextView;

    .line 474
    .line 475
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 476
    .line 477
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    .line 479
    .line 480
    iget-object p1, p0, Lha/w;->m:Landroid/view/View;

    .line 481
    .line 482
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 483
    .line 484
    new-instance v0, Lha/t;

    .line 485
    .line 486
    invoke-direct {v0, p0, v1}, Lha/t;-><init>(Lha/w;I)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    .line 491
    .line 492
    :try_start_0
    iget-object p1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 493
    .line 494
    const-string v0, "sensor"

    .line 495
    .line 496
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object p1

    .line 500
    check-cast p1, Landroid/hardware/SensorManager;

    .line 501
    .line 502
    iput-object p1, p0, Lha/w;->p:Ljava/lang/Object;

    .line 503
    .line 504
    const/4 v0, 0x5

    .line 505
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 506
    .line 507
    .line 508
    move-result-object p1

    .line 509
    iget-object v0, p0, Lha/w;->p:Ljava/lang/Object;

    .line 510
    .line 511
    check-cast v0, Landroid/hardware/SensorManager;

    .line 512
    .line 513
    iget-object v1, p0, Lha/w;->q:Ljava/lang/Object;

    .line 514
    .line 515
    check-cast v1, Lha/u;

    .line 516
    .line 517
    const/4 v2, 0x3

    .line 518
    invoke-virtual {v0, v1, p1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    .line 520
    .line 521
    iget-object p1, p0, Lha/w;->i:Landroid/widget/TextView;

    .line 522
    .line 523
    new-instance v0, Lha/t;

    .line 524
    .line 525
    const/4 v1, 0x1

    .line 526
    invoke-direct {v0, p0, v1}, Lha/t;-><init>(Lha/w;I)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 530
    .line 531
    .line 532
    goto :goto_1

    .line 533
    :catch_0
    const-string p1, "\u6b64\u8bbe\u5907\u65e0\u6cd5\u4f7f\u7528\u6b64\u529f\u80fd"

    .line 534
    .line 535
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {p0}, Lha/w;->dismiss()V

    .line 539
    .line 540
    .line 541
    :goto_1
    return-void

    .line 542
    nop

    .line 543
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
