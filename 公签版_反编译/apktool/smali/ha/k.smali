.class public final synthetic Lha/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/l;


# direct methods
.method public synthetic constructor <init>(Lha/l;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/k;->a:I

    iput-object p1, p0, Lha/k;->b:Lha/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget p1, p0, Lha/k;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/k;->b:Lha/l;

    .line 7
    .line 8
    iget-object v0, p1, Lha/l;->h:Lx9/c;

    .line 9
    .line 10
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x2

    .line 15
    if-ge v0, v1, :cond_0

    .line 16
    .line 17
    const-string p1, "\u8bf7\u6dfb\u52a0\u81f3\u5c11\u4e24\u4e2a\u5e94\u7528"

    .line 18
    .line 19
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    goto/16 :goto_2

    .line 23
    .line 24
    :cond_0
    iget-object v0, p1, Lha/l;->h:Lx9/c;

    .line 25
    .line 26
    invoke-virtual {v0}, Lc6/g;->v()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p1, Lha/l;->g:Lha/h8;

    .line 31
    .line 32
    iget-object v2, v1, Lha/h8;->d:Ljava/lang/String;

    .line 33
    .line 34
    iget v3, v1, Lha/h8;->b:I

    .line 35
    .line 36
    iget v4, v1, Lha/h8;->c:I

    .line 37
    .line 38
    iget-object v1, v1, Lha/h8;->e:Lea/e;

    .line 39
    .line 40
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v2, "\uff1a"

    .line 49
    .line 50
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-eqz v6, :cond_1

    .line 62
    .line 63
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    check-cast v6, Lx9/n3;

    .line 68
    .line 69
    iget-object v6, v6, Lx9/n3;->a:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v6, " , "

    .line 75
    .line 76
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    new-instance v2, Lz7/s;

    .line 81
    .line 82
    invoke-direct {v2}, Lz7/s;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v6, "keyType"

    .line 86
    .line 87
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v2, v6, v3}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 92
    .line 93
    .line 94
    const-string v3, "gnType"

    .line 95
    .line 96
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v2, v3, v4}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 101
    .line 102
    .line 103
    const-string v3, "name"

    .line 104
    .line 105
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v2, v3, v4}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    new-instance v3, Lz7/o;

    .line 113
    .line 114
    invoke-direct {v3}, Lz7/o;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    if-eqz v4, :cond_2

    .line 126
    .line 127
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    check-cast v4, Lx9/n3;

    .line 132
    .line 133
    iget-object v4, v4, Lx9/n3;->b:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v3, v4}, Lz7/o;->j(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_2
    const-string v0, "appList"

    .line 140
    .line 141
    invoke-virtual {v2, v0, v3}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 142
    .line 143
    .line 144
    invoke-interface {v1, v2}, Lea/e;->k(Lz7/s;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .line 146
    .line 147
    :catch_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 148
    .line 149
    .line 150
    :goto_2
    return-void

    .line 151
    :pswitch_0
    iget-object p1, p0, Lha/k;->b:Lha/l;

    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    new-instance v0, Lha/q2;

    .line 157
    .line 158
    new-instance v1, Lha/j;

    .line 159
    .line 160
    invoke-direct {v1, p1}, Lha/j;-><init>(Lha/l;)V

    .line 161
    .line 162
    .line 163
    const/4 v2, 0x3

    .line 164
    iget-object v3, p1, Lha/a4;->a:Landroid/app/Activity;

    .line 165
    .line 166
    iget-object p1, p1, Lha/a4;->b:Landroid/content/Context;

    .line 167
    .line 168
    invoke-direct {v0, v3, p1, v2, v1}, Lha/q2;-><init>(Landroid/app/Activity;Landroid/content/Context;ILha/p2;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Lha/a4;->show()V

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
