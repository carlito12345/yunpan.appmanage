.class public final synthetic Lha/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/y;


# direct methods
.method public synthetic constructor <init>(Lha/y;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/x;->a:I

    iput-object p1, p0, Lha/x;->b:Lha/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget p1, p0, Lha/x;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/x;->b:Lha/y;

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
    const/16 v1, 0x1f7

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
    iget-object v1, p1, Lha/y;->m:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 30
    .line 31
    const-string v2, "name"

    .line 32
    .line 33
    invoke-virtual {v0, v2, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p1, Lha/y;->m:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 37
    .line 38
    iget v1, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    if-ne v1, v2, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v2, 0x0

    .line 45
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v2, "isDesc"

    .line 50
    .line 51
    invoke-virtual {v0, v2, v1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p1, Lha/y;->h:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const-string v2, "value"

    .line 65
    .line 66
    invoke-virtual {v0, v2, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 67
    .line 68
    .line 69
    iget-object v1, p1, Lha/y;->g:Lha/y8;

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Lha/y8;->k(Lz7/s;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lha/y;->dismiss()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :pswitch_0
    iget-object p1, p0, Lha/x;->b:Lha/y;

    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    new-instance v0, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 89
    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v3, "\u5c4f\u5e55\u4eae\u5ea6\u4e0a\u5347\u5230 "

    .line 93
    .line 94
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object v3, p1, Lha/y;->h:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 98
    .line 99
    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getProgress()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v3, " \u4ee5\u4e0a\u7684\u65f6\u5019"

    .line 107
    .line 108
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    const/4 v3, 0x0

    .line 116
    invoke-direct {v1, v2, v3}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 123
    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v3, "\u5c4f\u5e55\u4eae\u5ea6\u4e0b\u964d\u5230 "

    .line 127
    .line 128
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-object v3, p1, Lha/y;->h:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 132
    .line 133
    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getProgress()I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v3, " \u4ee5\u4e0b\u7684\u65f6\u5019"

    .line 141
    .line 142
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    const/4 v3, 0x1

    .line 150
    invoke-direct {v1, v2, v3}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    new-instance v1, Lha/ie;

    .line 157
    .line 158
    new-instance v2, Ld2/w;

    .line 159
    .line 160
    const/4 v3, 0x5

    .line 161
    invoke-direct {v2, p1, v3, v0}, Ld2/w;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    iget-object v3, p1, Lha/a4;->a:Landroid/app/Activity;

    .line 165
    .line 166
    iget-object p1, p1, Lha/a4;->b:Landroid/content/Context;

    .line 167
    .line 168
    invoke-direct {v1, v3, p1, v0, v2}, Lha/ie;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/List;Lha/he;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
