.class public final synthetic Lha/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/w;


# direct methods
.method public synthetic constructor <init>(Lha/w;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/t;->a:I

    iput-object p1, p0, Lha/t;->b:Lha/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget p1, p0, Lha/t;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/t;->b:Lha/w;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Lz7/s;

    .line 12
    .line 13
    invoke-direct {v0}, Lz7/s;-><init>()V

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x1f6

    .line 17
    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "type"

    .line 23
    .line 24
    invoke-virtual {v0, v2, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p1, Lha/w;->n:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 32
    .line 33
    const-string v2, "name"

    .line 34
    .line 35
    invoke-virtual {v0, v2, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p1, Lha/w;->n:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 41
    .line 42
    iget v1, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    if-ne v1, v2, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 v2, 0x0

    .line 49
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v2, "isDesc"

    .line 54
    .line 55
    invoke-virtual {v0, v2, v1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p1, Lha/w;->l:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v1, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const-string v2, "value"

    .line 71
    .line 72
    invoke-virtual {v0, v2, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 73
    .line 74
    .line 75
    iget-object v1, p1, Lha/w;->k:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v1, Lha/y8;

    .line 78
    .line 79
    invoke-virtual {v1, v0}, Lha/y8;->k(Lz7/s;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lha/w;->dismiss()V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :pswitch_0
    iget-object p1, p0, Lha/t;->b:Lha/w;

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    new-instance v0, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 97
    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v3, "\u5149\u7167\u4eae\u5ea6\u4e0a\u5347\u5230 "

    .line 101
    .line 102
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object v3, p1, Lha/w;->l:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v3, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 108
    .line 109
    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getProgress()I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v3, " \u4ee5\u4e0a\u7684\u65f6\u5019"

    .line 117
    .line 118
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    const/4 v3, 0x0

    .line 126
    invoke-direct {v1, v2, v3}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 133
    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string v3, "\u5149\u7167\u4eae\u5ea6\u4e0b\u964d\u5230 "

    .line 137
    .line 138
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-object v3, p1, Lha/w;->l:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v3, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 144
    .line 145
    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getProgress()I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v3, " \u4ee5\u4e0b\u7684\u65f6\u5019"

    .line 153
    .line 154
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    const/4 v3, 0x1

    .line 162
    invoke-direct {v1, v2, v3}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    new-instance v1, Lha/ie;

    .line 169
    .line 170
    new-instance v2, Ld2/w;

    .line 171
    .line 172
    const/4 v3, 0x4

    .line 173
    invoke-direct {v2, p1, v3, v0}, Ld2/w;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    iget-object v3, p1, Lha/a4;->a:Landroid/app/Activity;

    .line 177
    .line 178
    iget-object p1, p1, Lha/a4;->b:Landroid/content/Context;

    .line 179
    .line 180
    invoke-direct {v1, v3, p1, v0, v2}, Lha/ie;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/List;Lha/he;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
