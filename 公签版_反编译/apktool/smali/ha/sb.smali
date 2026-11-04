.class public final synthetic Lha/sb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/tb;


# direct methods
.method public synthetic constructor <init>(Lha/tb;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/sb;->a:I

    iput-object p1, p0, Lha/sb;->b:Lha/tb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget p1, p0, Lha/sb;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/sb;->b:Lha/tb;

    .line 7
    .line 8
    iget-object v0, p1, Lha/tb;->k:Ljava/util/Set;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    iget-object v2, p1, Lha/tb;->h:Lx9/a1;

    .line 16
    .line 17
    invoke-virtual {v2}, Lc6/g;->b()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ge v1, v2, :cond_1

    .line 22
    .line 23
    iget-object v2, p1, Lha/tb;->h:Lx9/a1;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/yunpan/appmanage/bean/NamePackBoolSelectBean;

    .line 30
    .line 31
    iget-boolean v3, v2, Lcom/yunpan/appmanage/bean/NamePackBoolSelectBean;->isSelected:Z

    .line 32
    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    iput-boolean v0, v2, Lcom/yunpan/appmanage/bean/NamePackBoolSelectBean;->isSelected:Z

    .line 36
    .line 37
    iget-object v2, p1, Lha/tb;->h:Lx9/a1;

    .line 38
    .line 39
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 40
    .line 41
    .line 42
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return-void

    .line 46
    :pswitch_0
    iget-object p1, p0, Lha/sb;->b:Lha/tb;

    .line 47
    .line 48
    iget-object v0, p1, Lha/tb;->j:Landroidx/leanback/widget/i;

    .line 49
    .line 50
    if-eqz v0, :cond_9

    .line 51
    .line 52
    iget-object v1, p1, Lha/tb;->k:Ljava/util/Set;

    .line 53
    .line 54
    iget v0, v0, Landroidx/leanback/widget/i;->b:I

    .line 55
    .line 56
    const/16 v2, 0x196

    .line 57
    .line 58
    const-string v3, ","

    .line 59
    .line 60
    if-ne v0, v2, :cond_5

    .line 61
    .line 62
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 63
    .line 64
    iput-object v1, v0, Lwa/u;->x:Ljava/util/Set;

    .line 65
    .line 66
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    iget-object v2, v0, Lwa/u;->x:Ljava/util/Set;

    .line 72
    .line 73
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-eqz v4, :cond_3

    .line 82
    .line 83
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    check-cast v4, Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-eqz v5, :cond_2

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-lez v2, :cond_4

    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    add-int/lit8 v2, v2, -0x1

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    :cond_4
    iget-object v2, v0, Lwa/u;->b:Lz7/s;

    .line 119
    .line 120
    const-string v3, "GN_AUDIO_NOTICE_EXCLUDED_APPS"

    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v2, v3, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .line 128
    .line 129
    :catch_0
    invoke-virtual {v0}, Lwa/u;->i()V

    .line 130
    .line 131
    .line 132
    iget-object v0, v0, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 133
    .line 134
    invoke-static {v0}, Lta/m;->e(Landroid/content/Context;)V

    .line 135
    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_5
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 139
    .line 140
    iput-object v1, v0, Lwa/u;->y:Ljava/util/Set;

    .line 141
    .line 142
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    iget-object v2, v0, Lwa/u;->y:Ljava/util/Set;

    .line 148
    .line 149
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    if-eqz v4, :cond_7

    .line 158
    .line 159
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    check-cast v4, Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    if-eqz v5, :cond_6

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    if-lez v2, :cond_8

    .line 184
    .line 185
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    add-int/lit8 v2, v2, -0x1

    .line 190
    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    :cond_8
    iget-object v2, v0, Lwa/u;->b:Lz7/s;

    .line 195
    .line 196
    const-string v3, "GN_AUDIO_SIGNA_EXCLUDED_APPS"

    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v2, v3, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 203
    .line 204
    .line 205
    :catch_1
    invoke-virtual {v0}, Lwa/u;->i()V

    .line 206
    .line 207
    .line 208
    iget-object v0, v0, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 209
    .line 210
    invoke-static {v0}, Lta/m;->e(Landroid/content/Context;)V

    .line 211
    .line 212
    .line 213
    :goto_3
    const-string v0, "\u8bbe\u7f6e\u6210\u529f"

    .line 214
    .line 215
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    :cond_9
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 219
    .line 220
    .line 221
    return-void

    .line 222
    nop

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
