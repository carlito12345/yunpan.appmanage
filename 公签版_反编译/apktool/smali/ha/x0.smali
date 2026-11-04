.class public final Lha/x0;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public final g:Lea/e;

.field public h:Landroid/widget/TextView;

.field public i:Landroidx/appcompat/widget/AppCompatSeekBar;

.field public j:Landroidx/appcompat/widget/AppCompatSeekBar;

.field public k:Z

.field public l:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

.field public m:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

.field public n:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

.field public p:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public q:Lx9/d0;

.field public r:Landroid/media/AudioManager;

.field public s:Landroid/widget/TextView;

.field public t:Landroid/widget/TextView;

.field public final v:Ljava/util/ArrayList;

.field public w:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lea/e;)V
    .locals 1

    .line 1
    const v0, 0x7f0e0083

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lha/x0;->k:Z

    .line 9
    .line 10
    new-instance p1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lha/x0;->v:Ljava/util/ArrayList;

    .line 16
    .line 17
    iput-object p3, p0, Lha/x0;->g:Lea/e;

    .line 18
    .line 19
    return-void
.end method

.method public static a(Lha/x0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lha/x0;->q:Lx9/d0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p0, "\u8bf7\u9009\u62e9\u6587\u4ef6"

    .line 10
    .line 11
    invoke-static {p0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    goto/16 :goto_1

    .line 15
    .line 16
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v1, "\u64ad\u653e\u89c6\u9891\uff1a"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lz7/o;

    .line 24
    .line 25
    invoke-direct {v1}, Lz7/o;-><init>()V

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    :goto_0
    iget-object v3, p0, Lha/x0;->q:Lx9/d0;

    .line 30
    .line 31
    invoke-virtual {v3}, Lc6/g;->b()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-ge v2, v3, :cond_1

    .line 36
    .line 37
    iget-object v3, p0, Lha/x0;->q:Lx9/d0;

    .line 38
    .line 39
    invoke-virtual {v3, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lx9/w3;

    .line 44
    .line 45
    iget-object v3, v3, Lx9/w3;->a:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v3, "; "

    .line 51
    .line 52
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object v3, p0, Lha/x0;->q:Lx9/d0;

    .line 56
    .line 57
    invoke-virtual {v3, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Lx9/w3;

    .line 62
    .line 63
    iget-object v3, v3, Lx9/w3;->b:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v1, v3}, Lz7/o;->j(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    add-int/lit8 v2, v2, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    new-instance v2, Lz7/s;

    .line 72
    .line 73
    invoke-direct {v2}, Lz7/s;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v3, "name"

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v2, v3, v0}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lha/x0;->n:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 86
    .line 87
    iget v0, v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 88
    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v3, "systemVolumeType"

    .line 94
    .line 95
    invoke-virtual {v2, v3, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lha/x0;->j:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    const-string v3, "systemVolume"

    .line 109
    .line 110
    invoke-virtual {v2, v3, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 111
    .line 112
    .line 113
    iget-boolean v0, p0, Lha/x0;->k:Z

    .line 114
    .line 115
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    const-string v3, "isMute"

    .line 120
    .line 121
    invoke-virtual {v2, v3, v0}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lha/x0;->l:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 125
    .line 126
    iget v0, v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 127
    .line 128
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    const-string v3, "usage"

    .line 133
    .line 134
    invoke-virtual {v2, v3, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lha/x0;->m:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 138
    .line 139
    iget v0, v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 140
    .line 141
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    const-string v3, "AudioDeviceId"

    .line 146
    .line 147
    invoke-virtual {v2, v3, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lha/x0;->i:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 151
    .line 152
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    mul-int/lit8 v0, v0, 0x64

    .line 157
    .line 158
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    const-string v3, "volumeGain"

    .line 163
    .line 164
    invoke-virtual {v2, v3, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 165
    .line 166
    .line 167
    const-string v0, "files"

    .line 168
    .line 169
    invoke-virtual {v2, v0, v1}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lha/x0;->g:Lea/e;

    .line 173
    .line 174
    invoke-interface {v0, v2}, Lea/e;->k(Lz7/s;)V

    .line 175
    .line 176
    .line 177
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 178
    .line 179
    .line 180
    :goto_1
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 5
    .line 6
    const-string v0, "audio"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/media/AudioManager;

    .line 13
    .line 14
    iput-object v0, p0, Lha/x0;->r:Landroid/media/AudioManager;

    .line 15
    .line 16
    const v0, 0x7f0b0394

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/ImageView;

    .line 24
    .line 25
    const v1, 0x7f0b0393

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v2, Lc6/c;

    .line 33
    .line 34
    const/4 v3, 0x3

    .line 35
    invoke-direct {v2, p0, v3, v0}, Lc6/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    const-string v3, "\u901a\u9053"

    .line 50
    .line 51
    const/16 v4, 0x15

    .line 52
    .line 53
    if-lt v1, v4, :cond_0

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    :goto_0
    const/16 v5, 0x65

    .line 57
    .line 58
    if-ge v1, v5, :cond_1

    .line 59
    .line 60
    :try_start_0
    new-instance v5, Landroid/media/AudioAttributes$Builder;

    .line 61
    .line 62
    invoke-direct {v5}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    new-instance v5, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 69
    .line 70
    invoke-static {v1, v3}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-direct {v5, v6, v1}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    :catch_0
    add-int/lit8 v1, v1, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    const/4 v1, 0x0

    .line 84
    :goto_1
    const/16 v5, 0x10

    .line 85
    .line 86
    if-ge v1, v5, :cond_1

    .line 87
    .line 88
    new-instance v5, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 89
    .line 90
    invoke-static {v1, v3}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-direct {v5, v6, v1}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    add-int/lit8 v1, v1, 0x1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 104
    .line 105
    const/4 v3, 0x1

    .line 106
    const/4 v5, 0x3

    .line 107
    if-lt v1, v4, :cond_2

    .line 108
    .line 109
    new-instance v4, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 110
    .line 111
    const-string v6, "\u901a\u90531"

    .line 112
    .line 113
    invoke-direct {v4, v6, v3}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 114
    .line 115
    .line 116
    iput-object v4, p0, Lha/x0;->l:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_2
    new-instance v4, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 120
    .line 121
    const-string v6, "\u901a\u90533"

    .line 122
    .line 123
    invoke-direct {v4, v6, v5}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 124
    .line 125
    .line 126
    iput-object v4, p0, Lha/x0;->l:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 127
    .line 128
    :goto_2
    const v4, 0x7f0b05f9

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    check-cast v4, Landroid/widget/TextView;

    .line 136
    .line 137
    iget-object v6, p0, Lha/x0;->l:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 138
    .line 139
    iget-object v6, v6, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    .line 143
    .line 144
    const v6, 0x7f0b05f8

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    new-instance v7, Lha/u0;

    .line 152
    .line 153
    const/4 v8, 0x1

    .line 154
    invoke-direct {v7, p0, v0, v4, v8}, Lha/u0;-><init>(Lha/x0;Ljava/util/ArrayList;Landroid/widget/TextView;I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    .line 159
    .line 160
    new-instance v0, Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .line 164
    .line 165
    new-instance v4, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 166
    .line 167
    const-string v6, "\u4e0d\u4fee\u6539\u7cfb\u7edf\u97f3\u91cf"

    .line 168
    .line 169
    const/4 v7, -0x1

    .line 170
    invoke-direct {v4, v6, v7}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 171
    .line 172
    .line 173
    iput-object v4, p0, Lha/x0;->n:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 174
    .line 175
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    new-instance v4, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 179
    .line 180
    const-string v6, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(\u901a\u8bdd\u97f3\u91cf)"

    .line 181
    .line 182
    invoke-direct {v4, v6, v2}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    new-instance v4, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 189
    .line 190
    const-string v6, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(\u7cfb\u7edf\u97f3\u91cf)"

    .line 191
    .line 192
    invoke-direct {v4, v6, v3}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    new-instance v4, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 199
    .line 200
    const-string v6, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(\u94c3\u58f0\u97f3\u91cf)"

    .line 201
    .line 202
    const/4 v8, 0x2

    .line 203
    invoke-direct {v4, v6, v8}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    new-instance v4, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 210
    .line 211
    const-string v6, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(\u5a92\u4f53\u97f3\u91cf)"

    .line 212
    .line 213
    invoke-direct {v4, v6, v5}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    new-instance v4, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 220
    .line 221
    const-string v5, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(\u95f9\u949f\u97f3\u91cf)"

    .line 222
    .line 223
    const/4 v6, 0x4

    .line 224
    invoke-direct {v4, v5, v6}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    new-instance v4, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 231
    .line 232
    const-string v5, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(\u901a\u77e5\u97f3\u91cf)"

    .line 233
    .line 234
    const/4 v6, 0x5

    .line 235
    invoke-direct {v4, v5, v6}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    new-instance v4, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 242
    .line 243
    const-string v5, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(MF\u97f3\u91cf)"

    .line 244
    .line 245
    const/16 v6, 0x8

    .line 246
    .line 247
    invoke-direct {v4, v5, v6}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    const/16 v4, 0x1a

    .line 254
    .line 255
    if-lt v1, v4, :cond_3

    .line 256
    .line 257
    const-string v5, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(ACC\u97f3\u91cf)"

    .line 258
    .line 259
    const/16 v6, 0xa

    .line 260
    .line 261
    invoke-static {v5, v6, v0}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 262
    .line 263
    .line 264
    :cond_3
    new-instance v5, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 265
    .line 266
    const-string v6, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(6)"

    .line 267
    .line 268
    const/4 v8, 0x6

    .line 269
    invoke-direct {v5, v6, v8}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    new-instance v5, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 276
    .line 277
    const-string v6, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(7)"

    .line 278
    .line 279
    const/4 v8, 0x7

    .line 280
    invoke-direct {v5, v6, v8}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    new-instance v5, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 287
    .line 288
    const-string v6, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(9)"

    .line 289
    .line 290
    const/16 v8, 0x9

    .line 291
    .line 292
    invoke-direct {v5, v6, v8}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    new-instance v5, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 299
    .line 300
    const-string v6, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(11)"

    .line 301
    .line 302
    const/16 v8, 0xb

    .line 303
    .line 304
    invoke-direct {v5, v6, v8}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    if-lt v1, v4, :cond_5

    .line 311
    .line 312
    sget-object v1, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 313
    .line 314
    iget-object v1, v1, Lcom/yunpan/appmanage/carsdk/k0;->d:Ljava/lang/Object;

    .line 315
    .line 316
    if-eqz v1, :cond_5

    .line 317
    .line 318
    const/4 v1, 0x0

    .line 319
    :goto_3
    const/16 v4, 0x20

    .line 320
    .line 321
    if-ge v1, v4, :cond_5

    .line 322
    .line 323
    :try_start_1
    sget-object v4, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 324
    .line 325
    add-int/lit8 v5, v1, -0x64

    .line 326
    .line 327
    invoke-virtual {v4, v5}, Lcom/yunpan/appmanage/carsdk/k0;->d(I)I

    .line 328
    .line 329
    .line 330
    move-result v4

    .line 331
    if-lez v4, :cond_4

    .line 332
    .line 333
    new-instance v4, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 334
    .line 335
    const-string v5, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(Car\u901a\u90530)"

    .line 336
    .line 337
    add-int/lit8 v6, v1, 0x64

    .line 338
    .line 339
    invoke-direct {v4, v5, v6}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 343
    .line 344
    .line 345
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 346
    .line 347
    goto :goto_3

    .line 348
    :catch_1
    :cond_5
    const v1, 0x7f0b05fc

    .line 349
    .line 350
    .line 351
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    check-cast v1, Landroid/widget/TextView;

    .line 356
    .line 357
    iget-object v4, p0, Lha/x0;->n:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 358
    .line 359
    iget-object v4, v4, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 360
    .line 361
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    .line 363
    .line 364
    const v4, 0x7f0b05fb

    .line 365
    .line 366
    .line 367
    invoke-virtual {p0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    new-instance v5, Lha/u0;

    .line 372
    .line 373
    const/4 v6, 0x2

    .line 374
    invoke-direct {v5, p0, v0, v1, v6}, Lha/u0;-><init>(Lha/x0;Ljava/util/ArrayList;Landroid/widget/TextView;I)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    .line 379
    .line 380
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 381
    .line 382
    const-string v1, "\u9ed8\u8ba4"

    .line 383
    .line 384
    invoke-direct {v0, v1, v7}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 385
    .line 386
    .line 387
    iput-object v0, p0, Lha/x0;->m:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 388
    .line 389
    iget-object v1, p0, Lha/x0;->v:Ljava/util/ArrayList;

    .line 390
    .line 391
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 395
    .line 396
    const/16 v4, 0x17

    .line 397
    .line 398
    if-lt v0, v4, :cond_6

    .line 399
    .line 400
    :try_start_2
    iget-object v0, p0, Lha/x0;->r:Landroid/media/AudioManager;

    .line 401
    .line 402
    invoke-static {v0}, La2/a;->y(Landroid/media/AudioManager;)[Landroid/media/AudioDeviceInfo;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    array-length v4, v0

    .line 407
    const/4 v5, 0x0

    .line 408
    :goto_4
    if-ge v5, v4, :cond_6

    .line 409
    .line 410
    aget-object v6, v0, v5

    .line 411
    .line 412
    new-instance v7, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 413
    .line 414
    new-instance v8, Ljava/lang/StringBuilder;

    .line 415
    .line 416
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 417
    .line 418
    .line 419
    invoke-static {v6}, Ld2/c;->j(Landroid/media/AudioDeviceInfo;)Ljava/lang/CharSequence;

    .line 420
    .line 421
    .line 422
    move-result-object v9

    .line 423
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    const-string v9, "("

    .line 427
    .line 428
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-static {v6}, Ld2/c;->c(Landroid/media/AudioDeviceInfo;)I

    .line 432
    .line 433
    .line 434
    move-result v9

    .line 435
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    const-string v9, ")"

    .line 439
    .line 440
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v8

    .line 447
    invoke-static {v6}, Ld2/c;->c(Landroid/media/AudioDeviceInfo;)I

    .line 448
    .line 449
    .line 450
    move-result v6

    .line 451
    invoke-direct {v7, v8, v6}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 455
    .line 456
    .line 457
    add-int/lit8 v5, v5, 0x1

    .line 458
    .line 459
    goto :goto_4

    .line 460
    :catch_2
    :cond_6
    const v0, 0x7f0b0571

    .line 461
    .line 462
    .line 463
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 468
    .line 469
    iput-object v0, p0, Lha/x0;->w:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 470
    .line 471
    const v0, 0x7f0b0572

    .line 472
    .line 473
    .line 474
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    check-cast v0, Landroid/widget/TextView;

    .line 479
    .line 480
    iget-object v1, p0, Lha/x0;->m:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 481
    .line 482
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 483
    .line 484
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    .line 486
    .line 487
    iget-object v1, p0, Lha/x0;->w:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 488
    .line 489
    new-instance v4, Lc6/c;

    .line 490
    .line 491
    const/4 v5, 0x2

    .line 492
    invoke-direct {v4, p0, v5, v0}, Lc6/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    .line 497
    .line 498
    const v0, 0x7f0b060f

    .line 499
    .line 500
    .line 501
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    check-cast v0, Landroid/widget/TextView;

    .line 506
    .line 507
    iput-object v0, p0, Lha/x0;->t:Landroid/widget/TextView;

    .line 508
    .line 509
    const v0, 0x7f0b0560

    .line 510
    .line 511
    .line 512
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    check-cast v0, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 517
    .line 518
    iput-object v0, p0, Lha/x0;->j:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 519
    .line 520
    const/16 v1, 0x64

    .line 521
    .line 522
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 523
    .line 524
    .line 525
    iget-object v0, p0, Lha/x0;->j:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 526
    .line 527
    const/16 v1, 0x50

    .line 528
    .line 529
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 530
    .line 531
    .line 532
    iget-object v0, p0, Lha/x0;->j:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 533
    .line 534
    new-instance v4, Lha/w0;

    .line 535
    .line 536
    const/4 v5, 0x0

    .line 537
    invoke-direct {v4, p0, v5}, Lha/w0;-><init>(Lha/x0;I)V

    .line 538
    .line 539
    .line 540
    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 541
    .line 542
    .line 543
    const v0, 0x7f0b0490

    .line 544
    .line 545
    .line 546
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    check-cast v0, Landroid/widget/TextView;

    .line 551
    .line 552
    iput-object v0, p0, Lha/x0;->s:Landroid/widget/TextView;

    .line 553
    .line 554
    const v0, 0x7f0b0561

    .line 555
    .line 556
    .line 557
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    check-cast v0, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 562
    .line 563
    iput-object v0, p0, Lha/x0;->i:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 564
    .line 565
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 566
    .line 567
    .line 568
    iget-object v0, p0, Lha/x0;->i:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 569
    .line 570
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 571
    .line 572
    .line 573
    iget-object v0, p0, Lha/x0;->i:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 574
    .line 575
    new-instance v1, Lha/w0;

    .line 576
    .line 577
    const/4 v4, 0x1

    .line 578
    invoke-direct {v1, p0, v4}, Lha/w0;-><init>(Lha/x0;I)V

    .line 579
    .line 580
    .line 581
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 582
    .line 583
    .line 584
    const v0, 0x7f0b03f2

    .line 585
    .line 586
    .line 587
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    check-cast v0, Landroid/widget/TextView;

    .line 592
    .line 593
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 594
    .line 595
    .line 596
    new-instance v1, Ljava/util/ArrayList;

    .line 597
    .line 598
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 599
    .line 600
    .line 601
    const-string v4, "\u9009\u62e9\u89c6\u9891\u6587\u4ef6"

    .line 602
    .line 603
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    .line 605
    .line 606
    const-string v4, "\u9009\u62e9\u666e\u901a\u6587\u4ef6"

    .line 607
    .line 608
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    .line 610
    .line 611
    new-instance v4, Lha/u0;

    .line 612
    .line 613
    invoke-direct {v4, p0, v0, v1}, Lha/u0;-><init>(Lha/x0;Landroid/widget/TextView;Ljava/util/ArrayList;)V

    .line 614
    .line 615
    .line 616
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 617
    .line 618
    .line 619
    const v0, 0x7f0b03f3

    .line 620
    .line 621
    .line 622
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 623
    .line 624
    .line 625
    move-result-object v0

    .line 626
    new-instance v1, Lha/v0;

    .line 627
    .line 628
    const/4 v4, 0x0

    .line 629
    invoke-direct {v1, p0, v4}, Lha/v0;-><init>(Lha/x0;I)V

    .line 630
    .line 631
    .line 632
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 633
    .line 634
    .line 635
    const v0, 0x7f0b04f1

    .line 636
    .line 637
    .line 638
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 639
    .line 640
    .line 641
    move-result-object v0

    .line 642
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 643
    .line 644
    iput-object v0, p0, Lha/x0;->p:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 645
    .line 646
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 647
    .line 648
    invoke-direct {v1, p1, v3, v2}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 652
    .line 653
    .line 654
    new-instance p1, Lx9/d0;

    .line 655
    .line 656
    invoke-direct {p1}, Lx9/d0;-><init>()V

    .line 657
    .line 658
    .line 659
    iput-object p1, p0, Lha/x0;->q:Lx9/d0;

    .line 660
    .line 661
    iget-object v0, p0, Lha/x0;->p:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 662
    .line 663
    invoke-virtual {v0, p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 664
    .line 665
    .line 666
    iget-object p1, p0, Lha/x0;->q:Lx9/d0;

    .line 667
    .line 668
    new-instance v0, Lha/s0;

    .line 669
    .line 670
    invoke-direct {v0, p0}, Lha/s0;-><init>(Lha/x0;)V

    .line 671
    .line 672
    .line 673
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 674
    .line 675
    const p1, 0x7f0b0359

    .line 676
    .line 677
    .line 678
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 679
    .line 680
    .line 681
    move-result-object p1

    .line 682
    check-cast p1, Landroid/widget/TextView;

    .line 683
    .line 684
    iput-object p1, p0, Lha/x0;->h:Landroid/widget/TextView;

    .line 685
    .line 686
    new-instance v0, Lha/v0;

    .line 687
    .line 688
    const/4 v1, 0x1

    .line 689
    invoke-direct {v0, p0, v1}, Lha/v0;-><init>(Lha/x0;I)V

    .line 690
    .line 691
    .line 692
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 693
    .line 694
    .line 695
    return-void
.end method
